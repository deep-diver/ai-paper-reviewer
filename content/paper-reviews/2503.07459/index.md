---
title: "MedAgentsBench: Benchmarking Thinking Models and Agent Frameworks for Complex Medical Reasoning"
summary: "MEDAGENTSBENCH: a new benchmark for assessing complex medical reasoning in LLMs, revealing performance gaps and cost-effective strategies."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 Yale University",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07459 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangru Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07459" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07459" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07459/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown great performance on medical question-answering, but it's hard to meaningfully evaluate them and distinguish advanced methods. Current evaluations have limitations such as many straight-forward questions, inconsistent sampling/evaluation, and lack of analysis between performance, cost, and time. Because of these issues, advanced LLMs need a better way to test their medical reasoning capabilities.



This paper introduces the MEDAGENTSBENCH, a new benchmark that focuses on complex medical questions requiring multi-step clinical reasoning, diagnosis, and treatment planning. The benchmark addresses the issues of previous tests using seven established medical datasets. Experiments show that thinking models (DEEPSEEK R1 and OPENAI 03) do better and search-based methods offer good performance-to-cost ratios. This analysis finds gaps between model families on complex questions and identifies optimal model choices based on computational constraints.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Thinking models like DEEPSEEK R1 and OpenAI 03 significantly outperform traditional approaches in complex medical reasoning tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Search-based agent methods like AFLOW offer promising performance-to-cost ratios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Open-source models can achieve competitive results at lower operational costs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical need for **more rigorous evaluation in medical AI** by providing a new benchmark focusing on complex reasoning. The MEDAGENTSBENCH  allows researchers to identify **performance gaps in current models** and provides insights into cost-effective strategies. It allows for **better benchmarking** for medical AI methods.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07459/x1.png)

> 🔼 This figure compares the zero-shot performance of various large language models (LLMs) on seven medical question answering datasets: MedQA, PubMedQA, MedMCQA, MedBullets, MMLU, MMLU-Pro, MedExQA, and MedXpertQA.  The y-axis represents the overall Pass@1 accuracy, which is the percentage of questions correctly answered by the model with the highest probability. The x-axis shows the different LLMs tested.  Each bar represents the average Pass@1 accuracy across all seven datasets. This visualization helps to benchmark the performance of different LLMs on complex medical reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance analysis of large language models on medical tasks. Overall Pass@1 accuracy comparison across models in zero-shot setting. The score is an average of seven test sets’ results (MedQA, PubMedQA, MedMCQA, MedBullets, MMLU, MMLU-Pro, MedExQA, and MedXpertQA).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.1.1" style="padding-left:6.3pt;padding-right:6.3pt;">Method</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T1.1.1.1.2" style="padding-left:6.3pt;padding-right:6.3pt;">Description</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.2.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.2.1.1" style="background-color:#E6E6FF;">Chain-of-Thought <cite class="ltx_cite ltx_citemacro_cite">Wei et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib41" title="">2022</a>)</cite></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T1.1.1.2.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.2.2.1" style="background-color:#E6E6FF;">Elicits reasoning in large language models</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.3.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.3.1.1" style="background-color:#E6E6FF;">Self-Consistency <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib38" title="">2022</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.3.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.3.2.1" style="background-color:#E6E6FF;">Improves chain of thought reasoning through sampling diverse reasoning paths</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.4.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.4.1.1" style="background-color:#E6FFE6;">MedPrompt <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib7" title="">2024b</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.4.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.4.2.1" style="background-color:#E6FFE6;">Multi-round prompting with ensemble voting for medical question answering</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.5.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.5.1.1" style="background-color:#E6FFE6;">Multi-Persona <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib40" title="">2023</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.5.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.5.2.1" style="background-color:#E6FFE6;">Task-solving agent through multi-persona self-collaboration</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.6.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.6.1.1" style="background-color:#E6FFE6;">Self-Refine <cite class="ltx_cite ltx_citemacro_cite">Madaan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib25" title="">2024</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.6.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.6.2.1" style="background-color:#E6FFE6;">Iterative refinement with self-feedback</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7" style="background-color:#FFF2E6;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.7.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.7.1.1" style="background-color:#FFF2E6;">MedAgents <cite class="ltx_cite ltx_citemacro_cite">Tang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib35" title="">2023</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.7.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.7.2.1" style="background-color:#FFF2E6;">Collaborative multi-agent framework for zero-shot medical decision making</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8" style="background-color:#FFF2E6;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.8.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.8.1.1" style="background-color:#FFF2E6;">MDAgents <cite class="ltx_cite ltx_citemacro_cite">Kim et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib21" title="">2024a</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.8.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.8.2.1" style="background-color:#FFF2E6;">Dynamic multi-agent collaboration framework for medical reasoning</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.9" style="background-color:#F9E6EC;">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.9.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.9.1.1" style="background-color:#F9E6EC;">AFlow <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib47" title="">2024</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T1.1.1.9.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.9.2.1" style="background-color:#F9E6EC;">Automating agentic workflow generation</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10" style="background-color:#F9E6EC;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S1.T1.1.1.10.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.10.1.1" style="background-color:#F9E6EC;">SPO <cite class="ltx_cite ltx_citemacro_cite">Xiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib43" title="">2025</a>)</cite></span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S1.T1.1.1.10.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T1.1.1.10.2.1" style="background-color:#F9E6EC;">Self-supervised prompt optimization</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table provides an overview of various reasoning approaches used in the paper, categorized into four groups: baseline prompting methods (simple prompting techniques), advanced prompting techniques (more complex prompting strategies), agent-based frameworks (using multiple agents to collaboratively solve problems), and search-based agent methods (combining agents with search algorithms).  For each method, the table lists the name of the method and a brief description explaining its functionality or key characteristics.
> <details>
> <summary>read the caption</summary>
> Table 1: Methods Overview. The reasoning approaches spanning four categories: baseline prompting methods, advanced prompting techniques, agent-based frameworks, and search-based agent methods.
> </details>





### In-depth insights


#### Complex Med QA
Complex Medical Question Answering (MedQA) presents a significant challenge in AI due to the nuanced reasoning and deep medical knowledge required. Unlike standard QA tasks, complex MedQA necessitates multi-step inference, diagnostic formulation, and treatment planning, pushing the limits of even the most advanced models. **High performance on existing benchmarks doesn't always translate to success with intricate medical scenarios, highlighting a gap in current evaluation methods.** Factors such as the prevalence of straightforward questions in existing datasets and inconsistent evaluation protocols contribute to this discrepancy. Effective complex MedQA requires models to synthesize information from various sources, understand intricate relationships between symptoms, diagnoses, and treatments, and handle uncertainty and ambiguity inherent in medical practice. **Future research should focus on developing benchmarks that accurately reflect the complexities of real-world medical reasoning and evaluation metrics that go beyond simple accuracy, assessing the quality of reasoning and explainability of model decisions.** Addressing data contamination is also critical for reliable benchmarking.

