#!/bin/bash

# ================= 端口设置 =================
export MASTER_PORT=$(shuf -n 1 -i 20000-60000)
echo "Using Master Port: $MASTER_PORT"

# ================= 路径配置 =================
ROOT_PATH="/public/home/h2025319013/work/animal-medicine"
MODEL_PATH="$ROOT_PATH/models/Llama-3.1-8B"
OUTPUT_DIR="$ROOT_PATH/output/v2_llama3.1_8b_lora"

# ================= 训练参数 =================
echo "正在启动单卡微调训练..."
echo "模型路径: $MODEL_PATH"

llamafactory-cli train \
    --stage sft \
    --do_train \
    --model_name_or_path "$MODEL_PATH" \
    --dataset animal_train \
    --dataset_dir "$ROOT_PATH/LLaMA-Factory/data" \
    --template llama3 \
    --finetuning_type lora \
    --lora_target all \
    --lora_rank 64 \
    --lora_alpha 64 \
    --lora_dropout 0.1 \
    --neftune_noise_alpha 5 \
    --output_dir "$OUTPUT_DIR" \
    --overwrite_output \
    --per_device_train_batch_size 4 \
    --gradient_accumulation_steps 16 \
    --learning_rate 5e-5 \
    --lr_scheduler_type cosine \
    --warmup_ratio 0.1 \
    --num_train_epochs 3.0 \
    --val_size 0.05 \
    --eval_strategy steps \
    --eval_steps 50 \
    --save_steps 50 \
    --logging_steps 10 \
    --load_best_model_at_end True \
    --metric_for_best_model eval_loss \
    --plot_loss \
    --bf16 \
    --flash_attn auto \
    --report_to none

echo "训练核心逻辑结束！结果已保存至 $OUTPUT_DIR"