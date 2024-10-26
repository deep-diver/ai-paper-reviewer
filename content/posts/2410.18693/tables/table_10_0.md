| Phase | Phase | Type | # Samples | GPU hours | Cost ($) |
| --- | --- | --- | --- | --- | --- |
| QFT | Training DSMath-QFT | Train | 15K | 2.0 | 2.6 |
| QFT | Training Qwen2-Math-QFT | Train | 15K | 1.9 | 2.5 |
| QPO | Generate Questions | Infer | 10Kx2 | 0.4 | 0.5 |
| QPO | Construct Preference Data | API | 10Kx2 | - | 6.2 |
| QPO | QPO Training | Train | 10Kx2 | 6.6 | 8.5 |
| Data Synthesis | Question Generation | Infer | 2M | 38.4 | 49.5 |
| Data Synthesis | solvability & difficulty check | Infer | 2M | 110.6 | 142.7 |
| Data Synthesis | Response Generation | Infer | 1Mx5 | 251.0 | 323.8 |
| Data Synthesis | Reward Scoring | Infer | 1Mx5 | 112.0 | 144.5 |
| Total | Total | Total | 1M | 522.9 | 680.8 |
| GPT-4 cost (generating the same number of tokens) | GPT-4 cost (generating the same number of tokens) | GPT-4 cost (generating the same number of tokens) | - | - | 24,939.5 |
| GPT-4o cost (generating the same number of tokens) | GPT-4o cost (generating the same number of tokens) | GPT-4o cost (generating the same number of tokens) | - | - | 6,115.9 |
