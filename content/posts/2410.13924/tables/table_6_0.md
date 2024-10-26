| Method | Training Data | val | test |
| --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet | 72.4 | 73.6 |
| PonderV2 [42] | ScanNet (self-supervised) → ScanNet | 73.5 | - |
| Mix3D [20] | ScanNet | 73.6 | 78.1 |
| fine-tune (Ours) | ALS200 → ScanNet | 77.0 | - |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet | 77.5 | 77.9 |
| fine-tune (Ours) | ALS200 → ScanNet | 81.2 | - |
| fine-tune (Ours) | ALC → ScanNet | 80.6 | 79.0 |
| PPT [36] | ScanNet + S3DIS + Structure3D | 78.6 | 79.4 |
| PPT (Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 81.1 | 79.8 |
