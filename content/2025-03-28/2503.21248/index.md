---
title: "ResearchBench: Benchmarking LLMs in Scientific Discovery via Inspiration-Based Task Decomposition"
summary: "ResearchBench: Benchmarking LLMs for Scientific Discovery via Inspiration-Based Task Decomposition."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21248 {{< /keyword >}}
{{< keyword icon="writer" >}} Yujie Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21248" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21248" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21248/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLMs show promise in aiding scientific research, but their ability to discover high-quality research hypotheses remains unexamined. To address this, the paper introduces a benchmark for evaluating LLMs, which covers inspiration retrieval, hypothesis composition, and hypothesis ranking. Critical components are extracted from scientific papers across 12 disciplines using an automated framework. The benchmark helps understand how LLMs perform in scientific discovery sub-tasks. 



The paper develops **ResearchBench**, which collects papers from 12 disciplines and develops an LLM-based framework to extract research questions, background surveys, inspirations, and hypotheses from scientific papers. It finds that current LLMs perform well in retrieving inspirations across disciplines. The paper highlights LLMs' potential as research hypothesis mines, capable of generating novel scientific insights with minimal human involvement.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces ResearchBench, a large-scale benchmark for evaluating LLMs in scientific discovery. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs can effectively retrieve inspirations beyond established associations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LLMs can serve as 'research hypothesis mines,' facilitating innovative hypothesis generation with minimal human input. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is vital for researchers as it introduces the **ResearchBench** benchmark to assess LLMs' scientific discovery potential. By decomposing the discovery process and evaluating LLMs, it offers insights into how to improve these models for research, especially in **out-of-distribution inspiration retrieval**. It enables researchers to better leverage LLMs for automated scientific exploration and future research.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S1.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1.1">Discipline</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.2">Cell</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.3">Chem</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.4">ETS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.5">MS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.6">Phys</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.7">EGS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.8">EVS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.9">BL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.10">BS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.11">Law</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.12">Math</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.1.1.1.1.13">AT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.14">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.1.1">Paper Number</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.2">152</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.3">113</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.4">114</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.5">116</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.6">132</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.7">117</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.8">116</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.9">115</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.10">115</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.11">97</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.12">113</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.1.1.2.1.13">86</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.2.1.14">1386</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the distribution of scientific papers across twelve different disciplines used in the ResearchBench benchmark.  The disciplines included are Chemistry (Chem), Earth Science (ETS), Material Science (MS), Physics (Phys), Energy Science (EGS), Environmental Science (EVS), Biology (BL), Business (BS), Law (Law), Mathematics (Math), and Astronomy (AT). The table shows the number of papers sampled from each discipline, totaling 1386 papers overall. This distribution is crucial for ensuring the benchmark's diversity and representativeness across scientific fields.
> <details>
> <summary>read the caption</summary>
> Table 1: Disciplines and paper number distribution. Chem=Chemistry, ETS=Earth Science, MS=Material Science, Phys=Physics, EGS=Energy Science, EVS=Environmental Science, BL=Biology, BS=Business, AT=Astronomy.
> </details>





### In-depth insights


#### LLMs as Hypothesis Mines
**LLMs as Hypothesis Mines** explores the potential of large language models to accelerate scientific discovery.  The core idea is that **LLMs can be used to generate novel research hypotheses** by uncovering hidden connections between existing knowledge.  This involves a three-step process:  (1) retrieving relevant inspirations from a vast corpus of scientific literature, (2) composing these inspirations with existing research background information, and (3) ranking the generated hypotheses to identify the most promising candidates. The authors find that LLMs are surprisingly effective at the inspiration retrieval step, suggesting that they can capture unknown associations between different areas of knowledge.  This supports the idea that LLMs can act as 'hypothesis mines,' capable of generating innovative hypotheses at scale. However, the hypothesis composition and ranking steps are more challenging, indicating that further research is needed to improve the LLMs' ability to synthesize and evaluate the generated hypotheses. This is a promising approach for automated scientific exploration by identifying those LLMs capable of generating new research insights with minimal human intervention. **Stronger LLMs represent richer mines, and compute corresponds to miners.**

