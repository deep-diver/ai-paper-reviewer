| Length | Attention | DiffuLLaMA (sec) | LLaMA (sec) |
| --- | --- | --- | --- |
| 512 | flash-attention 2 | 12.5 | 9.2 |
| 1024 | SDPA | 13.2 | 16.3 |
| 1024 | flash-attention 2 | 13.3 | 17.5 |
| 1024 | vanilla | 16.2 | 17.2 |
| 2048 | SDPA | 28.5 | 29.5 |
| 2048 | flash-attention 2 | 23.5 | 35.7 |
| 2048 | vanilla | 38.1 | 32.8 |
