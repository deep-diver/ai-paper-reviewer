---
title: "KITAB-Bench: A Comprehensive Multi-Domain Benchmark for Arabic OCR and Document Understanding"
summary: "KITAB-Bench: A new multi-domain Arabic OCR benchmark to bridge the performance gap with English OCR technologies."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 MBZUAI",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14949 {{< /keyword >}}
{{< keyword icon="writer" >}} Ahmed Heakl et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14949" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14949" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14949/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Optical Character Recognition (OCR) for Arabic lags behind English OCR due to challenges like cursive script, right-to-left text, complex typography. Current Arabic OCR datasets lack comprehensive coverage and advanced document processing challenges such as table parsing, font detection, and numeral recognition. There is a need for a comprehensive framework to evaluate and compare Arabic OCR solutions by offering diverse document types and evaluation tasks to facilitate in-depth assessments of modern OCR systems.



This paper introduces **KITAB-Bench, a comprehensive Arabic OCR benchmark** spanning 9 domains and 36 sub-domains. The framework evaluates layout detection, multi-format recognition, and structured output generation. It facilitates in-depth assessments of modern OCR systems. The contributions include a comprehensive Arabic OCR benchmark covering multiple document types and recognition tasks, detailed evaluation metrics, baseline results for OCR systems and VLMs, and a standardized framework for comparing Arabic OCR systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KITAB-Bench, a new Arabic OCR benchmark, comprises 8,809 samples across 9 domains and 36 sub-domains, encompassing diverse document types. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Modern vision-language models outperform traditional OCR approaches by an average of 60% in Character Error Rate (CER). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Significant limitations of current Arabic OCR models are highlighted, particularly in PDF-to-Markdown conversion. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces KITAB-Bench, **a new Arabic OCR benchmark**, addressing current gaps and limitations. It provides a **rigorous evaluation framework** to drive improvements in Arabic document analysis methods, bridging the performance gap with English OCR tech.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14949/x3.png)

> 🔼 Figure 1 provides a visual representation of the KITAB-Bench benchmark's structure.  It illustrates the nine core domains and 36 sub-domains included in the benchmark. The domains cover key tasks in Arabic document understanding, such as OCR, chart-to-JSON conversion, and table recognition.  The sub-domains further specify the types of documents and data used within each domain (e.g., handwritten text, scanned text, various chart types).  KITAB-Bench's goal is to offer a comprehensive evaluation of Arabic document processing and analysis systems, enabling researchers to assess the performance of their methods across a diverse range of document formats and complexity levels.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the core domains and sub-domains in KITAB-Bench. Our benchmark spans nine major domains (e.g., OCR, charts to JSON, table recognition) and 36 sub-domains (e.g., scanned text, handwritten text, various chart types), providing a comprehensive evaluation framework for modern Arabic document processing and analysis.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.2">
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.3.1">Domain/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1">EXAMS-V<sup class="ltx_sup" id="S1.T1.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S1.T1.1.1.1.1.1.1.1">∗</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.4.1">Camel-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.2.1">MIDAD<sup class="ltx_sup" id="S1.T1.2.2.2.2.1.1"><span class="ltx_text ltx_font_medium" id="S1.T1.2.2.2.2.1.1.1">†</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.5.1">KHATT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.6.1">KITAB-</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.3">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.3.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.1.1">Characteristics</span></td>
<td class="ltx_td" id="S1.T1.2.2.3.2"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.3.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.3.1">Bench</span></td>
<td class="ltx_td" id="S1.T1.2.2.3.4"></td>
<td class="ltx_td" id="S1.T1.2.2.3.5"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.3.6"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.6.1">Bench (Ours)</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.4.1">PDF to Markdown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4.2"><span class="ltx_text" id="S1.T1.2.2.4.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4.3"><span class="ltx_text" id="S1.T1.2.2.4.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4.4"><span class="ltx_text" id="S1.T1.2.2.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4.5"><span class="ltx_text" id="S1.T1.2.2.4.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.4.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.4.6.1.1"><span class="ltx_text" id="S1.T1.2.2.4.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.5">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.5.1">Layout Detection</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.5.2"><span class="ltx_text" id="S1.T1.2.2.5.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.5.3"><span class="ltx_text" id="S1.T1.2.2.5.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.5.4"><span class="ltx_text" id="S1.T1.2.2.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.5.5"><span class="ltx_text" id="S1.T1.2.2.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.5.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.5.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.5.6.1.1"><span class="ltx_text" id="S1.T1.2.2.5.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.6">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.6.1">Line Detection</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.6.2"><span class="ltx_text" id="S1.T1.2.2.6.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.6.3"><span class="ltx_text" id="S1.T1.2.2.6.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.6.4"><span class="ltx_text" id="S1.T1.2.2.6.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.6.5"><span class="ltx_text" id="S1.T1.2.2.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.6.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.6.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.6.6.1.1"><span class="ltx_text" id="S1.T1.2.2.6.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.7">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.7.1">Line Recognition</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.7.2"><span class="ltx_text" id="S1.T1.2.2.7.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.7.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.7.3.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.7.3.1.1"><span class="ltx_text" id="S1.T1.2.2.7.3.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.7.4"><span class="ltx_text" id="S1.T1.2.2.7.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.7.5"><span class="ltx_text" id="S1.T1.2.2.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.7.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.7.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.7.6.1.1"><span class="ltx_text" id="S1.T1.2.2.7.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.8">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.8.1">Table Recognition</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.8.2"><span class="ltx_text" id="S1.T1.2.2.8.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.8.3"><span class="ltx_text" id="S1.T1.2.2.8.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.8.4"><span class="ltx_text" id="S1.T1.2.2.8.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.8.5"><span class="ltx_text" id="S1.T1.2.2.8.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.8.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.8.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.8.6.1.1"><span class="ltx_text" id="S1.T1.2.2.8.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.9">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.9.1">Image to Text</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.9.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.9.2.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.9.2.1.1"><span class="ltx_text" id="S1.T1.2.2.9.2.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.9.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.9.3.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.9.3.1.1"><span class="ltx_text" id="S1.T1.2.2.9.3.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.9.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.9.4.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.9.4.1.1"><span class="ltx_text" id="S1.T1.2.2.9.4.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.9.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.9.5.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.9.5.1.1"><span class="ltx_text" id="S1.T1.2.2.9.5.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.9.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.9.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.9.6.1.1"><span class="ltx_text" id="S1.T1.2.2.9.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.10">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.10.1">Charts to JSON</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.10.2"><span class="ltx_text" id="S1.T1.2.2.10.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.10.3"><span class="ltx_text" id="S1.T1.2.2.10.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.10.4"><span class="ltx_text" id="S1.T1.2.2.10.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.10.5"><span class="ltx_text" id="S1.T1.2.2.10.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.10.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.10.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.10.6.1.1"><span class="ltx_text" id="S1.T1.2.2.10.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.11">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.11.1">Diagram to Code</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.11.2"><span class="ltx_text" id="S1.T1.2.2.11.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.11.3"><span class="ltx_text" id="S1.T1.2.2.11.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.11.4"><span class="ltx_text" id="S1.T1.2.2.11.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.11.5"><span class="ltx_text" id="S1.T1.2.2.11.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.11.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.11.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.11.6.1.1"><span class="ltx_text" id="S1.T1.2.2.11.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.12">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.12.1">VQA</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.12.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.12.2.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.12.2.1.1"><span class="ltx_text" id="S1.T1.2.2.12.2.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.12.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.12.3.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.12.3.1.1"><span class="ltx_text" id="S1.T1.2.2.12.3.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.12.4"><span class="ltx_text" id="S1.T1.2.2.12.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.12.5"><span class="ltx_text" id="S1.T1.2.2.12.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.12.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.12.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.12.6.1.1"><span class="ltx_text" id="S1.T1.2.2.12.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.13">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.13.1">Handwritten Samples</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.13.2"><span class="ltx_text" id="S1.T1.2.2.13.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.13.3"><span class="ltx_text" id="S1.T1.2.2.13.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.13.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.13.4.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.13.4.1.1"><span class="ltx_text" id="S1.T1.2.2.13.4.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.13.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.13.5.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.13.5.1.1"><span class="ltx_text" id="S1.T1.2.2.13.5.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.13.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.13.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.13.6.1.1"><span class="ltx_text" id="S1.T1.2.2.13.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.14">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.14.1">Open Source</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.14.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.14.2.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.14.2.1.1"><span class="ltx_text" id="S1.T1.2.2.14.2.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.14.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.14.3.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.14.3.1.1"><span class="ltx_text" id="S1.T1.2.2.14.3.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.14.4"><span class="ltx_text" id="S1.T1.2.2.14.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.14.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.14.5.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.14.5.1.1"><span class="ltx_text" id="S1.T1.2.2.14.5.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.14.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.14.6.1" style="width:8.3pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1.0,1.0) ;">
<p class="ltx_p" id="S1.T1.2.2.14.6.1.1"><span class="ltx_text" id="S1.T1.2.2.14.6.1.1.1" style="color:#008000;">✓</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.15">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S1.T1.2.2.15.1">Total Samples (#)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.2.15.2">823</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.2.15.3">3,004</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.2.15.4">29,435</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.2.15.5">5,000</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.2.2.15.6">8,809</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares several Arabic OCR benchmarks across different domains, including the newly proposed KITAB-Bench.  It highlights the number of samples, the domains covered (such as PDF to Markdown conversion, layout detection, table recognition, etc.), and the specific characteristics of each benchmark, pointing out which benchmarks only consider Arabic samples or use only the test sets for their evaluations.  This comparison helps to showcase the comprehensiveness and unique features of KITAB-Bench in relation to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Arabic OCR Benchmarks Across Different Domains. Benchmarks compared: LaraBench Abdelali et al. (2023), CamelBench Ghaboura et al. (2024), MIDAD Bhatia et al. (2024), KHATT Mahmoud et al. (2014), and KITAB-Bench (Ours). (∗*∗: Only the Arabic samples are considered.) (††\dagger†: The test set of the dataset is considered.)
> </details>





### In-depth insights


#### Arabic OCR Bench
**KITAB-Bench** is a comprehensive Arabic OCR benchmark addressing the gaps in the current evaluation system. It comprises **8,809 samples** across **9 major domains** and **36 sub-domains**, encompassing diverse document types, including handwritten text, structured tables, and specialized coverage of 21 chart types. The findings highlight the significant limitations of current Arabic OCR models, particularly in PDF-to-Markdown conversion. This OCR enables conversion of physical documents into machine-readable text & databases for effective knowledge retrieval. The dataset combines existing data, manual annotation, and LLM-assisted synthetic data generation to represent a comprehensive & diverse challenge for Arabic OCR and document understanding systems.

#### KITAB-Bench Details
The research paper introduces **KITAB-Bench**, a novel and comprehensive benchmark specifically designed for Arabic Optical Character Recognition (OCR) and document understanding.  KITAB-Bench addresses a significant gap in existing evaluation systems, which often lack the depth and breadth required to accurately assess the challenges inherent in Arabic text processing, such as **cursive script, right-to-left orientation, and complex typography**. It includes a wide array of document types across various domains, ensuring a robust evaluation of OCR systems. **Key areas of focus include layout detection, table recognition, chart understanding, and handwritten text recognition**, going beyond basic text extraction to assess higher-level document understanding capabilities, paving the path towards bridging the gap between English and Arabic OCR technologies. The **KITAB-Bench comprises of manually curated samples and real time data**

#### LLM Data Assist
**LLM (Large Language Model) Data Assistance** focuses on leveraging the capabilities of LLMs to streamline and enhance data-related processes. This involves using LLMs for data augmentation, where the model generates additional data points to enrich existing datasets, particularly useful when dealing with limited or sparse information. LLMs can also play a crucial role in data cleaning and validation, identifying and correcting errors or inconsistencies in the data, thereby improving its quality and reliability. **The application extends to data labeling and annotation**, where LLMs automatically assign labels to data entries, reducing the need for manual effort and accelerating the preparation of data for machine learning tasks. Furthermore, LLMs can assist in data summarization, extracting key insights and generating concise summaries from large volumes of data, facilitating efficient information retrieval and decision-making. The utilization of LLMs in data assistance presents a paradigm shift, enabling more efficient, accurate, and scalable data management and analysis.

#### End-to-End PDF
The end-to-end PDF evaluation task is crucial because it assesses the entire document processing pipeline, from initial PDF input to final structured output like Markdown. This is more complex than evaluating individual components like OCR or table detection in isolation. Performance in end-to-end PDF processing highlights the challenges of integrating various modules, such as layout analysis, text recognition, and structural understanding. **Closed-source models generally show superior end-to-end PDF results due to optimized integration.** Framework approaches often exhibit better stability, achieving higher scores than open-source models by bridging the gap with complete processing tasks. The difference in these models reveal the level of task difficulty.

#### Future Arabic VLMs
Arabic VLMs have significant potential for future development. **Expanding datasets** to include historical manuscripts and low-resource dialects is essential. **Improved OCR accuracy**, especially for tables and charts, will enhance data extraction. Future research should focus on **developing robust multimodal OCR** capable of processing text and images in Arabic, paving the way for advanced document analysis and understanding. Key areas to explore include dataset expansion, novel evaluation metrics, and innovative deep learning techniques, ultimately promoting **cross-lingual OCR innovations**. The goal is to reduce reliance on proprietary AI models and improve access to information.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14949/x4.png)

