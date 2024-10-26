| Config | Value |
| --- | --- |
| Image observation horizon | 3 (Pour Water, Unplug Charger), 2 (other tasks) |
| Proprioception observation horizon | 3 (Pour Water, Unplug Charger), 2 (other tasks) |
| Action horizon | 16 |
| Observation resolution | 224x224 |
| Environment frequency | 5 |
| Optimizer | AdamW |
| Optimizer momentum | B1, B2 = 0.95, 0.999 |
| Learning rate for action diffusion model | 3e-4 |
| Learning rate for visual encoder | 3e-5 |
| Learning rate schedule | cosine decay |
| Batch size | 256 |
| Inference denoising iterations | 16 |
| Temporal ensemble steps | 8 |
| Temporal ensemble adaptation rate | -0.01 |
