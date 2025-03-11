---
title: "WritingBench: A Comprehensive Benchmark for Generative Writing"
summary: "WritingBench: A new benchmark for generative writing evaluation, enhancing LLMs across diverse domains."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Alibaba Group",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05244 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuning Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05244" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05244" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05244/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent LLMs show great text generation, but evaluating their writing is tough. Current benchmarks focus on generic tasks and miss the details needed for high-quality writing in different areas. To fix this, the paper creates a comprehensive benchmark to assess LLMs across creative, persuasive, informative, and technical writing.



The paper introduces a query-dependent evaluation, where LLMs create criteria for each instance. A tuned critic model scores based on these criteria, evaluating style, format, and length. They show this framework is valid, enabling 7B models to approach SOTA performance. Releasing the benchmark and tools helps advance LLMs in writing.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces WritingBench, a comprehensive benchmark for generative writing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a query-dependent evaluation framework for nuanced LLM assessment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates effective data curation for writing-enhanced models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
WritingBench offers a **comprehensive benchmark** to evaluate LLMs in generative writing, enabling nuanced assessment and data curation. This advances creative AI and inspires improvements in model capabilities across diverse tasks. The resources helps refine writing models and create new, high-quality datasets.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05244/x1.png)

> 🔼 This figure shows an example of a query from the WritingBench benchmark.  The query is for a video script for a film review, written in the style of past commentary videos. The query's requirements are color-coded to indicate different categories such as Personalization, Stylistic Adjustments, Format Specifications, Content Specificity, and Length Constraints.  Three main requirement categories are highlighted with black borders, signifying their importance in the evaluation process. Red phrases indicate the additional materials provided to support the writing task.  The color-coding and materials highlight the complexity WritingBench aims to address, moving beyond simple single-sentence prompts to simulate real-world writing scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: WritingBench query example with color-coded requirements. The three black-bordered categories highlight essential requirements analyzed in follow-up assessments. Red phrases correlate with gray-shaded writing support materials.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.2.1">Num</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S2.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.3.1">Domains</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S2.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.4.1">Requirement</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S2.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.5.1">Input Token</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.6" rowspan="2"><span class="ltx_text" id="S2.T1.1.1.1.1.6.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.1.6.1.1">
<span class="ltx_tr" id="S2.T1.1.1.1.1.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.6.1.1.1.1.1">Free</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.1.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.6.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.6.1.1.2.1.1">Query-Form</span></span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.1.7" rowspan="2"><span class="ltx_text" id="S2.T1.1.1.1.1.7.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.1.7.1.1">
<span class="ltx_tr" id="S2.T1.1.1.1.1.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.7.1.1.1.1.1">Diverse</span></span></span>
<span class="ltx_tr" id="S2.T1.1.1.1.1.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.7.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.7.1.1.2.1.1">Material-Source</span></span></span>
</span></span></th>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.1.1">Primary</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.2.1">Secondary</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.3.1">Style</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.4.1">Format</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.5.1">Length</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.6.1">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S2.T1.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.7.1">Max</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.1">EQ-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.2">241</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.1.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.4">/</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.1.5"><span class="ltx_text" id="S2.T1.1.1.3.1.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.1.6"><span class="ltx_text" id="S2.T1.1.1.3.1.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.7"><span class="ltx_text" id="S2.T1.1.1.3.1.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.1.8">130</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.9">213</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.1.10"><span class="ltx_text" id="S2.T1.1.1.3.1.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.1.11">/</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.4.2.1">LongBench-Write</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.2.2">120</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2.3">7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.2.4">/</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2.5"><span class="ltx_text" id="S2.T1.1.1.4.2.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2.6"><span class="ltx_text" id="S2.T1.1.1.4.2.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.2.7"><span class="ltx_text" id="S2.T1.1.1.4.2.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2.8">87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.2.9">684</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.2.10"><span class="ltx_text" id="S2.T1.1.1.4.2.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2.11">/</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.5.3.1">HelloBench</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.3.2">647</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3.3">5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.3.4">38</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3.5"><span class="ltx_text" id="S2.T1.1.1.5.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3.6"><span class="ltx_text" id="S2.T1.1.1.5.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.3.7"><span class="ltx_text" id="S2.T1.1.1.5.3.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3.8">1,210</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.3.9">7,766</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.3.10"><span class="ltx_text" id="S2.T1.1.1.5.3.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3.11"><span class="ltx_text" id="S2.T1.1.1.5.3.11.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.1">WritingBench (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.2">1,239</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.6.4.3">6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.4">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.6.4.5"><span class="ltx_text" id="S2.T1.1.1.6.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.6.4.6"><span class="ltx_text" id="S2.T1.1.1.6.4.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.7"><span class="ltx_text" id="S2.T1.1.1.6.4.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.6.4.8">1,546</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.9">19,361</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.1.1.6.4.10"><span class="ltx_text" id="S2.T1.1.1.6.4.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.6.4.11"><span class="ltx_text" id="S2.T1.1.1.6.4.11.1" style="color:#00FF00;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares several existing writing benchmarks, highlighting key differences in their capabilities.  It shows the number of primary and secondary domains covered by each benchmark, as well as whether or not they include requirements for style, format, and length of the generated text.  The table also indicates the average and maximum number of input tokens, the format of the queries, and the diversity of data sources used.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of existing writing benchmarks.
> </details>





