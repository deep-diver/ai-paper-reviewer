---
title: "Can Knowledge Editing Really Correct Hallucinations?"
summary: "HalluEditBench: A new benchmark reveals whether knowledge editing truly fixes LLM hallucinations, offering insights into efficacy, generalization, and robustness."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-25"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research paper introduces HalluEditBench, a new benchmark dataset and evaluation framework designed to assess the effectiveness of knowledge editing techniques in correcting hallucinations in large language models (LLMs). Unlike previous datasets, HalluEditBench verifies that LLMs generate hallucinated answers before applying any editing.  It rigorously evaluates various editing methods across five dimensions (efficacy, generalization, portability, locality, and robustness). The results reveal that the effectiveness of knowledge editing in correcting hallucinations is far more nuanced than previously suggested, with methods showing varying degrees of success in generalizing their corrections, adapting to different data, and resisting external manipulation.   HalluEditBench provides valuable insights into the strengths and limitations of existing techniques, prompting researchers to develop more sophisticated knowledge editing methods and evaluation strategies.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16251" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and knowledge editing. It introduces a novel benchmark dataset and evaluation framework, addressing a critical gap in the field. The findings challenge existing assumptions about knowledge editing effectiveness and highlight the need for more robust evaluation methods. This research will guide future development and improvement of knowledge editing techniques.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HalluEditBench provides a comprehensive benchmark for evaluating knowledge editing methods on real-world LLM hallucinations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study's findings challenge the common assumption that knowledge editing effectively corrects LLM hallucinations, particularly highlighting the overestimation on existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} HalluEditBench reveals significant discrepancies in the performance of different knowledge editing techniques across various facets, including generalization, portability, locality and robustness, urging for more holistic evaluation methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: Framework of HalluEditBench. For real-world hallucinations, we holistically assess the performance of knowledge editing on Efficacy, Generalization, Portability, Locality, and Robustness.")

> The figure illustrates the framework of HalluEditBench, which holistically evaluates knowledge editing methods by assessing their performance across five dimensions: Efficacy, Generalization, Portability, Locality, and Robustness, using real-world hallucinations.





![](charts/charts_5_0.png "🔼 Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.")

> The chart displays the efficacy scores of different knowledge editing methods across nine domains and three large language models (LLMs).





{{< table-caption caption="🔽 Table 1: Performance measured by Accuracy (%) of Llama2-7B before editing (“Pre-edit”) and after applying typical knowledge editing methods (“Post-edit”) on common existing evaluation datasets." >}}
<br><table id='10' style='font-size:14px'><tr><td>Method</td><td>WikiDatarecent</td><td>ZsRE</td><td>WikiBio</td></tr><tr><td>Pre-edit</td><td>47.40</td><td>37.49</td><td>61.35</td></tr><tr><td>Post-edit (ROME)</td><td>97.37</td><td>96.86</td><td>95.91</td></tr><tr><td>Post-edit (MEMIT)</td><td>97.10</td><td>95.86</td><td>94.68</td></tr><tr><td>Post-edit (FT-L)</td><td>56.30</td><td>53.82</td><td>66.70</td></tr><tr><td>Post-edit (FT-M)</td><td>100.00</td><td>99.98</td><td>100.00</td></tr><tr><td>Post-edit (LoRA)</td><td>100.00</td><td>100.00</td><td>100.00</td></tr></table>{{< /table-caption >}}

> The table shows the accuracy of Llama2-7B before and after applying different knowledge editing methods on existing datasets.



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_6_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> The chart displays the Generalization Scores of different knowledge editing methods across five question types for three LLMs.


