---
title: "MMDocIR: Benchmarking Multi-Modal Retrieval for Long Documents"
summary: "MMDocIR, a new benchmark dataset, enables better evaluation of multi-modal document retrieval systems by providing page-level and layout-level annotations for diverse long documents and questions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Cross-Modal Retrieval", "🏢 Noah's Ark Lab, Huawei",]
showSummary: true
date: 2025-01-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.08828 {{< /keyword >}}
{{< keyword icon="writer" >}} Kuicai Dong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.08828" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.08828" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.08828/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multi-modal document retrieval benchmarks suffer from issues like poor question quality, incomplete documents, and limited retrieval granularity.  These shortcomings hinder accurate evaluation and progress in this important area. 



To address this, the researchers introduce MMDocIR, a new benchmark dataset with two key tasks: page-level and layout-level retrieval.  **MMDocIR features 313 long documents across 10 diverse domains, along with 1685 expertly-annotated questions**.  The results show that visual-based methods generally outperform text-based methods.  This benchmark significantly improves multi-modal document retrieval evaluation and guides future research directions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MMDocIR offers a new benchmark dataset for evaluating multi-modal document retrieval systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Visual-based retrieval methods significantly outperform text-based ones in the benchmark. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark includes both page-level and layout-level retrieval tasks, providing finer-grained evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical need for robust benchmarks in multi-modal document retrieval**.  Existing benchmarks are insufficient, hindering effective evaluation of systems.  MMDocIR provides a comprehensive, expertly annotated dataset, advancing the field and enabling more accurate comparisons of retrieval methods. This opens avenues for future research in multi-modal understanding and retrieval techniques, impacting various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.08828/x1.png)

