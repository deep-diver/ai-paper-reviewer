| Method | Training Data | head | Validation common | tail | head | Test common | tail |
| --- | --- | --- | --- | --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet200 | 52.3 | 22.5 | 13.2 | 46.3 | 15.4 | 10.2 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 53.9 | 24.2 | 12.5 | 49.0 | 19.4 | 9.4 |
| co-training (Ours) | ALS200 + ScanNet200 | 55.1 | 24.7 | 12.4 | ■ | - | ■ |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet200 | 56.5 | 30.1 | 19.3 | · | · |  |
| fine-tune (Ours) | ALS200 → ScanNet200 | 58.6 | 33.0 | 23.8 | · | · | · |
| fine-tune (Ours) | ALC200 → ScanNet200 | 58.2 | 33.1 | 25.0 | 58.2 | 30.9 | 22.2 |
| PPT [36] | ScanNet200 + S3DIS + Structure3D → ScanNet200 | ■ | ■ | - | 59.2 | 33.0 | 21.6 |
| PPT(Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 60.9 | 35.48 | 24.6 | 61.0 | 32.2 | 27.1 |
