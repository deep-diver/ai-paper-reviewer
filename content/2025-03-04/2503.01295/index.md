---
title: "CodeArena: A Collective Evaluation Platform for LLM Code Generation"
summary: "CodeArena: Collective evaluation for LLM code generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Nanyang Technological University",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01295 {{< /keyword >}}
{{< keyword icon="writer" >}} Mingzhe Du et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01295" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01295" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01295/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods to assess code generation by Large Language Models (LLMs) face issues such as **benchmark contamination**, **data loss**, and **limited accessibility**. The subjective problem difficulty assessments made by human curators also impact the accuracy of model evaluations. These shortcomings hinder the **efficient and accurate assessment** of LLM coding capabilities.



To counter these issues, **CodeArena** was introduced as an **online evaluation framework**. The platform mitigates score biases using a collective evaluation system, dynamically adjusting model scores based on overall performance.  The system includes automated APIs and ensures open access to both submitted solutions and test cases, streamlining the evaluation workflow. This setup enables a fairer, more accessible, and efficient way to evaluate and improve code generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a collective evaluation system for unbiased LLM code generation assessment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Provides a public repository of solutions and test cases for LLM code generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Offers automation-ready APIs for seamless LLM code generation integration. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **dynamic evaluation system** and an **open data repository** to address the challenges of LLM code generation. It offers valuable resources and tools for researchers to evaluate models and advance code generation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01295/x1.png)

