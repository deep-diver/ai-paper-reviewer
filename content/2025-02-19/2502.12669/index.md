---
title: "Perovskite-LLM: Knowledge-Enhanced Large Language Models for Perovskite Solar Cell Research"
summary: "Perovskite-LLM: a new knowledge-enhanced system boosts perovskite solar cell research by integrating a domain-specific knowledge graph, high-quality datasets, and specialized LLMs for superior knowled..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12669 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiang Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12669" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12669" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12669/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The rapid growth of research in perovskite solar cells necessitates efficient knowledge management. Existing methods like literature reviews and databases struggle to capture the complex relationships within this field. This paper introduces Perovskite-LLM, a system designed to address these challenges. 



Perovskite-LLM integrates three key components: a domain-specific knowledge graph (Perovskite-KG), two complementary datasets (Perovskite-Chat and Perovskite-Reasoning), and two specialized large language models (Perovskite-Chat-LLM and Perovskite-Reasoning-LLM).  **Perovskite-KG** organizes domain knowledge, while **Perovskite-Chat** and **Perovskite-Reasoning** provide high-quality data for instruction tuning and scientific reasoning. The specialized LLMs are trained on these datasets to achieve superior performance in knowledge retrieval and scientific reasoning tasks, offering researchers valuable tools for efficient literature review, experimental design, and problem-solving.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel knowledge-enhanced system (Perovskite-LLM) for perovskite solar cell research was developed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Perovskite-LLM significantly outperforms existing models in domain-specific knowledge retrieval and scientific reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel multi-agent framework for generating high-quality instruction-tuning data was introduced. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for perovskite solar cell researchers because it provides a **comprehensive knowledge-enhanced system** that significantly improves knowledge retrieval and scientific reasoning.  It offers **effective tools** for literature reviews, experimental design, and problem-solving, thereby **accelerating research and innovation** in this rapidly developing field.  The **novel multi-agent framework** for generating high-quality instruction-tuning data is also a valuable contribution, potentially influencing methodology in other domains. The work opens **new avenues for integrating LLMs with materials science**, promising further advances in knowledge management and automated discovery. 

------
#### Visual Insights