![](charts/charts_7_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment")

> The chart displays the Portability scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and three domains (business, entertainment, event) with varying hop distances.


![](charts/charts_8_0.png "🔼 Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.")

> The chart displays the efficacy scores of various knowledge editing methods across different domains and LLMs in correcting real-world hallucinations.


![](charts/charts_9_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> The chart displays the robustness scores of seven knowledge editing methods across three large language models (LLMs) and three domains, showing the accuracy of the methods against distractions in prompts over ten turns.


![](charts/charts_22_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> The chart displays the Generalization scores of different knowledge editing methods across various question types for three different LLMs.


![](charts/charts_23_0.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> The chart displays the Generalization Scores of different knowledge editing methods across five question types for three LLMs on the HalluEditBench dataset.


![](charts/charts_23_1.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> The chart displays the Generalization Scores of various knowledge editing methods across five question types for three different LLMs.


![](charts/charts_23_2.png "🔼 Figure 10: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domains include “entertainment” and “event”.")

> The chart displays the Generalization Scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) for two domains (entertainment and event), showing the accuracy of each method on various question types.


![](charts/charts_23_3.png "🔼 Figure 4: Generalization Scores of Knowledge Editing Methods. Generalization Scores (%) are measured by accuracy on five types of Generalization Evaluation Questions including Rephrased Questions ('rephrase'), Yes-or-No Questions with Yes or No as answers ('yes' or 'no'), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to averaged scores over five question types. The figure only shows the overall Generalization Scores for each type on the whole HalluEditBench. Generalization Scores for each domain are given in Appendix D.1.")

> The chart displays the generalization scores of various knowledge editing methods across five different question types, showing their ability to generalize to different question phrasings.


![](charts/charts_23_4.png "🔼 Figure 10: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domains include “entertainment” and “event”.")

> The chart displays the Generalization Scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and two domains (entertainment, event).


![](charts/charts_24_0.png "🔼 Figure 10: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domains include “entertainment” and “event”.")

> The chart displays the Generalization scores for different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and two domains (entertainment, event) using five different question types.


![](charts/charts_25_0.png "🔼 Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.")

> The chart displays the Generalization Scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and two domains (geography and health) based on five types of evaluation questions.


![](charts/charts_26_0.png "🔼 Figure 12: Generalization Scores of Knowledge Editing Methods on 3 LLMs and 2 Domains. Generalization Scores (%) are measured by the accuracy on five types of Generalization Evaluation Question-answer Pairs including Rephrased Questions (“rephrase”), two types of Yes-or-No Questions with Yes or No as answers (“yes” or “no”), Multi-Choice Questions (“mc”), Reversed Questions (“reversed”). The “average” refers to the averaged scores over five types of questions. The domain is “technology”.")

> The chart displays the Generalization Scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) for the 'technology' domain, broken down by five question types.


![](charts/charts_27_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment")

> The chart displays the portability scores of various knowledge editing methods across three large language models (LLMs) and three domains, showing the accuracy of the methods on multi-hop questions.


![](charts/charts_28_0.png "🔼 Figure 13: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domains include “business”, “entertainment”, and “event”.")

> The chart displays the portability scores of different knowledge editing methods across three LLMs and three domains, illustrating their ability to reason across multiple hops of knowledge.


![](charts/charts_29_0.png "🔼 Figure 15: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domain is “art”.")

> The chart displays the portability scores of different knowledge editing methods across various hop distances for Llama2-7B, Llama3-8B, and Mistral-v0.3-7B on the art domain.


![](charts/charts_29_1.png "🔼 Figure 5: Portability Scores of Knowledge Editing Methods. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions with N hops (N = 1 ~ 6). The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The results for more domains are given in Appendix D.2. The “overall” refers to the Portability Score (%) on the whole HalluEditBench embracing 9 domains.")

> The chart displays the portability scores of various knowledge editing methods across different hop distances (1-6) for Llama3-8B on the 'art' domain, illustrating the ability of these methods to reason about edited knowledge in downstream tasks.


![](charts/charts_29_2.png "🔼 Figure 15: Portability Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Portability Scores (%) are measured by the accuracy on Portability Evaluation Questions, which are Efficacy Evaluation Questions when with N hops. The Portability Evaluation Questions are the same as Efficacy Evaluation Questions when N is 1. The domain is “art”.")

> The chart displays the portability scores of various knowledge editing methods across different hop distances (1-6) for the Mistral-v0.3-7B model on the ‘art’ domain.


![](charts/charts_30_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include “geography”, “health”, and “technology”.")

> The chart displays the robustness scores of seven knowledge editing methods across three large language models (LLMs) and three domains, showing the persistence of edited knowledge under various levels of distraction.


![](charts/charts_31_0.png "🔼 Figure 3: Efficacy Scores of Knowledge Editing Methods. The 'overall' refers to the Efficacy Score (%) on the whole HalluEditBench embracing 9 domains for different methods. The Efficacy Score on each domain is also reported. Efficacy scores (%) are measured by the accuracy on Efficacy Evaluation Question-answer Pairs, where the pre-edit scores of each LLM are ensured 0.")

> The chart displays the efficacy scores of various knowledge editing methods across different domains and LLMs, showing their effectiveness in correcting hallucinations.


![](charts/charts_32_0.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> The chart displays the robustness scores of various knowledge editing methods across three different LLMs and three domains, showing the percentage of times the LLMs maintained the corrected answers even after being prompted with distracting questions.


![](charts/charts_32_1.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> The chart displays the robustness scores of different knowledge editing methods across three LLMs and three domains, showing the percentage of 'yes' responses over ten turns of robustness evaluation questions.


![](charts/charts_32_2.png "🔼 Figure 17: Robustness Scores of Knowledge Editing Methods on 3 LLMs and 3 Domains. Robustness Scores are calculated by the accuracy on Robustness Evaluation Questions with M turns (M = 1 ~ 10). We regard Efficacy Scores as the Robustness Scores when M is 0. The domains include 'geography', 'health', and 'technology'.")

> The chart displays the robustness scores of different knowledge editing methods across three LLMs (Llama2-7B, Llama3-8B, Mistral-v0.3-7B) and three domains (geography, health, technology) over ten turns.


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