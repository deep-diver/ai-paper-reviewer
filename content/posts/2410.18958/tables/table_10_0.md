| METHOD | NFE (↓) | FID (↓) | METHOD | NFE (↓) | FID (↓) |
| --- | --- | --- | --- | --- | --- |
| Fast samplers & distillation for diffusion models | Fast samplers & distillation for diffusion models | Fast samplers & distillation for diffusion models | Fast samplers & distillation for diffusion models | Fast samplers & distillation for diffusion models | Fast samplers & distillation for diffusion models |
| DDIM (Song et al., 2020) | 10 | 13.36 | DDIM (Song et al., 2020) | 50 | 13.7 |
| DPM-solver-fast (Lu et al., 2022) | 10 | 4.70 | DPM solver (Lu et al., 2022) TRACT (Berthelot et al., 2023) ADM EDM (Karras et 2022) | 10 | 18.3 |
| 3-DEIS (Zhang & Chen, 2022) | 10 | 4.17 | DPM solver (Lu et al., 2022) TRACT (Berthelot et al., 2023) ADM EDM (Karras et 2022) | 10 | 7.93 |
| UniPC (Zhao et al., 2024) | 10 | 3.87 | DPM solver (Lu et al., 2022) TRACT (Berthelot et al., 2023) ADM EDM (Karras et 2022) | 20 | 3.42 |
| Knowledge Distillation (Luhman & Luhman, 2021) | 1 | 9.36 | DEIS (Zhang & Chen, 2022) DFNO (LPIPS) (Zheng et al., 2022) | 10 | 6.65 |
| DFNO (LPIPS) (Zheng et al., 2022) | 1 | 3.78 | DEIS (Zhang & Chen, 2022) DFNO (LPIPS) (Zheng et al., 2022) | 20 | 3.10 |
| 2-Rectified Flow (+distill) (Liu et al., 2022) | 1 | 4.85 | DEIS (Zhang & Chen, 2022) DFNO (LPIPS) (Zheng et al., 2022) | 1 | 7.83 |
| TRACT (Berthelot et al., 2023) | 1 | 3.78 | DEIS (Zhang & Chen, 2022) DFNO (LPIPS) (Zheng et al., 2022) | 1 | 7.43 |
|  | 2 | 3.32 | DEIS (Zhang & Chen, 2022) DFNO (LPIPS) (Zheng et al., 2022) | 2 | 4.97 |
| Diff-Instruct (Luo et al., 2023) | 1 | 4.53 | BOOT (Gu et al., 2023) Diff-Instruct (Luo et al., 2023) PD (Salimans & Ho, 2022) | 1 | 16.3 |
| PD (Salimans & Ho, 2022) | 1 | 8.34 | BOOT (Gu et al., 2023) Diff-Instruct (Luo et al., 2023) PD (Salimans & Ho, 2022) | 1 | 5.57 |
|  | 2 | 5.58 | BOOT (Gu et al., 2023) Diff-Instruct (Luo et al., 2023) PD (Salimans & Ho, 2022) | 1 | 15.39 |
| CTM (Kim et al., 2023) | 1 | 5.19 | BOOT (Gu et al., 2023) Diff-Instruct (Luo et al., 2023) PD (Salimans & Ho, 2022) | 2 | 8.95 |
|  | 18 | 3.00 | CTM (+GAN + CRJ) (Kim et al., 2023) SID (a = 1.0) (Zhou et al., 2024) PD (LPIPS) (Song et al., 2023) | 4 | 6.77 |
| CTM (+GAN +CRJ) | 1 | 1.98 | CTM (+GAN + CRJ) (Kim et al., 2023) SID (a = 1.0) (Zhou et al., 2024) PD (LPIPS) (Song et al., 2023) | 1 | 1.92 |
|  | 2 | 1.87 | CTM (+GAN + CRJ) (Kim et al., 2023) SID (a = 1.0) (Zhou et al., 2024) PD (LPIPS) (Song et al., 2023) | 1 | 2.03 |
| SiD (a = 1.0) (Zhou et al., 2024) | 1 | 2.03 | CTM (+GAN + CRJ) (Kim et al., 2023) SID (a = 1.0) (Zhou et al., 2024) PD (LPIPS) (Song et al., 2023) | 1 | 7.88 |
| SiD (a = 1.2) (Zhou et al., 2024) | 1 | 1.98 | CD (LPIPS) (Song et al., 2023) | 2 | 5.74 |
| CD (LPIPS) (Song et al., 2023) | 1 | 3.55 | CD (LPIPS) (Song et al., 2023) | 4 | 4.92 |
|  | 2 | 2.93 | CD (LPIPS) (Song et al., 2023) | 1 | 6.20 |
| Direct Generation | Direct Generation | Direct Generation | CD (LPIPS) (Song et al., 2023) | 2 3 | 4.70 |
| Score SDE (Song et al., 2021) | 2000 | 2.38 | Direct Generation |  | 4.32 |
| Score SDE (deep) (Song et al., 2021) | 2000 | 2.20 | Direct Generation |  |  |
| DDPM (Ho et al., 2020) | 1000 | 3.17 | RIN (Jabri et al., 2022) DDPM (Ho et al., 2020) iDDPM (Nichol & Dhariwal, 2021) | 1000 | 1.23 |
| LSGM ( Vahdat et al., 2021) | 147 | 2.10 | RIN (Jabri et al., 2022) DDPM (Ho et al., 2020) iDDPM (Nichol & Dhariwal, 2021) | 250 | 11.0 |
| PFGM (Xu et al., 2022) | 110 | 2.35 | RIN (Jabri et al., 2022) DDPM (Ho et al., 2020) iDDPM (Nichol & Dhariwal, 2021) | 250 | 2.92 |
| EDM (Karras et al., 2022) | 35 | (Dhariwal & Nichol, 2021) 2.04 | RIN (Jabri et al., 2022) DDPM (Ho et al., 2020) iDDPM (Nichol & Dhariwal, 2021) | 250 | 2.07 |
| EDM-G++ (Kim et al., 2022) | 35 | 1.77 | RIN (Jabri et al., 2022) DDPM (Ho et al., 2020) iDDPM (Nichol & Dhariwal, 2021) | 511 | 1.36 |
| NVAE ( Vahdat & Kautz, 2020) | 1 | 23.5 | al., EDM* (Heun) (Karras et al., 2022) BigGAN-deep (Brock et al., 2019) | 79 | 2.44 |
| Glow (Kingma & Dhariwal, 2018) | 1 | 48.9 | al., EDM* (Heun) (Karras et al., 2022) BigGAN-deep (Brock et al., 2019) | 1 | 4.06 |
| Residual Flow (Chen et al., 2019) | 1 |  | Consistency Training/Tuning CT (Song |  |  |
| BigGAN (Brock et al., 2019) | 1 | 14.7 | (LPIPS) et al., 2023) iCT (Song & Dhariwal, 2023) | 1 2 | 13.0 11.1 |
| StyleGAN2 (Karras et al., 2020b) | 1 | 8.32 | (LPIPS) et al., 2023) iCT (Song & Dhariwal, 2023) | 1 | 4.02 |
| StyleGAN2-ADA (Karras et al., 2020a) | 1 | 2.92 | (LPIPS) et al., 2023) iCT (Song & Dhariwal, 2023) | 2 | 3.20 |
| Consistency Training/Tuning | Consistency Training/Tuning | Consistency Training/Tuning |  |  |  |
| CT (LPIPS) (Song et al., 2023) | 1 | 8.70 | iCT-deep (Song & Dhariwal, 2023) MCM (CT) (Heek et al., 2024) | 1 2 | 3.25 2.77 |
|  | 2 | 5.83 | iCT-deep (Song & Dhariwal, 2023) MCM (CT) (Heek et al., 2024) | 1 | 7.2 |
| iCT (Song & Dhariwal, 2023) | 1 | 2.83 | iCT-deep (Song & Dhariwal, 2023) MCM (CT) (Heek et al., 2024) | 2 | 2.7 |
|  | 2 | 2.46 | iCT-deep (Song & Dhariwal, 2023) MCM (CT) (Heek et al., 2024) | 4 | 1.8 |
| iCT-deep (Song & Dhariwal, 2023) | 1 | 2.51 | ECT-S (Geng et al., 2024) | 1 | 5.51 |
|  | 2 | 2.24 | ECT-S (Geng et al., 2024) | 2 | 3.18 |
| ECT (Geng et al., 2024) | 1 | 3.78 | ECT-M (Geng et al., 2024) | 1 | 3.67 |
|  | 2 | 2.13 | ECT-M (Geng et al., 2024) | 2 | 2.35 |
| SCT | 1 | 3.11 (2.98) | ECT-XL (Geng et al., 2024) | 1 | 3.35 |
|  | 2 | 2.05 (2.05) | ECT-XL (Geng et al., 2024) | 2 | 1.96 |
| SCT* | 1 | 2.92 (2.78) | SCT-S | 1 | 5.10 (4.59) |
|  | 2 | 2.02 (1.94) | SCT-S | 2 | 3.05 (2.98) |
| SCT (Phased) | 4 | 1.95 | SCT-M | 4 | 2.51 (2.43) |
|  | 8 | 1.86 | SCT-M | 1 | 3.30 (3.06) |
| Cond-SCT | 1 | 3.03 (2.94) | SCT-M | 2 | 2.13 (2.09) |
|  | 2 | 1.88 (1.86) | SCT-M | 4 | 1.83 (1.78) |
| Cond-SCT* |  | 2.88 (2.82) | SCT-M* 2 | 1 | 2.42 (2.23) |
|  | 1 2 | 1.87 (1.84) | SCT-M* 2 |  |  |
