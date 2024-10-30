---
title: "Asynchronous RLHF: Faster and More Efficient Off-Policy RL for Language Models"
summary: "Asynchronous off-policy RLHF accelerates LLM training by 40% without sacrificing performance, achieving compute-optimal scaling by decoupling generation and learning phases."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.18252 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper presents a novel approach to Reinforcement Learning from Human Feedback (RLHF) for large language models (LLMs).  Current RLHF methods are often slow and computationally expensive because they synchronously generate text, get human feedback, and then update the model. This paper proposes an asynchronous approach: generating new data while simultaneously training on previously generated data.  This off-policy method significantly speeds up the process, which is crucial given the large compute requirements of training LLMs.  The researchers tested several RL algorithms and found that Online DPO was the most robust to off-policy data, performing particularly well with larger LLMs.  They also explored ways to further optimize compute efficiency, showing a trade-off between efficiency and performance.  Finally, they trained a large language model (LLaMA 3.1 8B) on an instruction-following task 40% faster than traditional synchronous methods, without sacrificing the final accuracy.  This shows the potential of asynchronous RLHF to enable faster, more efficient, and scalable LLM training, pushing the boundaries of current RLHF practices.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18252" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18252" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on reinforcement learning from human feedback (RLHF) for large language models (LLMs). It introduces a novel asynchronous off-policy approach to RLHF, significantly speeding up the training process while maintaining performance. This is particularly relevant given the growing computational demands of training LLMs and the importance of efficient training techniques. The findings open up new avenues for research into asynchronous RL methods and off-policy learning in RLHF, potentially leading to more efficient and scalable LLM training approaches.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Asynchronous off-policy RLHF significantly speeds up LLM training compared to synchronous on-policy methods, achieving a 40% speedup without impacting performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Online DPO is identified as a more robust algorithm for off-policy learning in RLHF, particularly effective as the model size increases. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper demonstrates the scalability of asynchronous RLHF, highlighting its potential to improve efficiency as model sizes increase. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18252/figures_7_0.png)

> 🔼 The figure illustrates the training-bound and generation-bound scenarios in asynchronous RLHF, highlighting the challenge of balancing generation and training speeds to optimize compute usage.
> <details>
> <summary>read the caption</summary>
> Figure 6: Asynchronous RLHF can be training-bound (left) or generation-bound (right). In practice, generation and training speeds differ so a challenge of asynchronous learning is how best to balance usage and leverage idle compute time to further improve training.
> </details>





![](https://ai-paper-reviewer.com/2410.18252/charts_2_0.png)

> 🔼 The chart displays the computational efficiency and win-rate performance of asynchronous off-policy RLHF compared to synchronous on-policy RLHF across different model scales, demonstrating faster training times with matching performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Asynchronous off-policy RLHF is more computationally efficient, and matches the win-rate of synchronous on-policy RLHF on TLDR across model scales. On 4×A100 GPUs, it results in training a 2.8B Pythia model 25% faster and improvements in speed increase with scale.
> </details>





{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Model</td><td>Win Rate</td><td>KL (Perplexity)</td></tr><tr><td>SFT 410m</td><td>25.36%</td><td>1.075</td></tr><tr><td>SFT 1B</td><td>26.82%</td><td>1.071</td></tr><tr><td>SFT 2.8B</td><td>35.16%</td><td>1.068</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the win rate and KL (perplexity) of three different sized Pythia models after supervised fine-tuning, before reinforcement learning from human feedback (RLHF) training.
> <details>
> <summary>read the caption</summary>
> Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18252/charts_3_0.png)

> 🔼 The chart shows that asynchronous off-policy RLHF is more computationally efficient than synchronous on-policy RLHF while achieving the same performance across different model scales.
> <details>
> <summary>read the caption</summary>
> Figure 1: Asynchronous off-policy RLHF is more computationally efficient, and matches the win-rate of synchronous on-policy RLHF on TLDR across model scales. On 4×A100 GPUs, it results in training a 2.8B Pythia model 25% faster and improvements in speed increase with scale.
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_5_0.png)