> 🔼 This figure illustrates the MMDocIR dataset, which includes 313 long documents spanning 10 diverse domains and a total of 1,685 associated questions.  Each question is meticulously annotated at the page level, using selected screenshots to indicate the relevant page.  Furthermore, the figure highlights layout-level annotations, represented by red boundary boxes, signifying more precise pinpointings of information within each page compared to simple page-level annotations. This detailed annotation makes MMDocIR a robust benchmark for evaluating multi-modal document retrieval systems.
> <details>
> <summary>read the caption</summary>
> Figure 1. MMDocIR comprises 313 lengthy documents across 10 different domains, along with 1,685 questions. For each question, page-level annotations are provided via selected screenshots. Red boundary boxes represent layout-level annotations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S1.T1.1.2.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.1.1" style="font-size:90%;">Benchmarks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S1.T1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.2.1" style="font-size:90%;">Question</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S1.T1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.3.1" style="font-size:90%;">Document</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S1.T1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.4.1" style="font-size:90%;">Label</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.1"><span class="ltx_text" id="S1.T1.1.3.2.1.1" style="font-size:90%;">Type</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.2"><span class="ltx_text" id="S1.T1.1.3.2.2.1" style="font-size:90%;">By Expert?</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.3"><span class="ltx_text" id="S1.T1.1.3.2.3.1" style="font-size:90%;">For IR?</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.4"><span class="ltx_text" id="S1.T1.1.3.2.4.1" style="font-size:90%;">#Num</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.T1.1.3.2.5"><span class="ltx_text" id="S1.T1.1.3.2.5.1" style="font-size:90%;">Evidence Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.6"><span class="ltx_text" id="S1.T1.1.3.2.6.1" style="font-size:90%;">Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.7"><span class="ltx_text" id="S1.T1.1.3.2.7.1" style="font-size:90%;">#Pages</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.T1.1.3.2.8"><span class="ltx_text" id="S1.T1.1.3.2.8.1" style="font-size:90%;">Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.9"><span class="ltx_text" id="S1.T1.1.3.2.9.1" style="font-size:90%;">Page</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.T1.1.3.2.10"><span class="ltx_text" id="S1.T1.1.3.2.10.1" style="font-size:90%;">Layout</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.1.4.1.1">
<span class="ltx_text" id="S1.T1.1.4.1.1.1" style="font-size:90%;">DocCVQA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.4.1.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Tito et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.4.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">2021</span></a><span class="ltx_text" id="S1.T1.1.4.1.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.1.4.1.2"><span class="ltx_text" id="S1.T1.1.4.1.2.1" style="font-size:90%;">VQA question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S1.T1.1.4.1.3"><span class="ltx_text" id="S1.T1.1.4.1.3.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.4.1.4"><span class="ltx_text" id="S1.T1.1.4.1.4.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.4.1.5"><span class="ltx_text" id="S1.T1.1.4.1.5.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.1.4.1.6"><span class="ltx_text" id="S1.T1.1.4.1.6.1" style="font-size:90%;">TXT/L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.4.1.7"><span class="ltx_text" id="S1.T1.1.4.1.7.1" style="font-size:90%;">Finance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.4.1.8"><span class="ltx_text" id="S1.T1.1.4.1.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.1.4.1.9"><span class="ltx_text" id="S1.T1.1.4.1.9.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.4.1.10"><span class="ltx_text" id="S1.T1.1.4.1.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.1.4.1.11"><span class="ltx_text" id="S1.T1.1.4.1.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.5.2.1">
<span class="ltx_text" id="S1.T1.1.5.2.1.1" style="font-size:90%;">SciMMIR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.5.2.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Wu et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.5.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S1.T1.1.5.2.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.5.2.2"><span class="ltx_text" id="S1.T1.1.5.2.2.1" style="font-size:90%;">Image caption</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.5.2.3"><span class="ltx_text" id="S1.T1.1.5.2.3.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.2.4"><span class="ltx_text" id="S1.T1.1.5.2.4.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.2.5"><span class="ltx_text" id="S1.T1.1.5.2.5.1" style="font-size:90%;">530K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.5.2.6"><span class="ltx_text" id="S1.T1.1.5.2.6.1" style="font-size:90%;">TAB/I</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.2.7"><span class="ltx_text" id="S1.T1.1.5.2.7.1" style="font-size:90%;">Science</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.2.8"><span class="ltx_text" id="S1.T1.1.5.2.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.5.2.9"><span class="ltx_text" id="S1.T1.1.5.2.9.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.2.10"><span class="ltx_text" id="S1.T1.1.5.2.10.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.5.2.11"><span class="ltx_text" id="S1.T1.1.5.2.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.1.2">
<span class="ltx_text" id="S1.T1.1.1.2.1" style="font-size:90%;">ViDoRe </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.1.2.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Faysse et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.1.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S1.T1.1.1.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.1.3"><span class="ltx_text" id="S1.T1.1.1.3.1" style="font-size:90%;">VQA question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.1.1">
<span class="ltx_text" id="S1.T1.1.1.1.1" style="font-size:90%;"></span><svg class="ltx_picture" height="8.62" id="S1.T1.1.1.1.pic1" overflow="visible" version="1.1" width="10.38"><g transform="translate(0,8.62) matrix(1 0 0 -1 0 0) translate(5.19,0) translate(0,4.31)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 -5.19 -4.31)"><foreignobject height="8.62" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="10.38"><span class="ltx_text" id="S1.T1.1.1.1.pic1.1.1.1.1.1" style="font-size:90%;color:#326400;">✓</span></foreignobject></g><g color="#C80000" fill="#C80000" stroke="#C80000" stroke-width="0.8pt"><path d="M 1.89 -1.26 L -1.26 1.89" style="fill:none"></path></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4"><span class="ltx_text" id="S1.T1.1.1.4.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5"><span class="ltx_text" id="S1.T1.1.1.5.1" style="font-size:90%;">3,810</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.6"><span class="ltx_text" id="S1.T1.1.1.6.1" style="font-size:90%;">TXT/C/TAB/I</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7"><span class="ltx_text" id="S1.T1.1.1.7.1" style="font-size:90%;">Multi-domain</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8"><span class="ltx_text" id="S1.T1.1.1.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.9"><span class="ltx_text" id="S1.T1.1.1.9.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10"><span class="ltx_text" id="S1.T1.1.1.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.11"><span class="ltx_text" id="S1.T1.1.1.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.6.3.1">
<span class="ltx_text" id="S1.T1.1.6.3.1.1" style="font-size:90%;">PDF-MVQA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.6.3.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Ding et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.6.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S1.T1.1.6.3.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.6.3.2"><span class="ltx_text" id="S1.T1.1.6.3.2.1" style="font-size:90%;">Search query</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.6.3.3"><span class="ltx_text" id="S1.T1.1.6.3.3.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.3.4"><span class="ltx_text" id="S1.T1.1.6.3.4.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.3.5"><span class="ltx_text" id="S1.T1.1.6.3.5.1" style="font-size:90%;">260k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.6.3.6"><span class="ltx_text" id="S1.T1.1.6.3.6.1" style="font-size:90%;">TXT/TAB/I</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.3.7"><span class="ltx_text" id="S1.T1.1.6.3.7.1" style="font-size:90%;">Biomedical</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.3.8"><span class="ltx_text" id="S1.T1.1.6.3.8.1" style="font-size:90%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.6.3.9"><span class="ltx_text" id="S1.T1.1.6.3.9.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.3.10"><span class="ltx_text" id="S1.T1.1.6.3.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.6.3.11"><span class="ltx_text" id="S1.T1.1.6.3.11.1" style="font-size:90%;color:#326400;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.7.4.1">
<span class="ltx_text" id="S1.T1.1.7.4.1.1" style="font-size:90%;">MMLongBench-Doc </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.7.4.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Ma et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.7.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">2024b</span></a><span class="ltx_text" id="S1.T1.1.7.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.7.4.2"><span class="ltx_text" id="S1.T1.1.7.4.2.1" style="font-size:90%;">VQA question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.7.4.3"><span class="ltx_text" id="S1.T1.1.7.4.3.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.4.4"><span class="ltx_text" id="S1.T1.1.7.4.4.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.4.5"><span class="ltx_text" id="S1.T1.1.7.4.5.1" style="font-size:90%;">1,082</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.7.4.6"><span class="ltx_text" id="S1.T1.1.7.4.6.1" style="font-size:90%;">TXT/L/C/TAB/I</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.4.7"><span class="ltx_text" id="S1.T1.1.7.4.7.1" style="font-size:90%;">Multi-domain</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.4.8"><span class="ltx_text" id="S1.T1.1.7.4.8.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.7.4.9"><span class="ltx_text" id="S1.T1.1.7.4.9.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.4.10"><span class="ltx_text" id="S1.T1.1.7.4.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.7.4.11"><span class="ltx_text" id="S1.T1.1.7.4.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.8.5.1">
<span class="ltx_text" id="S1.T1.1.8.5.1.1" style="font-size:90%;">Wiki-SS </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.8.5.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Ma et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.8.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S1.T1.1.8.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.8.5.2"><span class="ltx_text" id="S1.T1.1.8.5.2.1" style="font-size:90%;">Natural question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.8.5.3"><span class="ltx_text" id="S1.T1.1.8.5.3.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.8.5.4"><span class="ltx_text" id="S1.T1.1.8.5.4.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.8.5.5"><span class="ltx_text" id="S1.T1.1.8.5.5.1" style="font-size:90%;">3,610</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.8.5.6"><span class="ltx_text" id="S1.T1.1.8.5.6.1" style="font-size:90%;">TXT</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.8.5.7"><span class="ltx_text" id="S1.T1.1.8.5.7.1" style="font-size:90%;">Wikipedia</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.8.5.8"><span class="ltx_text" id="S1.T1.1.8.5.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.8.5.9"><span class="ltx_text" id="S1.T1.1.8.5.9.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.8.5.10"><span class="ltx_text" id="S1.T1.1.8.5.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.8.5.11"><span class="ltx_text" id="S1.T1.1.8.5.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.9.6.1">
<span class="ltx_text" id="S1.T1.1.9.6.1.1" style="font-size:90%;">DocMatix-IR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.1.9.6.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Ma et al</span><span class="ltx_text" style="font-size:90%;">.</span><span class="ltx_text" id="S1.T1.1.9.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.08828v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S1.T1.1.9.6.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.T1.1.9.6.2"><span class="ltx_text" id="S1.T1.1.9.6.2.1" style="font-size:90%;">VQA question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S1.T1.1.9.6.3"><span class="ltx_text" id="S1.T1.1.9.6.3.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.9.6.4"><span class="ltx_text" id="S1.T1.1.9.6.4.1" style="font-size:90%;color:#C80000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.9.6.5"><span class="ltx_text" id="S1.T1.1.9.6.5.1" style="font-size:90%;">5.61M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.9.6.6"><span class="ltx_text" id="S1.T1.1.9.6.6.1" style="font-size:90%;">TXT/L/C/TAB/I</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.9.6.7"><span class="ltx_text" id="S1.T1.1.9.6.7.1" style="font-size:90%;">Multi-domain</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.9.6.8"><span class="ltx_text" id="S1.T1.1.9.6.8.1" style="font-size:90%;">4.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.9.6.9"><span class="ltx_text" id="S1.T1.1.9.6.9.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.9.6.10"><span class="ltx_text" id="S1.T1.1.9.6.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.9.6.11"><span class="ltx_text" id="S1.T1.1.9.6.11.1" style="font-size:90%;color:#C80000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.1.10.7.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.10.7.1.1" style="font-size:90%;">MMDocIR</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.2"><span class="ltx_text" id="S1.T1.1.10.7.2.1" style="font-size:90%;">VQA question</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.3"><span class="ltx_text" id="S1.T1.1.10.7.3.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.4"><span class="ltx_text" id="S1.T1.1.10.7.4.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.5"><span class="ltx_text" id="S1.T1.1.10.7.5.1" style="font-size:90%;">1,658</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.1.10.7.6"><span class="ltx_text" id="S1.T1.1.10.7.6.1" style="font-size:90%;">TXT/C/TAB/I</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.7"><span class="ltx_text" id="S1.T1.1.10.7.7.1" style="font-size:90%;">Multi-domain</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.8"><span class="ltx_text" id="S1.T1.1.10.7.8.1" style="font-size:90%;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S1.T1.1.10.7.9"><span class="ltx_text" id="S1.T1.1.10.7.9.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.10"><span class="ltx_text" id="S1.T1.1.10.7.10.1" style="font-size:90%;color:#326400;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.10.7.11"><span class="ltx_text" id="S1.T1.1.10.7.11.1" style="font-size:90%;color:#326400;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the MMDocIR benchmark with other existing document information retrieval datasets.  For each dataset, it lists the type of questions used, whether those questions were created by experts or automatically generated, whether the questions were specifically designed for IR tasks, the number of questions in each dataset, the types of evidence included (pure text, generalized layout, chart, table, image), the document domains covered, the average number of pages per document, and whether the datasets contain annotations for page-level and layout-level retrieval.  The abbreviations TXT/L/C/TAB/I represent pure text, generalized layout, chart, table, and image, respectively.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison between our benchmark and previous Document IR datasets. TXT/L/C/TAB/I: pure text/generalized layout/chart/table/image.
> </details>