> 🔼 CodeArena's architecture is illustrated, highlighting its key components: an API layer for user interaction, runtime environments for code execution, a dynamic evaluation layer that continuously adjusts scores based on overall performance, and a data layer to store solutions and test cases.  The figure walks through the submission process, detailing the steps from problem retrieval to solution evaluation and storage.
> <details>
> <summary>read the caption</summary>
> Figure 1:  The CodeArena framework allows users to interact with the system through APIs. The depicted workflow shows the code submission process.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.23.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.23.19.20.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.23.19.20.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.23.19.20.1.1.1">Rank</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.23.19.20.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.23.19.20.1.2.1">Model Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.23.19.20.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.23.19.20.1.3.1">DP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.23.19.20.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.23.19.20.1.4.1">Pass</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.1.1.2">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.1.1.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.5.1.1.1.m1.1"><semantics id="S4.T1.5.1.1.1.m1.1a"><mi id="S4.T1.5.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.5.1.1.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.5.1.1.1.m1.1b"><ci id="S4.T1.5.1.1.1.m1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.1.1.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.1.1.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.5.1.1.1.1">DeepSeek-Coder</span> <cite class="ltx_cite ltx_citemacro_cite">Zhu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.1.1.3">249.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.5.1.1.4">90.63%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.6.2.2.2">2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.2.2.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.6.2.2.1.m1.1"><semantics id="S4.T1.6.2.2.1.m1.1a"><mi id="S4.T1.6.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T1.6.2.2.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.6.2.2.1.m1.1b"><ci id="S4.T1.6.2.2.1.m1.1.1.cmml" xref="S4.T1.6.2.2.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.2.2.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.2.2.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.1.1">GPT-4o</span> <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib1" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.6.2.2.3">247.32</td>
<td class="ltx_td ltx_align_right" id="S4.T1.6.2.2.4">89.06%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.3.3.2">3</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.3.3.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.7.3.3.1.m1.1"><semantics id="S4.T1.7.3.3.1.m1.1a"><mi id="S4.T1.7.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T1.7.3.3.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.7.3.3.1.m1.1b"><ci id="S4.T1.7.3.3.1.m1.1.1.cmml" xref="S4.T1.7.3.3.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.3.3.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.3.3.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.7.3.3.1.1">Claude-3-5-sonnet</span> <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.7.3.3.3">227.87</td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.3.3.4">74.22%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.8.4.4.2">4</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.4.4.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.8.4.4.1.m1.1"><semantics id="S4.T1.8.4.4.1.m1.1a"><mi id="S4.T1.8.4.4.1.m1.1.1" mathvariant="normal" xref="S4.T1.8.4.4.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.8.4.4.1.m1.1b"><ci id="S4.T1.8.4.4.1.m1.1.1.cmml" xref="S4.T1.8.4.4.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.4.4.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.4.4.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.8.4.4.1.1">Gemini-1.5-flash</span> <cite class="ltx_cite ltx_citemacro_cite">Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib20" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.8.4.4.3">225.67</td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.4.4.4">73.05%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.9.5.5.2">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.9.5.5.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.9.5.5.1.m1.1"><semantics id="S4.T1.9.5.5.1.m1.1a"><mi id="S4.T1.9.5.5.1.m1.1.1" mathvariant="normal" xref="S4.T1.9.5.5.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.9.5.5.1.m1.1b"><ci id="S4.T1.9.5.5.1.m1.1.1.cmml" xref="S4.T1.9.5.5.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.5.5.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.5.5.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.9.5.5.1.1">DeepSeek-Coder-V2-Lite</span> <cite class="ltx_cite ltx_citemacro_cite">Zhu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.9.5.5.3">223.67</td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.5.5.4">71.24%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.6.6.2">6</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.6.6.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.10.6.6.1.m1.1"><semantics id="S4.T1.10.6.6.1.m1.1a"><mi id="S4.T1.10.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T1.10.6.6.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.10.6.6.1.m1.1b"><ci id="S4.T1.10.6.6.1.m1.1.1.cmml" xref="S4.T1.10.6.6.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.6.6.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.6.6.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.10.6.6.1.1">Claude-3-Opus</span> <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.10.6.6.3">221.93</td>
<td class="ltx_td ltx_align_right" id="S4.T1.10.6.6.4">69.92%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.11.7.7.2">7</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.11.7.7.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.11.7.7.1.m1.1"><semantics id="S4.T1.11.7.7.1.m1.1a"><mi id="S4.T1.11.7.7.1.m1.1.1" mathvariant="normal" xref="S4.T1.11.7.7.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.11.7.7.1.m1.1b"><ci id="S4.T1.11.7.7.1.m1.1.1.cmml" xref="S4.T1.11.7.7.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.7.7.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.7.7.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.11.7.7.1.1">Gemini-1.5-pro</span> <cite class="ltx_cite ltx_citemacro_cite">Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib20" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.11.7.7.3">209.16</td>
<td class="ltx_td ltx_align_right" id="S4.T1.11.7.7.4">61.72%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.12.8.8.2">8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.12.8.8.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.12.8.8.1.m1.1"><semantics id="S4.T1.12.8.8.1.m1.1a"><mi id="S4.T1.12.8.8.1.m1.1.1" mathvariant="normal" xref="S4.T1.12.8.8.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.12.8.8.1.m1.1b"><ci id="S4.T1.12.8.8.1.m1.1.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.8.8.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.8.8.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.12.8.8.1.1">Llama-3.1-8B</span> <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib21" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.12.8.8.3">177.34</td>
<td class="ltx_td ltx_align_right" id="S4.T1.12.8.8.4">46.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.13.9.9.2">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.13.9.9.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.13.9.9.1.m1.1"><semantics id="S4.T1.13.9.9.1.m1.1a"><mi id="S4.T1.13.9.9.1.m1.1.1" mathvariant="normal" xref="S4.T1.13.9.9.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.13.9.9.1.m1.1b"><ci id="S4.T1.13.9.9.1.m1.1.1.cmml" xref="S4.T1.13.9.9.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.9.9.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.9.9.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.13.9.9.1.1">Llama-3-8B</span> <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib21" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.13.9.9.3">164.51</td>
<td class="ltx_td ltx_align_right" id="S4.T1.13.9.9.4">40.63%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.14.10.10.2">10</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.14.10.10.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.14.10.10.1.m1.1"><semantics id="S4.T1.14.10.10.1.m1.1a"><mi id="S4.T1.14.10.10.1.m1.1.1" mathvariant="normal" xref="S4.T1.14.10.10.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.14.10.10.1.m1.1b"><ci id="S4.T1.14.10.10.1.m1.1.1.cmml" xref="S4.T1.14.10.10.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.10.10.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.10.10.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.14.10.10.1.1">GPT-4-Turbo</span> <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib1" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.14.10.10.3">160.55</td>
<td class="ltx_td ltx_align_right" id="S4.T1.14.10.10.4">34.38%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.15.11.11.2">11</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.15.11.11.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.15.11.11.1.m1.1"><semantics id="S4.T1.15.11.11.1.m1.1a"><mi id="S4.T1.15.11.11.1.m1.1.1" mathvariant="normal" xref="S4.T1.15.11.11.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.15.11.11.1.m1.1b"><ci id="S4.T1.15.11.11.1.m1.1.1.cmml" xref="S4.T1.15.11.11.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.11.11.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.11.11.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.15.11.11.1.1">GPT-3.5-Turbo</span> <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib1" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.15.11.11.3">157.70</td>
<td class="ltx_td ltx_align_right" id="S4.T1.15.11.11.4">33.98%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.16.12.12.2">12</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.16.12.12.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.16.12.12.1.m1.1"><semantics id="S4.T1.16.12.12.1.m1.1a"><mi id="S4.T1.16.12.12.1.m1.1.1" mathvariant="normal" xref="S4.T1.16.12.12.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.16.12.12.1.m1.1b"><ci id="S4.T1.16.12.12.1.m1.1.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.12.12.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.12.12.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.16.12.12.1.1">Mistral-Nemo</span> <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib12" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.16.12.12.3">141.78</td>
<td class="ltx_td ltx_align_right" id="S4.T1.16.12.12.4">29.30%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.17.13.13.2">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.17.13.13.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.17.13.13.1.m1.1"><semantics id="S4.T1.17.13.13.1.m1.1a"><mi id="S4.T1.17.13.13.1.m1.1.1" mathvariant="normal" xref="S4.T1.17.13.13.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.17.13.13.1.m1.1b"><ci id="S4.T1.17.13.13.1.m1.1.1.cmml" xref="S4.T1.17.13.13.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.13.13.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.13.13.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.1.1">CodeLlama-13b</span> <cite class="ltx_cite ltx_citemacro_cite">Roziere et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib19" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.17.13.13.3">123.15</td>
<td class="ltx_td ltx_align_right" id="S4.T1.17.13.13.4">25.39%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.18.14.14.2">14</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.18.14.14.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.18.14.14.1.m1.1"><semantics id="S4.T1.18.14.14.1.m1.1a"><mi id="S4.T1.18.14.14.1.m1.1.1" mathvariant="normal" xref="S4.T1.18.14.14.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.18.14.14.1.m1.1b"><ci id="S4.T1.18.14.14.1.m1.1.1.cmml" xref="S4.T1.18.14.14.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.14.14.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.14.14.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.18.14.14.1.1">Claude-3-Haiku</span> <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.18.14.14.3">100.37</td>
<td class="ltx_td ltx_align_right" id="S4.T1.18.14.14.4">18.75%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.19.15.15.2">15</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.19.15.15.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.19.15.15.1.m1.1"><semantics id="S4.T1.19.15.15.1.m1.1a"><mi id="S4.T1.19.15.15.1.m1.1.1" mathvariant="normal" xref="S4.T1.19.15.15.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.19.15.15.1.m1.1b"><ci id="S4.T1.19.15.15.1.m1.1.1.cmml" xref="S4.T1.19.15.15.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.15.15.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.15.15.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.19.15.15.1.1">Mistral-7B-v0.3</span> <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib12" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.19.15.15.3">77.43</td>
<td class="ltx_td ltx_align_right" id="S4.T1.19.15.15.4">14.84%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.20.16.16.2">16</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.16.16.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.20.16.16.1.m1.1"><semantics id="S4.T1.20.16.16.1.m1.1a"><mi id="S4.T1.20.16.16.1.m1.1.1" mathvariant="normal" xref="S4.T1.20.16.16.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.20.16.16.1.m1.1b"><ci id="S4.T1.20.16.16.1.m1.1.1.cmml" xref="S4.T1.20.16.16.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.16.16.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.16.16.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.20.16.16.1.1">Codestral-22B-v0.1</span> <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib12" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.20.16.16.3">77.43</td>
<td class="ltx_td ltx_align_right" id="S4.T1.20.16.16.4">14.84%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.21.17.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.21.17.17.2">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.21.17.17.1">
<math alttext="\diamondsuit" class="ltx_Math" display="inline" id="S4.T1.21.17.17.1.m1.1"><semantics id="S4.T1.21.17.17.1.m1.1a"><mi id="S4.T1.21.17.17.1.m1.1.1" mathvariant="normal" xref="S4.T1.21.17.17.1.m1.1.1.cmml">♢</mi><annotation-xml encoding="MathML-Content" id="S4.T1.21.17.17.1.m1.1b"><ci id="S4.T1.21.17.17.1.m1.1.1.cmml" xref="S4.T1.21.17.17.1.m1.1.1">♢</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.17.17.1.m1.1c">\diamondsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.17.17.1.m1.1d">♢</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.21.17.17.1.1">Claude-3-sonnet</span> <cite class="ltx_cite ltx_citemacro_cite">Anthropic (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.21.17.17.3">56.17</td>
<td class="ltx_td ltx_align_right" id="S4.T1.21.17.17.4">8.98%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.22.18.18.2">18</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.22.18.18.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.22.18.18.1.m1.1"><semantics id="S4.T1.22.18.18.1.m1.1a"><mi id="S4.T1.22.18.18.1.m1.1.1" mathvariant="normal" xref="S4.T1.22.18.18.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.22.18.18.1.m1.1b"><ci id="S4.T1.22.18.18.1.m1.1.1.cmml" xref="S4.T1.22.18.18.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.18.18.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.18.18.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.22.18.18.1.1">CodeLlama-34b</span> <cite class="ltx_cite ltx_citemacro_cite">Roziere et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib19" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="S4.T1.22.18.18.3">53.83</td>
<td class="ltx_td ltx_align_right" id="S4.T1.22.18.18.4">8.98%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.23.19.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.23.19.19.2">19</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.23.19.19.1">
<math alttext="\clubsuit" class="ltx_Math" display="inline" id="S4.T1.23.19.19.1.m1.1"><semantics id="S4.T1.23.19.19.1.m1.1a"><mi id="S4.T1.23.19.19.1.m1.1.1" mathvariant="normal" xref="S4.T1.23.19.19.1.m1.1.1.cmml">♣</mi><annotation-xml encoding="MathML-Content" id="S4.T1.23.19.19.1.m1.1b"><ci id="S4.T1.23.19.19.1.m1.1.1.cmml" xref="S4.T1.23.19.19.1.m1.1.1">♣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.19.19.1.m1.1c">\clubsuit</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.19.19.1.m1.1d">♣</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S4.T1.23.19.19.1.1">CodeLlama-7b</span> <cite class="ltx_cite ltx_citemacro_cite">Roziere et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.01295v1#bib.bib19" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.23.19.19.3">50.38</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.23.19.19.4">6.25%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a leaderboard ranking the performance of various Large Language Models (LLMs) in code generation tasks as of July 30, 2024.  Models are categorized as either open-source or closed-source.  The ranking is based on a 'Dynamic Points' (DP) score, which considers both the number of problems solved and the efficiency of the solutions.  The 'Pass' score indicates the percentage of problems successfully solved by each LLM, offering a complementary measure of performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Leaderboard shows the code generation performance of leading open-source (♣♣\clubsuit♣) and closed-source (♢♢\diamondsuit♢) LLMs as of July 30, 2024. DP stands for Dynamic Points, and the Pass score reports the percentage of solved problems out of total problems.
> </details>