### In-depth insights


#### LLM Writ'g Gaps
LLMs show promise in writing, but **challenges remain in evaluation**. Current benchmarks often focus on generic text or have limited writing tasks, failing to capture the **diversity and complexity of high-quality written content**. Existing metrics are inadequate for assessing creativity, logical reasoning, and stylistic precision required for generative writing. A need for **query-dependent evaluation** that can capture the nuances of specific tasks, styles, formats and lengths is required. Static metrics also lack the **robustness** and multi dimensional nature needed for writing, it's important to improve in areas of integration with material and depth.

#### Query-Dep Eval
A query-dependent evaluation framework dynamically assesses generative writing, addressing the limitations of static criteria. It uses **LLMs to generate instance-specific evaluation criteria**, considering style, format, and material usage, fostering nuanced assessments. This is in contrast to traditional metrics. A **critic model** scores responses against generated criteria, enhancing evaluation accuracy and human alignment. This adaptability allows it to evaluate tasks, and helps identify areas where AI models can improve in various writing dimensions.

#### Data-centric SFT
While not explicitly mentioned, a 'Data-centric SFT' approach would emphasize the **crucial role of data quality and relevance** in supervised fine-tuning (SFT). This means prioritizing **data curation**, potentially involving techniques like **filtering, augmentation, or re-weighting** to improve model performance. It would likely involve **rigorous data analysis** to identify biases, gaps, and areas where the model struggles. The goal is to **optimize the training data** to maximize the learning efficiency and effectiveness of SFT, leading to improved generation quality, style consistency, and adherence to specific requirements, ultimately resulting in better writing capabilites.

#### CoT Benifits
**Chain-of-Thought (CoT)** prompting significantly **enhances creative content generation** in LLMs. Models leveraging CoT outperform their non-CoT counterparts, showing its impact. This is seen from improvement in **knowledge distillation** experiments using DeepSeek-R1. Evaluating across benchmarks that CoT's capacity in storytelling. These findings points out the fact that it is important for LLMs to incorporate CoT when dealing with creative tasks. Models with CoT consistently surpass those without, highlighting CoT reasoning can empower language models.

#### Long Output Lag
**Writing quality tends to remain stable within a certain generation length**, while length is the determining factor for overall output quality. Most models have limitations in response generation, and generally produce outputs that are approximately constrained to 3,000 tokens, so output quality tends to be stable below this range. However, there are smaller models that suffer more severe performance degradation when the constraint reaches a certain threshold, with the performance degradation characterized by repetitive outputs. **LongWriter and Qwen-Max both show effective support for extended response lengths** due to optimization in long-form generation, which shows the importance of improvement capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05244/x2.png)

> 🔼 This figure illustrates the four-stage query construction pipeline used to create WritingBench queries.  It starts with initial query generation using LLMs, then uses a refinement pool containing five writing requirements (three core competencies—personalization, stylistic adjustments, and format specifications—highlighted with black borders) and an expression type (purple).  Checked strategies, refining the initial queries, are applied to produce multi-requirement prompts (color-coded text), with red phrases referencing gray-shaded writing support materials provided in the initial query.  The process ensures diverse writing tasks covering various domains and includes integrating heterogeneous sources of materials. The implementation details are described in Section 3.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 2: Construction pipeline of WritingBench queries. The refinement pool contains five writing requirements (three core competencies with black borders) and one expression type (purple). Checked strategies refine initial queries into multi-requirement prompts (color-coded text) with red phrases referencing gray materials. Implementation details in Section 3.1.
> </details>