### In-depth insights


#### MMDocIR Benchmark
The MMDocIR benchmark represents a significant contribution to the field of multi-modal document retrieval by addressing the critical need for a robust evaluation framework.  **Its innovative dual-task design**, encompassing both page-level and layout-level retrieval, allows for a more comprehensive assessment of system performance than previously possible.  The benchmark's **rich dataset**, including expertly annotated labels for over 1,600 questions and bootstrapped labels for many more, provides a substantial resource for training and evaluating retrieval models.  The inclusion of **diverse document types and domains** strengthens its generalizability and practical relevance.  However, the **relatively small size of the expertly annotated portion** may limit its effectiveness in capturing the full range of challenges in multi-modal retrieval tasks. Future work could explore expanding the dataset to include more documents and diverse query types to further enhance its robustness and utility in advancing the state-of-the-art in multi-modal information retrieval.

#### Dual-Task Retrieval
The concept of 'Dual-Task Retrieval' in the context of multi-modal document retrieval presents a significant advancement.  It cleverly addresses the limitations of existing benchmarks by introducing **two distinct yet interconnected retrieval tasks**: page-level and layout-level retrieval.  This dual approach offers a more granular and nuanced evaluation compared to traditional page-level-only methods.  **Page-level retrieval** focuses on identifying the most relevant pages within a lengthy document, while **layout-level retrieval** further refines this by targeting specific layouts (paragraphs, figures, tables, etc.) within those pages. This two-pronged approach is crucial because users often seek specific information within a document, not just the overall most relevant page.  The integration of these tasks within a single benchmark allows for a more comprehensive assessment of multi-modal retrieval systems, revealing their strengths and weaknesses in both broad and fine-grained retrieval scenarios.  The dual-task methodology provides a more realistic and user-centric evaluation framework, advancing the field significantly beyond simpler, less sophisticated approaches.

