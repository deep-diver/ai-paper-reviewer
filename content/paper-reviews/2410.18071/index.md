---
title: "TP-Eval: Tap Multimodal LLMs' Potential in Evaluation by Customizing Prompts"
summary: "TP-Eval unveils the hidden potential of MLLMs by customizing prompts to mitigate evaluation bias caused by prompt sensitivity, leading to a more accurate assessment of model capabilities."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", "🤗 24-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

Many current methods for evaluating Multimodal Large Language Models (MLLMs) are flawed because small changes to the way questions are phrased (the 'prompt') can significantly impact the results.  This paper points out this "prompt sensitivity" problem.  It then introduces TP-Eval, a new evaluation system that solves this by automatically creating customized prompts for each model.  The idea is that different models respond better to different question styles. By tailoring the prompts, TP-Eval provides a more accurate and fair way to compare how well different MLLMs perform. Experiments show TP-Eval is successful at uncovering models' true abilities, providing more reliable benchmark scores and highlighting the importance of prompt engineering in MLLM evaluation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18071" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

{{< button href="https://huggingface.co/papers/2410.18071" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on multimodal large language models (MLLMs). It highlights a critical issue of prompt sensitivity in current MLLM benchmarks, which often leads to underestimation of model capabilities. The proposed TP-Eval framework offers a novel solution by customizing prompts for different models, leading to more accurate and reliable evaluations. This opens new avenues for research in MLLM evaluation, paving the way for more comprehensive and robust benchmarks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLM benchmarks suffer from prompt sensitivity, leading to underestimation of model capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TP-Eval, a novel evaluation framework, addresses this by customizing prompts for individual models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate TP-Eval's effectiveness in uncovering models' true potential and mitigating evaluation bias. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 Figure 1 illustrates the prompt sensitivity problem in existing MLLM benchmarks and the proposed TP-Eval framework that addresses this by customizing prompts for different models.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) shows underestimation caused by unsuitable prompts in MMT-Bench, (b) shows our proposed evaluation framework resolving this by customizing prompts.
> </details>





![](charts/charts_7_0.png)

> 🔼 The chart displays the accuracy improvement percentage for three different models across various tasks in the MMT-S benchmark after prompt optimization.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results of different models on MMT-S (L2-category). Accuracy improvement is calculated by accuracy using the optimized prompt divided by accuracy using the original prompt. Three models showed varying improvement across different task types, while performance gains differ between models, highlighting the underestimation and bias introduced by original prompts and the effectiveness of our method.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Prompt</td><td>LLaVA</td><td>DeepSeek</td></tr><tr><td>Is the person in the picture wearing a helmet?</td><td>0.65</td><td>0.79</td></tr><tr><td>Evaluate if the individual in the picture wearing adequate headgear that provides safety and visibility to minimize interpretation ambiguity. Is the individual in the picture wearing an adequate headgear</td><td>0.88</td><td>0.61</td></tr><tr><td>that provides safety and is visible to minimize interpretation ambiguity?</td><td>0.69</td><td>0.83</td></tr></table>{{< /table-caption >}}

> 🔼 The table shows how similar prompt changes yield different accuracy results for two different models (LLaVA and DeepSeek) on the same task within the MMT-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Similar prompt changes have different effects on two models for helmet anomaly detection task in MMT-Bench.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_8_0.png "🔼 Figure 4: Overall performance with different prompt methods on MMMU with LLaVA. In most cases, the results after optimization surpass those achieved with the initial prompts, and they generally outperform the original questions as well.")

> 🔼 The chart compares the overall performance of LLaVA on MMMU using original questions, initial prefix prompts, and optimized prefix prompts, showing improved accuracy with optimized prompts across different disciplines.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overall performance with different prompt methods on MMMU with LLaVA. In most cases, the results after optimization surpass those achieved with the initial prompts, and they generally outperform the original questions as well.
> </details>


![](charts/charts_8_1.png "🔼 Figure 5: Result of applying optimized prompts to other models. Applying customized prompts from one model to another yields performance changes that differ from each model’s inherent characteristics.")

> 🔼 Figure 5 is a heatmap showing the performance changes when applying prompts optimized for one model to other models, highlighting the model-specific nature of optimal prompts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Result of applying optimized prompts to other models. Applying customized prompts from one model to another yields performance changes that differ from each model’s inherent characteristics.
> </details>


![](charts/charts_9_0.png "🔼 Figure 6: Performance on whether to use introspection or not.")

> 🔼 The chart compares the performance of three different prompt optimization methods (original, no introspection, and the proposed method) on three tasks from the MMT-S benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance on whether to use introspection or not.
> </details>


![](charts/charts_9_1.png "🔼 Figure 7: Influence of re-ranking. Both excessively high and low a* can lead to a reduction in performance, and each model achieves optimal performance with a* ∈ [0.5, 0.6].")

> 🔼 The chart displays the effect of the re-ranking parameter (a*) on the accuracy of three different MLLMs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Influence of re-ranking. Both excessively high and low a* can lead to a reduction in performance, and each model achieves optimal performance with a* ∈ [0.5, 0.6].
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:20px'><tr><td>Model</td><td>Original Score</td><td>TP-Eval Score</td><td>#Improved Task</td><td>Ratio</td></tr><tr><td>LLaVA-1.5-7B</td><td>50.4</td><td>54.4</td><td>32</td><td>25.1%</td></tr><tr><td>DeepSeek-VL-7B</td><td>55.2</td><td>57.3</td><td>21</td><td>23.3%</td></tr><tr><td>Mini-Intern VL-Chat-4B-V1-5</td><td>54.6</td><td>56.9</td><td>16</td><td>40.4%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the overall performance of three models on the MMT-S benchmark before and after prompt customization, showing significant improvements across many tasks.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Task name</td><td>Original prompt</td><td>Zero-shot</td><td>Few-shot</td></tr><tr><td>helmet anomaly detection</td><td>0.65</td><td>0.86</td><td>0.92</td></tr><tr><td>artwork emotion recognition</td><td>0.3</td><td>0.33</td><td>0.41</td></tr><tr><td>spot similarity</td><td>0.23</td><td>0.42</td><td>0.52</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 shows the performance of zero-shot prompt optimization using in-context learning on three tasks from MMT-S for LLaVA, comparing the original prompt, zero-shot optimized prompt and few-shot optimized prompt.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}