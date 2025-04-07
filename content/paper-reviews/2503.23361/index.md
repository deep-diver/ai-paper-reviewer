---
title: "Discovering Knowledge Deficiencies of Language Models on Massive Knowledge Base"
summary: "SEA: Stochastic Error Ascent efficiently discovers LLM knowledge gaps, outperforming existing methods in error detection with reduced cost."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Southern California",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23361 {{< /keyword >}}
{{< keyword icon="writer" >}} Linxin Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-02 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23361" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23361" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23361/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) often struggle to retain factual knowledge, leading to errors. Exhaustively evaluating LLMs against full-scale knowledge bases is computationally prohibitive, especially for closed-weight models. Therefore, pinpointing knowledge deficiencies is hard. Researchers typically construct static knowledge-intensive benchmarks. However, it's infeasible to curate static benchmarks that cover all knowledge, so a versatile approach is needed to uncover LLM's knowledge deficiencies. 



This paper introduces Stochastic Error Ascent (**SEA**), a scalable framework for discovering knowledge deficiencies in closed-weight LLMs under a query budget. **SEA** formulates error discovery as stochastic optimization, iteratively retrieving high-error candidates using semantic similarity to previous failures. It uses hierarchical retrieval across document and paragraph levels, and models error propagation with a relation directed acyclic graph. **SEA** uncovers more errors at a lower cost and reveals correlated failure patterns.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SEA (Stochastic Error Ascent) uncovers more knowledge errors in LLMs than existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SEA uses hierarchical retrieval and error propagation modeling for efficient error discovery. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Analysis of discovered errors reveals correlated failure patterns across LLM families. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces SEA, a framework to discover LLMs' knowledge deficiencies, which is significant for high-stakes applications. Its scalability and efficiency address the challenge of evaluating closed-weight models, offering new directions for targeted fine-tuning and better data coverage in LLM development. 

------
#### Visual Insights



