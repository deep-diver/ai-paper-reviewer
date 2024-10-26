| Model Size | 2M | 82M | 180M | 468M |
| --- | --- | --- | --- | --- |
| Layers | 4 | 8 | 12 | 24 |
| Attention Heads | 2 | 8 | 12 | 16 |
| Hidden Dimension | 16 | 512 | 768 | 1,024 |
| FFN Dimension | 56 | 1,792 | 2,688 | 3,584 |
| Tie Word Embedding | False | False | False | False |
| (Peak Learning Rate, Final Learning Rate) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) |
| Learning Rate Schedule | Cosine Decay | Cosine Decay | Cosine Decay | Cosine Decay |
| Vocabulary Size | 50,277 | 50,277 | 50,277 | 50,277 |
| Activation Function | SwiGLU | SwiGLU | SwiGLU | SwiGLU |
| Position Embedding | RoPE (0 = 10,000) | RoPE (0 = 10,000) | RoPE (0 = 10,000) | RoPE (0 = 10,000) |
| Batch Size | 2M tokens | 2M tokens | 2M tokens | 2M tokens |
| Data Size | 20B tokens | 20B tokens | 20B tokens | 20B tokens |
| (Warmup Steps, Training Steps) | (120, 10,000) | (120, 10,000) | (120, 10,000) | (120, 10,000) |
| Adam B | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) |
| Dropout | 0.0 | 0.0 | 0.0 | 0.0 |
| Weight Decay | 0.1 | 0.1 | 0.1 | 0.1 |
