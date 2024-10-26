---
title: "DeCoRe: Decoding by Contrasting Retrieval Heads to Mitigate Hallucinations"
summary: "To mitigate Large Language Model (LLM) hallucinations, DeCoRe contrasts outputs from a base LLM and one with masked retrieval heads (identified as crucial for factual recall), dynamically adjusting co....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

To mitigate Large Language Model (LLM) hallucinations, DeCoRe contrasts outputs from a base LLM and one with masked retrieval heads (identified as crucial for factual recall), dynamically adjusting contrast based on conditional entropy.  This training-free method substantially improves performance on tasks demanding high contextual faithfulness, such as summarization and open-book QA.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18860" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces DeCoRe, a decoding strategy that mitigates hallucinations in LLMs by contrasting the outputs of a base LLM and a masked LLM (with retrieval heads masked).  DeCoRe dynamically adjusts the contrast based on the conditional entropy of the base LLM's next-token distribution, thus enhancing contextual faithfulness and factual consistency. Experiments across summarization, instruction following, and open-book question answering tasks show that DeCoRe significantly improves performance.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DeCoRe, a training-free decoding method, significantly reduces LLM hallucinations by contrasting the outputs of a base LLM and one with masked retrieval heads. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Masking retrieval heads induces hallucinations, and contrasting outputs guided by conditional entropy amplifies accurate information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DeCoRe improves contextual faithfulness and factual accuracy across multiple tasks, demonstrating broad effectiveness. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_2_0.png "🔼 Overview of the DeCoRe workflow. Given the same input, the base LLM (LLMbase) and the variant with masked retrieval heads (LLMmasked) predict the next token. An uncertainty estimation is applied to the base model's output using conditional entropy: higher conditional entropy increases the contrastive factor (a), penalising predictions that align with the LLMmasked. The final prediction is selected based on weighted contrastive decoding of the outputs from both models, leading to a more grounded response.")

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | ROUGE-L ↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Prompt Acc ↑ | Instruct Acc ↑ | EM ↑ | EM ↑ |
| Llama3-8b-Instruct | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| + ITI (Li et al., 2024b) | 13.25 | 59.96 | 34.35 | 62.65 | 58.96 | 52.31 | 63.19 | 56.16 | 51.08 |
| + CAD (Shi et al., 2024) | 18.82 | 67.20 | 67.16 | - | - | - | - | 69.83 | 74.21 |
| + DoLA (low) (Chuang et al., 2023) | 19.82 | 67.19 | 47.21 | 65.27 | 63.69 | 69.69 | 78.18 | 69.68 | 60.77 |
| + DoLA (high) (Chuang et al., 2023) | 19.92 | 67.34 | 48.49 | 64.85 | 63.17 | 70.24 | 78.66 | 69.49 | 60.98 |
| + AD (Chen et al., 2024) | 19.79 | 67.31 | 48.49 | 65.38 | 64.28 | 67.65 | 76.26 | 68.93 | 60.51 |
| + DeCoRestatic | 19.87 | 67.83 | 64.07 | 69.53 | 69.20 | 69.13 | 78.06 | 70.62 | 64.43 |
| + DeCoReentropy | 19.45 | 67.69 | 66.10 | 74.14 | 74.87 | 68.39 | 76.38 | 70.66 | 66.08 |
| Llama3-70b-Instruct | 22.41 | 69.77 | 61.32 | 68.47 | 66.52 | 77.45 | 84.41 | 71.07 | 76.11 |
| + ITI (Li et al., 2024b) | 21.64 | 69.46 | 61.33 | 71.24 | 68.73 | 76.71 | 83.69 | 71.90 | 74.76 |
| + CD (Li et al., 2023) | 22.71 | 69.99 | 54.73 | 69.27 | 67.55 | 71.72 | 79.74 | 65.80 | 68.37 |
| + CAD (Shi et al., 2024) | 21.45 | 69.28 | 65.61 | - | - | - | - | 71.83 | 84.70 |
| + DoLA (low) (Chuang et al., 2023) | 22.46 | 69.80 | 61.11 | 67.99 | 65.93 | 77.08 | 84.29 | 71.07 | 75.98 |
| + DoLA (high) (Chuang et al., 2023) | 22.43 | 69.93 | 59.99 | 67.92 | 65.81 | 78.00 | 84.65 | 70.40 | 75.26 |
| + AD (Chen et al., 2024) | 22.49 | 69.91 | 60.57 | 67.51 | 66.44 | 76.89 | 84.41 | 71.15 | 74.02 |
| + DeCoRestatic | 21.94 | 69.35 | 64.88 | 71.96 | 71.41 | 78.56 | 84.89 | 72.51 | 79.06 |
| + DeCoReentropy | 21.93 | 69.40 | 65.49 | 74.07 | 73.65 | 78.56 | 84.89 | 72.66 | 79.79 |
| + DeCoReentropy-lite | 22.28 | 69.34 | 59.57 | 72.11 | 70.58 | 61.37 | 71.46 | 71.26 | 75.90 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_8_0.png "🔼 Correlation between the number of masked retrieval heads and performance of Llama3-8B-Instruct with DeCoReentropy on each task. The correlations are quantified by the Pearson Correlation Coefficient r for each plot. Detailed results are listed in Table 14 and Table 16.")