#### Visual Retrieval Wins
The assertion that "Visual Retrieval Wins" in multi-modal document retrieval is supported by the research paper's findings.  **Visual-driven methods consistently outperformed text-driven approaches**, indicating the significant advantage of leveraging visual information. This superiority holds across various domains and evaluation metrics, highlighting the importance of visual cues in understanding document content. The study reveals that even when text-based methods utilize powerful vision-language models (VLMs) for text generation, they still fail to match the performance of visual-driven models that directly process images. This suggests that **directly incorporating visual data is crucial** and that simply transforming visual elements into text loses valuable contextual information.  **The effectiveness of visual methods underscores the limitations of relying solely on OCR or text-based representations** of multi-modal documents. The paper's comprehensive evaluation strengthens the conclusion that visual information plays a pivotal role in effectively retrieving relevant content from complex documents.

#### VLM-Text Advantage
The concept of 'VLM-Text Advantage' highlights the superior performance of models using Vision-Language Models (VLMs) to process text extracted from visual elements within documents, compared to traditional Optical Character Recognition (OCR) methods.  **VLMs offer a richer, more nuanced understanding of textual data embedded within images and layouts**, going beyond simple character recognition. This advantage is crucial in multi-modal document retrieval because it allows for **capturing contextual information** that's often lost during OCR. This is especially true for complex documents with a high degree of visual integration, as VLMs can interpret the layout, formatting and visual cues alongside text, leading to more accurate retrieval results.  The improvement suggests that **combining visual and textual analysis** offers a more robust method of extracting meaningful information from documents, and directly benefits applications requiring comprehension of visually-rich content.  **Future research should investigate VLM's capability to handle diverse visual elements**, including tables and charts, more efficiently.  Optimizations to VLM processes, addressing computational costs and latency, will further enhance the practical benefits of this approach.

