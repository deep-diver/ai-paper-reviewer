---
title: "Query and Conquer: Execution-Guided SQL Generation"
summary: "Execution-guided SQL generation enhances accuracy in text-to-SQL tasks by using execution results to select the most semantically consistent query, improving performance and reducing inference costs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Snowflake AI Research",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24364 {{< /keyword >}}
{{< keyword icon="writer" >}} Łukasz Borchmann et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24364" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24364" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24364/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models often struggle with one-shot accuracy in text-to-SQL tasks. Existing methods, like self-consistency, fall short when dealing with structurally diverse yet semantically equivalent queries. This limitation motivates exploring methods that measure equivalence at the execution level rather than relying on structural comparison, substantially narrowing the gap between pass@1 and pass@k accuracy.



To address this, the paper proposes a novel self-consistency approach tailored to SQL generation. By leveraging exact and approximate execution-based similarity metrics, the method assesses semantic equivalence directly from query outputs. This approach enables smaller models to match the performance of larger models at a fraction of the computational cost. The method integrates with existing models, offering a pathway to state-of-the-art SQL generation, improving the accuracy and efficiency of text-to-SQL tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Execution-guided self-consistency significantly improves accuracy in text-to-SQL tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Smaller, cost-effective models can match the performance of much larger models using this approach. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Partial execution and a 'patience' parameter further enhance accuracy and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces a **cost-effective method for improving SQL generation accuracy**. By leveraging execution results, the approach allows smaller models to achieve performance comparable to larger models at a fraction of the computational cost. This opens new avenues for **developing more efficient and scalable SQL generation systems**, particularly relevant in resource-constrained environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.24364/x1.png)

> 🔼 This figure presents a cost-benefit analysis of using the Qwen 2.5 Coder 7B model for text-to-SQL tasks.  It compares the accuracy achieved at various inference costs, contrasting the model's performance with and without the application of a self-consistency technique. The self-consistency method involves generating multiple query candidates (10-20 samples) and selecting the most semantically consistent one based on their execution results. The figure also includes the performance of several OpenAI models as a benchmark, illustrating the cost-effectiveness of the Qwen model when combined with the self-consistency approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Cost-accuracy analysis for Qwen 2.5 Coder 7B, with or without self-consistency (10-20 samples), compared alongside OpenAI models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS2.SSS0.Px1.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS2.SSS0.Px1.2.2.3.1.1">X</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS0.Px1.2.2.3.1.2">Y</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS0.Px1.1.1.1.2">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS0.Px1.1.1.1.1"><math alttext="\heartsuit" class="ltx_Math" display="inline" id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1"><semantics id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1a"><mi id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.SS2.SSS0.Px1.1.1.1.1.m1.1.1.cmml">♡</mi><annotation-xml encoding="MathML-Content" id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1b"><ci id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1.1.cmml" xref="S3.SS2.SSS0.Px1.1.1.1.1.m1.1.1">♡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1c">\heartsuit</annotation><annotation encoding="application/x-llamapun" id="S3.SS2.SSS0.Px1.1.1.1.1.m1.1d">♡</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.SS2.SSS0.Px1.2.2.2.2">2</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS0.Px1.2.2.2.1"><math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1"><semantics id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1a"><mi id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1.1" mathvariant="normal" xref="S3.SS2.SSS0.Px1.2.2.2.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1b"><ci id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1.1.cmml" xref="S3.SS2.SSS0.Px1.2.2.2.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S3.SS2.SSS0.Px1.2.2.2.1.m1.1d">♢</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of various text-to-SQL models' performance on the BIRD-SQL dataset.  The primary metric is accuracy (Pass@10), representing the percentage of correctly generated SQL queries within the top 10 predictions.  The table contrasts the proposed Minimum Bayes Risk (MBR) decoding method, incorporating execution-based similarity, against established baselines: greedy decoding, majority voting with normalization (Maj@10), and beam search (Beam@10). Additionally, it includes results for computationally intensive, state-of-the-art models ('Heavy Reasoners') and provides the theoretical upper bound (Pass@10).  The models' performance is assessed at different sampling budgets (Exec@10, Exec@20, Exec@30), reflecting the impact of increased query samples on accuracy. A temperature of 0.7 was used during sampling, and the evaluation was conducted on the validation subset of the BIRD-SQL dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: BIRD-SQL Accuracy (Text-to-SQLite). The proposed MBR decoding with execution similarity (exec@n𝑛nitalic_n), compared to baselines: greedy decoding, majority voting with normalization (maj@10), beam search (beam@10), theoretical maximum (pass@10), and heavy reasoning LLMs. Samplings with temp=0.7temp0.7\mathrm{temp}=0.7roman_temp = 0.7, validation subset.
> </details>





### In-depth insights


#### Exec-Guided SQL
**Execution-Guided SQL generation** is a novel approach to enhance text-to-SQL accuracy. It leverages **execution results** to select semantically consistent queries from multiple candidates, surpassing computationally intensive reasoning methods with smaller models. This method uses **exact and approximate execution-based similarity metrics** to assess query output equivalence. Integrating seamlessly with existing models, it refines complex queries through **execution-based self-consistency**, narrowing the gap between pass@1 and pass@k accuracy, thus offering a practical, scalable route to state-of-the-art SQL generation and significantly reducing inference costs.

#### MBR for Text2SQL
While the paper doesn't explicitly contain a heading titled 'MBR for Text2SQL', its discussion of Minimum Bayes Risk (MBR) decoding is highly relevant to Text2SQL. The core idea is to **optimize for expected utility** rather than directly maximizing probability. In Text2SQL, this means selecting a SQL query that's most 'average' or consistent with other plausible queries, given some metric of similarity. **Execution similarity** is introduced to address this, with a method of utilizing semantic correctness based on behavior. This **differs from textual similarity**, which fails to see equivalence where queries vary structurally. This MBR approach aims to improve the 'pass@k' accuracy by focusing on real semantic equivalence through an actual behavior of generated SQL statements. By moving away from superficial query structure to semantic validation at the execution level, a **much more substantial narrowing of the gap** between pass@1 and pass@k accuracy is possible and attainable.

#### Partial Queries
It seems like the authors are exploring the concept of **partially executable queries**, specifically in the context of SQL generation. This likely involves breaking down complex queries into smaller, self-contained units that can be executed independently. **Prefix executability**, as mentioned with PipeSQL, would be a key property here. This approach potentially allows for incremental validation and refinement during query generation. Instead of generating a full, complex query at once and only then checking its correctness, the system could execute parts of it along the way, ensuring that each step produces valid and meaningful results. This is likely intended to improve the overall accuracy and robustness of the generated queries, especially when dealing with complex data structures or ambiguous natural language input. By leveraging the results of these partial executions to guide the subsequent steps in the generation process. This aligns with the overall theme of the paper, which emphasizes execution-guided methods for SQL generation.

#### Error Analysis
Based on the paper's exploration of SQL generation, a thorough error analysis is crucial. The study likely categorizes errors into **dialectical mismatches**, where generated queries, though logically sound, fail due to database-specific syntax. **Schema linking errors** are also prominent, stemming from incorrect associations between natural language and database elements, leading to hallucinated or misidentified columns/tables. **Data type errors**, **aggregation errors**, **logical form errors** further complicate accurate SQL generation. A detailed error analysis would reveal the specific weaknesses of the models, indicating areas for improvement in training data or model architecture. **Analyzing the frequency of each error** provides valuable insight for targeted improvements, and comparing error distributions across different model sizes sheds light on scalability and generalization challenges.

#### Scaling Limits
While the paper doesn't explicitly address 'Scaling Limits,' we can infer potential bottlenecks in execution-guided SQL generation. **Computational cost** increases with model size and the number of samples. **Data transfer** between the model and execution environment presents latency challenges. **Memory constraints** limit batch sizes for execution, requiring clever optimization. Furthermore, execution-guided methods will eventually be bottlenecked by the **quality of the underlying LLM**, and **reach a point where the diversity of the outputs is not enough**. More work should be focused on increasing the range of SQL variants generated.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.24364/x2.png)

> 🔼 This figure illustrates the execution-guided SQL generation process.  It begins by sampling several different SQL queries (1). Each query is then executed, and the resulting dataframes are compared pairwise to assess their similarity (2). Finally, the query with the highest average similarity across all comparisons is selected as the best-performing query (3). This method leverages the execution results to measure semantic equivalence directly, rather than relying on superficial structural similarities, improving the accuracy of SQL generation, especially for queries with multiple correct but structurally different representations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Execution-Guided SQL Generation.
> </details>