#### Inspiration Bottleneck
The bottleneck towards automated discovery, as discussed, highlights the **inspiration retrieval** sub-task as particularly challenging. While model performance improves with smaller models (8B parameters), it plateaus quickly, suggesting diminishing returns with scale and pre-training enhancements. This is attributed to the task's reliance on **deep domain understanding**, acquired during pre-training through ingesting numerous papers.  Success is less about reasoning (refined post-training) and more about **intuition developed during pre-training**. Addressing this bottleneck requires understanding how LLMs retrieve inspirations, potentially paving the way for advancements in fully automated scientific discovery. Future investigation should focus on improving **knowledge association**.

#### Agentic Framework
The 'Agentic Framework' is pivotal for automating scientific discovery tasks. Its design likely involves leveraging LLMs to autonomously extract key components from research papers, such as research questions, background surveys, inspirations, and hypotheses. **The framework's effectiveness hinges on the LLM's ability to accurately parse and understand scientific text**, identifying the underlying structure and relationships between different elements. A significant challenge lies in the 'Inspiration Extraction'. To mitigate data contamination, the framework focuses on papers published in 2024, which minimizes overlap with LLM pretraining data. The agentic approach ensures scalability and reduces human intervention, allowing for continuous learning and adaptation as new research emerges. This design facilitates the creation of benchmarks and datasets, driving further innovation in automated scientific research.

#### OOD Inspiration Retrieval
The paper addresses the task of Out-of-Distribution (OOD) inspiration retrieval within scientific discovery, a challenging task. The **goal is to identify relevant but non-obvious knowledge pieces** that can spark new hypotheses. This contrasts with typical information retrieval, where relevance is often based on semantic similarity. The finding that LLMs can perform well in this OOD setting is significant. It indicates that **LLMs possess a capability to connect seemingly unrelated concepts**, potentially due to knowledge associations learned during pre-training. However, the paper notes that this is challenging, as performance plateaus despite scaling model size and pre-training, which suggests it may require **deeper domain understanding**.