#### Future Directions
Future research in multi-modal document retrieval should focus on several key areas.  **Improving the robustness and efficiency of visual-based retrieval methods** is crucial, especially for handling high-resolution images and complex layouts.  This could involve exploring more efficient visual embedding techniques, such as those that leverage sparse representations or attention mechanisms.  **Addressing the challenges of cross-modal information fusion** remains essential; developing sophisticated models capable of seamlessly integrating textual and visual cues, and handling the inherent heterogeneity of information formats is vital.   **Developing more sophisticated evaluation metrics** that account for the nuances of long documents and multi-modal data are also needed.  Current benchmarks are often limited, and improvements would facilitate more accurate assessment of retrieval performance.  Finally, expanding existing benchmarks and datasets to include a wider range of document types and domains would be highly beneficial, as would the incorporation of more diverse and complex question types in evaluating system performance.  **The development of effective and reliable techniques for handling noisy or incomplete multi-modal data** will also be crucial for improving the scalability and practicality of multi-modal document retrieval.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.08828/x2.png)

> 🔼 This figure shows a comparison of the area occupied by different modalities (text, images, tables) within documents from the MMLongBench-Doc benchmark.  The first bar chart presents the overall distribution across all document types in the benchmark. The subsequent bar charts break down this area distribution for each individual document domain (Research Report, Administration & Industry, etc.) included in the MMLongBench-Doc dataset. This visualization highlights the prevalence of non-textual content (images and tables) in many document types and the variability across different domains. Note that the calculations exclude white spaces, headers, and footers to focus on the actual content area.
> <details>
> <summary>read the caption</summary>
> Figure 2. Area ratio of different modalities (1) in overall and (2) by domains in MMLongBench-Doc benchmark (Ma et al., 2024b). Note that the white spaces, headers, and footers are removed from the area counting.
> </details>



![](https://arxiv.org/html/2501.08828/x3.png)

> 🔼 This figure presents a comparative analysis of the average word length and word length distribution for OCR-extracted text and VLM-generated text from tables and figures within the MMDocIR dataset.  The subfigure (a) shows a bar chart comparing the average word length for OCR text versus VLM text in tables and images separately. Subfigure (b) displays the distribution of word lengths as histograms for both OCR and VLM text in tables and images.
> <details>
> <summary>read the caption</summary>
> (a) Avg word length
> </details>



![](https://arxiv.org/html/2501.08828/x4.png)

> 🔼 The figure shows the distribution density of word lengths for OCR and VLM texts extracted from tables and images within the MMDocIR dataset.  It illustrates the difference in word length characteristics between the raw text from OCR and the more descriptive text generated by a Vision Language Model (VLM).  The VLM text is considerably longer than the OCR text, especially for images.
> <details>
> <summary>read the caption</summary>
> (b) Distribution density of word length
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.08828/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08828/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}