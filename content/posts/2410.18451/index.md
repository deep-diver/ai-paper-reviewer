---
title: "Skywork-Reward: Bag of Tricks for Reward Modeling in LLMs"
summary: "This paper presents Skywork-Reward, a novel reward model for LLMs.  It emphasizes data quality over quantity, creating a smaller, meticulously curated dataset using advanced filtering and selection te....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

This paper presents Skywork-Reward, a novel reward model for LLMs.  It emphasizes data quality over quantity, creating a smaller, meticulously curated dataset using advanced filtering and selection techniques.  The resulting models achieve state-of-the-art performance on the RewardBench benchmark, demonstrating the power of data-centric approaches for reward model training and showcasing the effectiveness of Bradley-Terry loss.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18451" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces Skywork-Reward, a high-performing reward model for LLMs.  It focuses on data-centric techniques, curating a smaller, higher-quality preference dataset (Skywork-Reward dataset) using effective data selection and filtering strategies.  The resulting models achieve state-of-the-art performance on RewardBench, highlighting the practical impact of data-centric approaches in reward modeling.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Data-centric methods are crucial for effective reward modeling in LLMs, as demonstrated by the superior performance of models trained on a curated dataset even when smaller than existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed data selection and filtering techniques, focusing on prioritizing preference pairs that improve model performance and minimizing noisy data, prove to be highly effective for improving the quality of reward models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Bradley-Terry loss function consistently outperforms other loss function variants in reward modeling, showcasing its robustness and efficiency. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_4_0.png "🔼 Figure 1 | The composition chart of the Skywork-Reward preference data selections before and after applying data selection and filtering operations.")

{{< table-caption caption="🔽 Table 1 | Statistics of the Skywork Reward Preference 80K dataset for reward modeling." >}}
| Dataset | # Pairs | Avg. # Turns | Avg. # Tokens (Prompt) | Avg. # Tokens (Response) | Completion | Annotator |
| --- | --- | --- | --- | --- | --- | --- |
| HelpSteer2 | 7,221 | 3.9 | 21.3 | 690.0 | Human + 6 LLMsa | Human |
| OffsetBias | 8,504 | 2 | 69.1 | 222.1 | GPT-3.5 + GPT-4 + Claude 3 Opus | GPT-4 |
| WildGuardMix | 6,709 | 2 | 164.3 | 349.9 | 8 LLMsb | Human |
| Magpie Ultra | 27,785 | 2 | 76.7 | 670.0 | Llama 3.1 405B Instruct | ArmoRM |
| Magpie Pro (Llama 3) | 2,030 | 2 | 34.2 | 621.5 | Llama 3 70B Instruct | ArmoRM |
| Magpie Pro (Llama 3.1) | 29,682 | 2 | 118.8 | 584.3 | Llama 3.1 70B Instruct | ArmoRM |
| Magpie Air | 42 | 2 | 66.6 | 240.0 | Llama 3 8B Instruct | ArmoRM |
| Total | 81,973 | 2.2 | 96.3 | 527.2 | - | - |
{{< /table-caption >}}

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1 | Statistics of the Skywork Reward Preference 80K dataset for reward modeling." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
{{< /table-caption >}}


</details>

------