![](https://arxiv.org/html/2503.24364/x3.png)

> 🔼 The figure illustrates the advantage of using PipeSQL for execution-guided self-consistency. PipeSQL allows for evaluating the validity of query prefixes, which enables applying self-consistency at intermediate steps during query generation.  Instead of generating and evaluating complete SQL queries, the method samples multiple query prefixes (pipes) and selects the most consistent one based on execution results. This approach is then iteratively continued by sampling variants of the next pipe, enhancing accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 3: PipeSQL dialect has a property that each query prefix (up to the pipe sequence |>) is also a valid query, making it possible to apply execution-based self-consistency in the middle of the generation process. Instead of sampling n𝑛nitalic_n complete SQL sequences, we sample n𝑛nitalic_n pipes and stop the generation process. Then, we pick the most consistent pipe and continue the generation sampling n𝑛nitalic_n variants of the next pipe.
> </details>



![](https://arxiv.org/html/2503.24364/x4.png)

> 🔼 This figure displays the impact of different numbers of samples and temperatures on the effectiveness of self-consistency in improving the accuracy of various large language models (LLMs) in SQL generation tasks.  The models compared include Gemini 2.0 Flash, Llama 3.3 70B, Codestral, and Qwen 2.5 Coder 7B. The x-axis represents the number of samples used in the self-consistency method, while the y-axis shows the resulting accuracy. Different lines correspond to different temperatures.  The figure illustrates how self-consistency gains generally increase with the number of samples, and how this relationship varies depending on the model and the temperature setting.
> <details>
> <summary>read the caption</summary>
> Figure 4: Self-consistency gains for various sample sizes, temperatures, and models (Gemini 2.0 Flash, Llama 3.3 70B, Codestral, Qwen 2.5 Coder 7B).
> </details>



![](https://arxiv.org/html/2503.24364/x5.png)

> 🔼 This figure displays the impact of using self-consistency instead of greedy decoding.  It shows how many outputs are improved, remain incorrect, or become incorrect when using self-consistency.  The terms 'valid' and 'invalid' refer to whether the generated SQL code is executable, while 'correct' and 'incorrect' indicate whether the code produces the correct result according to the gold standard (the ideal correct answer). The figure compares the results for two models: DeepSeek Coder 33B and GPT-40 mini, highlighting the effect of self-consistency on improving the correctness of the generated SQL code. 
> <details>
> <summary>read the caption</summary>
> Figure 5: Effect of replacing outputs produced under greedy decoding by self-consistency outputs. Valid and invalid refer to executability, whereas correct and incorrect—conforming to the gold standard.
> </details>



![](https://arxiv.org/html/2503.24364/x6.png)

> 🔼 Figure 6 is a bar chart visualizing the top reasons why DeepSeek Coder and GPT-4o mini models generated incorrect SQL queries on the BIRD-SQL dataset. It contrasts the error types produced by the standard greedy decoding approach and the improved self-consistency method.  The chart directly compares the frequency of errors such as schema linking issues, logical form problems, and projection mistakes, offering a quantitative insight into how self-consistency addresses typical SQL generation inaccuracies.
> <details>
> <summary>read the caption</summary>
> Figure 6: Top problems explaining why BIRD-SQL generations of DeepSeek Coder and GPT-4o mini were incorrect. Greedy decoding compared to self-consistency outputs.
> </details>



![](https://arxiv.org/html/2503.24364/x7.png)

> 🔼 This figure displays the impact of replacing outputs generated using greedy decoding with those obtained via self-consistency.  It shows the percentage of outputs that fall into four categories: valid outputs improved by self-consistency, invalid outputs corrected by self-consistency, invalid outputs that remained incorrect, and valid outputs that became incorrect.  The figure presents this breakdown separately for two models: DeepSeek Coder 33B and GPT-40 mini, highlighting the effectiveness of the self-consistency method in improving the quality of the generated outputs.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.24364/x8.png)

> 🔼 This figure displays the results of applying execution-based self-consistency to various models.  Specifically, it shows the impact on accuracy (y-axis) at different inference cost levels (x-axis), comparing different models' performance with and without this technique.  The goal is to demonstrate the cost-effectiveness of using execution-based self-consistency to improve SQL query generation accuracy. Note that the specific models and their performance metrics are shown in the figure itself.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS2.SSS0.Px1.2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS0.Px1.2.3.1.1.1">X</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.3.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS0.Px1.2.3.2.1.1">1</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.3.3.2">
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS0.Px1.2.3.3.2.1">2</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS0.Px1.2.3.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS0.Px1.2.3.4.3.1">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating different approaches to improving SQL generation accuracy on the BIRD-SQL dataset using the PipeSQL dialect.  It compares the performance of greedy decoding (a baseline) against three self-consistency methods: standard execution-based self-consistency, partial self-consistency, and a variant of partial self-consistency that incorporates a 'patience' parameter. The table shows the accuracy achieved by each method, highlighting the impact of different self-consistency strategies on the overall performance of SQL generation in the context of partial query executability.
> <details>
> <summary>read the caption</summary>
> Table 2: BIRD-SQL Accuracy (Text-to-PipeSQL). Greedy decoding results compared to ten samples budged with standard execution-based self-consistency, partial self-consistency, or its variant with patience.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.58">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.58.59.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.58.59.1.1" rowspan="2" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.58.59.1.2" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.2.1">Bound</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.58.59.1.3" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.3.1">Baseline Scores</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.58.59.1.4" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.4.1">Exec@10</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.58.59.1.5" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.5.1">Exec@20</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.58.59.1.6" style="padding:0.75pt 3.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.58.59.1.6.1">Exec@30</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.58.60.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.58.60.2.1" style="padding:0.75pt 3.3pt;">Pass@10</th>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.2" style="padding:0.75pt 3.3pt;">Greedy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.3" style="padding:0.75pt 3.3pt;">Maj@10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.4" style="padding:0.75pt 3.3pt;">Beam@10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.5" style="padding:0.75pt 3.3pt;">Approx.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.58.60.2.6" style="padding:0.75pt 3.3pt;">Exact</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.7" style="padding:0.75pt 3.3pt;">Approx.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.8" style="padding:0.75pt 3.3pt;">Exact</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.9" style="padding:0.75pt 3.3pt;">Approx.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.60.2.10" style="padding:0.75pt 3.3pt;">Exact</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.2" style="padding:0.75pt 3.3pt;">Llama 3.2 3B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.1" style="padding:0.75pt 3.3pt;"><math alttext="43.5" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mn id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml">43.5</mn><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><cn id="S3.T1.1.1.1.m1.1.1.cmml" type="float" xref="S3.T1.1.1.1.m1.1.1">43.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">43.5</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">43.5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3" style="background-color:#F5FAFD;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.3.1" style="background-color:#F5FAFD;"><span class="ltx_text" id="S3.T1.1.1.3.1.1" style="color:#335479;">18.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4" style="background-color:#E5F3FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.1" style="background-color:#E5F3FA;"><span class="ltx_text" id="S3.T1.1.1.4.1.1" style="color:#335479;">20.2</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.5" style="background-color:#E7F4FB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.5.1" style="background-color:#E7F4FB;"><span class="ltx_text" id="S3.T1.1.1.5.1.1" style="color:#335479;">20.0</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6" style="background-color:#90CCEC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.1" style="background-color:#90CCEC;"><span class="ltx_text" id="S3.T1.1.1.6.1.1" style="color:#335479;">29.1</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.7" style="background-color:#B1DBF2;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.1" style="background-color:#B1DBF2;"><span class="ltx_text" id="S3.T1.1.1.7.1.1" style="color:#335479;">25.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8" style="background-color:#72BEE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.1" style="background-color:#72BEE8;"><span class="ltx_text" id="S3.T1.1.1.8.1.1" style="color:#335479;">32.2</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9" style="background-color:#75C0E8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.9.1" style="background-color:#75C0E8;"><span class="ltx_text" id="S3.T1.1.1.9.1.1" style="color:#335479;">31.8</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10" style="background-color:#5BB4E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.1" style="background-color:#5BB4E4;"><span class="ltx_text" id="S3.T1.1.1.10.1.1" style="color:#335479;">34.5</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.1.1.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.1.1.11.1.1" style="color:#0D2235;">34.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.2.2" style="padding:0.75pt 3.3pt;">Qwen 2.5 Coder 3B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.2.1" style="padding:0.75pt 3.3pt;"><math alttext="57.7" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mn id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml">57.7</mn><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><cn id="S3.T1.2.2.1.m1.1.1.cmml" type="float" xref="S3.T1.2.2.1.m1.1.1">57.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">57.7</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">57.7</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.3" style="background-color:#F5FAFD;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.3.1" style="background-color:#F5FAFD;"><span class="ltx_text" id="S3.T1.2.2.3.1.1" style="color:#335479;">30.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.4" style="background-color:#E1F1FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.4.1" style="background-color:#E1F1FA;"><span class="ltx_text" id="S3.T1.2.2.4.1.1" style="color:#335479;">32.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.5" style="background-color:#CBE7F6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.5.1" style="background-color:#CBE7F6;"><span class="ltx_text" id="S3.T1.2.2.5.1.1" style="color:#335479;">34.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.6" style="background-color:#86C7EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.6.1" style="background-color:#86C7EB;"><span class="ltx_text" id="S3.T1.2.2.6.1.1" style="color:#335479;">42.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.2.7" style="background-color:#9BD1EE;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.7.1" style="background-color:#9BD1EE;"><span class="ltx_text" id="S3.T1.2.2.7.1.1" style="color:#335479;">40.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.8" style="background-color:#6BBBE6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.8.1" style="background-color:#6BBBE6;"><span class="ltx_text" id="S3.T1.2.2.8.1.1" style="color:#335479;">45.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.9" style="background-color:#6CBCE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.9.1" style="background-color:#6CBCE7;"><span class="ltx_text" id="S3.T1.2.2.9.1.1" style="color:#335479;">45.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.10" style="background-color:#66B9E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.10.1" style="background-color:#66B9E6;"><span class="ltx_text" id="S3.T1.2.2.10.1.1" style="color:#335479;">46.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.2.2.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.2.2.11.1.1" style="color:#0D2235;">47.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.3.2" style="padding:0.75pt 3.3pt;">Qwen 2.5 Coder 7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.3.1" style="padding:0.75pt 3.3pt;"><math alttext="67.9" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mn id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml">67.9</mn><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><cn id="S3.T1.3.3.1.m1.1.1.cmml" type="float" xref="S3.T1.3.3.1.m1.1.1">67.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">67.9</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">67.9</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3" style="background-color:#F0F8FC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.3.1" style="background-color:#F0F8FC;"><span class="ltx_text" id="S3.T1.3.3.3.1.1" style="color:#335479;background-color:#F0F8FC;">44.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.4" style="background-color:#DEF0F9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.4.1" style="background-color:#DEF0F9;"><span class="ltx_text" id="S3.T1.3.3.4.1.1" style="color:#335479;">45.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5" style="background-color:#DEF0F9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.5.1" style="background-color:#DEF0F9;"><span class="ltx_text" id="S3.T1.3.3.5.1.1" style="color:#335479;">45.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6" style="background-color:#8AC9EC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.6.1" style="background-color:#8AC9EC;"><span class="ltx_text" id="S3.T1.3.3.6.1.1" style="color:#335479;">51.3</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.7" style="background-color:#84C7EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.7.1" style="background-color:#84C7EB;"><span class="ltx_text" id="S3.T1.3.3.7.1.1" style="color:#335479;">51.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8" style="background-color:#78C1E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.8.1" style="background-color:#78C1E9;"><span class="ltx_text" id="S3.T1.3.3.8.1.1" style="color:#335479;">52.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9" style="background-color:#67B9E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.9.1" style="background-color:#67B9E6;"><span class="ltx_text" id="S3.T1.3.3.9.1.1" style="color:#335479;">53.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10" style="background-color:#71BEE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.10.1" style="background-color:#71BEE7;"><span class="ltx_text" id="S3.T1.3.3.10.1.1" style="color:#335479;">53.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.3.3.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.3.3.11.1.1" style="color:#0D2235;">54.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.2" style="padding:0.75pt 3.3pt;">Llama 3.1 8B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.4.1" style="padding:0.75pt 3.3pt;"><math alttext="62.1" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><mn id="S3.T1.4.4.1.m1.1.1" xref="S3.T1.4.4.1.m1.1.1.cmml">62.1</mn><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><cn id="S3.T1.4.4.1.m1.1.1.cmml" type="float" xref="S3.T1.4.4.1.m1.1.1">62.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">62.1</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">62.1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.3" style="background-color:#F5FAFD;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.3.1" style="background-color:#F5FAFD;"><span class="ltx_text" id="S3.T1.4.4.3.1.1" style="color:#335479;">32.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4" style="background-color:#E7F4FB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.4.1" style="background-color:#E7F4FB;"><span class="ltx_text" id="S3.T1.4.4.4.1.1" style="color:#335479;">34.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5" style="background-color:#E1F1FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.5.1" style="background-color:#E1F1FA;"><span class="ltx_text" id="S3.T1.4.4.5.1.1" style="color:#335479;">34.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6" style="background-color:#90CCED;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.6.1" style="background-color:#90CCED;"><span class="ltx_text" id="S3.T1.4.4.6.1.1" style="color:#335479;">43.1</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.4.7" style="background-color:#8CCAEC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.7.1" style="background-color:#8CCAEC;"><span class="ltx_text" id="S3.T1.4.4.7.1.1" style="color:#335479;">43.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8" style="background-color:#82C5EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.8.1" style="background-color:#82C5EA;"><span class="ltx_text" id="S3.T1.4.4.8.1.1" style="color:#335479;">44.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9" style="background-color:#65B8E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.9.1" style="background-color:#65B8E6;"><span class="ltx_text" id="S3.T1.4.4.9.1.1" style="color:#335479;">47.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10" style="background-color:#7EC4EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.10.1" style="background-color:#7EC4EA;"><span class="ltx_text" id="S3.T1.4.4.10.1.1" style="color:#335479;">45.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.4.4.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.4.4.11.1.1" style="color:#0D2235;">48.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.5.2" style="padding:0.75pt 3.3pt;">Gemma 3 12B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.5.5.1" style="padding:0.75pt 3.3pt;"><math alttext="64.9" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mn id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml">64.9</mn><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><cn id="S3.T1.5.5.1.m1.1.1.cmml" type="float" xref="S3.T1.5.5.1.m1.1.1">64.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">64.9</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">64.9</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.3" style="background-color:#D9EDF8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.3.1" style="background-color:#D9EDF8;"><span class="ltx_text" id="S3.T1.5.5.3.1.1" style="color:#335479;">49.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.4" style="background-color:#9AD0EE;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.4.1" style="background-color:#9AD0EE;"><span class="ltx_text" id="S3.T1.5.5.4.1.1" style="color:#335479;">52.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5" style="background-color:#E5F3FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.5.1" style="background-color:#E5F3FA;"><span class="ltx_text" id="S3.T1.5.5.5.1.1" style="color:#335479;">49.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.6" style="background-color:#81C5EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.6.1" style="background-color:#81C5EA;"><span class="ltx_text" id="S3.T1.5.5.6.1.1" style="color:#335479;">53.2</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.7" style="background-color:#86C7EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.7.1" style="background-color:#86C7EB;"><span class="ltx_text" id="S3.T1.5.5.7.1.1" style="color:#335479;">53.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8" style="background-color:#5BB4E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.8.1" style="background-color:#5BB4E4;"><span class="ltx_text" id="S3.T1.5.5.8.1.1" style="color:#335479;">54.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.9" style="background-color:#6FBDE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.9.1" style="background-color:#6FBDE7;"><span class="ltx_text" id="S3.T1.5.5.9.1.1" style="color:#335479;">53.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.10.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.5.5.10.1.1" style="color:#0D2235;">54.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11" style="background-color:#5EB5E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.5.5.11.1" style="background-color:#5EB5E4;"><span class="ltx_text" id="S3.T1.5.5.11.1.1" style="color:#335479;">54.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.6.2" style="padding:0.75pt 3.3pt;">Qwen 2.5 Coder 14B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.6.6.1" style="padding:0.75pt 3.3pt;"><math alttext="71.5" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1"><semantics id="S3.T1.6.6.1.m1.1a"><mn id="S3.T1.6.6.1.m1.1.1" xref="S3.T1.6.6.1.m1.1.1.cmml">71.5</mn><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><cn id="S3.T1.6.6.1.m1.1.1.cmml" type="float" xref="S3.T1.6.6.1.m1.1.1">71.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">71.5</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">71.5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.3" style="background-color:#B6DDF3;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.3.1" style="background-color:#B6DDF3;"><span class="ltx_text" id="S3.T1.6.6.3.1.1" style="color:#335479;">54.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.4" style="background-color:#B1DBF2;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.4.1" style="background-color:#B1DBF2;"><span class="ltx_text" id="S3.T1.6.6.4.1.1" style="color:#335479;">54.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5" style="background-color:#E5F3FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.5.1" style="background-color:#E5F3FA;"><span class="ltx_text" id="S3.T1.6.6.5.1.1" style="color:#335479;">52.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6" style="background-color:#7FC4EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.6.1" style="background-color:#7FC4EA;"><span class="ltx_text" id="S3.T1.6.6.6.1.1" style="color:#335479;">56.8</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.7" style="background-color:#75C0E8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.7.1" style="background-color:#75C0E8;"><span class="ltx_text" id="S3.T1.6.6.7.1.1" style="color:#335479;">57.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8" style="background-color:#70BDE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.8.1" style="background-color:#70BDE7;"><span class="ltx_text" id="S3.T1.6.6.8.1.1" style="color:#335479;">57.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.9" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.9.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.6.6.9.1.1" style="color:#0D2235;">58.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.10" style="background-color:#65B8E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.10.1" style="background-color:#65B8E6;"><span class="ltx_text" id="S3.T1.6.6.10.1.1" style="color:#335479;">57.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.6.6.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.6.6.11.1.1" style="color:#0D2235;">58.3</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.7.2" style="padding:0.75pt 3.3pt;">Codestral 22B <span class="ltx_text" id="S3.T1.7.7.2.1" style="color:#335479;">v0.1</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.7.7.1" style="padding:0.75pt 3.3pt;"><math alttext="63.5" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.1"><semantics id="S3.T1.7.7.1.m1.1a"><mn id="S3.T1.7.7.1.m1.1.1" xref="S3.T1.7.7.1.m1.1.1.cmml">63.5</mn><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.1b"><cn id="S3.T1.7.7.1.m1.1.1.cmml" type="float" xref="S3.T1.7.7.1.m1.1.1">63.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.1c">63.5</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.1d">63.5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.3" style="background-color:#EAF5FB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.3.1" style="background-color:#EAF5FB;"><span class="ltx_text" id="S3.T1.7.7.3.1.1" style="color:#335479;">45.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.4" style="background-color:#AED9F1;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.4.1" style="background-color:#AED9F1;"><span class="ltx_text" id="S3.T1.7.7.4.1.1" style="color:#335479;">48.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.5" style="background-color:#DEF0F9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.5.1" style="background-color:#DEF0F9;"><span class="ltx_text" id="S3.T1.7.7.5.1.1" style="color:#335479;">46.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.6" style="background-color:#85C7EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.6.1" style="background-color:#85C7EB;"><span class="ltx_text" id="S3.T1.7.7.6.1.1" style="color:#335479;">50.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.7.7" style="background-color:#77C0E8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.7.1" style="background-color:#77C0E8;"><span class="ltx_text" id="S3.T1.7.7.7.1.1" style="color:#335479;">51.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.8" style="background-color:#7DC3E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.8.1" style="background-color:#7DC3E9;"><span class="ltx_text" id="S3.T1.7.7.8.1.1" style="color:#335479;">51.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.9" style="background-color:#63B7E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.9.1" style="background-color:#63B7E5;"><span class="ltx_text" id="S3.T1.7.7.9.1.1" style="color:#335479;">52.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.10" style="background-color:#71BEE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.10.1" style="background-color:#71BEE7;"><span class="ltx_text" id="S3.T1.7.7.10.1.1" style="color:#335479;">51.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.7.7.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.7.7.11.1.1" style="color:#0D2235;">52.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.2" style="padding:0.75pt 3.3pt;">Gemma 3 27B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.8.1" style="padding:0.75pt 3.3pt;"><math alttext="66.3" class="ltx_Math" display="inline" id="S3.T1.8.8.1.m1.1"><semantics id="S3.T1.8.8.1.m1.1a"><mn id="S3.T1.8.8.1.m1.1.1" xref="S3.T1.8.8.1.m1.1.1.cmml">66.3</mn><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.1.m1.1b"><cn id="S3.T1.8.8.1.m1.1.1.cmml" type="float" xref="S3.T1.8.8.1.m1.1.1">66.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.1.m1.1c">66.3</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.1.m1.1d">66.3</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.3" style="background-color:#DAEEF9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.3.1" style="background-color:#DAEEF9;"><span class="ltx_text" id="S3.T1.8.8.3.1.1" style="color:#335479;">53.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.4" style="background-color:#84C6EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.4.1" style="background-color:#84C6EB;"><span class="ltx_text" id="S3.T1.8.8.4.1.1" style="color:#335479;">55.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.5" style="background-color:#A4D5F0;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.5.1" style="background-color:#A4D5F0;"><span class="ltx_text" id="S3.T1.8.8.5.1.1" style="color:#335479;">54.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.6" style="background-color:#72BEE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.6.1" style="background-color:#72BEE8;"><span class="ltx_text" id="S3.T1.8.8.6.1.1" style="color:#335479;">56.0</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.8.7" style="background-color:#80C5EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.7.1" style="background-color:#80C5EA;"><span class="ltx_text" id="S3.T1.8.8.7.1.1" style="color:#335479;">55.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8" style="background-color:#5CB4E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.8.1" style="background-color:#5CB4E4;"><span class="ltx_text" id="S3.T1.8.8.8.1.1" style="color:#335479;">56.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.9" style="background-color:#67B9E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.9.1" style="background-color:#67B9E6;"><span class="ltx_text" id="S3.T1.8.8.9.1.1" style="color:#335479;">56.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.10" style="background-color:#5CB4E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.10.1" style="background-color:#5CB4E4;"><span class="ltx_text" id="S3.T1.8.8.10.1.1" style="color:#335479;">56.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.8.8.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.8.8.11.1.1" style="color:#0D2235;">56.7</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.9.2" style="padding:0.75pt 3.3pt;">Qwen 2.5 Coder 32B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.9.1" style="padding:0.75pt 3.3pt;"><math alttext="71.1" class="ltx_Math" display="inline" id="S3.T1.9.9.1.m1.1"><semantics id="S3.T1.9.9.1.m1.1a"><mn id="S3.T1.9.9.1.m1.1.1" xref="S3.T1.9.9.1.m1.1.1.cmml">71.1</mn><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.1.m1.1b"><cn id="S3.T1.9.9.1.m1.1.1.cmml" type="float" xref="S3.T1.9.9.1.m1.1.1">71.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.1.m1.1c">71.1</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.1.m1.1d">71.1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.3" style="background-color:#D0E9F7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.3.1" style="background-color:#D0E9F7;"><span class="ltx_text" id="S3.T1.9.9.3.1.1" style="color:#335479;">55.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.4" style="background-color:#C7E5F5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.4.1" style="background-color:#C7E5F5;"><span class="ltx_text" id="S3.T1.9.9.4.1.1" style="color:#335479;">55.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.5" style="background-color:#D4EBF8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.5.1" style="background-color:#D4EBF8;"><span class="ltx_text" id="S3.T1.9.9.5.1.1" style="color:#335479;">54.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.6" style="background-color:#98D0EE;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.6.1" style="background-color:#98D0EE;"><span class="ltx_text" id="S3.T1.9.9.6.1.1" style="color:#335479;">56.3</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.9.7" style="background-color:#76C0E8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.7.1" style="background-color:#76C0E8;"><span class="ltx_text" id="S3.T1.9.9.7.1.1" style="color:#335479;">57.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.8" style="background-color:#7FC4EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.8.1" style="background-color:#7FC4EA;"><span class="ltx_text" id="S3.T1.9.9.8.1.1" style="color:#335479;">56.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9" style="background-color:#61B6E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.9.1" style="background-color:#61B6E5;"><span class="ltx_text" id="S3.T1.9.9.9.1.1" style="color:#335479;">57.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.10" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.10.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.9.9.10.1.1" style="color:#0D2235;">57.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.11" style="background-color:#61B6E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.9.9.11.1" style="background-color:#61B6E5;"><span class="ltx_text" id="S3.T1.9.9.11.1.1" style="color:#335479;">57.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.10.10.2" style="padding:0.75pt 3.3pt;">DeepSeek Coder 33B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.1" style="padding:0.75pt 3.3pt;"><math alttext="63.4" class="ltx_Math" display="inline" id="S3.T1.10.10.1.m1.1"><semantics id="S3.T1.10.10.1.m1.1a"><mn id="S3.T1.10.10.1.m1.1.1" xref="S3.T1.10.10.1.m1.1.1.cmml">63.4</mn><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.1.m1.1b"><cn id="S3.T1.10.10.1.m1.1.1.cmml" type="float" xref="S3.T1.10.10.1.m1.1.1">63.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.1.m1.1c">63.4</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.1.m1.1d">63.4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.3" style="background-color:#F0F8FC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.3.1" style="background-color:#F0F8FC;"><span class="ltx_text" id="S3.T1.10.10.3.1.1" style="color:#335479;background-color:#F0F8FC;">40.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.4" style="background-color:#BCE0F4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.4.1" style="background-color:#BCE0F4;"><span class="ltx_text" id="S3.T1.10.10.4.1.1" style="color:#335479;">43.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.5" style="background-color:#D7EDF8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.5.1" style="background-color:#D7EDF8;"><span class="ltx_text" id="S3.T1.10.10.5.1.1" style="color:#335479;">41.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.6" style="background-color:#91CDED;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.6.1" style="background-color:#91CDED;"><span class="ltx_text" id="S3.T1.10.10.6.1.1" style="color:#335479;">46.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.7" style="background-color:#81C5EA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.7.1" style="background-color:#81C5EA;"><span class="ltx_text" id="S3.T1.10.10.7.1.1" style="color:#335479;">47.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.8" style="background-color:#76C0E8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.8.1" style="background-color:#76C0E8;"><span class="ltx_text" id="S3.T1.10.10.8.1.1" style="color:#335479;">48.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.9" style="background-color:#64B8E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.9.1" style="background-color:#64B8E5;"><span class="ltx_text" id="S3.T1.10.10.9.1.1" style="color:#335479;">49.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10" style="background-color:#61B7E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.10.1" style="background-color:#61B7E5;"><span class="ltx_text" id="S3.T1.10.10.10.1.1" style="color:#335479;">49.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.10.10.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.10.10.11.1.1" style="color:#0D2235;">50.5</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.11.11.2" style="padding:0.75pt 3.3pt;">Llama 3.3 70B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.11.11.1" style="padding:0.75pt 3.3pt;"><math alttext="67.9" class="ltx_Math" display="inline" id="S3.T1.11.11.1.m1.1"><semantics id="S3.T1.11.11.1.m1.1a"><mn id="S3.T1.11.11.1.m1.1.1" xref="S3.T1.11.11.1.m1.1.1.cmml">67.9</mn><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.1.m1.1b"><cn id="S3.T1.11.11.1.m1.1.1.cmml" type="float" xref="S3.T1.11.11.1.m1.1.1">67.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.1.m1.1c">67.9</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.1.m1.1d">67.9</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.3" style="background-color:#DBEEF9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.3.1" style="background-color:#DBEEF9;"><span class="ltx_text" id="S3.T1.11.11.3.1.1" style="color:#335479;">53.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.4" style="background-color:#91CCED;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.4.1" style="background-color:#91CCED;"><span class="ltx_text" id="S3.T1.11.11.4.1.1" style="color:#335479;">55.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.5" style="background-color:#B8DEF3;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.5.1" style="background-color:#B8DEF3;"><span class="ltx_text" id="S3.T1.11.11.5.1.1" style="color:#335479;">54.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.6" style="background-color:#86C8EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.6.1" style="background-color:#86C8EB;"><span class="ltx_text" id="S3.T1.11.11.6.1.1" style="color:#335479;">56.1</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.7" style="background-color:#75BFE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.7.1" style="background-color:#75BFE8;"><span class="ltx_text" id="S3.T1.11.11.7.1.1" style="color:#335479;">56.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.8" style="background-color:#6ABBE6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.8.1" style="background-color:#6ABBE6;"><span class="ltx_text" id="S3.T1.11.11.8.1.1" style="color:#335479;">56.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.9" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.9.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.11.11.9.1.1" style="color:#0D2235;">57.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.10" style="background-color:#71BEE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.10.1" style="background-color:#71BEE8;"><span class="ltx_text" id="S3.T1.11.11.10.1.1" style="color:#335479;">56.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11" style="background-color:#60B6E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.11.11.11.1" style="background-color:#60B6E5;"><span class="ltx_text" id="S3.T1.11.11.11.1.1" style="color:#335479;">57.2</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.2" style="padding:0.75pt 3.3pt;">Mistral Large <span class="ltx_text" id="S3.T1.12.12.2.1" style="color:#335479;">2411</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.12.12.1" style="padding:0.75pt 3.3pt;"><math alttext="66.1" class="ltx_Math" display="inline" id="S3.T1.12.12.1.m1.1"><semantics id="S3.T1.12.12.1.m1.1a"><mn id="S3.T1.12.12.1.m1.1.1" xref="S3.T1.12.12.1.m1.1.1.cmml">66.1</mn><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.1.m1.1b"><cn id="S3.T1.12.12.1.m1.1.1.cmml" type="float" xref="S3.T1.12.12.1.m1.1.1">66.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.1.m1.1c">66.1</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.1.m1.1d">66.1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.3" style="background-color:#ACD9F1;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.3.1" style="background-color:#ACD9F1;"><span class="ltx_text" id="S3.T1.12.12.3.1.1" style="color:#335479;">53.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.4" style="background-color:#A6D6F0;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.4.1" style="background-color:#A6D6F0;"><span class="ltx_text" id="S3.T1.12.12.4.1.1" style="color:#335479;">53.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.5" style="background-color:#CBE7F6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.5.1" style="background-color:#CBE7F6;"><span class="ltx_text" id="S3.T1.12.12.5.1.1" style="color:#335479;">52.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.6" style="background-color:#87C8EB;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.6.1" style="background-color:#87C8EB;"><span class="ltx_text" id="S3.T1.12.12.6.1.1" style="color:#335479;">53.8</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.7" style="background-color:#72BEE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.7.1" style="background-color:#72BEE8;"><span class="ltx_text" id="S3.T1.12.12.7.1.1" style="color:#335479;">54.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.8" style="background-color:#8CCAEC;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.8.1" style="background-color:#8CCAEC;"><span class="ltx_text" id="S3.T1.12.12.8.1.1" style="color:#335479;">53.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.9" style="background-color:#5EB5E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.9.1" style="background-color:#5EB5E4;"><span class="ltx_text" id="S3.T1.12.12.9.1.1" style="color:#335479;">54.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.10" style="background-color:#7DC3E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.10.1" style="background-color:#7DC3E9;"><span class="ltx_text" id="S3.T1.12.12.10.1.1" style="color:#335479;">54.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.12.12.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.12.12.11.1.1" style="color:#0D2235;">54.7</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.14.14.3" style="padding:0.75pt 3.3pt;">Llama 3.1 405 B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.13.13.1" style="padding:0.75pt 3.3pt;"><math alttext="68.2" class="ltx_Math" display="inline" id="S3.T1.13.13.1.m1.1"><semantics id="S3.T1.13.13.1.m1.1a"><mn id="S3.T1.13.13.1.m1.1.1" xref="S3.T1.13.13.1.m1.1.1.cmml">68.2</mn><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.1.m1.1b"><cn id="S3.T1.13.13.1.m1.1.1.cmml" type="float" xref="S3.T1.13.13.1.m1.1.1">68.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.1.m1.1c">68.2</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.1.m1.1d">68.2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.4" style="background-color:#D6ECF8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.4.1" style="background-color:#D6ECF8;"><span class="ltx_text" id="S3.T1.14.14.4.1.1" style="color:#335479;">54.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.5" style="background-color:#BEE1F4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.5.1" style="background-color:#BEE1F4;"><span class="ltx_text" id="S3.T1.14.14.5.1.1" style="color:#335479;">54.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.14.14.2.m1.1"><semantics id="S3.T1.14.14.2.m1.1a"><mo id="S3.T1.14.14.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.14.14.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.2.m1.1b"><times id="S3.T1.14.14.2.m1.1.1.cmml" xref="S3.T1.14.14.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.6" style="background-color:#9DD2EF;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.6.1" style="background-color:#9DD2EF;"><span class="ltx_text" id="S3.T1.14.14.6.1.1" style="color:#335479;">55.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.7" style="background-color:#79C1E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.7.1" style="background-color:#79C1E9;"><span class="ltx_text" id="S3.T1.14.14.7.1.1" style="color:#335479;">56.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.8" style="background-color:#75BFE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.8.1" style="background-color:#75BFE8;"><span class="ltx_text" id="S3.T1.14.14.8.1.1" style="color:#335479;">56.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.9" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.9.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.14.14.9.1.1" style="color:#0D2235;">57.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.10" style="background-color:#71BEE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.10.1" style="background-color:#71BEE7;"><span class="ltx_text" id="S3.T1.14.14.10.1.1" style="color:#335479;">56.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.11" style="background-color:#5DB4E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.14.14.11.1" style="background-color:#5DB4E4;"><span class="ltx_text" id="S3.T1.14.14.11.1.1" style="color:#335479;">57.2</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.3" style="padding:0.75pt 3.3pt;">GPT-4o <span class="ltx_text" id="S3.T1.16.16.3.1" style="color:#335479;">2024-11-20</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.15.15.1" style="padding:0.75pt 3.3pt;"><math alttext="62.2" class="ltx_Math" display="inline" id="S3.T1.15.15.1.m1.1"><semantics id="S3.T1.15.15.1.m1.1a"><mn id="S3.T1.15.15.1.m1.1.1" xref="S3.T1.15.15.1.m1.1.1.cmml">62.2</mn><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.1.m1.1b"><cn id="S3.T1.15.15.1.m1.1.1.cmml" type="float" xref="S3.T1.15.15.1.m1.1.1">62.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.1.m1.1c">62.2</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.1.m1.1d">62.2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.4" style="background-color:#B6DDF3;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.4.1" style="background-color:#B6DDF3;"><span class="ltx_text" id="S3.T1.16.16.4.1.1" style="color:#335479;">51.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.5" style="background-color:#B6DDF3;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.5.1" style="background-color:#B6DDF3;"><span class="ltx_text" id="S3.T1.16.16.5.1.1" style="color:#335479;">51.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.16.16.2.m1.1"><semantics id="S3.T1.16.16.2.m1.1a"><mo id="S3.T1.16.16.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.16.16.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.2.m1.1b"><times id="S3.T1.16.16.2.m1.1.1.cmml" xref="S3.T1.16.16.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.6" style="background-color:#B6DDF3;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.6.1" style="background-color:#B6DDF3;"><span class="ltx_text" id="S3.T1.16.16.6.1.1" style="color:#335479;">51.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.16.16.7" style="background-color:#7DC3E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.7.1" style="background-color:#7DC3E9;"><span class="ltx_text" id="S3.T1.16.16.7.1.1" style="color:#335479;">52.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.8" style="background-color:#7DC3E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.8.1" style="background-color:#7DC3E9;"><span class="ltx_text" id="S3.T1.16.16.8.1.1" style="color:#335479;">52.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.9" style="background-color:#6EBCE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.9.1" style="background-color:#6EBCE7;"><span class="ltx_text" id="S3.T1.16.16.9.1.1" style="color:#335479;">52.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.10" style="background-color:#6EBCE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.10.1" style="background-color:#6EBCE7;"><span class="ltx_text" id="S3.T1.16.16.10.1.1" style="color:#335479;">52.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.16.16.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.16.16.11.1.1" style="color:#0D2235;">52.9</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.18.18.3" style="padding:0.75pt 3.3pt;">GPT-4o mini <span class="ltx_text" id="S3.T1.18.18.3.1" style="color:#335479;">2024-11-20</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.17.17.1" style="padding:0.75pt 3.3pt;"><math alttext="62.1" class="ltx_Math" display="inline" id="S3.T1.17.17.1.m1.1"><semantics id="S3.T1.17.17.1.m1.1a"><mn id="S3.T1.17.17.1.m1.1.1" xref="S3.T1.17.17.1.m1.1.1.cmml">62.1</mn><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.1.m1.1b"><cn id="S3.T1.17.17.1.m1.1.1.cmml" type="float" xref="S3.T1.17.17.1.m1.1.1">62.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.1.m1.1c">62.1</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.1.m1.1d">62.1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.4" style="background-color:#E1F1FA;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.4.1" style="background-color:#E1F1FA;"><span class="ltx_text" id="S3.T1.18.18.4.1.1" style="color:#335479;">46.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.5" style="background-color:#9BD1EE;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.5.1" style="background-color:#9BD1EE;"><span class="ltx_text" id="S3.T1.18.18.5.1.1" style="color:#335479;">49.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.18.18.2.m1.1"><semantics id="S3.T1.18.18.2.m1.1a"><mo id="S3.T1.18.18.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.18.18.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.2.m1.1b"><times id="S3.T1.18.18.2.m1.1.1.cmml" xref="S3.T1.18.18.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.6" style="background-color:#79C1E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.6.1" style="background-color:#79C1E9;"><span class="ltx_text" id="S3.T1.18.18.6.1.1" style="color:#335479;">50.5</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.18.18.7" style="background-color:#79C1E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.7.1" style="background-color:#79C1E9;"><span class="ltx_text" id="S3.T1.18.18.7.1.1" style="color:#335479;">50.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.8" style="background-color:#6DBCE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.8.1" style="background-color:#6DBCE7;"><span class="ltx_text" id="S3.T1.18.18.8.1.1" style="color:#335479;">50.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.9" style="background-color:#61B7E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.9.1" style="background-color:#61B7E5;"><span class="ltx_text" id="S3.T1.18.18.9.1.1" style="color:#335479;">51.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.10" style="background-color:#64B8E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.10.1" style="background-color:#64B8E5;"><span class="ltx_text" id="S3.T1.18.18.10.1.1" style="color:#335479;">51.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.18.18.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.18.18.11.1.1" style="color:#0D2235;">51.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.20.20.3" style="padding:0.75pt 3.3pt;">Gemini 2.0 Flash <span class="ltx_text" id="S3.T1.20.20.3.1" style="color:#335479;">001</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.19.19.1" style="padding:0.75pt 3.3pt;"><math alttext="70.9" class="ltx_Math" display="inline" id="S3.T1.19.19.1.m1.1"><semantics id="S3.T1.19.19.1.m1.1a"><mn id="S3.T1.19.19.1.m1.1.1" xref="S3.T1.19.19.1.m1.1.1.cmml">70.9</mn><annotation-xml encoding="MathML-Content" id="S3.T1.19.19.1.m1.1b"><cn id="S3.T1.19.19.1.m1.1.1.cmml" type="float" xref="S3.T1.19.19.1.m1.1.1">70.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.19.1.m1.1c">70.9</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.19.1.m1.1d">70.9</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.4" style="background-color:#BFE1F4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.4.1" style="background-color:#BFE1F4;"><span class="ltx_text" id="S3.T1.20.20.4.1.1" style="color:#335479;">60.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.5" style="background-color:#72BEE8;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.5.1" style="background-color:#72BEE8;"><span class="ltx_text" id="S3.T1.20.20.5.1.1" style="color:#335479;">61.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.20.20.2.m1.1"><semantics id="S3.T1.20.20.2.m1.1a"><mo id="S3.T1.20.20.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.20.20.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.20.20.2.m1.1b"><times id="S3.T1.20.20.2.m1.1.1.cmml" xref="S3.T1.20.20.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.20.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.20.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.6" style="background-color:#78C1E9;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.6.1" style="background-color:#78C1E9;"><span class="ltx_text" id="S3.T1.20.20.6.1.1" style="color:#335479;">61.7</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.20.20.7" style="background-color:#6CBBE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.7.1" style="background-color:#6CBBE7;"><span class="ltx_text" id="S3.T1.20.20.7.1.1" style="color:#335479;">61.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.8" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.8.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.20.20.8.1.1" style="color:#0D2235;">62.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.9" style="background-color:#5FB5E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.9.1" style="background-color:#5FB5E5;"><span class="ltx_text" id="S3.T1.20.20.9.1.1" style="color:#335479;">62.1</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.10" style="background-color:#65B8E6;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.10.1" style="background-color:#65B8E6;"><span class="ltx_text" id="S3.T1.20.20.10.1.1" style="color:#335479;">62.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.11" style="background-color:#5FB5E5;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.20.20.11.1" style="background-color:#5FB5E5;"><span class="ltx_text" id="S3.T1.20.20.11.1.1" style="color:#335479;">62.1</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.22.3" style="padding:0.75pt 3.3pt;">Gemini 2.0 Flash-Lite <span class="ltx_text" id="S3.T1.22.22.3.1" style="color:#335479;">02-05</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.21.21.1" style="padding:0.75pt 3.3pt;"><math alttext="69.4" class="ltx_Math" display="inline" id="S3.T1.21.21.1.m1.1"><semantics id="S3.T1.21.21.1.m1.1a"><mn id="S3.T1.21.21.1.m1.1.1" xref="S3.T1.21.21.1.m1.1.1.cmml">69.4</mn><annotation-xml encoding="MathML-Content" id="S3.T1.21.21.1.m1.1b"><cn id="S3.T1.21.21.1.m1.1.1.cmml" type="float" xref="S3.T1.21.21.1.m1.1.1">69.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.21.1.m1.1c">69.4</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.21.1.m1.1d">69.4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.4" style="background-color:#D2EAF7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.4.1" style="background-color:#D2EAF7;"><span class="ltx_text" id="S3.T1.22.22.4.1.1" style="color:#335479;">56.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.5" style="background-color:#93CDED;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.5.1" style="background-color:#93CDED;"><span class="ltx_text" id="S3.T1.22.22.5.1.1" style="color:#335479;">57.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.22.22.2.m1.1"><semantics id="S3.T1.22.22.2.m1.1a"><mo id="S3.T1.22.22.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.22.22.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.22.22.2.m1.1b"><times id="S3.T1.22.22.2.m1.1.1.cmml" xref="S3.T1.22.22.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.22.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.22.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.6" style="background-color:#A0D3EF;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.6.1" style="background-color:#A0D3EF;"><span class="ltx_text" id="S3.T1.22.22.6.1.1" style="color:#335479;">57.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.22.22.7" style="background-color:#A5D5F0;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.7.1" style="background-color:#A5D5F0;"><span class="ltx_text" id="S3.T1.22.22.7.1.1" style="color:#335479;">57.5</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.8" style="background-color:#97CFEE;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.8.1" style="background-color:#97CFEE;"><span class="ltx_text" id="S3.T1.22.22.8.1.1" style="color:#335479;">57.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.9" style="background-color:#6FBDE7;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.9.1" style="background-color:#6FBDE7;"><span class="ltx_text" id="S3.T1.22.22.9.1.1" style="color:#335479;">58.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.10" style="background-color:#93CDED;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.10.1" style="background-color:#93CDED;"><span class="ltx_text" id="S3.T1.22.22.10.1.1" style="color:#335479;">57.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.11" style="background-color:#59B3E4;padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.22.22.11.1" style="background-color:#59B3E4;"><span class="ltx_text" id="S3.T1.22.22.11.1.1" style="color:#0D2235;">59.2</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.31.31.10" style="padding:0.75pt 3.3pt;">Gemini 2.0 Thinking <span class="ltx_text" id="S3.T1.31.31.10.1" style="color:#335479;">01-26</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.23.23.1" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.23.23.1.m1.1"><semantics id="S3.T1.23.23.1.m1.1a"><mo id="S3.T1.23.23.1.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.23.23.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.23.23.1.m1.1b"><times id="S3.T1.23.23.1.m1.1.1.cmml" xref="S3.T1.23.23.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.23.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.23.1.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.31.31.11" style="padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.31.31.11.1" style="color:#335479;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.24.24.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.24.24.2.m1.1"><semantics id="S3.T1.24.24.2.m1.1a"><mo id="S3.T1.24.24.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.24.24.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.24.24.2.m1.1b"><times id="S3.T1.24.24.2.m1.1.1.cmml" xref="S3.T1.24.24.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.24.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.24.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.3" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.25.25.3.m1.1"><semantics id="S3.T1.25.25.3.m1.1a"><mo id="S3.T1.25.25.3.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.25.25.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.25.25.3.m1.1b"><times id="S3.T1.25.25.3.m1.1.1.cmml" xref="S3.T1.25.25.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.25.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.25.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.26.26.4" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.26.26.4.m1.1"><semantics id="S3.T1.26.26.4.m1.1a"><mo id="S3.T1.26.26.4.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.26.26.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.26.26.4.m1.1b"><times id="S3.T1.26.26.4.m1.1.1.cmml" xref="S3.T1.26.26.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.26.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.26.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.27.27.5" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.27.27.5.m1.1"><semantics id="S3.T1.27.27.5.m1.1a"><mo id="S3.T1.27.27.5.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.27.27.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.27.27.5.m1.1b"><times id="S3.T1.27.27.5.m1.1.1.cmml" xref="S3.T1.27.27.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.27.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.27.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.6" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.28.28.6.m1.1"><semantics id="S3.T1.28.28.6.m1.1a"><mo id="S3.T1.28.28.6.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.28.28.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.28.28.6.m1.1b"><times id="S3.T1.28.28.6.m1.1.1.cmml" xref="S3.T1.28.28.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.28.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.28.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.29.29.7" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.29.29.7.m1.1"><semantics id="S3.T1.29.29.7.m1.1a"><mo id="S3.T1.29.29.7.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.29.29.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.29.29.7.m1.1b"><times id="S3.T1.29.29.7.m1.1.1.cmml" xref="S3.T1.29.29.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.29.29.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.29.29.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.30.30.8" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.30.30.8.m1.1"><semantics id="S3.T1.30.30.8.m1.1a"><mo id="S3.T1.30.30.8.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.30.30.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.30.30.8.m1.1b"><times id="S3.T1.30.30.8.m1.1.1.cmml" xref="S3.T1.30.30.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.30.30.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.30.30.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.31.31.9" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.31.31.9.m1.1"><semantics id="S3.T1.31.31.9.m1.1a"><mo id="S3.T1.31.31.9.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.31.31.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.31.31.9.m1.1b"><times id="S3.T1.31.31.9.m1.1.1.cmml" xref="S3.T1.31.31.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.31.31.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.31.31.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.40.40.10" style="padding:0.75pt 3.3pt;">DeepSeek R1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.32.32.1" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.32.32.1.m1.1"><semantics id="S3.T1.32.32.1.m1.1a"><mo id="S3.T1.32.32.1.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.32.32.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.32.32.1.m1.1b"><times id="S3.T1.32.32.1.m1.1.1.cmml" xref="S3.T1.32.32.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.32.32.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.32.32.1.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.40.40.11" style="padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.40.40.11.1" style="color:#335479;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.33.33.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.33.33.2.m1.1"><semantics id="S3.T1.33.33.2.m1.1a"><mo id="S3.T1.33.33.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.33.33.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.33.33.2.m1.1b"><times id="S3.T1.33.33.2.m1.1.1.cmml" xref="S3.T1.33.33.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.33.33.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.33.33.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.34.34.3" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.34.34.3.m1.1"><semantics id="S3.T1.34.34.3.m1.1a"><mo id="S3.T1.34.34.3.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.34.34.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.34.34.3.m1.1b"><times id="S3.T1.34.34.3.m1.1.1.cmml" xref="S3.T1.34.34.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.34.34.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.34.34.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.35.35.4" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.35.35.4.m1.1"><semantics id="S3.T1.35.35.4.m1.1a"><mo id="S3.T1.35.35.4.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.35.35.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.35.35.4.m1.1b"><times id="S3.T1.35.35.4.m1.1.1.cmml" xref="S3.T1.35.35.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.35.35.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.35.35.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.36.36.5" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.36.36.5.m1.1"><semantics id="S3.T1.36.36.5.m1.1a"><mo id="S3.T1.36.36.5.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.36.36.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.36.36.5.m1.1b"><times id="S3.T1.36.36.5.m1.1.1.cmml" xref="S3.T1.36.36.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.36.36.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.36.36.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.37.37.6" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.37.37.6.m1.1"><semantics id="S3.T1.37.37.6.m1.1a"><mo id="S3.T1.37.37.6.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.37.37.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.37.37.6.m1.1b"><times id="S3.T1.37.37.6.m1.1.1.cmml" xref="S3.T1.37.37.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.37.37.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.37.37.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.38.38.7" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.38.38.7.m1.1"><semantics id="S3.T1.38.38.7.m1.1a"><mo id="S3.T1.38.38.7.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.38.38.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.38.38.7.m1.1b"><times id="S3.T1.38.38.7.m1.1.1.cmml" xref="S3.T1.38.38.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.38.38.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.38.38.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.39.39.8" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.39.39.8.m1.1"><semantics id="S3.T1.39.39.8.m1.1a"><mo id="S3.T1.39.39.8.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.39.39.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.39.39.8.m1.1b"><times id="S3.T1.39.39.8.m1.1.1.cmml" xref="S3.T1.39.39.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.39.39.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.39.39.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.40.40.9" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.40.40.9.m1.1"><semantics id="S3.T1.40.40.9.m1.1a"><mo id="S3.T1.40.40.9.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.40.40.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.40.40.9.m1.1b"><times id="S3.T1.40.40.9.m1.1.1.cmml" xref="S3.T1.40.40.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.40.40.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.40.40.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.49.49.10" style="padding:0.75pt 3.3pt;">o1 <span class="ltx_text" id="S3.T1.49.49.10.1" style="color:#335479;">2024-12-17</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.41.41.1" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.41.41.1.m1.1"><semantics id="S3.T1.41.41.1.m1.1a"><mo id="S3.T1.41.41.1.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.41.41.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.41.41.1.m1.1b"><times id="S3.T1.41.41.1.m1.1.1.cmml" xref="S3.T1.41.41.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.41.41.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.41.41.1.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.49.49.11" style="padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.49.49.11.1" style="color:#335479;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.42.42.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.42.42.2.m1.1"><semantics id="S3.T1.42.42.2.m1.1a"><mo id="S3.T1.42.42.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.42.42.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.42.42.2.m1.1b"><times id="S3.T1.42.42.2.m1.1.1.cmml" xref="S3.T1.42.42.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.42.42.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.42.42.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.43.43.3" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.43.43.3.m1.1"><semantics id="S3.T1.43.43.3.m1.1a"><mo id="S3.T1.43.43.3.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.43.43.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.43.43.3.m1.1b"><times id="S3.T1.43.43.3.m1.1.1.cmml" xref="S3.T1.43.43.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.43.43.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.43.43.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.44.44.4" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.44.44.4.m1.1"><semantics id="S3.T1.44.44.4.m1.1a"><mo id="S3.T1.44.44.4.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.44.44.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.44.44.4.m1.1b"><times id="S3.T1.44.44.4.m1.1.1.cmml" xref="S3.T1.44.44.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.44.44.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.44.44.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.45.45.5" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.45.45.5.m1.1"><semantics id="S3.T1.45.45.5.m1.1a"><mo id="S3.T1.45.45.5.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.45.45.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.45.45.5.m1.1b"><times id="S3.T1.45.45.5.m1.1.1.cmml" xref="S3.T1.45.45.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.45.45.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.45.45.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.46.46.6" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.46.46.6.m1.1"><semantics id="S3.T1.46.46.6.m1.1a"><mo id="S3.T1.46.46.6.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.46.46.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.46.46.6.m1.1b"><times id="S3.T1.46.46.6.m1.1.1.cmml" xref="S3.T1.46.46.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.46.46.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.46.46.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.47.47.7" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.47.47.7.m1.1"><semantics id="S3.T1.47.47.7.m1.1a"><mo id="S3.T1.47.47.7.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.47.47.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.47.47.7.m1.1b"><times id="S3.T1.47.47.7.m1.1.1.cmml" xref="S3.T1.47.47.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.47.47.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.47.47.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.48.48.8" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.48.48.8.m1.1"><semantics id="S3.T1.48.48.8.m1.1a"><mo id="S3.T1.48.48.8.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.48.48.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.48.48.8.m1.1b"><times id="S3.T1.48.48.8.m1.1.1.cmml" xref="S3.T1.48.48.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.48.48.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.48.48.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.49.49.9" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.49.49.9.m1.1"><semantics id="S3.T1.49.49.9.m1.1a"><mo id="S3.T1.49.49.9.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.49.49.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.49.49.9.m1.1b"><times id="S3.T1.49.49.9.m1.1.1.cmml" xref="S3.T1.49.49.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.49.49.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.49.49.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.58.58">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.58.58.10" style="padding:0.75pt 3.3pt;">o3-mini <span class="ltx_text" id="S3.T1.58.58.10.1" style="color:#335479;">2025-01-31</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.50.50.1" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.50.50.1.m1.1"><semantics id="S3.T1.50.50.1.m1.1a"><mo id="S3.T1.50.50.1.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.50.50.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.50.50.1.m1.1b"><times id="S3.T1.50.50.1.m1.1.1.cmml" xref="S3.T1.50.50.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.50.50.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.50.50.1.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.58.58.11" style="padding:0.75pt 3.3pt;"><span class="ltx_text" id="S3.T1.58.58.11.1" style="color:#335479;">52.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.51.51.2" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.51.51.2.m1.1"><semantics id="S3.T1.51.51.2.m1.1a"><mo id="S3.T1.51.51.2.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.51.51.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.51.51.2.m1.1b"><times id="S3.T1.51.51.2.m1.1.1.cmml" xref="S3.T1.51.51.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.51.51.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.51.51.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.52.52.3" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.52.52.3.m1.1"><semantics id="S3.T1.52.52.3.m1.1a"><mo id="S3.T1.52.52.3.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.52.52.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.52.52.3.m1.1b"><times id="S3.T1.52.52.3.m1.1.1.cmml" xref="S3.T1.52.52.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.52.52.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.52.52.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.53.53.4" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.53.53.4.m1.1"><semantics id="S3.T1.53.53.4.m1.1a"><mo id="S3.T1.53.53.4.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.53.53.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.53.53.4.m1.1b"><times id="S3.T1.53.53.4.m1.1.1.cmml" xref="S3.T1.53.53.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.53.53.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.53.53.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.54.54.5" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.54.54.5.m1.1"><semantics id="S3.T1.54.54.5.m1.1a"><mo id="S3.T1.54.54.5.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.54.54.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.54.54.5.m1.1b"><times id="S3.T1.54.54.5.m1.1.1.cmml" xref="S3.T1.54.54.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.54.54.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.54.54.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.55.55.6" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.55.55.6.m1.1"><semantics id="S3.T1.55.55.6.m1.1a"><mo id="S3.T1.55.55.6.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.55.55.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.55.55.6.m1.1b"><times id="S3.T1.55.55.6.m1.1.1.cmml" xref="S3.T1.55.55.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.55.55.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.55.55.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.56.56.7" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.56.56.7.m1.1"><semantics id="S3.T1.56.56.7.m1.1a"><mo id="S3.T1.56.56.7.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.56.56.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.56.56.7.m1.1b"><times id="S3.T1.56.56.7.m1.1.1.cmml" xref="S3.T1.56.56.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.56.56.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.56.56.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.57.57.8" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.57.57.8.m1.1"><semantics id="S3.T1.57.57.8.m1.1a"><mo id="S3.T1.57.57.8.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.57.57.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.57.57.8.m1.1b"><times id="S3.T1.57.57.8.m1.1.1.cmml" xref="S3.T1.57.57.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.57.57.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.57.57.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.58.58.9" style="padding:0.75pt 3.3pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.58.58.9.m1.1"><semantics id="S3.T1.58.58.9.m1.1a"><mo id="S3.T1.58.58.9.m1.1.1" mathcolor="#E2E2E2" xref="S3.T1.58.58.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.58.58.9.m1.1b"><times id="S3.T1.58.58.9.m1.1.1.cmml" xref="S3.T1.58.58.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.58.58.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.58.58.9.m1.1d">×</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of Python code generation using two different methods: greedy decoding and execution-based self-consistency.  It compares the performance of several large language models on two benchmark datasets: HumanEval+ and MBPP+. The results show the accuracy achieved by each method on each dataset, highlighting the improvement in accuracy provided by using execution-based self-consistency.
> <details>
> <summary>read the caption</summary>
> Table 3: Python generation accuracy. Greedy decoding compared to execution-based self-consistency.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Greedy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Exec</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">+ Part.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.5" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">+ Pat.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen Coder 7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2" style="background-color:#FAFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.2.1.2.1" style="background-color:#FAFDFD;"><span class="ltx_text" id="S4.T2.1.2.1.2.1.1" style="color:#335479;">27.1</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3" style="background-color:#BCE0E5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.2.1.3.1" style="background-color:#BCE0E5;"><span class="ltx_text" id="S4.T2.1.2.1.3.1.1" style="color:#335479;">41.6</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4" style="background-color:#B7DDE3;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.2.1.4.1" style="background-color:#B7DDE3;"><span class="ltx_text" id="S4.T2.1.2.1.4.1.1" style="color:#335479;">42.8</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.2.1.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.2.1.5.1.1" style="color:#0D2235;">44.3</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Llama 8B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.2" style="background-color:#F9FCFC;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.3.2.2.1" style="background-color:#F9FCFC;"><span class="ltx_text" id="S4.T2.1.3.2.2.1.1" style="color:#335479;">11.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.3" style="background-color:#E7F4F6;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.3.2.3.1" style="background-color:#E7F4F6;"><span class="ltx_text" id="S4.T2.1.3.2.3.1.1" style="color:#335479;">14.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.4" style="background-color:#BBDFE5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.3.2.4.1" style="background-color:#BBDFE5;"><span class="ltx_text" id="S4.T2.1.3.2.4.1.1" style="color:#335479;">22.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.3.2.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.3.2.5.1.1" style="color:#0D2235;">24.7</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Gemma 12B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.2" style="background-color:#FBFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.4.3.2.1" style="background-color:#FBFDFD;"><span class="ltx_text" id="S4.T2.1.4.3.2.1.1" style="color:#335479;">21.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3" style="background-color:#BBDFE5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.4.3.3.1" style="background-color:#BBDFE5;"><span class="ltx_text" id="S4.T2.1.4.3.3.1.1" style="color:#335479;">42.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.4" style="background-color:#BBDFE5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.4.3.4.1" style="background-color:#BBDFE5;"><span class="ltx_text" id="S4.T2.1.4.3.4.1.1" style="color:#335479;">42.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.4.3.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.4.3.5.1.1" style="color:#0D2235;">45.3</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen Coder 14B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.2" style="background-color:#F9FCFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.5.4.2.1" style="background-color:#F9FCFD;"><span class="ltx_text" id="S4.T2.1.5.4.2.1.1" style="color:#335479;">38.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.3" style="background-color:#BADFE4;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.5.4.3.1" style="background-color:#BADFE4;"><span class="ltx_text" id="S4.T2.1.5.4.3.1.1" style="color:#335479;">51.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.4" style="background-color:#C2E3E7;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.5.4.4.1" style="background-color:#C2E3E7;"><span class="ltx_text" id="S4.T2.1.5.4.4.1.1" style="color:#335479;">49.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.5.4.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.5.4.5.1.1" style="color:#0D2235;">53.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.6.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Gemma 27B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.2" style="background-color:#FAFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.6.5.2.1" style="background-color:#FAFDFD;"><span class="ltx_text" id="S4.T2.1.6.5.2.1.1" style="color:#335479;">31.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.3" style="background-color:#B8DEE3;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.6.5.3.1" style="background-color:#B8DEE3;"><span class="ltx_text" id="S4.T2.1.6.5.3.1.1" style="color:#335479;">47.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.4" style="background-color:#BADFE4;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.6.5.4.1" style="background-color:#BADFE4;"><span class="ltx_text" id="S4.T2.1.6.5.4.1.1" style="color:#335479;">46.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.5.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.6.5.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.6.5.5.1.1" style="color:#0D2235;">49.1</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.7.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Qwen Coder 32B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.2" style="background-color:#FAFCFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.7.6.2.1" style="background-color:#FAFCFD;"><span class="ltx_text" id="S4.T2.1.7.6.2.1.1" style="color:#335479;">40.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.3" style="background-color:#B7DEE3;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.7.6.3.1" style="background-color:#B7DEE3;"><span class="ltx_text" id="S4.T2.1.7.6.3.1.1" style="color:#335479;">53.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.4" style="background-color:#BADFE4;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.7.6.4.1" style="background-color:#BADFE4;"><span class="ltx_text" id="S4.T2.1.7.6.4.1.1" style="color:#335479;">53.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.6.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.7.6.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.7.6.5.1.1" style="color:#0D2235;">55.2</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.8.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Codestral</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.2" style="background-color:#FBFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.8.7.2.1" style="background-color:#FBFDFD;"><span class="ltx_text" id="S4.T2.1.8.7.2.1.1" style="color:#335479;">33.6</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.3" style="background-color:#C8E5EA;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.8.7.3.1" style="background-color:#C8E5EA;"><span class="ltx_text" id="S4.T2.1.8.7.3.1.1" style="color:#335479;">46.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.4" style="background-color:#C6E4E9;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.8.7.4.1" style="background-color:#C6E4E9;"><span class="ltx_text" id="S4.T2.1.8.7.4.1.1" style="color:#335479;">47.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.8.7.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.8.7.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.8.7.5.1.1" style="color:#0D2235;">53.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.9.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Llama 70B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.2" style="background-color:#FBFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.9.8.2.1" style="background-color:#FBFDFD;"><span class="ltx_text" id="S4.T2.1.9.8.2.1.1" style="color:#335479;">31.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.3" style="background-color:#B3DCE2;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.9.8.3.1" style="background-color:#B3DCE2;"><span class="ltx_text" id="S4.T2.1.9.8.3.1.1" style="color:#335479;">51.2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.4" style="background-color:#BCE0E5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.9.8.4.1" style="background-color:#BCE0E5;"><span class="ltx_text" id="S4.T2.1.9.8.4.1.1" style="color:#335479;">48.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.9.8.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.9.8.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.9.8.5.1.1" style="color:#0D2235;">52.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.10.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Mistral Large</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.2" style="background-color:#F6FBFB;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.10.9.2.1" style="background-color:#F6FBFB;"><span class="ltx_text" id="S4.T2.1.10.9.2.1.1" style="color:#335479;">44.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.3" style="background-color:#C5E4E9;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.10.9.3.1" style="background-color:#C5E4E9;"><span class="ltx_text" id="S4.T2.1.10.9.3.1.1" style="color:#335479;">50.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.4" style="background-color:#C2E3E7;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.10.9.4.1" style="background-color:#C2E3E7;"><span class="ltx_text" id="S4.T2.1.10.9.4.1.1" style="color:#335479;">50.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.10.9.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.10.9.5.1.1" style="color:#0D2235;">53.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.11.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">LLama 405B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.11.10.2" style="background-color:#FBFDFD;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.11.10.2.1" style="background-color:#FBFDFD;"><span class="ltx_text" id="S4.T2.1.11.10.2.1.1" style="color:#335479;">37.4</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.11.10.3" style="background-color:#BBDFE4;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.11.10.3.1" style="background-color:#BBDFE4;"><span class="ltx_text" id="S4.T2.1.11.10.3.1.1" style="color:#335479;">54.0</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.11.10.4" style="background-color:#BDE0E5;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.11.10.4.1" style="background-color:#BDE0E5;"><span class="ltx_text" id="S4.T2.1.11.10.4.1.1" style="color:#335479;">53.4</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.11.10.5" style="background-color:#B1DBE1;padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.1.11.10.5.1" style="background-color:#B1DBE1;"><span class="ltx_text" id="S4.T2.1.11.10.5.1.1" style="color:#0D2235;">56.7</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of combining predictions from multiple large language models (LLMs) on the accuracy of SQL query generation.  It shows how using a diverse set of LLM predictions, rather than relying solely on a single model, improves the overall accuracy of generated SQL queries.  The table compares accuracy metrics (Pass@10, @20, @30) achieved using different combinations of LLMs and demonstrates the extent to which leveraging cross-model consistency enhances performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of cross-model consistency on BIRD-SQL Accuracy (Text-to-SQLite).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24364/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24364/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}