---
title: "Can Knowledge Editing Really Correct Hallucinations?"
summary: "HalluEditBench: A new benchmark reveals knowledge editing's limitations in truly fixing LLM hallucinations, offering valuable insights for future improvements."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-25"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

Large Language Models (LLMs) sometimes produce incorrect information (hallucinations).  Researchers have developed knowledge editing techniques to fix these errors without retraining the entire model.  However, current evaluation methods don't always ensure the LLM initially hallucinates.  This paper introduces HalluEditBench, a new benchmark dataset that directly assesses knowledge editing on actual hallucinations across several dimensions (efficacy, generalization, portability, locality, robustness).  The results show that many knowledge editing methods are less effective than initially believed, particularly in generalizing the corrections across different scenarios and LLMs.  Parameter-preserving methods performed better than methods modifying LLM parameters, providing valuable insights for future research on improving knowledge editing techniques.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16251" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16251" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on LLMs and knowledge editing. It introduces a novel benchmark, HalluEditBench, addressing a critical gap in evaluating knowledge editing methods' effectiveness in correcting hallucinations.  The findings challenge existing assumptions about the efficacy of several techniques and highlight the complexities involved in ensuring robust and generalizable knowledge editing.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HalluEditBench, a new benchmark dataset, rigorously evaluates knowledge editing methods' ability to correct real-world LLM hallucinations across various dimensions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study reveals that the effectiveness of knowledge editing techniques varies significantly across domains and LLMs, and performance on existing datasets may not accurately reflect real-world effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Findings suggest that parameter-preserving methods like ICE and GRACE generally outperform parameter-modifying techniques in correcting hallucinations but may have lower generalization and robustness. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the framework of HalluEditBench, showcasing how it holistically evaluates knowledge editing methods in correcting real-world hallucinations across five dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Framework of HalluEditBench. For real-world hallucinations, we holistically assess the performance of knowledge editing on Efficacy, Generalization, Portability, Locality, and Robustness.
> </details>





![](charts/charts_5_0.png)

> 🔼 The chart displays the efficacy scores of different knowledge editing methods across nine domains and three LLMs, showing the effectiveness of each method in correcting real-world hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.
> </details>





{{< table-caption >}}
<br><table id='10' style='font-size:14px'><tr><td>Method</td><td>WikiDatarecent</td><td>ZsRE</td><td>WikiBio</td></tr><tr><td>Pre-edit</td><td>47.40</td><td>37.49</td><td>61.35</td></tr><tr><td>Post-edit (ROME)</td><td>97.37</td><td>96.86</td><td>95.91</td></tr><tr><td>Post-edit (MEMIT)</td><td>97.10</td><td>95.86</td><td>94.68</td></tr><tr><td>Post-edit (FT-L)</td><td>56.30</td><td>53.82</td><td>66.70</td></tr><tr><td>Post-edit (FT-M)</td><td>100.00</td><td>99.98</td><td>100.00</td></tr><tr><td>Post-edit (LoRA)</td><td>100.00</td><td>100.00</td><td>100.00</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the accuracy of Llama2-7B model's performance before and after applying different knowledge editing methods on existing evaluation datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance measured by Accuracy (%) of Llama2-7B before editing (“Pre-edit”) and after applying typical knowledge editing methods (“Post-edit”) on common existing evaluation datasets.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_6_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the generalization scores of various knowledge editing methods across different question types for three LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_7_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment”, and “event”.")

> 🔼 The chart displays the portability scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and three domains (business, entertainment, event) for varying hop distances in multi-hop questions.
> <details>
> <summary>read the caption</summary>
> Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment”, and “event”.
> </details>


![](charts/charts_8_0.png "🔼 Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.")

> 🔼 The chart displays the efficacy scores of seven knowledge editing methods across nine domains and three large language models (LLMs), showing their effectiveness in correcting hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.
> </details>


![](charts/charts_9_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> 🔼 The chart displays the robustness scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and three domains (geography, health, technology) over ten turns of Robustness Evaluation Questions.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.
> </details>


![](charts/charts_22_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the generalization scores of various knowledge editing methods across five question types for three different LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_23_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the generalization scores of different knowledge editing methods across five question types for Llama2-7B, Llama3-8B, and Mistral-v0.3-7B LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_23_1.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the generalization scores of various knowledge editing methods across five question types for three different LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_23_2.png "🔼 Figure 10: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domains include “entertainment” and “event”.")

> 🔼 The chart displays the Generalization scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) for two domains (entertainment and event).
> <details>
> <summary>read the caption</summary>
> Figure 10: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domains include “entertainment” and “event”.
> </details>