### In-depth insights


#### LLM Code Arena
Assuming "LLM Code Arena" refers to an environment or platform for evaluating Large Language Models (LLMs) in code generation, several aspects become crucial.  Firstly, the **platform's design should ensure fair and unbiased comparisons between models**, accounting for factors like prompt engineering and varying hardware.  It should **offer diverse coding challenges**, ranging from algorithm implementation to software design, to gauge LLMs' comprehensive coding abilities. The evaluation metrics must go beyond simple pass/fail tests, incorporating aspects like code efficiency, security, and maintainability.  Crucially, **the arena needs mechanisms to mitigate benchmark contamination**, a prevalent issue where LLMs are inadvertently trained on evaluation data, leading to inflated performance. Dynamic scoring systems and regularly updated problem sets are essential here.  Furthermore, a good arena **should provide detailed insights into model behavior**, allowing researchers to understand why a model succeeds or fails.  This includes features for debugging generated code, visualizing execution traces, and analyzing error patterns. The platform’s user interface (UI) and Application Programming Interface (API) must be designed with automation in mind, thereby, assisting the user effectively with code generation. In short, an LLM Code Arena should be a rigorous, transparent, and informative environment for driving progress in LLM-based code generation.

#### Dynamic Scoring
**Dynamic scoring** in LLM evaluation is crucial to **mitigate benchmark leakage**. By recalibrating model scores based on the performance of all models, it reduces biases from leaked data. This approach dynamically adjusts the challenge score, rewarding solutions to difficult problems more significantly. Also it **incentivizes solving truly challenging** problems while **reducing the impact of leaked or simple** tasks on the overall leaderboard. It also calculates code efficiency by runtime, and provides Dynamic Points. These dynamic points further help to observe the performance trending of each user. In summary it ensures that benchmark results reflect genuine coding proficiency and that the benchmarks are up to date.

