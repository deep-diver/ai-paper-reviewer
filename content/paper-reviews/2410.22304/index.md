---
title: "Flow-DPO: Improving LLM Mathematical Reasoning through Online Multi-Agent Learning"
summary: "Flow-DPO: Online multi-agent learning boosts LLM mathematical reasoning by collaboratively generating detailed, high-quality reasoning traces, surpassing single-model approaches."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Microsoft Research",]
showSummary: true
date: 2024-10-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.22304 {{< /keyword >}}
{{< keyword icon="writer" >}} Yihe Deng et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.22304" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.22304" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Current methods for training LLMs on mathematical reasoning often struggle to generate detailed and accurate reasoning traces.  Human-generated traces are expensive and often insufficient, while simply using model-generated traces leads to subpar performance.  This paper tackles this problem by focusing on generating better reasoning traces. 

The proposed solution, Flow-DPO, uses an online multi-agent learning approach.  Multiple LLMs work together iteratively to build a solution, with their performance constantly improved through online DPO learning and rollouts.  This method outperforms existing single-model approaches, demonstrating the effectiveness of collaborative learning for generating high-quality reasoning traces and consequently improving LLMs' mathematical reasoning abilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} **Flow-DPO uses online multi-agent learning to generate superior reasoning traces for LLMs in mathematical tasks.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} **Direct Preference Optimization (DPO) with rollouts enhances the quality of the generated traces.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} **The method significantly improves LLM performance in mathematical reasoning compared to single-model baselines.** {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial for researchers working on Large Language Models (LLMs) and mathematical reasoning.**  It introduces a novel online multi-agent learning approach, Flow-DPO, that significantly improves the generation of high-quality reasoning traces. This addresses a key challenge in LLM fine-tuning for mathematical tasks, offering a more efficient and effective alternative to existing methods. The findings open new avenues for enhancing LLMs' reasoning capabilities and have implications for various AI applications.

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.22304/figures_3_0.png)

> 🔼 Figure 2 illustrates the online DPO learning process with rollouts, showing how random rollouts at each output node generate DPO pairs for training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the DPO training with rollouts. At each node of the initial generation, we do a random rollout that is different from the original node and continue generation to a final answer. A pair that leads to different answers (correct and incorrect) is considered a DPO training data.
> </details>





![](https://ai-paper-reviewer.com/2410.22304/charts_4_0.png)

> 🔼 The chart displays the progressive validation accuracy of the Flow during online DPO training with and without rollouts for Llama-3-Instruct and Phi-3-Medium models on the MetaMath dataset, comparing it to the zero-shot performance of a single LLM.
> <details>
> <summary>read the caption</summary>
> Figure 3: Progressive validation accuracy of Llama-3-Instruct on MetaMath. Figure 4: Progressive validation accuracy of Phi-3-Medium on MetaMath.
> </details>





{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>GSM8K</td><td>MATH</td></tr><tr><td rowspan="4">Llama-3-Instruct (8B)</td><td>0-shot</td><td>48.9</td><td>22.3</td></tr><tr><td>SFT (ground-truth)</td><td>67.2</td><td>25.1</td></tr><tr><td>SFT (self-generated)</td><td>68.8</td><td>24.2</td></tr><tr><td>SFT (Flow-generated)</td><td>71.3</td><td>27.8</td></tr><tr><td rowspan="4">Phi-3-Medium (14B)</td><td>0-shot</td><td>-</td><td>35.4</td></tr><tr><td>SFT (ground-truth)</td><td>-</td><td>36.3</td></tr><tr><td>SFT (self-generated)</td><td>-</td><td>36.5</td></tr><tr><td>SFT (Flow-generated)</td><td>-</td><td>38.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the accuracy of three different fine-tuning methods (ground-truth, self-generated, and Flow-generated traces) on two datasets (GSM8K and MATH) for two different LLMs.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results of comparing the quality of traces used for SFT. We report the accuracy (%) for each model fine-tuned on an identical set of prompts, but with varying answer sources. For Phi-3, we does not include GSM8K due to its already optimized performance on the dataset.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td>Learning rate</td><td>5e-6</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Global batch size</td><td>32</td></tr><tr><td>DPO coefficient B</td><td>1.0</td></tr><tr><td>Gradient clipping</td><td>1.0</td></tr><tr><td>lora_r</td><td>8</td></tr><tr><td>lora_alpha</td><td>8</td></tr><tr><td>lora_dropout</td><td>0.05</td></tr><tr><td>lora_ target</td><td>all</td></tr><tr><td>Maximum steps (chunks)</td><td>6</td></tr><tr><td>Chunk size</td><td>160</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the hyperparameters used for online direct preference optimization (DPO) fine-tuning in the Flow-DPO model.
> <details>
> <summary>read the caption</summary>
> Table 2: Online DPO Fine-tuning hyperparameters.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Learning rate</td><td>2e-4</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Global batch size</td><td>16</td></tr><tr><td>Gradient clipping</td><td>1.0</td></tr><tr><td>gradient_accumulation_steps</td><td>2</td></tr><tr><td>warmup_ratio</td><td>0.1</td></tr><tr><td>lora_r</td><td>16</td></tr><tr><td>lora_alpha</td><td>16</td></tr><tr><td>lora_dropout</td><td>0.05</td></tr><tr><td>lora_target</td><td>all</td></tr><tr><td>Training epochs</td><td>3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the hyperparameters used in the Compile (SFT) step of the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 3: Comiple (SFT) hyperparameters.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.22304/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22304/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}