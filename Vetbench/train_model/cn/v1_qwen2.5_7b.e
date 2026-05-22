/public/home/h2025319013/miniconda3/envs/llama_factory_broken/lib/python3.10/site-packages/jieba/_compat.py:18: UserWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html. The pkg_resources package is slated for removal as early as 2025-11-30. Refrain from using this package or pin to Setuptools<81.
  import pkg_resources
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file vocab.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file merges.txt
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file tokenizer.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file added_tokens.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file special_tokens_map.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file tokenizer_config.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:53,779 >> loading file chat_template.jinja
[INFO|tokenization_utils_base.py:2364] 2026-04-22 00:55:54,002 >> Special tokens have been added in the vocabulary, make sure the associated word embeddings are fine-tuned or trained.
[INFO|configuration_utils.py:763] 2026-04-22 00:55:54,002 >> loading configuration file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/config.json
[INFO|configuration_utils.py:839] 2026-04-22 00:55:54,003 >> Model config Qwen2Config {
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "dtype": "bfloat16",
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 3584,
  "initializer_range": 0.02,
  "intermediate_size": 18944,
  "layer_types": [
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention"
  ],
  "max_position_embeddings": 32768,
  "max_window_layers": 28,
  "model_type": "qwen2",
  "num_attention_heads": 28,
  "num_hidden_layers": 28,
  "num_key_value_heads": 4,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": null,
  "tie_word_embeddings": false,
  "transformers_version": "4.57.1",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file vocab.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file merges.txt
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file tokenizer.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file added_tokens.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file special_tokens_map.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file tokenizer_config.json
[INFO|tokenization_utils_base.py:2093] 2026-04-22 00:55:54,004 >> loading file chat_template.jinja
[INFO|tokenization_utils_base.py:2364] 2026-04-22 00:55:54,225 >> Special tokens have been added in the vocabulary, make sure the associated word embeddings are fine-tuned or trained.
[INFO|configuration_utils.py:763] 2026-04-22 00:55:54,336 >> loading configuration file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/config.json
[INFO|configuration_utils.py:839] 2026-04-22 00:55:54,337 >> Model config Qwen2Config {
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "dtype": "bfloat16",
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 3584,
  "initializer_range": 0.02,
  "intermediate_size": 18944,
  "layer_types": [
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention"
  ],
  "max_position_embeddings": 32768,
  "max_window_layers": 28,
  "model_type": "qwen2",
  "num_attention_heads": 28,
  "num_hidden_layers": 28,
  "num_key_value_heads": 4,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": null,
  "tie_word_embeddings": false,
  "transformers_version": "4.57.1",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[WARNING|logging.py:328] 2026-04-22 00:55:54,556 >> `torch_dtype` is deprecated! Use `dtype` instead!
[INFO|modeling_utils.py:1169] 2026-04-22 00:55:54,557 >> loading weights file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/model.safetensors.index.json
[INFO|modeling_utils.py:2341] 2026-04-22 00:55:54,557 >> Instantiating Qwen2ForCausalLM model under default dtype torch.bfloat16.
[INFO|configuration_utils.py:986] 2026-04-22 00:55:54,559 >> Generate config GenerationConfig {
  "bos_token_id": 151643,
  "eos_token_id": 151645,
  "use_cache": false
}

Loading checkpoint shards:   0%|          | 0/4 [00:00<?, ?it/s]Loading checkpoint shards:  25%|██▌       | 1/4 [00:03<00:09,  3.30s/it]Loading checkpoint shards:  50%|█████     | 2/4 [00:06<00:06,  3.20s/it]Loading checkpoint shards:  75%|███████▌  | 3/4 [00:09<00:03,  3.16s/it]Loading checkpoint shards: 100%|██████████| 4/4 [00:12<00:00,  3.04s/it]Loading checkpoint shards: 100%|██████████| 4/4 [00:12<00:00,  3.10s/it]
[INFO|configuration_utils.py:939] 2026-04-22 00:56:07,099 >> loading configuration file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/generation_config.json
[INFO|configuration_utils.py:986] 2026-04-22 00:56:07,100 >> Generate config GenerationConfig {
  "bos_token_id": 151643,
  "do_sample": true,
  "eos_token_id": [
    151645,
    151643
  ],
  "pad_token_id": 151643,
  "repetition_penalty": 1.05,
  "temperature": 0.7,
  "top_k": 20,
  "top_p": 0.8
}

[INFO|dynamic_module_utils.py:423] 2026-04-22 00:56:07,101 >> Could not locate the custom_generate/generate.py inside /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct.
[WARNING|trainer.py:906] 2026-04-22 00:56:25,542 >> The model is already on multiple devices. Skipping the move to device specified in `args`.
[INFO|trainer.py:749] 2026-04-22 00:56:25,550 >> Using auto half precision backend
[WARNING|trainer.py:982] 2026-04-22 00:56:25,551 >> The tokenizer has new PAD/BOS/EOS tokens that differ from the model config and generation config. The model config and generation config were aligned accordingly, being updated with the tokenizer's values. Updated tokens: {'bos_token_id': None, 'pad_token_id': 151643}.
[INFO|trainer.py:2519] 2026-04-22 00:56:25,881 >> ***** Running training *****
[INFO|trainer.py:2520] 2026-04-22 00:56:25,881 >>   Num examples = 5,995
[INFO|trainer.py:2521] 2026-04-22 00:56:25,881 >>   Num Epochs = 3
[INFO|trainer.py:2522] 2026-04-22 00:56:25,881 >>   Instantaneous batch size per device = 16
[INFO|trainer.py:2525] 2026-04-22 00:56:25,881 >>   Total train batch size (w. parallel, distributed & accumulation) = 256
[INFO|trainer.py:2526] 2026-04-22 00:56:25,881 >>   Gradient Accumulation steps = 16
[INFO|trainer.py:2527] 2026-04-22 00:56:25,882 >>   Total optimization steps = 72
[INFO|trainer.py:2528] 2026-04-22 00:56:25,885 >>   Number of trainable parameters = 20,185,088
  0%|          | 0/72 [00:00<?, ?it/s]  1%|▏         | 1/72 [00:27<32:54, 27.82s/it]  3%|▎         | 2/72 [00:56<32:56, 28.23s/it]  4%|▍         | 3/72 [01:23<31:56, 27.77s/it]  6%|▌         | 4/72 [01:50<30:58, 27.33s/it]  7%|▋         | 5/72 [02:18<31:03, 27.81s/it]  8%|▊         | 6/72 [02:48<31:19, 28.48s/it] 10%|▉         | 7/72 [03:17<30:52, 28.50s/it] 11%|█         | 8/72 [03:44<29:56, 28.06s/it] 12%|█▎        | 9/72 [04:11<29:04, 27.68s/it] 14%|█▍        | 10/72 [04:39<28:40, 27.75s/it]                                                14%|█▍        | 10/72 [04:39<28:40, 27.75s/it] 15%|█▌        | 11/72 [05:07<28:27, 27.99s/it] 17%|█▋        | 12/72 [05:35<27:58, 27.97s/it] 18%|█▊        | 13/72 [06:04<27:49, 28.30s/it] 19%|█▉        | 14/72 [06:34<27:41, 28.65s/it] 21%|██        | 15/72 [07:03<27:20, 28.79s/it] 22%|██▏       | 16/72 [07:31<26:49, 28.74s/it] 24%|██▎       | 17/72 [07:59<25:57, 28.32s/it] 25%|██▌       | 18/72 [08:28<25:44, 28.60s/it] 26%|██▋       | 19/72 [08:56<25:09, 28.48s/it] 28%|██▊       | 20/72 [09:22<24:03, 27.75s/it]                                                28%|██▊       | 20/72 [09:22<24:03, 27.75s/it] 29%|██▉       | 21/72 [09:50<23:32, 27.71s/it] 31%|███       | 22/72 [10:19<23:25, 28.12s/it] 32%|███▏      | 23/72 [10:47<22:59, 28.15s/it] 33%|███▎      | 24/72 [10:58<18:26, 23.05s/it] 35%|███▍      | 25/72 [11:26<19:11, 24.50s/it] 36%|███▌      | 26/72 [11:54<19:34, 25.54s/it] 38%|███▊      | 27/72 [12:20<19:19, 25.76s/it] 39%|███▉      | 28/72 [12:50<19:51, 27.09s/it] 40%|████      | 29/72 [13:20<20:01, 27.94s/it] 42%|████▏     | 30/72 [13:49<19:43, 28.18s/it]                                                42%|████▏     | 30/72 [13:49<19:43, 28.18s/it] 43%|████▎     | 31/72 [14:17<19:16, 28.20s/it] 44%|████▍     | 32/72 [14:45<18:44, 28.12s/it] 46%|████▌     | 33/72 [15:12<17:56, 27.60s/it] 47%|████▋     | 34/72 [15:39<17:27, 27.56s/it] 49%|████▊     | 35/72 [16:06<16:54, 27.41s/it] 50%|█████     | 36/72 [16:35<16:39, 27.77s/it] 51%|█████▏    | 37/72 [17:02<16:04, 27.55s/it] 53%|█████▎    | 38/72 [17:30<15:41, 27.69s/it] 54%|█████▍    | 39/72 [17:58<15:17, 27.80s/it] 56%|█████▌    | 40/72 [18:28<15:06, 28.34s/it]                                                56%|█████▌    | 40/72 [18:28<15:06, 28.34s/it] 57%|█████▋    | 41/72 [18:55<14:30, 28.08s/it] 58%|█████▊    | 42/72 [19:22<13:53, 27.78s/it] 60%|█████▉    | 43/72 [19:50<13:26, 27.81s/it] 61%|██████    | 44/72 [20:20<13:14, 28.38s/it] 62%|██████▎   | 45/72 [20:48<12:43, 28.28s/it] 64%|██████▍   | 46/72 [21:14<12:01, 27.74s/it] 65%|██████▌   | 47/72 [21:42<11:34, 27.76s/it] 67%|██████▋   | 48/72 [21:53<09:07, 22.81s/it] 68%|██████▊   | 49/72 [22:23<09:29, 24.76s/it] 69%|██████▉   | 50/72 [22:52<09:35, 26.18s/it]                                                69%|██████▉   | 50/72 [22:52<09:35, 26.18s/it][INFO|trainer.py:4643] 2026-04-22 01:19:18,481 >> 
***** Running Evaluation *****
[INFO|trainer.py:4645] 2026-04-22 01:19:18,481 >>   Num examples = 667
[INFO|trainer.py:4648] 2026-04-22 01:19:18,481 >>   Batch size = 8

  0%|          | 0/84 [00:00<?, ?it/s][A
  2%|▏         | 2/84 [00:00<00:11,  7.03it/s][A
  4%|▎         | 3/84 [00:00<00:14,  5.41it/s][A
  5%|▍         | 4/84 [00:00<00:17,  4.52it/s][A
  6%|▌         | 5/84 [00:01<00:17,  4.56it/s][A
  7%|▋         | 6/84 [00:01<00:17,  4.52it/s][A
  8%|▊         | 7/84 [00:01<00:17,  4.47it/s][A
 10%|▉         | 8/84 [00:01<00:18,  4.21it/s][A
 11%|█         | 9/84 [00:02<00:18,  4.09it/s][A
 12%|█▏        | 10/84 [00:02<00:19,  3.83it/s][A
 13%|█▎        | 11/84 [00:02<00:19,  3.83it/s][A
 14%|█▍        | 12/84 [00:02<00:19,  3.75it/s][A
 15%|█▌        | 13/84 [00:03<00:18,  3.78it/s][A
 17%|█▋        | 14/84 [00:03<00:18,  3.70it/s][A
 18%|█▊        | 15/84 [00:03<00:18,  3.64it/s][A
 19%|█▉        | 16/84 [00:03<00:19,  3.50it/s][A
 20%|██        | 17/84 [00:04<00:18,  3.60it/s][A
 21%|██▏       | 18/84 [00:04<00:17,  3.70it/s][A
 23%|██▎       | 19/84 [00:04<00:20,  3.23it/s][A
 24%|██▍       | 20/84 [00:05<00:18,  3.45it/s][A
 25%|██▌       | 21/84 [00:05<00:18,  3.44it/s][A
 26%|██▌       | 22/84 [00:05<00:16,  3.70it/s][A
 27%|██▋       | 23/84 [00:05<00:16,  3.77it/s][A
 29%|██▊       | 24/84 [00:06<00:15,  3.79it/s][A
 30%|██▉       | 25/84 [00:06<00:16,  3.67it/s][A
 31%|███       | 26/84 [00:06<00:14,  3.94it/s][A
 32%|███▏      | 27/84 [00:06<00:14,  3.84it/s][A
 33%|███▎      | 28/84 [00:07<00:14,  3.94it/s][A
 35%|███▍      | 29/84 [00:07<00:14,  3.80it/s][A
 36%|███▌      | 30/84 [00:07<00:14,  3.84it/s][A
 37%|███▋      | 31/84 [00:07<00:13,  3.84it/s][A
 38%|███▊      | 32/84 [00:08<00:13,  3.74it/s][A
 39%|███▉      | 33/84 [00:08<00:13,  3.77it/s][A
 40%|████      | 34/84 [00:08<00:13,  3.58it/s][A
 42%|████▏     | 35/84 [00:09<00:13,  3.72it/s][A
 43%|████▎     | 36/84 [00:09<00:12,  3.98it/s][A
 44%|████▍     | 37/84 [00:09<00:12,  3.85it/s][A
 45%|████▌     | 38/84 [00:09<00:12,  3.77it/s][A
 46%|████▋     | 39/84 [00:10<00:11,  3.89it/s][A
 48%|████▊     | 40/84 [00:10<00:14,  3.14it/s][A
 49%|████▉     | 41/84 [00:10<00:13,  3.24it/s][A
 50%|█████     | 42/84 [00:11<00:12,  3.42it/s][A
 51%|█████     | 43/84 [00:11<00:11,  3.54it/s][A
 52%|█████▏    | 44/84 [00:11<00:11,  3.55it/s][A
 54%|█████▎    | 45/84 [00:11<00:11,  3.44it/s][A
 55%|█████▍    | 46/84 [00:12<00:10,  3.58it/s][A
 56%|█████▌    | 47/84 [00:12<00:10,  3.68it/s][A
 57%|█████▋    | 48/84 [00:12<00:09,  3.79it/s][A
 58%|█████▊    | 49/84 [00:13<00:10,  3.37it/s][A
 60%|█████▉    | 50/84 [00:13<00:10,  3.14it/s][A
 61%|██████    | 51/84 [00:13<00:10,  3.24it/s][A
 62%|██████▏   | 52/84 [00:14<00:09,  3.29it/s][A
 63%|██████▎   | 53/84 [00:14<00:08,  3.46it/s][A
 64%|██████▍   | 54/84 [00:14<00:08,  3.50it/s][A
 65%|██████▌   | 55/84 [00:14<00:07,  3.72it/s][A
 67%|██████▋   | 56/84 [00:15<00:07,  3.85it/s][A
 68%|██████▊   | 57/84 [00:15<00:07,  3.78it/s][A
 69%|██████▉   | 58/84 [00:15<00:06,  3.94it/s][A
 70%|███████   | 59/84 [00:15<00:06,  3.98it/s][A
 71%|███████▏  | 60/84 [00:16<00:05,  4.04it/s][A
 73%|███████▎  | 61/84 [00:16<00:05,  3.87it/s][A
 74%|███████▍  | 62/84 [00:16<00:05,  3.97it/s][A
 75%|███████▌  | 63/84 [00:16<00:05,  3.84it/s][A
 76%|███████▌  | 64/84 [00:17<00:05,  3.70it/s][A
 77%|███████▋  | 65/84 [00:17<00:04,  3.88it/s][A
 79%|███████▊  | 66/84 [00:17<00:04,  3.79it/s][A
 80%|███████▉  | 67/84 [00:17<00:04,  4.06it/s][A
 81%|████████  | 68/84 [00:18<00:04,  3.91it/s][A
 82%|████████▏ | 69/84 [00:18<00:04,  3.47it/s][A
 83%|████████▎ | 70/84 [00:18<00:03,  3.57it/s][A
 85%|████████▍ | 71/84 [00:19<00:03,  3.55it/s][A
 86%|████████▌ | 72/84 [00:19<00:03,  3.27it/s][A
 87%|████████▋ | 73/84 [00:19<00:03,  3.48it/s][A
 88%|████████▊ | 74/84 [00:19<00:02,  3.64it/s][A
 89%|████████▉ | 75/84 [00:20<00:02,  3.63it/s][A
 90%|█████████ | 76/84 [00:20<00:02,  3.62it/s][A
 92%|█████████▏| 77/84 [00:20<00:02,  3.48it/s][A
 93%|█████████▎| 78/84 [00:21<00:01,  3.52it/s][A
 94%|█████████▍| 79/84 [00:21<00:01,  3.61it/s][A
 95%|█████████▌| 80/84 [00:21<00:01,  3.60it/s][A
 96%|█████████▋| 81/84 [00:21<00:00,  3.91it/s][A
 98%|█████████▊| 82/84 [00:21<00:00,  4.04it/s][A
 99%|█████████▉| 83/84 [00:22<00:00,  3.87it/s][A
100%|██████████| 84/84 [00:22<00:00,  4.64it/s][A                                               
                                               [A 69%|██████▉   | 50/72 [23:15<09:35, 26.18s/it]
100%|██████████| 84/84 [00:22<00:00,  4.64it/s][A
                                               [A 71%|███████   | 51/72 [23:42<11:41, 33.39s/it] 72%|███████▏  | 52/72 [24:10<10:31, 31.60s/it] 74%|███████▎  | 53/72 [24:37<09:36, 30.34s/it] 75%|███████▌  | 54/72 [25:04<08:49, 29.41s/it] 76%|███████▋  | 55/72 [25:32<08:12, 28.99s/it] 78%|███████▊  | 56/72 [26:01<07:40, 28.78s/it] 79%|███████▉  | 57/72 [26:29<07:08, 28.58s/it] 81%|████████  | 58/72 [26:56<06:34, 28.19s/it] 82%|████████▏ | 59/72 [27:23<06:01, 27.81s/it] 83%|████████▎ | 60/72 [27:52<05:38, 28.19s/it]                                                83%|████████▎ | 60/72 [27:52<05:38, 28.19s/it] 85%|████████▍ | 61/72 [28:21<05:13, 28.47s/it] 86%|████████▌ | 62/72 [28:49<04:41, 28.15s/it] 88%|████████▊ | 63/72 [29:16<04:10, 27.83s/it] 89%|████████▉ | 64/72 [29:46<03:48, 28.50s/it] 90%|█████████ | 65/72 [30:14<03:18, 28.32s/it] 92%|█████████▏| 66/72 [30:42<02:50, 28.44s/it] 93%|█████████▎| 67/72 [31:11<02:22, 28.49s/it] 94%|█████████▍| 68/72 [31:38<01:52, 28.03s/it] 96%|█████████▌| 69/72 [32:06<01:23, 27.95s/it] 97%|█████████▋| 70/72 [32:34<00:56, 28.03s/it]                                                97%|█████████▋| 70/72 [32:34<00:56, 28.03s/it] 99%|█████████▊| 71/72 [33:02<00:28, 28.03s/it]100%|██████████| 72/72 [33:13<00:00, 22.84s/it][INFO|trainer.py:4309] 2026-04-22 01:29:39,056 >> Saving model checkpoint to /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/checkpoint-72
[INFO|configuration_utils.py:763] 2026-04-22 01:29:39,107 >> loading configuration file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/config.json
[INFO|configuration_utils.py:839] 2026-04-22 01:29:39,108 >> Model config Qwen2Config {
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "dtype": "bfloat16",
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 3584,
  "initializer_range": 0.02,
  "intermediate_size": 18944,
  "layer_types": [
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention"
  ],
  "max_position_embeddings": 32768,
  "max_window_layers": 28,
  "model_type": "qwen2",
  "num_attention_heads": 28,
  "num_hidden_layers": 28,
  "num_key_value_heads": 4,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": null,
  "tie_word_embeddings": false,
  "transformers_version": "4.57.1",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[INFO|tokenization_utils_base.py:2421] 2026-04-22 01:29:39,218 >> chat template saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/checkpoint-72/chat_template.jinja
[INFO|tokenization_utils_base.py:2590] 2026-04-22 01:29:39,220 >> tokenizer config file saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/checkpoint-72/tokenizer_config.json
[INFO|tokenization_utils_base.py:2599] 2026-04-22 01:29:39,220 >> Special tokens file saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/checkpoint-72/special_tokens_map.json
[INFO|trainer.py:2810] 2026-04-22 01:29:39,650 >> 

Training completed. Do not forget to share your model on huggingface.co/models =)


                                               100%|██████████| 72/72 [33:13<00:00, 22.84s/it]100%|██████████| 72/72 [33:13<00:00, 27.69s/it]
[INFO|trainer.py:4309] 2026-04-22 01:29:39,658 >> Saving model checkpoint to /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b
[INFO|configuration_utils.py:763] 2026-04-22 01:29:39,678 >> loading configuration file /public/home/h2025319013/work/animal-medicine/models/Qwen2.5-7B-Instruct/config.json
[INFO|configuration_utils.py:839] 2026-04-22 01:29:39,679 >> Model config Qwen2Config {
  "architectures": [
    "Qwen2ForCausalLM"
  ],
  "attention_dropout": 0.0,
  "bos_token_id": 151643,
  "dtype": "bfloat16",
  "eos_token_id": 151645,
  "hidden_act": "silu",
  "hidden_size": 3584,
  "initializer_range": 0.02,
  "intermediate_size": 18944,
  "layer_types": [
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention",
    "full_attention"
  ],
  "max_position_embeddings": 32768,
  "max_window_layers": 28,
  "model_type": "qwen2",
  "num_attention_heads": 28,
  "num_hidden_layers": 28,
  "num_key_value_heads": 4,
  "rms_norm_eps": 1e-06,
  "rope_scaling": null,
  "rope_theta": 1000000.0,
  "sliding_window": null,
  "tie_word_embeddings": false,
  "transformers_version": "4.57.1",
  "use_cache": true,
  "use_sliding_window": false,
  "vocab_size": 152064
}

[INFO|tokenization_utils_base.py:2421] 2026-04-22 01:29:39,779 >> chat template saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/chat_template.jinja
[INFO|tokenization_utils_base.py:2590] 2026-04-22 01:29:39,780 >> tokenizer config file saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/tokenizer_config.json
[INFO|tokenization_utils_base.py:2599] 2026-04-22 01:29:39,781 >> Special tokens file saved in /public/home/h2025319013/work/animal-medicine/output_model/cn/v1_qwen2.5_7b/special_tokens_map.json
[INFO|trainer.py:4643] 2026-04-22 01:29:40,601 >> 
***** Running Evaluation *****
[INFO|trainer.py:4645] 2026-04-22 01:29:40,601 >>   Num examples = 667
[INFO|trainer.py:4648] 2026-04-22 01:29:40,601 >>   Batch size = 8
  0%|          | 0/84 [00:00<?, ?it/s]  2%|▏         | 2/84 [00:00<00:11,  7.05it/s]  4%|▎         | 3/84 [00:00<00:14,  5.50it/s]  5%|▍         | 4/84 [00:00<00:17,  4.59it/s]  6%|▌         | 5/84 [00:01<00:16,  4.65it/s]  7%|▋         | 6/84 [00:01<00:16,  4.60it/s]  8%|▊         | 7/84 [00:01<00:17,  4.53it/s] 10%|▉         | 8/84 [00:01<00:17,  4.32it/s] 11%|█         | 9/84 [00:01<00:18,  4.16it/s] 12%|█▏        | 10/84 [00:02<00:18,  3.90it/s] 13%|█▎        | 11/84 [00:02<00:18,  3.88it/s] 14%|█▍        | 12/84 [00:02<00:19,  3.79it/s] 15%|█▌        | 13/84 [00:03<00:18,  3.80it/s] 17%|█▋        | 14/84 [00:03<00:18,  3.74it/s] 18%|█▊        | 15/84 [00:03<00:18,  3.68it/s] 19%|█▉        | 16/84 [00:03<00:19,  3.53it/s] 20%|██        | 17/84 [00:04<00:18,  3.62it/s] 21%|██▏       | 18/84 [00:04<00:17,  3.74it/s] 23%|██▎       | 19/84 [00:04<00:19,  3.27it/s] 24%|██▍       | 20/84 [00:05<00:18,  3.48it/s] 25%|██▌       | 21/84 [00:05<00:18,  3.46it/s] 26%|██▌       | 22/84 [00:05<00:16,  3.72it/s] 27%|██▋       | 23/84 [00:05<00:16,  3.78it/s] 29%|██▊       | 24/84 [00:06<00:15,  3.80it/s] 30%|██▉       | 25/84 [00:06<00:16,  3.68it/s] 31%|███       | 26/84 [00:06<00:14,  3.94it/s] 32%|███▏      | 27/84 [00:06<00:14,  3.84it/s] 33%|███▎      | 28/84 [00:07<00:14,  3.94it/s] 35%|███▍      | 29/84 [00:07<00:14,  3.81it/s] 36%|███▌      | 30/84 [00:07<00:14,  3.85it/s] 37%|███▋      | 31/84 [00:07<00:13,  3.85it/s] 38%|███▊      | 32/84 [00:08<00:13,  3.74it/s] 39%|███▉      | 33/84 [00:08<00:13,  3.77it/s] 40%|████      | 34/84 [00:08<00:13,  3.58it/s] 42%|████▏     | 35/84 [00:09<00:13,  3.72it/s] 43%|████▎     | 36/84 [00:09<00:11,  4.01it/s] 44%|████▍     | 37/84 [00:09<00:12,  3.87it/s] 45%|████▌     | 38/84 [00:09<00:12,  3.78it/s] 46%|████▋     | 39/84 [00:10<00:11,  3.90it/s] 48%|████▊     | 40/84 [00:10<00:13,  3.14it/s] 49%|████▉     | 41/84 [00:10<00:13,  3.25it/s] 50%|█████     | 42/84 [00:11<00:12,  3.43it/s] 51%|█████     | 43/84 [00:11<00:11,  3.54it/s] 52%|█████▏    | 44/84 [00:11<00:11,  3.56it/s] 54%|█████▎    | 45/84 [00:11<00:11,  3.44it/s] 55%|█████▍    | 46/84 [00:12<00:10,  3.58it/s] 56%|█████▌    | 47/84 [00:12<00:10,  3.68it/s] 57%|█████▋    | 48/84 [00:12<00:09,  3.79it/s] 58%|█████▊    | 49/84 [00:13<00:10,  3.37it/s] 60%|█████▉    | 50/84 [00:13<00:10,  3.16it/s] 61%|██████    | 51/84 [00:13<00:10,  3.26it/s] 62%|██████▏   | 52/84 [00:13<00:09,  3.30it/s] 63%|██████▎   | 53/84 [00:14<00:08,  3.47it/s] 64%|██████▍   | 54/84 [00:14<00:08,  3.51it/s] 65%|██████▌   | 55/84 [00:14<00:07,  3.73it/s] 67%|██████▋   | 56/84 [00:14<00:07,  3.86it/s] 68%|██████▊   | 57/84 [00:15<00:07,  3.79it/s] 69%|██████▉   | 58/84 [00:15<00:06,  3.94it/s] 70%|███████   | 59/84 [00:15<00:06,  3.99it/s] 71%|███████▏  | 60/84 [00:15<00:05,  4.05it/s] 73%|███████▎  | 61/84 [00:16<00:05,  3.88it/s] 74%|███████▍  | 62/84 [00:16<00:05,  3.97it/s] 75%|███████▌  | 63/84 [00:16<00:05,  3.85it/s] 76%|███████▌  | 64/84 [00:17<00:05,  3.71it/s] 77%|███████▋  | 65/84 [00:17<00:04,  3.88it/s] 79%|███████▊  | 66/84 [00:17<00:04,  3.79it/s] 80%|███████▉  | 67/84 [00:17<00:04,  4.06it/s] 81%|████████  | 68/84 [00:18<00:04,  3.92it/s] 82%|████████▏ | 69/84 [00:18<00:04,  3.47it/s] 83%|████████▎ | 70/84 [00:18<00:03,  3.57it/s] 85%|████████▍ | 71/84 [00:18<00:03,  3.56it/s] 86%|████████▌ | 72/84 [00:19<00:03,  3.27it/s] 87%|████████▋ | 73/84 [00:19<00:03,  3.48it/s] 88%|████████▊ | 74/84 [00:19<00:02,  3.64it/s] 89%|████████▉ | 75/84 [00:20<00:02,  3.63it/s] 90%|█████████ | 76/84 [00:20<00:02,  3.62it/s] 92%|█████████▏| 77/84 [00:20<00:02,  3.48it/s] 93%|█████████▎| 78/84 [00:20<00:01,  3.52it/s] 94%|█████████▍| 79/84 [00:21<00:01,  3.61it/s] 95%|█████████▌| 80/84 [00:21<00:01,  3.61it/s] 96%|█████████▋| 81/84 [00:21<00:00,  3.91it/s] 98%|█████████▊| 82/84 [00:21<00:00,  4.04it/s] 99%|█████████▉| 83/84 [00:22<00:00,  3.88it/s]100%|██████████| 84/84 [00:22<00:00,  4.72it/s]100%|██████████| 84/84 [00:22<00:00,  3.77it/s]
[INFO|modelcard.py:456] 2026-04-22 01:30:03,156 >> Dropping the following result as it does not have all the necessary fields:
{'task': {'name': 'Causal Language Modeling', 'type': 'text-generation'}}