#### Benchmark: Sci Discovery
**ResearchBench** presents a novel benchmark for evaluating Large Language Models (**LLMs**) in scientific discovery. It addresses a critical gap by focusing on how well LLMs can perform the sub-tasks inherent in discovering high-quality research hypotheses. This **benchmark** includes tasks like **inspiration retrieval**, **hypothesis composition**, and **hypothesis ranking**, offering a more granular evaluation than general-purpose benchmarks. The approach involves extracting critical components from scientific papers, allowing for automated assessment and reducing data contamination by focusing on recently published research. **ResearchBench** promises to advance the development and evaluation of LLMs tailored for scientific research, facilitating automated scientific discovery.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.st1.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.st1.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.st1.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.2.1">Cell</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.3.1">Chem</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.4.1">ETS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.5.1">MS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.6.1">Phys</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.7.1">EGS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.8.1">EVS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.9.1">BL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.10.1">BS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.11.1">Law</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.12"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.12.1">Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.13"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.13.1">A</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st1.3.1.1.1.14"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.1.1.14.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.st1.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.st1.3.1.2.1.1">Llama-3.2-1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.2">34.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.3">34.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.4">32.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.5">30.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.6">30.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.7">34.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.8">35.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.9">33.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.10">41.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.11">29.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.12">36.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.13">30.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st1.3.1.2.1.14">33.68</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.3.2.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.2">74.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.3">78.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.4">79.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.5">74.54</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.6">76.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.7">84.56</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.8">75.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.9">75.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.10">80.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.11">65.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.12">75.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.13">68.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.3.2.14">75.92</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.4.3.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.2">74.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.3">77.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.4">80.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.5">72.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.6">75.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.7">88.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.8">78.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.9">74.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.10">82.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.11">67.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.12">74.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.13">66.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.4.3.14">76.17</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.5.4.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.2">76.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.3">83.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.4">82.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.5">77.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.6">81.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.7">89.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.8">79.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.9">70.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.10">84.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.11">70.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.12">74.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.13">71.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.5.4.14">78.74</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.6.5.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.2">74.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.3">79.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.4">80.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.5">73.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.6">78.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.7">90.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.8">76.77</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.9">75.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.10">85.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.11"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.6.5.11.1">80.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.12">76.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.13"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.6.5.13.1">77.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.6.5.14">78.89</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.7.6.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.2">75.77</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.3">76.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.4">85.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.5">75.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.6">79.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.7">91.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.8">75.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.9">75.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.10">86.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.11">78.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.12">76.77</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.13">71.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.7.6.14">79.24</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.8.7.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.2">79.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.3">82.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.4">82.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.5">75.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.6">80.57</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.7">91.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.8">81.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.9">76.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.10">84.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.11">75.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.12">79.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.13">73.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.8.7.14">80.27</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.9.8.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.2">80.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.3">83.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.4">85.44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.5">76.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.6">79.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.7">91.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.8">79.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.9">76.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.10">86.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.11">75.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.12">77.56</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.13">73.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.9.8.14">80.74</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.10.9.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.10.9.2.1">80.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.3">85.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.4">85.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.5">77.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.6">79.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.7">90.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.8">83.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.9">75.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.10">87.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.11">70.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.12">77.56</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.13">75.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.10.9.14">80.89</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.11.10.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.2">78.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.3">84.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.4">84.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.5">80.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.6">80.25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.7">89.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.8">81.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.9"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.11.10.9.1">79.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.10">86.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.11">75.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.12">77.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.13">75.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.11.10.14">81.18</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st1.3.1.12.11.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.2">78.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.3">78.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.4">85.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.5">76.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.6">81.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.7">91.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.8"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.12.11.8.1">85.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.9">77.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.10"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.12.11.10.1">88.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.11">77.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.12">79.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.13"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.12.11.13.1">77.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st1.3.1.12.11.14">81.43</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st1.3.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.st1.3.1.13.12.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.2">80.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.3"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.3.1">87.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.4"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.4.1">89.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.5"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.5.1">80.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.6"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.6.1">84.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.7"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.7.1">93.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.8">81.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.9">77.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.10">87.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.11">79.74</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.12"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.12.1">83.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.13">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st1.3.1.13.12.14"><span class="ltx_text ltx_font_bold" id="S3.T2.st1.3.1.13.12.14.1">83.43</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of various Large Language Models (LLMs) in retrieving ground truth inspirations. The experiment was conducted by providing the LLMs with a research question and a set of 75 candidate inspirations (including ground truth and negative examples), and only allowing the LLMs to select the top 20% (15 candidates).  The accuracy is calculated as the percentage of times the ground truth inspirations were successfully retrieved among the selected 15 candidates.  The results are broken down by LLM and by scientific discipline (Cell, Chem, etc.), providing a comprehensive evaluation across various models and disciplines.
> <details>
> <summary>read the caption</summary>
> (a) The accuracy (%) of LLMs in retrieving the groundtruth inspiration while only 20% of inspiration candidates are selected.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.st2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.st2.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.st2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.2.1">Cell</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.3.1">Chem</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.4.1">ETS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.5.1">MS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.6.1">Phys</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.7.1">EGS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.8.1">EVS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.9.1">BL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.10.1">BS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.11.1">Law</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.12"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.12.1">Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.13"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.13.1">A</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.st2.3.1.1.1.14"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.1.1.14.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.st2.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.st2.3.1.2.1.1">Llama-3.2-1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.2">10.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.3">11.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.4">12.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.5">9.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.6">11.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.7">8.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.8">14.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.9">13.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.10">17.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.11">12.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.12">11.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.13">10.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.st2.3.1.2.1.14">11.91</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.3.2.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.2">32.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.3">38.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.4">40.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.5">31.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.6">32.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.7">59.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.8">36.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.9">28.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.10">55.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.11">28.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.12">36.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.13">34.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.3.2.14">37.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.4.3.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.2">31.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.3">41.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.4">40.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.5">30.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.6">32.48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.7">71.04</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.8">39.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.9">33.57</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.10">59.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.11">37.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.12">34.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.13">33.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.4.3.14">40.18</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.5.4.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.2">30.42</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.3">43.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.4">41.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.5">34.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.6">33.44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.7">66.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.8">40.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.9">28.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.10">64.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.11">32.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.12">37.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.13">35.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.5.4.14">40.59</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.6.5.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.2">35.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.3">42.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.4">42.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.5">33.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.6">35.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.7">66.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.8">43.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.9">33.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.10">61.45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.11">29.74</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.12">36.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.13">34.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.6.5.14">41.21</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.7.6.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.2">31.55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.3">38.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.4">44.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.5">34.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.6">34.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.7">74.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.8">37.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.9">32.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.10">64.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.11">37.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.12">37.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.13">32.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.7.6.14">41.46</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.8.7.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.2">36.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.3">41.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.4">42.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.5">30.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.6">36.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.7">67.57</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.8">40.55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.9">34.30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.10">63.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.11">34.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.12">37.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.13">33.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.8.7.14">41.62</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.9.8.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.2">36.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.3">47.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.4">45.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.5">33.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.6">34.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.7">72.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.8">43.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.9">35.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.10">64.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.11">34.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.12">39.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.13">36.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.9.8.14">43.43</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.10.9.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.2">41.13</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.3"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.10.9.3.1">48.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.4">45.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.5">34.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.6">33.44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.7">69.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.8">44.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.9">34.30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.10">64.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.11">37.93</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.12">38.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.13"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.10.9.13.1">41.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.10.9.14">44.28</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.11.10.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.2">38.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.3">46.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.4">44.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.5">36.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.6"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.11.10.6.1">36.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.7"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.11.10.7.1">75.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.8">41.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.9"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.11.10.9.1">40.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.10">65.45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.11">36.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.12">38.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.13">37.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.11.10.14">44.78</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.st2.3.1.12.11.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.2"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.12.11.2.1">41.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.3">44.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.4"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.12.11.4.1">47.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.5">36.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.6">34.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.7">70.66</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.8"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.12.11.8.1">45.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.9">37.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.10">65.45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.11"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.12.11.11.1">39.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.12">38.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.13">39.29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.st2.3.1.12.11.14">44.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.st2.3.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.st2.3.1.13.12.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.2">39.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.3">46.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.4">47.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.5"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.5.1">38.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.6">35.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.7"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.7.1">75.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.8">44.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.9">38.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.10"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.10.1">65.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.11"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.11.1">39.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.12"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.12.1">40.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.13">38.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.st2.3.1.13.12.14"><span class="ltx_text ltx_font_bold" id="S3.T2.st2.3.1.13.12.14.1">45.65</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of various Large Language Models (LLMs) in retrieving ground truth inspirations.  Only the top 4% of inspiration candidates are considered for each LLM.  The accuracy is calculated across 12 scientific disciplines (Cell, Chem, ETS, MS, Phys, EGS, EVS, BL, BS, Law, Math, AT) and presented as a percentage for each LLM and discipline. The overall average accuracy across all disciplines is also provided.
> <details>
> <summary>read the caption</summary>
> (b) The accuracy (%) of LLMs in retrieving the groundtruth inspiration while only 4% of inspiration candidates are selected.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Distance Level 1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">Distance Level 2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1">Distance Level 3</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.1.1.2.2.1"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.2.1">(top 20%)</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.3.1">(top 4%)</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.4.1">(top 20%)</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.5.1">(top 4%)</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.6.1">(top 20%)</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.7.1">(top 4%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.3.1.1">Llama-3.2-1B</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.2">23.57%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.3">6.33%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.4">15.52%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.5">2.93%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.6">14.46%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.7">2.85%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.4.2.1">Qwen Turbo</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.2">52.72%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.3">12.05%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.4">9.45%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.5">1.11%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.6">4.46%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.4.2.7">0.34%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.3.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.2">53.96%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.3">10.15%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.4">10.16%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.5">0.70%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.6">2.40%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.5.3.7">0.13%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.6.4.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.2">53.69%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.3">11.17%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.4">10.65%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.5">0.77%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.6">2.94%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.6.4.7">0.14%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.7.5.1">Gemini 2.0 Flash Thinking</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.2">54.49%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.3">10.59%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.4">10.34%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.5">0.58%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.6">2.24%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.7.5.7">0.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.8.6.1">GPT-4o</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.2">54.90%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.3">10.02%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.4">9.84%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.5">0.47%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.6">2.09%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.8.6.7">0.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.9.7.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.2">55.32%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.3">10.04%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.4">9.82%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.5">0.55%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.6">2.16%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.9.7.7">0.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.10.8.1">DeepSeek-V3</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.2">55.74%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.3">10.22%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.4">9.80%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.5">0.43%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.6">1.79%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.10.8.7">0.07%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.11.9.1">GPT-4o Mini</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.2">55.90%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.3">10.67%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.4">9.54%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.5">0.47%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.6">2.12%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.11.9.7">0.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.12.10.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.2">55.70%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.3">10.19%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.4">9.51%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.5">0.49%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.6">2.00%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.12.10.7">0.07%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.13.11.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.2">55.91%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.3">10.63%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.4">9.63%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.5">0.42%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.6">2.03%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.1.13.11.7">0.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.14.12.1">Qwen Plus</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.2">56.11%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.3">10.57%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.4">9.52%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.5">0.50%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.6">2.16%</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.1.14.12.7">0.16%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on an information retrieval task focused on scientific hypothesis generation.  The accuracy of each LLM is evaluated across twelve scientific disciplines (Chemistry, Earth Science, Materials Science, Physics, Energy Science, Environmental Science, Biology, Business, Law, Mathematics, and Astronomy), showing the percentage of ground truth inspirations correctly retrieved.  Two scenarios are shown: one where only the top 20% of inspiration candidates are considered, and another where only the top 4% are considered. The table helps to assess the relative strengths and weaknesses of different LLMs in this specific task, and how performance varies across disciplines.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of LLMs in hypothesis retrieve task. Gemini 2.0 FT=Gemini 2.0 Flash Thinking; Chem=Chemistry, ETS=Earth Science, MS=Material Science, Phys=Physics, EGS=Energy Science, EVS=Environmental Science, BL=Biology, BS=Business, A=Astronomy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">Cell</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.3.1">Chem</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.4.1">ETS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.5.1">MS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.6.1">Phys</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.7.1">EGS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.8.1">EVS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.9.1">BL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.10.1">BS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.11.1">Law</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.12"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.12.1">Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.13"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.13.1">A</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.14"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.14.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.2.1.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.2">40.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.3">40.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.4">38.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.5">46.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.6">45.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.7">45.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.8">48.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.9">46.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.10">35.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.11">37.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.12">43.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.13">34.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.14">42.56</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.3.2.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.2">44.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.3">47.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.4">42.78</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.5">46.04</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.6">45.05</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.7">44.30</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.8">46.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.9">47.37</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.10">44.21</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.11">47.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.12">48.21</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.13">45.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.14">45.68</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.3.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.2">45.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.3">39.79</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.4">48.48</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.5">47.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.6">48.77</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.7">49.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.8">48.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.9">48.02</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.10">41.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.11">47.03</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.12">42.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.13">40.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.14">46.30</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.4.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.2">46.25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.3">45.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.4">48.64</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.5">51.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.6">47.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.7">51.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.8">49.41</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.9">48.77</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.10">47.03</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.11">55.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.12"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.4.12.1">56.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.13">49.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.14">50.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.6.5.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.2">46.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.3">49.86</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.4">50.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.5">51.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.6">50.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.7">50.61</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.8">52.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.9">54.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.10">49.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.11">53.94</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.12">51.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.13">49.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.14">50.92</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.7.6.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.2">46.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.3">49.42</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.4">50.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.5">52.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.6">53.82</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.7">53.33</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.8">54.86</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.9">54.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.10">46.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.11">56.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.12">52.48</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.13">53.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.14">52.47</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.8.7.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.2">52.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.3">51.45</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.4">49.55</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.5">51.06</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.6">52.64</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.7">50.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.8">52.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.9">56.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.10"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.10.1">53.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.11">55.76</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.12">55.38</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.13">53.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.14">52.71</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.9.8.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.2">55.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.3">53.04</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.4">54.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.5">53.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.6">53.82</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.7">52.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.8">53.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.9">55.38</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.10">46.15</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.11">53.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.12">54.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.13">52.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.14">53.37</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.10.9.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.2">52.78</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.3">52.27</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.4">53.18</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.5">54.25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.6">54.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.7">53.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.8">53.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.9">56.32</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.10">50.27</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.11">55.15</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.12">52.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.13">53.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.14">53.79</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.11.10.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.2.1">60.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.3.1">53.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.4.1">57.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.5.1">56.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.6.1">58.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.7.1">56.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.8.1">60.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.9"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.9.1">58.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.10">51.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.11"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.11.1">62.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.12">55.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.13"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.13.1">56.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.11.10.14"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.10.14.1">57.46</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of negative inspiration retrieval in the inspiration retrieval task.  The experiment evaluated the performance of LLMs in identifying irrelevant papers as potential inspirations for a given research question. The average percentage of incorrectly identified negative inspirations is shown for three different levels of relatedness to the target paper, and for two conditions: where only the top 20% and the top 4% of candidate inspirations were considered. This allows analysis of how LLM performance is affected by the relatedness of the irrelevant papers and the stringency of the selection process.
> <details>
> <summary>read the caption</summary>
> Table 3: Analysis of negative inspiration retrieval in the inspiration retrieval task. Each value represents the average percentage of negative inspirations retrieved across three distance levels, under two settings where only 20% and 4% of the candidate inspirations are selected, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.2.1">Cell</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.3.1">Chem</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.4.1">ETS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.5.1">MS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.6.1">Phys</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.7.1">EGS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.8.1">EVS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.9.1">BL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.10.1">BS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.11.1">Law</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.12"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.12.1">Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.13"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.13.1">A</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.14"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.14.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.1.2.1.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.2">36.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.3">35.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.4">30.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.5">37.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.6">43.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.7">47.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.8">36.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.9">43.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.10">41.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.11">46.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.12">30.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.13">25.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.14">38.06</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.3.2.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.2">42.25</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.3">39.94</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.4">34.39</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.5">42.98</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.6">39.78</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.7">43.78</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.8">40.63</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.9">43.72</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.10">45.03</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.11">42.24</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.12">32.67</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.13">31.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3.2.14">40.13</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.4.3.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.2">43.73</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.3">44.38</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.4">35.95</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.5">51.86</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.6">54.63</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.7">55.16</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.8">40.98</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.9">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.10">46.88</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.11">48.31</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.12">38.24</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.13">35.75</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3.14">45.11</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.5.4.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.2">46.42</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.3">45.11</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.4">42.88</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.5">48.74</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.6">45.61</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.7">46.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.8">45.26</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.9">49.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.10">50.92</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.11">49.27</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.12">37.15</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.13">37.62</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4.14">45.48</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.6.5.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.2">43.52</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.3">44.96</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.4">36.88</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.5">52.81</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.6">54.08</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.7">54.95</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.8">42.27</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.9">44.53</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.10">46.15</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.11">48.09</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.12">37.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.13">38.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.5.14">45.49</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.7.6.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.2">46.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.3">46.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.4">41.72</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.5">49.35</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.6">50.64</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.7">49.11</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.8">44.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.9">46.93</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.10">43.36</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.11">45.43</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.12">40.16</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.13">41.97</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.7.6.14">45.56</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.8.7.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.2">48.15</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.3">46.88</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.4">45.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.5">52.45</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.6">54.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.7">52.48</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.8">48.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.9">48.06</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.10">51.23</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.11">52.93</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.12">44.49</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.13">40.27</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.7.14">48.86</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.9.8.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.2">55.48</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.3">54.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.4">55.90</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.5">56.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.6">54.35</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.7">55.48</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.8">55.91</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.9">56.71</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.10">54.69</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.11">55.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.12">55.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.13">55.49</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.9.8.14">55.65</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.10.9.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.2">60.75</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.3">60.99</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.4">53.24</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.5">61.69</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.6">61.34</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.7">61.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.8">60.52</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.9">64.11</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.10">64.67</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.11">61.14</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.12">52.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.13">51.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.9.14">59.60</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.11.10.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.10.2.1">80.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.10.3.1">82.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.4">78.85</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.10.5.1">83.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.6">80.82</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.7">81.47</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.10.8.1">83.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.9">81.77</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.10">83.48</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.11">80.69</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.12"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.10.12.1">76.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.13">75.88</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.10.14">80.99</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.1.12.11.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.2">80.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.3">80.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.4.1">80.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.5">83.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.6.1">84.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.7.1">84.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.8">82.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.9.1">82.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.10.1">84.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.11.1">81.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.12">76.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.13"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.13.1">76.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.12.11.14"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.14.1">81.59</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) in the hypothesis composition task.  The performance is normalized and shown for each LLM across twelve scientific disciplines: Chemistry (Chem), Earth Science (ETS), Materials Science (MS), Physics (Phys), Energy Science (EGS), Environmental Science (EVS), Biology (BL), Business (BS), Law, Mathematics (Math), and Astronomy (A).  Higher values indicate better performance in generating hypotheses. Gemini 2.0 FT refers to Gemini 2.0 Flash Thinking.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of LLMs in hypothesis composition task. Each number represents the normalized performance of LLMs in composing hypothesis. Gemini 2.0 FT=Gemini 2.0 Flash Thinking; Chem=Chemistry, ETS=Earth Science, MS=Material Science, Phys=Physics, EGS=Energy Science, EVS=Environmental Science, BL=Biology, BS=Business, A=Astronomy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.2.1">✗ ✗</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.3.1">✓ ✗</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.4.1">✓ ✓</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.2.1.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.2">33.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.3">64.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.4">1.33</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.3.2.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.2">25.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.3">69.33</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.4">5.67</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.4.3.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.2">2.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.4.3.3.1">91.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.4">5.83</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.5.4.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.5.4.2.1">52.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.3">39.17</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.4">8.17</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.6.5.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.6.5.2">35.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.6.5.3">51.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.6.5.4">12.83</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.7.6.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.7.6.2">28.17</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.7.6.3">58.17</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.7.6.4">13.67</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.8.7.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.8.7.2">36.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.8.7.3">49.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.8.7.4">13.83</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.9.8.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.9.8.2">39.33</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.9.8.3">45.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.9.8.4">15.00</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.10.9.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.10.9.2">11.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.10.9.3">61.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.10.9.4">27.00</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.11.10.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.11.10.2">1.74</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.11.10.3">21.83</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.11.10.4">76.44</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.1.12.11.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.12.11.2">3.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.12.11.3">19.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.12.11.4.1">77.67</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on a hypothesis ranking task.  The accuracy of each LLM is shown as a percentage, indicating its ability to correctly rank a ground-truth hypothesis against a set of negative hypotheses.  The results are broken down by specific scientific discipline (Chemistry, Earth Science, Materials Science, Physics, Energy Science, Environmental Science, Biology, Business, and Astronomy), providing a detailed view of each model's performance across different scientific fields. The overall accuracy across all disciplines is also provided for each LLM.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of LLMs in hypothesis ranking task. Each number represents the accuracy (%) of LLMs in ranking ground-truth hypothesis among negative hypothesis. Chem=Chemistry, ETS=Earth Science, MS=Material Science, Phys=Physics, EGS=Energy Science, EVS=Environmental Science, BL=Biology, BS=Business, A=Astronomy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Score</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1.2.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.2.1.1.1">Criteria</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">5 Points</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.2.1.2.1">
<span class="ltx_p" id="A1.T7.1.1.2.1.2.1.1" style="width:369.9pt;">(1) Covers three key points (or all key points) in the ground-truth hypothesis, with each key point leveraged nearly identically to the ground-truth hypothesis. (2) Does not contain any extra key point that is redundant, unnecessary, unhelpful, or harmful.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">4 Points</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.3.2.2.1">
<span class="ltx_p" id="A1.T7.1.1.3.2.2.1.1" style="width:369.9pt;">(1) Covers three key points (or all key points) in the ground-truth hypothesis, with each key point leveraged nearly identically to the ground-truth hypothesis. (2) However, it also contains extra key point(s) that are redundant, unnecessary, unhelpful, or harmful.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">3 Points</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.4.3.2.1">
<span class="ltx_p" id="A1.T7.1.1.4.3.2.1.1" style="width:369.9pt;">(1) Covers two key points in the ground-truth hypothesis, with each key point leveraged nearly identically to the ground-truth hypothesis. (2) Does not cover all key points in the ground-truth hypothesis. (3) May or may not contain extra key points.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">2 Points</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.5.4.2.1">
<span class="ltx_p" id="A1.T7.1.1.5.4.2.1.1" style="width:369.9pt;">(1) Covers one key point in the ground-truth hypothesis and leverages it nearly identically to the ground-truth hypothesis. (2) Does not cover all key points in the ground-truth hypothesis. (3) May or may not contain extra key points.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1 Point</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.6.5.2.1">
<span class="ltx_p" id="A1.T7.1.1.6.5.2.1.1" style="width:369.9pt;">(1) Covers at least one key point in the ground-truth hypothesis, but all the covered key points are used differently from the ground-truth hypothesis. (2) May or may not contain extra key points.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T7.1.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">0 Points</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.1.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.7.6.2.1">
<span class="ltx_p" id="A1.T7.1.1.7.6.2.1.1" style="width:369.9pt;">The proposed hypothesis does not cover any key point in the ground-truth hypothesis.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the results of an analysis designed to assess position bias in the hypothesis ranking task.  The task involved comparing pairs of hypotheses twice—once in their original order and once with their order reversed. Three outcomes were possible for each pair: both hypotheses ranked incorrectly (✗ ✗), one hypothesis correctly and the other incorrectly (✓ ✗), or both hypotheses correctly ranked (✓ ✓).  The table shows the average percentage for each outcome across all hypothesis pairs, providing insight into the extent to which the ranking performance is influenced by the order in which hypotheses are presented.
> <details>
> <summary>read the caption</summary>
> Table 6: Analysis of position bias in hypothesis ranking task. Specifically, each hypothesis pair is compared twice, with three possible outcomes: both wrongly ranked (✗ ✗); one right one wrong (✓ ✗); both rightly ranked (✓ ✓). Each number represents an averaged percentage (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.2.1">Cutoff Date</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.3.1">Release Date</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.2">Oct 2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.3">May 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.3.2.1">GPT-4o Mini</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.2">Oct 2023</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.3">Jul 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.4.3.1">Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.2">Dec 2023</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.3">Jul 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.5.4.1">Llama-3.1-70B</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.2">Dec 2023</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.3">Jul 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.6.5.1">Gemini 2.0 Flash</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.2">Jun 2024</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.3">Dec 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.7.6.1">Gemini 2.0 FT</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.7.6.2">Jun 2024</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.7.6.3">Dec 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.8.7.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.8.7.2">Apr 2024</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.8.7.3">Jun 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.9.8.1">Claude 3.5 Haiku</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.9.8.2">Jul 2024</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.9.8.3">Oct 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.10.9.1">Qwen Plus</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.10.9.2">\</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.10.9.3">Nov 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.11.10.1">Qwen Turbo</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.11.10.2">\</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.11.10.3">Nov 2024</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.1.12.11.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.12.11.2">\</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.12.11.3">Dec 2024</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the scoring rubric used to evaluate the quality of generated research hypotheses.  Scores range from 0 to 5, reflecting the extent to which a generated hypothesis aligns with a ground truth hypothesis.  Higher scores indicate better alignment, considering factors like the number of key points covered, how accurately these points are represented, and the presence of extraneous or irrelevant information.
> <details>
> <summary>read the caption</summary>
> Table 7: Scoring criteria for hypothesis evaluation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21248/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21248/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}