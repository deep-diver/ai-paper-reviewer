---
title: "IFIR: A Comprehensive Benchmark for Evaluating Instruction-Following in Expert-Domain Information Retrieval"
summary: "IFIR: a new benchmark for instruction-following retrieval in expert domains, revealing current model limitations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Extraction", "🏢 School of Advanced Interdisciplinary Sciences, University of Chinese Academy of Sciences",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04644 {{< /keyword >}}
{{< keyword icon="writer" >}} Tingyu Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04644" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04644" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04644/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The study introduces **IFIR**, a benchmark for evaluating instruction-following in specialized domains like finance, law, healthcare & science, where customized directions are critical. IFIR addresses limitations in existing models by incorporating instructions at varying complexity levels. A new LLM-based eval method is also proposed to assess model performance, addressing shortcomings of traditional methods.



Experiments with 15 information retrievers reveal significant challenges in effectively following domain-specific instructions. The paper highlights limitations of current models & potential of LLM-based retrievers. It introduces **INSTFOL**, a more reliable evaluation method and provides in-depth analyses to help future retriever development by offering insights to improve IR systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current models struggle to effectively follow complex, domain-specific instructions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLM-based retrievers show promise in handling complex retrieval tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new LLM-based evaluation metric, INSTFOL, provides a more precise assessment of instruction-following performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**IFIR** offers a new, specialized benchmark for instruction-following IR that highlights challenges in current models & informs future retriever development. Its detailed analysis and novel evaluation method could greatly improve search tech in expert domains.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04644/x3.png)

> 🔼 This figure illustrates instruction-following in information retrieval (IR). The top panel shows an example of a complex query for legal cases, highlighting the challenge for current IR systems. The bottom-left panel demonstrates how users typically work around this limitation by simplifying their queries and manually filtering results, a time-consuming process.  The bottom-right panel emphasizes the study's focus: evaluating the capabilities and limitations of modern end-to-end retrieval systems to handle complex instruction-following tasks in specialized domains.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (Top): An illustration of instruction-following IR scenarios explored in this study. The example simulates a legal case search, where the user provides detailed instructions to retrieve relevant legal cases. Current IR systems struggle to handle such complex queries. (Bottom left): As a result, users have to break down their information needs into simpler, iterative search queries and manually filter the retrieved cases, resulting in a time-consuming and inefficient process. (Bottom right): This study focuses on evaluating the progress and limitations of current end-to-end retrieval systems in expert-domain instruction-following IR.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.tab1.1.1">
<tr class="ltx_tr" id="S3.tab1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.tab1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.1.1">Domain</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.tab1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.2.1">Adopted Datasets</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.tab1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.3.1"># Qry</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.tab1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.4.1">Corpus Size</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.tab1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.5.1"># RP</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.tab1.1.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.1.6.1">
<span class="ltx_p" id="S3.tab1.1.1.1.6.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="S3.tab1.1.1.1.6.1.1.1">Designed Tasks Reflecting Real-world Challenges</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.tab1.1.1.2.1">Finance</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.tab1.1.1.2.2">FiQA <cite class="ltx_cite ltx_citemacro_cite">Jangid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib15" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.tab1.1.1.2.3">1,718</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.tab1.1.1.2.4">57,638</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.tab1.1.1.2.5">3.54</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.tab1.1.1.2.6">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.2.6.1">
<span class="ltx_p" id="S3.tab1.1.1.2.6.1.1" style="width:227.6pt;">Retrieve financial suggestions based on user-specific needs to support informed decision-making.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.3.1">
<span class="ltx_ERROR undefined" id="S3.tab1.1.1.3.1.1">\hdashline</span>
Scientific</td>
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.3.2">SciFact-open <cite class="ltx_cite ltx_citemacro_cite">Wadden et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib48" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.3.3">152</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.3.4">500,000</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.3.5">4.84</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.tab1.1.1.3.6" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.3.6.1">
<span class="ltx_p" id="S3.tab1.1.1.3.6.1.1" style="width:227.6pt;"><span class="ltx_text" id="S3.tab1.1.1.3.6.1.1.1">Retrieve relevant scientific literature tailored to specific scientific research needs.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.4.1">Literature</td>
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.4.2">NFCorpus <cite class="ltx_cite ltx_citemacro_cite">Boteva et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib7" title="">2016</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.4.3">86</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.4.4">3,633</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.4.5">2.81</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.5.1" rowspan="2">
<span class="ltx_ERROR undefined" id="S3.tab1.1.1.5.1.1">\hdashline</span>
<span class="ltx_text" id="S3.tab1.1.1.5.1.2">Law</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.5.2">AILA <cite class="ltx_cite ltx_citemacro_cite">Bhattacharya et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib6" title="">2019</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.5.3">85</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.5.4">2,914</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.5.5">2.01</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.tab1.1.1.5.6">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.5.6.1">
<span class="ltx_p" id="S3.tab1.1.1.5.6.1.1" style="width:227.6pt;">Retrieve legal cases that satisfy customized demands.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.6.1">FIRE <cite class="ltx_cite ltx_citemacro_cite">Mandal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib30" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.6.2">168</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.6.3">1,745</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.6.4">3.36</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.tab1.1.1.6.5">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.6.5.1">
<span class="ltx_p" id="S3.tab1.1.1.6.5.1.1" style="width:227.6pt;">Retrieve legal cases to support the judicial decision.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.tab1.1.1.7.1" rowspan="2">
<span class="ltx_ERROR undefined" id="S3.tab1.1.1.7.1.1">\hdashline</span>
<span class="ltx_text" id="S3.tab1.1.1.7.1.2">Healthcare</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.tab1.1.1.7.2">TREC-PM <cite class="ltx_cite ltx_citemacro_cite">Roberts et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib39" title="">2017</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib38" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.7.3">172</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.7.4">241,006</td>
<td class="ltx_td ltx_align_right" id="S3.tab1.1.1.7.5">15.61</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.tab1.1.1.7.6" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.tab1.1.1.7.6.1">
<span class="ltx_p" id="S3.tab1.1.1.7.6.1.1" style="width:227.6pt;"><span class="ltx_text" id="S3.tab1.1.1.7.6.1.1.1">Retrieve relevant clinical trials based on patient’s demographics (<span class="ltx_text" id="S3.tab1.1.1.7.6.1.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.tab1.1.1.7.6.1.1.1.1.1">e.g.,</em></span> age, gender, medical history)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.tab1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.tab1.1.1.8.1">TREC-CDS <cite class="ltx_cite ltx_citemacro_cite">Roberts et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.04644v1#bib.bib40" title="">2015</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.tab1.1.1.8.2">43</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.tab1.1.1.8.3">633,955</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.tab1.1.1.8.4">10.84</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an overview of the datasets used to create the IFIR benchmark, a comprehensive benchmark for evaluating instruction-following capabilities in expert-domain information retrieval.  For each of four domains (finance, scientific literature, law, and healthcare), it lists the original dataset used, the number of queries, the size of the corpus, the average number of relevant passages per query, and a brief description of the types of tasks and challenges involved in each domain. The table helps to understand the scope and diversity of IFIR.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of the adopted datasets and designed instruction-following IR tasks in IfIR, along with basic statistics for each domain. “# RP” represents the average relevant passage number per instruction-following query.
> </details>





### In-depth insights


