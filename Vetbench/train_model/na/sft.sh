#!/bin/bash
#SBATCH -p gpu301
#SBATCH -N 1               # 申请 1 个计算节点
#SBATCH --cpus-per-task=4  # 为这个任务申请 1 个CPU 核心
#SBATCH -J sft_qwen
#SBATCH -o v1_llama3.1_8b.log
#SBATCH --mem=50G
#SBATCH --gres=gpu:1       # 申请 1 张显卡

set -euo pipefail

source /public/home/h2025319013/miniconda3/bin/activate llama_factory_broken


if [[ -z "${SLURM_JOB_ID:-}" ]]; then
  echo "错误：检测到未在 Slurm 作业内运行（无 SLURM_JOB_ID）。" >&2
  echo "请勿在登录节点直接执行！" >&2
  echo "正确用法请运行: sbatch $0" >&2
  exit 1
fi

echo "=================================================="
echo "开始执行作业 | 作业 ID: $SLURM_JOB_ID"
echo "分配节点: $SLURM_NODELIST"
echo "=================================================="

nvidia-smi -L || { echo "警告：nvidia-smi 执行失败，可能未成功分配到 GPU！" >&2; }

echo "正在运行..."

bash v1_llama3.1_8b.sh

echo "任务执行完毕！"