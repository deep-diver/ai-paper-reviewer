---
title: "TP-Eval: Tap Multimodal LLMs' Potential in Evaluation by Customizing Prompts"
summary: "Current Multimodal Large Language Model (MLLM) evaluation benchmarks are flawed due to prompt sensitivity, leading to underestimation of model performance.  This paper introduces TP-Eval, a novel eval....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

Current Multimodal Large Language Model (MLLM) evaluation benchmarks are flawed due to prompt sensitivity, leading to underestimation of model performance.  This paper introduces TP-Eval, a novel evaluation framework that customizes prompts for each model using automatic prompt optimization, thereby mitigating bias and revealing models' true potential. Experiments demonstrate the effectiveness of this approach.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18071" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper is important because it identifies and addresses a critical weakness in current Multimodal Large Language Model (MLLM) evaluation benchmarks: prompt sensitivity.  It introduces a novel framework, TP-Eval, to mitigate evaluation bias and unlock models' true potential by customizing prompts.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLM evaluation benchmarks suffer from prompt sensitivity, leading to underestimation of model capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TP-Eval, a new evaluation framework, uses automatic prompt optimization to customize prompts for each model, reducing bias and improving accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate TP-Eval's effectiveness in uncovering models' true capabilities and mitigating underestimation. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: (a) shows underestimation caused by unsuitable prompts in MMT-Bench, (b) shows our proposed evaluation framework resolving this by customizing prompts.")





{{< table-caption caption="🔽 Similar prompt changes have different effects on two models for helmet anomaly detection task in MMT-Bench." >}}
| Prompt | LLaVA | DeepSeek |
| --- | --- | --- |
| Is the person in the picture wearing a helmet? | 0.65 | 0.79 |
| Evaluate if the individual in the picture wearing adequate headgear that provides safety and visibility to minimize interpretation ambiguity. Is the individual in the picture wearing an adequate headgear | 0.88 | 0.61 |
| that provides safety and is visible to minimize interpretation ambiguity? | 0.69 | 0.83 |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Overall result for MMT-S. All three models exhibited significant performance improvements across a substantial number of tasks following prompt customization." >}}
| Model | Original Score | TP-Eval Score | #Improved Task | Ratio |
| --- | --- | --- | --- | --- |
| LLaVA-1.5-7B | 50.4 | 54.4 | 32 | 25.1% |
| DeepSeek-VL-7B | 55.2 | 57.3 | 21 | 23.3% |
| Mini-Intern VL-Chat-4B-V1-5 | 54.6 | 56.9 | 16 | 40.4% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Similar prompt changes have different effects on two models for helmet anomaly detection task in MMT-Bench." >}}
| Task name | Original prompt | Zero-shot | Few-shot |
| --- | --- | --- | --- |
| helmet anomaly detection | 0.65 | 0.86 | 0.92 |
| artwork emotion recognition | 0.3 | 0.33 | 0.41 |
| spot similarity | 0.23 | 0.42 | 0.52 |
{{< /table-caption >}}


</details>

------

