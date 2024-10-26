---
title: "Unleashing Reasoning Capability of LLMs via Scalable Question Synthesis from Scratch"
summary: "ScaleQuest is a novel data synthesis method that uses small open-source LLMs to create a large, high-quality mathematical reasoning dataset.  This dataset significantly improves the performance of mai....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

ScaleQuest is a novel data synthesis method that uses small open-source LLMs to create a large, high-quality mathematical reasoning dataset.  This dataset significantly improves the performance of mainstream open-source LLMs, surpassing even some closed-source models, and offers a scalable, cost-effective solution for training data generation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18693" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper is important because it introduces ScaleQuest, a novel and scalable method for synthesizing high-quality mathematical reasoning datasets using only small, open-source language models. This addresses the critical need for large-scale, affordable training data to improve the reasoning capabilities of LLMs, especially within the open-source community.  The resulting dataset significantly boosts the performance of several open-source models, even surpassing some proprietary models.  This work pushes the boundaries of LLM training data creation and makes significant advancements in open-source LLM development.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ScaleQuest synthesizes high-quality mathematical reasoning datasets from scratch using small open-source language models, circumventing the need for expensive large language models and costly seed data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The resulting 1 million question-answer dataset significantly improves the performance of various open-source LLMs on math-related benchmarks, even outperforming proprietary models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ScaleQuest's approach demonstrates scalability and cost-effectiveness, making high-quality training data accessible to the open-source community and potentially accelerating LLM development. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_3_0.png "🔼 Figure 2: Overview of our ScaleQuest method.")

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
| Model | Synthesis Model | GSM8K | MATH | College Math | Olympiad Bench | Average |
| --- | --- | --- | --- | --- | --- | --- |
| Teacher Models in Data Synthesis | Teacher Models in Data Synthesis | Teacher Models in Data Synthesis | Teacher Models in Data Synthesis | Teacher Models in Data Synthesis | Teacher Models in Data Synthesis | Teacher Models in Data Synthesis |
| GPT-4-0314 | - | 94.7 | 52.6 | 24.4 | - | - |
| GPT-4-Turbo-24-04-09 | - | 94.5 | 73.4 | - | - | - |
| GPT-4o-2024-08-06 | - | 92.9 | 81.1 | 50.2 | 43.3 | 66.9 |
| DeepSeekMath-7B-RL | - | 88.2 | 52.4 | 41.4 | 19.0 | 49.3 |
| Qwen2-Math-7B-Instruct | - | 89.5 | 73.1 | 50.5 | 37.8 | 62.7 |
| General Base Model | General Base Model | General Base Model | General Base Model | General Base Model | General Base Model | General Base Model |
| Mistral-7B- WizardMath | GPT-4 | 81.9 | 33.3 | 21.5 | 8.6 | 36.3 |
| Mistral-7B-MetaMath | GPT-3.5 | 77.7 | 28.2 | 19.1 | 5.8 | 32.7 |
| Mistral-7B-MMIQC | GPT-4 | 75.7 | 36.3 | 24.8 | 10.8 | 36.9 |
| Mistral-7B-MathScale | GPT-3.5 | 74.8 | 35.2 | 21.8 | - | - |
| Mistral-7B-KPMath | GPT-4 | 82.1 | 46.8 | - | - | - |
| Mistral-7B-DART-Math | DSMath-7B-RL | 81.1 | 45.5 | 29.4 | 14.7 | 42.7 |
| Mistral-7B-NuminaMath | GPT-4o | 82.1 | 49.4 | 33.8 | 19.4 | 46.2 |
| Mistral-7B-ScaleQuest | Qwen2-Math-7B-Ins | 88.5 | 62.9 | 43.5 | 26.8 | 55.4 |
| Llama3-8B-MetaMath | GPT-3.5 | 77.3 | 32.5 | 20.6 | 5.5 | 34.0 |
| Llama3-8B-MMIQC | GPT-4 | 77.6 | 39.5 | 29.5 | 9.6 | 39.1 |
| Llama3-8B-DART-Math | , DSMath-7B-RL | 81.1 | 46.6 | 28.8 | 14.5 | 42.8 |
| Llama3-8B-NuminaMath | GPT-4o | 77.2 | 50.7 | 33.2 | 17.8 | 44.7 |
| Llama3-8B-ScaleQuest | Qwen2-Math-7B-Ins | 87.9 | 64.4 | 42.8 | 25.3 | 55.1 |
| Math-Specialized Base Model | Math-Specialized Base Model | Math-Specialized Base Model | Math-Specialized Base Model | Math-Specialized Base Model | Math-Specialized Base Model | Math-Specialized Base Model |
| DeepSeekMath-7B-Instruct | - | 82.7 | 46.9 | 37.1 | 14.2 | 45.2 |
| DeepSeekMath-7B-MMIQC | GPT-4 | 79.0 | 45.3 | 35.3 | 13.0 | 43.2 |
| DeepSeekMath-7B-KPMath-Plus | GPT-4 | 83.9 | 48.8 | - | - | - |
| DeepSeekMath-7B-DART-Math | DSMath-7B-RL | 86.8 | 53.6 | 40.7 | 21.7 | 50.7 |
| DeepSeekMath-7B-Nurnina-Math | GPT-4o | 75.4 | 55.2 | 36.9 | 19.9 | 46.9 |
| DeepSeekMath-7B-ScaleQuest | Qwen2-Math-7B-Ins | 89.5 | 66.6 | 47.7 | 29.9 | 58.4 |
| Qwen2-Math-7B-MetaMath | GPT-3.5 | 83.9 | 49.5 | 39.9 | 17.9 | 47.8 |
| Qwen2-Math-7B-DART-Math | DSMath-7B-RL | 88.6 | 58.8 | 45.4 | 23.1 | 54.0 |
| Qwen2-Math-7B-Numina-Math | GPT-4o | 84.6 | 65.6 | 45.5 | 33.6 | 57.3 |
| Qwen2-Math-7B-ScaleQuest | Qwen2-Math-7B-Ins | 89.7 | 73.4 | 50.0 | 38.5 | 62.9 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_15_0.png "🔼 Figure 2: Overview of our ScaleQuest method.")

![](figures/figures_18_0.png "🔼 Figure 1: Left: Results of different models on MATH, where -ScaleQuest denotes ours. Right: Results of Llama3-8B fine-tuned on publicly available datasets constructed by different methods.")

![](figures/figures_20_0.png "🔼 Figure 1: Left: Results of different models on MATH, where -ScaleQuest denotes ours. Right: Results of Llama3-8B fine-tuned on publicly available datasets constructed by different methods.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Main results on four mathematical reasoning benchmarks. Bold means the best score within the respective base model. The baselines use different synthesis models, such as GPT-4, GPT-4-Turbo, GPT-40, DeepSeekMath, and Qwen2-Math. If multiple models are used, only the latest released one is marked. More details concerning these datasets are shown in Figure 5." >}}
{{< /table-caption >}}


</details>

------