#### API Automation
API automation represents a critical domain within software engineering, especially in the context of modern microservices architectures and cloud-native applications. It involves using programmatic methods to **test, deploy, and manage APIs**, reducing manual effort and increasing efficiency. API automation frameworks often leverage tools like Postman, SoapUI, or custom scripts using languages like Python or JavaScript to **automate the process of sending requests, validating responses, and ensuring API functionality**. A key aspect of API automation is **test automation**, where automated tests are created to verify API endpoints' behavior under different conditions, including functional correctness, performance, and security. Effective API automation requires a robust strategy that includes defining clear test cases, setting up appropriate environments, and integrating with continuous integration/continuous delivery (CI/CD) pipelines to ensure consistent and reliable API performance. Furthermore, comprehensive API automation strategies encompass monitoring and logging to provide **real-time insights** into API health and usage, allowing for proactive issue detection and resolution.

#### Open Data Access
**Open data access** is crucial for advancing research in LLM code generation. It facilitates **reproducibility** and allows researchers to build upon existing work. Providing access to both **solutions and test cases** fosters a collaborative environment, accelerating innovation. Publicly available datasets enable comprehensive analysis, identifying strengths and weaknesses of different models. Open access also encourages the development of **more robust and generalizable evaluation metrics**, mitigating the risks associated with benchmark leakage. By democratizing data, we can promote fair comparison of models and ensure progress in the field.

