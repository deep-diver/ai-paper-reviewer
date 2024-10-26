---
title: "LOGO -- Long cOntext aliGnment via efficient preference Optimization"
summary: "LOGO is a novel training strategy that improves the alignment of long-context models with human preferences by using preference optimization and overcoming GPU memory limitations through a reference-f....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

LOGO is a novel training strategy that improves the alignment of long-context models with human preferences by using preference optimization and overcoming GPU memory limitations through a reference-free approach and a positional index synthesis method.  Experiments show that LOGO enhances generation performance in various tasks without sacrificing performance on other tasks, offering an efficient method for enhancing long-context capabilities of LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18533" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces LOGO, a novel training strategy that uses preference optimization to improve the alignment of long-context models (LCMs) with human preferences.  LOGO addresses the limitations of existing methods by employing a reference-free preference optimization strategy and a positional index synthesis method to overcome GPU memory constraints.  Experiments demonstrate LOGO's effectiveness in enhancing the generation capabilities of LCMs while preserving their performance on other tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LOGO, a new training strategy for long-context models (LCMs), significantly improves their generation capabilities while maintaining performance on other tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LOGO uses preference optimization to align LCMs with human preferences, addressing the issue of misaligned responses like hallucinations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LOGO overcomes GPU memory limitations through a reference-free approach and positional index synthesis, enabling efficient training on relatively limited resources. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_5_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")

{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
| Models | S-Doc QA | M-Doc QA | Summ | Few-shot | Synthetic | Avg. |
| --- | --- | --- | --- | --- | --- | --- |
| GPT-3.5-Turbo-16K | 39.8 | 38.7 | 26.5 | 67.1 | 37.8 | 42.0 |
| LongChat-v1.5-7B-32k | 28.7 | 20.6 | 26.7 | 60.0 | 15.8 | 30.4 |
| LLama-3.1-8B-Instruct-128K | 23.9 | 15.8 | 28.9 | 69.8 | 57.5 | 39.2 |
| Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) |
| Llama-3-8B-Instruct-8K | 39.3 | 36.2 | 24.8 | 63.5 | 39.9 | 40.7 |
| + YaRN-64K+ | 38.0 | 36.6 | 27.4 | 61.7 | 40.9 | 40.9 |
| + RandPOS-64K | 32.5 | 30.5 | 26.5 | 61.3 | 33.4 | 36.8 |
| + LOGO-64K | 39.8 | 36.7 | 28.8 | 65.4 | 49.0 | 43.9 |
| Llama-2-7B-Chat-4K | 24.9 | 22.6 | 24.7 | 60.0 | 5.9 | 27.6 |
| + LOGO-32K | 26.7 | 23.3 | 26.3 | 63.1 | 11.1 | 30.1 |
| Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) |
| Llama-3-8B-Instruct-80K | 43.0 | 39.8 | 22.2 | 64.3 | 46.3 | 42.3 |
| + Instruct Tuning (Full) | 38.8 | 35.0 | 24.6 | 65.9 | 44.5 | 41.8 |
| + Instruct Tuning (Partial) | 39.3 | 36.2 | 26.8 | 63.5 | 48.0 | 42.8 |
| + LOGO-80K | 44.0 | 41.2 | 28.1 | 68.6 | 53.0 | 47.0 |
| Llama-2-7B-Instruct-80K | 26.9 | 23.8 | 21.3 | 65.0 | 7.9 | 29.0 |
| + LOGO-80K | 33.6 | 28.0 | 29.4 | 65.1 | 24.5 | 36.1 |
| Mistral-Instruct-7B- V0.2-32K | 31.7 | 30.6 | 16.7 | 58.4 | 17.9 | 31.1 |
| + LOGO-32K | 38.3 | 37.6 | 26.1 | 67.0 | 31.5 | 40.1 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_17_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")

![](figures/figures_18_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
{{< /table-caption >}}


</details>

------