![](figures/figures_8_1.png "🔼 Correlation between the number of masked retrieval heads and performance of Llama3-8B-Instruct with DeCoReentropy on each task. The correlations are quantified by the Pearson Correlation Coefficient r for each plot. Detailed results are listed in Table 14 and Table 16.")

![](figures/figures_8_2.png "🔼 Correlation between the number of masked retrieval heads and performance of Llama3-8B-Instruct with DeCoReentropy on each task. The correlations are quantified by the Pearson Correlation Coefficient r for each plot. Detailed results are listed in Table 14 and Table 16.")

![](figures/figures_18_0.png "🔼 Overview of the DeCoRe workflow. Given the same input, the base LLM (LLMbase) and the variant with masked retrieval heads (LLMmasked) predict the next token. An uncertainty estimation is applied to the base model's output using conditional entropy: higher conditional entropy increases the contrastive factor (a), penalising predictions that align with the LLMmasked. The final prediction is selected based on weighted contrastive decoding of the outputs from both models, leading to a more grounded response.")

![](figures/figures_20_0.png "🔼 Correlation between the number of masked retrieval heads and performance of Llama3-8B-Instruct with DeCoReentropy on each task. The correlations are quantified by the Pearson Correlation Coefficient r for each plot. Detailed results are listed in Table 14 and Table 16.")

![](figures/figures_25_0.png "🔼 Correlation between the number of masked random heads and performance of Llama3-8B-Instruct with DeCoReentropy on each task. The correlations are quantified by the Pearson Correlation Coefficient r for each plot. Detailed results are listed in Table 14 and Table 16.")

![](figures/figures_35_0.png "🔼 Overview of the DeCoRe workflow. Given the same input, the base LLM (LLMbase) and the variant with masked retrieval heads (LLMmasked) predict the next token. An uncertainty estimation is applied to the base model's output using conditional entropy: higher conditional entropy increases the contrastive factor (a), penalising predictions that align with the LLMmasked. The final prediction is selected based on weighted contrastive decoding of the outputs from both models, leading to a more grounded response.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Performance comparison of Llama3-8B-Instruct with different number of masked retrieval heads on factuality evaluation tasks." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Performance of different models and decoding methods on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 9: Performance comparison of Llama3-8B-Instruct with different number of masked retrieval heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 10: Performance comparison of Llama3-8B-Instruct with different numbers of masked random heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Performance of different models and decoding methods on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 19: Performance comparison across different numbers of masked random heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 23: Performance of Llama3-8b-Instruct with DeCoRestatic on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Performance of Llama3-8b-Instruct with DeCoRestatic on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
{{< /table-caption >}}


</details>

------