#### Addressing Bias
While the provided paper doesn't have a section explicitly titled "Addressing Bias," it implicitly tackles bias through its **dynamic evaluation mechanism**. Traditional benchmarks often suffer from biases stemming from subjective difficulty assessments and benchmark contamination. CodeArena's **collective evaluation system** mitigates these biases by dynamically recalibrating model scores based on the performance of all participating models. This approach reduces the impact of subjective difficulty assignments, ensuring a fairer comparison. Additionally, the platform's open data policy promotes transparency, allowing the research community to scrutinize and identify potential biases in the evaluation process. By providing a **standardized environment and unified prompt** to invoke both open-source and closed-source LLMs, CodeArena seeks to establish a level playing field for assessing code generation capabilities. The inclusion of efficiency scores (ES) also helps to address potential biases related to code optimization, as models are evaluated not only on correctness but also on runtime performance, which fosters a more balanced and holistic evaluation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01295/x2.png)

> 🔼 CodeArena's architecture is depicted, highlighting its four main layers:  The green layer shows runtime environments supporting various programming languages.  These runtimes accept either code directly or model prompts and return test results. The yellow layer is the dynamic evaluation unit, which updates model rankings based on submission results using a weighted scoring system.  The blue and maroon components represent the RESTful APIs used for interaction: GET requests for data retrieval and POST requests for data submission.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of CodeArena. The Green component provides runtime environments for programming languages, capable of accepting either generated code or model prompt as the input, and outputting test results. The Yellow component is the dynamic evaluation unit, updating the LLM weighted ranking score based on each submission result. The Blue and Maroon components are RESTful API GET (⊲subgroup-of\lhd⊲) and POST (⊳contains-as-subgroup\rhd⊳) calls, respectively.
> </details>



![](https://arxiv.org/html/2503.01295/x3.png)

> 🔼 Figure 3 illustrates the calculation of Dynamic Points (DP), a novel scoring metric in CodeArena.  Unlike traditional methods, DP considers the overall system performance, adjusting individual model scores based on the collective performance of all participating models. This dynamic approach mitigates bias caused by benchmark leakage.  The example shows how Challenge Scores (CS) and Efficiency Scores (ES) contribute to the final DP. Note that CS and ES are only awarded if a model passes all test cases for a given problem.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example of Dynamic Point (𝒟⁢𝒫𝒟𝒫\mathcal{DP}caligraphic_D caligraphic_P) calculation. Each individual model score is influenced by the overall system performance. 𝒞⁢𝒮𝒞𝒮\mathcal{CS}caligraphic_C caligraphic_S and ℰ⁢𝒮ℰ𝒮\mathcal{ES}caligraphic_E caligraphic_S are counted only when the model passes (✓) all test cases.
> </details>



![](https://arxiv.org/html/2503.01295/extracted/6247271/images/distribution.png)

> 🔼 This figure shows the trend of Dynamic Points (DP) for various prominent open-source and closed-source Large Language Models (LLMs) over time.  The DP metric is a novel scoring system used in the CodeArena platform, designed to mitigate bias caused by benchmark leakage and provide a more accurate representation of model performance. The x-axis represents time (checkpoints from July 30th to November 30th, 2024), while the y-axis shows the DP score.  Different colored lines represent different LLMs, allowing for a comparison of performance over time. The plot reveals insights into how model performance changes over time and how open-source and closed-source models compare.
> <details>
> <summary>read the caption</summary>
> Figure 4:  We trace Dynamic Point (𝒟⁢𝒫𝒟𝒫\mathcal{DP}caligraphic_D caligraphic_P) changes of prominent open-source (♣♣\clubsuit♣) and closed-source(♢♢\diamondsuit♢) LLMs over checkpoint (𝒞⁢𝒫𝒞𝒫\mathcal{CP}caligraphic_C caligraphic_P) from 30 July to 30 Nov, 2024.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01295/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01295/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}