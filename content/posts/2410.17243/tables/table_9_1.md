| Cross-GPU In-GPU | Data | Loss | Loss | Backbone | Peak | ImageNet |
| --- | --- | --- | --- | --- | --- | --- |
| Cross-GPU In-GPU | Memory | Complexity | Memory | Memory | Memory | ImageNet |
| (Vanilla) | 1.96 | O(b2) | 66.21 | 8.26 | 69.24 | 74.82 |
| (OpenCLIP) | 1.96 | O(b2 /n) | 16.96 | 8.26 | 20.79 | 74.86 |
| V | 1.96 | ⌀(b2 /n2) | 4.81 | 8.26 | 12.30 | 74.78 |
| V | 1.96 | O(b/n2) | 0.81 | 8.26 | 12.30 | 74.93 |