#### Agent Workflows
Agent workflows represent a paradigm shift in problem-solving, especially in complex domains like medicine. Instead of relying on a single, monolithic model, agent workflows decompose intricate tasks into smaller, manageable steps handled by specialized agents. **Each agent can focus on a specific aspect of the problem**, such as information retrieval, diagnosis formulation, or treatment planning. **The collaborative nature of these workflows** allows for a more nuanced and robust solution compared to traditional approaches. Key advantages include improved accuracy, enhanced explainability, and the ability to adapt to evolving information. **The design of effective agent workflows** requires careful consideration of agent roles, communication protocols, and task delegation strategies. The integration of diverse expertise and the ability to handle uncertainty are also critical factors for success.

#### Cost Analysis
The analysis of cost is crucial. **Computational resources** needed by advanced models often lead to higher inference costs, with multi-agent frameworks needing multiple API calls and increased cost and inference time. **Cost-performance trade-offs** are explored with a standardized protocol, with cost calculated using token usage and platform rates. For open-source, estimations are based on platforms like Together AI. **Evaluation included wall-clock time** per sample and complete interaction cycles for agent-based approaches. The **Pareto frontier** highlights models for optimal performance. DEEPSEEK-R1 and 03-MINI are Pareto-optimal, indicating efficiency. Domain-specific patterns varied; MedQA showed performance improvements, and PubMedQA showed diminishing returns. **Thinking models outperformed** with a 5-10% difference on complex tasks. A hierarchy of efficiency existed, where some models were optimal for resource-constrained deployments.

#### MELD Analysis
The MELD analysis, employing a memorization effects detector, is a crucial step in ensuring benchmark reliability. **It quantifies potential data contamination by assessing how well models reproduce question text,** highlighting the risk of verbatim memorization over genuine reasoning. The analysis spans various models, revealing distinctions in memorization patterns. **OpenAI models demonstrate lower similarity scores, indicating less memorization,** while some open-source models exhibit higher scores. **This underscores the importance of MELD in identifying and mitigating contamination risks.**

#### Hybrid Approach
While the paper doesn't explicitly discuss a 'Hybrid Approach' under a dedicated heading, the essence of such a methodology is interwoven throughout the research. A hybrid approach in this context could signify the integration of diverse techniques to optimize medical reasoning. This involves combining the strengths of various models, such as **closed-source and open-source LLMs**, and augmenting them with distinct reasoning methods such as baseline prompting, advanced prompting, and agent-based frameworks. Furthermore, a hybrid strategy might encompass the selective deployment of specific models and methods depending on computational constraints, prioritizing either **high performance or cost-effectiveness**. This blending of architectural and reasoning strategy choices could lead to synergistic gains, potentially unlocking superior performance and resource utilization compared to singular approaches.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07459/x2.png)

> 🔼 This figure presents a cost-performance trade-off analysis for various large language models (LLMs) and reasoning methods evaluated on the MedAgentsBench benchmark.  The x-axis represents the cost per sample (log scale), while the y-axis shows the Pass@1 accuracy (the percentage of times the model correctly identifies the top answer). The size of each marker indicates the inference time for that model and method. Different markers represent different prompting methods (e.g., zero-shot, few-shot, chain-of-thought, etc.), and different colors distinguish between different LLMs. The red dashed line highlights the Pareto frontier, which represents the optimal trade-off between cost and performance—points on or above this line indicate models that provide the best performance for a given cost or the lowest cost for a given level of performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance analysis of agents and models on MedAgentsBench. Cost-performance trade-off analysis showing Pass@1 accuracy versus cost per sample (in log scale), with marker sizes indicating inference time. Different markers represent various prompting methods , while colors distinguish different models. The Pareto frontier (red dashed line) indicates optimal cost-performance trade-offs.
> </details>