#### IFIR: Benchmark
The **IFIR benchmark** is introduced as a novel resource to evaluate the instruction-following capabilities of information retrieval systems in specialized domains. Its creation addresses the gap in current benchmarks, which often **oversimplify instructions** or focus on general domains. IFIR's strength lies in its coverage of finance, scientific literature, law, and healthcare, with varying levels of instruction complexity that replicate real-world scenarios. The benchmark's construction involves a semi-automated, human-in-the-loop pipeline to ensure **high quality and relevance**. The benchmark facilitates fine-grained analysis and guide future retriever development. The LLM-based metric offers a way to accurately assess how well retrievers follow instructions in niche fields.

#### Expert Domains IR
**Expert domain IR benchmarks** are crucial for advancing information retrieval in specialized fields like law, finance, healthcare, and science. These benchmarks address the need for systems to handle complex, context-aware queries that go beyond simple keyword searches.  Developing robust IR systems for expert domains facilitates evidence-based decision-making, accelerates research, and enables efficient access to domain-specific knowledge. The challenge lies in capturing the nuanced requirements and domain-specific terminology, ensuring the retrieval systems understand and process instructions effectively to meet the needs of experts in these specialized areas.

#### Human-in-loop
In the context of this research paper about instruction-following information retrieval, a "human-in-the-loop" approach is crucial for several aspects of the methodology. First, it is **essential for generating high-quality training data**. While Large Language Models(LLMs) can automatically create instructions or evaluate retrieval results, **human experts** are needed to validate and refine the generated content to ensure it is accurate and relevant. Second, human evaluations are indispensable for **assessing the performance** of the retrieval system. As the paper states, LLM-based metrics can be useful, but **correlation with human judgement** is vital to ensure that the metric is trustworthy. A human-in-the-loop approach can also be **incorporated into the retrieval system itself**, where user feedback is used to improve results. Such iterative approach enables a deeper understanding of user needs, leading to more relevant and accurate retrieval results.

#### LLM metric:INSTFOL
The paper introduces INSTFOL, a novel **LLM-based metric** designed to specifically evaluate **instruction-following capabilities** in information retrieval (IR) systems, addressing limitations of traditional metrics like nDCG which don't fully capture fine-grained aspects of following instructions. INSTFOL assesses the **improvement a retriever demonstrates when instructions are incorporated**, compared to when they are not. It leverages LLMs to score the relevance between instruction-following queries and retrieved passages, mitigating potential biases through probability normalization techniques. Experiments use GPT-40-mini and a novel ranking approach. INSTFOL exhibits a high correlation with human evaluations, highlighting its reliability in assessing a retriever’s ability to follow instructions, making it valuable in complex information retrieval tasks in specialized domains. INSTFOL aims to more accurately assess how well retrievers follow instructions, offering a more targeted and granular evaluation.

#### Robust Retrieval
**Robust retrieval** is crucial in expert domains due to nuanced queries. The paper addresses this, introducing IFIR to evaluate instruction-following in specialized fields, highlighting the limitations of current models in handling complex, domain-specific instructions. This is evident in the challenges faced by current instruction-tuned models with long, customized requests. The study's analysis emphasizes the need for models that exhibit stable instruction-following and better results compared to other retrievers. The strong Pearson correlation coefficient found in the proposed evaluation metric suggests that the instruction-following is key for robust performance. This all suggests potential solutions for end-to-end specialized-domain retrieval scenarios and could lead to domain adaption.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04644/x4.png)

> 🔼 This figure illustrates the pipeline used to create the IFIR benchmark dataset.  First, a domain-specific task is selected based on the source dataset.  Then, instructions for that task are generated, mirroring real-world user queries. These instructions vary in complexity. An LLM (Large Language Model) then assesses the relevance of existing corpora to these newly generated instructions. The color-coding in the 'Task' section visually links instruction criteria to the relevant passages in the corpus. This process ensures that the dataset contains relevant passages that accurately reflect the complexity and nuance of real-world instruction-following scenarios in expert domains.
> <details>
> <summary>read the caption</summary>
> Figure 2: Dataset Construction Pipeline: We derive a specific task according to the dataset, which then guides the generation of instructions based on the original query and task conditions. An LLM is used to assess whether the corpora are relevant to these instructions. As illustrated in the figure, different colors in the “Task” section correspond to the conditions outlined in the “Instruction” section.
> </details>



