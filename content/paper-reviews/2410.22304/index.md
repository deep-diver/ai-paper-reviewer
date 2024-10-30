---
title: "Flow-DPO: Improving LLM Mathematical Reasoning through Online Multi-Agent Learning"
summary: "Flow-DPO improves LLM mathematical reasoning by using online multi-agent learning and direct preference optimization to generate high-quality reasoning traces, surpassing existing methods in performan..."
categories: ["AI Generated"]
tags: ["🔖 24-10-29", "🤗 24-10-30"]
showSummary: true
date: 2024-10-29
draft: false
---

{{< keyword >}} 2410.22304 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current LLMs struggle to generate detailed and accurate mathematical reasoning traces, hindering their performance in complex tasks.  Existing methods often rely on expensive human annotations or lack the granularity to capture the nuances of mathematical problem-solving. 



Flow-DPO offers a solution by employing an incremental output production flow with two collaborative LLMs: an Answer LLM generating solution chunks and a Stop LLM determining completion. This flow is trained using online Direct Preference Optimization (DPO) with rollouts, creating high-quality reasoning traces for fine-tuning. **This approach significantly improves LLM performance, is cost-effective, and provides better flexibility than previous methods.**

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.22304" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.22304" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it presents a novel approach to enhance LLMs' mathematical reasoning abilities.  **The method uses online multi-agent learning and direct preference optimization to generate high-quality reasoning traces**, significantly improving the model's performance and offering a cost-effective alternative to human annotation.  This opens avenues for research in more efficient LLM training and advancement of mathematical reasoning capabilities in AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Flow-DPO uses online multi-agent learning to collaboratively construct solutions, improving reasoning trace quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Online DPO learning with rollouts efficiently trains the model, updating it in real-time and improving performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method outperforms existing techniques in generating high-quality reasoning traces for LLM fine-tuning, even with fewer training resources. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.22304/figures_3_0.png)

> 🔼 The figure illustrates the online DPO learning process with rollouts, showing how random rollouts at each output node generate DPO pairs for training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the DPO training with rollouts. At each node of the initial generation, we do a random rollout that is different from the original node and continue generation to a final answer. A pair that leads to different answers (correct and incorrect) is considered a DPO training data.
> </details>





![](https://ai-paper-reviewer.com/2410.22304/charts_4_0.png)

> 🔼 The chart displays the progressive validation accuracy of the Flow during online DPO training with rollouts for Llama-3-Instruct and Phi-3-Medium models on the MetaMath dataset, comparing performance with and without training and zero-shot model performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Progressive validation accuracy of Llama-3-Instruct on MetaMath. Figure 4: Progressive validation accuracy of Phi-3-Medium on MetaMath.
> </details>





{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>GSM8K</td><td>MATH</td></tr><tr><td rowspan="4">Llama-3-Instruct (8B)</td><td>0-shot</td><td>48.9</td><td>22.3</td></tr><tr><td>SFT (ground-truth)</td><td>67.2</td><td>25.1</td></tr><tr><td>SFT (self-generated)</td><td>68.8</td><td>24.2</td></tr><tr><td>SFT (Flow-generated)</td><td>71.3</td><td>27.8</td></tr><tr><td rowspan="4">Phi-3-Medium (14B)</td><td>0-shot</td><td>-</td><td>35.4</td></tr><tr><td>SFT (ground-truth)</td><td>-</td><td>36.3</td></tr><tr><td>SFT (self-generated)</td><td>-</td><td>36.5</td></tr><tr><td>SFT (Flow-generated)</td><td>-</td><td>38.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the accuracy achieved by different fine-tuning methods (ground-truth, self-generated, and Flow-generated traces) on the GSM8K and MATH datasets for Llama-3-Instruct (8B) and Phi-3-Medium (14B) language models.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results of comparing the quality of traces used for SFT. We report the accuracy (%) for each model fine-tuned on an identical set of prompts, but with varying answer sources. For Phi-3, we does not include GSM8K due to its already optimized performance on the dataset.
> </details>



### More visual insights




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