> 🔼 The chart displays the trade-off between win-rate and KL divergence in off-policy PPO, showing decreasing performance with increasing off-policyness.
> <details>
> <summary>read the caption</summary>
> Figure 3: Trade-off between Win-Rate and KL in Off-Policy PPO. PPO performance decreases as learning becomes more off-policy. Win-rate is highest when learning is fully on-policy (generate then train on N = 1 mini-batches). As we increase N, our model must take more steps on data generated by the same old policy. This increases off-policyness and reduces win-rate. Left: Gold win-rate over training Middle: KL (perplexity) over training, higher is further from initial model Right: Gold win-rate vs KL
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_5_1.png)

> 🔼 The chart compares the robustness of different RLHF loss functions (Online DPO, PPO, RLOO, Best-of-2) to varying degrees of off-policyness, showing Online DPO's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Robustness of RLHF Losses to Off-Policyness. Online DPO is more robust to off-policyness than PPO, RLOO (Left) or Best-of-2 SFT (Right). Performance is shown across levels of off-policyness as mediated by number of mini-batches N∈ {1,2,4,8,16}. With higher N increasing off-policyness, Online DPO retains much more performance than other methods, as evidenced by off-policy points still being clustered close to optimal performance.
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_6_0.png)

> 🔼 The chart shows the effect of scaling policy and reward model sizes on the robustness of off-policy reinforcement learning from human feedback (RLHF) in terms of win rate and KL divergence.
> <details>
> <summary>read the caption</summary>
> Figure 5: Scaling Model Size with Off-Policy RLHF. Plotting the final win-rate vs KL for N = 1 → 64 mini-batches, covering a spectrum of on-policy to off-policy RL. Scaling policy size (left) improves off-policy robustness as seen by tighter clustering of points. But scaling reward model size (right) does not, even though it reduces overoptimization, achieving reward with smaller KL.
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_7_0.png)

> 🔼 The chart shows the impact of multiple updates per batch on the win-rate and KL (perplexity) in generation-bound asynchronous RLHF across different model scales.
> <details>
> <summary>read the caption</summary>
> Figure 7: Optimizing Generation-Bound RLHF. We can leverage extra training GPU cycles to do multiple updates on the same generated mini-batch ('ppo epochs'). Left: At 410m and 1B scales, more updates per batch increases the win-rate achieved at any given episode, making training more data efficient. Right: Across scales, more updates change the pareto frontier and cause models to achieve the same win-rate at a higher KL.
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_8_0.png)

> 🔼 The chart shows the trade-off between compute time, win-rate, and KL divergence when optimizing training-bound RLHF by adjusting the number of samples per prompt.
> <details>
> <summary>read the caption</summary>
> Figure 8: Optimizing Training-Bound RLHF. We can leverage extra generation GPU cycles to sample K completions per prompt instead of 2. Left: Sampling K = 4 improves the gradient such that we can train for half the number of steps and, across scales, achieve the same final win-rate at a fraction of the compute time. Right: The trade-off is that increasing K causes models to drift more in terms of KL in order to achieve the same win-rate.
> </details>