> 🔼 Figure 2 presents a comprehensive overview of the eight key tasks included in the KITAB-Bench benchmark.  Each task is visually represented with an example of its input and corresponding output. The tasks cover various aspects of Arabic document understanding, including table recognition (extracting structured data from tables), chart understanding (converting charts into dataframes), text recognition (converting images of text into machine-readable text), diagram analysis (converting diagrams to JSON), visual question answering (VQA), line detection (identifying and bounding lines in documents), layout analysis (detecting the layout structure of a document), and PDF-to-Markdown conversion (converting a PDF document into a Markdown format). This figure provides a visual summary of the types of data and the transformations involved in each task within the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of different tasks in our benchmark: Eight key components illustrating the task inputs and outputs for table recognition, chart understanding, text recognition, diagram analysis, VQA, line detection, layout analysis, and PDF-to-Markdown conversion, complete with input/output examples for each task.
> </details>



![](https://arxiv.org/html/2502.14949/x5.png)

> 🔼 This figure displays a comparison of various model performances across four key document understanding tasks: Table Recognition, Image to Text, Diagram to JSON, and Layout Detection.  It showcases both successful and unsuccessful examples for each task, using Arabic benchmark data. Models compared include Ground Truth, EasyOCR, GPT-4, Qwen, Surya, Tesseract, Yolo, and DETR. This provides a visual representation of the strengths and weaknesses of each model in handling different aspects of Arabic document understanding, highlighting the challenges presented by the language's unique characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of model performance across four document understanding tasks (Table Recognition, Image to Text, Diagram to JSON, and Layout Detection) showing successful and failed cases for different models including Ground Truth, EasyOCR, GPT-4, Qwen, Surya, Tesseract, Yolo, and DETR on Arabic document benchmark data.
> </details>



![](https://arxiv.org/html/2502.14949/x6.png)

> 🔼 This figure illustrates the five-stage pipeline used to generate synthetic data for charts and diagrams.  The process begins with Large Language Models (LLMs) generating relevant topics.  These topics then inform the generation of raw data by the LLMs. Next, the LLMs create code to visualize this data. This code is then used to render the charts and diagrams. Finally, human evaluators assess the quality of the generated content, ensuring accuracy and adherence to Arabic linguistic conventions. This iterative process ensures high-quality synthetic data for the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 4: Synthetic Data Generation Pipeline: A 5-stage process using LLMs to generate topics, create raw data, produce visualization code, render charts, and perform human evaluation for quality control.
> </details>



![](https://arxiv.org/html/2502.14949/x7.png)

> 🔼 Figure 5 displays example prompts used in the KITAB-Bench benchmark for different task categories.  Each prompt is designed to guide an LLM or other model toward a specific output format, ensuring consistent and comparable results across various tasks. The prompts cover detailed instructions on expected output formats, specify the language (Arabic), and address potential ambiguities to minimize human bias in the evaluation process.  The showcased prompts include examples for Chart Type, Chart Topic, Chart Data, PDF to Markdown conversion, OCR, Diagram Type, Diagram Topic, and Diagram Data, as well as Table and Table Data. The prompts are meticulously structured to evaluate different aspects of Arabic document understanding such as visual recognition (charts, diagrams, tables) and text extraction/conversion, highlighting the complexity and nuance required for accurate evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Prompts for Different Task Categories.
> </details>



![](https://arxiv.org/html/2502.14949/x8.png)

> 🔼 Figure 6 shows example prompts used in the KITAB-Bench benchmark dataset for evaluating diagram and table understanding tasks.  The prompts are designed to guide large language models (LLMs) in generating structured data outputs (JSON for diagrams, CSV and HTML for tables). Each prompt specifies the desired output format and includes instructions for ensuring consistency and accuracy.  The goal is to test the ability of LLMs to correctly interpret diagram and table information and generate machine-readable representations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompts for Diagrams and Tables.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.1">
<tr class="ltx_tr" id="S2.T2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.1.1.1">
<span class="ltx_p" id="S2.T2.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.1.1">Domain</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S2.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.1">Total Samples</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.2.1.1">
<span class="ltx_p" id="S2.T2.1.2.1.1.1" style="width:113.8pt;">PDF to Markdown</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S2.T2.1.2.2">33</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.3.1.1">
<span class="ltx_p" id="S2.T2.1.3.1.1.1" style="width:113.8pt;">Layout</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.3.2">2,100</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.4.1.1">
<span class="ltx_p" id="S2.T2.1.4.1.1.1" style="width:113.8pt;">Line Detection</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.4.2">378</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.5.1.1">
<span class="ltx_p" id="S2.T2.1.5.1.1.1" style="width:113.8pt;">Line Recognition</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.5.2">378</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.6.1.1">
<span class="ltx_p" id="S2.T2.1.6.1.1.1" style="width:113.8pt;">Table Recognition</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.6.2">456</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.7.1.1">
<span class="ltx_p" id="S2.T2.1.7.1.1.1" style="width:113.8pt;">Image to Text</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.7.2">3,760</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.8.1.1">
<span class="ltx_p" id="S2.T2.1.8.1.1.1" style="width:113.8pt;">Charts to DataFrame</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.8.2">576</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.9.1.1">
<span class="ltx_p" id="S2.T2.1.9.1.1.1" style="width:113.8pt;">Diagram to Json</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.9.2">226</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T2.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.10.1.1">
<span class="ltx_p" id="S2.T2.1.10.1.1.1" style="width:113.8pt;">VQA</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.10.2">902</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T2.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.11.1.1">
<span class="ltx_p" id="S2.T2.1.11.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.1.11.1.1.1.1">Total</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S2.T2.1.11.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.11.2.1">8,809</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of samples across various domains within the KITAB-Bench dataset.  It shows the total number of samples for each of the nine main domains (PDF to Markdown, Layout Detection, Line Detection, Line Recognition, Table Recognition, Image to Text, Charts to DataFrame, Diagram to JSON, VQA).  A more detailed breakdown of the sample counts for the 36 sub-domains and their respective data sources is available in Appendix A of the paper. This table provides a high-level overview of the dataset's composition and its coverage across different document understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of samples across different domains in our dataset. A more detailed count for different sub-domains and data sources is in Appendix A.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.1.1">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.1.1" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.1.2" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.2.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.3" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.3.1">Surya</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.4" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.4.1">Tesseract</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.5" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.5.1">EasyOCR</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.2.1" rowspan="2" style="padding:-0.5pt 3.2pt;"><span class="ltx_text" id="S3.T3.1.1.2.1.1">Detection</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.2.2" style="padding:-0.5pt 3.2pt;">mAP@50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.3" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.3.1">79.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.4" style="padding:-0.5pt 3.2pt;">46.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.5" style="padding:-0.5pt 3.2pt;">68.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.3.1" style="padding:-0.5pt 3.2pt;">mAP@0.5:0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.2" style="padding:-0.5pt 3.2pt;">27.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.3" style="padding:-0.5pt 3.2pt;">14.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.4" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.4.1">32.74</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T3.1.1.4.1" rowspan="2" style="padding:-0.5pt 3.2pt;"><span class="ltx_text" id="S3.T3.1.1.4.1.1">Recognition</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.4.2" style="padding:-0.5pt 3.2pt;">WER</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3" style="padding:-0.5pt 3.2pt;">1.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.4" style="padding:-0.5pt 3.2pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.5" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.4.5.1">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.5.1" style="padding:-0.5pt 3.2pt;">CER</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.5.2" style="padding:-0.5pt 3.2pt;">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.5.3" style="padding:-0.5pt 3.2pt;">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.5.4" style="padding:-0.5pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.1">0.20</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various models on line detection and recognition tasks within the KITAB-Bench benchmark.  It shows the results using metrics like mean Average Precision (mAP) at different Intersection over Union (IoU) thresholds for line detection, and Word Error Rate (WER) and Character Error Rate (CER) for line recognition.  The models evaluated include both traditional OCR systems (like Surya, Tesseract, and EasyOCR) and more modern, advanced models. The results highlight the relative strengths and weaknesses of different model architectures on this specific task within the Arabic script context.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of different models on Line Detection and Line Recognition Task on our Benchmark
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T4.1.1.2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.1">Surya</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.1">Yolo-doc-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.1">Detr</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td" id="S4.T4.1.2.1" style="padding:0.5pt 2.5pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T4.1.2.2" style="padding:0.5pt 2.5pt;"></td>
<td class="ltx_td" id="S4.T4.1.2.3" style="padding:0.5pt 2.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.4.1">laynet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.5.1">(docling)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.3.1" rowspan="5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.3.1.1">BCE</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.3.2" style="padding:0.5pt 2.5pt;">mAP@0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.3" style="padding:0.5pt 2.5pt;">0.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.4" style="padding:0.5pt 2.5pt;">0.470</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.5.1">0.750</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.4.1" style="padding:0.5pt 2.5pt;">mAP@0.5:0.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.2" style="padding:0.5pt 2.5pt;">0.381</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3" style="padding:0.5pt 2.5pt;">0.369</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.4.4.1">0.566</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.5.1" style="padding:0.5pt 2.5pt;">Precision</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.5.2.1">0.751</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.3" style="padding:0.5pt 2.5pt;">0.608</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4" style="padding:0.5pt 2.5pt;">0.626</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.6.1" style="padding:0.5pt 2.5pt;">Recall</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.2" style="padding:0.5pt 2.5pt;">0.593</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.3" style="padding:0.5pt 2.5pt;">0.592</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.4.1">0.725</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.7.1" style="padding:0.5pt 2.5pt;">F1 Score</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.2" style="padding:0.5pt 2.5pt;">0.635</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.3" style="padding:0.5pt 2.5pt;">0.585</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.7.4.1">0.654</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.1.8.1" rowspan="5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.8.1.1">DocLayNet</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.1.8.2" style="padding:0.5pt 2.5pt;">mAP@0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.3" style="padding:0.5pt 2.5pt;">0.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.4" style="padding:0.5pt 2.5pt;">0.404</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.8.5.1">0.758</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.9.1" style="padding:0.5pt 2.5pt;">mAP@0.5:0.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.2" style="padding:0.5pt 2.5pt;">0.469</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.3" style="padding:0.5pt 2.5pt;">0.335</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.9.4.1">0.541</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.10.1" style="padding:0.5pt 2.5pt;">Precision</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.10.2.1">0.782</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.3" style="padding:0.5pt 2.5pt;">0.527</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.4" style="padding:0.5pt 2.5pt;">0.635</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.11.1" style="padding:0.5pt 2.5pt;">Recall</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.2" style="padding:0.5pt 2.5pt;">0.856</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.3" style="padding:0.5pt 2.5pt;">0.503</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.11.4.1">0.770</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.1.12.1" style="padding:0.5pt 2.5pt;">F1 Score</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.12.2" style="padding:0.5pt 2.5pt;">0.799</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.12.3" style="padding:0.5pt 2.5pt;">0.499</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.12.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.12.4.1">0.670</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different layout detection models.  The models are evaluated using several metrics, including mAP@0.5, mAP@0.5:0.95, precision, recall, and F1 score. These metrics are calculated on two different datasets: BCE and DocLayNet. The results allow for a quantitative comparison of the effectiveness of various layout detection approaches.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of layout detection models using different evaluation metrics
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.22">
<tr class="ltx_tr" id="S4.T5.22.23">
<td class="ltx_td ltx_border_tt" id="S4.T5.22.23.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T5.22.23.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.22.23.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.23.3.1">Table Extraction</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.22.23.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.23.4.1">End-to-End PDF</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.24">
<td class="ltx_td ltx_align_left" id="S4.T5.22.24.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.1.1">Model Group</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.22.24.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.2.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.24.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.3.1">TEDS (HTML)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.24.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.4.1">Jaccard (CSV)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.24.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.5.1">CHrF (Text)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.24.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.6.1">TEDS (Table)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.24.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.24.7.1">MARS</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.22.25.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.22.25.1.1"><span class="ltx_text" id="S4.T5.22.25.1.1.1"></span><span class="ltx_text" id="S4.T5.22.25.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.22.25.1.1.2.1">
<span class="ltx_tr" id="S4.T5.22.25.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T5.22.25.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Closed</span></span>
</span></span> <span class="ltx_text" id="S4.T5.22.25.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.22.25.2" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.25.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.25.3.1">85.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.25.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.25.4.1">66.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.25.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.25.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.25.6.1">60.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.25.7" style="padding-left:4.0pt;padding-right:4.0pt;">65.12</td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.26">
<td class="ltx_td ltx_align_left" id="S4.T5.22.26.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.26.2" style="padding-left:4.0pt;padding-right:4.0pt;">69.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.26.3" style="padding-left:4.0pt;padding-right:4.0pt;">49.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.26.4" style="padding-left:4.0pt;padding-right:4.0pt;">56.59</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.26.5" style="padding-left:4.0pt;padding-right:4.0pt;">52.69</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.26.6" style="padding-left:4.0pt;padding-right:4.0pt;">54.64</td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.27">
<td class="ltx_td ltx_align_left" id="S4.T5.22.27.1" style="padding-left:4.0pt;padding-right:4.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.27.2" style="padding-left:4.0pt;padding-right:4.0pt;">83.08</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.27.3" style="padding-left:4.0pt;padding-right:4.0pt;">65.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.27.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.27.4.1">75.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.27.5" style="padding-left:4.0pt;padding-right:4.0pt;">55.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.27.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.22.27.6.1">65.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.28">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.22.28.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.22.28.1.1"><span class="ltx_text" id="S4.T5.22.28.1.1.1"></span><span class="ltx_text" id="S4.T5.22.28.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.22.28.1.1.2.1">
<span class="ltx_tr" id="S4.T5.22.28.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T5.22.28.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Open</span></span>
</span></span> <span class="ltx_text" id="S4.T5.22.28.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.22.28.2" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.28.3" style="padding-left:4.0pt;padding-right:4.0pt;">57.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.28.4" style="padding-left:4.0pt;padding-right:4.0pt;">40.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.28.5" style="padding-left:4.0pt;padding-right:4.0pt;">40.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.28.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.22.28.7" style="padding-left:4.0pt;padding-right:4.0pt;">21.42</td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.29">
<td class="ltx_td ltx_align_left" id="S4.T5.22.29.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2.5-VL-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.29.2" style="padding-left:4.0pt;padding-right:4.0pt;">59.31</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.29.3" style="padding-left:4.0pt;padding-right:4.0pt;">59.58</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.29.4" style="padding-left:4.0pt;padding-right:4.0pt;">69.21</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.29.5" style="padding-left:4.0pt;padding-right:4.0pt;">11.65</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.29.6" style="padding-left:4.0pt;padding-right:4.0pt;">40.43</td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.30">
<td class="ltx_td ltx_align_left" id="S4.T5.22.30.1" style="padding-left:4.0pt;padding-right:4.0pt;">AIN-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.30.2" style="padding-left:4.0pt;padding-right:4.0pt;">75.94</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.30.3" style="padding-left:4.0pt;padding-right:4.0pt;">64.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.30.4" style="padding-left:4.0pt;padding-right:4.0pt;">56.52</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.30.5" style="padding-left:4.0pt;padding-right:4.0pt;">49.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.22.30.6" style="padding-left:4.0pt;padding-right:4.0pt;">52.92</td>
</tr>
<tr class="ltx_tr" id="S4.T5.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.7.7.8" rowspan="3" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.7.7.8.1"><span class="ltx_text" id="S4.T5.7.7.8.1.1"></span><span class="ltx_text" id="S4.T5.7.7.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.7.7.8.1.2.1">
<span class="ltx_tr" id="S4.T5.7.7.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T5.7.7.8.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Framework</span></span>
</span></span> <span class="ltx_text" id="S4.T5.7.7.8.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.7.7.9" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">Tesseract</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.2.2.2.3"></span> <span class="ltx_text" id="S4.T5.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.2.2.2.2">
<span class="ltx_tr" id="S4.T5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">28.23<sup class="ltx_sup" id="S4.T5.1.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.1.1.1.1.1.1.1.1.1">D</span></sup></span></span>
<span class="ltx_tr" id="S4.T5.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.2.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">38.64<sup class="ltx_sup" id="S4.T5.2.2.2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.2.2.2.2.2.2.1.1.1">I</span></sup></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.2.2.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.4.4.4.3"></span> <span class="ltx_text" id="S4.T5.4.4.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.4.4.4.2.2">
<span class="ltx_tr" id="S4.T5.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.3.3.3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">14.85<sup class="ltx_sup" id="S4.T5.3.3.3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.3.1.1.1.1.1.1">D</span></sup></span></span>
<span class="ltx_tr" id="S4.T5.4.4.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.4.4.4.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">16.04<sup class="ltx_sup" id="S4.T5.4.4.4.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.4.4.4.2.2.2.1.1.1">I</span></sup></span></span>
</span></span><span class="ltx_text" id="S4.T5.4.4.4.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.5" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">59.91<sup class="ltx_sup" id="S4.T5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S4.T5.5.5.5.1.1">D</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">45.44<sup class="ltx_sup" id="S4.T5.6.6.6.1"><span class="ltx_text ltx_font_italic" id="S4.T5.6.6.6.1.1">D</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.7.7.7" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">52.68<sup class="ltx_sup" id="S4.T5.7.7.7.1"><span class="ltx_text ltx_font_italic" id="S4.T5.7.7.7.1.1">D</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.14">
<td class="ltx_td ltx_align_left" id="S4.T5.14.14.8" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">EasyOCR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.2" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.9.9.2.3"></span> <span class="ltx_text" id="S4.T5.9.9.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.9.9.2.2.2">
<span class="ltx_tr" id="S4.T5.8.8.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.8.8.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">49.10<sup class="ltx_sup" id="S4.T5.8.8.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.8.8.1.1.1.1.1.1.1">D</span></sup></span></span>
<span class="ltx_tr" id="S4.T5.9.9.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.9.9.2.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">39.09<sup class="ltx_sup" id="S4.T5.9.9.2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.9.9.2.2.2.2.1.1.1">I</span></sup></span></span>
</span></span><span class="ltx_text" id="S4.T5.9.9.2.4"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.11.4" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.11.11.4.3"></span> <span class="ltx_text" id="S4.T5.11.11.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.11.11.4.2.2">
<span class="ltx_tr" id="S4.T5.10.10.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.10.10.3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">23.83<sup class="ltx_sup" id="S4.T5.10.10.3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.10.10.3.1.1.1.1.1.1">D</span></sup></span></span>
<span class="ltx_tr" id="S4.T5.11.11.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.11.11.4.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">17.88<sup class="ltx_sup" id="S4.T5.11.11.4.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.11.11.4.2.2.2.1.1.1">I</span></sup></span></span>
</span></span><span class="ltx_text" id="S4.T5.11.11.4.4"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.12.5" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">57.46<sup class="ltx_sup" id="S4.T5.12.12.5.1"><span class="ltx_text ltx_font_italic" id="S4.T5.12.12.5.1.1">D</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.13.13.6" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">51.12<sup class="ltx_sup" id="S4.T5.13.13.6.1"><span class="ltx_text ltx_font_italic" id="S4.T5.13.13.6.1.1">D</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.7" style="padding-bottom:3.0pt;padding-left:4.0pt;padding-right:4.0pt;">54.29<sup class="ltx_sup" id="S4.T5.14.14.7.1"><span class="ltx_text ltx_font_italic" id="S4.T5.14.14.7.1.1">D</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.19.19">
<td class="ltx_td ltx_align_left" id="S4.T5.19.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">Surya</td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">50.15<sup class="ltx_sup" id="S4.T5.15.15.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.15.15.1.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">70.42<sup class="ltx_sup" id="S4.T5.16.16.2.1"><span class="ltx_text ltx_font_italic" id="S4.T5.16.16.2.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.17.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">58.38<sup class="ltx_sup" id="S4.T5.17.17.3.1"><span class="ltx_text ltx_font_italic" id="S4.T5.17.17.3.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">44.29<sup class="ltx_sup" id="S4.T5.18.18.4.1"><span class="ltx_text ltx_font_italic" id="S4.T5.18.18.4.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.19.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">51.34<sup class="ltx_sup" id="S4.T5.19.19.5.1"><span class="ltx_text ltx_font_italic" id="S4.T5.19.19.5.1.1">M</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.22.22">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="7" id="S4.T5.22.22.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<sup class="ltx_sup" id="S4.T5.22.22.3.1"><span class="ltx_text ltx_font_italic" id="S4.T5.22.22.3.1.1">D</span></sup>Docling <cite class="ltx_cite ltx_citemacro_cite">Auer et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib4" title="">2024</a>)</cite> pipeline  <sup class="ltx_sup" id="S4.T5.22.22.3.2"><span class="ltx_text ltx_font_italic" id="S4.T5.22.22.3.2.1">I</span></sup>Img2Table <cite class="ltx_cite ltx_citemacro_cite">Cattan (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib9" title="">2021</a>)</cite> pipeline  <sup class="ltx_sup" id="S4.T5.22.22.3.3"><span class="ltx_text ltx_font_italic" id="S4.T5.22.22.3.3.1">M</span></sup>Marker <cite class="ltx_cite ltx_citemacro_cite">Paruchuri (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib36" title="">2024a</a>)</cite> pipeline</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various models on two key tasks: table extraction and end-to-end PDF-to-Markdown conversion.  It showcases the capabilities of different models (including closed-source models like GPT-4 and open-source alternatives) in accurately extracting tabular data from documents and converting PDFs into Markdown format. The metrics used allow for a comprehensive evaluation of the models' abilities in both tasks, highlighting the strengths and weaknesses of each model.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of different models for table extraction and end-to-end PDF to markdown conversion tasks on our benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.3.3">
<tr class="ltx_tr" id="S4.T6.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.3.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.4.1">Group</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.3.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.5.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1">CHrF <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.2.1">CER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.2.1.m1.1a"><mo id="S4.T6.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.1.m1.1b"><ci id="S4.T6.2.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.3.1">WER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.3.1.m1.1b"><ci id="S4.T6.3.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.3.3.4.1" rowspan="3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.3.3.4.1.1"><span class="ltx_text" id="S4.T6.3.3.4.1.1.1"></span><span class="ltx_text" id="S4.T6.3.3.4.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.3.3.4.1.1.2.1">
<span class="ltx_tr" id="S4.T6.3.3.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.3.3.4.1.1.2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Closed</span></span>
</span></span> <span class="ltx_text" id="S4.T6.3.3.4.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.3.3.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">61.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.4.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.55</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.5">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">47.21</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.71</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.6">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.2" style="padding-left:5.0pt;padding-right:5.0pt;">77.95</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.6.3.1">0.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.32</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.3.3.7.1" rowspan="3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.3.3.7.1.1"><span class="ltx_text" id="S4.T6.3.3.7.1.1.1"></span><span class="ltx_text" id="S4.T6.3.3.7.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.3.3.7.1.1.2.1">
<span class="ltx_tr" id="S4.T6.3.3.7.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.3.3.7.1.1.2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Open</span></span>
</span></span> <span class="ltx_text" id="S4.T6.3.3.7.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.3.3.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">Qwen2VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">33.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.7.4" style="padding-left:5.0pt;padding-right:5.0pt;">1.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.7.5" style="padding-left:5.0pt;padding-right:5.0pt;">1.55</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.8">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">Qwen2.5VL-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">49.23</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">1.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">1.41</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.9">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">AIN-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.9.2.1">78.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.9.4.1">0.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T6.3.3.10.1" rowspan="4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.3.3.10.1.1"><span class="ltx_text" id="S4.T6.3.3.10.1.1.1"></span><span class="ltx_text" id="S4.T6.3.3.10.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.3.3.10.1.1.2.1">
<span class="ltx_tr" id="S4.T6.3.3.10.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.3.3.10.1.1.2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Framework</span></span>
</span></span> <span class="ltx_text" id="S4.T6.3.3.10.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.3.3.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">Tesseract</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">39.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.10.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.10.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.84</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.11">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">EasyOCR</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">45.47</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.11.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.89</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.12">
<td class="ltx_td ltx_align_left" id="S4.T6.3.3.12.1" style="padding-left:5.0pt;padding-right:5.0pt;">Paddle</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.12.2" style="padding-left:5.0pt;padding-right:5.0pt;">16.73</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.12.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.12.4" style="padding-left:5.0pt;padding-right:5.0pt;">1.02</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.3.3.13.1" style="padding-left:5.0pt;padding-right:5.0pt;">Surya</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.13.2" style="padding-left:5.0pt;padding-right:5.0pt;">20.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.13.3" style="padding-left:5.0pt;padding-right:5.0pt;">4.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.13.4" style="padding-left:5.0pt;padding-right:5.0pt;">5.61</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed performance comparison of various models on the Image-to-Text task within the KITAB-Bench benchmark.  It compares the performance of closed-source models (GPT-4, GPT-4-mini, Gemini-2.0-Flash) against open-source models (Qwen2-VL-7B, Qwen2.5-VL-7B, AIN-7B), traditional OCR systems (Tesseract, EasyOCR, PaddleOCR, Surya), and includes metrics such as Character Error Rate (CER) and Word Error Rate (WER). The results are broken down across multiple datasets within the benchmark to showcase model performance across diverse text styles and complexity levels.  More detailed results comparing open-source datasets can be found in Appendix B.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison of models for OCR (image to text) tasks on our benchmark. A detailed performance comparison among different open-source dataset is available in Appendix B
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.4.4">
<tr class="ltx_tr" id="S4.T7.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T7.4.4.5.1" rowspan="2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.1.1">Group</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T7.4.4.5.2" rowspan="2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T7.4.4.5.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.3.1">Chart</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.4.5.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.4.1">Diagram</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T7.4.4.5.5" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.5.1">Visual QA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.5" style="padding:1pt 5.0pt;">SCRM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.6" style="padding:1pt 5.0pt;">CharTeX</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.7" style="padding:1pt 5.0pt;">CODM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.1.1.1" style="padding:1pt 5.0pt;">MTVQA<sup class="ltx_sup" id="S4.T7.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.1.1.1.1.1">O</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2.2" style="padding:1pt 5.0pt;">ChartsVQA<sup class="ltx_sup" id="S4.T7.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T7.2.2.2.2.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.3.3" style="padding:1pt 5.0pt;">DiagramsVQA<sup class="ltx_sup" id="S4.T7.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T7.3.3.3.3.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.4" style="padding:1pt 5.0pt;">PATDVQA<sup class="ltx_sup" id="S4.T7.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T7.4.4.4.4.1.1">M</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.8" style="padding:1pt 5.0pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.6.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="S4.T7.4.4.6.1.1">Closed</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.6.2" style="padding:1pt 5.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.3" style="padding:1pt 5.0pt;">68.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.4" style="padding:1pt 5.0pt;">45.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.5" style="padding:1pt 5.0pt;">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.6" style="padding:1pt 5.0pt;">32.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.7" style="padding:1pt 5.0pt;">77.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.8" style="padding:1pt 5.0pt;">85.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.9" style="padding:1pt 5.0pt;">82.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.10" style="padding:1pt 5.0pt;">69.19</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.7">
<td class="ltx_td ltx_align_left" id="S4.T7.4.4.7.1" style="padding:1pt 5.0pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.2" style="padding:1pt 5.0pt;">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.3" style="padding:1pt 5.0pt;">43.33</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.4" style="padding:1pt 5.0pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.5" style="padding:1pt 5.0pt;">26.80</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.6" style="padding:1pt 5.0pt;">58.00</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.7" style="padding:1pt 5.0pt;">83.33</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.8" style="padding:1pt 5.0pt;">80.00</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.9" style="padding:1pt 5.0pt;">62.03</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.8">
<td class="ltx_td ltx_align_left" id="S4.T7.4.4.8.1" style="padding:1pt 5.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.8.2.1">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.8.3.1">56.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.8.4.1">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.5" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.8.5.1">35.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.6" style="padding:1pt 5.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.7" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.8.7.1">88.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.8" style="padding:1pt 5.0pt;">75.50</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.8.9" style="padding:1pt 5.0pt;">67.68</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T7.4.4.9.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="S4.T7.4.4.9.1.1">Open</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.4.4.9.2" style="padding:1pt 5.0pt;">Qwen2-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.3" style="padding:1pt 5.0pt;">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.4" style="padding:1pt 5.0pt;">21.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.5" style="padding:1pt 5.0pt;">63.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.6" style="padding:1pt 5.0pt;">19.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.7" style="padding:1pt 5.0pt;">59.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.8" style="padding:1pt 5.0pt;">82.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.9" style="padding:1pt 5.0pt;">77.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.9.10" style="padding:1pt 5.0pt;">59.61</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.10">
<td class="ltx_td ltx_align_left" id="S4.T7.4.4.10.1" style="padding:1pt 5.0pt;">Qwen2.5-VL-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.2" style="padding:1pt 5.0pt;">36.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.3" style="padding:1pt 5.0pt;">22.08</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.4" style="padding:1pt 5.0pt;">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.5" style="padding:1pt 5.0pt;">23.00</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.6" style="padding:1pt 5.0pt;">74.00</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.7" style="padding:1pt 5.0pt;">79.41</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.8" style="padding:1pt 5.0pt;">74.50</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.10.9" style="padding:1pt 5.0pt;">62.72</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.4.4.11.1" style="padding:1pt 5.0pt;">AIN-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.2" style="padding:1pt 5.0pt;">66.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.3" style="padding:1pt 5.0pt;">34.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.4" style="padding:1pt 5.0pt;">66.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.5" style="padding:1pt 5.0pt;">31.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.6" style="padding:1pt 5.0pt;">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.7" style="padding:1pt 5.0pt;">85.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.8" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.11.8.1">87.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.4.11.9" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.11.9.1">69.69</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various models' performance across three key tasks: chart understanding, diagram parsing, and visual question answering (VQA).  For chart understanding, the models' ability to extract relevant information from charts is evaluated using SCRM and CharTeX metrics.  Diagram parsing assesses the models' capacity to convert diagrams into structured JSON format, measured by CODM. The VQA section evaluates the models' performance on both open-ended and multiple-choice questions using the MTVQA dataset, evaluating their ability to both understand and reason about visual information in Arabic documents. The results provide insights into the strengths and weaknesses of different model types (closed-source vs. open-source) across these tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Model Performance on Chart Understanding, Diagram Parsing, and Visual Question Answering Tasks. For VQA tasks, O𝑂Oitalic_O denotes open-ended question type from MTVQA Tang et al. (2024) dataset and M𝑀Mitalic_M denotes MCQ type questions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T8.1">
<tr class="ltx_tr" id="A5.T8.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.1.1.1">
<span class="ltx_p" id="A5.T8.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.1.1.1.1">Domain</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.1.2.1">
<span class="ltx_p" id="A5.T8.1.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.2.1.1.1">Sub-Domain</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.1.3.1">
<span class="ltx_p" id="A5.T8.1.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.3.1.1.1">Dataset Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.4.1">Original</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.5.1">Selected</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.1.6"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.6.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.2.1.1">
<span class="ltx_p" id="A5.T8.1.2.1.1.1" style="width:71.1pt;">PDF to Markdown</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.2.2.1">
<span class="ltx_p" id="A5.T8.1.2.2.1.1" style="width:71.1pt;">General</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.2.3.1">
<span class="ltx_p" id="A5.T8.1.2.3.1.1" style="width:142.3pt;">Manual</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.2.4">33</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.2.5">33</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.2.6">33</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.3.1.1">
<span class="ltx_p" id="A5.T8.1.3.1.1.1" style="width:71.1pt;">Layout Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.3.2.1">
<span class="ltx_p" id="A5.T8.1.3.2.1.1" style="width:71.1pt;">Docs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.3.3.1">
<span class="ltx_p" id="A5.T8.1.3.3.1.1" style="width:142.3pt;">BCE-Arabic-v1 <cite class="ltx_cite ltx_citemacro_cite">Saad et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib42" title="">2016</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.3.4">1.9k</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.3.5">1,700</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.3.6" rowspan="2"><span class="ltx_text" id="A5.T8.1.3.6.1">2,100</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.4">
<td class="ltx_td ltx_align_top" id="A5.T8.1.4.1"></td>
<td class="ltx_td ltx_align_top" id="A5.T8.1.4.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.4.3.1">
<span class="ltx_p" id="A5.T8.1.4.3.1.1" style="width:142.3pt;">DocLayNet <cite class="ltx_cite ltx_citemacro_cite">Pfitzmann et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib39" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.4.4">80k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.4.5">400</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.5.1.1">
<span class="ltx_p" id="A5.T8.1.5.1.1.1" style="width:71.1pt;">Line Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.5.2.1">
<span class="ltx_p" id="A5.T8.1.5.2.1.1" style="width:71.1pt;">Docs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.5.3.1">
<span class="ltx_p" id="A5.T8.1.5.3.1.1" style="width:142.3pt;">Manual</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.5.4">375</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.5.5">378</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.5.6">378</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.6.1.1">
<span class="ltx_p" id="A5.T8.1.6.1.1.1" style="width:71.1pt;">Line Recognition</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.6.2.1">
<span class="ltx_p" id="A5.T8.1.6.2.1.1" style="width:71.1pt;">Docs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.6.3.1">
<span class="ltx_p" id="A5.T8.1.6.3.1.1" style="width:142.3pt;">Manual</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.6.4">375</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.6.5">378</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.6.6">378</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.7.1.1">
<span class="ltx_p" id="A5.T8.1.7.1.1.1" style="width:71.1pt;">Table Recognition</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.7.2.1">
<span class="ltx_p" id="A5.T8.1.7.2.1.1" style="width:71.1pt;">Financial</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.7.3.1">
<span class="ltx_p" id="A5.T8.1.7.3.1.1" style="width:142.3pt;">Pixmo <cite class="ltx_cite ltx_citemacro_cite">Deitke et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib11" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.7.4">490</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.7.5">456</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.7.6">456</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.8.1" rowspan="13">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.8.1.1">
<span class="ltx_p" id="A5.T8.1.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.8.1.1.1.1">Image to Text</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.8.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.8.2.1">
<span class="ltx_p" id="A5.T8.1.8.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.8.2.1.1.1">Synthetic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.8.3.1">
<span class="ltx_p" id="A5.T8.1.8.3.1.1" style="width:142.3pt;">PATS <cite class="ltx_cite ltx_citemacro_cite">El-Muhtaseb (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib14" title="">2010</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.8.4">21.6k</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.8.5">500</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.8.6" rowspan="13"><span class="ltx_text" id="A5.T8.1.8.6.1">3,760</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.9.1.1">
<span class="ltx_p" id="A5.T8.1.9.1.1.1" style="width:142.3pt;">SythenAR</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.9.2">39.1k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.9.3">500</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.10.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.10.1.1">
<span class="ltx_p" id="A5.T8.1.10.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.10.1.1.1.1">Historical</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.10.2.1">
<span class="ltx_p" id="A5.T8.1.10.2.1.1" style="width:142.3pt;">HistoryAr <cite class="ltx_cite ltx_citemacro_cite">Pantke et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib35" title="">2014</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.10.3">1.5k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.10.4">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.11.1.1">
<span class="ltx_p" id="A5.T8.1.11.1.1.1" style="width:142.3pt;">HistoricalBooks</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.11.2">40</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.11.3">10</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.12.1.1">
<span class="ltx_p" id="A5.T8.1.12.1.1.1" style="width:71.1pt;">Hand. Paragraph</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.12.2.1">
<span class="ltx_p" id="A5.T8.1.12.2.1.1" style="width:142.3pt;">Khatt <cite class="ltx_cite ltx_citemacro_cite">Mahmoud et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib30" title="">2014</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.12.3">2.72k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.12.4">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.13.1.1">
<span class="ltx_p" id="A5.T8.1.13.1.1.1" style="width:71.1pt;">Hand. Word</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.13.2.1">
<span class="ltx_p" id="A5.T8.1.13.2.1.1" style="width:142.3pt;">ADAB <cite class="ltx_cite ltx_citemacro_cite">Boubaker et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib7" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.13.3">15k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.13.4">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.14.1" rowspan="3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.14.1.1">
<span class="ltx_p" id="A5.T8.1.14.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.14.1.1.1.1">Hand. Line</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.14.2.1">
<span class="ltx_p" id="A5.T8.1.14.2.1.1" style="width:142.3pt;">Muharaf <cite class="ltx_cite ltx_citemacro_cite">Saeed et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib43" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.14.3">24.5k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.14.4">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.15.1.1">
<span class="ltx_p" id="A5.T8.1.15.1.1.1" style="width:142.3pt;">OnlineKhatt <cite class="ltx_cite ltx_citemacro_cite">Mahmoud et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib31" title="">2018</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.15.2">8.5k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.15.3">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.16.1.1">
<span class="ltx_p" id="A5.T8.1.16.1.1.1" style="width:142.3pt;">Khatt <cite class="ltx_cite ltx_citemacro_cite">Mahmoud et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib30" title="">2014</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.16.2">13.4k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.16.3">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.17.1.1">
<span class="ltx_p" id="A5.T8.1.17.1.1.1" style="width:71.1pt;">PPT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.17.2.1">
<span class="ltx_p" id="A5.T8.1.17.2.1.1" style="width:142.3pt;">ISI-PPT <cite class="ltx_cite ltx_citemacro_cite">Wu and Natarajan (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib55" title="">2017</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.17.3">86.5k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.17.4">500</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.18.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.18.1.1">
<span class="ltx_p" id="A5.T8.1.18.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.18.1.1.1.1">Blogs</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.18.2.1">
<span class="ltx_p" id="A5.T8.1.18.2.1.1" style="width:142.3pt;">ArabicOCR</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.18.3">20.3k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.18.4">50</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.19.1.1">
<span class="ltx_p" id="A5.T8.1.19.1.1.1" style="width:142.3pt;">Hindawi <cite class="ltx_cite ltx_citemacro_cite">Elfilali (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib15" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.19.2">79k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.19.3">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.20.1.1">
<span class="ltx_p" id="A5.T8.1.20.1.1.1" style="width:71.1pt;">Scene</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.20.2.1">
<span class="ltx_p" id="A5.T8.1.20.2.1.1" style="width:142.3pt;">EvAREST <cite class="ltx_cite ltx_citemacro_cite">Hassan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib20" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.20.3">5.59k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.20.4">800</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.21.1" rowspan="16">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.21.1.1">
<span class="ltx_p" id="A5.T8.1.21.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.21.1.1.1.1">Charts to DataFrame</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.21.2.1">
<span class="ltx_p" id="A5.T8.1.21.2.1.1" style="width:71.1pt;">Bar</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.21.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.21.3.1">
<span class="ltx_p" id="A5.T8.1.21.3.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.21.4">100</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.21.5">61</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.21.6" rowspan="16"><span class="ltx_text" id="A5.T8.1.21.6.1">576</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.22.1.1">
<span class="ltx_p" id="A5.T8.1.22.1.1.1" style="width:71.1pt;">Line</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.22.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.22.2.1">
<span class="ltx_p" id="A5.T8.1.22.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.22.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.22.4">43</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.23.1.1">
<span class="ltx_p" id="A5.T8.1.23.1.1.1" style="width:71.1pt;">Pie</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.23.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.23.2.1">
<span class="ltx_p" id="A5.T8.1.23.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.23.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.23.4">56</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.24.1.1">
<span class="ltx_p" id="A5.T8.1.24.1.1.1" style="width:71.1pt;">Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.24.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.24.2.1">
<span class="ltx_p" id="A5.T8.1.24.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.24.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.24.4">31</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.25.1.1">
<span class="ltx_p" id="A5.T8.1.25.1.1.1" style="width:71.1pt;">Violin</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.25.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.25.2.1">
<span class="ltx_p" id="A5.T8.1.25.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.25.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.25.4">36</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.26">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.26.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.26.1.1">
<span class="ltx_p" id="A5.T8.1.26.1.1.1" style="width:71.1pt;">Area</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.26.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.26.2.1">
<span class="ltx_p" id="A5.T8.1.26.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.26.3">50</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.26.4">29</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.27">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.27.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.27.1.1">
<span class="ltx_p" id="A5.T8.1.27.1.1.1" style="width:71.1pt;">SunBurst</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.27.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.27.2.1">
<span class="ltx_p" id="A5.T8.1.27.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.27.3">30</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.27.4">15</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.28">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.28.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.28.1.1">
<span class="ltx_p" id="A5.T8.1.28.1.1.1" style="width:71.1pt;">Dot</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.28.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.28.2.1">
<span class="ltx_p" id="A5.T8.1.28.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.28.3">30</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.28.4">15</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.29">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.29.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.29.1.1">
<span class="ltx_p" id="A5.T8.1.29.1.1.1" style="width:71.1pt;">Dual Axis</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.29.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.29.2.1">
<span class="ltx_p" id="A5.T8.1.29.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.29.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.29.4">26</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.30">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.30.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.30.1.1">
<span class="ltx_p" id="A5.T8.1.30.1.1.1" style="width:71.1pt;">Density Curve</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.30.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.30.2.1">
<span class="ltx_p" id="A5.T8.1.30.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.30.3">10</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.30.4">5</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.31">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.31.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.31.1.1">
<span class="ltx_p" id="A5.T8.1.31.1.1.1" style="width:71.1pt;">Bubble</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.31.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.31.2.1">
<span class="ltx_p" id="A5.T8.1.31.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.31.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.31.4">13</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.32">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.32.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.32.1.1">
<span class="ltx_p" id="A5.T8.1.32.1.1.1" style="width:71.1pt;">Grouped Bar</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.32.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.32.2.1">
<span class="ltx_p" id="A5.T8.1.32.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.32.3">50</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.32.4">60</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.33">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.33.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.33.1.1">
<span class="ltx_p" id="A5.T8.1.33.1.1.1" style="width:71.1pt;">Stacked Bar</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.33.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.33.2.1">
<span class="ltx_p" id="A5.T8.1.33.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.33.3">50</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.33.4">82</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.34">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.34.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.34.1.1">
<span class="ltx_p" id="A5.T8.1.34.1.1.1" style="width:71.1pt;">Histogram</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.34.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.34.2.1">
<span class="ltx_p" id="A5.T8.1.34.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.34.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.34.4">70</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.35">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.35.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.35.1.1">
<span class="ltx_p" id="A5.T8.1.35.1.1.1" style="width:71.1pt;">HeatMap</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.35.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.35.2.1">
<span class="ltx_p" id="A5.T8.1.35.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.35.3">10</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.35.4">11</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.36">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.36.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.36.1.1">
<span class="ltx_p" id="A5.T8.1.36.1.1.1" style="width:71.1pt;">Scatter</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.36.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.36.2.1">
<span class="ltx_p" id="A5.T8.1.36.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.36.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.36.4">23</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.37">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.37.1" rowspan="7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.37.1.1">
<span class="ltx_p" id="A5.T8.1.37.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.37.1.1.1.1">Diagram to Json</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.37.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.37.2.1">
<span class="ltx_p" id="A5.T8.1.37.2.1.1" style="width:71.1pt;">Sequence</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.37.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.37.3.1">
<span class="ltx_p" id="A5.T8.1.37.3.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.37.4">50</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.37.5">46</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.37.6" rowspan="7"><span class="ltx_text" id="A5.T8.1.37.6.1">226</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.38">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.38.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.38.1.1">
<span class="ltx_p" id="A5.T8.1.38.1.1.1" style="width:71.1pt;">Funnel</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.38.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.38.2.1">
<span class="ltx_p" id="A5.T8.1.38.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.38.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.38.4">52</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.39">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.39.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.39.1.1">
<span class="ltx_p" id="A5.T8.1.39.1.1.1" style="width:71.1pt;">Class</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.39.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.39.2.1">
<span class="ltx_p" id="A5.T8.1.39.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.39.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.39.4">30</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.40">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.40.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.40.1.1">
<span class="ltx_p" id="A5.T8.1.40.1.1.1" style="width:71.1pt;">Network</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.40.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.40.2.1">
<span class="ltx_p" id="A5.T8.1.40.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.40.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.40.4">18</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.41">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.41.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.41.1.1">
<span class="ltx_p" id="A5.T8.1.41.1.1.1" style="width:71.1pt;">Venn</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.41.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.41.2.1">
<span class="ltx_p" id="A5.T8.1.41.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.41.3">20</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.41.4">7</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.42">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.42.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.42.1.1">
<span class="ltx_p" id="A5.T8.1.42.1.1.1" style="width:71.1pt;">FlowChart</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.42.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.42.2.1">
<span class="ltx_p" id="A5.T8.1.42.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.42.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.42.4">112</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.43">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.43.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.43.1.1">
<span class="ltx_p" id="A5.T8.1.43.1.1.1" style="width:71.1pt;">TreeMap</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.43.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.43.2.1">
<span class="ltx_p" id="A5.T8.1.43.2.1.1" style="width:142.3pt;">Synthetic</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.43.3">100</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.43.4">157</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.44">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.44.1" rowspan="4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.44.1.1">
<span class="ltx_p" id="A5.T8.1.44.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A5.T8.1.44.1.1.1.1">VQA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.44.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.44.2.1">
<span class="ltx_p" id="A5.T8.1.44.2.1.1" style="width:71.1pt;">Diagrams</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.44.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.44.3.1">
<span class="ltx_p" id="A5.T8.1.44.3.1.1" style="width:142.3pt;">Manual</span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.44.4">102</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A5.T8.1.44.5">102</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="A5.T8.1.44.6" rowspan="4"><span class="ltx_text" id="A5.T8.1.44.6.1">902</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.45">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.45.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.45.1.1">
<span class="ltx_p" id="A5.T8.1.45.1.1.1" style="width:71.1pt;">Charts</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.45.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.45.2.1">
<span class="ltx_p" id="A5.T8.1.45.2.1.1" style="width:142.3pt;">Manual</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.45.3">105</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.45.4">100</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.46">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.46.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.46.1.1">
<span class="ltx_p" id="A5.T8.1.46.1.1.1" style="width:71.1pt;">News Letter</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.46.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.46.2.1">
<span class="ltx_p" id="A5.T8.1.46.2.1.1" style="width:142.3pt;">PATD <cite class="ltx_cite ltx_citemacro_cite">Bouressace and Csirik (<a class="ltx_ref" href="https://arxiv.org/html/2502.14949v1#bib.bib8" title="">2019</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.46.3">2.42k</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.46.4">200</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.47">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.47.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.47.1.1">
<span class="ltx_p" id="A5.T8.1.47.1.1.1" style="width:71.1pt;">Scene</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T8.1.47.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.47.2.1">
<span class="ltx_p" id="A5.T8.1.47.2.1.1" style="width:142.3pt;">MTVQA</span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.47.3">818</td>
<td class="ltx_td ltx_align_right" id="A5.T8.1.47.4">500</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.48">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" colspan="3" id="A5.T8.1.48.1"><span class="ltx_text ltx_font_bold" id="A5.T8.1.48.1.1">Total Dataset Size</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A5.T8.1.48.2">–</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" colspan="2" id="A5.T8.1.48.3">8,809</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 shows a detailed breakdown of the KITAB-Bench dataset, categorizing its 8,809 samples across nine main domains (e.g., OCR, charts to JSON, table recognition) and 36 sub-domains (e.g., scanned text, handwritten text, various chart types).  For each sub-domain, the table specifies the original and selected number of samples, their source (manual annotation, synthetic generation, or specific existing datasets like KHATT and DocLayNet), and the type of document they represent.
> <details>
> <summary>read the caption</summary>
> Table 8: Dataset Distribution Across Different Domains, sub-domains and Data Source
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A5.T9.1">
<tr class="ltx_tr" id="A5.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T9.1.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="A5.T9.1.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.3.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.4.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A5.T9.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.5.1">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.1.1.6.1">Qwen2-VL</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.2">
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">PATS</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A5.T9.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T9.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">0.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.9" style="padding-top:1pt;padding-bottom:1pt;">1.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.1.3.10" style="padding-top:1pt;padding-bottom:1pt;">1.02</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.4">
<td class="ltx_td ltx_align_left" id="A5.T9.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">SythenAR</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.9" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.4.10" style="padding-top:1pt;padding-bottom:1pt;">1.13</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.5">
<td class="ltx_td ltx_align_left" id="A5.T9.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">HistoryAr</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.82</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.96</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.9" style="padding-top:1pt;padding-bottom:1pt;">3.46</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.5.10" style="padding-top:1pt;padding-bottom:1pt;">2.86</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.6">
<td class="ltx_td ltx_align_left" id="A5.T9.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">HistoricalBooks</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">10</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.41</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.22</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.9" style="padding-top:1pt;padding-bottom:1pt;">1.90</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.6.10" style="padding-top:1pt;padding-bottom:1pt;">2.16</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.7">
<td class="ltx_td ltx_align_left" id="A5.T9.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">Khatt</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.9" style="padding-top:1pt;padding-bottom:1pt;">1.12</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.7.10" style="padding-top:1pt;padding-bottom:1pt;">5.04</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.8">
<td class="ltx_td ltx_align_left" id="A5.T9.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">Adab</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.9" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.8.10" style="padding-top:1pt;padding-bottom:1pt;">1.08</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.9">
<td class="ltx_td ltx_align_left" id="A5.T9.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">Muharaf</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.90</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.5" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.9" style="padding-top:1pt;padding-bottom:1pt;">3.57</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.9.10" style="padding-top:1pt;padding-bottom:1pt;">2.87</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.10">
<td class="ltx_td ltx_align_left" id="A5.T9.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">OnlineKhatt</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.10.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.29</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.5" style="padding-top:1pt;padding-bottom:1pt;">0.41</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.6" style="padding-top:1pt;padding-bottom:1pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.9" style="padding-top:1pt;padding-bottom:1pt;">1.30</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.10.10" style="padding-top:1pt;padding-bottom:1pt;">2.01</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.11">
<td class="ltx_td ltx_align_left" id="A5.T9.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">ISI-PPT</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.11.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.5" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.6" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.9" style="padding-top:1pt;padding-bottom:1pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.11.10" style="padding-top:1pt;padding-bottom:1pt;">1.06</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.12">
<td class="ltx_td ltx_align_left" id="A5.T9.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">ArabicOCR</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.12.2" style="padding-top:1pt;padding-bottom:1pt;">50</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.4" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.5" style="padding-top:1pt;padding-bottom:1pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.6" style="padding-top:1pt;padding-bottom:1pt;">0.46</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.02</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.9" style="padding-top:1pt;padding-bottom:1pt;">1.25</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.12.10" style="padding-top:1pt;padding-bottom:1pt;">1.50</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.13">
<td class="ltx_td ltx_align_left" id="A5.T9.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">Hindawi</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.13.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.4" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.5" style="padding-top:1pt;padding-bottom:1pt;">0.48</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.6" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.9" style="padding-top:1pt;padding-bottom:1pt;">1.82</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.13.10" style="padding-top:1pt;padding-bottom:1pt;">2.05</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.14">
<td class="ltx_td ltx_align_left" id="A5.T9.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">EvArest</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.1.14.2" style="padding-top:1pt;padding-bottom:1pt;">800</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.5" style="padding-top:1pt;padding-bottom:1pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.6" style="padding-top:1pt;padding-bottom:1pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.1.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.9" style="padding-top:1pt;padding-bottom:1pt;">0.41</td>
<td class="ltx_td ltx_align_center" id="A5.T9.1.14.10" style="padding-top:1pt;padding-bottom:1pt;">0.95</td>
</tr>
<tr class="ltx_tr" id="A5.T9.1.15">
<td class="ltx_td ltx_border_bb ltx_border_t" id="A5.T9.1.15.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="A5.T9.1.15.2" style="padding-top:1pt;padding-bottom:1pt;">3,760</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.4" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.5" style="padding-top:1pt;padding-bottom:1pt;">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.6" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T9.1.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.9" style="padding-top:1pt;padding-bottom:1pt;">1.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.1.15.10" style="padding-top:1pt;padding-bottom:1pt;">1.20</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of the performance of several large vision-language models (LLMs) on the KITAB-Bench benchmark.  The benchmark itself focuses on Arabic OCR and document understanding tasks. The table shows Character Error Rate (CER) and Word Error Rate (WER) for each model across various datasets within the benchmark.  Lower CER and WER values indicate better performance.  The datasets represent different types of Arabic text, including handwritten, printed, scene text, and specialized document formats, allowing for a thorough evaluation of the models' capabilities in various scenarios.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance comparison of Large Vision-Language Models on KITAB-Bench (lower is better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A5.T9.2">
<tr class="ltx_tr" id="A5.T9.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T9.2.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="A5.T9.2.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.3.1">Qwen2.5-VL</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A5.T9.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.4.1">AIN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.5.1">Tesseract</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T9.2.1.6.1">Surya</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.2">
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">CER</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.2.8" style="padding-top:1pt;padding-bottom:1pt;">WER</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">PATS</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="A5.T9.2.3.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T9.2.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.8" style="padding-top:1pt;padding-bottom:1pt;">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.9" style="padding-top:1pt;padding-bottom:1pt;">4.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.2.3.10" style="padding-top:1pt;padding-bottom:1pt;">4.67</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.4">
<td class="ltx_td ltx_align_left" id="A5.T9.2.4.1" style="padding-top:1pt;padding-bottom:1pt;">SythenAR</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.4.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.40</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.8" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.9" style="padding-top:1pt;padding-bottom:1pt;">4.82</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.4.10" style="padding-top:1pt;padding-bottom:1pt;">7.90</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.5">
<td class="ltx_td ltx_align_left" id="A5.T9.2.5.1" style="padding-top:1pt;padding-bottom:1pt;">HistoryAr</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.5.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.8" style="padding-top:1pt;padding-bottom:1pt;">1.26</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.9" style="padding-top:1pt;padding-bottom:1pt;">10.32</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.5.10" style="padding-top:1pt;padding-bottom:1pt;">12.78</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.6">
<td class="ltx_td ltx_align_left" id="A5.T9.2.6.1" style="padding-top:1pt;padding-bottom:1pt;">HistoricalBooks</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.6.2" style="padding-top:1pt;padding-bottom:1pt;">10</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.9" style="padding-top:1pt;padding-bottom:1pt;">6.81</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.6.10" style="padding-top:1pt;padding-bottom:1pt;">6.30</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.7">
<td class="ltx_td ltx_align_left" id="A5.T9.2.7.1" style="padding-top:1pt;padding-bottom:1pt;">Khatt</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.7.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.22</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.7.6" style="padding-top:1pt;padding-bottom:1pt;">1.12</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.8" style="padding-top:1pt;padding-bottom:1pt;">1.06</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.9" style="padding-top:1pt;padding-bottom:1pt;">4.25</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.7.10" style="padding-top:1pt;padding-bottom:1pt;">3.77</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.8">
<td class="ltx_td ltx_align_left" id="A5.T9.2.8.1" style="padding-top:1pt;padding-bottom:1pt;">Adab</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.8.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.5" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.8.6" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.7" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.8" style="padding-top:1pt;padding-bottom:1pt;">1.14</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.9" style="padding-top:1pt;padding-bottom:1pt;">7.28</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.8.10" style="padding-top:1pt;padding-bottom:1pt;">8.71</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.9">
<td class="ltx_td ltx_align_left" id="A5.T9.2.9.1" style="padding-top:1pt;padding-bottom:1pt;">Muharaf</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.9.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.96</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.5" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.8" style="padding-top:1pt;padding-bottom:1pt;">1.22</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.9" style="padding-top:1pt;padding-bottom:1pt;">6.19</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.9.10" style="padding-top:1pt;padding-bottom:1pt;">7.48</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.10">
<td class="ltx_td ltx_align_left" id="A5.T9.2.10.1" style="padding-top:1pt;padding-bottom:1pt;">OnlineKhatt</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.10.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.5" style="padding-top:1pt;padding-bottom:1pt;">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.10.6" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.8" style="padding-top:1pt;padding-bottom:1pt;">1.20</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.9" style="padding-top:1pt;padding-bottom:1pt;">6.71</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.10.10" style="padding-top:1pt;padding-bottom:1pt;">6.95</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.11">
<td class="ltx_td ltx_align_left" id="A5.T9.2.11.1" style="padding-top:1pt;padding-bottom:1pt;">ISI-PPT</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.11.2" style="padding-top:1pt;padding-bottom:1pt;">500</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.5" style="padding-top:1pt;padding-bottom:1pt;">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.11.6" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.9" style="padding-top:1pt;padding-bottom:1pt;">4.25</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.11.10" style="padding-top:1pt;padding-bottom:1pt;">3.77</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.12">
<td class="ltx_td ltx_align_left" id="A5.T9.2.12.1" style="padding-top:1pt;padding-bottom:1pt;">ArabicOCR</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.12.2" style="padding-top:1pt;padding-bottom:1pt;">50</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.4" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.5" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.12.6" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.9" style="padding-top:1pt;padding-bottom:1pt;">2.75</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.12.10" style="padding-top:1pt;padding-bottom:1pt;">3.58</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.13">
<td class="ltx_td ltx_align_left" id="A5.T9.2.13.1" style="padding-top:1pt;padding-bottom:1pt;">Hindawi</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.13.2" style="padding-top:1pt;padding-bottom:1pt;">200</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.4" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.5" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.13.6" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.9" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.13.10" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.14">
<td class="ltx_td ltx_align_left" id="A5.T9.2.14.1" style="padding-top:1pt;padding-bottom:1pt;">EvArest</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="A5.T9.2.14.2" style="padding-top:1pt;padding-bottom:1pt;">800</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.5" style="padding-top:1pt;padding-bottom:1pt;">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T9.2.14.6" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.8" style="padding-top:1pt;padding-bottom:1pt;">1.02</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.9" style="padding-top:1pt;padding-bottom:1pt;">5.91</td>
<td class="ltx_td ltx_align_center" id="A5.T9.2.14.10" style="padding-top:1pt;padding-bottom:1pt;">3.86</td>
</tr>
<tr class="ltx_tr" id="A5.T9.2.15">
<td class="ltx_td ltx_border_bb ltx_border_t" id="A5.T9.2.15.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="A5.T9.2.15.2" style="padding-top:1pt;padding-bottom:1pt;">3,760</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.4" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.5" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T9.2.15.6" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.9" style="padding-top:1pt;padding-bottom:1pt;">4.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T9.2.15.10" style="padding-top:1pt;padding-bottom:1pt;">5.61</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comprehensive evaluation of various models and OCR systems across diverse document understanding tasks.  It's structured into three main sections: document understanding (layout analysis, line detection, PDF to markdown conversion), table understanding (table recognition, chart to dataframe conversion), and visual understanding (image to text, diagram to JSON conversion, visual question answering). Each task uses specific metrics to assess model performance, allowing for a detailed comparison of different approaches.
> <details>
> <summary>read the caption</summary>
> Table 10: Comprehensive evaluation metrics and models for document understanding tasks. The table is organized into three main categories: document understanding, table understanding, and visual understanding tasks. Each task is evaluated using specific metrics and implemented across various models and OCR systems.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14949/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14949/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}