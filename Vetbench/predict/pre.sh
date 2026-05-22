#!/bin/bash
#SBATCH -p gpu301
#SBATCH -N 1                  # 申请 1 个计算节点
#SBATCH --cpus-per-task=4     # 申请 4 个CPU 核心 (vLLM 处理数据较快，4个足够)
#SBATCH -J v1_na_llama_cn      # 作业名称改为评测 (eval_qwen)
#SBATCH -o v1_na_llama3.1_cn.log  # 输出日志叫 eval.log，避免覆盖你之前训练的 sft.o
#SBATCH --mem=50G             # 申请 50G 系统内存 (加载模型和测试集绝对够用)
#SBATCH --gres=gpu:1          # 申请 1 张显卡

set -euo pipefail

# ================= 环境加载 =================
# 1. 临时关闭“未定义变量检查”机制
set +u

# 2. 正常激活你的 vLLM 环境
source /public/home/h2025319013/miniconda3/bin/activate vllm_env

# 3. 激活成功后，立刻重新打开严格检查，保护后续的代码
set -u

# ================= 安全检测 =================
if [[ -z "${SLURM_JOB_ID:-}" ]]; then
  echo "错误：检测到未在 Slurm 作业内运行（无 SLURM_JOB_ID）。" >&2
  echo "请勿在登录节点直接执行！" >&2
  echo "正确用法请运行: sbatch $0" >&2
  exit 1
fi

echo "=================================================="
echo "开始执行评测作业 | 作业 ID: $SLURM_JOB_ID"
echo "分配节点: $SLURM_NODELIST"
echo "=================================================="

nvidia-smi -L || { echo "警告：nvidia-smi 执行失败，可能未成功分配到 GPU！" >&2; }

echo "正在准备运行 vLLM 推理..."


# 调用刚刚写好的 Python 评测脚本
# 注意这里加了 -u 参数，保证 print 的内容能实时刷新到 eval.log 里
python3 -u predict_lora_na.py

echo "评测任务执行完毕！请查看 evaluation_results.json"