![](https://ai-paper-reviewer.com/2410.18252/charts_9_0.png)

> 🔼 The chart compares the performance of synchronous and asynchronous online DPO for training a large language model, showing that asynchronous learning achieves the same reward model score with lower KL divergence and 30% faster training time.
> <details>
> <summary>read the caption</summary>
> Figure 9: Large-Scale Asynchronous RLHF. Comparing synchronous and asynchronous online DPO for training an 8B general-purpose chatbot. Asynchronous learning achieves the same reward model score at a lower KL and 30% faster.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='6' style='font-size:18px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Learning Rate</td><td>3 x 10-6</td></tr><tr><td>Learning Rate Schedule</td><td>Linear</td></tr><tr><td>Generation Temperature</td><td>0.7</td></tr><tr><td>Batch Size (effective)</td><td>512</td></tr><tr><td>Max Token Length</td><td>1,024</td></tr><tr><td>Max Prompt Token Length</td><td>512</td></tr><tr><td>Response Length</td><td>128</td></tr><tr><td>Number of PPO Epochs</td><td>1</td></tr><tr><td>Total Episodes</td><td>131,072</td></tr><tr><td>KL penalty coefficient</td><td>0.05</td></tr><tr><td>Penalty Reward Value for Completions Without an EOS Token</td><td>-1.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the win rate and perplexity scores achieved by different sized language models after supervised fine-tuning, but before undergoing reinforcement learning from human feedback.
> <details>
> <summary>read the caption</summary>
> Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Model</td><td>Meta-Llama-3.1-8B</td></tr><tr><td>Max Sequence Length</td><td>4,096</td></tr><tr><td>Batch Size (effective)</td><td>128</td></tr><tr><td>Learning Rate</td><td>5.0 x 10-6</td></tr><tr><td>Learning Rate Schedule</td><td>Linear</td></tr><tr><td>Learning Rate Warmup Ratio</td><td>0.03</td></tr><tr><td>Learning Rate Weight Decay</td><td>0.0</td></tr><tr><td>Number of Epochs</td><td>2</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the win rate and perplexity scores achieved by three different sized language models after undergoing supervised fine-tuning, prior to reinforcement learning from human feedback (RLHF).
> <details>
> <summary>read the caption</summary>
> Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Model</td><td>The Trained No Robot SFT Checkpoint</td></tr><tr><td>Learning Rate</td><td>3 x 10-6</td></tr><tr><td>Learning Rate Schedule</td><td>Linear</td></tr><tr><td>Batch Size (effective)</td><td>256</td></tr><tr><td>Max Sequence Length</td><td>1,024</td></tr><tr><td>Number of Epochs</td><td>1</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the win rate and perplexity scores achieved by three different sized models (410m, 1B, and 2.8B) after supervised fine-tuning, before reinforcement learning from human feedback (RLHF) is applied.
> <details>
> <summary>read the caption</summary>
> Table 1: The win-rate and perplexity of models after supervised finetuning, before RLHF training
> </details>

{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Model</td><td>The Trained No Robot SFT Checkpoint</td></tr><tr><td>Reward Model</td><td>The Trained RM Checkpoint</td></tr><tr><td>Learning Rate</td><td>8 x 10-7</td></tr><tr><td>Learning Rate Schedule</td><td>Linear</td></tr><tr><td>Generation Temperature</td><td>0.7</td></tr><tr><td>Batch Size (effective)</td><td>256</td></tr><tr><td>Max Token Length</td><td>1,024</td></tr><tr><td>Max Prompt Token Length</td><td>512</td></tr><tr><td>Number of Epochs</td><td>1</td></tr><tr><td>Total Episodes</td><td>100,000</td></tr><tr><td>Beta (DPO coefficient)</td><td>0.03</td></tr><tr><td>Response Length</td><td>1,024</td></tr><tr><td>Penalty Reward Value for Completions</td><td></td></tr><tr><td>Without an EOS Token</td><td>-10.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the win rate and average response sequence length achieved by different models on the No Robots dataset, comparing the SFT model, synchronous online DPO, asynchronous online DPO, and human performance.
> <details>
> <summary>read the caption</summary>
> Table 6: The trained models’ GPT-4 win rate against the human-written responses on the test split of the No Robots dataset (Rajani et al., 2023)
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td>Model</td><td>Win Rate</td><td>Average Response Sequence Length</td></tr><tr><td>SFT</td><td>31.80%</td><td>198.40</td></tr><tr><td>Async Online DPO</td><td>57.20%</td><td>290.55</td></tr><tr><td>Sync Online DPO</td><td>57.20%</td><td>286.21</td></tr><tr><td>Human</td><td>N/A</td><td>179.726</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the win rate and average response sequence length for the SFT model, asynchronous online DPO, synchronous online DPO and human-written responses on the test split of the No Robots dataset.
> <details>
> <summary>read the caption</summary>
> Table 6: The trained models’ GPT-4 win rate against the human-written responses on the test split of the No Robots dataset (Rajani et al., 2023)
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18252/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18252/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}