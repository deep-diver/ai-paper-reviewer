---
title: "Skywork-Reward: Bag of Tricks for Reward Modeling in LLMs"
summary: "This paper presents Skywork-Reward, a novel reward model for LLMs.  It emphasizes data quality over quantity, creating a smaller, meticulously curated dataset using advanced filtering and selection te....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
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









<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1 | Statistics of the Skywork Reward Preference 80K dataset for reward modeling." >}}
| Task | Count | Percentage |
| --- | --- | --- |
| Math | 29,657 | 49.81% |
| Coding & debugging | 8,193 | 13.76% |
| Information seeking | 7,837 | 13.16% |
| Advice seeking | 4,546 | 7.64% |
| Reasoning | 3,854 | 6.47% |
| Planning | 2,185 | 3.67% |
| Brainstorming | 1,081 | 1.82% |
| Creative writing | 794 | 1.33% |
| Data analysis | 725 | 1.22% |
| Editing | 337 | 0.57% |
| Role playing | 330 | 0.55% |
| Total | 59,539 | 100% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
| Model | Type | Avg. Score | Chat | Chat Hard | Safety | Reasoning |
| --- | --- | --- | --- | --- | --- | --- |
| SFR-LLaMa-3.1-70B-Judge-I* Wang et al. 2024c) | Generative | 92.7 | 96.9 | 84.8 | 91.6 | 97.6 |
| Nemotron-4-340B-Reward* Wang et al. 2024e) | Custom | 92.2 | 95.8 | 87.1 | 92.2 | 93.6 |
| ArmoRM-Llama3-8B-v0.1 Wang et al. 2024b | Custom | 90.8 | 96.9 | 76.8 | 92.2 | 97.3 |
| SFR-nemo-12B-Judge-r* Wang et al. 2024c | Generative | 90.3 | 97.2 | 82.2 | 86.5 | 95.1 |
| InternLM-20B-Reward Cai et al. 2024 | Discriminative | 90.2 | 98.9 | 76.5 | 89.9 | 95.8 |
| Llama-3-OffsetBias-RM-8B Park et al. 2024 | Discriminative | 89.4 | 97.2 | 81.8 | 86.8 | 91.9 |
| gemini-1.5-pro-0924 Team et al. 2024a | Generative | 86.8 | 94.1 | 77.0 | 85.8 | 90.2 |
| gpt-4o-2024-08-06 Achiam et al. 2023 | Generative | 86.7 | 96.1 | 76.1 | 88.1 | 86.6 |
| Llama-3.1-8B Dubey et al. 2024 + Preference 700K | Discriminative | 86.9 | 98.0 | 67.3 | 89.4 | 93.0 |
| Gemma-2-27B Team et al. 2024b + Preference 700K | Discriminative | 88.1 | 97.5 | 71.7 | 90.0 | 93.4 |
| Llama-3.1-8BDubey et al. 2024 + Preference 378K | Discriminative | 91.8 | 94.6 | 84.5 | 91.5 | 96.5 |
| Gemma-2-27BTeam et al. 2024b + Preference 378K | Discriminative | 92.6 | 94.4 | 87.5 | 91.9 | 96.7 |
| Skywork-Reward-Llama-3.1-8B | Discriminative | 92.5 | 95.8 | 87.3 | 90.6 | 96.2 |
| Skywork-Reward-Gemma-2-27B | Discriminative | 93.8 | 95.8 | 91.4 | 92.0 | 96.1 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
| Loss function | Avg. Score | Chat | Chat Hard | Safety | Reasoning |
| --- | --- | --- | --- | --- | --- |
| Focal Lin 2017 | 93.6 | 94.3 | 91.8 | 92.0 | 96.5 |
| Focal with penalty Cai et al. 2024 | 93.4 | 93.9 | 91.5 | 92.0 | 96.5 |
| Hinge Scholkopf et al. 2001 | 93.3 | 94.1 | 90.2 | 92.6 | 96.3 |
| MarginMSE Friedman et al. 2001 | 92.3 | 90.2 | 89.0 | 93.3 | 96.7 |
| Cross-entropy (Goodtellow et al. 2016 | 87.6 | 74.9 | 87.3 | 94.0 | 94.5 |
| Tempered log Carvalho et al. 2010 | 92.9 | 96.4 | 87.4 | 91.8 | 96.2 |
| Temperature-adjusted Bradley-Terry Bradley and Terry, 1952 | 93.7 | 94.3 | 91.7 | 92.7 | 96.3 |
| Bradley-Terry Bradley and Terry 1952) | 93.8 | 95.8 | 91.4 | 92.0 | 96.1 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
| Dataset | # of RewardBench Prompts With >7-Gram Match | # of Contaminated Prompts |
| --- | --- | --- |
| Preference 700K | 800 | 15,349 |
| Nectar | 381 | 2,394 |
| Skywork Reward Preference 80K v0.1 | 673 | 5,402 |
| Skywork Reward Preference 80K v0.2 | 460 | 445 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2 | Performance comparison of different reward models on RewardBench. The first block of the table includes the top reward models on the RewardBench leaderboard. The superscript in this block indicates that the results have not been officially verified. The second block of the table corresponds to Llama-3.1-8B and Gemma-2-27B (both instruct version) trained on Preference 700K and Preference 378K data, respectively. The final block of the table showcases the performance of our Skywork-Reward model series, which are trained on the Skywork Reward Preference 80K dataset. Notably, Skywork-Reward-Gemma-2-27B achieves state-of-the-art performance, outperforming several competitive models on RewardBench. The highest performance in each column is masked as bold." >}}
| Model | Avg. Score | Chat | Chat Hard | Safety | Reasoning |
| --- | --- | --- | --- | --- | --- |
| Skywork-Reward-Llama-3.1-8B | 92.5 | 95.8 | 87.3 | 90.6 | 96.2 |
| Skywork-Reward-Gemma-2-27B | 93.8 | 95.8 | 91.4 | 92.0 | 96.1 |
| Skywork-Reward-Llama-3.1-8B (Decontaminated) | 93.1 (↑ 0.6) | 94.7 (↓ 1.1) | 88.4 (↑ 1.1) | 92.7 (↑ 2.1) | 96.7 (↑ 0.5) |
| Skywork-Reward-Gemma-2-27B (Decontaminated) | 94.3 (↑ 0.5) | 96.1 (↑ 0.3) | 89.9 (↓ 1.5) | 93.0 (↑ 1.0) | 98.1 (↑ 2.0) |
{{< /table-caption >}}


</details>

------



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

  <img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}