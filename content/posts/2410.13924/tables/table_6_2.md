| PTv3 Variant | Training Data | #Data | val mloU | test top-1/3 ml⌀U |
| --- | --- | --- | --- | --- |
| vanilla | ScanNet++ | 713 | 41.8 | 45.8/69.7 |
| fine-tune (Ours) | ALC200 → ScanNet++ | 4471 → 713 | 42.5 | 43.7/65.5 |
| PPT [36] | ScanNet200 + ScanNet++ + Structure3D | 45868 | 45.31 | 46.5/71.1 |
| PPT (Ours) | ScanNet200 + ScanNet++ + ALC | 11168 | 44.5 | 46.1/70.8 |
| PPT (Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 30386 | 44.6 | 46.1 / 68.5 |