![](https://arxiv.org/html/2503.04644/x5.png)

> 🔼 This figure displays the improvement in nDCG scores achieved by incorporating detailed instructions into retrieval queries.  It compares the performance of different models with and without the use of these detailed instructions, providing insights into the effectiveness of instruction-following in retrieval tasks.  The chart likely shows the percentage change in nDCG for each model when using detailed instructions, highlighting the impact of instruction detail on retrieval performance.  Higher bars indicate a greater performance boost from using more detailed instructions.
> <details>
> <summary>read the caption</summary>
> Figure 3: The nDCG improvement when the model is provided with detailed instructions for retrieval.
> </details>



![](https://arxiv.org/html/2503.04644/x6.png)

> 🔼 This figure displays the average normalized discounted cumulative gain (nDCG@20) scores achieved by various information retrieval models across three different levels of instruction complexity within four specialized domains: finance, scientific literature, law, and healthcare.  Each bar represents the average nDCG@20 score for a given domain and instruction level.  The x-axis represents the domain and the three instruction levels within each domain (Level 1, Level 2, and Level 3, with increasing complexity).  The y-axis shows the nDCG@20 score, indicating the effectiveness of the models in retrieving relevant information according to the instructions provided. This visualization allows for a comparison of model performance across domains and instruction complexity levels, revealing insights into the models' capabilities to handle instruction-following information retrieval tasks of varying difficulty.
> <details>
> <summary>read the caption</summary>
> Figure 4: Average nDCG@20 performance on different levels of instructions in different domains.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S3.SS3.tab1.1">
<tr class="ltx_tr" id="S3.SS3.tab1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.SS3.tab1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.tab1.1.1.1.1">Evaluation Criteria</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.SS3.tab1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.SS3.tab1.1.1.2.1">Score (1-5)</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS3.tab1.1.2.1"><em class="ltx_emph ltx_font_italic" id="S3.SS3.tab1.1.2.1.1">Instruction-Following Query</em></td>
<td class="ltx_td ltx_border_t" id="S3.SS3.tab1.1.2.2"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.3">
<td class="ltx_td ltx_align_left" id="S3.SS3.tab1.1.3.1">   Naturalness</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.tab1.1.3.2">4.24</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.4">
<td class="ltx_td ltx_align_left" id="S3.SS3.tab1.1.4.1">   Fluency</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.tab1.1.4.2">4.81</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.5">
<td class="ltx_td ltx_align_left" id="S3.SS3.tab1.1.5.1">   Expertise</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.tab1.1.5.2">4.87</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS3.tab1.1.6.1"><em class="ltx_emph ltx_font_italic" id="S3.SS3.tab1.1.6.1.1">Relevant Passage (RP)</em></td>
<td class="ltx_td ltx_border_t" id="S3.SS3.tab1.1.6.2"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.7">
<td class="ltx_td ltx_align_left" id="S3.SS3.tab1.1.7.1">   Relevant Passage Agreement</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.tab1.1.7.2">4.43</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.8">
<td class="ltx_td ltx_align_left" id="S3.SS3.tab1.1.8.1">
<span class="ltx_ERROR undefined" id="S3.SS3.tab1.1.8.1.1">\hdashline</span>
<em class="ltx_emph ltx_font_italic" id="S3.SS3.tab1.1.8.1.2">Excluded RP</em>
</td>
<td class="ltx_td" id="S3.SS3.tab1.1.8.2"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.SS3.tab1.1.9.1">   Exclusion Agreement</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.tab1.1.9.2">4.32</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of human evaluation of the IFIR dataset's quality.  It assesses how well the instructions reflect real-world scenarios (Naturalness), the level of agreement between human annotators and the LLM in identifying relevant passages (Relevant Passage Agreement), and the level of agreement in excluding irrelevant passages (Exclusion Agreement).  The scores range from 1 to 5, with higher scores indicating better quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Human Validation Results. Naturalness of instructions evaluates how well the instructions align with real-world demands. The Relevant Passage Agreement Score refers to human annotators’ agreement with the LLM on identifying a golden passage, while the Exclusion Agreement Score reflects human annotators’ agreement on excluding a passage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T3.1.1.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.2" style="padding-left:2.2pt;padding-right:2.2pt;">FiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.3" style="padding-left:2.2pt;padding-right:2.2pt;">SciFact-open</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.4" style="padding-left:2.2pt;padding-right:2.2pt;">NFCorpus</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.5" style="padding-left:2.2pt;padding-right:2.2pt;">AILA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.6" style="padding-left:2.2pt;padding-right:2.2pt;">FIRE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.7" style="padding-left:2.2pt;padding-right:2.2pt;">TREC-PM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.8" style="padding-left:2.2pt;padding-right:2.2pt;">TREC-CDS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2">
<td class="ltx_td" id="S3.T3.1.1.2.1" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.2" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.3.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.5.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.6" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.7.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.8" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.9.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.10" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.11.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.12" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.13.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.14" style="padding-left:2.2pt;padding-right:2.2pt;">nDCG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.15" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.15.1">InstFol</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.16" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.16.1">nDCG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.17" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.1.1.2.17.1">InstFol</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T3.1.1.3.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.1.1.3.1.1">Non-instruction-tuned Models</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.1" style="padding-left:2.2pt;padding-right:2.2pt;">GTR-XL</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.3" style="padding-left:2.2pt;padding-right:2.2pt;">-4.85</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.5" style="padding-left:2.2pt;padding-right:2.2pt;">-2.93</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.7" style="padding-left:2.2pt;padding-right:2.2pt;">7.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.11" style="padding-left:2.2pt;padding-right:2.2pt;">0.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.13" style="padding-left:2.2pt;padding-right:2.2pt;">-0.85</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.15" style="padding-left:2.2pt;padding-right:2.2pt;">7.69</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.37</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.4.17" style="padding-left:2.2pt;padding-right:2.2pt;">0.95</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.1" style="padding-left:2.2pt;padding-right:2.2pt;">BM25</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.3" style="padding-left:2.2pt;padding-right:2.2pt;">1.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.5" style="padding-left:2.2pt;padding-right:2.2pt;">-0.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.7" style="padding-left:2.2pt;padding-right:2.2pt;">1.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.9" style="padding-left:2.2pt;padding-right:2.2pt;">0.02</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.11" style="padding-left:2.2pt;padding-right:2.2pt;">0.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.13" style="padding-left:2.2pt;padding-right:2.2pt;">3.43</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.15" style="padding-left:2.2pt;padding-right:2.2pt;">-2.14</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.17" style="padding-left:2.2pt;padding-right:2.2pt;">0.50</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.1" style="padding-left:2.2pt;padding-right:2.2pt;">GTR-Large</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.3" style="padding-left:2.2pt;padding-right:2.2pt;">-6.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.5" style="padding-left:2.2pt;padding-right:2.2pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.7" style="padding-left:2.2pt;padding-right:2.2pt;">-3.37</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.36</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.11" style="padding-left:2.2pt;padding-right:2.2pt;">-5.21</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.13" style="padding-left:2.2pt;padding-right:2.2pt;">-1.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.15" style="padding-left:2.2pt;padding-right:2.2pt;">11.38</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.6.17" style="padding-left:2.2pt;padding-right:2.2pt;">-0.78</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.7.1" style="padding-left:2.2pt;padding-right:2.2pt;">GTR-Base</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.3" style="padding-left:2.2pt;padding-right:2.2pt;">-4.62</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.5" style="padding-left:2.2pt;padding-right:2.2pt;">-0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.7" style="padding-left:2.2pt;padding-right:2.2pt;">-0.08</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.9.1">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.11" style="padding-left:2.2pt;padding-right:2.2pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.27</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.13" style="padding-left:2.2pt;padding-right:2.2pt;">-0.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.15" style="padding-left:2.2pt;padding-right:2.2pt;">7.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.7.17" style="padding-left:2.2pt;padding-right:2.2pt;">0.35</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.1" style="padding-left:2.2pt;padding-right:2.2pt;">Contriever</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.3" style="padding-left:2.2pt;padding-right:2.2pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.29</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.5" style="padding-left:2.2pt;padding-right:2.2pt;">-8.22</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.7" style="padding-left:2.2pt;padding-right:2.2pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.9" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.11" style="padding-left:2.2pt;padding-right:2.2pt;">2.82</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.13" style="padding-left:2.2pt;padding-right:2.2pt;">1.24</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.15" style="padding-left:2.2pt;padding-right:2.2pt;">2.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.8.17" style="padding-left:2.2pt;padding-right:2.2pt;">-0.13</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.1" style="padding-left:2.2pt;padding-right:2.2pt;">ColBERT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.3" style="padding-left:2.2pt;padding-right:2.2pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.5" style="padding-left:2.2pt;padding-right:2.2pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.7" style="padding-left:2.2pt;padding-right:2.2pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.01</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.11" style="padding-left:2.2pt;padding-right:2.2pt;">1.44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.02</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.13" style="padding-left:2.2pt;padding-right:2.2pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.15" style="padding-left:2.2pt;padding-right:2.2pt;">-0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.9.17" style="padding-left:2.2pt;padding-right:2.2pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T3.1.1.10.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.1.1.10.1.1">Instruction-tuned Models</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.11">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.11.1" style="padding-left:2.2pt;padding-right:2.2pt;">NV-Embed-v2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.2" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.11.2.1">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.3" style="padding-left:2.2pt;padding-right:2.2pt;">2.76</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.11.4.1">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.5" style="padding-left:2.2pt;padding-right:2.2pt;">-1.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.6" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.11.6.1">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.7" style="padding-left:2.2pt;padding-right:2.2pt;">13.70</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.11" style="padding-left:2.2pt;padding-right:2.2pt;">0.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.13" style="padding-left:2.2pt;padding-right:2.2pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.15" style="padding-left:2.2pt;padding-right:2.2pt;">-5.19</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.16" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.11.16.1">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.11.17" style="padding-left:2.2pt;padding-right:2.2pt;">1.59</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.12">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.1" style="padding-left:2.2pt;padding-right:2.2pt;">GritLM-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.3" style="padding-left:2.2pt;padding-right:2.2pt;">3.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.5" style="padding-left:2.2pt;padding-right:2.2pt;">-0.06</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.7" style="padding-left:2.2pt;padding-right:2.2pt;">15.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.11" style="padding-left:2.2pt;padding-right:2.2pt;">4.01</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.12" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.12.12.1">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.13" style="padding-left:2.2pt;padding-right:2.2pt;">-0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.14" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.12.14.1">0.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.15" style="padding-left:2.2pt;padding-right:2.2pt;">-0.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.16" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.12.16.1">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.12.17" style="padding-left:2.2pt;padding-right:2.2pt;">3.06</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.13">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.1" style="padding-left:2.2pt;padding-right:2.2pt;">E5-mistral-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.3" style="padding-left:2.2pt;padding-right:2.2pt;">4.26</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.5" style="padding-left:2.2pt;padding-right:2.2pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.7" style="padding-left:2.2pt;padding-right:2.2pt;">14.14</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.9" style="padding-left:2.2pt;padding-right:2.2pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.13.10.1">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.11" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.13.11.1">6.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.13" style="padding-left:2.2pt;padding-right:2.2pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.15" style="padding-left:2.2pt;padding-right:2.2pt;">-4.42</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.13.17" style="padding-left:2.2pt;padding-right:2.2pt;">3.05</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.14">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.14.1" style="padding-left:2.2pt;padding-right:2.2pt;">Instructor-XL</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.3" style="padding-left:2.2pt;padding-right:2.2pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.5" style="padding-left:2.2pt;padding-right:2.2pt;">-2.36</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.7" style="padding-left:2.2pt;padding-right:2.2pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.11" style="padding-left:2.2pt;padding-right:2.2pt;">1.96</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.13" style="padding-left:2.2pt;padding-right:2.2pt;">-2.06</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.15" style="padding-left:2.2pt;padding-right:2.2pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.14.17" style="padding-left:2.2pt;padding-right:2.2pt;">-0.17</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.15">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.15.1" style="padding-left:2.2pt;padding-right:2.2pt;">Instructor-Large</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.3" style="padding-left:2.2pt;padding-right:2.2pt;">3.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.5" style="padding-left:2.2pt;padding-right:2.2pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.7" style="padding-left:2.2pt;padding-right:2.2pt;">3.68</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.9" style="padding-left:2.2pt;padding-right:2.2pt;">0.29</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.11" style="padding-left:2.2pt;padding-right:2.2pt;">2.19</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.13" style="padding-left:2.2pt;padding-right:2.2pt;">-3.86</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.15" style="padding-left:2.2pt;padding-right:2.2pt;">6.70</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.15.17" style="padding-left:2.2pt;padding-right:2.2pt;">1.84</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.16">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.16.1" style="padding-left:2.2pt;padding-right:2.2pt;">Promptriever-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.22</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.16.3.1">8.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.16.5.1">3.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.16.7.1">18.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.11" style="padding-left:2.2pt;padding-right:2.2pt;">5.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.16.13.1">13.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.15" style="padding-left:2.2pt;padding-right:2.2pt;">7.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.16.17" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.16.17.1">8.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.17">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.17.1" style="padding-left:2.2pt;padding-right:2.2pt;">Instructor-Base</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.3" style="padding-left:2.2pt;padding-right:2.2pt;">3.31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.5" style="padding-left:2.2pt;padding-right:2.2pt;">0.42</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.7" style="padding-left:2.2pt;padding-right:2.2pt;">2.06</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.9" style="padding-left:2.2pt;padding-right:2.2pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.11" style="padding-left:2.2pt;padding-right:2.2pt;">-2.70</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.13" style="padding-left:2.2pt;padding-right:2.2pt;">1.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.15" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.17.15.1">13.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.17.17" style="padding-left:2.2pt;padding-right:2.2pt;">2.65</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T3.1.1.18.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T3.1.1.18.1.1">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.19">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.19.1" style="padding-left:2.2pt;padding-right:2.2pt;">OpenAI-v3-large</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.3" style="padding-left:2.2pt;padding-right:2.2pt;">1.57</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.5" style="padding-left:2.2pt;padding-right:2.2pt;">-0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.7" style="padding-left:2.2pt;padding-right:2.2pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.8" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.19.8.1">0.11</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.19.10.1">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.11" style="padding-left:2.2pt;padding-right:2.2pt;">-0.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.13" style="padding-left:2.2pt;padding-right:2.2pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.15" style="padding-left:2.2pt;padding-right:2.2pt;">-5.72</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.19.17" style="padding-left:2.2pt;padding-right:2.2pt;">-0.60</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.20.1" style="padding-left:2.2pt;padding-right:2.2pt;">OpenAI-v3-small</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.2" style="padding-left:2.2pt;padding-right:2.2pt;">0.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.3" style="padding-left:2.2pt;padding-right:2.2pt;">2.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.4" style="padding-left:2.2pt;padding-right:2.2pt;">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.5" style="padding-left:2.2pt;padding-right:2.2pt;">-0.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.6" style="padding-left:2.2pt;padding-right:2.2pt;">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.7" style="padding-left:2.2pt;padding-right:2.2pt;">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.8" style="padding-left:2.2pt;padding-right:2.2pt;">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.9" style="padding-left:2.2pt;padding-right:2.2pt;">-0.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.10" style="padding-left:2.2pt;padding-right:2.2pt;">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.11" style="padding-left:2.2pt;padding-right:2.2pt;">3.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.13" style="padding-left:2.2pt;padding-right:2.2pt;">-1.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.14" style="padding-left:2.2pt;padding-right:2.2pt;">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.15" style="padding-left:2.2pt;padding-right:2.2pt;">-0.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.16" style="padding-left:2.2pt;padding-right:2.2pt;">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.20.17" style="padding-left:2.2pt;padding-right:2.2pt;">0.45</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various information retrieval models on the IFIR benchmark.  The performance is evaluated using two metrics: nDCG@20 (normalized Discounted Cumulative Gain at rank 20), a standard measure of ranking quality, and INSTFOL@20 (a novel instruction-following metric proposed in the paper).  The table is organized to show the results for different model types (instruction-tuned and non-instruction-tuned), broken down by dataset.  Note that the average nDCG@20 score is used for model ranking, and further details, including results for a hybrid retrieval approach, are available in Appendix C. 
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of retrievers on IfIR measured by nDCG@20 and InstFol@20 (%). Fine-grained results(i.e., hybrid) can be found at Appendix C. Model performance is ranked based on average results with the nDCG metric.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.1.1">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.1">ID</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.2">Fluent in English</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.3">Major</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T4.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.4.1">
<span class="ltx_p" id="A1.T4.1.1.1.4.1.1" style="width:199.2pt;">Annotation tasks</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1">1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.2">&gt; 10 yrs</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.3">Legal</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.2.4.1">
<span class="ltx_p" id="A1.T4.1.1.2.4.1.1" style="width:199.2pt;">Legal subset annotation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.1">2</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2">&gt; 7 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.3">Legal</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.3.4.1">
<span class="ltx_p" id="A1.T4.1.1.3.4.1.1" style="width:199.2pt;">Legal subset annotation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.1">3</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.2">&gt; 10 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3">Biology</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.4.4.1">
<span class="ltx_p" id="A1.T4.1.1.4.4.1.1" style="width:199.2pt;">Healthcare subset annotation; Science Literature subset annotation; Annotation Validation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.1">4</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.2">&gt; 7 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.3">Pharmacy</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.5.4.1">
<span class="ltx_p" id="A1.T4.1.1.5.4.1.1" style="width:199.2pt;">Healthcare subset annotation; Science Literature subset annotation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.1">5</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.2">&gt; 10 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.3">Biomedical engineering</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.6.4.1">
<span class="ltx_p" id="A1.T4.1.1.6.4.1.1" style="width:199.2pt;">Healthcare subset annotation; Science Literature subset annotation; Annotation Validation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.1">6</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.2">&gt; 7 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.3">Mathematics</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.7.4.1">
<span class="ltx_p" id="A1.T4.1.1.7.4.1.1" style="width:199.2pt;">Financial subset annotation; Annotation Validation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.1">7</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.2">&gt; 6 yrs</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.3">Finance</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.8.4.1">
<span class="ltx_p" id="A1.T4.1.1.8.4.1.1" style="width:199.2pt;">Financial subset annotation;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.1">8</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.2">Native Speaker</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.3">Finance</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.9.4.1">
<span class="ltx_p" id="A1.T4.1.1.9.4.1.1" style="width:199.2pt;">Financial Subset Annotation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.10.1">9</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.10.2">&gt; 10 yrs</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.10.3">Legal</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T4.1.1.10.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.10.4.1">
<span class="ltx_p" id="A1.T4.1.1.10.4.1.1" style="width:199.2pt;">Legal subset annotation</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the background of the human annotators who worked on the IFIR benchmark dataset creation.  For each annotator, it lists their years of experience, area of expertise, and the specific annotation tasks they performed. This information is useful to understand the level of expertise and the scope of tasks related to the construction of the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 4: Human annotator’s tasks
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1">
<tr class="ltx_tr" id="A2.T5.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.1.2.1">
<span class="ltx_p" id="A2.T5.1.1.1.2.1.1" style="width:199.2pt;">query</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T5.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.1.3.1">
<span class="ltx_p" id="A2.T5.1.1.1.3.1.1" style="width:341.4pt;">instruction</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.2.1">FiQA</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.2.2.1">
<span class="ltx_p" id="A2.T5.1.1.2.2.1.1" style="width:199.2pt;">Full-time work + running small side business: Best business structure for taxes?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.2.3.1">
<span class="ltx_p" id="A2.T5.1.1.2.3.1.1" style="width:341.4pt;">As a 40-year-old accountant with a steady income and moderate savings, I am seeking advice on the best business structure for taxes when combining full-time work with running a small side business. I am particularly interested in understanding the tax implications, legal considerations, and potential benefits of different business structures. Additionally, I am looking for insights on how to optimize tax efficiency while balancing the demands of my full-time job and side business.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.3.1">SciFact-open</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.3.2.1">
<span class="ltx_p" id="A2.T5.1.1.3.2.1.1" style="width:199.2pt;">A deficiency of folate decreases blood levels of homocysteine.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.3.3.1">
<span class="ltx_p" id="A2.T5.1.1.3.3.1.1" style="width:341.4pt;">As an expert in the field of science, I need to find a peer-reviewed research article or a review paper that presents contradicting evidence regarding the relationship between folate deficiency and homocysteine levels in the blood. The passage should offer evidence that opposes the claim stating that a deficiency of folate results in decreased blood levels of homocysteine.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.4.1">NFCorpus</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.4.2.1">
<span class="ltx_p" id="A2.T5.1.1.4.2.1.1" style="width:199.2pt;">Why are Cancer Rates so Low in India?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.4.3.1">
<span class="ltx_p" id="A2.T5.1.1.4.3.1.1" style="width:341.4pt;">I am a student researching the factors contributing to low cancer rates in India, and I am specifically interested in understanding the role of dietary habits. I need to find scientific studies or articles from the fields of oncology, nutrition, and epidemiology that focus on the relationship between Indian dietary patterns and cancer prevention. My objective is to analyze the types of foods commonly consumed in India and their potential protective effects against cancer. To meet my customized needs, I require information on specific dietary components, such as spices, fruits, vegetables, and traditional Indian dishes, that have been associated with lower cancer rates. Additionally, I am interested in any experimental studies or clinical trials investigating the effects of these dietary factors on cancer cells or animal models.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.5.1">AILA</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.5.2.1">
<span class="ltx_p" id="A2.T5.1.1.5.2.1.1" style="width:199.2pt;">The appellant, once a prime witness in a bribery trial, became a Cabinet Minister and resigned after critical judicial remarks during an appeal that acquitted the first respondent. The High Court questioned the evidence and the appellant’s credibility, overturning the initial conviction for accepting bribes.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.5.3.1">
<span class="ltx_p" id="A2.T5.1.1.5.3.1.1" style="width:341.4pt;">I represent the appellant and I seek cases involving a defendant who benefitted from a reversal of a conviction due to lack of acceptable evidence and a plausible explanation for the incriminating evidence found in their possession, despite adverse remarks made by the Appellate Judge regarding the credibility of the appellant’s testimony in a bribery case where the defendant was acquitted based on insufficient prosecution evidence.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.6">
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.6.1">FIRE</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.6.2.1">
<span class="ltx_p" id="A2.T5.1.1.6.2.1.1" style="width:199.2pt;">[A legal case summary] What was the decision and legal principle established in the case referred to as [?CITATION?] in relation to the doctrine of promissory estoppel in the context of government representations and obligations?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.6.3.1">
<span class="ltx_p" id="A2.T5.1.1.6.3.1.1" style="width:341.4pt;">Retrieve the prior case referred to as [?CITATION?] and focus on the court’s analysis and ruling regarding the application of promissory estoppel against the government, particularly in situations where representations are made by governmental authorities and the subsequent obligations arising from such representations. Pay attention to any discussion on the enforceability of promises made by the government, the limitations of promissory estoppel against the government, and the factors determining the applicability of the doctrine in cases involving governmental representations.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.7">
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.7.1">TREC-PM</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.7.2.1">
<span class="ltx_p" id="A2.T5.1.1.7.2.1.1" style="width:199.2pt;">A patient diagnosed with Liposarcoma with CDK4 Amplification. I am looking for possible clinical trials suitable for this patient.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.1.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.7.3.1">
<span class="ltx_p" id="A2.T5.1.1.7.3.1.1" style="width:341.4pt;">I am seeking clinical trials for a 38-year-old male diagnosed with Liposarcoma with CDK4 Amplification. Please focus on trials specifically targeting Liposarcoma or related soft tissue sarcomas. It is crucial that the trials consider the presence of CDK4 Amplification in the patient’s condition. Additionally, the patient’s age and gender should be taken into account when selecting suitable clinical trial options. Patient Profile: The patient is a 38-year-old male who has been diagnosed with Liposarcoma with CDK4 Amplification. He has a treatment background that includes both chemotherapy and radiation, and he is currently in remission. It is important to note that he has a history of smoking and is also dealing with obesity. Given these demographic details, I am seeking clinical trials that specifically target Liposarcoma or related soft tissue sarcomas, taking into consideration the presence of CDK4 Amplification. The trials should also consider the patient’s age and gender, as well as any potential influences from his treatment background, smoking history, and obesity.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.1.8.1">TREC-CDS</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T5.1.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.8.2.1">
<span class="ltx_p" id="A2.T5.1.1.8.2.1.1" style="width:199.2pt;">Given some infomation about patient. 58-year-old woman with hypertension and obesity presents with exercise-related episodic chest pain radiating to the back.What is the patient’s diagnosis?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T5.1.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.8.3.1">
<span class="ltx_p" id="A2.T5.1.1.8.3.1.1" style="width:341.4pt;">A 58-year-old African-American woman presents to the ER with episodic pressing/burning anterior chest pain that began two days earlier for the first time in her life. The pain started while she was walking, radiates to the back, and is accompanied by nausea, diaphoresis and mild dyspnea, but is not increased on inspiration. The latest episode of pain ended half an hour prior to her arrival. She is known to have hypertension and obesity. She denies smoking, diabetes, hypercholesterolemia, or a family history of heart disease. She currently takes no medications. Physical examination is normal. The EKG shows nonspecific changes.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases example instructions from each of the four domains included in the IFIR benchmark: finance, scientific literature, law, and healthcare.  For each domain, it presents one query and three levels of instruction complexity to illustrate the nuances in real-world information retrieval. The increasing complexity demonstrates the challenging aspects of instruction-following in expert domains.
> <details>
> <summary>read the caption</summary>
> Table 5: Examples of instructions in different domains.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1.1">
<tr class="ltx_tr" id="A2.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.1.2.1.1" style="width:113.8pt;">level1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.3.1">
<span class="ltx_p" id="A2.T6.1.1.1.3.1.1" style="width:170.7pt;">level2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.4.1">
<span class="ltx_p" id="A2.T6.1.1.1.4.1.1" style="width:341.4pt;">level3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1">FiQA</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.2.1">
<span class="ltx_p" id="A2.T6.1.1.2.2.1.1" style="width:113.8pt;">Please help me to find the financial suggestions for my query.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.3.1">
<span class="ltx_p" id="A2.T6.1.1.2.3.1.1" style="width:170.7pt;">I am a 40-year-old accountant with a steady income and moderate savings.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.4.1">
<span class="ltx_p" id="A2.T6.1.1.2.4.1.1" style="width:341.4pt;">As a 40-year-old accountant with a steady income and moderate savings, I am seeking advice on the best business structure for taxes when combining full-time work with running a small side business. I am particularly interested in understanding the tax implications, legal considerations, and potential benefits of different business structures. Additionally, I am looking for insights on how to optimize tax efficiency while balancing the demands of my full-time job and side business</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.3.1">SciFact-open</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.2.1">
<span class="ltx_p" id="A2.T6.1.1.3.2.1.1" style="width:113.8pt;">Please find the science passage which related to the claim</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.3.1">
<span class="ltx_p" id="A2.T6.1.1.3.3.1.1" style="width:170.7pt;">Please help me to find the contradict evidence.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.4.1">
<span class="ltx_p" id="A2.T6.1.1.3.4.1.1" style="width:341.4pt;">As an expert in the field of science, I need to find a peer-reviewed research article or a review paper that presents contradicting evidence regarding the relationship between folate deficiency and homocysteine levels in the blood. The passage should offer evidence that opposes the claim stating that a deficiency of folate results in decreased blood levels of homocysteine.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.1">AILA</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.4.2.1">
<span class="ltx_p" id="A2.T6.1.1.4.2.1.1" style="width:113.8pt;">Please help me find the relevant legal cases.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.4.3.1">
<span class="ltx_p" id="A2.T6.1.1.4.3.1.1" style="width:170.7pt;">As a defendant player, I want the case where the defendant is beneficial.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.4.4.1">
<span class="ltx_p" id="A2.T6.1.1.4.4.1.1" style="width:341.4pt;">I represent the appellant and I seek cases involving a defendant who benefitted from a reversal of a conviction due to lack of acceptable evidence and a plausible explanation for the incriminating evidence found in their possession, despite adverse remarks made by the Appellate Judge regarding the credibility of the appellant’s testimony in a bribery case where the defendant was acquitted based on insufficient prosecution evidence.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.5.1">TREC-PM</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T6.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.5.2.1">
<span class="ltx_p" id="A2.T6.1.1.5.2.1.1" style="width:113.8pt;">I’m looking for clinical trials suitable for a 38-year-old male patient diagnosed with Liposarcoma with CDK4 Amplification.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T6.1.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.5.3.1">
<span class="ltx_p" id="A2.T6.1.1.5.3.1.1" style="width:170.7pt;">I am seeking clinical trials for a 38-year-old male diagnosed with Liposarcoma with CDK4 Amplification. Please focus on trials specifically targeting Liposarcoma or related soft tissue sarcomas. It is crucial that the trials consider the presence of CDK4 Amplification in the patient’s condition. Additionally, the patient’s age and gender should be taken into account when selecting suitable clinical trial options.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T6.1.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.5.4.1">
<span class="ltx_p" id="A2.T6.1.1.5.4.1.1" style="width:341.4pt;">I am seeking clinical trials for a 38-year-old male diagnosed with Liposarcoma with CDK4 Amplification. Please focus on trials specifically targeting Liposarcoma or related soft tissue sarcomas. It is crucial that the trials consider the presence of CDK4 Amplification in the patient’s condition. Additionally, the patient’s age and gender should be taken into account when selecting suitable clinical trial options. Patient Profile: The patient is a 38-year-old male who has been diagnosed with Liposarcoma with CDK4 Amplification. He has a treatment background that includes both chemotherapy and radiation, and he is currently in remission. It is important to note that he has a history of smoking and is also dealing with obesity. Given these demographic details, I am seeking clinical trials that specifically target Liposarcoma or related soft tissue sarcomas, taking into consideration the presence of CDK4 Amplification. The trials should also consider the patient’s age and gender, as well as any potential influences from his treatment background, smoking history, and obesity.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents examples of instructions with varying levels of complexity across different domains included in the IFIR benchmark. Each domain (Finance, Scientific Literature, Law, Healthcare) shows three levels of instructions, progressing from simple to highly complex and detailed, reflecting real-world scenarios.  This illustrates the gradation of instruction complexity used in IFIR to comprehensively evaluate instruction-following abilities of information retrieval systems.
> <details>
> <summary>read the caption</summary>
> Table 6: Examples for different levels’ instruction in various domains.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1">
<tr class="ltx_tr" id="A2.T7.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1" style="width:85.4pt;">Type</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T7.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.2.1">
<span class="ltx_p" id="A2.T7.1.1.1.2.1.1" style="width:512.1pt;">Example</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T7.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.2.1.1">
<span class="ltx_p" id="A2.T7.1.1.2.1.1.1" style="width:85.4pt;">Long Instruction</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T7.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.2.2.1">
<span class="ltx_p" id="A2.T7.1.1.2.2.1.1" style="width:512.1pt;">[A long legal case] As the defendant player, seek cases where the prosecution’s evidence relies heavily on circumstantial evidence and lacks direct proof of intent or direct involvement in the alleged crime, similar to a situation where the accused individuals were convicted based on circumstantial evidence and witness testimonies, despite maintaining their innocence throughout the trial and appeal process.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.3.1.1">
<span class="ltx_p" id="A2.T7.1.1.3.1.1.1" style="width:85.4pt;">Dense with specialized knowledge</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.3.2.1">
<span class="ltx_p" id="A2.T7.1.1.3.2.1.1" style="width:512.1pt;">CHEK2 has a significant role in breast cancer As a scientist investigating the claim that ’CHEK2 has a significant role in breast cancer,’ I should search for research articles or review papers that provide support evidence on the specific functions of the CHEK2 gene in relation to breast cancer development.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T7.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.4.1.1">
<span class="ltx_p" id="A2.T7.1.1.4.1.1.1" style="width:85.4pt;">Highly customized instructions</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T7.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.4.2.1">
<span class="ltx_p" id="A2.T7.1.1.4.2.1.1" style="width:512.1pt;">I am seeking clinical trials suitable for a 35-year-old female diagnosed with colorectal cancer and exhibiting FGFR1 Amplification. Please prioritize trials that focus on colorectal cancer specifically or a narrower focus related to this patient’s condition. Additionally, it is crucial to include trials that directly match the FGFR1 Amplification gene mutation in the patient. The patient’s age and gender are also important factors to consider in selecting appropriate clinical trials. Please ensure that the trials selected meet these criteria for optimal patient care and treatment options.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table categorizes examples of instructions from the IFIR benchmark that yielded low performance scores (both nDCG and INSTFOL). It analyzes the reasons for the poor performance and helps identify patterns in instruction characteristics that hinder effective information retrieval.
> <details>
> <summary>read the caption</summary>
> Table 7: Taxonomy of instructions with low nDCG score and InstFol score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.SS1.tab1.1.1">
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.1">
<td class="ltx_td ltx_border_tt" id="A3.SS1.tab1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">FiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">SciFact-open</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">NFCorpus</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">AILA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">FIRE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-PM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-CDS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.SS1.tab1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.2">
<td class="ltx_td" id="A3.SS1.tab1.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.15" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.16" style="padding-left:4.0pt;padding-right:4.0pt;">nDCG</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.2.17" style="padding-left:4.0pt;padding-right:4.0pt;">MRR</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A3.SS1.tab1.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.SS1.tab1.1.1.3.1.1">End-to-end retrieval</em></td>
<td class="ltx_td ltx_border_t" id="A3.SS1.tab1.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.SS1.tab1.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-XL</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.60</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.50</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.31</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.4.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">BM25</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.25</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.21</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.45</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.40</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.08</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.55</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.5.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Large</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.39</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.50</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.41</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.23</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.33</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.6.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Base</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.33</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.27</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.24</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.32</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.7.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Contriever</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.24</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.36</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.08</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.21</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.8.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.18</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">ColBERT</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.16</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.39</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.35</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.02</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.01</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.00</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.00</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.9.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS1.tab1.1.1.10.1.1">\hdashline</span>
NV-Embed-v2</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.2.1">0.68</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.3.1">0.66</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.4.1">0.65</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.5.1">0.62</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.6.1">0.71</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.7.1">0.70</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.40</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.36</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.16.1">0.51</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.10.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.10.17.1">0.49</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">GritLM-7B</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.63</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.61</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.63</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.60</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.70</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.69</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.11.12.1">0.57</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.11.13.1">0.54</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.11.14.1">0.42</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.11.15.1">0.38</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.11.16.1">0.51</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.11.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">E5-mistral-7b-inst</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.63</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.59</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.69</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.67</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.57</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.12.11.1">0.54</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.56</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.23</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.12.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.45</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-XL</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.44</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.44</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.17</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.19</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.15</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.35</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.13.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.31</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Large</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.45</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.56</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.45</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.15</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.11</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.17</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.14.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">Promptriever-7B</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.22</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.17</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.60</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.59</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.35</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.32</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.15.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.28</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.16">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Base</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.39</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.45</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.05</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.17</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.31</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.16.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.27</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.17">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS1.tab1.1.1.17.1.1">\hdashline</span>
OpenAI-v3-large</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.59</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.58</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.55</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.17.8.1">0.11</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.17.9.1">0.08</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.17.10.1">0.57</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.30</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.26</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.17.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.18">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI-v3-small</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.41</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.58</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.56</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.08</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.48</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.41</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.38</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.24</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.21</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.41</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.18.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A3.SS1.tab1.1.1.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.SS1.tab1.1.1.19.1.1">Hybrid retrieval</em></td>
<td class="ltx_td ltx_border_t" id="A3.SS1.tab1.1.1.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.SS1.tab1.1.1.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">GritLM-7B</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.2.1">0.59</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.3.1">0.54</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.4.1">0.62</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.5.1">0.58</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.6.1">0.57</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.7.1">0.51</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.8.1">0.10</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.55</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.50</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.12.1">0.59</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.13.1">0.56</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.14.1">0.39</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.15.1">0.32</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.16.1">0.49</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.SS1.tab1.1.1.20.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.20.17.1">0.44</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.21">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-XL</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.38</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.57</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.47</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.21.10.1">0.56</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.21.11.1">0.53</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.33</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.21.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.22">
<td class="ltx_td ltx_align_left" id="A3.SS1.tab1.1.1.22.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-XL</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.41</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.SS1.tab1.1.1.22.9.1">0.07</span></td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.56</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.52</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.23</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.20</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.20</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.16</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_right" id="A3.SS1.tab1.1.1.22.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.33</td>
</tr>
<tr class="ltx_tr" id="A3.SS1.tab1.1.1.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.SS1.tab1.1.1.23.1" style="padding-left:4.0pt;padding-right:4.0pt;">Promptriever-7B</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.25</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.21</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.38</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.56</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.42</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.11</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.09</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.34</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.SS1.tab1.1.1.23.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.31</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various information retrieval models on the IFIR benchmark.  The performance is evaluated using two standard metrics: Normalized Discounted Cumulative Gain at rank 20 (nDCG@20) and Mean Reciprocal Rank at rank 20 (MRR@20).  The table shows the scores for each model across different specialized domains covered by the IFIR benchmark, allowing for a comparison of their effectiveness in different contexts.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance of retrievers on IfIR measured by nDCG@20 and MRR@20.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.SS2.tab1.1.1">
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.1">
<td class="ltx_td ltx_border_tt" id="A3.SS2.tab1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">FiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">SciFact-open</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">NFCorpus</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">AILA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">FIRE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-PM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-CDS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.SS2.tab1.1.1.2.1.1">Instructor-Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.392</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.451</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.482</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.059</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.174</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.091</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.1.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.308</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.3">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">0.393</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.445</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.489</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.059</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.499</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.232</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.080</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.314</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.4">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.1.1.4.1.1">\hdashline</span>
<span class="ltx_text" id="A3.SS2.tab1.1.1.4.1.2">Instructor-Large</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.488</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.463</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.564</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.070</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.510</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.149</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.167</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.345</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.5">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">0.493</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.469</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.567</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.072</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.516</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.166</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.155</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.348</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.6">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.1.1.6.1.1">\hdashline</span>
<span class="ltx_text" id="A3.SS2.tab1.1.1.6.1.2">Instructor-XL</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.484</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.488</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.530</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.071</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.529</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.169</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.188</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.351</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.7">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">0.489</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.489</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.544</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.072</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.533</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.204</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.205</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.362</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.8">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.1.1.8.1.1">\hdashline</span>
<span class="ltx_text" id="A3.SS2.tab1.1.1.8.1.2">E5-mistral-7b-inst</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.541</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.629</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.686</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.103</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.565</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.563</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.283</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.481</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.9">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">0.495</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.607</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.679</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.108</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.574</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.569</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.293</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.475</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.10.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.1.1.10.1.1">\hdashline</span>
<span class="ltx_text" id="A3.SS2.tab1.1.1.10.1.2">GritLM-7B</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.632</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.631</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.698</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.096</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.511</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.575</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.423</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.1.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.509</td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">0.567</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.612</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.681</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.093</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.516</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.571</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.425</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.1.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.495</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of nDCG@20 scores achieved by various information retrieval models across different datasets.  It shows the performance difference between two conditions: (1) when no instruction is provided as a prompt and (2) when the corresponding instruction is used as a prompt. The results are broken down by dataset and model, allowing for a direct comparison of the impact of adding instructions to the query on retrieval performance.
> <details>
> <summary>read the caption</summary>
> Table 9: Detailed nDCG@20 results of adding instructions as prompt. The first line is without instruction as a prompt, the second is with instruction as a prompt.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.1.1">
<tr class="ltx_tr" id="A3.T10.1.1.1">
<td class="ltx_td ltx_border_tt" id="A3.T10.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T10.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">FiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T10.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">AILA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T10.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-PM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T10.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Scifact-open</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.2">
<td class="ltx_td" id="A3.T10.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T10.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">BM25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.282</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.221</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.239</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.158</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.060</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.030</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.505</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.437</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.482</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.568</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.438</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.480</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Contriever</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.146</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.121</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.111</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.144</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.018</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.112</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.084</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.077</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.306</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.252</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.325</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">ColBERT</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.078</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.043</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.107</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.111</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.052</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.023</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.037</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.132</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.121</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.5.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.165</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Base</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.422</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.215</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.337</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.096</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.017</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.000</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.269</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.280</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.268</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.511</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.448</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.456</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Large</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.479</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.279</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.391</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.117</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.023</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.048</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.293</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.312</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.219</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.538</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.467</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.513</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-XL</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.530</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.366</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.413</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.073</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.032</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.023</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.350</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.324</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.243</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.595</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.512</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.515</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T10.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.424</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.361</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.387</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.110</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.119</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.208</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.197</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.481</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.429</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.449</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Large</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.531</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.454</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.472</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.110</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.024</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.048</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.144</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.157</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.147</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.480</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.404</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.10.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.513</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-XL</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.558</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.435</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.445</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.122</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.042</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.190</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.181</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.135</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.536</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.461</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.11.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.476</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">E5-mistral-7b-inst</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.628</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.490</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.488</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.162</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.041</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.060</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.582</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.567</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.537</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.673</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.620</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.12.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.601</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">GritLM-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.705</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.594</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.581</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.185</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.014</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.017</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.618</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.578</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.527</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.699</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.620</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.13.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.583</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Promptriever-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.164</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.144</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.377</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.140</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.051</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.048</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.231</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.406</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.417</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.287</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.276</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.14.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.449</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T10.1.1.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">NV-Embed-v2</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.759</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.657</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.594</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.116</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.026</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.029</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.563</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.547</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.493</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.714</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.634</td>
<td class="ltx_td ltx_align_center" id="A3.T10.1.1.15.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.625</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T10.1.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI-v3-small</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.529</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.410</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.429</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.032</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.013</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.428</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.436</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.371</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.545</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.16.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.563</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T10.1.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI-v3-large</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.616</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.488</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.511</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.158</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.056</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.062</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.553</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.523</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.483</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.621</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.578</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.1.1.17.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.587</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the nDCG@20 scores achieved by various information retrieval models across three different levels of instruction complexity.  The results are categorized by model type and are shown for each of the four specialized domains included in the IFIR benchmark: Finance, Scientific Literature, Law, and Healthcare.  This granular analysis helps to understand how well different models handle increasing complexity in instruction-following tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Detailed nDCG@20 results of different retrievers on different levels.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.1.1">
<tr class="ltx_tr" id="A3.T11.1.1.1">
<td class="ltx_td ltx_border_tt" id="A3.T11.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">FiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">AILA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">TREC-PM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Scifact-open</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.2">
<td class="ltx_td" id="A3.T11.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">Level1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">Level2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">Level3</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">BM25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">-3.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">-2.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">9.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">-0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">2.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">7.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">-5.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">4.85</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Contriever</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">-2.04</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">-0.69</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">4.28</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.91</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.75</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">-3.20</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">-11.25</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">-10.21</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">ColBERT</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">-4.43</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">-7.28</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">12.21</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">-1.13</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.84</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.23</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">-1.06</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.13" style="padding-left:4.0pt;padding-right:4.0pt;">2.31</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Base</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">-3.76</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">-12.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">2.30</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">-0.06</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">1.18</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">-4.56</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">-0.12</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">2.73</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">-1.09</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">-0.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">-0.39</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-Large</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">-6.40</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">-13.20</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.31</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.88</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">-3.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">-0.28</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">-0.73</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.18</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">-0.30</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTR-XL</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">-4.45</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">-10.59</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.20</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.34</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">-3.21</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">-0.73</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.46</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">-9.12</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">-1.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">9.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">-4.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">6.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">1.54</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-Large</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">-0.34</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">2.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.79</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">-0.22</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">1.04</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">-2.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">-2.77</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">-6.42</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">-1.15</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.12" style="padding-left:4.0pt;padding-right:4.0pt;">-2.07</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.13" style="padding-left:4.0pt;padding-right:4.0pt;">3.83</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Instructor-XL</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">-0.66</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">-1.93</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">5.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.03</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.07</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.86</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">-2.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">-0.82</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">-3.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.12" style="padding-left:4.0pt;padding-right:4.0pt;">2.34</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.13" style="padding-left:4.0pt;padding-right:4.0pt;">-9.95</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">E5-mistral-7b-inst</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">-0.13</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">12.78</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.08</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.79</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">-0.89</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.10</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">2.55</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.22</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.18</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">GritLM-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.68</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">7.32</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">-0.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.66</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">-0.75</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.36</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.13" style="padding-left:4.0pt;padding-right:4.0pt;">-0.73</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Promptriever-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">-2.41</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">2.18</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">27.09</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">-1.22</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.07</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">2.09</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">12.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.10" style="padding-left:4.0pt;padding-right:4.0pt;">25.21</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.11" style="padding-left:4.0pt;padding-right:4.0pt;">-2.02</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.12" style="padding-left:4.0pt;padding-right:4.0pt;">-5.17</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.13" style="padding-left:4.0pt;padding-right:4.0pt;">18.27</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T11.1.1.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">NV-Embed-v2</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.13</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">7.02</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">-0.83</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.20</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.02</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.35</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.54</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.13" style="padding-left:4.0pt;padding-right:4.0pt;">-3.27</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.1.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI-v3-small</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">-0.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">-0.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">-1.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">-1.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">-0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">-0.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.12" style="padding-left:4.0pt;padding-right:4.0pt;">1.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.16.13" style="padding-left:4.0pt;padding-right:4.0pt;">-4.79</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T11.1.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI-v3-large</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">-0.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">-0.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">-0.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">-0.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">-1.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">-1.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.10" style="padding-left:4.0pt;padding-right:4.0pt;">3.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.11" style="padding-left:4.0pt;padding-right:4.0pt;">-0.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.17.13" style="padding-left:4.0pt;padding-right:4.0pt;">-1.99</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the INSTFOL@20 scores achieved by various information retrieval models across three different levels of instruction complexity.  Each level represents a progressively more challenging instruction-following task. The scores reflect the models' ability to accurately retrieve relevant information based on the nuanced instructions provided. The table allows for a granular analysis of model performance, revealing strengths and weaknesses in handling complex, domain-specific queries.
> <details>
> <summary>read the caption</summary>
> Table 11: Detailed InstFol @20 results of different retrievers on different levels.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04644/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04644/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}