![](https://arxiv.org/html/2503.23361/x1.png)

> 🔼 The figure illustrates the SEA (Stochastic Error Ascent) framework.  Starting with a knowledge base and a closed-weight language model, SEA iteratively identifies knowledge gaps.  It begins by randomly sampling a small set of questions from the knowledge base to assess the model's accuracy. Subsequent iterations leverage semantic similarity to identify additional questions likely to reveal further errors, making the process efficient.  A directed acyclic graph tracks error dependencies to highlight systematic failures. The process continues until a pre-defined budget (e.g., number of queries) is exhausted.  The final output helps pinpoint the model's specific knowledge deficiencies and patterns of errors.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overall workflow of stochastic error ascent (SEA). We search for a closed-weight model’s unknown knowledge iteratively from a given knowledge base until we reach the budget. The result from SEA can be further used to analyze the model’s unknown categories and error patterns.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1">
<tr class="ltx_tr" id="S6.tab1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.tab1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S6.tab1.1.1.1.1.1">\rowcolor</span>gray!50 <span class="ltx_text ltx_font_bold" id="S6.tab1.1.1.1.1.2">Cluster ID</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.tab1.1.1.1.2.1">Models</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.tab1.1.1.1.3.1">Main Categories</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S6.tab1.1.1.1.4.1">Error Pattern</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.tab1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.2.2.1">
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.1.1.1">gpt-4o</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.2.1.1">DeepSeek-V3</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.3.1.1">o1-mini</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">Culture and the arts</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.tab1.1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.2.4.1">
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">(1) Challenging in Chronological Analysis</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(2) Unfamiliar with Locational Details</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">(3) Issues in Pattern Recognition</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">(4) Inaccurate Data Synthesis</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">(5) Collaborative and Relational Patterns</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.tab1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">5</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S6.tab1.1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.2.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.1.1.1">Qwen2.5-72B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.2.1.1">Llama-3.3-70B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.3.1.1">R1-Distill-Llama-70B</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S6.tab1.1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.3.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Health and fitness</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Natural and physics science</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S6.tab1.1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.4.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">(1) Challenges with Chronological and Historical Data</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(2) Issues with Contextual and Performance-Related Information</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">(3) Inaccurate Interpretation of Patterns and Trends</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">(4) Over-reliance on Assumptions and Generalizations</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">(5) Difficulty with Contextual Associations and Identifications</td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an analysis of error patterns exhibited by different language models within two specific clusters (3 and 5) identified in Figure 6.  The analysis is hierarchical: it starts by examining individual question-level errors, aggregates them into paragraph-level patterns, and ultimately summarizes these patterns at the model level. This provides a detailed understanding of the types of knowledge deficiencies and systematic weaknesses present in each model within the clusters.
> <details>
> <summary>read the caption</summary>
> Table 1:  Error patterns for models in cluster 3 and 5 in Fig. 6. We aggregate error patterns from the question level to the paragraph level and finally to the model level.
> </details>





### In-depth insights


#### Error Ascent
The Error Ascent strategy, likely a key component of this research, appears to be an iterative process for identifying and rectifying weaknesses in a system, perhaps an AI model. **It probably involves intentionally introducing errors or noise to understand how the system responds, then using that insight to refine its abilities.** The "ascent" part suggests a gradual, step-by-step improvement. This approach could be particularly effective when dealing with complex tasks. In essence, Error Ascent seems to be a targeted and progressive methodology for enhancing system robustness and reliability by actively confronting and mitigating vulnerabilities. **The overall goal would be to minimize failures and maximize accuracy. This iterative method is designed for a closed-weight LM.**

#### Relation DAG
**Relation DAG**, as described in the paper, is crucial for identifying systematic weaknesses in language models (LLMs). It traces dependencies between source errors, forming a directed acyclic graph. By linking paragraphs based on semantic similarity and error propagation, the DAG helps uncover flaws localized within specific regions of the knowledge base.  The DAG prunes low-impact nodes based on cumulative errors, enhancing efficiency. This targeted approach enables a deeper understanding of how errors propagate and correlate within LLMs, offering insights beyond isolated instances of misinformation.  **Analyzing the Relation DAG provides a structured method for pinpointing vulnerabilities**, leading to more effective mitigation strategies.

#### Model Biases
Analyzing model biases is critical for understanding the limitations and potential failures of language models. Different models exhibit different biases due to variations in architecture, training data, and optimization strategies. **These biases can manifest as preferences for certain demographics, topics, or reasoning styles**, leading to unfair or inaccurate outputs. **Careful analysis can uncover these biases, potentially through techniques like counterfactual testing or probing internal representations**, enabling the development of mitigation strategies and more reliable, trustworthy models. It is important to note that all models have biases; identifying and quantifying them is the key step.

#### Scalable Defect
**Scalable Defect** in language models refers to knowledge deficiencies that persist even with increased model size and data. The paper addresses this by proposing **Stochastic Error Ascent (SEA)**, a scalable approach to uncover those flaws. SEA discovers more errors than baselines, highlighting that many LLM errors are systematic rather than random. This means **simply scaling model size won't eliminate them**; targeted interventions are needed. It's crucial to acknowledge that, as more parameters don't guarantee factual accuracy or eliminate biases, **scalable defect is a critical area for exploration**, it shows us how LLMs’ knowledge can be enhanced.

#### Evolving Bench.
**Evolving benchmarks** address limitations of static datasets. **Traditional benchmarks** can suffer from data leakage or be gamed by models, losing their diagnostic value. An **evolving benchmark** adapts over time, often through automated data generation or adversarial interaction. This can help continuously challenge models and reveal new weaknesses as they improve. The goal is a benchmark that remains relevant and informative, driving progress by exposing model limitations in a dynamic way, ensuring continued evaluation of capabilities, and providing researchers a method to evaluate model performance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23361/x2.png)

> 🔼 Figure 2 presents a comparison of the effectiveness of three different methods – Automated Capability Discovery (ACD), AutoBencher, and Stochastic Error Ascent (SEA) – in identifying knowledge deficiencies in Language Models (LLMs).  ACD and SEA are compared using the same budget, meaning the same computational resources were allocated to each. The number of errors found is represented by the number of 'failed tasks' for ACD and 'source errors' for SEA. AutoBencher is compared by keeping the number of questions generated the same as SEA, while it creates 13 benchmarks, each based on a different Wikipedia category.  The figure highlights the significant advantage of SEA in terms of both the quantity of errors detected and the cost-per-error, compared to the baseline methods. Notably, o1-mini failed in ACD due to OpenAI's prompt usage policy restrictions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of errors discovered by ACD, AutoBencher, and SEA. We compare ACD with SEA among the same budget while comparing AutoBencher among the same question size. For ACD, we summarized the number of failed tasks, and for SEA, we summarized the number of source errors. We let AutoBencher create 13 benchmarks, each of which takes one of the Wikipedia categories as an interesting topic. We let SEA search the same number of questions according to each model. o1-mini failed on ACD due to the violation of the prompt usage policy from OpenAI.
> </details>