![](https://arxiv.org/html/2502.12669/extracted/6212992/img/kg_pipeline.jpg)

> 🔼 This figure illustrates the three-stage pipeline for constructing the Perovskite Knowledge Graph (Perovskite-KG).  Stage 1 involves filtering documents based on a predefined schema to select relevant publications. In Stage 2, a large language model extracts key knowledge entities and relationships from the filtered documents. Finally, Stage 3 organizes this extracted information into a structured knowledge graph stored in a graph database.  The schema integrates three ontologies: fabrication, parameters, and performance, to capture the complex relationships within perovskite solar cell research.
> <details>
> <summary>read the caption</summary>
> (a) The pipeline of Perovskite-KG construction.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1.1">Rationale</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.1.1">
<span class="ltx_p" id="S4.T1.1.2.1.1.1" style="width:85.4pt;">Device Structure</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.2.1">
<span class="ltx_p" id="S4.T1.1.2.2.1.1" style="width:313.0pt;">Fundamental aspects focusing on high-efficiency (&gt;25% PCE) device architecture and fabrication processes (Q1-Q3)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.1.1">
<span class="ltx_p" id="S4.T1.1.3.1.1.1" style="width:85.4pt;">Perf. Enhancement</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.2.1">
<span class="ltx_p" id="S4.T1.1.3.2.1.1" style="width:313.0pt;">Analysis of problem-solving approaches and strategic choices in high-performance devices (Q4-Q5)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.1.1">
<span class="ltx_p" id="S4.T1.1.4.1.1.1" style="width:85.4pt;">Metrics</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.2.1">
<span class="ltx_p" id="S4.T1.1.4.2.1.1" style="width:313.0pt;">Key performance indicators (V<sub class="ltx_sub" id="S4.T1.1.4.2.1.1.1">OC</sub>, FF, J<sub class="ltx_sub" id="S4.T1.1.4.2.1.1.2">SC</sub>) and their optimization methods (Q6-Q9)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.1.1">
<span class="ltx_p" id="S4.T1.1.5.1.1.1" style="width:85.4pt;">Stability</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.2.1">
<span class="ltx_p" id="S4.T1.1.5.2.1.1" style="width:313.0pt;">Critical stability aspects addressing main degradation pathways: moisture, thermal, and light stability (Q10-Q12)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.1.1">
<span class="ltx_p" id="S4.T1.1.6.1.1.1" style="width:85.4pt;">Defect &amp; Recom.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.2.1">
<span class="ltx_p" id="S4.T1.1.6.2.1.1" style="width:313.0pt;">Fundamental mechanisms affecting device efficiency through defect passivation and recombination control (Q13-Q14)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.7.1.1">
<span class="ltx_p" id="S4.T1.1.7.1.1.1" style="width:85.4pt;">Interface</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.7.2.1">
<span class="ltx_p" id="S4.T1.1.7.2.1.1" style="width:313.0pt;">Interface engineering and charge transport optimization (Q15-Q17)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.8.1.1">
<span class="ltx_p" id="S4.T1.1.8.1.1.1" style="width:85.4pt;">Materials</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S4.T1.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.8.2.1">
<span class="ltx_p" id="S4.T1.1.8.2.1.1" style="width:313.0pt;">Comprehensive analysis of functional materials and their characteristics in different device components (Q18-Q21)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table categorizes 21 research questions related to perovskite solar cells into seven key areas: Device Structure and Fabrication, Performance Enhancement Strategies, Performance Metrics Improvement, Stability Improvements, Defect and Recombination Management, Interface and Extraction Layer Enhancements, and Materials Used in Perovskite Solar Cells.  Each category includes a brief description of its technical focus, providing a structured overview of the research questions.
> <details>
> <summary>read the caption</summary>
> Table 1: Classification of Research Questions in Perovskite Solar Cell Studies
> </details>





### In-depth insights


#### Perovskite LLM Intro
A hypothetical 'Perovskite LLM Intro' section would likely begin by establishing the context of perovskite solar cell research, highlighting its **rapid advancements and significant potential** as a next-generation photovoltaic technology. It would then introduce the challenges inherent in this field, such as the **vast and rapidly growing body of research** making knowledge management and efficient information retrieval difficult.  The section would then motivate the need for a knowledge-enhanced large language model (LLM) specifically tailored to perovskite solar cell research, emphasizing how such a system could significantly improve the efficiency of scientific discovery and innovation by **facilitating literature review, experimental design, and complex problem-solving**. The introduction would briefly describe the key components of the proposed Perovskite LLM system, potentially including a domain-specific knowledge graph, curated datasets, and specialized LLMs for different reasoning tasks. Finally, the introduction should clearly state the system's overall goal: to **provide researchers with effective tools to accelerate progress** in the field of perovskite solar cell research.

#### KG Construction
Constructing a robust knowledge graph (KG) for perovskite solar cell research involves a multi-step process.  **Data acquisition** is crucial, typically involving the extraction of relevant information from a large corpus of research papers and patents.  **Information extraction** techniques, such as Named Entity Recognition (NER) and Relation Extraction, are used to identify key entities (materials, processes, properties) and their relationships.  The extracted information is then carefully **curated and cleaned**, addressing issues like inconsistencies and ambiguities.  This stage often includes manual verification to ensure accuracy.  Finally, the curated data is organized into a structured format, usually a graph database, with nodes representing entities and edges representing relationships between them.  The design of the KG schema itself is a key decision; a well-designed schema **facilitates efficient knowledge representation** and retrieval, enabling effective querying and reasoning.  The process demands significant computational resources and expertise in both materials science and knowledge graph technologies.  **Evaluation** of the KG's quality and completeness is essential to ensure its usefulness in downstream tasks like literature review and scientific discovery.

#### LLM Experiments
A hypothetical 'LLM Experiments' section in a research paper would likely detail the empirical evaluation of large language models (LLMs) applied to a specific task, such as question answering or scientific reasoning within the perovskite solar cell domain.  The section should begin by clearly defining the base LLMs used (e.g., GPT-3.5-Turbo, LLaMA), and the specific modifications or fine-tuning techniques implemented to adapt them for the given task.  **Key metrics for evaluating the LLMs' performance must be explicitly stated** (e.g., accuracy, F1-score, perplexity) to allow for a robust comparison against baselines and other state-of-the-art models. A thorough description of the datasets employed, including their size, composition, and any preprocessing steps, is also crucial for reproducibility.  **The experimental setup, including hardware and software configurations, should be documented**. Finally, a comprehensive analysis of the results, including statistical significance tests and error analysis, would be necessary to draw meaningful conclusions and justify any claims of improved performance.

#### Future Directions
Future research in perovskite solar cells should prioritize **enhancing long-term stability** under diverse environmental conditions.  This involves exploring new materials with improved thermal and moisture resistance, as well as advanced encapsulation techniques.  **Developing scalable and cost-effective manufacturing processes** is crucial for widespread adoption.  This requires innovation in solution processing methods, including the exploration of new precursor materials and deposition techniques.  **Improving the understanding of the fundamental mechanisms governing perovskite degradation** is critical for guiding materials design and optimization. Advanced characterization techniques are needed to reveal the underlying causes of failure.  **Developing advanced large language models** specifically designed for perovskite materials research can accelerate the discovery and optimization process. This includes integrating domain-specific knowledge graphs and utilizing multi-agent frameworks to solve complex scientific problems.

#### System Limits
Analyzing a research paper's 'System Limits' section requires a nuanced understanding of the technology's capabilities and constraints.  **A thoughtful analysis should move beyond a simple list of limitations.** Instead, it should explore the interconnectedness of these limits, examining how one limitation might exacerbate another, and exploring the underlying causes. For instance, a system's reliance on a specific dataset might limit its generalizability, while computational constraints could restrict the complexity of models.  **Identifying the trade-offs inherent in design choices is crucial.**  For example, achieving high accuracy might necessitate sacrificing speed or efficiency.  It is vital to assess the severity of each limitation within the context of the system's intended application. A limitation that is insignificant in a controlled environment could be devastating in a real-world scenario.  **Furthermore, the analysis should consider potential mitigation strategies**.  Are there known methods to overcome these limitations?  If not, what are the avenues for future research to enhance the system? This comprehensive and in-depth examination of the system's 'System Limits' ultimately guides the direction of future development and informs the responsible deployment of the technology.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12669/x1.png)

> 🔼 This figure illustrates the multi-agent framework employed to generate the instruction tuning dataset for Perovskite-LLM.  Three specialized agents collaborate: an Information Extraction Agent processes raw data from various sources; a Quality Validation Agent ensures data accuracy and relevance; and a Document Summarization Agent condenses and structures the information into high-quality question-answer pairs for model training. The process integrates expert guidance to ensure both high reliability and alignment with materials science principles. The generated dataset, Perovskite-Chat, will support fine-tuning of the large language models.
> <details>
> <summary>read the caption</summary>
> (b) The multi-agent framework for perovskite instruction tuning dataset generation.
> </details>



![](https://arxiv.org/html/2502.12669/x2.png)

> 🔼 This figure illustrates the two-stage process of creating the Perovskite Knowledge Graph (KG) and the multi-agent framework used for generating the instruction-tuning dataset.  The Perovskite-KG construction pipeline consists of three stages: document filtering (using expert-defined schema and LLM), knowledge extraction (using LLMs to extract relevant information from documents), and knowledge graph organization. The multi-agent framework leverages three agents: the Information Extraction Agent, the Quality Validation Agent, and the Document Summarization Agent to generate high-quality question-answer pairs and reasoning problems. These agents work synergistically to ensure data accuracy and consistency, ultimately building the datasets that train the LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of Perovskite-KG construction and multi-agent framework.
> </details>



![](https://arxiv.org/html/2502.12669/x3.png)

> 🔼 A pie chart illustrating the distribution of question categories within the instruction tuning dataset for Perovskite-Chat.  The chart visually represents the percentage of questions belonging to seven different research categories relevant to perovskite solar cell research. These categories include device structure, performance enhancement, metrics, stability, defects and recombination, interfaces, and materials. The specific percentages for each category are displayed within the chart segments.
> <details>
> <summary>read the caption</summary>
> (a) The distribution of question categories in the instruction tuning dataset.
> </details>



![](https://arxiv.org/html/2502.12669/x4.png)

> 🔼 This word cloud visualizes the most frequent terms in the Perovskite-Chat instruction tuning dataset.  The larger the word, the more frequently it appears in the dataset.  The prominence of terms like 'perovskite solar' and 'solar cell' reflects the dataset's focus. Other frequent terms, such as 'device structure,' 'configuration,' and 'stability,' highlight the key technical areas emphasized in the dataset.
> <details>
> <summary>read the caption</summary>
> (b) The word cloud of the instruction tuning dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.3.3">
<tr class="ltx_tr" id="S5.T2.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.3.3.4.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.4.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.3.3.4.2"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.3.3.4.2.1">Perovskite QA</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.3">
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">PPL</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.2.1">Rouge-L</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.3.1">LLM-Judge</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.3.3.5.1">GPT-3.5-Turbo</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.5.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.5.3">11.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.5.4">1.24</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.3.3.6.1">GPT-4o-Mini</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.6.3">11.90</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.6.4">1.34</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.3.3.7.1">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.7.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.7.3">11.36</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.7.4">1.41</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.3.3.8.1">LLaMA-3.1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.8.2">6.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.8.3">13.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.8.4">1.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.3.3.9.1">LLaMA-3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.9.2">4.98</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.9.3">17.38</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.9.4">1.80</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.3.3.10.1">Qwen-2.5-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.10.2">6.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.10.3">11.22</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.10.4">1.39</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.3.3.11.1">Qwen-2.5-72B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.11.2">5.12</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.11.3">10.17</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.11.4">1.31</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.12" style="background-color:#FFCCCC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.3.3.12.1"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.12.1.1" style="background-color:#FFCCCC;">Perovskite-Chat-LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.12.2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.12.2.1" style="background-color:#FFCCCC;">2.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.12.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.12.3.1" style="background-color:#FFCCCC;">41.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.3.12.4"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.12.4.1" style="background-color:#FFCCCC;">2.97</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various large language models (LLMs) on the Perovskite QA dataset.  The models are evaluated across three key metrics: perplexity (PPL), Rouge-L score, and LLM-Judge score.  Lower perplexity and higher Rouge-L and LLM-Judge scores indicate better performance. The table includes baseline LLMs like GPT-3.5-Turbo and LLaMA-3.1-8B, allowing for a direct comparison with the Perovskite-Chat-LLM, a specialized LLM trained on a perovskite-specific dataset.  This comparison highlights the effectiveness of the specialized LLM in handling perovskite-related questions.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of Perovskite-Chat-LLM on Perovskite QA
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tr class="ltx_tr" id="S5.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T3.1.1.2.2"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.1.1.2.2.1">Perovskite_MCQ</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1">Easy</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1">Hard</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1">All</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.1.3.1">GPT-3.5-Turbo</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.2">86.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.3">49.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.4">77.15</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.4.1">GPT-4o-Mini</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.2">89.79</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3">61.79</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.4">82.68</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.5.1">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.2">91.37</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.3">65.00</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4">84.68</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.1.6.1"><span class="ltx_text" id="S5.T3.1.1.6.1.1" style="background-color:#E6E6E6;">LLaMA-3.1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.2"><span class="ltx_text" id="S5.T3.1.1.6.2.1" style="background-color:#E6E6E6;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.3"><span class="ltx_text" id="S5.T3.1.1.6.3.1" style="background-color:#E6E6E6;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.4"><span class="ltx_text" id="S5.T3.1.1.6.4.1" style="background-color:#E6E6E6;">74.61</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.7.1">LLaMA-3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.2">93.44</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.3">66.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.4">86.58</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.8.1">Qwen-2.5-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.2">92.22</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.3">55.36</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.4">82.86</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.9.1">Qwen-2.5-72B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.2">93.07</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.3">64.29</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.4">85.77</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.10" style="background-color:#FFCCCC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.1.1.10.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.1.1" style="background-color:#FFCCCC;">Perovskite-LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.2.1" style="background-color:#FFCCCC;">95.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.3.1" style="background-color:#FFCCCC;">62.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.4.1" style="background-color:#FFCCCC;">87.22</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Perovskite-Chat-LLM model on a multiple-choice question (MCQ) dataset related to perovskite solar cells.  The model's performance is compared against the LLaMA-3.1-8B baseline model.  The difficulty of the questions is categorized as either 'Easy' or 'Hard' based on the LLaMA-3.1-8B baseline model's ability to answer them correctly. The table shows the accuracy of each model on easy questions, hard questions, and all questions combined, offering a comprehensive evaluation of the Perovskite-Chat-LLM model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Perovskite-Chat-LLM on Perovskite MCQ. The LLaMA-3.1-8B baseline model’s performance defines Easy/Hard question categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.4.4">
<tr class="ltx_tr" id="S5.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.5.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.1">
<math alttext="\#" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T4.1.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">#</annotation></semantics></math> ex</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.2.1">GPQA</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.3.1">Minerva</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.4.1">Avg</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T4.4.4.5.1">API Models</td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.5.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.6.1">o1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6.3">77.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.4.6.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.7.1">o1-preview</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.3">73.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.7.4">47.10</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.5">60.20</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.8.1">o1-mini</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.3">60.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.8.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.9.1">Deepseek-R1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.9.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.9.3">71.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.9.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T4.4.4.10.1">32B</td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.10.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.11.1">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.11.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.11.3">48.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.4.11.4">41.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.11.5">44.60</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.12.1">QwQ-32B-preview</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.3">65.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.12.4">39.00</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.5">52.05</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.13.1">LIMO-32B*</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.2">0.8K</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.3">66.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.13.4">44.90</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.5">55.80</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.14.1">S1-32B*</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.2">1K</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.3">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.14.4">47.79</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.5">53.69</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T4.4.4.15.1">7B</td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.15.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.16.1">R1-Qwen2.5-7B*</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.2">800K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.3.1">44.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.4.16.4">25.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.5">34.87</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.17.1">R1-LLaMA3-8B*</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.17.2">800K</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.17.3">19.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.17.4">30.51</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.17.5">24.85</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.18.1">OpenThinker-7B*</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.18.2">114K</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.18.3">42.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.18.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.4.4.18.4.1">41.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.18.5">42.00</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.19" style="background-color:#FFCCCC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T4.4.4.19.1"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.19.1.1" style="background-color:#FFCCCC;">Perovskite Reasoning-LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.19.2"><span class="ltx_text" id="S5.T4.4.4.19.2.1" style="background-color:#FFCCCC;">2K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.19.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.4.4.19.3.1" style="background-color:#FFCCCC;">43.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.4.4.19.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.19.4.1" style="background-color:#FFCCCC;">44.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.19.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.19.5.1" style="background-color:#FFCCCC;">44.22</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of the Perovskite-Reasoning-LLM model against other existing models on two established benchmarks for evaluating reasoning capabilities: GPQA and Minerva.  The table highlights the number of training examples used for each model and shows the achieved scores on both benchmarks.  The asterisk (*) indicates results obtained through the authors' own evaluation.
> <details>
> <summary>read the caption</summary>
> Table 4: We evaluate the performance of Perovskite-Reasoning-LLM on the GPQA and Minerva benchmarks. * indicates the results are from our evaluation. ##\## ex = number of examples used for fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2">
<tr class="ltx_tr" id="A2.T5.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T5.2.2.3.1">Ontology</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.2.2.3.2">Sub-Category</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.2.2.3.3">Data Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.2.2.3.4">Description</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T5.2.2.3.5">Example</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.1.1.1.2" rowspan="3"><span class="ltx_text" id="A2.T5.1.1.1.2.1">Fabrication</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1.1.3.1">
<tr class="ltx_tr" id="A2.T5.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.3.1.1.1">Coating</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.3.1.2.1">Parameter</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.4">Float</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1.1.5.1">
<tr class="ltx_tr" id="A2.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.5.1.1.1">The specifics of the coating method used</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.5.1.2.1">in the material deposition process.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.1.1.1">5000 rpm, 100<math alttext="\mu" class="ltx_Math" display="inline" id="A2.T5.1.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.1.m1.1a"><mi id="A2.T5.1.1.1.1.m1.1.1" xref="A2.T5.1.1.1.1.m1.1.1.cmml">μ</mi><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.1.m1.1b"><ci id="A2.T5.1.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.1.m1.1.1">𝜇</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.1.m1.1c">\mu</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.1.m1.1d">italic_μ</annotation></semantics></math>l</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.4.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.4.2">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.4.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.4.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.4.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.4.3.1.1.1">Different fabrication techniques,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.4.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.4.3.1.2.1">involving variations in material deposition.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.4.4">spin coating</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.5.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.5.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.5.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.1.1.1.1">Annealing</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.5.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.1.1.2.1">Parameter</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.5.2">Float</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.5.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.5.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.5.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.3.1.1.1">Refers to the heating conditions applied to the perovskite,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.5.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.3.1.2.1">which are essential for crystallization and stability.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.5.4">120°C, 10min</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.2.2.6.1" rowspan="3"><span class="ltx_text" id="A2.T5.2.2.6.1.1">Parameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.6.2">Solvent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.6.3">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.6.4">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.6.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.6.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.6.4.1.1.1">the liquid medium used to dissolve precursors,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.6.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.6.4.1.2.1">helping to form a uniform perovskite layer</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.6.5">Dimethylformamide (DMF)</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.7.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.7.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.7.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.1.1.1.1">Device</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.1.1.2.1">Structure</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.7.2">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.7.2.1">
<tr class="ltx_tr" id="A2.T5.2.2.7.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.2.1.1.1">Patterned</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.2.1.2.1">String</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.7.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.7.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.7.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.3.1.1.1">The architecture of the device</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.3.1.2.1">(e.g., layer order, material interfaces)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.7.4">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.7.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.7.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.4.1.1.1">ITO/SAM/perovskite</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.4.1.2.1">/C60/BCP/Cu</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.8.1">Additive</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.8.2">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.8.3">Any additional materials or chemicals</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.8.4">potassium ions</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T5.2.2.9.1" rowspan="7"><span class="ltx_text" id="A2.T5.2.2.9.1.1">Performance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.9.2">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.9.2.1">
<tr class="ltx_tr" id="A2.T5.2.2.9.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.2.1.1.1">Thermal</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.9.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.2.1.2.1">Stability</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.9.3">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.9.4">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.9.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.9.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.4.1.1.1">The material’s ability to</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.9.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.4.1.2.1">withstand heat without degrading</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.9.5">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.9.5.1">
<tr class="ltx_tr" id="A2.T5.2.2.9.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.5.1.1.1">&gt;98% of initial efficiency of &gt;24%</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.9.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.5.1.2.1">after 1,500 hours of continuous</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.9.5.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.9.5.1.3.1">maximum power point tracking</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.10.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.10.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.10.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.1.1.1.1">Light</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.10.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.1.1.2.1">Stability</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.10.2">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.10.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.10.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.10.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.3.1.1.1">How resistant the material is</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.10.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.3.1.2.1">to prolonged exposure to light.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.10.4">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.10.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.10.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.4.1.1.1">&gt;92% of initial performance for 1,200 hours</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.10.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.4.1.2.1">under the damp-heat test</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.10.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.10.4.1.3.1">(85°C and 85% relative humidity)</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.11.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.11.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.11.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.1.1.1.1">Moisture</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.11.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.1.1.2.1">Stability</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.11.2">String</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.11.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.11.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.11.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.3.1.1.1">The material’s resilience against</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.11.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.3.1.2.1">humidity or water exposure.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.11.4">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.11.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.11.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.4.1.1.1">Initial PCE of control, target-1 and target-2</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.11.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.4.1.2.1">devices is 21.73%, 24.42% and 24.11%, respectively.</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.11.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.11.4.1.3.1">Degraded to 78% of initial PCE after 1,500 hours at 55±5°C</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.12.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.12.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.12.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.12.1.1.1.1">Fill Factor</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.12.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.12.1.1.2.1">Value</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.12.2">Float</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.12.3">A measure of the device’s maximum power output.</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.12.4">0.88</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.13.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.13.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.13.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.13.1.1.1.1">Open-Circuit</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.13.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.13.1.1.2.1">Voltage Value</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.13.2">Float</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.13.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.13.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.13.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.13.3.1.1.1">The maximum voltage the device can</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.13.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.13.3.1.2.1">produce under open-circuit conditions.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.13.4">1.2 V</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.2.2.1">
<tr class="ltx_tr" id="A2.T5.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.2.2.1.1.1">Short-Circuit</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.2.2.1.2.1">Current Value</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.2.3">Float</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.2.2.4">The current density when the circuit is closed.</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.2.2.2.1">25 mA/cm<sup class="ltx_sup" id="A2.T5.2.2.2.1.1">2</sup>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.2.2.14.1">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.14.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.14.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.14.1.1.1.1">Power Conversion</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.14.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.14.1.1.2.1">Efficiency Value</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.2.2.14.2">Float</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.2.2.14.3">
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.14.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.14.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.14.3.1.1.1">The efficiency with which the device</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.14.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.14.3.1.2.1">converts sunlight into electricity.</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.2.2.14.4">25 %</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the schema used to build the Perovskite-KG knowledge graph.  It details the ontology categories (Fabrication, Parameters, Performance), sub-categories within each ontology, the data type for each sub-category, and an example to clarify each entry. The schema organizes knowledge about perovskite materials, their synthesis, device components, and performance metrics into a structured format for improved knowledge retrieval and reasoning.
> <details>
> <summary>read the caption</summary>
> Table 5: Schema in Perovskite-KG.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1.1.3.1">
<tr class="ltx_tr" id="A2.T5.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.3.1.1.1">Coating</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.3.1.2.1">Parameter</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the prompts used by the Information Extraction Agent, a key component of the multi-agent framework for generating the instruction tuning dataset.  Each prompt is a question designed to extract specific information about perovskite solar cells from research papers.  The prompts are categorized by seven key research areas related to perovskite solar cells, including Device Structure and Fabrication, Performance Enhancement Strategies, and Materials Used in Perovskite Solar Cells. Each category contains multiple questions focusing on different aspects of perovskite solar cell research.
> <details>
> <summary>read the caption</summary>
> Table 6: Prompts for Information Extraction Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1.1.5.1">
<tr class="ltx_tr" id="A2.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.5.1.1.1">The specifics of the coating method used</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.1.1.5.1.2.1">in the material deposition process.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used by the Verification Agent, a crucial component in the Perovskite-KG construction pipeline.  The agent's role is to ensure the accuracy of information extracted from research papers. The prompt instructs the agent to compare extracted data against the original text, identifying and correcting any discrepancies while preserving the original meaning and preserving details like numerical values and material names. The expected output is a JSON object containing the corrected information and an explanation of any modifications made.
> <details>
> <summary>read the caption</summary>
> Table 7: Prompts for Verification Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.4.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.4.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.4.3.1.1.1">Different fabrication techniques,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.4.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.4.3.1.2.1">involving variations in material deposition.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used by the Organization Agent within a multi-agent framework designed for constructing a knowledge graph related to perovskite solar cells.  The agent's task is to synthesize verified information from multiple sources into coherent, topic-focused responses, ensuring that complex technical information is presented logically and accessibly. The prompt instructs the agent to organize information provided as paragraphs that answer a specific question, returning a JSON object containing a single 'answer' field with the synthesized, continuous response.
> <details>
> <summary>read the caption</summary>
> Table 8: Prompts for Organization Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.5.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.5.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.1.1.1.1">Annealing</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.5.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.1.1.2.1">Parameter</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompts used for evaluating the quality of the large language model (LLM)'s responses.  It outlines the criteria for assessment, including accuracy, completeness, relevance, and clarity, each rated on a scale of 1 to 5. The prompts also request an overall score and summary evaluation, all formatted as a JSON object for structured reporting.
> <details>
> <summary>read the caption</summary>
> Table 9: Prompts for LLM-Judge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.5.3.1">
<tr class="ltx_tr" id="A2.T5.2.2.5.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.3.1.1.1">Refers to the heating conditions applied to the perovskite,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.5.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.5.3.1.2.1">which are essential for crystallization and stability.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table systematically categorizes key research questions in the field of high-performance perovskite solar cells.  It groups questions into seven major categories: Device Structure and Fabrication, Performance Enhancement Strategies, Performance Metrics Improvement, Stability Improvements, Defect and Recombination Management, Interface and Extraction Layer Enhancements, and Materials Used in Perovskite Solar Cells. Each category contains several specific research questions focusing on different aspects of perovskite solar cell technology, providing a comprehensive overview of the most important research areas and challenges.
> <details>
> <summary>read the caption</summary>
> Table 10: Systematic Classification of Research Questions in High-Performance Perovskite Solar Cell Studies
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.6.4.1">
<tr class="ltx_tr" id="A2.T5.2.2.6.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.6.4.1.1.1">the liquid medium used to dissolve precursors,</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.6.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.6.4.1.2.1">helping to form a uniform perovskite layer</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the full names and abbreviated versions of seven research categories related to perovskite solar cells.  It also shows the number of research papers included in each category, illustrating the relative focus of research within the perovskite solar cell field.
> <details>
> <summary>read the caption</summary>
> Table 11: Correspondence between abbreviated and full names of research categories in perovskite solar cells
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.7.1.1">
<tr class="ltx_tr" id="A2.T5.2.2.7.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.1.1.1.1">Device</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.7.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.7.1.1.2.1">Structure</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training process of two large language models (LLMs): Perovskite-Chat-LLM and Perovskite-Reasoning-LLM.  It lists the specific values used for key parameters such as learning rate, batch size, number of epochs, optimizer, learning rate scheduler, and warmup steps.  These hyperparameters are crucial in influencing the performance and efficiency of the training process for each LLM.  The table allows for comparison of the training strategies employed for the two LLMs.
> <details>
> <summary>read the caption</summary>
> Table 12: Training Hyperparameters for Perovskite-Chat-LLM and Perovskite-Reasoning-LLM
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12669/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12669/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}