| Config | Blurring Distortions | Watermark Encoder | Watermark Encoder | Watermark Encoder | Watermark Encoder | Watermark Encoder | PSNR ↑ | SSIM ↑ | LPIPS ↓ | FID ↓ | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Config | Blurring Distortions | Backbone | Condition | Skip | Pretrained | Finetune | PSNR ↑ | SSIM ↑ | LPIPS ↓ | FID ↓ | Sto | Det | Pix2Pix | Ultra |
| Config A |  | Simple UNet | N.A. | N.A. | N.A. | x | 38.21 | 0.9828 | 0.0148 | 1.69 | 54.61 | 66.86 | 64.24 | 32.62 |
| Config B |  | Simple UNet | N.A. | N.A. | N.A. | 35.85 | 0.9766 | 0.0257 | 2.12 | 86.85 | 92.28 | 80.98 | 62.14 |  |
| Config C |  | Simple UNet | N.A. | N.A. | N.A. | 31.24 | 0.9501 | 0.0458 | 4.67 | 98.59 | 99.29 | 96.01 | 84.60 |  |
| Config D |  |  | ControlNet |  |  |  | 32.68 | 0.9640 | 0.0298 | 2.87 | 90.82 | 94.89 | 91.86 | 70.69 |
| Config E | SDXL-Turbo | Cond. Adaptor |  |  | 36.76 |  | 0.9856 | 0.0102 | 0.53 | 90.86 | 94.78 | 92.88 | 70.68 |  |
| Config F (VINE-B) |  | Cond. Adaptor |  |  |  | 40.51 | 0.9954 | 0.0029 | 0.08 | 91.03 | 99.25 | 96.30 | 80.90 |  |
| Config G (VINE-R) |  | Cond. Adaptor |  |  | 37.34 |  | 0.9934 | 0.0063 | 0.15 | 99.66 | 99.98 | 97.46 | 86.86 |  |
| Config H |  | Cond. Adaptor |  |  |  | 35.18 | 0.9812 | 0.0137 | 1.03 | 99.67 | 99.92 | 96.13 | 84.66 |  |