![](https://arxiv.org/html/2503.23361/x3.png)

> 🔼 This figure displays the per-step error and cumulative error of different large language models (LLMs) throughout the iterative error discovery process of the SEA framework. The per-step error (TE(fclose)) represents the average error rate at each step, while the cumulative error (TS(fclose)) shows the total accumulated error up to that step.  The x-axis represents the step number in the SEA process, and the y-axis indicates the error rate. Each line in the plot represents a different LLM, illustrating how their error rates change as SEA progresses.  The positive correlation between error and step number demonstrates SEA’s effectiveness in uncovering LLM knowledge deficiencies. The figure visually shows that SEA gradually identifies increasingly challenging errors.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Per-step error TE⁢(fclose)subscript𝑇𝐸subscript𝑓closeT_{E}(f_{\text{close}})italic_T start_POSTSUBSCRIPT italic_E end_POSTSUBSCRIPT ( italic_f start_POSTSUBSCRIPT close end_POSTSUBSCRIPT ) and cumulative error T𝒮⁢(fclose)subscript𝑇𝒮subscript𝑓closeT_{{\mathcal{S}}}(f_{\text{close}})italic_T start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT ( italic_f start_POSTSUBSCRIPT close end_POSTSUBSCRIPT ) for each model. We observe that the errors of all models are positively related to step, indicating SEA can gradually and continually find the model’s knowledge deficiencies from the knowledge base.
> </details>



![](https://arxiv.org/html/2503.23361/x4.png)

> 🔼 This figure presents an ablation study analyzing the contribution of different components within the SEA (Stochastic Error Ascent) framework.  Three versions of SEA are compared: the complete SEA model, a version without source pruning (removing low-impact error sources), and a version employing random paragraph selection instead of the error-driven selection process.  The results show that all three components (error-driven selection, source pruning, and hierarchical retrieval) contribute equally to the overall effectiveness of SEA in discovering knowledge errors in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Ablation studies on the component contribution of SEA. We compare SEA with its two variants: without source pruning (i.e., pass the lines 10 and 11 in Alg. 1) and random selection (i.e., pass the lines 9, 10, and 11 in Alg. 1). We observe that each component contributes equally to SEA.
> </details>



![](https://arxiv.org/html/2503.23361/x5.png)

> 🔼 This figure displays a heatmap visualizing the cross-validation results between different large language models (LLMs).  The X-axis represents the LLM that generated the question subset (the 'provider'), and the Y-axis shows the LLM answering those questions (the 'testee'). Two key metrics are presented: (1) The correlation coefficient between the provider's and the testee's answers for each question, indicating the similarity of their responses; higher correlation signifies greater agreement.  (2) The testee's accuracy on the question subset provided by each provider. This represents the difficulty of the questions posed by different LLMs; higher accuracy indicates easier questions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of cross-validation between each model. X-axis indicates the subset provider (i.e., 𝒮^^𝒮\hat{{\mathcal{S}}}over^ start_ARG caligraphic_S end_ARG provider; sourced from experiments in Fig. 3), and Y-axis denotes the testee. We summarize two results: (1) correlation between testee result and provider result, and (2) accuracy of testee on each provider’s results. The higher the correlation, the more similar the answers of the two models are. Similarly, the higher the testee’s accuracy, the more challenging the provider’s question.
> </details>



![](https://arxiv.org/html/2503.23361/x6.png)

> 🔼 This figure visualizes the distribution of errors discovered by the SEA method for different language models across various categories from Wikipedia's knowledge base.  Each point represents a specific error, with color indicating the language model and shape representing the Wikipedia category the error belongs to.  The visualization uses t-SNE to reduce the dimensionality of the data for better visual representation. The plot reveals distinct clusters of errors for each model, highlighting the types of knowledge each model struggles with and providing insights into their specific knowledge deficiencies.
> <details>
> <summary>read the caption</summary>
> Figure 6: Error distribution of each testee model. We search with the same initial set from thirteen categories of Wikipedia. We visualize the results by t-SNE without a clustering algorithm. Each point in the figure denotes the corresponding model’s source error p∈𝒫source𝑝subscript𝒫sourcep\in{\mathcal{P}}_{\text{source}}italic_p ∈ caligraphic_P start_POSTSUBSCRIPT source end_POSTSUBSCRIPT. Different colors denote different models, and different markers denote different categories. We can observe natural clusters of each model discovered by SEA according to their knowledge omission areas.
> </details>



![](https://arxiv.org/html/2503.23361/x7.png)

> 🔼 Figure 7 visualizes the distribution of errors identified by the SEA algorithm across different LLMs, without pre-selecting specific topics from the Wikipedia knowledge base.  The t-SNE algorithm is employed to reduce the high-dimensional error data into a 2D representation for visualization. Each point in the graph represents a single error identified by SEA (denoted as  p∈𝒫sourcep in ewlinemathcal{P}_{source} ), with the color indicating the LLM model that made the error and the shape representing the Wikipedia category where the error occurred.  This visualization allows for a direct comparison of the error patterns of various LLMs. 
> <details>
> <summary>read the caption</summary>
> Figure 7: Error distribution of each testee model. We search with the same random initial set from Wikipedia without specifying specific topics. We visualize the results by t-SNE without a clustering algorithm. Each point in the figure denotes the corresponding model’s source error p∈𝒫source𝑝subscript𝒫sourcep\in{\mathcal{P}}_{\text{source}}italic_p ∈ caligraphic_P start_POSTSUBSCRIPT source end_POSTSUBSCRIPT. Different colors denote different models, and different markers denote different categories.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.2.2.1">
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.1.1.1">gpt-4o</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.2.1.1">DeepSeek-V3</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.2.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.2.2.1.3.1.1">o1-mini</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the computational costs associated with running eight different large language models (LLMs) over 20,000 questions.  The costs are categorized into question generation costs, inference costs (the cost of the model processing the questions), and the number of output tokens generated by each model.  A key observation is the significant difference in cost between LLMs with reasoning capabilities (DeepSeek-R1, R1-Distill-Llama-70B, and o1-mini) and those without.  Reasoning models show substantially higher costs, particularly in inference, highlighting the increased computational demands of their enhanced reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 2:  Question generation cost, inference cost, and output tokens at inference time across 20 steps (results in Fig.3; 20,000 questions in total). We can see a significant gap between reasoning models (DeepSeek-R1, R1-Distill-Llama-70B, and o1-mini) and other non-reasoning models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.2.4.1">
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">(1) Challenging in Chronological Analysis</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(2) Unfamiliar with Locational Details</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">(3) Issues in Pattern Recognition</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">(4) Inaccurate Data Synthesis</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.2.4.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.2.4.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">(5) Collaborative and Relational Patterns</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an example from the study that illustrates a case where a large language model (LLM) provides misinformation. The example focuses on a question about James B. Stump's doctoral degree year. The correct year is 2000, but the LLM incorrectly states 1998.  The table highlights the incorrect information using underlines for emphasis. This case demonstrates the types of knowledge deficiencies the research method aims to uncover and analyze.
> <details>
> <summary>read the caption</summary>
> Table 3: Example 1 for query 4. The correct doctoral year is '2000', but the misinformation incorrectly states '1998'. The incorrect information has been highlighted using underlines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.2.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.1.1.1">Qwen2.5-72B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.2.1.1">Llama-3.3-70B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.2.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.tab1.1.1.3.2.1.3.1.1">R1-Distill-Llama-70B</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an example of a question from the SEA method's evaluation, demonstrating a case where the LLM (Large Language Model) produced misinformation. The question asked in which event a specific photographic series was included. The correct answer is 'African Photography Encounters', but the LLM incorrectly identified the event as the '2019 Whitney Biennial'.  The table highlights the LLM's incorrect response by underlining the erroneous information. This example illustrates the type of knowledge deficiencies SEA is designed to uncover.
> <details>
> <summary>read the caption</summary>
> Table 4: Example 2 for query 4. The proper event is 'African Photography Encounters,' yet the misinformation erroneously identifies it as the '2019 Whitney Biennial'. The incorrect information has been highlighted using underlines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.3.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Health and fitness</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Natural and physics science</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents an example from Query 4 of the paper's experimental setup.  It showcases a question about the artist and medium of the painting 'Portrait of Tristan Tzara.' The table contrasts the correct answer (Robert Delaunay, oil on cardboard) with an incorrect response generated by a language model (Marcel Janco, oil on canvas). The incorrect parts of the language model's answer are underlined in the table to highlight the misinformation.
> <details>
> <summary>read the caption</summary>
> Table 5: Example 3 for query 4. It shows that the true artist and medium are 'Robert Delaunay, oil on cardboard', while the misinformation wrongly lists 'Marcel Janco' and 'oil on canvas'. The incorrect information has been highlighted using underlines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.tab1.1.1.3.4.1">
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">(1) Challenges with Chronological and Historical Data</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(2) Issues with Contextual and Performance-Related Information</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">(3) Inaccurate Interpretation of Patterns and Trends</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">(4) Over-reliance on Assumptions and Generalizations</td>
</tr>
<tr class="ltx_tr" id="S6.tab1.1.1.3.4.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.tab1.1.1.3.4.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">(5) Difficulty with Contextual Associations and Identifications</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an example (Example 4) of a question about the venue that hosted the exhibition 'Six Feet Under' during 2007 and 2008.  The correct answer is Deutsches Hygiene-Museum, Dresden. However, the language model incorrectly identified Kunstmuseum Bern as the venue. The table shows the original question, the correct answer, the modified question for improved clarity, and the incorrect answer given by the language model, highlighting the misinformation with underlines.
> <details>
> <summary>read the caption</summary>
> Table 6: Example 4 for query 4. In Example 4, the accurate venue is 'Deutsches Hygiene-Museum, Dresden', but the misinformation mistakenly mentions 'Kunstmuseum Bern'. The incorrect information has been highlighted using underlines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.tab1.1.1">
<tr class="ltx_tr" id="A2.tab1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_ERROR undefined" id="A2.tab1.1.1.1.1.1">\rowcolor</span>gray!50 <span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.1.2">Model Cost</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.2.1">DeepSeek-R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.3.1">R1-Distill-Llama-70B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.4.1">o1-mini</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.5.1">DeepSeek-V3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.6.1">Llama-3.3-70B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.7" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.7.1">Qwen2.5-72B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.8.1">gpt-4o-mini</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.1.9" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.tab1.1.1.1.9.1">gpt-4o</span></td>
</tr>
<tr class="ltx_tr" id="A2.tab1.1.1.2" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.1.1" style="background-color:#FFFFFF;">Generation Cost (US $)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.2.1" style="background-color:#FFFFFF;">28.163</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.3.1" style="background-color:#FFFFFF;">28.660</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.4.1" style="background-color:#FFFFFF;">31.094</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.5.1" style="background-color:#FFFFFF;">30.208</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.6.1" style="background-color:#FFFFFF;">29.776</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.7" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.7.1" style="background-color:#FFFFFF;">29.542</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.8.1" style="background-color:#FFFFFF;">28.243</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.tab1.1.1.2.9" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.2.9.1" style="background-color:#FFFFFF;">32.897</span></td>
</tr>
<tr class="ltx_tr" id="A2.tab1.1.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.1.1" style="background-color:#E6E6E6;">Inference Cost (US $)</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.2.1" style="background-color:#E6E6E6;">48.360</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.3.1" style="background-color:#E6E6E6;">7.888</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.4.1" style="background-color:#E6E6E6;">39.708</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.5.1" style="background-color:#E6E6E6;">1.261</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.6.1" style="background-color:#E6E6E6;">0.868</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.7" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.7.1" style="background-color:#E6E6E6;">0.37</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.8.1" style="background-color:#E6E6E6;">0.347</span></td>
<td class="ltx_td ltx_align_left" id="A2.tab1.1.1.3.9" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.3.9.1" style="background-color:#E6E6E6;">7.905</span></td>
</tr>
<tr class="ltx_tr" id="A2.tab1.1.1.4" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.1.1" style="background-color:#FFFFFF;">Inference Output Tokens</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.2.1" style="background-color:#FFFFFF;">19,608,736</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.3.1" style="background-color:#FFFFFF;">10,836,882</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.4.1" style="background-color:#FFFFFF;">8,507,015</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.5.1" style="background-color:#FFFFFF;">380,099</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.6.1" style="background-color:#FFFFFF;">1,024,942</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.7" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.7.1" style="background-color:#FFFFFF;">272,566</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.8.1" style="background-color:#FFFFFF;">125,117</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.tab1.1.1.4.9" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="A2.tab1.1.1.4.9.1" style="background-color:#FFFFFF;">308,145</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents an example related to Query 4 of the study, which investigates whether LLMs produce misinformation when encountering unknown knowledge.  The table focuses on an instance where an LLM incorrectly identifies the venue of an art exhibition.  Specifically, the original question asks for the venue of Clare Kenny's 'If I Was a Rich Girl' exhibition in 2019. The correct answer is 'Kunst Raum Riehen.' However, the LLM incorrectly states that the exhibition was held at 'VITRINE.' The table highlights the LLM's incorrect response in underlines for clarity.
> <details>
> <summary>read the caption</summary>
> Table 7: Example 5 for query 4. Original testing process correctly names the venue as 'Kunst Raum Riehen', in contrast to the misinformation’s incorrect attribution to 'VITRINE'.The incorrect information has been highlighted using underlines.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23361/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23361/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}