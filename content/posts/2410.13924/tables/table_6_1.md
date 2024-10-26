| Method | Training Data | val | test |
| --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet200 | 29.3 | 25.3 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 30.1 | 27.4 |
| co-training (Ours) | ALS200 + ScanNet200 | 30.6 | - |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet200 | 35.2 | 37.8 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 38.4 | - |
| fine-tune (Ours) | ALC200 → ScanNet200 | 38.7 | 38.4 |
| PPT [36] | ScanNet200 + S3DIS + Structure3D → ScanNet200 | 36.0 | 39.3 |
| PPT(Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 40.3 | 41.4 |
