import json
import re
import os
from vllm import LLM, SamplingParams
from vllm.lora.request import LoRARequest
from transformers import AutoTokenizer

# ================= 1. 路径配置 =================
BASE_MODEL_PATH = "/public/home/h2025319013/work/animal-medicine/models/Llama-3.1-8B"
LORA_PATH = "/public/home/h2025319013/work/animal-medicine/output_model/na/v1_na_llama3.1_8b"
TEST_DATA_PATH = "/public/home/h2025319013/work/animal-medicine/data/china/cn_test.json"
OUTPUT_SAVE_PATH = "/public/home/h2025319013/work/Vetbench/results/cn_test/v1_na_llama3.1_8b.json"

# 你要求的全新 System Prompt
SYSTEM_PROMPT = (
    "Your response should be in the following format:\n"
    "Answer: {your chosen answer}\n"
    "Confidence: {your confidence score between 0% and 100% for your answer}"
)

def main():
    # ================= 2. 加载数据与 Tokenizer =================
    print("Loading tokenizer and dataset...")
    tokenizer = AutoTokenizer.from_pretrained(BASE_MODEL_PATH, trust_remote_code=True)
    
    with open(TEST_DATA_PATH, 'r', encoding='utf-8') as f:
        data = json.load(f)
        
    # 学术严谨性体现：严格使用模型的 Chat Template 进行拼接
    # 如果直接字符串拼接，会导致特殊 Token 丢失，性能大幅下降
    formatted_prompts = []
    for item in data:
        messages = [
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": item["input"]}
        ]
        # tokenize=False 仅生成拼接好的文本，add_generation_prompt=True 加上类似 <|im_start|>assistant 的引导后缀
        text_prompt = tokenizer.apply_chat_template(
            messages, 
            tokenize=False, 
            add_generation_prompt=True
        )
        formatted_prompts.append(text_prompt)

    # ================= 3. 初始化 vLLM =================
    print("Initializing vLLM Engine...")
    # enable_lora=True 开启 LoRA 支持。max_lora_rank 根据你微调时的设置来，如果是默认的 8 或 16，这里设为 32 或 64 就足够了
    llm = LLM(
        model=BASE_MODEL_PATH, 
        enable_lora=True, 
        max_lora_rank=64, 
        tensor_parallel_size=1,  # 既然单卡 H100 够用，保持 1 即可
        trust_remote_code=True,
        gpu_memory_utilization=0.9 # 充分利用显存
    )
    
    # 学术严谨性体现：temperature=0.0 表示使用贪婪解码 (Greedy Decoding)
    # 这确保了相同的输入永远得到绝对相同的输出，消除随机性
    
    # 动态获取模型对应的结束符 ID，过滤掉不存在的 None
    stop_tokens = [tokenizer.eos_token_id]
    
    # Llama 3 的结束符
    eot_id = tokenizer.convert_tokens_to_ids("<|eot_id|>")
    if eot_id is not None:
        stop_tokens.append(eot_id)
        
    # Qwen 的结束符 (保留以防你之后测 Qwen 模型)
    im_end_id = tokenizer.convert_tokens_to_ids("<|im_end|>")
    if im_end_id is not None:
        stop_tokens.append(im_end_id)

    # 去重
    stop_tokens = list(set(stop_tokens))

    sampling_params = SamplingParams(
        temperature=0.0, 
        max_tokens=128,  # 生成的内容只有答案和置信度，128 足够了
        stop_token_ids=stop_tokens
    )

    # ================= 4. 执行推理 =================
    print(f"Starting inference on {len(formatted_prompts)} samples...")
    # 动态挂载 LoRA
    lora_request = LoRARequest("vet_lora", 1, LORA_PATH)
    outputs = llm.generate(
        formatted_prompts, 
        sampling_params, 
        lora_request=lora_request
    )
    # ================= 5. 解析结果、提取置信度与计算 ACC =================
    print("Processing results...")
    results_to_save = []
    correct_count = 0
    
    # 用于统计校准度 (Calibration) 的变量
    conf_correct_list = []   # 答对题目的置信度列表
    conf_incorrect_list = [] # 答错题目的置信度列表

    # 提取置信度的正则保持不变
    confidence_pattern = re.compile(r"Confidence:\s*(\d+(?:\.\d+)?)%?", re.IGNORECASE)

    # 专门封装的超级鲁棒答案提取器
    def extract_answer_robust(text):
        # 第一优先级：明确的前缀引导（支持中英文，忽略冒号和空格）
        # 匹配：Answer: A, 答案：B, 选项: C, 选D, Option E
        match = re.search(r"(?:Answer|答案|选项|选|Choice|Option)[\s:：]*([A-E])", text, re.IGNORECASE)
        if match:
            return match.group(1).upper()
        
        # 第二优先级：匹配段首直接输出选项的情况
        # 匹配：A. 森林鸟刺螨, B、鸡皮肤刺螨, C: 鸡羽虱
        match = re.search(r"^\s*([A-E])[\s\.、:：]", text, re.IGNORECASE)
        if match:
            return match.group(1).upper()
            
        # 第三优先级：兜底策略，寻找文本中第一个孤立的 A-E 字母
        # 使用负向先行/后发断言，确保提取的 A-E 前后不是英文字母（避免提取到英文单词里的字母）
        match = re.search(r"(?<![a-zA-Z])([A-E])(?![a-zA-Z])", text)
        if match:
            return match.group(1).upper()
            
        return "PARSE_ERROR"

    for i, output in enumerate(outputs):
        generated_text = output.outputs[0].text.strip()
        ground_truth = data[i]["output"].strip()
        
        # 1. 使用鲁棒提取器获取选项
        extracted_ans = extract_answer_robust(generated_text)
        
        # 2. 提取置信度 (转换为浮点数，提取失败则记为 -1)
        conf_match = confidence_pattern.search(generated_text)
        confidence_score = float(conf_match.group(1)) if conf_match else -1.0
        
        # 3. 严格比对
        is_correct = (extracted_ans == ground_truth)
        if is_correct:
            correct_count += 1
            if confidence_score != -1.0:
                conf_correct_list.append(confidence_score)
        else:
            if confidence_score != -1.0:
                conf_incorrect_list.append(confidence_score)
            
        # 4. 保存完整记录
        results_to_save.append({
            "id": data[i]["id"],
            "instruction": SYSTEM_PROMPT,
            "input": data[i]["input"],
            "ground_truth": ground_truth,
            "model_full_output": generated_text,
            "extracted_answer": extracted_ans,
            "confidence_score": confidence_score,  
            "is_correct": is_correct
        })

    # ================= 6. 统计与保存 (包含校准度分析) =================
    accuracy = correct_count / len(data) if len(data) > 0 else 0
    
    # 计算平均置信度
    avg_conf_correct = sum(conf_correct_list)/len(conf_correct_list) if conf_correct_list else 0
    avg_conf_incorrect = sum(conf_incorrect_list)/len(conf_incorrect_list) if conf_incorrect_list else 0
    
    print(f"\n{'='*40}")
    print(f"Total Samples: {len(data)}")
    print(f"Correct Answers: {correct_count}")
    print(f"Accuracy (ACC): {accuracy * 100:.2f}%")
    print(f"--- Calibration Metrics ---")
    print(f"Avg Confidence (Correct): {avg_conf_correct:.2f}%")
    print(f"Avg Confidence (Incorrect): {avg_conf_incorrect:.2f}%")
    print(f"{'='*40}\n")

    with open(OUTPUT_SAVE_PATH, "w", encoding="utf-8") as f:
        json.dump(results_to_save, f, ensure_ascii=False, indent=2)
    print(f"All detailed results saved to: {OUTPUT_SAVE_PATH}")

    # ================= 6. 统计与保存 =================
    accuracy = correct_count / len(data) if len(data) > 0 else 0
    print(f"\n{'='*40}")
    print(f"Total Samples: {len(data)}")
    print(f"Correct Answers: {correct_count}")
    print(f"Accuracy (ACC): {accuracy * 100:.2f}%")
    print(f"{'='*40}\n")

    with open(OUTPUT_SAVE_PATH, "w", encoding="utf-8") as f:
        json.dump(results_to_save, f, ensure_ascii=False, indent=2)
    print(f"All detailed results saved to: {OUTPUT_SAVE_PATH}")

if __name__ == "__main__":
    main()