![](charts/charts_23_3.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the generalization scores of various knowledge editing methods across five different question types for three large language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_23_4.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include “geography”, “health”, and “technology”.")

> 🔼 The chart displays the robustness scores of different knowledge editing methods across three large language models (LLMs) and three domains, showing the consistency of edited factual knowledge against external manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include “geography”, “health”, and “technology”.
> </details>


![](charts/charts_24_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> 🔼 The chart displays the Generalization scores for various knowledge editing methods across three different LLMs, broken down by five question types.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.
> </details>


![](charts/charts_25_0.png "🔼 Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.")

> 🔼 The chart displays the Generalization scores for different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and two domains (geography and health).
> <details>
> <summary>read the caption</summary>
> Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.
> </details>


![](charts/charts_26_0.png "🔼 Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.")

> 🔼 The chart displays Generalization Scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) for the 'technology' domain, categorized by five question types.
> <details>
> <summary>read the caption</summary>
> Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.
> </details>


![](charts/charts_27_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment”, and “event”.")

> 🔼 The chart displays the portability scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and three domains (business, entertainment, event) for varying hop distances in multi-hop question answering.
> <details>
> <summary>read the caption</summary>
> Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment”, and “event”.
> </details>


![](charts/charts_28_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment")

> 🔼 The chart displays the portability scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, and Mistral-v0.3-7B) and three domains (business, entertainment, and event), showing the accuracy of answering multi-hop questions after knowledge editing.
> <details>
> <summary>read the caption</summary>
> Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment
> </details>


![](charts/charts_29_0.png "🔼 Figure 5: Portability Scores of Knowledge Editing Methods. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions with N hops (N = 1 ~ 6). The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The results for more domains are given in Appendix D.2. The “overall” refers to the Portability Score (%) on the whole HalluEditBench embracing 9 domains.")

> 🔼 The chart displays the portability scores of various knowledge editing methods across different hop distances for three LLMs and selected domains, showing their ability to reason using edited knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 5: Portability Scores of Knowledge Editing Methods. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions with N hops (N = 1 ~ 6). The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The results for more domains are given in Appendix D.2. The “overall” refers to the Portability Score (%) on the whole HalluEditBench embracing 9 domains.
> </details>


![](charts/charts_29_1.png "🔼 Figure 5: Portability Scores of Knowledge Editing Methods. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions with N hops (N = 1 ~ 6). The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The results for more domains are given in Appendix D.2. The “overall” refers to the Portability Score (%) on the whole HalluEditBench embracing 9 domains.")

> 🔼 The chart displays the portability scores of different knowledge editing methods across various hop distances on Llama3-8B in the art domain, showing the ability of LLMs to reason about edited knowledge in downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Portability Scores of Knowledge Editing Methods. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions with N hops (N = 1 ~ 6). The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The results for more domains are given in Appendix D.2. The “overall” refers to the Portability Score (%) on the whole HalluEditBench embracing 9 domains.
> </details>


![](charts/charts_29_2.png "🔼 Figure 15: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domain is “art”.")

> 🔼 The chart displays the Portability Scores of different knowledge editing methods across various hop distances for the Mistral-v0.3-7B LLM on the ‘art’ domain.
> <details>
> <summary>read the caption</summary>
> Figure 15: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domain is “art”.
> </details>


![](charts/charts_30_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> 🔼 The chart displays the robustness scores of seven knowledge editing methods across three different LLMs and three domains, showing the consistency of the edited knowledge over multiple turns.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.
> </details>


![](charts/charts_31_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> 🔼 The chart displays the robustness scores of seven knowledge editing methods across three large language models and three domains, showing how well the methods withstand external manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.
> </details>


![](charts/charts_32_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> 🔼 The chart displays the robustness scores of various knowledge editing methods across three large language models (LLMs) and three domains, showing the accuracy of the methods' responses over multiple rounds of robustness evaluation questions.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.
> </details>


![](charts/charts_32_1.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include “geography”, “health”, and “technology”.")

> 🔼 The chart displays the robustness scores of different knowledge editing methods across three large language models (LLMs) and three domains over ten turns, showing the resistance of edited knowledge to external manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include “geography”, “health”, and “technology”.
> </details>


![](charts/charts_32_2.png "🔼 Figure 7: Robustness Scores of Knowledge Editing Methods. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The Robustness Scores on two domains “human” and “places” are reported in the figure. The results for more domains are given in Appendix D.3. The “overall” refers to the Robustness Score (%) on the whole HalluEditBench embracing 9 domains.")

> 🔼 The chart displays the robustness scores of different knowledge editing methods across various turns on two domains and overall, showing the consistency of their performance against external manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Robustness Scores of Knowledge Editing Methods. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The Robustness Scores on two domains “human” and “places” are reported in the figure. The results for more domains are given in Appendix D.3. The “overall” refers to the Robustness Score (%) on the whole HalluEditBench embracing 9 domains.
> </details>


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
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}