![](https://arxiv.org/html/2503.07459/x3.png)

> 🔼 Figure 3 analyzes the performance of various models on eight medical datasets (MedQA, MedMCQA, PubMedQA, MedBullets, MMLU-Pro, MMLU, MedExQA, and MedXpertQA). Each subplot displays the distribution of correct answers for each dataset, showing the number of questions answered correctly by different percentages of models.  The x-axis represents the proportion of models that answered correctly (k/N, where k is the number of correctly answering models and N is the total number of models). A dashed line separates questions categorized as 'hard' (less than 50% of models answered correctly) from 'easy' (50% or more answered correctly).  Questions selected for a subset are highlighted in darker shades.  The total number of questions in each dataset is shown in the subplot title.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of model performance across eight medical datasets (MedQA, MedMCQA, PubMedQA, MedBullets, MMLU-Pro, MMLU, MedExQA, and MedXpertQA. Each subplot shows the number of questions answered correctly by different proportions of models (x-axis: k/N, where k is the number of correct models and N is the total number of models). Questions are categorized as either hard (left of the dashed line, <<< 50% of models correct) or easy (right of the dashed line, ≥\geq≥ 50% of models correct), with selected questions highlighted in darker shades. The total question count for each dataset is indicated in the subplot titles.
> </details>



![](https://arxiv.org/html/2503.07459/x4.png)

> 🔼 Figure 4 presents a comprehensive analysis of data contamination across various medical question-answering datasets.  The analysis leverages the MELD (Memorization Effects Levenshtein Detector) technique to quantify the extent to which models memorize training data rather than genuinely reasoning. The figure employs box plots to visually represent the similarity scores (Levenshtein distance ratios) between model-generated text continuations and the original, unseen portions of the questions.  Higher similarity scores indicate a greater likelihood of memorization, suggesting potential contamination of the training data. Lower scores, conversely, imply less memorization and stronger evidence of true reasoning ability.  Each box plot corresponds to a specific dataset, allowing for a direct comparison of memorization across different benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Data contamination analysis across medical question-answering datasets using MELD. The boxplots display similarity percentages between model-generated text and original question text, with higher values potentially indicating memorization of training data. Lower similarity scores suggest minimal data contamination, while higher values may indicate potential contamination in model training data.
> </details>



![](https://arxiv.org/html/2503.07459/x5.png)

> 🔼 Figure 5 presents a comprehensive cost-performance analysis of various language models on seven medical datasets.  Each dataset is represented by a separate subplot, showing the trade-off between Pass@1 accuracy (the percentage of correctly answered questions) and the cost per sample (in USD, displayed on a logarithmic scale).  The plot visually distinguishes between different types of language models: 'thinking models' (those exhibiting complex reasoning capabilities) are depicted with distinct marker shapes compared to 'non-thinking models'.  Model source (open-source vs. closed-source) is represented by different colors (blue for open-source, red for closed-source). Marker size is proportional to the model's inference time.  Finally, the Pareto frontier is overlaid as a red dashed line, representing the optimal combinations of accuracy and cost.
> <details>
> <summary>read the caption</summary>
> Figure 5: Cost-performance analysis across seven medical datasets, comparing open and closed-source language models. Each subplot shows Pass@1 accuracy (%) versus cost per sample (USD, log scale). Marker shapes distinguish thinking models from non-thinking models, while colors indicate open-source (blue) versus closed-source (red) models. Marker sizes represent inference time, and the red dashed line shows the Pareto frontier of optimal cost-performance trade-offs.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T2.1.1">
<tr class="ltx_tr" id="S1.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T2.1.1.1.1" style="padding-left:6.3pt;padding-right:6.3pt;">Benchmark</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.1.2" style="padding-left:6.3pt;padding-right:6.3pt;">Size</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.1.3" style="padding-left:6.3pt;padding-right:6.3pt;">Avg Lens</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.1.4" style="padding-left:6.3pt;padding-right:6.3pt;">Options</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.1.5" style="padding-left:6.3pt;padding-right:6.3pt;">Description</td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.2" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T2.1.1.2.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.2.1.1" style="background-color:#E6E6FF;">MedQA <cite class="ltx_cite ltx_citemacro_cite">Jin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib17" title="">2021</a>)</cite></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.2.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.2.2.1" style="background-color:#E6E6FF;">1273</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.2.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.2.3.1" style="background-color:#E6E6FF;">167.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.2.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.2.4.1" style="background-color:#E6E6FF;">4</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S1.T2.1.1.2.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.2.5.1" style="background-color:#E6E6FF;">Multiple choice questions from medical licensing exams</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.3" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.3.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.3.1.1" style="background-color:#E6E6FF;">PubMedQA <cite class="ltx_cite ltx_citemacro_cite">Jin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib18" title="">2019</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.3.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.3.2.1" style="background-color:#E6E6FF;">500</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.3.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.3.3.1" style="background-color:#E6E6FF;">316.1</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.3.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.3.4.1" style="background-color:#E6E6FF;">3</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.3.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.3.5.1" style="background-color:#E6E6FF;">Questions based on PubMed abstracts</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.4" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.4.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.4.1.1" style="background-color:#E6E6FF;">MedMCQA <cite class="ltx_cite ltx_citemacro_cite">Pal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib29" title="">2022</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.4.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.4.2.1" style="background-color:#E6E6FF;">2816</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.4.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.4.3.1" style="background-color:#E6E6FF;">18.7</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.4.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.4.4.1" style="background-color:#E6E6FF;">4</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.4.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.4.5.1" style="background-color:#E6E6FF;">Questions from AIIMS &amp; NEET PG entrance exams</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.5" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.5.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.5.1.1" style="background-color:#E6FFE6;">MedBullets <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib4" title="">2024a</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.5.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.5.2.1" style="background-color:#E6FFE6;">308</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.5.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.5.3.1" style="background-color:#E6FFE6;">213.1</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.5.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.5.4.1" style="background-color:#E6FFE6;">5</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.5.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.5.5.1" style="background-color:#E6FFE6;">Questions from Medbullets online medical study platform</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.6" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.6.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.6.1.1" style="background-color:#E6FFE6;">MedExQA <cite class="ltx_cite ltx_citemacro_cite">Kim et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib22" title="">2024b</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.6.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.6.2.1" style="background-color:#E6FFE6;">935</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.6.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.6.3.1" style="background-color:#E6FFE6;">19.1</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.6.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.6.4.1" style="background-color:#E6FFE6;">4</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.6.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.6.5.1" style="background-color:#E6FFE6;">Multiple-choice questions across additional five medical specialties</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.7" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.7.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.7.1.1" style="background-color:#E6FFE6;">MedXpertQA <cite class="ltx_cite ltx_citemacro_cite">Zuo et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib49" title="">2025</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.7.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.7.2.1" style="background-color:#E6FFE6;">2450</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.7.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.7.3.1" style="background-color:#E6FFE6;">257.4</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.7.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.7.4.1" style="background-color:#E6FFE6;">10</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.7.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.7.5.1" style="background-color:#E6FFE6;">Advanced medical questions with understanding (U) and reasoning (R)</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.8" style="background-color:#FFF2E6;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.8.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.8.1.1" style="background-color:#FFF2E6;">MMLU <cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib14" title="">2020</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.8.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.8.2.1" style="background-color:#FFF2E6;">1089</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.8.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.8.3.1" style="background-color:#FFF2E6;">55.9</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.8.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.8.4.1" style="background-color:#FFF2E6;">4</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.8.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.8.5.1" style="background-color:#FFF2E6;">Multitask questions covering medical and other academic domains</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.9" style="background-color:#FFF2E6;">
<td class="ltx_td ltx_align_left" id="S1.T2.1.1.9.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.9.1.1" style="background-color:#FFF2E6;">MMLU-Pro <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.07459v1#bib.bib39" title="">2024</a>)</cite></span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.9.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.9.2.1" style="background-color:#FFF2E6;">818</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.9.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.9.3.1" style="background-color:#FFF2E6;">57.4</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.9.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.9.4.1" style="background-color:#FFF2E6;">3-10</span></td>
<td class="ltx_td ltx_align_right" id="S1.T2.1.1.9.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.9.5.1" style="background-color:#FFF2E6;">Multitask questions covering medical and other academic domains</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.1.10" style="background-color:#FFE6E6;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S1.T2.1.1.10.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S1.T2.1.1.10.1.1" style="background-color:#FFE6E6;">MedAgentsBench</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T2.1.1.10.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.10.2.1" style="background-color:#FFE6E6;">862</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T2.1.1.10.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.10.3.1" style="background-color:#FFE6E6;">147.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T2.1.1.10.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S1.T2.1.1.10.4.1" style="background-color:#FFE6E6;">3-10</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S1.T2.1.1.10.5" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S1.T2.1.1.10.5.1" style="background-color:#FFE6E6;">Hard<span class="ltx_text ltx_font_upright" id="S1.T2.1.1.10.5.1.1"> subset across all datasets</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparative overview of eight medical question-answering (QA) datasets.  It details the size (number of questions), average question length (in tokens), and the number of answer options for each dataset.  The datasets are categorized and color-coded to show their origin: knowledge-based datasets (curated from medical literature, journals, and educational resources), traditional benchmarks, recently developed benchmarks, and general-purpose benchmarks. This categorization helps to understand the evolution and diversity of available resources for evaluating medical reasoning in AI models.
> <details>
> <summary>read the caption</summary>
> Table 2: Medical Question-Answering Datasets. Knowledge-based QA datasets are curated from medical literature, professional journals, and educational resources. Traditional benchmarks, recently emerging benchmarks, and general purpose benchmarks are shown with corresponding colors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.11.1">
<tr class="ltx_tr" id="S3.T3.11.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.11.1.1.1" rowspan="2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.2.1">MedQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.3.1">PubMedQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.4.1">MedMCQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.5.1">MedBullets</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.6.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.7" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.7.1">MMLU-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.8" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.8.1">MedExQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.9" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.9.1">MedXpert-R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.11.1.1.10" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.1.10.1">MedXpert-U</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.1.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.2.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.3.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.4.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.5.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.6.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.7" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.7.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.8" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.8.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.9" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.9.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.10" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.10.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.11" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.11.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.12" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.12.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.13" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.13.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.14" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.14.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.15" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.15.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.16" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.16.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.17" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.17.1">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.1.2.18" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.2.18.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.3.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.3.1.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.2" style="background-color:#F9DDE1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.2.1" style="background-color:#F9DDE1;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.3" style="background-color:#FBE9EB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.3.1" style="background-color:#FBE9EB;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.4" style="background-color:#F8D4D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.4.1" style="background-color:#F8D4D9;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.5" style="background-color:#FDF1F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.5.1" style="background-color:#FDF1F2;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.6" style="background-color:#FCEFF1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.6.1" style="background-color:#FCEFF1;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.7" style="background-color:#F9DEE2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.7.1" style="background-color:#F9DEE2;">17.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.8" style="background-color:#FDF2F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.8.1" style="background-color:#FDF2F4;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.9" style="background-color:#FFFCFD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.9.1" style="background-color:#FFFCFD;">10.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.10" style="background-color:#FAE1E5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.10.1" style="background-color:#FAE1E5;">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.11" style="background-color:#FEFBFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.11.1" style="background-color:#FEFBFB;">12.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.12" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.12.1" style="background-color:#FFFFFF;">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.13" style="background-color:#FEFBFC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.13.1" style="background-color:#FEFBFC;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.14" style="background-color:#FDF4F5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.14.1" style="background-color:#FDF4F5;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.15" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.15.1" style="background-color:#FFFFFF;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.16" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.16.1" style="background-color:#FFFFFF;">13.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.17" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.17.1" style="background-color:#FFFFFF;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.18" style="background-color:#FFFEFE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.18.1" style="background-color:#FFFEFE;">16.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.3.19" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.3.19.1" style="background-color:#FFFFFF;">5.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.4.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.4.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.2" style="background-color:#F1ACB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.2.1" style="background-color:#F1ACB6;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.3" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.3.1" style="background-color:#F7D0D5;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.4" style="background-color:#EFA3AD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.4.4.1" style="background-color:#EFA3AD;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.5" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.5.1" style="background-color:#FFFFFF;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.6" style="background-color:#F3B7BF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.6.1" style="background-color:#F3B7BF;">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.7" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.4.7.1" style="background-color:#F3B8C0;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.8" style="background-color:#F4BFC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.8.1" style="background-color:#F4BFC6;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.9" style="background-color:#FBE7EA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.9.1" style="background-color:#FBE7EA;">19.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.10" style="background-color:#F2B4BD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.10.1" style="background-color:#F2B4BD;">91.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.11" style="background-color:#F8D6DA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.11.1" style="background-color:#F8D6DA;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.12" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.12.1" style="background-color:#F6CBD1;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.13" style="background-color:#F8D7DB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.13.1" style="background-color:#F8D7DB;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.14" style="background-color:#F2B0B9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.14.1" style="background-color:#F2B0B9;">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.15" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.4.15.1" style="background-color:#F4C0C7;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.16" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.16.1" style="background-color:#F9DBDF;">22.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.17" style="background-color:#FEFBFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.17.1" style="background-color:#FEFBFB;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.18" style="background-color:#FADFE3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.18.1" style="background-color:#FADFE3;">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.4.19" style="background-color:#FEFAFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.4.19.1" style="background-color:#FEFAFB;">6.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.5.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.5.1.1">DeepSeek-V3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.2" style="background-color:#F6C9CF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.2.1" style="background-color:#F6C9CF;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.3" style="background-color:#FEF8F8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.3.1" style="background-color:#FEF8F8;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.4" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.4.1" style="background-color:#FFFFFF;">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.5" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.5.1" style="background-color:#F8D5D9;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.6" style="background-color:#F5C3CA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.6.1" style="background-color:#F5C3CA;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.7" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.7.1" style="background-color:#F8D5D9;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.8" style="background-color:#F9DCE0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.8.1" style="background-color:#F9DCE0;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.9" style="background-color:#FDF4F5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.9.1" style="background-color:#FDF4F5;">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.10" style="background-color:#F4BEC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.10.1" style="background-color:#F4BEC6;">89.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.11" style="background-color:#FDF3F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.11.1" style="background-color:#FDF3F4;">15.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.12" style="background-color:#F9DFE2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.12.1" style="background-color:#F9DFE2;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.13" style="background-color:#FEF8F8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.13.1" style="background-color:#FEF8F8;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.14" style="background-color:#F4BEC5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.14.1" style="background-color:#F4BEC5;">83.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.15" style="background-color:#FDF2F3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.15.1" style="background-color:#FDF2F3;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.16" style="background-color:#FBEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.16.1" style="background-color:#FBEBED;">18.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.17" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.17.1" style="background-color:#FFFFFF;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.18" style="background-color:#FADFE3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.18.1" style="background-color:#FADFE3;">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.5.19" style="background-color:#FCECEE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.5.19.1" style="background-color:#FCECEE;">9.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.6.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.6.1.1">o1-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.2" style="background-color:#F0A6AF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.2.1" style="background-color:#F0A6AF;">89.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.3" style="background-color:#F0A6B0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.6.3.1" style="background-color:#F0A6B0;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.4" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.4.1" style="background-color:#F4C0C7;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.5" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.5.1" style="background-color:#FAE3E6;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.6" style="background-color:#F6C9CF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.6.1" style="background-color:#F6C9CF;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.7" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.7.1" style="background-color:#F6CBD1;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.8" style="background-color:#F3B7BF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.8.1" style="background-color:#F3B7BF;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.9" style="background-color:#F3B9C1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.9.1" style="background-color:#F3B9C1;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.10" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.10.1" style="background-color:#F3B8C0;">90.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.11" style="background-color:#F4C1C8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.11.1" style="background-color:#F4C1C8;">31.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.12" style="background-color:#F7D1D6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.12.1" style="background-color:#F7D1D6;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.13" style="background-color:#F9DEE2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.13.1" style="background-color:#F9DEE2;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.14" style="background-color:#F6C8CE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.14.1" style="background-color:#F6C8CE;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.15" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.15.1" style="background-color:#F6CED3;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.16" style="background-color:#F4BFC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.16.1" style="background-color:#F4BFC6;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.17" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.6.17.1" style="background-color:#EE9CA7;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.18" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.18.1" style="background-color:#F6CED3;">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.6.19" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.6.19.1" style="background-color:#F8D5D9;">14.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.7.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.7.1.1">o3-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.2" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.2.1" style="background-color:#EE9CA7;">92.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.3" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.3.1" style="background-color:#EE9CA7;">53.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.4" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.4.1" style="background-color:#EE9CA7;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.5" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.5.1" style="background-color:#EE9CA7;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.6" style="background-color:#F2B5BD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.6.1" style="background-color:#F2B5BD;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.7" style="background-color:#F4BDC4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.7.7.1" style="background-color:#F4BDC4;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.8" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.8.1" style="background-color:#EE9CA7;">82.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.9" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.7.9.1" style="background-color:#EE9CA7;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.10" style="background-color:#F0A7B0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.10.1" style="background-color:#F0A7B0;">93.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.11" style="background-color:#F2B5BD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.11.1" style="background-color:#F2B5BD;">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.12" style="background-color:#F5C7CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.12.1" style="background-color:#F5C7CD;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.13" style="background-color:#FCEDEF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.7.13.1" style="background-color:#FCEDEF;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.14" style="background-color:#F1ABB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.14.1" style="background-color:#F1ABB4;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.15" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.15.1" style="background-color:#F4C0C7;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.16" style="background-color:#F1ABB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.16.1" style="background-color:#F1ABB4;">33.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.17" style="background-color:#F1ADB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.17.1" style="background-color:#F1ADB6;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.18" style="background-color:#F3B6BE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.18.1" style="background-color:#F3B6BE;">31.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.7.19" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.7.19.1" style="background-color:#F7D0D5;">15.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.8.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.8.1.1">QwQ-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.2" style="background-color:#F6CCD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.2.1" style="background-color:#F6CCD1;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.3" style="background-color:#F8D7DC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.3.1" style="background-color:#F8D7DC;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.4" style="background-color:#F3BAC1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.4.1" style="background-color:#F3BAC1;">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.5" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.8.5.1" style="background-color:#EE9CA7;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.6" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.6.1" style="background-color:#F9DBDF;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.7" style="background-color:#F4BDC4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.7.1" style="background-color:#F4BDC4;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.8" style="background-color:#FCF0F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.8.1" style="background-color:#FCF0F2;">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.9" style="background-color:#FEF7F8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.9.1" style="background-color:#FEF7F8;">12.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.10" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.10.1" style="background-color:#F7D0D5;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.11" style="background-color:#FBE6E9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.11.1" style="background-color:#FBE6E9;">19.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.12" style="background-color:#F9DDE0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.12.1" style="background-color:#F9DDE0;">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.13" style="background-color:#F4BDC4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.8.13.1" style="background-color:#F4BDC4;">28.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.14" style="background-color:#F7D3D8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.14.1" style="background-color:#F7D3D8;">81.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.15" style="background-color:#FAE4E7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.15.1" style="background-color:#FAE4E7;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.16" style="background-color:#FCEFF1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.16.1" style="background-color:#FCEFF1;">17.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.17" style="background-color:#FDF2F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.17.1" style="background-color:#FDF2F4;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.18" style="background-color:#FEFBFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.18.1" style="background-color:#FEFBFB;">17.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.8.19" style="background-color:#FEFAFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.8.19.1" style="background-color:#FEFAFB;">6.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.9.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.9.1.1">DeepSeek-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.2" style="background-color:#EE9EA9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.9.2.1" style="background-color:#EE9EA9;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.3" style="background-color:#F1ABB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.9.3.1" style="background-color:#F1ABB4;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.4" style="background-color:#F8D4D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.9.4.1" style="background-color:#F8D4D9;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.5" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.9.5.1" style="background-color:#F5C6CD;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.6" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.6.1" style="background-color:#EE9CA7;">81.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.7" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.7.1" style="background-color:#EE9CA7;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.8" style="background-color:#F0A5AF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.9.8.1" style="background-color:#F0A5AF;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.9" style="background-color:#F1ACB5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.9.9.1" style="background-color:#F1ACB5;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.10" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.10.1" style="background-color:#EE9CA7;">95.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.11" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.11.1" style="background-color:#EE9CA7;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.12" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.12.1" style="background-color:#EE9CA7;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.13" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.13.1" style="background-color:#EE9CA7;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.14" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.14.1" style="background-color:#EE9CA7;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.15" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.15.1" style="background-color:#EE9CA7;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.16" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.16.1" style="background-color:#EE9CA7;">37.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.17" style="background-color:#F1ADB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.9.17.1" style="background-color:#F1ADB6;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.18" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.18.1" style="background-color:#EE9CA7;">37.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.9.19" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.11.1.9.19.1" style="background-color:#EE9CA7;">26.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.10.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.10.1.1">Llama-3.3-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.2" style="background-color:#F7D2D7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.2.1" style="background-color:#F7D2D7;">76.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.3" style="background-color:#FFFDFD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.3.1" style="background-color:#FFFDFD;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.4" style="background-color:#F3BAC1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.4.1" style="background-color:#F3BAC1;">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.5" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.11.1.10.5.1" style="background-color:#F5C6CD;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.6" style="background-color:#F7D3D8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.6.1" style="background-color:#F7D3D8;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.7" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.7.1" style="background-color:#F7D0D5;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.8" style="background-color:#F9DADE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.8.1" style="background-color:#F9DADE;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.9" style="background-color:#FCECEE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.9.1" style="background-color:#FCECEE;">16.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.10" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.10.1" style="background-color:#F9DBDF;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.11" style="background-color:#FEFBFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.11.1" style="background-color:#FEFBFB;">12.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.12" style="background-color:#FCECEE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.12.1" style="background-color:#FCECEE;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.13" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.13.1" style="background-color:#FFFFFF;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.14" style="background-color:#FBEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.14.1" style="background-color:#FBEBED;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.15" style="background-color:#FDF2F3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.15.1" style="background-color:#FDF2F3;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.16" style="background-color:#FAE4E7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.16.1" style="background-color:#FAE4E7;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.17" style="background-color:#FDF2F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.17.1" style="background-color:#FDF2F4;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.18" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.18.1" style="background-color:#FAE3E6;">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.10.19" style="background-color:#FCECEE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.10.19.1" style="background-color:#FCECEE;">9.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.11.1.11.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.11.1.1">Claude-3.5-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.2" style="background-color:#F7CFD4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.2.1" style="background-color:#F7CFD4;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.3" style="background-color:#FDF3F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.3.1" style="background-color:#FDF3F4;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.4" style="background-color:#F7D1D6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.4.1" style="background-color:#F7D1D6;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.5" style="background-color:#FDF1F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.5.1" style="background-color:#FDF1F2;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.6" style="background-color:#FAE0E4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.6.1" style="background-color:#FAE0E4;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.7" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.7.1" style="background-color:#FFFFFF;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.8" style="background-color:#FBE9EC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.8.1" style="background-color:#FBE9EC;">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.9" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.9.1" style="background-color:#FFFFFF;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.10" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.10.1" style="background-color:#F7D0D5;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.11" style="background-color:#FCEEF0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.11.1" style="background-color:#FCEEF0;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.12" style="background-color:#FAE1E4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.12.1" style="background-color:#FAE1E4;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.13" style="background-color:#FCF0F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.13.1" style="background-color:#FCF0F2;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.14" style="background-color:#F8D8DD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.14.1" style="background-color:#F8D8DD;">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.15" style="background-color:#F8D6DB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.15.1" style="background-color:#F8D6DB;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.16" style="background-color:#FAE4E7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.16.1" style="background-color:#FAE4E7;">20.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.17" style="background-color:#FDF2F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.17.1" style="background-color:#FDF2F4;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.18" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.18.1" style="background-color:#F9DBDF;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.11.1.11.19" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.11.19.1" style="background-color:#FAE3E6;">11.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.11.1.12.1.1">Claude-3.5-H</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.2" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.2.1" style="background-color:#FFFFFF;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.3" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.3.1" style="background-color:#FFFFFF;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.4" style="background-color:#FEFCFC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.4.1" style="background-color:#FEFCFC;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.5" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.5.1" style="background-color:#F8D5D9;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.6" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.6.1" style="background-color:#FFFFFF;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.7" style="background-color:#F4C2C9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.7.1" style="background-color:#F4C2C9;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.8" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.8.1" style="background-color:#FFFFFF;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.9" style="background-color:#FFFCFD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.9.1" style="background-color:#FFFCFD;">10.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.10" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.10.1" style="background-color:#FFFFFF;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.11" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.11.1" style="background-color:#FFFFFF;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.12" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.12.1" style="background-color:#FFFFFF;">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.13" style="background-color:#FEF8F8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.13.1" style="background-color:#FEF8F8;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.14" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.14.1" style="background-color:#FFFFFF;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.15" style="background-color:#F8D6DB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.15.1" style="background-color:#F8D6DB;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.16" style="background-color:#FEFCFC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.16.1" style="background-color:#FEFCFC;">14.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.17" style="background-color:#FEF6F7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.17.1" style="background-color:#FEF6F7;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.18" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.18.1" style="background-color:#FFFFFF;">16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T3.11.1.12.19" style="background-color:#FEFAFB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T3.11.1.12.19.1" style="background-color:#FEFAFB;">6.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive performance comparison of various large language models (LLMs) across eight different medical datasets.  It displays the accuracy of each model on a 'Full' set of questions from each dataset, representing the overall performance on all questions, and a 'Hard' subset, which includes more challenging questions designed to assess advanced reasoning abilities.  The 'Hard' subset focuses on complex scenarios where even state-of-the-art models struggle, allowing for a more nuanced evaluation of the models' capabilities.  The best and second-best performing models for each task (dataset and question type) are highlighted, providing a clear visual representation of relative strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance heatmap by base models and datasets. For each task, accuracy values are in percentages, with separate columns for Full and Hard. The best values and the second-best values are highlighted.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.13.1">
<tr class="ltx_tr" id="S3.T4.13.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T4.13.1.1.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.2.1">MedQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.3.1">PubMedQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.4.1">MedMCQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.5.1">MedBullets</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.6.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.7" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.7.1">MMLU-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.8" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.8.1">MedExQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.9" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.9.1">MedXpert-R</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.10" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.10.1">MedXpert-U</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.13.1.1.11" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.1.11.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.2">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T4.13.1.2.1" style="padding-left:4.8pt;padding-right:4.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.2.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.3.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.4.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.5.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.6.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.7" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.7.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.8" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.8.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.9" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.9.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.10" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.10.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.11" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.11.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.12" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.12.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.13" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.13.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.14" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.14.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.15" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.15.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.16" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.16.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.17" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.17.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.18" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.18.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.19" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.19.1">4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.20" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.20.1">4o-m</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.2.21" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.2.21.1">4o</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.3.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.3.1.1">Zero-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.2" style="background-color:#FDF5F6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.2.1" style="background-color:#FDF5F6;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.3" style="background-color:#F7D3D8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.3.1" style="background-color:#F7D3D8;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.4" style="background-color:#FCEFF1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.4.1" style="background-color:#FCEFF1;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.5" style="background-color:#FDF3F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.5.1" style="background-color:#FDF3F4;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.6" style="background-color:#FEFAFA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.6.1" style="background-color:#FEFAFA;">17.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.7" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.7.1" style="background-color:#F7D0D5;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.8" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.8.1" style="background-color:#FFFFFF;">10.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.9" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.9.1" style="background-color:#F9DBDF;">19.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.10" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.10.1" style="background-color:#FFFFFF;">12.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.11" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.11.1" style="background-color:#F7D0D5;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.12" style="background-color:#FCEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.12.1" style="background-color:#FCEBED;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.13" style="background-color:#F7D2D7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.13.1" style="background-color:#F7D2D7;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.14" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.14.1" style="background-color:#FFFFFF;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.15" style="background-color:#F4BDC4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.15.1" style="background-color:#F4BDC4;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.16" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.16.1" style="background-color:#FBEAEC;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.17" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.17.1" style="background-color:#FAE3E6;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.18" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.18.1" style="background-color:#FFFFFF;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.19" style="background-color:#FEF8F9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.19.1" style="background-color:#FEF8F9;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.20" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.20.1" style="background-color:#FFFFFF;">10.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.3.21" style="background-color:#F8D8DC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.3.21.1" style="background-color:#F8D8DC;">18.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.4.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.4.1.1">Few-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.2" style="background-color:#F9D9DE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.2.1" style="background-color:#F9D9DE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.3" style="background-color:#FAE0E4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.3.1" style="background-color:#FAE0E4;">28.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.4" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.4.1" style="background-color:#F4C0C7;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.5" style="background-color:#F5C8CE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.5.1" style="background-color:#F5C8CE;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.6" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.6.1" style="background-color:#F2B1BA;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.7" style="background-color:#F3BBC3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.7.1" style="background-color:#F3BBC3;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.8" style="background-color:#F6C9CF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.8.1" style="background-color:#F6C9CF;">23.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.9" style="background-color:#F6C9CF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.9.1" style="background-color:#F6C9CF;">23.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.10" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.10.1" style="background-color:#F4C0C7;">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.11" style="background-color:#F5C6CC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.11.1" style="background-color:#F5C6CC;">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.12" style="background-color:#FCEEF0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.12.1" style="background-color:#FCEEF0;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.13" style="background-color:#FCF0F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.13.1" style="background-color:#FCF0F2;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.14" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.4.14.1" style="background-color:#EE9CA7;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.15" style="background-color:#EFA1AB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.4.15.1" style="background-color:#EFA1AB;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.16" style="background-color:#EFA3AD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.4.16.1" style="background-color:#EFA3AD;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.17" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.17.1" style="background-color:#F2B1BA;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.18" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.18.1" style="background-color:#FBEAEC;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.19" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.19.1" style="background-color:#F8D5D9;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.20" style="background-color:#F5C4CB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.20.1" style="background-color:#F5C4CB;">21.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.4.21" style="background-color:#F6C9CF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.4.21.1" style="background-color:#F6C9CF;">20.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.5.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.5.1.1">CoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.2" style="background-color:#FEF8F9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.2.1" style="background-color:#FEF8F9;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.3" style="background-color:#F3BBC2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.3.1" style="background-color:#F3BBC2;">39.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.4" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.4.1" style="background-color:#FAE3E6;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.5" style="background-color:#FCEFF1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.5.1" style="background-color:#FCEFF1;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.6" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.6.1" style="background-color:#F6CBD1;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.7" style="background-color:#F2B6BE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.7.1" style="background-color:#F2B6BE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.8" style="background-color:#FAE0E3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.8.1" style="background-color:#FAE0E3;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.9" style="background-color:#F3B7BF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.9.1" style="background-color:#F3B7BF;">28.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.10" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.10.1" style="background-color:#F4C0C7;">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.11" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.11.1" style="background-color:#F6CBD1;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.12" style="background-color:#F1B0B9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.12.1" style="background-color:#F1B0B9;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.13" style="background-color:#F1B0B9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.13.1" style="background-color:#F1B0B9;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.14" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.14.1" style="background-color:#F7D0D5;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.15" style="background-color:#EFA1AB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.5.15.1" style="background-color:#EFA1AB;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.16" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.16.1" style="background-color:#FBEAEC;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.17" style="background-color:#F4BFC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.17.1" style="background-color:#F4BFC6;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.18" style="background-color:#F9DCE0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.18.1" style="background-color:#F9DCE0;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.19" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.19.1" style="background-color:#F3B8C0;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.20" style="background-color:#F7D2D7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.20.1" style="background-color:#F7D2D7;">19.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.5.21" style="background-color:#F2B5BD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.5.21.1" style="background-color:#F2B5BD;">24.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.6.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.6.1.1">CoT-SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.2" style="background-color:#FEFCFC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.2.1" style="background-color:#FEFCFC;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.3" style="background-color:#F4C2C8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.3.1" style="background-color:#F4C2C8;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.4" style="background-color:#FCEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.4.1" style="background-color:#FCEBED;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.5" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.5.1" style="background-color:#FFFFFF;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.6" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.6.1" style="background-color:#FBEAEC;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.7" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.6.7.1" style="background-color:#EE9CA7;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.8" style="background-color:#FAE4E7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.8.1" style="background-color:#FAE4E7;">16.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.9" style="background-color:#F1AEB7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.6.9.1" style="background-color:#F1AEB7;">30.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.10" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.10.1" style="background-color:#F4C0C7;">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.11" style="background-color:#F3BBC3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.11.1" style="background-color:#F3BBC3;">30.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.12" style="background-color:#F2B2BB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.12.1" style="background-color:#F2B2BB;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.13" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.6.13.1" style="background-color:#EE9CA7;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.14" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.14.1" style="background-color:#F3B8C0;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.15" style="background-color:#F0AAB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.15.1" style="background-color:#F0AAB4;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.16" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.16.1" style="background-color:#F6CED3;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.17" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.17.1" style="background-color:#F6CED3;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.18" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.18.1" style="background-color:#F5C6CD;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.19" style="background-color:#F4BFC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.19.1" style="background-color:#F4BFC6;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.20" style="background-color:#F7D1D6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.20.1" style="background-color:#F7D1D6;">19.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.6.21" style="background-color:#F1B0B9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.6.21.1" style="background-color:#F1B0B9;">25.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.7.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.7.1.1">MultiPersona</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.2" style="background-color:#F9DDE1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.2.1" style="background-color:#F9DDE1;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.3" style="background-color:#F0A6B0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.7.3.1" style="background-color:#F0A6B0;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.4" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.4.1" style="background-color:#FAE3E6;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.5" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.5.1" style="background-color:#F9DBDF;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.6" style="background-color:#FBE5E8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.6.1" style="background-color:#FBE5E8;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.7" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.7.1" style="background-color:#F7D0D5;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.8" style="background-color:#FBE8EB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.8.1" style="background-color:#FBE8EB;">15.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.9" style="background-color:#F2B2BB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.9.1" style="background-color:#F2B2BB;">29.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.10" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.10.1" style="background-color:#F6CBD1;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.11" style="background-color:#EFA1AC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.7.11.1" style="background-color:#EFA1AC;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.12" style="background-color:#F1ADB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.12.1" style="background-color:#F1ADB6;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.13" style="background-color:#EE9EA9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.7.13.1" style="background-color:#EE9EA9;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.14" style="background-color:#F4C2C9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.14.1" style="background-color:#F4C2C9;">17.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.15" style="background-color:#F1AFB8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.15.1" style="background-color:#F1AFB8;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.16" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.16.1" style="background-color:#FAE3E6;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.17" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.17.1" style="background-color:#F6CED3;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.18" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.18.1" style="background-color:#F6CED3;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.19" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.19.1" style="background-color:#F2B1BA;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.20" style="background-color:#F7CFD4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.20.1" style="background-color:#F7CFD4;">19.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.7.21" style="background-color:#F0A8B2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.7.21.1" style="background-color:#F0A8B2;">26.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.8.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.8.1.1">Self-Refine</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.2" style="background-color:#F7D3D8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.2.1" style="background-color:#F7D3D8;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.3" style="background-color:#F2B4BC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.3.1" style="background-color:#F2B4BC;">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.4" style="background-color:#FBE7EA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.4.1" style="background-color:#FBE7EA;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.5" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.5.1" style="background-color:#FAE3E6;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.6" style="background-color:#F8D5DA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.6.1" style="background-color:#F8D5DA;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.7" style="background-color:#EFA1AC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.8.7.1" style="background-color:#EFA1AC;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.8" style="background-color:#FBE8EB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.8.1" style="background-color:#FBE8EB;">15.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.9" style="background-color:#F3B7BF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.9.1" style="background-color:#F3B7BF;">28.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.10" style="background-color:#F5C6CC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.10.1" style="background-color:#F5C6CC;">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.11" style="background-color:#F1ACB5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.11.1" style="background-color:#F1ACB5;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.12" style="background-color:#F3BAC1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.12.1" style="background-color:#F3BAC1;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.13" style="background-color:#F2B2BB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.13.1" style="background-color:#F2B2BB;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.14" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.14.1" style="background-color:#F5C6CD;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.15" style="background-color:#F0AAB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.15.1" style="background-color:#F0AAB4;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.16" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.16.1" style="background-color:#FAE3E6;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.17" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.8.17.1" style="background-color:#EE9CA7;">17.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.18" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.18.1" style="background-color:#F6CED3;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.19" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.8.19.1" style="background-color:#EE9CA7;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.20" style="background-color:#F7CFD4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.8.20.1" style="background-color:#F7CFD4;">19.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.8.21" style="background-color:#F0A7B1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.8.21.1" style="background-color:#F0A7B1;">26.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.9.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.9.1.1">MedPrompt</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.2" style="background-color:#F9DDE1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.2.1" style="background-color:#F9DDE1;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.3" style="background-color:#F6CCD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.3.1" style="background-color:#F6CCD1;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.4" style="background-color:#FADFE3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.4.1" style="background-color:#FADFE3;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.5" style="background-color:#FCEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.5.1" style="background-color:#FCEBED;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.6" style="background-color:#F2B6BE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.6.1" style="background-color:#F2B6BE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.7" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.7.1" style="background-color:#F6CBD1;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.8" style="background-color:#FDF2F3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.8.1" style="background-color:#FDF2F3;">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.9" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.9.1" style="background-color:#F6CED3;">22.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.10" style="background-color:#FAE0E3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.10.1" style="background-color:#FAE0E3;">20.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.11" style="background-color:#F6CBD1;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.11.1" style="background-color:#F6CBD1;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.12" style="background-color:#F2B2BB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.12.1" style="background-color:#F2B2BB;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.13" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.13.1" style="background-color:#F7D0D5;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.14" style="background-color:#F4BDC4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.14.1" style="background-color:#F4BDC4;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.15" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.15.1" style="background-color:#F5C6CD;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.16" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.16.1" style="background-color:#FBEAEC;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.17" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.17.1" style="background-color:#F2B1BA;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.18" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.18.1" style="background-color:#F5C6CD;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.19" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.19.1" style="background-color:#FAE3E6;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.20" style="background-color:#F7CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.20.1" style="background-color:#F7CED3;">19.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.9.21" style="background-color:#F6CCD2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.9.21.1" style="background-color:#F6CCD2;">20.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.10.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.10.1.1">MedAgents</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.2" style="background-color:#FCEEF0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.2.1" style="background-color:#FCEEF0;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.3" style="background-color:#F1ADB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.3.1" style="background-color:#F1ADB6;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.4" style="background-color:#FBE7EA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.4.1" style="background-color:#FBE7EA;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.5" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.5.1" style="background-color:#F9DBDF;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.6" style="background-color:#FAE0E3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.6.1" style="background-color:#FAE0E3;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.7" style="background-color:#F2B6BE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.7.1" style="background-color:#F2B6BE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.8" style="background-color:#FBE8EB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.8.1" style="background-color:#FBE8EB;">15.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.9" style="background-color:#F3BCC3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.9.1" style="background-color:#F3BCC3;">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.10" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.10.1" style="background-color:#F7D0D5;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.11" style="background-color:#F4C0C7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.11.1" style="background-color:#F4C0C7;">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.12" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.12.1" style="background-color:#FFFFFF;">3.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.13" style="background-color:#FDF3F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.13.1" style="background-color:#FDF3F4;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.14" style="background-color:#F9D9DD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.14.1" style="background-color:#F9D9DD;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.15" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.15.1" style="background-color:#F3B8C0;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.16" style="background-color:#FEF8F9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.16.1" style="background-color:#FEF8F9;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.17" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.17.1" style="background-color:#FFFFFF;">3.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.18" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.18.1" style="background-color:#FFFFFF;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.19" style="background-color:#FEF8F9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.19.1" style="background-color:#FEF8F9;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.20" style="background-color:#FCF0F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.20.1" style="background-color:#FCF0F2;">13.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.10.21" style="background-color:#F6CDD3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.10.21.1" style="background-color:#F6CDD3;">20.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.11.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.11.1.1">MDAgents</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.2" style="background-color:#FDF5F6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.2.1" style="background-color:#FDF5F6;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.3" style="background-color:#F5C5CB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.3.1" style="background-color:#F5C5CB;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.4" style="background-color:#F3BCC3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.4.1" style="background-color:#F3BCC3;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.5" style="background-color:#FCEBED;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.5.1" style="background-color:#FCEBED;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.6" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.6.1" style="background-color:#FFFFFF;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.7" style="background-color:#FAE0E3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.7.1" style="background-color:#FAE0E3;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.8" style="background-color:#FCEDEF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.8.1" style="background-color:#FCEDEF;">14.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.9" style="background-color:#F7D2D7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.9.1" style="background-color:#F7D2D7;">21.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.10" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.10.1" style="background-color:#FBEAEC;">17.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.11" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.11.1" style="background-color:#F7D0D5;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.12" style="background-color:#FCF0F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.12.1" style="background-color:#FCF0F2;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.13" style="background-color:#FDF3F4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.13.1" style="background-color:#FDF3F4;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.14" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.14.1" style="background-color:#FAE3E6;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.15" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.15.1" style="background-color:#F8D5D9;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.16" style="background-color:#F9DCE0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.16.1" style="background-color:#F9DCE0;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.17" style="background-color:#FEF8F8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.17.1" style="background-color:#FEF8F8;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.18" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.18.1" style="background-color:#FAE3E6;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.19" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.19.1" style="background-color:#FFFFFF;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.20" style="background-color:#FCECEE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.20.1" style="background-color:#FCECEE;">14.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.11.21" style="background-color:#FAE2E5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.11.21.1" style="background-color:#FAE2E5;">16.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.13.1.12.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.12.1.1">SPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.2" style="background-color:#FFFFFF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.2.1" style="background-color:#FFFFFF;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.3" style="background-color:#F8D6DB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.3.1" style="background-color:#F8D6DB;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.4" style="background-color:#F2B4BC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.12.4.1" style="background-color:#F2B4BC;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.5" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.12.5.1" style="background-color:#EE9CA7;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.6" style="background-color:#FBEAEC;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.6.1" style="background-color:#FBEAEC;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.7" style="background-color:#F2B6BE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.7.1" style="background-color:#F2B6BE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.8" style="background-color:#F6CED3;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.8.1" style="background-color:#F6CED3;">22.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.9" style="background-color:#F2B2BB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.9.1" style="background-color:#F2B2BB;">29.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.10" style="background-color:#FBE5E8;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.10.1" style="background-color:#FBE5E8;">19.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.11" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.11.1" style="background-color:#F2B1BA;">32.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.12" style="background-color:#F3B7BF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.12.1" style="background-color:#F3B7BF;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.13" style="background-color:#F1ADB6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.13.1" style="background-color:#F1ADB6;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.14" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.14.1" style="background-color:#F7D0D5;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.15" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.15.1" style="background-color:#F3B8C0;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.16" style="background-color:#F5C6CD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.16.1" style="background-color:#F5C6CD;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.17" style="background-color:#F0AAB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.17.1" style="background-color:#F0AAB4;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.18" style="background-color:#F8D5D9;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.18.1" style="background-color:#F8D5D9;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.19" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.19.1" style="background-color:#F2B1BA;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.20" style="background-color:#F7D1D6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.20.1" style="background-color:#F7D1D6;">19.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.13.1.12.21" style="background-color:#F0A8B2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.12.21.1" style="background-color:#F0A8B2;">26.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.13.1.13.1.1">AFlow</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.2" style="background-color:#F9D9DE;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.2.1" style="background-color:#F9D9DE;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.3" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.13.3.1" style="background-color:#EE9CA7;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.4" style="background-color:#F9DBDF;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.4.1" style="background-color:#F9DBDF;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.5" style="background-color:#F7CFD5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.5.1" style="background-color:#F7CFD5;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.6" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.6.1" style="background-color:#F7D0D5;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.7" style="background-color:#F2B1BA;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.7.1" style="background-color:#F2B1BA;">31.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.8" style="background-color:#FBE8EB;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.8.1" style="background-color:#FBE8EB;">15.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.9" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.13.9.1" style="background-color:#EE9CA7;">34.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.10" style="background-color:#F7D0D5;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.10.1" style="background-color:#F7D0D5;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.11" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.13.11.1" style="background-color:#EE9CA7;">38.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.12" style="background-color:#F4BFC6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.12.1" style="background-color:#F4BFC6;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.13" style="background-color:#F1ABB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.13.1" style="background-color:#F1ABB4;">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.14" style="background-color:#FDF1F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.14.1" style="background-color:#FDF1F2;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.15" style="background-color:#F0AAB4;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.15.1" style="background-color:#F0AAB4;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.16" style="background-color:#FAE3E6;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.16.1" style="background-color:#FAE3E6;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.17" style="background-color:#F3B8C0;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.17.1" style="background-color:#F3B8C0;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.18" style="background-color:#FDF1F2;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.18.1" style="background-color:#FDF1F2;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.19" style="background-color:#EFA3AD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.1.13.19.1" style="background-color:#EFA3AD;">18.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.20" style="background-color:#F8D9DD;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S3.T4.13.1.13.20.1" style="background-color:#F8D9DD;">17.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r ltx_border_t" id="S3.T4.13.1.13.21" style="background-color:#EE9CA7;padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.1.13.21.1" style="background-color:#EE9CA7;">28.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different reasoning methods on a hard subset of the MEDAGENTSBENCH dataset.  It shows the accuracy (in percentage) of each method for each dataset, using GPT-40-mini and GPT-40 as base models. The best and second-best performing methods for each dataset are highlighted, providing a comparison of various reasoning approaches across multiple medical datasets.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance heatmap by methods and datasets. All tasks are evaluated on the Hard set with accuracy in % using two base models: GPT-4o-mini and GPT-4o. The best values and the second-best values are highlighted.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07459/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07459/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}