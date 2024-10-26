---
title: "DeCoRe: Decoding by Contrasting Retrieval Heads to Mitigate Hallucinations"
summary: "To mitigate Large Language Model (LLM) hallucinations, DeCoRe contrasts outputs from a base LLM and one with masked retrieval heads (identified as crucial for factual recall), dynamically adjusting co....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
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
| Model | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | TruthfulQA (Generation) | TruthfulQA (Generation) | TruthfulQA (Generation) | TruthfulQA (Generation) | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | MC1 ↑ | MC2 ↑ | MC3↑ | EM ↑ | EM↑ | %Truth ↑ | %Info ↑ | %T⌀I↑ | %Reject ↓ | EM ↑ |
| Llama3-8b-Instruct | 39.41 | 55.69 | 30.31 | 56.58 | 26.64 | 80.66 | 63.89 | 44.55 | 43.94 | 29.04 |
| + ITI (Li et al., 2024b) | 43.70 | 62.78 | 34.91 | 48.41 | 15.63 | 87.52 | 78.46 | 66.10 | 25.46 | 22.07 |
| + DoLA (low) (Chuang et al., 2023) | 39.05 | 55.65 | 30.06 | 56.63 | 26.58 | 80.66 | 62.91 | 43.70 | 45.04 | 29.15 |
| + DoLA (high) (Chuang et al., 2023) | 38.68 | 55.64 | 30.19 | 56.50 | 26.49 | 80.78 | 62.67 | 43.45 | 44.92 | 29.19 |
| + AD (Chen et al., 2024) | 31.21 | 55.30 | 28.28 | 54.93 | 26.38 | 80.42 | 63.40 | 43.82 | 43.82 | 28.32 |
| + DeCoRestatic | 38.68 | 55.74 | 29.80 | 56.93 | 26.86 | 80.78 | 67.93 | 48.71 | 41.74 | 29.42 |
| + DeCoReentropy | 38.43 | 55.86 | 30.95 | 56.40 | 26.88 | 78.95 | 74.05 | 53.00 | 38.68 | 28.96 |
| Llama3-70b-Instruct | 49.57 | 70.60 | 37.85 | 74.77 | 40.63 | 88.74 | 77.72 | 66.46 | 53.12 | 40.08 |
| + ITI (Li et al., 2024b) | 48.96 | 67.04 | 37.27 | 73.54 | 39.62 | 82.50 | 74.30 | 56.92 | 37.94 | 38.57 |
| + CD (Li et al., 2023) | 57.77 | 76.65 | 47.08 | 72.83 | 37.03 | 88.25 | 88.13 | 76.38 | 52.26 | 36.23 |
| + DoLA (low) (Chuang et al., 2023) | 49.45 | 70.58 | 37.75 | 74.74 | 40.65 | 88.74 | 77.60 | 66.34 | 52.88 | 40.08 |
| + DoLA (high) (Chuang et al., 2023) | 49.69 | 70.88 | 38.01 | 73.96 | 40.00 | 88.98 | 58.38 | 47.37 | 54.71 | 39.59 |
| + AD (Chen et al., 2024) | 42.23 | 67.56 | 35.37 | 74.14 | 40.53 | 87.39 | 67.20 | 54.59 | 49.33 | 40.23 |
| + DeCoRestatic | 51.29 | 72.02 | 40.24 | 74.79 | 40.74 | 88.25 | 62.91 | 51.16 | 54.96 | 40.41 |
| + DeCoReentropy | 53.98 | 73.44 | 42.55 | 74.76 | 40.58 | 89.23 | 59.73 | 49.11 | 56.79 | 40.45 |
| + DeCoReentropy-lite | 55.32 | 73.38 | 43.74 | 73.87 | 39.09 | 88.13 | 90.09 | 78.21 | 52.02 | 39.21 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- |
| Model | Closed Book ↑ | Open Book ↑ | Closed Book ↑ | Open Book ↑ |
| Llama3-8b-Instruct | 7.41 | 58.83 | 14.61 | 69.84 |
| + CAD | - | 57.88 | - | 73.02 |
| + ITI | 4.01 | 45.84 | 4.18 | 38.31 |
| + DoLA | 7.24 | 59.08 | 14.94 | 69.92 |
| + AD | 6.99 | 58.63 | 14.40 | 69.92 |
| + DeCoRestatic | 7.90 | 61.23 | 14.69 | 72.49 |
| + DeCoReentropy | 7.70 | 61.98 | 13.90 | 74.47 |
| Llama3-70b-Instruct + ITI | 11.79 | 68.56 | 20.15 | 74.43 |
| + CD | 10.92 | 66.61 | 17.17 | 71.70 |
| + CAD | - | 68.64 | - | 74.02 |
|  | 10.88 | 68.14 | 20.44 | 74.27 |
| + DoLA | 11.42 | 68.68 | 20.15 | 74.64 |
| + AD | 11.38 | 68.14 | 20.23 | 74.27 |
| + DeCoRestatic | 11.79 | 69.76 | 20.60 | 75.05 |
| + DeCoReentropy | 11.75 | 69.84 | 20.60 | 74.93 |
| + DeCoReentropy-lite | 11.13 | 69.34 | 18.87 | 73.36 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Retrieval Head ID | Meta-Llama-3-8B | Meta-Llama-3-8B-Instruct | Meta-Llama-3-70B-Instruct | Mistral-7B-Instruct-v0.3 | Qwen2-7B-Instruct |
| --- | --- | --- | --- | --- | --- |
| 1 | 0.9341 | 0.9447 | 0.9172 | 0.8741 | 0.7746 |
| 10 | 0.4666 | 0.4421 | 0.3844 | 0.3167 | 0.3487 |
| 20 | 0.2927 | 0.2743 | 0.1874 | 0.1951 | 0.1986 |
| 30 | 0.1347 | 0.1421 | 0.1310 | 0.1457 | 0.1243 |
| 40 | 0.1074 | 0.1131 | 0.1112 | 0.1115 | 0.1077 |
| 50 | 0.0881 | 0.0916 | 0.0914 | 0.0944 | 0.0843 |
| 60 | 0.0735 | 0.0751 | 0.0867 | 0.0852 | 0.0703 |
| 70 | 0.0623 | 0.0659 | 0.0814 | 0.0751 | 0.0620 |
| 80 | 0.0572 | 0.0604 | 0.0630 | 0.0704 | 0.0524 |
| 90 | 0.0491 | 0.0513 | 0.0571 | 0.0641 | 0.0412 |
| 100 | 0.0433 | 0.0452 | 0.0526 | 0.0538 | 0.0352 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | ROUGE-L↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Prompt Acc↑ | Instruct Acc↑ | EM ↑ | EM↑ |
| Llama3-8B-Instruct | 0 (Baseline) | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| Llama3-8B-Instruct | 10 | 20.51 | 67.33 | 36.56 | 66.76 | 65.89 | 62.66 | 72.90 | 64.26 | 42.92 |
| Llama3-8B-Instruct | 20 | 20.52 | 67.07 | 34.89 | 64.44 | 63.96 | 63.77 | 73.74 | 62.30 | 43.57 |
| Llama3-8B-Instruct | 30 | 20.21 | 66.49 | 29.70 | 65.92 | 64.12 | 61.74 | 72.54 | 63.24 | 46.48 |
| Llama3-8B-Instruct | 40 | 19.92 | 66.24 | 26.72 | 66.83 | 64.83 | 58.41 | 68.94 | 62.79 | 46.73 |
| Llama3-8B-Instruct | 50 | 20.05 | 66.47 | 25.97 | 68.08 | 67.07 | 55.08 | 66.91 | 62.49 | 44.77 |
| Llama3-8B-Instruct | 60 | 20.05 | 66.54 | 23.33 | 68.49 | 67.03 | 55.27 | 67.15 | 62.90 | 44.23 |
| Llama3-8B-Instruct | 70 | 19.42 | 66.14 | 24.55 | 67.88 | 65.89 | 56.01 | 68.23 | 63.01 | 46.97 |
| Llama3-8B-Instruct | 80 | 19.13 | 64.53 | 22.40 | 64.72 | 62.23 | 55.08 | 67.63 | 60.45 | 43.62 |
| Llama3-8B-Instruct | 90 | 19.46 | 64.39 | 21.12 | 63.77 | 61.28 | 54.16 | 66.55 | 57.97 | 40.77 |
| Llama3-8B-Instruct | 100 | 19.54 | 62.47 | 17.13 | 60.02 | 56.95 | 47.50 | 59.47 | 56.61 | 39.02 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | ROUGE-L ↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Prompt Acc ↑ | Instruct Acc ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | 0 (Baseline) | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| Llama3-8B-Instruct | 10 | 20.09 ±0.21 | 67.07 ±0.32 | 44.52 ±4.86 | 66.79 士2.11 | 65.16 士2.61 | 68.64 ±0.77 | 77.14 ±0.39 | 69.45 ±0.46 | 61.39 ±0.24 |
| Llama3-8B-Instruct | 20 | 20.00 ±0.15 | 66.80 ±0.46 | 40.77 士5.98 | 67.89 ±3.24 | 66.54 ±4.43 | 69.50 ±0.93 | 77.66 ±0.68 | 68.94 ±0.81 | 60.67 ±2.08 |
| Llama3-8B-Instruct | 30 | 19.87 ±0.18 | 66.61 ±0.89 | 36.65 ±11.64 | 66.88 士2.66 | 65.29 ±3.71 | 68.27 ±1.36 | 76.58 ±1.45 | 69.18 ±0.66 | 60.70 ±2.87 |
| Llama3-8B-Instruct | 40 | 19.63 ±0.09 | 66.55 ±1.12 | 35.09 ±14.85 | 66.29 ±2.05 | 63.83 ±3.39 | 67.59 ±1.34 | 75.86 ±1.20 | 68.78 ±1.19 | 57.19 ±6.92 |
| Llama3-8B-Instruct | 50 | 19.59 ±0.19 | 66.34 士1.23 | 32.25 ±14.71 | 67.59 士2.09 | 64.76 ±3.84 | 66.23 ±1.98 | 75.18 ±1.26 | 68.57 ±0.80 | 57.21 士5.62 |
| Llama3-8B-Instruct | 60 | 19.28 ±0.77 | 66.02 ±1.52 | 31.67 ±12.94 | 67.85 ±0.80 | 63.99 ±1.09 | 62.97 ±2.82 | 72.30 ±3.11 | 68.10 ±1.04 | 55.97 ±3.79 |
| Llama3-8B-Instruct | 70 | 19.48 ±0.53 | 65.81 士1.67 | 27.20 ±12.83 | 68.33 ±4.57 | 64.51 ±4.95 | 60.87 ±4.41 | 70.74 ±3.47 | 67.85 ±1.04 | 55.00 ±3.48 |
| Llama3-8B-Instruct | 80 | 18.96 ±0.94 | 64.92 ±0.94 | 26.02 ±13.42 | 69.66 ±6.45 | 66.40 ±7.16 | 56.87 ±4.16 | 66.79 士2.98 | 67.08 ±1.21 | 54.59 士5.23 |
| Llama3-8B-Instruct | 90 | 17.55 ±1.19 | 61.85 ±4.91 | 28.00 ±13.27 | 73.39 ±4.35 | 70.71 ±4.93 | 50.96 ±10.71 | 62.39 ±9.58 | 66.53 ±0.49 | 54.26 士5.17 |
| Llama3-8B-Instruct | 100 | 17.13 ±1.17 | 61.61 ±6.05 | 28.46 ±9.30 | 74.65 ±3.67 | 72.02 ±4.25 | 48.92 ±8.04 | 60.67 ±7.43 | 66.54 ±0.91 | 54.71 ±5.34 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Performance comparison of Llama3-8B-Instruct with different number of masked retrieval heads on factuality evaluation tasks." >}}
| Model | Masked Retrieval Heads | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | MC1 ↑ | MC2 ↑ | MC3 ↑ | EM ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | Baseline | 39.41 | 55.69 | 30.31 | 56.58 | 26.64 | 29.04 |
| Llama3-8B-Instruct | 10 | 39.17 | 57.40 | 31.57 | 55.77 | 25.84 | 28.81 |
| Llama3-8B-Instruct | 20 | 40.27 | 59.37 | 33.24 | 55.26 | 25.39 | 28.93 |
| Llama3-8B-Instruct | 30 | 40.51 | 60.51 | 33.30 | 55.39 | 25.32 | 29.42 |
| Llama3-8B-Instruct | 40 | 41.49 | 61.11 | 34.00 | 54.99 | 25.35 | 28.51 |
| Llama3-8B-Instruct | 50 | 41.00 | 61.31 | 33.63 | 54.32 | 25.04 | 27.91 |
| Llama3-8B-Instruct | 60 | 39.29 | 59.32 | 32.48 | 54.05 | 24.47 | 27.50 |
| Llama3-8B-Instruct | 70 | 38.80 | 59.27 | 32.47 | 54.01 | 24.52 | 27.76 |
| Llama3-8B-Instruct | 80 | 36.23 | 57.71 | 30.64 | 53.92 | 24.19 | 27.31 |
| Llama3-8B-Instruct | 90 | 35.86 | 56.63 | 30.17 | 52.89 | 23.51 | 26.18 |
| Llama3-8B-Instruct | 100 | 36.47 | 57.39 | 31.08 | 52.56 | 23.30 | 26.25 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Performance of different models and decoding methods on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | MC1 ↑ | MC2 ↑ | MC3 ↑ | EM ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | Baseline | 39.41 | 55.69 | 30.31 | 56.58 | 21.10 | 29.04 |
| Llama3-8B-Instruct | 10 | 38.84 士0.71 | 55.79 士0.53 | 30.38 ±0.46 | 56.17 士0.03 | 25.96 士0.18 | 29.27 士0.10 |
| Llama3-8B-Instruct | 20 | 38.51 士0.35 | 56.09 士2.21 | 30.34 ±0.86 | 55.75 士0.33 | 25.63 士0.25 | 28.89 ±0.46 |
| Llama3-8B-Instruct | 30 | 37.58 士1.12 | 56.47 士2.30 | 30.21 士1.01 | 54.84 士0.58 | 25.52 士0.16 | 28.03 士0.20 |
| Llama3-8B-Instruct | 40 | 37.37 士0.57 | 57.00 士1.94 | 30.24 ±0.51 | 54.14 士0.65 | 25.24 士0.15 | 27.51 士0.61 |
| Llama3-8B-Instruct | 50 | 37.17 士1.56 | 56.70 士2.36 | 29.85 士1.58 | 53.17 士1.22 | 25.07 士0.22 | 26.61 ±1.14 |
| Llama3-8B-Instruct | 60 | 35.86 ±1.41 | 55.37 ±0.82 | 28.87 ±0.80 | 52.43 士1.77 | 24.54 士0.54 | 26.26 ±1.14 |
| Llama3-8B-Instruct | 70 | 34.68 士0.31 | 53.87 士1.16 | 27.63 ±0.66 | 51.79 士1.59 | 24.50 士0.58 | 25.70 士1.07 |
| Llama3-8B-Instruct | 80 | 33.05 士2.36 | 53.12 士2.02 | 26.56 士2.03 | 48.11 士5.82 | 24.52 士1.01 | 24.36 士1.83 |
| Llama3-8B-Instruct | 90 | 30.80 士2.20 | 49.78 士2.91 | 24.79 士1.56 | 47.39 士5.68 | 24.14 士0.98 | 24.05 士2.03 |
| Llama3-8B-Instruct | 100 | 30.07 ±0.90 | 49.78 士1.74 | 24.44 士0.76 | 47.04 士5.17 | 24.05 士0.76 | 23.96 ±1.84 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 9: Performance comparison of Llama3-8B-Instruct with different number of masked retrieval heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
| Model | Masked Retrieval Heads | MuSiQue without C⌀T | MuSiQue without C⌀T | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | Closed Book | Open Book | Closed Book | Open Book |
| Llama3-8B-Instruct | Baseline | 7.41 | 58.83 | 14.61 | 69.84 |
| Llama3-8B-Instruct | 10 | 6.99 | 51.47 | 14.56 | 59.87 |
| Llama3-8B-Instruct | 20 | 6.91 | 49.52 | 15.06 | 57.92 |
| Llama3-8B-Instruct | 30 | 6.74 | 46.96 | 12.16 | 50.48 |
| Llama3-8B-Instruct | 40 | 6.33 | 47.41 | 11.54 | 48.70 |
| Llama3-8B-Instruct | 50 | 6.29 | 46.67 | 13.24 | 47.37 |
| Llama3-8B-Instruct | 60 | 6.33 | 46.01 | 10.72 | 41.79 |
| Llama3-8B-Instruct | 70 | 6.41 | 46.46 | 11.38 | 43.65 |
| Llama3-8B-Instruct | 80 | 6.41 | 44.81 | 8.98 | 32.19 |
| Llama3-8B-Instruct | 90 | 5.54 | 41.25 | 7.24 | 27.06 |
| Llama3-8B-Instruct | 100 | 5.63 | 38.85 | 7.32 | 23.34 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 10: Performance comparison of Llama3-8B-Instruct with different numbers of masked random heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
| Model | Masked Random Heads | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- | --- |
| Model | Masked Random Heads | Closed Book | Open Book | Closed Book | Open Book |
| Llama3-8B-Instruct | Baseline | 7.41 | 58.83 | 14.61 | 69.84 |
| Llama3-8B-Instruct | 10 | 7.09 士0.24 | 59.25 士0.53 | 14.63 ±0.35 | 69.70 ±1.81 |
| Llama3-8B-Instruct | 20 | 7.17 士0.10 | 58.67 ±0.68 | 14.44 ±0.68 | 67.94 ±0.81 |
| Llama3-8B-Instruct | 30 | 6.90 士0.19 | 57.23 ±1.32 | 14.09 士1.30 | 67.19 士2.42 |
| Llama3-8B-Instruct | 40 | 6.61 ±0.02 | 55.83 士2.82 | 13.57 士1.09 | 64.27 士4.28 |
| Llama3-8B-Instruct | 50 | 6.08 ±0.41 | 55.65 士3.12 | 12.84 ±1.10 | 64.87 士2.34 |
| Llama3-8B-Instruct | 60 | 5.76 士0.77 | 54.64 士3.36 | 12.49 士1.06 | 63.65 士2.38 |
| Llama3-8B-Instruct | 70 | 5.43 ±0.80 | 53.28 士3.66 | 11.20 ±1.34 | 61.40 士3.96 |
| Llama3-8B-Instruct | 80 | 5.27 士0.77 | 52.19 士2.95 | 10.22 ±0.49 | 55.98 士3.28 |
| Llama3-8B-Instruct | 90 | 5.46 ±0.72 | 49.25 ±4.41 | 8.14 士1.92 | 46.59 士8.97 |
| Llama3-8B-Instruct | 100 | 5.25 士0.46 | 48.34 士5.71 | 7.43 士2.04 | 44.79 士9.19 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | %Reject ↓ | %T n R ↑ | %I n R | %T nIn R↑ |
| --- | --- | --- | --- | --- |
| Llama3-8b-Instruct | 43.94 | 65.50 | 94.54 | 60.04 |
| + ITI (Li et al., 2024b) | 25.46 | 83.25 | 96.06 | 79.47 |
| + DoLA (low) (Chuang et al., 2023) | 45.04 | 64.81 | 94.65 | 59.69 |
| + DoLA (high) (Chuang et al., 2023) | 44.92 | 65.11 | 93.78 | 58.89 |
| + AD (Chen et al., 2024) | 43.82 | 65.14 | 94.55 | 59.69 |
| + DeCoRe static (Ours) | 41.74 | 67.02 | 95.38 | 62.39 |
| + DeCoRe entropy (Ours) | 38.68 | 65.87 | 95.61 | 61.48 |
| Llama3-70b-Instruct | 53.12 | 76.50 | 97.91 | 74.41 |
| + CD (Li et al., 2023) | 52.26 | 75.64 | 97.69 | 73.33 |
| + ITI (Li et al., 2024b) | 37.94 | 71.79 | 98.82 | 70.81 |
| + DoLA (low) (Chuang et al., 2023) | 52.88 | 76.62 | 97.92 | 74.55 |
| + DoLA (high) (Chuang et al., 2023) | 54.71 | 76.22 | 97.30 | 73.51 |
| + AD (Chen et al., 2024) | 49.33 | 75.36 | 98.31 | 73.67 |
| + DeCoRe static (Ours) | 54.96 | 74.46 | 97.01 | 71.47 |
| + DeCoRe entropy (Ours) | 56.79 | 75.35 | 96.32 | 71.67 |
| + DeCoRe entropy-small amateur (Ours) | 52.02 | 75.77 | 97.70 | 73.47 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
|  | MuSiQue (Closed) | MuSiQue (Open) | Model | T-test | T-test | U-test | U-test |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Statistics | MuSiQue (Closed) | MuSiQue (Open) | Model | p-value | Statistics | p-value |  |
| Correct | 31.74 | 27.99 | Baseline | 11.75 | 2.57 x 10-31 | 4.31 x 105 | 8.36 x 10-26 |
| Incorrect | 43.91 | 33.32 | DoLa | 12.52 | 3.51 x 10-35 | 4.28 x 105 | 3.66 x 10-28 |
|  |  |  | DeCoRe entropy | 11.01 | 7.43 x 10-28 | 4.05 X 105 | 3.43 X 10-24 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | ROUGE-L↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc↑ | Prompt Acc ↑ | Instruct Acc ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | 0 (Baseline) | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| Llama3-8B-Instruct | 10 | 19.45 | 67.08 | 57.50 | 68.81 | 66.60 | 68.39 | 76.38 | 70.66 | 66.08 |
| Llama3-8B-Instruct | 20 | 19.61 | 67.18 | 57.53 | 69.39 | 68.37 | 67.10 | 75.54 | 70.24 | 65.55 |
| Llama3-8B-Instruct | 30 | 19.62 | 67.48 | 59.75 | 70.14 | 70.50 | 62.11 | 72.30 | 70.17 | 65.15 |
| Llama3-8B-Instruct | 40 | 19.70 | 67.42 | 60.65 | 70.46 | 71.09 | 62.29 | 72.42 | 69.83 | 64.96 |
| Llama3-8B-Instruct | 50 | 19.37 | 67.15 | 62.88 | 71.27 | 71.68 | 61.92 | 72.06 | 69.94 | 64.75 |
| Llama3-8B-Instruct | 60 | 19.40 | 67.18 | 64.27 | 71.59 | 71.76 | 58.60 | 69.54 | 69.57 | 64.41 |
| Llama3-8B-Instruct | 70 | 19.51 | 67.30 | 61.32 | 71.90 | 71.80 | 56.93 | 68.94 | 68.51 | 61.53 |
| Llama3-8B-Instruct | 80 | 19.40 | 67.57 | 64.67 | 72.52 | 72.75 | 59.15 | 70.14 | 68.55 | 62.75 |
| Llama3-8B-Instruct | 90 | 19.45 | 67.69 | 66.10 | 74.14 | 74.87 | 59.89 | 70.74 | 68.66 | 62.64 |
| Llama3-8B-Instruct | 100 | 19.37 | 67.59 | 64.78 | 73.53 | 73.97 | 60.81 | 70.98 | 69.57 | 63.93 |
| Llama3-70B-Instruct | 0 (Baseline) | 22.41 | 69.77 | 61.32 | 68.47 | 66.52 | 77.45 | 84.41 | 71.07 | 76.11 |
| Llama3-70B-Instruct | 10 | 22.17 | 69.64 | 62.41 | 69.17 | 67.51 | 76.34 | 83.57 | 71.75 | 78.36 |
| Llama3-70B-Instruct | 20 | 22.35 | 69.75 | 60.72 | 68.58 | 66.64 | 77.45 | 84.29 | 71.83 | 77.86 |
| Llama3-70B-Instruct | 30 | 22.03 | 69.51 | 63.91 | 70.28 | 69.52 | 78.56 | 84.89 | 72.35 | 79.10 |
| Llama3-70B-Instruct | 40 | 21.98 | 69.48 | 64.67 | 71.93 | 72.19 | 77.45 | 83.81 | 72.32 | 78.91 |
| Llama3-70B-Instruct | 50 | 21.93 | 69.47 | 65.13 | 73.75 | 73.41 | 77.63 | 84.41 | 72.54 | 79.14 |
| Llama3-70B-Instruct | 60 | 21.84 | 69.44 | 63.94 | 72.66 | 72.19 | 78.19 | 84.89 | 72.24 | 77.79 |
| Llama3-70B-Instruct | 70 | 22.03 | 69.55 | 62.96 | 71.97 | 71.96 | 76.52 | 83.69 | 72.43 | 77.62 |
| Llama3-70B-Instruct | 80 | 21.95 | 69.44 | 64.62 | 72.81 | 72.47 | 77.08 | 84.05 | 72.66 | 79.73 |
| Llama3-70B-Instruct | 90 | 21.93 | 69.40 | 65.49 | 74.07 | 73.65 | 77.26 | 83.81 | 72.39 | 79.73 |
| Llama3-70B-Instruct | 100 | 21.82 | 69.38 | 65.30 | 73.88 | 73.97 | 77.08 | 83.81 | 72.47 | 79.79 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Random Heads | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Random Heads | ROUGE-L ↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Prompt Acc ↑ | Instruct Acc ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | 0 (Baseline) | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| Llama3-8B-Instruct | 10 | 20.02 ±0.12 | 67.43 ±0.31 | 51.39 士5.67 | 69.38 ±2.70 | 68.08 ±2.75 | 68.52 ±0.75 | 76.82 ±0.82 | 69.27 ±0.24 | 59.65 ±0.47 |
| Llama3-8B-Instruct | 20 | 20.09 ±0.26 | 67.64 ±0.37 | 54.13 士5.85 | 68.22 ±4.61 | 66.68 士5.76 | ±1.49 65.31 | 74.46 ±0.95 | 69.30 ±0.66 | 59.49 ±1.93 |
| Llama3-8B-Instruct | 30 | 20.06 ±0.11 | 67.78 ±0.53 | 56.00 ±7.34 | 69.29 ±3.91 | 68.77 ±4.88 | 64.76 ±1.87 | 74.26 ±1.63 | 69.11 ±0.49 | 58.91 ±2.61 |
| Llama3-8B-Instruct | 40 | 20.07 ±0.23 | 67.76 ±0.54 | 56.78 ±9.68 | 71.09 ±0.71 | 70.72 ±1.56 | 64.94 ±1.34 | 74.38 ±1.39 | 69.23 ±0.60 | 61.23 ±5.48 |
| Llama3-8B-Instruct | 50 | 20.08 ±0.36 | 67.89 ±0.50 | 57.37 ±8.45 | 69.69 ±2.14 | 69.07 ±3.18 | 64.08 ±1.99 | 73.78 ±1.80 | 69.13 ±0.53 | 61.33 ±4.92 |
| Llama3-8B-Instruct | 60 | 20.09 ±0.47 | 67.99 ±0.61 | 57.87 ±6.37 | 70.52 ±1.89 | 70.17 ±1.18 | 60.51 士2.63 | 70.78 士1.92 | 69.23 ±0.56 | 62.23 ±2.77 |
| Llama3-8B-Instruct | 70 | 19.83 ±0.47 | 67.96 ±0.54 | 60.16 ±6.49 | 70.96 ±2.19 | 70.76 ±1.90 | 60.14 ±0.21 | 70.90 ±0.42 | 69.19 ±0.33 | 62.03 ±3.23 |
| Llama3-8B-Instruct | 80 | 19.71 ±0.44 | 67.85 ±0.49 | 60.00 ±5.13 | 69.47 ±1.68 | 68.94 ±0.94 | 58.96 ±1.44 | 69.46 ±1.23 | 68.76 ±0.36 | 60.89 ±5.05 |
| Llama3-8B-Instruct | 90 | 19.75 ±0.34 | 67.78 ±0.52 | 59.04 ±4.80 | 66.91 ±2.68 | 66.63 ±3.58 | 59.64 士1.20 | 69.94 ±0.45 | 68.59 ±0.59 | 59.62 士5.86 |
| Llama3-8B-Instruct | 100 | 19.68 ±0.45 | 67.82 ±0.50 | 59.03 ±3.41 | 67.27 士2.01 | 66.76 ±2.80 | 59.02 ±1.23 | 69.62 ±1.08 | 68.15 ±0.76 | 59.27 ±5.37 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | MC1 ↑ | MC2 ↑ | MC3↑ | EM ↑ | EM↑ | EM ↑ |
| Llama3-8B-Instruct | Baseline | 39.41 | 55.69 | 30.31 | 56.58 | 26.64 | 29.04 |
| Llama3-8B-Instruct | 10 | 37.45 | 53.76 | 28.48 | 56.40 | 26.88 | 28.96 |
| Llama3-8B-Instruct | 20 | 36.96 | 54.46 | 28.95 | 56.18 | 26.74 | 28.55 |
| Llama3-8B-Instruct | 30 | 37.58 | 53.76 | 29.38 | 55.14 | 26.28 | 27.42 |
| Llama3-8B-Instruct | 40 | 36.23 | 53.62 | 29.34 | 54.73 | 25.97 | 27.91 |
| Llama3-8B-Instruct | 50 | 37.70 | 54.66 | 29.82 | 53.99 | 25.55 | 27.27 |
| Llama3-8B-Instruct | 60 | 37.21 | 54.50 | 30.21 | 53.72 | 25.39 | 27.01 |
| Llama3-8B-Instruct | 70 | 36.96 | 55.05 | 30.35 | 52.84 | 24.99 | 26.44 |
| Llama3-8B-Instruct | 80 | 38.43 | 55.86 | 30.95 | 52.19 | 24.76 | 26.44 |
| Llama3-8B-Instruct | 90 | 37.70 | 55.32 | 30.30 | 52.29 | 24.85 | 26.70 |
| Llama3-8B-Instruct | 100 | 36.60 | 54.10 | 29.61 | 52.21 | 25.09 | 26.55 |
| Llama3-70B-Instruct | Baseline | 49.57 | 70.60 | 37.85 | 74.77 | 40.63 | 40.08 |
| Llama3-70B-Instruct | 10 | 49.94 | 70.66 | 38.11 | 74.75 | 40.58 | 40.30 |
| Llama3-70B-Instruct | 20 | 50.31 | 70.93 | 38.35 | 74.67 | 40.46 | 40.23 |
| Llama3-70B-Instruct | 30 | 50.43 | 71.76 | 39.65 | 74.57 | 40.51 | 40.11 |
| Llama3-70B-Instruct | 40 | 50.80 | 71.54 | 39.33 | 74.58 | 40.49 | 40.08 |
| Llama3-70B-Instruct | 50 | 52.14 | 72.17 | 40.36 | 74.72 | 40.44 | 40.15 |
| Llama3-70B-Instruct | 60 | 52.88 | 72.45 | 41.64 | 74.51 | 40.30 | 40.26 |
| Llama3-70B-Instruct | 70 | 53.98 | 73.44 | 42.55 | 74.61 | 40.38 | 40.45 |
| Llama3-70B-Instruct | 80 | 53.61 | 72.98 | 41.79 | 74.65 | 40.49 | 40.30 |
| Llama3-70B-Instruct | 90 | 52.88 | 72.61 | 41.71 | 74.60 | 40.58 | 40.38 |
| Llama3-70B-Instruct | 100 | 54.10 | 72.96 | 42.86 | 74.64 | 40.49 | 40.45 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Performance of different models and decoding methods on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Random Heads | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Masked Random Heads | MC1 ↑ | MC2 ↑ | MC3↑ | EM ↑ | EM ↑ | EM ↑ |
| Llama3-8B-Instruct | Baseline | 39.41 | 55.69 | 30.31 | 56.58 | 26.64 | 29.04 |
| Llama3-8B-Instruct | 10 | 38.92 ±0.53 | 56.15 ±0.78 | 30.22 ±0.28 | 55.38 ±0.45 | 25.96 ±0.18 | 28.70 ±0.57 |
| Llama3-8B-Instruct | 20 | 39.25 ±0.62 | 56.55 士2.07 | 30.93 ±0.85 | 54.68 ±0.68 | 25.63 ±0.25 | 28.02 ±0.53 |
| Llama3-8B-Instruct | 30 | 39.41 ±1.28 | 56.43 士2.33 | 31.10 ±1.26 | 54.15 ±0.73 | 25.52 ±0.16 | 27.86 ±0.32 |
| Llama3-8B-Instruct | 40 | 38.84 ±0.75 | 55.32 ±1.85 | 30.39 ±1.03 | 53.58 ±0.59 | 25.27 ±0.17 | 27.16 ±0.33 |
| Llama3-8B-Instruct | 50 | 38.76 ±0.35 | 54.97 ±1.43 | 30.37 ±1.05 | 53.38 ±0.80 | 25.07 ±0.22 | 27.16 ±0.31 |
| Llama3-8B-Instruct | 60 | 38.31 ±0.65 | 54.45 ±0.82 | 29.89 ±0.92 | 53.04 ±0.72 | 24.54 ±0.54 | 27.12 ±0.26 |
| Llama3-8B-Instruct | 70 | 38.68 ±0.92 | 55.31 ±0.98 | 30.74 ±1.26 | 52.79 ±0.60 | 24.50 ±0.58 | 26.78 ±0.13 |
| Llama3-8B-Instruct | 80 | 37.58 ±0.65 | 55.19 ±1.65 | 30.05 ±0.45 | 52.52 ±0.84 | 24.52 ±1.01 | 26.87 ±0.21 |
| Llama3-8B-Instruct | 90 | 38.39 士2.22 | 56.48 ±3.06 | 30.82 士2.20 | 52.13 ±0.28 | 24.14 ±0.98 | 26.74 ±0.33 |
| Llama3-8B-Instruct | 100 | 38.23 士2.70 | 56.66 士3.77 | 31.03 士2.72 | 51.60 ±0.35 | 24.05 ±0.76 | 26.43 ±0.51 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | Masked Retrieval Heads | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with C⌀T | MuSiQue with C⌀T |
| --- | --- | --- | --- | --- | --- |
| Model | Masked Retrieval Heads | Closed Book | Open Book | Closed Book | Open Book |
| Llama3-8B-Instruct | Baseline | 7.41 | 58.83 | 14.61 | 69.84 |
| Llama3-8B-Instruct | 10 | 7.61 | 61.98 | 13.90 | 74.47 |
| Llama3-8B-Instruct | 20 | 7.70 | 61.81 | 13.82 | 72.20 |
| Llama3-8B-Instruct | 30 | 7.70 | 61.44 | 13.61 | 71.70 |
| Llama3-8B-Instruct | 40 | 7.03 | 61.32 | 13.03 | 72.16 |
| Llama3-8B-Instruct | 50 | 7.12 | 61.32 | 12.78 | 71.62 |
| Llama3-8B-Instruct | 60 | 6.50 | 60.36 | 13.03 | 72.11 |
| Llama3-8B-Instruct | 70 | 6.21 | 59.21 | 12.83 | 71.66 |
| Llama3-8B-Instruct | 80 | 5.75 | 58.05 | 12.29 | 71.74 |
| Llama3-8B-Instruct | 90 | 6.04 | 59.54 | 12.49 | 70.87 |
| Llama3-8B-Instruct | 100 | 6.45 | 59.78 | 11.96 | 71.00 |
| Llama3-70B-Instruct | Baseline | 11.79 | 68.56 | 20.15 | 74.43 |
| Llama3-70B-Instruct | 10 | 11.75 | 69.22 | 20.60 | 74.76 |
| Llama3-70B-Instruct | 20 | 11.67 | 69.05 | 20.02 | 74.56 |
| Llama3-70B-Instruct | 30 | 11.50 | 68.97 | 20.31 | 74.43 |
| Llama3-70B-Instruct | 40 | 11.63 | 69.05 | 20.23 | 74.22 |
| Llama3-70B-Instruct | 50 | 11.34 | 69.38 | 20.02 | 73.60 |
| Llama3-70B-Instruct | 60 | 11.34 | 68.68 | 19.69 | 73.85 |
| Llama3-70B-Instruct | 70 | 11.34 | 69.38 | 19.40 | 74.06 |
| Llama3-70B-Instruct | 80 | 11.25 | 69.67 | 19.28 | 74.18 |
| Llama3-70B-Instruct | 90 | 11.38 | 69.51 | 19.53 | 74.47 |
| Llama3-70B-Instruct | 100 | 11.25 | 69.84 | 19.69 | 74.93 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 19: Performance comparison across different numbers of masked random heads on MuSiQue, a multi-hop reasoning dataset, with and without CoT prompting in both closed-book and open-book settings." >}}
| Model | Masked Random Heads | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- | --- |
| Model | Masked Random Heads | Closed Book | Open Book | Closed Book | Open Book |
| Llama3-8B-Instruct | Baseline | 7.41 | 58.83 | 14.61 | 69.84 |
| Llama3-8B-Instruct | 10 | 6.63 士0.17 | 59.21 士0.91 | 13.57 士0.91 | 69.40 士1.09 |
| Llama3-8B-Instruct | 20 | 6.87 ±0.14 | 59.72 ±0.70 | 13.07 ±0.90 | 70.18 ±0.44 |
| Llama3-8B-Instruct | 30 | 6.65 ±0.44 | 59.95 ±0.77 | 12.61 ±0.91 | 70.43 ±1.47 |
| Llama3-8B-Instruct | 40 | 6.22 ±0.42 | 60.52 ±1.69 | 12.29 ±0.40 | 70.28 士2.53 |
| Llama3-8B-Instruct | 50 | 6.50 ±0.26 | 60.60 ±1.46 | 12.26 ±0.15 | 69.41 ±1.44 |
| Llama3-8B-Instruct | 60 | 6.36 ±0.31 | 60.31 ±1.49 | 11.81 ±0.58 | 68.89 士0.95 |
| Llama3-8B-Instruct | 70 | 6.32 ±0.06 | 61.03 ±0.97 | 12.05 士1.06 | 69.78 士1.56 |
| Llama3-8B-Instruct | 80 | 6.45 ±0.54 | 61.32 ±0.50 | 11.64 士0.66 | 70.05 ±1.08 |
| Llama3-8B-Instruct | 90 | 6.55 ±0.46 | 61.45 士1.38 | 11.65 士0.57 | 70.20 士2.17 |
| Llama3-8B-Instruct | 100 | 6.34 ±0.27 | 61.76 ±0.90 | 11.72 士0.27 | 70.29 士2.36 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | ROUGE-L ↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Prompt Acc ↑ | Instruct Acc ↑ | EM↑ | EM↑ |
| Mistral-7B-Instruct-v0.3 | 16.53 | 65.30 | 65.53 | 76.63 | 75.11 | 51.02 | 60.91 | 66.86 | 65.17 |
| + CAD (Shi et al., 2024) | 14.71 | 63.55 | 69.90 | - | - | - | - | 65.54 | 76.11 |
| + DoLA (low) (Chuang et al., 2023) | 16.45 | 65.24 | 65.51 | 76.33 | 74.75 | 49.54 | 60.19 | 67.01 | 65.32 |
| + DoLA (high) (Chuang et al., 2023) | 16.44 | 65.23 | 65.70 | 76.47 | 74.91 | 49.72 | 60.19 | 66.97 | 65.21 |
| + AD (Chen et al., 2024) | 16.58 | 65.36 | 65.25 | 76.80 | 75.35 | 51.76 | 62.35 | 66.70 | 63.99 |
| + DeCoRe static (Ours) | 15.57 | 64.20 | 71.75 | 77.01 | 76.49 | 51.94 | 62.47 | 68.02 | 68.08 |
| + DeCoRe entropy (Ours) | 15.15 | 63.80 | 70.73 | 77.54 | 76.96 | 51.20 | 61.27 | 68.48 | 68.61 |
| Qwen2-7B-Instruct | 20.00 | 67.70 | 68.66 | 82.13 | 80.54 | 52.31 | 62.35 | 68.81 | 72.90 |
| + CAD (Shi et al., 2024) | 17.06 | 65.08 | 71.98 |  |  |  |  | 69.30 | 78.05 |
| + DoLA (low) (Chuang et al., 2023) | 19.57 | 67.47 | 65.05 | 82.76 | 81.76 | 54.16 | 65.35 | 68.32 | 72.88 |
| + DoLA (high) (Chuang et al., 2023) | 18.69 | 66.60 | 55.71 | 56.61 | 55.89 | 47.32 | 59.59 | 65.76 | 70.48 |
| + AD (Chen et al., 2024) | 19.58 | 67.66 | 66.42 | 81.37 | 80.03 | 51.76 | 62.35 | 68.14 | 72.29 |
| + DeCoRe static (Ours) | 18.78 | 66.82 | 75.21 | 82.50 | 81.02 | 58.04 | 67.51 | 70.13 | 75.64 |
| + DeCoRe entropy (Ours) | 17.09 | 64.79 | 76.90 | 83.80 | 82.04 | 54.90 | 64.03 | 70.58 | 75.31 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | TruthfulQA (Generation) | TruthfulQA (Generation) | TruthfulQA (Generation) | TruthfulQA (Generation) | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Model | MC1 ↑ | MC2↑ | MC3↑ | EM↑ | EM ↑ | %Truth ↑ | %Info ↑ | %TnI↑ | %Reject ↓ | EM↑ |
| Mistral-7B-Instruct-v0.3 | 50.31 | 65.62 | 38.29 | 59.99 | 26.65 | 80.54 | 97.06 | 77.60 | 26.07 | 31.49 |
| + DoLA (low) (Chuang et al., 2023) | 50.18 | 65.64 | 38.17 | 60.06 | 26.68 | 80.29 | 97.31 | 77.60 | 25.70 | 31.53 |
| + DoLA (high) (Chuang et al., 2023) | 50.18 | 65.61 | 38.18 | 60.03 | 26.68 | 80.54 | 97.06 | 77.60 | 25.70 | 31.53 |
| + AD (Chen et al., 2024) | 43.82 | 64.44 | 35.67 | 59.92 | 26.66 | 80.29 | 97.18 | 77.48 | 25.70 | 30.55 |
| + DeCoRe static (Ours) | 53.49 | 67.13 | 39.48 | 60.09 | 27.02 | 77.85 | 97.43 | 75.40 | 20.81 | 31.38 |
| + DeCoRe entropy (Ours) | 54.84 | 69.08 | 41.82 | 59.64 | 27.11 | 76.99 | 97.80 | 74.79 | 15.91 | 31.45 |
| Qwen2-7B-Instruct | 29.99 | 48.08 | 24.22 | 42.77 | 17.55 | 80.78 | 67.93 | 48.71 | 37.33 | 25.91 |
| + DoLA (low) (Chuang et al., 2023) | 30.11 | 49.11 | 25.09 | 40.57 | 15.85 | 84.58 | 65.36 | 50.06 | 41.74 | 23.84 |
| + DoLA (high) (Chuang et al., 2023) | 20.44 | 47.09 | 22.76 | 37.82 | 13.84 | 83.97 | 61.57 | 45.53 | 45.17 | 21.36 |
| + AD (Chen et al., 2024) | 30.85 | 49.71 | 25.33 | 42.13 | 18.19 | 78.09 | 79.68 | 57.83 | 26.31 | 24.41 |
| + DeCoRe static (Ours) | 31.09 | 48.23 | 25.20 | 42.50 | 17.71 | 79.31 | 69.28 | 48.59 | 37.33 | 26.06 |
| + DeCoRe entropy (Ours) | 34.52 | 51.79 | 27.30 | 41.30 | 17.15 | 76.87 | 76.74 | 53.61 | 26.81 | 25.05 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Model | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- |
| Model | Closed Book | Open Book | Closed Book | Open Book |
| Mistral-7B-Instruct-v0.3 | 7.61 | 58.01 | 11.17 | 59.70 |
| + CAD (Shi et al., 2024) | - | 50.10 | - | 63.55 |
| + DoLA (low) | 7.53 | 58.21 | 10.92 | 59.79 |
| + AD (Chen et al., 2024) | 7.53 | 59.00 | 11.34 | 61.69 |
| + DeCoRe static | 7.86 | 59.33 | 12.04 | 63.92 |
| + DeCoRe entropy | 7.57 | 62.72 | 11.21 | 65.12 |
| Qwen2-7B-Instruct | 6.54 | 63.01 | 8.23 | 60.57 |
| + CAD (Shi et al., 2024) | - | 64.58 | - | 66.41 |
| + DoLA (low) | 7.03 | 65.45 | 7.70 | 64.54 |
| + AD (Chen et al., 2024) | 5.71 | 65.29 | 8.44 | 65.70 |
| + DeCoRe static | 6.70 | 63.34 | 8.36 | 66.78 |
| + DeCoRe entropy | 6.16 | 66.49 | 8.23 | 67.98 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 23: Performance of Llama3-8b-Instruct with DeCoRestatic on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| a | XSum | XSum | XSum | MemoTrap | MemoTrap | IFEval | IFEval | NQ-Open | NQ-Swap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| a | ROUGE-L ↑ | BERTScore-F1 ↑ | factKB ↑ | Macro Acc ↑ | Micro Acc ↑ | Instruct Acc ↑ | Prompt Acc ↑ | EM ↑ | EM ↑ |
| -0.5 | 20.16 | 66.42 | 28.17 | 63.52 | 60.65 | 76.98 | 68.58 | 68.17 | 55.75 |
| 0.0 | 19.90 | 67.23 | 47.61 | 65.86 | 64.40 | 70.24 | 78.30 | 69.68 | 60.62 |
| 0.5 | 19.87 | 67.83 | 64.07 | 69.53 | 69.20 | 69.13 | 78.06 | 70.62 | 64.43 |
| 1.0 | 19.41 | 67.83 | 67.46 | 69.71 | 70.22 | 73.74 | 63.59 | 70.73 | 64.88 |
| 2.0 | 18.38 | 67.19 | 64.02 | 71.28 | 71.84 | 70.74 | 59.70 | 69.64 | 63.02 |
| 4.0 | 16.65 | 65.26 | 52.61 | 70.77 | 71.09 | 51.56 | 37.52 | 62.86 | 54.83 |
| 8.0 | 13.05 | 55.65 | 31.34 | 70.68 | 70.97 | 35.01 | 20.70 | 43.24 | 39.97 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Performance of Llama3-8b-Instruct with DeCoRestatic on factuality evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| a | TruthfulQA (MC) | TruthfulQA (MC) | TruthfulQA (MC) | TriviaQA | PopQA | NQ-Open |
| --- | --- | --- | --- | --- | --- | --- |
| a | MC1 ↑ | MC2 ↑ | MC3 ↑ | EM ↑ | EM ↑ | EM ↑ |
| -0.5 | 38.31 | 57.05 | 31.48 | 56.00 | 26.09 | 28.93 |
| 0.0 | 39.41 | 55.69 | 30.31 | 56.58 | 26.64 | 29.04 |
| 0.5 | 38.68 | 55.74 | 29.80 | 56.93 | 26.86 | 29.42 |
| 1.0 | 38.07 | 55.86 | 29.81 | 56.78 | 26.87 | 28.93 |
| 2.0 | 36.84 | 56.13 | 30.08 | 56.47 | 26.60 | 28.59 |
| 4.0 | 37.45 | 57.62 | 31.43 | 53.92 | 24.55 | 28.14 |
| 8.0 | 37.70 | 58.37 | 31.82 | 43.67 | 18.66 | 23.47 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| a | MuSiQue without CoT | MuSiQue without CoT | MuSiQue with CoT | MuSiQue with CoT |
| --- | --- | --- | --- | --- |
| a | Closed Book ↑ | Open Book ↑ | Closed Book ↑ | Open Book ↑ |
| -0.5 | 6.95 | 55.94 | 14.56 | 66.32 |
| 0.0 | 11.79 | 68.56 | 20.15 | 74.43 |
| 0.5 | 11.79 | 69.76 | 20.60 | 75.05 |
| 1.0 | 8.27 | 62.27 | 14.19 | 72.07 |
| 2.0 | 7.12 | 60.57 | 11.67 | 70.09 |
| 4.0 | 4.18 | 52.92 | 7.36 | 58.46 |
| 8.0 | 2.52 | 33.88 | 5.01 | 31.36 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Task | Metric | # of shots | Prompt Template |
| --- | --- | --- | --- |
| Faithfulness Hallucination | Faithfulness Hallucination | Faithfulness Hallucination | Faithfulness Hallucination |
| XSum | ROUGE-L BERTScore factKB | 0 | Generate a summary comprising of 1 sentence for the given article. \n\n Article: " + {{document}}\n\nSummary: |
| MemoTrap | Macro Accuracy Micro Accuracy | 0 | {{question}} |
| IFEval | Instruction-level Strict Accuracy Prompt-level Strict Accuracy | 0 | {{question}} |
| Open Book NQ-Open | EM | 1 | Write a high-quality answer for the given question using only the provided search results (some of which might be irrelevant). Provide the answer in 5 words or less without any explanation. \n\n {{in-context learning demonstrations}}\n\n Document [{{document_index}}] {{document}}\n Question: {{question}}\n Answer: |
| NQ-Swap | EM | 4 | Answer the following question based on the provided context:\n\n {{in-context learning demonstrations}}\n\n Context: {{context}}\n Question: {{question}} \n Answer: |
| Factuality Hallucination | Factuality Hallucination | Factuality Hallucination | Factuality Hallucination |
| Closed-Book NQ-Open | EM | 8 | Write a high-quality answer for the given question. Provide the answer in 5 words or less without any explanation. \n\n {{in-context learning demonstrations}}\n\n Question: {{question}}\n Answer: |
| TriviaQA | EM | 8 | Answer the given question.\n\n {{in-context learning demonstrations}}\n\n Question: {{question}} In Answer: |
| PopQA | EM | 8 | Answer the given question. \n\n {{in-context learning demonstrations}}\n\n Question: {{question}}\n Answer: |
| TruthfulQA | MC1 MC2 MC3 GPT-Judge GPT-Info | 6 | Interpret each question literally, and as a question about the real world; carefully research each answer, without falling prey to any common myths; and reply "I have no comment" unless you are completely certain of the answer. \n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n A: |
| Reasoning | Reasoning | Reasoning | Reasoning |
| MuSiQue Direct | EM | 17 | Answer the following question. \n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n Answer: |
| MuSiQue CoT | EM | 17 | Answer the following question by reasoning step-by-step.\n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n Answer: |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Performance of different models and decoding methods on faithfulness evaluation tasks. For each base model, the best performance is indicated in bold, and the second-best is underlined." >}}
| Question | Answer | Reason of Removal |
| --- | --- | --- |
| What genre is the record label of the performer of So Long, See You Tomorrow associated with? | The performer of So Long, See You Tomorrow is Bombay Bicycle Club. The record label of Bombay Bicy- cle Club is Island Records. The genre of Island Records is jazz. So the answer is: jazz. | A record label does not have only one specific genre, as confirmed by a Wikipedia search of Is- land Records. |
| What is the genre of the record label of the band that performed on the Crush Tour? | The Crush Tour is performed by the band Bon Jovi. The record label of Bon Jovi is Island Records. The genre of Island Records is jazz. So the answer is: jazz. | A record label does not have only one specific genre, as confirmed by a Wikipedia search of Is- land Records. |
| Where is the crying stone found in the coun- try in which Raphael Tuju holds citizenship? | Raphael Tuju is a citizen of Kenya. The crying stone in Kenya is found along the highway towards Kisumu. So the answer is: along the highway towards Kisumu. | The second passage al- ready contains the an- swer as standalone evi- dence. It does not high- light the multi-hop rea- soning. |
{{< /table-caption >}}


</details>

------