![](https://arxiv.org/html/2503.05244/x3.png)

> 🔼 This figure shows a donut chart illustrating the distribution of WritingBench's 1239 queries across six primary domains and their corresponding 100 secondary subdomains. Each primary domain is represented by a segment of the donut chart and its size corresponds to the number of queries in that domain. The secondary subdomains are further broken down within each primary domain, and the number of queries (Num) and the number of subdomains (Sub) are indicated for each primary domain.  The chart visually represents the breadth and depth of WritingBench's coverage of various writing tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Domain categories in WritingBench. Inner represents the 6 primary domains and outer depicts 100 secondary subdomains (Sub = subdomains per category, Num = dataset entries).
> </details>



![](https://arxiv.org/html/2503.05244/x4.png)

> 🔼 This figure showcases the dynamic criteria generation process within WritingBench. A writing query is provided as input, and the system automatically generates five evaluation criteria, each with a detailed description and a 10-point scoring rubric. The diverse background colors highlight the different types of requirements (e.g., formatting, style, content). This illustrates how WritingBench adapts its evaluation to each writing task, providing a more nuanced and comprehensive assessment compared to traditional static evaluation methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example of dynamically generating criteria for a writing query in WritingBench. Different background colors represent various types of requirements.
> </details>



![](https://arxiv.org/html/2503.05244/x5.png)

> 🔼 Figure 5 is a heatmap visualization showing the performance of various LLMs (large language models) across 100 subdomains within six primary domains of the WritingBench benchmark. Each subdomain represents a specific type of writing task (e.g., writing a scientific paper, a legal document, a poem etc.). The color intensity represents the average score achieved by each model on each subdomain, with red indicating higher scores and blue representing lower scores.  This figure allows for a detailed comparison of the strengths and weaknesses of different LLMs in various writing scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Scores of different models across different subdomains in WritingBench. Red indicates higher score and blue refers to lower score. The figures are the average score of each subdomain for different models.
> </details>



![](https://arxiv.org/html/2503.05244/x6.png)

> 🔼 This figure presents a performance comparison of various large language models (LLMs) on the WritingBench benchmark across different input lengths.  The x-axis represents the range of input lengths (in tokens), and the y-axis shows the corresponding average scores achieved by each LLM.  The different colored lines represent different LLMs, allowing for a visual comparison of how their performance varies with input length. This illustrates the impact of input length on the ability of each model to generate high-quality writing.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scores of different models across various input lengths on the WritingBench.
> </details>



![](https://arxiv.org/html/2503.05244/x7.png)

> 🔼 This figure shows the performance of various LLMs (large language models) on the WritingBench benchmark across different output lengths.  The x-axis represents output length in tokens, and the y-axis represents the average score achieved by each model.  Each line represents a different LLM, illustrating how well each model performs at generating text of varying lengths. The plot helps to identify strengths and weaknesses of the LLMs in producing longer or shorter responses, highlighting models better suited for generating longer-form content. The scores likely reflect a composite of quality metrics such as fluency, coherence, and relevance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Scores of different models across various output lengths on the WritingBench.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Category</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Num</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.1.3.1">
<tr class="ltx_tr" id="S3.T2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.2.1.1">Token</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.1.4.1">
<tr class="ltx_tr" id="S3.T2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.1.1.1">Max</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.2.1.1">Token</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T2.1.2.2.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.2.2.1.1" style="background-color:#E6E6E6;">Domain</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.3.3.1">Academic &amp; Engineering</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.3.3.2">187</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.3.3.3">1,915</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.3.3.4">15,534</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.4.4.1">Finance &amp; Business</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.4.4.2">238</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.4.4.3">1,762</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.4.4.4">19,361</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.5.5.1">Politics &amp; Law</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.5.5.2">226</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.5.5.3">2,274</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.5.5.4">18,317</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.6.6.1">Literature &amp; Arts</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.6.6.2">242</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.6.6.3">1,133</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.6.6.4">9,973</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.7.7.1">Education</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.7.7.2">151</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.7.7.3">1,173</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.7.7.4">10,737</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.8.8.1">Advertising &amp; Marketing</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.8.8.2">195</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.8.8.3">886</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.8.8.4">6,504</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T2.1.9.9.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.9.9.1.1" style="background-color:#E6E6E6;">Requirement</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.10.10.1">Style</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.10.10.2">395</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.10.10.3">1,404</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.10.10.4">18,197</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.11.11.1">Format</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.11.11.2">342</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.11.11.3">1,591</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.11.11.4">18,197</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.12.12.1">Length</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.12.12.2">214</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.12.12.3">1,226</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.12.12.4">14,097</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T2.1.13.13.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.13.13.1.1" style="background-color:#E6E6E6;">Length</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.14.14.1">&lt;1K</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.14.14.2">727</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.14.14.3">443</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.14.14.4">994</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.15.15.1">1K-3K</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.15.15.2">341</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.15.15.3">1,808</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.15.15.4">2,991</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.16.16.1">3K-5K</th>
<td class="ltx_td ltx_align_right" id="S3.T2.1.16.16.2">94</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.16.16.3">3,804</td>
<td class="ltx_td ltx_align_right" id="S3.T2.1.16.16.4">4,966</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.1.17.17.1">5K+</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.1.17.17.2">77</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.1.17.17.3">8,042</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.1.17.17.4">19,361</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the WritingBench dataset, categorized by six primary domains and 100 subdomains.  It shows the number of queries, average and maximum token counts for inputs and outputs, and the distribution of queries across different length categories (less than 1k tokens, 1k-3k tokens, 3k-5k tokens, and more than 5k tokens). The table also details the distribution of queries based on three key writing requirements: style, format, and length.
> <details>
> <summary>read the caption</summary>
> Table 2: Data statistics for WritingBench categorized by domain, requirement, and length.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.1.3.1">
<tr class="ltx_tr" id="S3.T2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.2.1.1">Token</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the WritingBench performance evaluation results for various Large Language Models (LLMs).  The evaluation was conducted using a critic model and focuses on six writing domains (Academic & Engineering, Finance & Business, Politics & Law, Literature & Art, Education, and Advertising & Marketing) across three writing requirements (Style, Format, and Length).  Scores range from 1 to 10, reflecting the quality of LLM writing in each domain and requirement.  The 'C' column signifies the category-specific scores, providing a more granular view of LLM performance on particular aspects within each domain.
> <details>
> <summary>read the caption</summary>
> Table 3: WritingBench performance of different LLMs across 6 domains and 3 writing requirements evaluated with our critic model (scale: 1-10). The six domains include: (D1) Academic & Engineering, (D2) Finance & Business, (D3) Politics & Law, (D4) Literature & Art, (D5) Education, and (D6) Advertising & Marketing. The three writing requirements assessed are: (R1) Style, (R2) Format, and (R3) Length. Here, “C' indicates category-specific scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.1.4.1">
<tr class="ltx_tr" id="S3.T2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.1.1.1">Max</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.2.1.1">Token</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a human evaluation experiment comparing different methods for generating evaluation criteria in a writing benchmark.  Specifically, it examines the agreement between human judges and three different approaches: using static, globally uniform criteria; static, domain-specific criteria; and dynamic, query-dependent criteria.  The experiment uses two LLMs, ChatGPT-4 (referred to as ChatGPT) and Claude-3.5-Sonnet (referred to as Claude), as judges to assess the consistency of each criteria generation method. The scores represent the percentage of agreement between the human judges and the respective LLM judge.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of human consistency scores across different criteria generation methods. ChatGPT corresponds to ChatGPT-4o-latest, Claude corresponds to Claude-3.5-Sonnet.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.2.1">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.3.1">Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S3.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.4.1">Domains</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.5.1">Requirements</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.1.1">ZH</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.2.1">EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.3.1">D1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.4.1">D2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.5.1">D3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.6.1">D4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.7.1">D5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.8.1">D6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.9.1">R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.10.1">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.11.1">R2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.12.1">C</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.13"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.13.1">R3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2.14"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.2.14.1">C</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="16" id="S3.T3.1.1.3.3.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.3.3.1.1" style="background-color:#E6E6E6;">Proprietary LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.4.4.1">ChatGPT-4o-latest</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.4.4.2">8.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.3">8.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.4.4.4">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.5">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.6">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.7">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.8">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.9">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.4.4.10">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.11">8.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.4.4.12">8.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.13">8.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.4.4.14">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4.15">8.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.4.4.16">8.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.5.5.1">o1-Preview</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.5.5.2">8.15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.3">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.5.5.4">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.5">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.6">8.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.7">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.8">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.9">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.5.5.10">8.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.11">8.2</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.5.12">8.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.13">8.2</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.5.14">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5.15">8.2</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.5.16">8.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.6.6.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.6.6.2">7.71</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.3">7.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.6.6.4">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.5">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.6">7.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.7">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.8">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.9">7.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.6.6.10">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.11">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.6.12">8.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.13">7.7</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.6.14">8.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6.15">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.6.16">8.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.7.7.1">Gemini-1.5-Pro</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.7.7.2">7.78</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.3">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.7.7.4">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.5">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.6">7.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.7">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.8">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.9">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.7.7.10">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.11">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.7.7.12">8.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.13">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.7.7.14">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7.15">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.7.7.16">8.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.8.8.1">Qwen-Max</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.8.8.2">8.37</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.3">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.8.8.4">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.5">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.6">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.7">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.8">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.9">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.8.8.10">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.11">8.5</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.8.12">8.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.13">8.4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.8.14">9.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8.15">8.4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.8.16">8.5</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="16" id="S3.T3.1.1.9.9.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.9.9.1.1" style="background-color:#E6E6E6;">Open-source LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.10.10.1">Deepseek-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.10.10.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.10.10.2.1">8.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.3">8.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.10.10.4">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.5">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.6">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.7">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.8">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.9">8.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.10.10.10">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.11">8.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.10.10.12">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.13">8.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.10.10.14">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.10.10.15">8.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.10.10.16">8.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.11.11.1">Deepseek-V3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.11.11.2">7.95</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.3">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.11.11.4">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.5">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.6">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.7">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.8">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.9">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.11.11.10">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.11">8.1</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.11.11.12">8.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.13">8.0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.11.11.14">8.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11.15">8.0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.11.11.16">8.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.12.12.1">Mistral-Large-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.12.12.2">7.64</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.3">7.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.12.12.4">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.5">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.6">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.7">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.8">7.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.9">7.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.12.12.10">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.11">7.7</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.12.12">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.13">7.7</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.12.14">8.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12.15">7.7</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.12.16">7.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.13.13.1">Qwen-2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.13.13.2">7.90</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.3">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.13.13.4">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.5">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.6">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.7">8.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.8">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.9">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.13.13.10">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.11">8.0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.13.12">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.13">8.0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.13.14">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13.15">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.13.16">8.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.14.14.1">Qwen-2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.14.14.2">7.43</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.3">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.14.14.4">7.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.5">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.6">7.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.7">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.8">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.9">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.14.14.10">7.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.11">7.5</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.14.14.12">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.13">7.6</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.14.14.14">8.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14.15">7.4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.14.14.16">7.5</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.15.15.1">Llama-3.3-70B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.15.15.2">7.01</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.3">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.15.15.4">7.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.5">7.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.6">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.7">7.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.8">6.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.9">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.15.15.10">7.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.11">7.1</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.15.15.12">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.13">7.1</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.15.15.14">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15.15">7.0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.15.15.16">7.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.16.16.1">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.16.16.2">6.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.3">5.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.16.16.4">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.5">6.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.6">6.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.7">6.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.8">6.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.9">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.16.16.10">6.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.11">6.4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.16.16.12">7.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.13">6.4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.16.16.14">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16.15">6.3</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.16.16.16">6.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="16" id="S3.T3.1.1.17.17.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.17.17.1.1" style="background-color:#E6E6E6;">Capability-enhanced LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.18.18.1">Suri</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.18.18.2">4.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.3">4.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.18.18.4">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.5">5.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.6">5.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.7">5.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.8">4.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.9">5.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.18.18.10">5.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.11">4.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.18.18.12">5.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.13">5.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.18.18.14">5.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.18.18.15">4.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.18.18.16">4.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.19.19.1">LongWriter</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.19.19.2">7.91</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.3">7.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.19.19.4">7.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.5">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.6">8.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.7">8.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.8">7.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.9">8.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.19.19.10">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.11">7.9</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.19.19.12">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.13">8.1</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.19.19.14">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.19.15">7.7</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.19.19.16">7.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.20.20.1">Qwen-2.5-7B-filtered</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.20.20.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.1.20.20.2.1">8.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.3">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.20.20.4">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.5">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.6">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.7">8.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.8">8.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.9">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.20.20.10">8.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.11">8.6</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.20.20.12">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.13">8.5</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.20.20.14">9.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.20.20.15">8.5</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.20.20.16">8.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.1.1.21.21.1">Llama-3.1-8B-filtered</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.1.1.21.21.2">8.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.3">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.1.1.21.21.4">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.5">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.6">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.7">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.8">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.9">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.1.1.21.21.10">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.11">8.6</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.21.21.12">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.13">8.5</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.21.21.14">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.21.21.15">8.5</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.21.21.16">8.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance evaluation results of writing models on two benchmarks: WritingBench and EQBench.  The models are categorized as either trained on the full dataset ('-all') or a filtered subset ('-filtered') of high-quality data curated using the WritingBench framework. The scores provide a quantitative comparison of the models' writing capabilities, highlighting the impact of data filtering on model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance evaluation of our writing models on two benchmarks.’-filtered’ indicates models trained with filtered data, while ’-all’ refers to those trained with the full dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Evaluation Metric</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Score</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.2.1">Static Global</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.2.2.2">ChatGPT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.3">69%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.3.3.1">Static Domain-Specific</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.3.3.2">ChatGPT</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.3">40%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.4.4.1">Dynamic Query-Dependent</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.4.4.2">ChatGPTt</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.3">79%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.5.5.1">Static Global</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.5.5.2">Claude</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.5.3">65%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.6">
<td class="ltx_td ltx_align_left" id="S4.T4.1.6.6.1">Static Domain-Specific</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.6.6.2">Claude</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.3">59%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.7">
<td class="ltx_td ltx_align_left" id="S4.T4.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.7.7.1.1">Dynamic Query-Dependent</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.7.7.2">Claude</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.3">87%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.8.8.1.1">Dynamic Query-Dependent</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.8.8.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.8.8.2.1">Critic Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.8.8.3">83%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used to initiate the generation of writing queries in the WritingBench benchmark.  The prompt instructs a language model to produce 10 distinct writing requests under a specified secondary domain, while remaining within the context of a primary domain. It emphasizes the need for detailed and specific requests that reflect realistic user needs and tone, and specifies the desired JSON format for the output.
> <details>
> <summary>read the caption</summary>
> Table 6: Initial query generation prompt introduced in Section 3.1.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1">WritingBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">Benchmark2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.2.2.1">Deepseek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.2.2">8.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.2.3">4.79</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.3.3.1">Qwen-2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.3.2">7.43</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.3.3">4.39</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.4.4.1">Llama-3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.4.2">6.35</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.4.3">3.12</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.5.5.1">Qwen-2.5-7B-all</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.5.5.2">8.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.5.5.3">4.69</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.6.6.1">Qwen-2.5-7B-filtered</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.6.2">8.49</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.6.3">4.70</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.7.7.1">Llama-3.1-8B-all</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.7.2">8.45</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.7.3">4.65</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.1.8.8.1">Llama-3.1-8B-filtered</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.8.2">8.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.8.3">4.65</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the 20 subdomains categorized under Academic & Engineering and Finance & Business domains in the WritingBench benchmark.  For each subdomain, a brief description of the type of writing task it represents is provided. This helps clarify the range of writing tasks covered within these two broad domains.
> <details>
> <summary>read the caption</summary>
> Table 7: Subdomains in Academic & Engineering and Finance & Business.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1">Subdomain</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.1.2.2.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T7.1.2.2.1.1">Academic &amp; Engineering</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.1.3.3.1">Paper Outline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.3.3.2">Hierarchical organization of research components and logical flow</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.4.4.1">Acknowledgments</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.4.4.2">Formal recognition of institutional and individual support</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.5.5.1">Limitations</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.5.5.2">Systematic identification of methodological constraints and scope boundaries</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.6.6.1">Defense Presentation</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.6.6.2">Presentation supporting materials, such as slides</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.7.7.1">Research Proposal</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.7.7.2">Investigation blueprint with validation road map</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.8.8.1">Technical Documentation</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.8.8.2">Implementation specifications and system interface protocols</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.9.9.1">Experiments</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.9.9.2">Parameterized validation framework with controlled variable analysis</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.10.10.1">Introduction</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.10.10.2">Contextual foundation establishing research gaps and significance</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.11.11.1">Conclusion</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.11.11.2">synthesize the main findings of the research or project</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.12.12.1">Test Report</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.12.12.2">Evaluations of testing activities and performance</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.13.13.1">Contributions</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.13.13.2">Novel aspects differentiating the work from prior research</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.14.14.1">Internship Report</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.14.14.2">Chronological documentation of a practical work placement</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.15.15.1">Literature Review</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.15.15.2">Critical gap analysis through scholarly works taxonomy</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.16.16.1">Defense Script</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.16.16.2">Oral presentations and responses for research defense.</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.17.17.1">Abstract</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.17.17.2">Summary of research objectives, methods, results, and significance</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.18.18.1">Engineering Report</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.18.18.2">Technical analysis on tasks, methodologies, and outcomes</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.19.19.1">Patent</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.19.19.2">Legal-technical specification of novel implementable claims</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.20.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.1.20.20.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T7.1.20.20.1.1">Finance &amp; Business</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T7.1.21.21.1">Meeting Minutes</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.21.21.2">Concise documentation of key discussion points, decisions, and action items</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.22.22.1">User Research</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.22.22.2">Insight collection on user needs and behaviors to inform product or service design</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.23.23.1">Business Correspondence</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.23.23.2">Formal communication with internal or external stakeholders for business purposes</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.24.24.1">Human Resource Management</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.24.24.2">Strategies and processes for managing workforce effectively</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.25.25.1">Recruitment</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.25.25.2">Strategies for attracting, selecting, and onboarding suitable candidates</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.26.26.1">Briefing</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.26.26.2">Summarized information provided to stakeholders ahead of a task or meeting</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.27.27.1">Event Planning</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.27.27.2">Coordinated organization of logistics and activities for event execution</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.28.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.28.28.1">Market Research</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.28.28.2">Systematic collection and analysis about market and consumer</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.29.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.29.29.1">Market Analysis</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.29.29.2">Evaluation of market trends, size, competitors, and dynamics</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.30.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.30.30.1">Risk Management</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.30.30.2">Identification, assessment, and prioritization of risks with mitigation strategies</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.31.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.31.31.1">Sales Report</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.31.31.2">Summary of sales activities, performance, and revenue figures over a given period</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.32.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.32.32.1">Pitch Deck</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.32.32.2">Visual presentation designed to communicate business ideas or proposals to investors</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.33.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.33.33.1">Contract</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.33.33.2">Legally binding agreement outlining the terms and conditions for business transactions</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.34.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.34.34.1">Tender Document</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.34.34.2">Formal proposal request containing project specifications and bidding instructions</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.35.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.35.35.1">Investment Analysis</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.35.35.2">Evaluation of financial investments to determine potential returns and risks</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.36.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.36.36.1">Product Proposal</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.36.36.2">Detailed plan outlining the development, features, and potential of new products</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.37.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.37.37.1">Strategic Planning</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.37.37.2">Business goal setting with actionable strategies for desired outcomes</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.38.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.38.38.1">Financial Reports</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.38.38.2">Comprehensive statements reflecting the financial performance and status</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.39.39">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T7.1.39.39.1">Requirements Specification</td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.39.39.2">Documentation detailing functional and non-functional requirements for a project</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.40.40">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r" id="A2.T7.1.40.40.1">Bid Proposal</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b" id="A2.T7.1.40.40.2">Formal offer to provide goods or services at a specified price, addressing client needs</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the 100 secondary subdomains included in the WritingBench benchmark, categorized under the primary domains of Politics & Law and Literature & Art.  For each subdomain, a concise description is provided to clarify the type of writing task involved.
> <details>
> <summary>read the caption</summary>
> Table 8: Subdomains in Politics & Law and Literature & Art.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1">Domain</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T8.1.2.2.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T8.1.2.2.1.1">Politics &amp; Law</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.1.3.3.1">Legal Opinion</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.3.3.2">Authoritative assessment and guidance on legal matters or questions</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.4.4.1">Government Speech</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.4.4.2">Formal address delivered by government officials outlining policies or positions</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.5.5.1">Judgment Document</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.5.5.2">Official written decision or order issued by a court</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.6.6.1">Legal Agreement</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.6.6.2">Binding contract setting out terms and obligations between parties</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.7.7.1">Case Study</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.7.7.2">In-depth analysis of a legal case for educational or professional purposes</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.8.8.1">Case Bulletin</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.8.8.2">Summary and update on ongoing or concluded legal cases</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.9.9.1">Legal Consultation</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.9.9.2">Professional advice provided on legal rights, responsibilities, or strategies</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.10.10.1">Regulatory Analysis</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.10.10.2">Examination of rules and regulations affecting compliance and enforcement</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.11.11.1">Meeting Summary</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.11.11.2">Brief overview of discussions, decisions, and outcomes from a meeting</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.12.12.1">Ideological Report</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.12.12.2">Analysis or commentary on political or ideological trends and perspectives</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.13.13.1">Policy Interpretation</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.13.13.2">Explanation or clarification for public or organizational guidance</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.14.14.1">Official Document</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.14.14.2">Formal written record issued by government entities or officials</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.15.15.1">Legal Awareness Campaign</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.15.15.2">Initiative to educate the public on legal rights and responsibilities</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.16.16.1">Defense Plea</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.16.16.2">Formal written argument submitted by the defense in a legal proceeding</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.17.17.1">Party Membership Application</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.17.17.2">Form and process for joining a political party</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.18.18.1">Policy Advocacy</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.18.18.2">Efforts to influence or promote specific policy changes or implementations</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.19.19.1">Work Report</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.19.19.2">Detailed account of activities, achievements, and challenges within a specific period</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.20.20.1">Deed Achievement</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.20.20.2">Record highlighting significant accomplishments and contributions</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.21.21.1">Litigation Documents</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.21.21.2">Legal filings and paperwork submitted in the course of a lawsuit</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.22.22.1">White Paper</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.22.22.2">Authoritative report providing information or proposals on an issue</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.23.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T8.1.23.23.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T8.1.23.23.1.1">Literature &amp; Art</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T8.1.24.24.1">Character Design</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.24.24.2">Creation and development of detailed characters for stories or visual media</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.25.25.1">Greeting Message</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.25.25.2">Friendly or formal introductory statement used for various occasions</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.26.26.1">Host Script</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.26.26.2">Guided narration and dialogue for a presenter during an event or show</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.27.27.1">Novel Outline</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.27.27.2">Structured plan for the plot, characters, and settings of a novel</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.28.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.28.28.1">Podcast Script</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.28.28.2">Written content outlining the dialogue and segments for podcast episodes</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.29.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.29.29.1">Derivative Work</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.29.29.2">Creative work based on or inspired by an existing piece</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.30.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.30.30.1">Reading Reflection</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.30.30.2">Personal thoughts and analysis on a piece of literature</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.31.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.31.31.1">Video Script</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.31.31.2">Script detailing dialogue and action for video content creation</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.32.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.32.32.1">Book Review</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.32.32.2">Critical evaluation and summary of a book’s content and impact</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.33.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.33.33.1">Game Design</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.33.33.2">Creation of game mechanics, stories, and interfaces for interactive entertainment</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.34.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.34.34.1">Lyric Writing</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.34.34.2">Crafting of words for songs with rhyme and meter considerations</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.35.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.35.35.1">Brainstorm</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.35.35.2">Rough ideas and notes generated during a creative thinking session</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.36.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.36.36.1">Plot Development</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.36.36.2">Process of mapping out the storyline and narrative structure</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.37.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.37.37.1">Prose</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.37.37.2">Written or spoken language in its ordinary form, without metrical structure</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.38.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.38.38.1">Screenplay</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.38.38.2">Scripted blueprint for film or television with dialogue and directions</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.39.39">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.39.39.1">Novel Manuscript</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.39.39.2">Complete text of a novel prepared for publication</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.40.40">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.40.40.1">Biography</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.40.40.2">Detailed account of a person’s life experiences and achievements</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.41.41">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.41.41.1">Film/TV Review</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.41.41.2">Analytical critique of a film or television show’s content and effectiveness</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.42.42">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T8.1.42.42.1">Poetry</td>
<td class="ltx_td ltx_align_left" id="A2.T8.1.42.42.2">Artistic composition using rhythmic and metaphorical language</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.43.43">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b ltx_border_r" id="A2.T8.1.43.43.1">Fan Fiction</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_b" id="A2.T8.1.43.43.2">Amateur stories written by enthusiasts featuring characters from existing media</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 lists the 100 secondary subdomains categorized under the primary domains of Education and Advertising & Marketing in the WritingBench benchmark.  For each subdomain, a brief description is provided, explaining the type of writing task involved.  This table provides a comprehensive overview of the diverse writing tasks included within the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 9: Subdomains in Education and Advertising & Marketing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.1.1">Domain</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T9.1.2.2.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T9.1.2.2.1.1">Education</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T9.1.3.3.1">Training Reflection</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.1.3.3.2">Personal assessment of training experiences and learned insights</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.4.4.1">Class Activity</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.4.4.2">Planned exercises or tasks designed to engage students in learning</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.5.5.1">Parent-Teacher Meeting</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.5.5.2">Formal discussion between educators and parents about student progress</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.6.6.1">Lesson Plan</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.6.6.2">Structured outline of educational objectives and teaching methods for a class</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.7.7.1">Teaching Materials</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.7.7.2">Resources used to aid in presenting information to students</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.8.8.1">Assignment Grading</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.8.8.2">Evaluation and scoring of student work based on specific criteria</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.9.9.1">Curriculum Design</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.9.9.2">Development of educational content, structure, and delivery methods</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.10.10.1">Educational Report</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.10.10.2">Analysis or summary of educational outcomes and performance</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.11.11.1">Coursework</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.11.11.2">Academic work assigned to students as part of a course</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.12.12.1">Evaluation Comments</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.12.12.2">Feedback provided on student performance and areas of improvement</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.13.13.1">Educational Consulting</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.13.13.2">Professional guidance on educational strategies and systems</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.14.14.1">Admissions Promotion</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.14.14.2">Strategies and activities aimed at encouraging enrollment in educational institutions</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.15.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T9.1.15.15.1" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_italic" id="A2.T9.1.15.15.1.1">Advertising &amp; Marketing</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T9.1.16.16.1">Sales Letter</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.1.16.16.2">Persuasive written communication intended to motivate potential buyers</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.17.17.1">Product Description</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.17.17.2">Detailed overview of a product’s features, benefits, and uses</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.18.18.1">Social Media Content</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.18.18.2">Engaging text, images, or videos crafted for online platforms</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.19.19.1">Multimedia Script</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.19.19.2">Planned screenplay integrating various forms of media for marketing</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.20.20.1">Promotional Copy</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.20.20.2">Compelling text written to boost interest and sales of products</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.21.21.1">Promotional Voiceover</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.21.21.2">Recorded narration to accompany marketing visuals or ads</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.22.22.1">Travel Guide</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.22.22.2">Informative content offering insights and tips for travelers</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.23.23.1">Brand Story</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.23.23.2">Narrative that outlines the history, values, and mission of a brand</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.24.24.1">Personal Blog</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.24.24.2">Individual commentary or stories shared in an informal online format</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T9.1.25.25.1">Marketing Commentary</td>
<td class="ltx_td ltx_align_left" id="A2.T9.1.25.25.2">Analytical thoughts on marketing trends and strategies</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T9.1.26.26.1">Slogans</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.1.26.26.2">Catchy and memorable phrases designed to convey brand identity</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a set of guidelines used to refine and enhance the initial writing queries generated by the model.  These guidelines aim to increase the diversity and practical applicability of the queries by incorporating specific requirements for length, format, style, personalization, and content.  The guidelines are designed to create writing tasks that better represent real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Table 10:  Query refinement guidance pool introduced in Section B.5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T15.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T15.1.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T15.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T15.1.1.1.2.1">WritingBench-D4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T15.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T15.1.1.1.3.1">EQBench</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T15.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T15.1.2.1.1">Deepseek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.2.1.2">8.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.2.1.3">84.99</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T15.1.3.2.1">Qwen-2.5-32B-Instruct</th>
<td class="ltx_td ltx_align_center" id="A3.T15.1.3.2.2">7.34</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.3.2.3">48.17</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T15.1.4.3.1">Qwen-2.5-32B-CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.4.3.2">8.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.4.3.3">82.48</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T15.1.5.4.1">-w/o CoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.1.5.4.2">8.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.1.5.4.3">79.43</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table describes the prompt used in the query refinement stage of the WritingBench construction.  The prompt guides the refinement of initial writing queries generated by LLMs, incorporating specific requirements and considering factors like length, format, style, and content.  The prompt is structured to ensure consistency and to guide the annotators to generate high-quality writing queries that align with real-world writing scenarios.
> <details>
> <summary>read the caption</summary>
> Table 11:  Query refinement prompt introduced in Section 3.1.1.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05244/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05244/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}