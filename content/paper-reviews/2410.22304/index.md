---
title: "Flow-DPO: Improving LLM Mathematical Reasoning through Online Multi-Agent Learning"
summary: "Flow-DPO boosts LLM mathematical reasoning by using online multi-agent learning to generate detailed, accurate reasoning traces."
categories: ["AI Generated", "Hugging Face Daily Papers"]
tags: ["🔖 24-10-29", "🤗 24-10-30", "🏢 University of California, Los Angeles",]
showSummary: true
date: 2024-10-29
draft: false
---

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.22304 {{< /keyword >}}
{{< keyword icon="writer" >}} Yihe Deng et el. {{< /keyword >}}
{{< /keywordList >}}

### TL;DR


{{< lead >}}

Current Large Language Models (LLMs) struggle to generate detailed and accurate mathematical reasoning steps, hindering their improvement.  Existing methods often rely on expensive human annotations or produce insufficiently informative traces. 



Flow-DPO tackles this by using an innovative online multi-agent learning system.  Multiple LLMs collaborate to iteratively build solutions, trained in real-time using Direct Preference Optimization (DPO) with rollouts. This method produces superior reasoning traces compared to traditional approaches, enhancing LLM performance and opening new avenues for LLM self-improvement and fine-tuning.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.22304" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.22304" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
**This paper is crucial for researchers working on large language models (LLMs) and mathematical reasoning.**  It introduces a novel online multi-agent learning approach that significantly improves the generation of high-quality reasoning traces, a critical challenge in LLM development.  The findings offer practical solutions and open avenues for further exploration in LLM fine-tuning and self-improvement strategies, potentially impacting numerous applications.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Flow-DPO, a novel online multi-agent learning method, improves LLM mathematical reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Incremental output production and online DPO with rollouts enhance reasoning trace quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach shows significant improvements in both quantitative and qualitative evaluations. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.22304/figures_3_0.png)

> 🔼 The figure illustrates the online DPO learning process with rollouts, showing how random rollouts are used to generate DPO pairs for training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the DPO training with rollouts. At each node of the initial generation, we do a random rollout that is different from the original node and continue generation to a final answer. A pair that leads to different answers (correct and incorrect) is considered a DPO training data.
> </details>





![](https://ai-paper-reviewer.com/2410.22304/charts_4_0.png)

> 🔼 The charts display the progressive validation accuracy of the Flow model with and without online DPO training, compared to the zero-shot performance of a single LLM, across different numbers of training samples for Llama-3-Instruct and Phi-3-Medium models on the MetaMath dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Progressive validation accuracy of Llama-3-Instruct on MetaMath. Figure 4: Progressive validation accuracy of Phi-3-Medium on MetaMath.
> </details>





{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>GSM8K</td><td>MATH</td></tr><tr><td rowspan="4">Llama-3-Instruct (8B)</td><td>0-shot</td><td>48.9</td><td>22.3</td></tr><tr><td>SFT (ground-truth)</td><td>67.2</td><td>25.1</td></tr><tr><td>SFT (self-generated)</td><td>68.8</td><td>24.2</td></tr><tr><td>SFT (Flow-generated)</td><td>71.3</td><td>27.8</td></tr><tr><td rowspan="4">Phi-3-Medium (14B)</td><td>0-shot</td><td>-</td><td>35.4</td></tr><tr><td>SFT (ground-truth)</td><td>-</td><td>36.3</td></tr><tr><td>SFT (self-generated)</td><td>-</td><td>36.5</td></tr><tr><td>SFT (Flow-generated)</td><td>-</td><td>38.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the accuracy of different LLMs fine-tuned using different reasoning traces (ground-truth, self-generated, and Flow-generated) on GSM8K and MATH datasets.
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
> 🔼 This table presents the hyperparameters used during the online direct preference optimization (DPO) fine-tuning process.
> <details>
> <summary>read the caption</summary>
> Table 2: Online DPO Fine-tuning hyperparameters.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Learning rate</td><td>2e-4</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Global batch size</td><td>16</td></tr><tr><td>Gradient clipping</td><td>1.0</td></tr><tr><td>gradient_accumulation_steps</td><td>2</td></tr><tr><td>warmup_ratio</td><td>0.1</td></tr><tr><td>lora_r</td><td>16</td></tr><tr><td>lora_alpha</td><td>16</td></tr><tr><td>lora_dropout</td><td>0.05</td></tr><tr><td>lora_target</td><td>all</td></tr><tr><td>Training epochs</td><td>3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the hyperparameters used during the Compile (SFT) step of the proposed model.
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