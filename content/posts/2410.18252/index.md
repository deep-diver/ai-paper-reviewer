---
title: "Asynchronous RLHF: Faster and More Efficient Off-Policy RL for Language Models"
summary: "This paper proposes asynchronous off-policy RLHF, separating LLM generation and training to enable concurrent processing.  It demonstrates that Online DPO is robust to off-policy data, allowing for ef....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This paper proposes asynchronous off-policy RLHF, separating LLM generation and training to enable concurrent processing.  It demonstrates that Online DPO is robust to off-policy data, allowing for efficient training.  Experiments on LLMs from 410M to 8B parameters show significant speedups (up to 40%) while maintaining performance, highlighting the scalability and efficiency of this approach for training large language models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18252" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper is important because it introduces a novel asynchronous off-policy approach to Reinforcement Learning from Human Feedback (RLHF), significantly accelerating the training process of large language models (LLMs) while maintaining performance. This is a crucial development as the computational cost of RLHF is currently a major bottleneck in LLM development, hindering the creation and refinement of increasingly sophisticated models.  The findings offer valuable insights for researchers aiming to reduce computational expense and improve efficiency in the field of LLM training and alignment.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Asynchronous off-policy RLHF is significantly more computationally efficient than synchronous on-policy RLHF, achieving similar performance with substantially reduced training time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Online DPO is the most robust RLHF algorithm to off-policy data, making it suitable for asynchronous training with minimal performance degradation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Efficient asynchronous RLHF scales effectively with model size, accelerating training even further as model parameters increase. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_7_0.png "🔼 Figure 6: Asynchronous RLHF can be training-bound (left) or generation-bound (right). In practice, generation and training speeds differ so a challenge of asynchronous learning is how best to balance usage and leverage idle compute time to further improve training.")





{{< table-caption caption="🔽 Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training" >}}
| Model | Win Rate | KL (Perplexity) |
| --- | --- | --- |
| SFT 410m | 25.36% | 1.075 |
| SFT 1B | 26.82% | 1.071 |
| SFT 2.8B | 35.16% | 1.068 |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training" >}}
| Hyperparameter | Value |
| --- | --- |
| Learning Rate | 3 x 10-6 |
| Learning Rate Schedule | Linear |
| Generation Temperature | 0.7 |
| Batch Size (effective) | 512 |
| Max Token Length | 1,024 |
| Max Prompt Token Length | 512 |
| Response Length | 128 |
| Number of PPO Epochs | 1 |
| Total Episodes | 131,072 |
| KL penalty coefficient | 0.05 |
| Penalty Reward Value for Completions Without an EOS Token | -1.0 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training" >}}
| Hyperparameter | Value |
| --- | --- |
| Model | Meta-Llama-3.1-8B |
| Max Sequence Length | 4,096 |
| Batch Size (effective) | 128 |
| Learning Rate | 5.0 x 10-6 |
| Learning Rate Schedule | Linear |
| Learning Rate Warmup Ratio | 0.03 |
| Learning Rate Weight Decay | 0.0 |
| Number of Epochs | 2 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training" >}}
| Hyperparameter | Value |
| --- | --- |
| Model | The Trained No Robot SFT Checkpoint |
| Learning Rate | 3 x 10-6 |
| Learning Rate Schedule | Linear |
| Batch Size (effective) | 256 |
| Max Sequence Length | 1,024 |
| Number of Epochs | 1 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: The trained models' GPT4-0 win rate against the human-written responses on the test split of the No Robots dataset (Rajani et al., 2023)" >}}
| Hyperparameter | Value |
| --- | --- |
| Model | The Trained No Robot SFT Checkpoint |
| Reward Model | The Trained RM Checkpoint |
| Learning Rate | 8 x 10-7 |
| Learning Rate Schedule | Linear |
| Generation Temperature | 0.7 |
| Batch Size (effective) | 256 |
| Max Token Length | 1,024 |
| Max Prompt Token Length | 512 |
| Number of Epochs | 1 |
| Total Episodes | 100,000 |
| Beta (DPO coefficient) | 0.03 |
| Response Length | 1,024 |
| Penalty Reward Value for Completions |  |
| Without an EOS Token | -10.0 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: The trained models’ GPT-4 win rate against the human-written responses on the test split of the No Robots dataset (Rajani et al., 2023)" >}}
| Model | Win Rate | Average Response Sequence Length |
| --- | --- | --- |
| SFT | 31.80% | 198.40 |
| Async Online DPO | 57.20% | 290.55 |
| Sync Online DPO | 57.20% | 286.21 |
| Human | N/A | 179.726 |
{{< /table-caption >}}


</details>

------

