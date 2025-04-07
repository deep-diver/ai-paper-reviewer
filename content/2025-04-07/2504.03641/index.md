---
title: "MME-Unify: A Comprehensive Benchmark for Unified Multimodal Understanding and Generation Models"
summary: "MME-Unify: A new benchmark to evaluate the understanding and generation capabilities of Unified Multimodal models and reveal areas for improvement."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 CASIA",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03641 {{< /keyword >}}
{{< keyword icon="writer" >}} Wulin Xie et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03641" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03641" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03641/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Unified Multimodal Large Language Models** have garnered considerable interest because they seamlessly integrate generation and comprehension. However, existing research lacks a unified evaluation standard. Current work also highlights the potential of “mixed-modality generation capabilities.” There is no standardized benchmark to assess models on unified tasks. To address this gap, the authors introduce MME-Unify. It rigorously assesses how models' understanding and generation capabilities can mutually enhance each other. 



The authors introduce **MME-Unify**, the first benchmark designed to evaluate multimodal comprehension, generation, and mixed-modality generation capabilities. The figure (a) illustrates the wide-ranging nature of the tasks covered in the benchmark, which spans from traditional understanding tasks to complex mixed-modality generation challenges. Evaluation of 12 U-MLLMs reveals significant room for improvement, particularly in areas such as instruction following and image generation quality.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} U-MLLMs show promise but still lag behind specialized models in individual tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Balancing understanding and generation capabilities remains a key challenge for U-MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The MME-U benchmark provides a valuable resource for evaluating and advancing U-MLLM research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces MME-Unify and offers a standardized way to evaluate U-MLLMs. It also identifies current shortcomings and paves the way for future research focused on improving multimodal understanding, generation, and unified task performance. This could impact U-MLLM development and assessment in AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Bin2.png)

> 🔼 This figure shows a comprehensive visualization of the various tasks included in the MME-Unify benchmark.  The figure is divided into two parts. The first part (a) illustrates the wide range of tasks encompassed by the benchmark, categorized into three main areas: Multimodal Understanding, Multimodal Generation, and the Unified tasks (mix-modality generation tasks), further divided into sub-tasks to comprehensively evaluate the different aspects of model capabilities. The second part (b) displays a leaderboard that presents the performance of 12 U-MLLMs across all of the tasks in MME-Unify, showing their relative strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> (a) MME-U tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.113.113">
<tr class="ltx_tr" id="S1.T1.113.113.114">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.113.113.114.1">Benchmark</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.2">Question</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.3">Year</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.4">SIPU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.5">MITIU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.6">VPU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.7">FIR</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.8">TIE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.9">TIG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.10">CIVG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.11">TVG</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.12">VP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.113.113.114.13">UT</td>
</tr>
<tr class="ltx_tr" id="S1.T1.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.10.10.10.11">MSR-VTT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.1.1"><math alttext="10,000" class="ltx_Math" display="inline" id="S1.T1.1.1.1.1.m1.2"><semantics id="S1.T1.1.1.1.1.m1.2a"><mrow id="S1.T1.1.1.1.1.m1.2.3.2" xref="S1.T1.1.1.1.1.m1.2.3.1.cmml"><mn id="S1.T1.1.1.1.1.m1.1.1" xref="S1.T1.1.1.1.1.m1.1.1.cmml">10</mn><mo id="S1.T1.1.1.1.1.m1.2.3.2.1" xref="S1.T1.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.1.1.1.1.m1.2.2" xref="S1.T1.1.1.1.1.m1.2.2.cmml">000</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.1.m1.2b"><list id="S1.T1.1.1.1.1.m1.2.3.1.cmml" xref="S1.T1.1.1.1.1.m1.2.3.2"><cn id="S1.T1.1.1.1.1.m1.1.1.cmml" type="integer" xref="S1.T1.1.1.1.1.m1.1.1">10</cn><cn id="S1.T1.1.1.1.1.m1.2.2.cmml" type="integer" xref="S1.T1.1.1.1.1.m1.2.2">000</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.1.m1.2c">10,000</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.1.m1.2d">10 , 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.10.10.10.12">CVPR 2016</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.2.2.2.2.m1.1"><semantics id="S1.T1.2.2.2.2.m1.1a"><mo id="S1.T1.2.2.2.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.2.m1.1b"><times id="S1.T1.2.2.2.2.m1.1.1.cmml" xref="S1.T1.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.3.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.3.3.3.3.m1.1"><semantics id="S1.T1.3.3.3.3.m1.1a"><mo id="S1.T1.3.3.3.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.3.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.3.m1.1b"><times id="S1.T1.3.3.3.3.m1.1.1.cmml" xref="S1.T1.3.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.10.10.10.13">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.4.4.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.4.4.4.4.m1.1"><semantics id="S1.T1.4.4.4.4.m1.1a"><mo id="S1.T1.4.4.4.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.4.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.4.4.m1.1b"><times id="S1.T1.4.4.4.4.m1.1.1.cmml" xref="S1.T1.4.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.4.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.5.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.5.5.5.5.m1.1"><semantics id="S1.T1.5.5.5.5.m1.1a"><mo id="S1.T1.5.5.5.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.5.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.5.5.m1.1b"><times id="S1.T1.5.5.5.5.m1.1.1.cmml" xref="S1.T1.5.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.5.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.6.6.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.6.6.6.6.m1.1"><semantics id="S1.T1.6.6.6.6.m1.1a"><mo id="S1.T1.6.6.6.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.6.6.6.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.6.6.m1.1b"><times id="S1.T1.6.6.6.6.m1.1.1.cmml" xref="S1.T1.6.6.6.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.6.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.6.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.7.7.7.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.7.7.7.7.m1.1"><semantics id="S1.T1.7.7.7.7.m1.1a"><mo id="S1.T1.7.7.7.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.7.7.7.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.7.7.m1.1b"><times id="S1.T1.7.7.7.7.m1.1.1.cmml" xref="S1.T1.7.7.7.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.7.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.7.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.8.8.8.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.8.8.8.8.m1.1"><semantics id="S1.T1.8.8.8.8.m1.1a"><mo id="S1.T1.8.8.8.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.8.8.8.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.8.8.m1.1b"><times id="S1.T1.8.8.8.8.m1.1.1.cmml" xref="S1.T1.8.8.8.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.8.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.8.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.9.9.9.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.9.9.9.9.m1.1"><semantics id="S1.T1.9.9.9.9.m1.1a"><mo id="S1.T1.9.9.9.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.9.9.9.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.9.9.9.9.m1.1b"><times id="S1.T1.9.9.9.9.m1.1.1.cmml" xref="S1.T1.9.9.9.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.9.9.9.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.9.9.9.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.10.10.10.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.10.10.10.10.m1.1"><semantics id="S1.T1.10.10.10.10.m1.1a"><mo id="S1.T1.10.10.10.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.10.10.10.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.10.10.10.10.m1.1b"><times id="S1.T1.10.10.10.10.m1.1.1.cmml" xref="S1.T1.10.10.10.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.10.10.10.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.10.10.10.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.20.20.20">
<td class="ltx_td ltx_align_left" id="S1.T1.20.20.20.11">MMBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.11.11.11.1"><math alttext="3,217" class="ltx_Math" display="inline" id="S1.T1.11.11.11.1.m1.2"><semantics id="S1.T1.11.11.11.1.m1.2a"><mrow id="S1.T1.11.11.11.1.m1.2.3.2" xref="S1.T1.11.11.11.1.m1.2.3.1.cmml"><mn id="S1.T1.11.11.11.1.m1.1.1" xref="S1.T1.11.11.11.1.m1.1.1.cmml">3</mn><mo id="S1.T1.11.11.11.1.m1.2.3.2.1" xref="S1.T1.11.11.11.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.11.11.11.1.m1.2.2" xref="S1.T1.11.11.11.1.m1.2.2.cmml">217</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.11.11.11.1.m1.2b"><list id="S1.T1.11.11.11.1.m1.2.3.1.cmml" xref="S1.T1.11.11.11.1.m1.2.3.2"><cn id="S1.T1.11.11.11.1.m1.1.1.cmml" type="integer" xref="S1.T1.11.11.11.1.m1.1.1">3</cn><cn id="S1.T1.11.11.11.1.m1.2.2.cmml" type="integer" xref="S1.T1.11.11.11.1.m1.2.2">217</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.11.11.11.1.m1.2c">3,217</annotation><annotation encoding="application/x-llamapun" id="S1.T1.11.11.11.1.m1.2d">3 , 217</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.12">arXiv 2023</td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.12.12.12.2.m1.1"><semantics id="S1.T1.12.12.12.2.m1.1a"><mo id="S1.T1.12.12.12.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.12.12.12.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.12.12.12.2.m1.1b"><times id="S1.T1.12.12.12.2.m1.1.1.cmml" xref="S1.T1.12.12.12.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.12.12.12.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.12.12.12.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.13.13.13.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.13.13.13.3.m1.1"><semantics id="S1.T1.13.13.13.3.m1.1a"><mo id="S1.T1.13.13.13.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.13.13.13.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.13.13.13.3.m1.1b"><times id="S1.T1.13.13.13.3.m1.1.1.cmml" xref="S1.T1.13.13.13.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.13.13.13.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.13.13.13.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.14.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.14.14.14.4.m1.1"><semantics id="S1.T1.14.14.14.4.m1.1a"><mo id="S1.T1.14.14.14.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.14.14.14.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.14.14.14.4.m1.1b"><times id="S1.T1.14.14.14.4.m1.1.1.cmml" xref="S1.T1.14.14.14.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.14.14.14.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.14.14.14.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.15.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.15.15.15.5.m1.1"><semantics id="S1.T1.15.15.15.5.m1.1a"><mo id="S1.T1.15.15.15.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.15.15.15.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.15.15.15.5.m1.1b"><times id="S1.T1.15.15.15.5.m1.1.1.cmml" xref="S1.T1.15.15.15.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.15.15.15.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.15.15.15.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.16.16.16.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.16.16.16.6.m1.1"><semantics id="S1.T1.16.16.16.6.m1.1a"><mo id="S1.T1.16.16.16.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.16.16.16.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.16.16.16.6.m1.1b"><times id="S1.T1.16.16.16.6.m1.1.1.cmml" xref="S1.T1.16.16.16.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.16.16.16.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.16.16.16.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.17.17.17.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.17.17.17.7.m1.1"><semantics id="S1.T1.17.17.17.7.m1.1a"><mo id="S1.T1.17.17.17.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.17.17.17.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.17.17.17.7.m1.1b"><times id="S1.T1.17.17.17.7.m1.1.1.cmml" xref="S1.T1.17.17.17.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.17.17.17.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.17.17.17.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.18.18.18.8.m1.1"><semantics id="S1.T1.18.18.18.8.m1.1a"><mo id="S1.T1.18.18.18.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.18.18.18.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.18.18.18.8.m1.1b"><times id="S1.T1.18.18.18.8.m1.1.1.cmml" xref="S1.T1.18.18.18.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.18.18.18.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.18.18.18.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.19.19.19.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.19.19.19.9.m1.1"><semantics id="S1.T1.19.19.19.9.m1.1a"><mo id="S1.T1.19.19.19.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.19.19.19.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.19.19.19.9.m1.1b"><times id="S1.T1.19.19.19.9.m1.1.1.cmml" xref="S1.T1.19.19.19.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.19.19.19.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.19.19.19.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.20.20.20.10.m1.1"><semantics id="S1.T1.20.20.20.10.m1.1a"><mo id="S1.T1.20.20.20.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.20.20.20.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.20.20.20.10.m1.1b"><times id="S1.T1.20.20.20.10.m1.1.1.cmml" xref="S1.T1.20.20.20.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.20.20.20.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.20.20.20.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.30.30.30">
<td class="ltx_td ltx_align_left" id="S1.T1.30.30.30.11">GenEval <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.21.21.21.1"><math alttext="1,200" class="ltx_Math" display="inline" id="S1.T1.21.21.21.1.m1.2"><semantics id="S1.T1.21.21.21.1.m1.2a"><mrow id="S1.T1.21.21.21.1.m1.2.3.2" xref="S1.T1.21.21.21.1.m1.2.3.1.cmml"><mn id="S1.T1.21.21.21.1.m1.1.1" xref="S1.T1.21.21.21.1.m1.1.1.cmml">1</mn><mo id="S1.T1.21.21.21.1.m1.2.3.2.1" xref="S1.T1.21.21.21.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.21.21.21.1.m1.2.2" xref="S1.T1.21.21.21.1.m1.2.2.cmml">200</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.21.21.21.1.m1.2b"><list id="S1.T1.21.21.21.1.m1.2.3.1.cmml" xref="S1.T1.21.21.21.1.m1.2.3.2"><cn id="S1.T1.21.21.21.1.m1.1.1.cmml" type="integer" xref="S1.T1.21.21.21.1.m1.1.1">1</cn><cn id="S1.T1.21.21.21.1.m1.2.2.cmml" type="integer" xref="S1.T1.21.21.21.1.m1.2.2">200</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.21.21.21.1.m1.2c">1,200</annotation><annotation encoding="application/x-llamapun" id="S1.T1.21.21.21.1.m1.2d">1 , 200</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.30.30.30.12">arXiv 2023</td>
<td class="ltx_td ltx_align_center" id="S1.T1.22.22.22.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.22.22.22.2.m1.1"><semantics id="S1.T1.22.22.22.2.m1.1a"><mo id="S1.T1.22.22.22.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.22.22.22.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.22.22.22.2.m1.1b"><times id="S1.T1.22.22.22.2.m1.1.1.cmml" xref="S1.T1.22.22.22.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.22.22.22.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.22.22.22.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.23.23.23.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.23.23.23.3.m1.1"><semantics id="S1.T1.23.23.23.3.m1.1a"><mo id="S1.T1.23.23.23.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.23.23.23.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.23.23.23.3.m1.1b"><times id="S1.T1.23.23.23.3.m1.1.1.cmml" xref="S1.T1.23.23.23.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.23.23.23.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.23.23.23.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.24.24.24.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.24.24.24.4.m1.1"><semantics id="S1.T1.24.24.24.4.m1.1a"><mo id="S1.T1.24.24.24.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.24.24.24.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.24.24.24.4.m1.1b"><times id="S1.T1.24.24.24.4.m1.1.1.cmml" xref="S1.T1.24.24.24.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.24.24.24.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.24.24.24.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.25.25.25.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.25.25.25.5.m1.1"><semantics id="S1.T1.25.25.25.5.m1.1a"><mo id="S1.T1.25.25.25.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.25.25.25.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.25.25.25.5.m1.1b"><times id="S1.T1.25.25.25.5.m1.1.1.cmml" xref="S1.T1.25.25.25.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.25.25.25.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.25.25.25.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.26.26.26.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.26.26.26.6.m1.1"><semantics id="S1.T1.26.26.26.6.m1.1a"><mo id="S1.T1.26.26.26.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.26.26.26.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.26.26.26.6.m1.1b"><times id="S1.T1.26.26.26.6.m1.1.1.cmml" xref="S1.T1.26.26.26.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.26.26.26.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.26.26.26.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.30.30.30.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.27.27.27.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.27.27.27.7.m1.1"><semantics id="S1.T1.27.27.27.7.m1.1a"><mo id="S1.T1.27.27.27.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.27.27.27.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.27.27.27.7.m1.1b"><times id="S1.T1.27.27.27.7.m1.1.1.cmml" xref="S1.T1.27.27.27.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.27.27.27.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.27.27.27.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.28.28.28.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.28.28.28.8.m1.1"><semantics id="S1.T1.28.28.28.8.m1.1a"><mo id="S1.T1.28.28.28.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.28.28.28.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.28.28.28.8.m1.1b"><times id="S1.T1.28.28.28.8.m1.1.1.cmml" xref="S1.T1.28.28.28.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.28.28.28.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.28.28.28.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.29.29.29.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.29.29.29.9.m1.1"><semantics id="S1.T1.29.29.29.9.m1.1a"><mo id="S1.T1.29.29.29.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.29.29.29.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.29.29.29.9.m1.1b"><times id="S1.T1.29.29.29.9.m1.1.1.cmml" xref="S1.T1.29.29.29.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.29.29.29.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.29.29.29.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.30.30.30.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.30.30.30.10.m1.1"><semantics id="S1.T1.30.30.30.10.m1.1a"><mo id="S1.T1.30.30.30.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.30.30.30.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.30.30.30.10.m1.1b"><times id="S1.T1.30.30.30.10.m1.1.1.cmml" xref="S1.T1.30.30.30.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.30.30.30.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.30.30.30.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.39.39.39">
<td class="ltx_td ltx_align_left" id="S1.T1.39.39.39.10">MagicBrush <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.31.31.31.1"><math alttext="10,338" class="ltx_Math" display="inline" id="S1.T1.31.31.31.1.m1.2"><semantics id="S1.T1.31.31.31.1.m1.2a"><mrow id="S1.T1.31.31.31.1.m1.2.3.2" xref="S1.T1.31.31.31.1.m1.2.3.1.cmml"><mn id="S1.T1.31.31.31.1.m1.1.1" xref="S1.T1.31.31.31.1.m1.1.1.cmml">10</mn><mo id="S1.T1.31.31.31.1.m1.2.3.2.1" xref="S1.T1.31.31.31.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.31.31.31.1.m1.2.2" xref="S1.T1.31.31.31.1.m1.2.2.cmml">338</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.31.31.31.1.m1.2b"><list id="S1.T1.31.31.31.1.m1.2.3.1.cmml" xref="S1.T1.31.31.31.1.m1.2.3.2"><cn id="S1.T1.31.31.31.1.m1.1.1.cmml" type="integer" xref="S1.T1.31.31.31.1.m1.1.1">10</cn><cn id="S1.T1.31.31.31.1.m1.2.2.cmml" type="integer" xref="S1.T1.31.31.31.1.m1.2.2">338</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.31.31.31.1.m1.2c">10,338</annotation><annotation encoding="application/x-llamapun" id="S1.T1.31.31.31.1.m1.2d">10 , 338</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.39.39.39.11">NeurIPS 2023</td>
<td class="ltx_td ltx_align_center" id="S1.T1.32.32.32.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.32.32.32.2.m1.1"><semantics id="S1.T1.32.32.32.2.m1.1a"><mo id="S1.T1.32.32.32.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.32.32.32.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.32.32.32.2.m1.1b"><times id="S1.T1.32.32.32.2.m1.1.1.cmml" xref="S1.T1.32.32.32.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.32.32.32.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.32.32.32.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.33.33.33.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.33.33.33.3.m1.1"><semantics id="S1.T1.33.33.33.3.m1.1a"><mo id="S1.T1.33.33.33.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.33.33.33.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.33.33.33.3.m1.1b"><times id="S1.T1.33.33.33.3.m1.1.1.cmml" xref="S1.T1.33.33.33.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.33.33.33.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.33.33.33.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.34.34.34.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.34.34.34.4.m1.1"><semantics id="S1.T1.34.34.34.4.m1.1a"><mo id="S1.T1.34.34.34.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.34.34.34.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.34.34.34.4.m1.1b"><times id="S1.T1.34.34.34.4.m1.1.1.cmml" xref="S1.T1.34.34.34.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.34.34.34.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.34.34.34.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.39.39.39.12">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.39.39.39.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.35.35.35.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.35.35.35.5.m1.1"><semantics id="S1.T1.35.35.35.5.m1.1a"><mo id="S1.T1.35.35.35.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.35.35.35.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.35.35.35.5.m1.1b"><times id="S1.T1.35.35.35.5.m1.1.1.cmml" xref="S1.T1.35.35.35.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.35.35.35.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.35.35.35.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.36.36.36.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.36.36.36.6.m1.1"><semantics id="S1.T1.36.36.36.6.m1.1a"><mo id="S1.T1.36.36.36.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.36.36.36.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.36.36.36.6.m1.1b"><times id="S1.T1.36.36.36.6.m1.1.1.cmml" xref="S1.T1.36.36.36.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.36.36.36.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.36.36.36.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.37.37.37.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.37.37.37.7.m1.1"><semantics id="S1.T1.37.37.37.7.m1.1a"><mo id="S1.T1.37.37.37.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.37.37.37.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.37.37.37.7.m1.1b"><times id="S1.T1.37.37.37.7.m1.1.1.cmml" xref="S1.T1.37.37.37.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.37.37.37.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.37.37.37.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.38.38.38.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.38.38.38.8.m1.1"><semantics id="S1.T1.38.38.38.8.m1.1a"><mo id="S1.T1.38.38.38.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.38.38.38.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.38.38.38.8.m1.1b"><times id="S1.T1.38.38.38.8.m1.1.1.cmml" xref="S1.T1.38.38.38.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.38.38.38.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.38.38.38.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.39.39.39.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.39.39.39.9.m1.1"><semantics id="S1.T1.39.39.39.9.m1.1a"><mo id="S1.T1.39.39.39.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.39.39.39.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.39.39.39.9.m1.1b"><times id="S1.T1.39.39.39.9.m1.1.1.cmml" xref="S1.T1.39.39.39.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.39.39.39.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.39.39.39.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.49.49.49">
<td class="ltx_td ltx_align_left" id="S1.T1.49.49.49.11">VBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.40.40.40.1"><math alttext="1,600" class="ltx_Math" display="inline" id="S1.T1.40.40.40.1.m1.2"><semantics id="S1.T1.40.40.40.1.m1.2a"><mrow id="S1.T1.40.40.40.1.m1.2.3.2" xref="S1.T1.40.40.40.1.m1.2.3.1.cmml"><mn id="S1.T1.40.40.40.1.m1.1.1" xref="S1.T1.40.40.40.1.m1.1.1.cmml">1</mn><mo id="S1.T1.40.40.40.1.m1.2.3.2.1" xref="S1.T1.40.40.40.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.40.40.40.1.m1.2.2" xref="S1.T1.40.40.40.1.m1.2.2.cmml">600</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.40.40.40.1.m1.2b"><list id="S1.T1.40.40.40.1.m1.2.3.1.cmml" xref="S1.T1.40.40.40.1.m1.2.3.2"><cn id="S1.T1.40.40.40.1.m1.1.1.cmml" type="integer" xref="S1.T1.40.40.40.1.m1.1.1">1</cn><cn id="S1.T1.40.40.40.1.m1.2.2.cmml" type="integer" xref="S1.T1.40.40.40.1.m1.2.2">600</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.40.40.40.1.m1.2c">1,600</annotation><annotation encoding="application/x-llamapun" id="S1.T1.40.40.40.1.m1.2d">1 , 600</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.49.49.49.12">CVPR 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.41.41.41.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.41.41.41.2.m1.1"><semantics id="S1.T1.41.41.41.2.m1.1a"><mo id="S1.T1.41.41.41.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.41.41.41.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.41.41.41.2.m1.1b"><times id="S1.T1.41.41.41.2.m1.1.1.cmml" xref="S1.T1.41.41.41.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.41.41.41.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.41.41.41.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.42.42.42.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.42.42.42.3.m1.1"><semantics id="S1.T1.42.42.42.3.m1.1a"><mo id="S1.T1.42.42.42.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.42.42.42.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.42.42.42.3.m1.1b"><times id="S1.T1.42.42.42.3.m1.1.1.cmml" xref="S1.T1.42.42.42.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.42.42.42.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.42.42.42.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.43.43.43.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.43.43.43.4.m1.1"><semantics id="S1.T1.43.43.43.4.m1.1a"><mo id="S1.T1.43.43.43.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.43.43.43.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.43.43.43.4.m1.1b"><times id="S1.T1.43.43.43.4.m1.1.1.cmml" xref="S1.T1.43.43.43.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.43.43.43.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.43.43.43.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.44.44.44.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.44.44.44.5.m1.1"><semantics id="S1.T1.44.44.44.5.m1.1a"><mo id="S1.T1.44.44.44.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.44.44.44.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.44.44.44.5.m1.1b"><times id="S1.T1.44.44.44.5.m1.1.1.cmml" xref="S1.T1.44.44.44.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.44.44.44.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.44.44.44.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.45.45.45.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.45.45.45.6.m1.1"><semantics id="S1.T1.45.45.45.6.m1.1a"><mo id="S1.T1.45.45.45.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.45.45.45.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.45.45.45.6.m1.1b"><times id="S1.T1.45.45.45.6.m1.1.1.cmml" xref="S1.T1.45.45.45.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.45.45.45.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.45.45.45.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.46.46.46.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.46.46.46.7.m1.1"><semantics id="S1.T1.46.46.46.7.m1.1a"><mo id="S1.T1.46.46.46.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.46.46.46.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.46.46.46.7.m1.1b"><times id="S1.T1.46.46.46.7.m1.1.1.cmml" xref="S1.T1.46.46.46.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.46.46.46.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.46.46.46.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.47.47.47.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.47.47.47.8.m1.1"><semantics id="S1.T1.47.47.47.8.m1.1a"><mo id="S1.T1.47.47.47.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.47.47.47.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.47.47.47.8.m1.1b"><times id="S1.T1.47.47.47.8.m1.1.1.cmml" xref="S1.T1.47.47.47.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.47.47.47.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.47.47.47.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.49.49.49.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.48.48.48.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.48.48.48.9.m1.1"><semantics id="S1.T1.48.48.48.9.m1.1a"><mo id="S1.T1.48.48.48.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.48.48.48.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.48.48.48.9.m1.1b"><times id="S1.T1.48.48.48.9.m1.1.1.cmml" xref="S1.T1.48.48.48.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.48.48.48.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.48.48.48.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.49.49.49.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.49.49.49.10.m1.1"><semantics id="S1.T1.49.49.49.10.m1.1a"><mo id="S1.T1.49.49.49.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.49.49.49.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.49.49.49.10.m1.1b"><times id="S1.T1.49.49.49.10.m1.1.1.cmml" xref="S1.T1.49.49.49.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.49.49.49.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.49.49.49.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.54.54.54">
<td class="ltx_td ltx_align_left" id="S1.T1.54.54.54.6">SEED-Bench2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.50.50.50.1"><math alttext="19,242" class="ltx_Math" display="inline" id="S1.T1.50.50.50.1.m1.2"><semantics id="S1.T1.50.50.50.1.m1.2a"><mrow id="S1.T1.50.50.50.1.m1.2.3.2" xref="S1.T1.50.50.50.1.m1.2.3.1.cmml"><mn id="S1.T1.50.50.50.1.m1.1.1" xref="S1.T1.50.50.50.1.m1.1.1.cmml">19</mn><mo id="S1.T1.50.50.50.1.m1.2.3.2.1" xref="S1.T1.50.50.50.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.50.50.50.1.m1.2.2" xref="S1.T1.50.50.50.1.m1.2.2.cmml">242</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.50.50.50.1.m1.2b"><list id="S1.T1.50.50.50.1.m1.2.3.1.cmml" xref="S1.T1.50.50.50.1.m1.2.3.2"><cn id="S1.T1.50.50.50.1.m1.1.1.cmml" type="integer" xref="S1.T1.50.50.50.1.m1.1.1">19</cn><cn id="S1.T1.50.50.50.1.m1.2.2.cmml" type="integer" xref="S1.T1.50.50.50.1.m1.2.2">242</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.50.50.50.1.m1.2c">19,242</annotation><annotation encoding="application/x-llamapun" id="S1.T1.50.50.50.1.m1.2d">19 , 242</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.7">arXiv 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.8">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.9">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.10">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.11">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.12">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.51.51.51.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.51.51.51.2.m1.1"><semantics id="S1.T1.51.51.51.2.m1.1a"><mo id="S1.T1.51.51.51.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.51.51.51.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.51.51.51.2.m1.1b"><times id="S1.T1.51.51.51.2.m1.1.1.cmml" xref="S1.T1.51.51.51.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.51.51.51.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.51.51.51.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.52.52.52.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.52.52.52.3.m1.1"><semantics id="S1.T1.52.52.52.3.m1.1a"><mo id="S1.T1.52.52.52.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.52.52.52.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.52.52.52.3.m1.1b"><times id="S1.T1.52.52.52.3.m1.1.1.cmml" xref="S1.T1.52.52.52.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.52.52.52.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.52.52.52.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.53.53.53.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.53.53.53.4.m1.1"><semantics id="S1.T1.53.53.53.4.m1.1a"><mo id="S1.T1.53.53.53.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.53.53.53.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.53.53.53.4.m1.1b"><times id="S1.T1.53.53.53.4.m1.1.1.cmml" xref="S1.T1.53.53.53.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.53.53.53.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.53.53.53.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.54.54.54.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.54.54.54.5.m1.1"><semantics id="S1.T1.54.54.54.5.m1.1a"><mo id="S1.T1.54.54.54.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.54.54.54.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.54.54.54.5.m1.1b"><times id="S1.T1.54.54.54.5.m1.1.1.cmml" xref="S1.T1.54.54.54.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.54.54.54.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.54.54.54.5.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.63.63.63">
<td class="ltx_td ltx_align_left" id="S1.T1.63.63.63.10">Emu-Edit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.55.55.55.1"><math alttext="5,611" class="ltx_Math" display="inline" id="S1.T1.55.55.55.1.m1.2"><semantics id="S1.T1.55.55.55.1.m1.2a"><mrow id="S1.T1.55.55.55.1.m1.2.3.2" xref="S1.T1.55.55.55.1.m1.2.3.1.cmml"><mn id="S1.T1.55.55.55.1.m1.1.1" xref="S1.T1.55.55.55.1.m1.1.1.cmml">5</mn><mo id="S1.T1.55.55.55.1.m1.2.3.2.1" xref="S1.T1.55.55.55.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.55.55.55.1.m1.2.2" xref="S1.T1.55.55.55.1.m1.2.2.cmml">611</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.55.55.55.1.m1.2b"><list id="S1.T1.55.55.55.1.m1.2.3.1.cmml" xref="S1.T1.55.55.55.1.m1.2.3.2"><cn id="S1.T1.55.55.55.1.m1.1.1.cmml" type="integer" xref="S1.T1.55.55.55.1.m1.1.1">5</cn><cn id="S1.T1.55.55.55.1.m1.2.2.cmml" type="integer" xref="S1.T1.55.55.55.1.m1.2.2">611</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.55.55.55.1.m1.2c">5,611</annotation><annotation encoding="application/x-llamapun" id="S1.T1.55.55.55.1.m1.2d">5 , 611</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.63.63.63.11">CVPR 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.56.56.56.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.56.56.56.2.m1.1"><semantics id="S1.T1.56.56.56.2.m1.1a"><mo id="S1.T1.56.56.56.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.56.56.56.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.56.56.56.2.m1.1b"><times id="S1.T1.56.56.56.2.m1.1.1.cmml" xref="S1.T1.56.56.56.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.56.56.56.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.56.56.56.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.57.57.57.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.57.57.57.3.m1.1"><semantics id="S1.T1.57.57.57.3.m1.1a"><mo id="S1.T1.57.57.57.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.57.57.57.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.57.57.57.3.m1.1b"><times id="S1.T1.57.57.57.3.m1.1.1.cmml" xref="S1.T1.57.57.57.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.57.57.57.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.57.57.57.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.58.58.58.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.58.58.58.4.m1.1"><semantics id="S1.T1.58.58.58.4.m1.1a"><mo id="S1.T1.58.58.58.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.58.58.58.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.58.58.58.4.m1.1b"><times id="S1.T1.58.58.58.4.m1.1.1.cmml" xref="S1.T1.58.58.58.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.58.58.58.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.58.58.58.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.63.63.63.12">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.63.63.63.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.59.59.59.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.59.59.59.5.m1.1"><semantics id="S1.T1.59.59.59.5.m1.1a"><mo id="S1.T1.59.59.59.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.59.59.59.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.59.59.59.5.m1.1b"><times id="S1.T1.59.59.59.5.m1.1.1.cmml" xref="S1.T1.59.59.59.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.59.59.59.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.59.59.59.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.60.60.60.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.60.60.60.6.m1.1"><semantics id="S1.T1.60.60.60.6.m1.1a"><mo id="S1.T1.60.60.60.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.60.60.60.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.60.60.60.6.m1.1b"><times id="S1.T1.60.60.60.6.m1.1.1.cmml" xref="S1.T1.60.60.60.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.60.60.60.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.60.60.60.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.61.61.61.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.61.61.61.7.m1.1"><semantics id="S1.T1.61.61.61.7.m1.1a"><mo id="S1.T1.61.61.61.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.61.61.61.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.61.61.61.7.m1.1b"><times id="S1.T1.61.61.61.7.m1.1.1.cmml" xref="S1.T1.61.61.61.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.61.61.61.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.61.61.61.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.62.62.62.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.62.62.62.8.m1.1"><semantics id="S1.T1.62.62.62.8.m1.1a"><mo id="S1.T1.62.62.62.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.62.62.62.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.62.62.62.8.m1.1b"><times id="S1.T1.62.62.62.8.m1.1.1.cmml" xref="S1.T1.62.62.62.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.62.62.62.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.62.62.62.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.63.63.63.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.63.63.63.9.m1.1"><semantics id="S1.T1.63.63.63.9.m1.1a"><mo id="S1.T1.63.63.63.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.63.63.63.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.63.63.63.9.m1.1b"><times id="S1.T1.63.63.63.9.m1.1.1.cmml" xref="S1.T1.63.63.63.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.63.63.63.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.63.63.63.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.72.72.72">
<td class="ltx_td ltx_align_left" id="S1.T1.72.72.72.10">TIP-I2V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.64.64.64.1"><math alttext="500,000" class="ltx_Math" display="inline" id="S1.T1.64.64.64.1.m1.2"><semantics id="S1.T1.64.64.64.1.m1.2a"><mrow id="S1.T1.64.64.64.1.m1.2.3.2" xref="S1.T1.64.64.64.1.m1.2.3.1.cmml"><mn id="S1.T1.64.64.64.1.m1.1.1" xref="S1.T1.64.64.64.1.m1.1.1.cmml">500</mn><mo id="S1.T1.64.64.64.1.m1.2.3.2.1" xref="S1.T1.64.64.64.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.64.64.64.1.m1.2.2" xref="S1.T1.64.64.64.1.m1.2.2.cmml">000</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.64.64.64.1.m1.2b"><list id="S1.T1.64.64.64.1.m1.2.3.1.cmml" xref="S1.T1.64.64.64.1.m1.2.3.2"><cn id="S1.T1.64.64.64.1.m1.1.1.cmml" type="integer" xref="S1.T1.64.64.64.1.m1.1.1">500</cn><cn id="S1.T1.64.64.64.1.m1.2.2.cmml" type="integer" xref="S1.T1.64.64.64.1.m1.2.2">000</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.64.64.64.1.m1.2c">500,000</annotation><annotation encoding="application/x-llamapun" id="S1.T1.64.64.64.1.m1.2d">500 , 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.72.72.72.11">arXiv 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.65.65.65.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.65.65.65.2.m1.1"><semantics id="S1.T1.65.65.65.2.m1.1a"><mo id="S1.T1.65.65.65.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.65.65.65.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.65.65.65.2.m1.1b"><times id="S1.T1.65.65.65.2.m1.1.1.cmml" xref="S1.T1.65.65.65.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.65.65.65.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.65.65.65.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.66.66.66.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.66.66.66.3.m1.1"><semantics id="S1.T1.66.66.66.3.m1.1a"><mo id="S1.T1.66.66.66.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.66.66.66.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.66.66.66.3.m1.1b"><times id="S1.T1.66.66.66.3.m1.1.1.cmml" xref="S1.T1.66.66.66.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.66.66.66.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.66.66.66.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.67.67.67.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.67.67.67.4.m1.1"><semantics id="S1.T1.67.67.67.4.m1.1a"><mo id="S1.T1.67.67.67.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.67.67.67.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.67.67.67.4.m1.1b"><times id="S1.T1.67.67.67.4.m1.1.1.cmml" xref="S1.T1.67.67.67.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.67.67.67.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.67.67.67.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.68.68.68.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.68.68.68.5.m1.1"><semantics id="S1.T1.68.68.68.5.m1.1a"><mo id="S1.T1.68.68.68.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.68.68.68.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.68.68.68.5.m1.1b"><times id="S1.T1.68.68.68.5.m1.1.1.cmml" xref="S1.T1.68.68.68.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.68.68.68.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.68.68.68.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.69.69.69.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.69.69.69.6.m1.1"><semantics id="S1.T1.69.69.69.6.m1.1a"><mo id="S1.T1.69.69.69.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.69.69.69.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.69.69.69.6.m1.1b"><times id="S1.T1.69.69.69.6.m1.1.1.cmml" xref="S1.T1.69.69.69.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.69.69.69.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.69.69.69.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.70.70.70.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.70.70.70.7.m1.1"><semantics id="S1.T1.70.70.70.7.m1.1a"><mo id="S1.T1.70.70.70.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.70.70.70.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.70.70.70.7.m1.1b"><times id="S1.T1.70.70.70.7.m1.1.1.cmml" xref="S1.T1.70.70.70.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.70.70.70.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.70.70.70.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.72.72.72.12">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.71.71.71.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.71.71.71.8.m1.1"><semantics id="S1.T1.71.71.71.8.m1.1a"><mo id="S1.T1.71.71.71.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.71.71.71.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.71.71.71.8.m1.1b"><times id="S1.T1.71.71.71.8.m1.1.1.cmml" xref="S1.T1.71.71.71.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.71.71.71.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.71.71.71.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.72.72.72.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.72.72.72.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.72.72.72.9.m1.1"><semantics id="S1.T1.72.72.72.9.m1.1a"><mo id="S1.T1.72.72.72.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.72.72.72.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.72.72.72.9.m1.1b"><times id="S1.T1.72.72.72.9.m1.1.1.cmml" xref="S1.T1.72.72.72.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.72.72.72.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.72.72.72.9.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.82.82.82">
<td class="ltx_td ltx_align_left" id="S1.T1.82.82.82.11">MMBench-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.73.73.73.1"><math alttext="2,000" class="ltx_Math" display="inline" id="S1.T1.73.73.73.1.m1.2"><semantics id="S1.T1.73.73.73.1.m1.2a"><mrow id="S1.T1.73.73.73.1.m1.2.3.2" xref="S1.T1.73.73.73.1.m1.2.3.1.cmml"><mn id="S1.T1.73.73.73.1.m1.1.1" xref="S1.T1.73.73.73.1.m1.1.1.cmml">2</mn><mo id="S1.T1.73.73.73.1.m1.2.3.2.1" xref="S1.T1.73.73.73.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.73.73.73.1.m1.2.2" xref="S1.T1.73.73.73.1.m1.2.2.cmml">000</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.73.73.73.1.m1.2b"><list id="S1.T1.73.73.73.1.m1.2.3.1.cmml" xref="S1.T1.73.73.73.1.m1.2.3.2"><cn id="S1.T1.73.73.73.1.m1.1.1.cmml" type="integer" xref="S1.T1.73.73.73.1.m1.1.1">2</cn><cn id="S1.T1.73.73.73.1.m1.2.2.cmml" type="integer" xref="S1.T1.73.73.73.1.m1.2.2">000</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.73.73.73.1.m1.2c">2,000</annotation><annotation encoding="application/x-llamapun" id="S1.T1.73.73.73.1.m1.2d">2 , 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.82.82.82.12">NeurIPS 2024</td>
<td class="ltx_td ltx_align_center" id="S1.T1.74.74.74.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.74.74.74.2.m1.1"><semantics id="S1.T1.74.74.74.2.m1.1a"><mo id="S1.T1.74.74.74.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.74.74.74.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.74.74.74.2.m1.1b"><times id="S1.T1.74.74.74.2.m1.1.1.cmml" xref="S1.T1.74.74.74.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.74.74.74.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.74.74.74.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.75.75.75.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.75.75.75.3.m1.1"><semantics id="S1.T1.75.75.75.3.m1.1a"><mo id="S1.T1.75.75.75.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.75.75.75.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.75.75.75.3.m1.1b"><times id="S1.T1.75.75.75.3.m1.1.1.cmml" xref="S1.T1.75.75.75.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.75.75.75.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.75.75.75.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.82.82.82.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.76.76.76.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.76.76.76.4.m1.1"><semantics id="S1.T1.76.76.76.4.m1.1a"><mo id="S1.T1.76.76.76.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.76.76.76.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.76.76.76.4.m1.1b"><times id="S1.T1.76.76.76.4.m1.1.1.cmml" xref="S1.T1.76.76.76.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.76.76.76.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.76.76.76.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.77.77.77.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.77.77.77.5.m1.1"><semantics id="S1.T1.77.77.77.5.m1.1a"><mo id="S1.T1.77.77.77.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.77.77.77.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.77.77.77.5.m1.1b"><times id="S1.T1.77.77.77.5.m1.1.1.cmml" xref="S1.T1.77.77.77.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.77.77.77.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.77.77.77.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.78.78.78.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.78.78.78.6.m1.1"><semantics id="S1.T1.78.78.78.6.m1.1a"><mo id="S1.T1.78.78.78.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.78.78.78.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.78.78.78.6.m1.1b"><times id="S1.T1.78.78.78.6.m1.1.1.cmml" xref="S1.T1.78.78.78.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.78.78.78.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.78.78.78.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.79.79.79.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.79.79.79.7.m1.1"><semantics id="S1.T1.79.79.79.7.m1.1a"><mo id="S1.T1.79.79.79.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.79.79.79.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.79.79.79.7.m1.1b"><times id="S1.T1.79.79.79.7.m1.1.1.cmml" xref="S1.T1.79.79.79.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.79.79.79.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.79.79.79.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.80.80.80.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.80.80.80.8.m1.1"><semantics id="S1.T1.80.80.80.8.m1.1a"><mo id="S1.T1.80.80.80.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.80.80.80.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.80.80.80.8.m1.1b"><times id="S1.T1.80.80.80.8.m1.1.1.cmml" xref="S1.T1.80.80.80.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.80.80.80.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.80.80.80.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.81.81.81.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.81.81.81.9.m1.1"><semantics id="S1.T1.81.81.81.9.m1.1a"><mo id="S1.T1.81.81.81.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.81.81.81.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.81.81.81.9.m1.1b"><times id="S1.T1.81.81.81.9.m1.1.1.cmml" xref="S1.T1.81.81.81.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.81.81.81.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.81.81.81.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.82.82.82.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.82.82.82.10.m1.1"><semantics id="S1.T1.82.82.82.10.m1.1a"><mo id="S1.T1.82.82.82.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.82.82.82.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.82.82.82.10.m1.1b"><times id="S1.T1.82.82.82.10.m1.1.1.cmml" xref="S1.T1.82.82.82.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.82.82.82.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.82.82.82.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.92.92.92">
<td class="ltx_td ltx_align_left" id="S1.T1.92.92.92.11">MME<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.83.83.83.1"><math alttext="2,374" class="ltx_Math" display="inline" id="S1.T1.83.83.83.1.m1.2"><semantics id="S1.T1.83.83.83.1.m1.2a"><mrow id="S1.T1.83.83.83.1.m1.2.3.2" xref="S1.T1.83.83.83.1.m1.2.3.1.cmml"><mn id="S1.T1.83.83.83.1.m1.1.1" xref="S1.T1.83.83.83.1.m1.1.1.cmml">2</mn><mo id="S1.T1.83.83.83.1.m1.2.3.2.1" xref="S1.T1.83.83.83.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.83.83.83.1.m1.2.2" xref="S1.T1.83.83.83.1.m1.2.2.cmml">374</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.83.83.83.1.m1.2b"><list id="S1.T1.83.83.83.1.m1.2.3.1.cmml" xref="S1.T1.83.83.83.1.m1.2.3.2"><cn id="S1.T1.83.83.83.1.m1.1.1.cmml" type="integer" xref="S1.T1.83.83.83.1.m1.1.1">2</cn><cn id="S1.T1.83.83.83.1.m1.2.2.cmml" type="integer" xref="S1.T1.83.83.83.1.m1.2.2">374</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.83.83.83.1.m1.2c">2,374</annotation><annotation encoding="application/x-llamapun" id="S1.T1.83.83.83.1.m1.2d">2 , 374</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.92.92.92.12">arXiv 2023</td>
<td class="ltx_td ltx_align_center" id="S1.T1.92.92.92.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.84.84.84.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.84.84.84.2.m1.1"><semantics id="S1.T1.84.84.84.2.m1.1a"><mo id="S1.T1.84.84.84.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.84.84.84.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.84.84.84.2.m1.1b"><times id="S1.T1.84.84.84.2.m1.1.1.cmml" xref="S1.T1.84.84.84.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.84.84.84.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.84.84.84.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.85.85.85.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.85.85.85.3.m1.1"><semantics id="S1.T1.85.85.85.3.m1.1a"><mo id="S1.T1.85.85.85.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.85.85.85.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.85.85.85.3.m1.1b"><times id="S1.T1.85.85.85.3.m1.1.1.cmml" xref="S1.T1.85.85.85.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.85.85.85.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.85.85.85.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.86.86.86.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.86.86.86.4.m1.1"><semantics id="S1.T1.86.86.86.4.m1.1a"><mo id="S1.T1.86.86.86.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.86.86.86.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.86.86.86.4.m1.1b"><times id="S1.T1.86.86.86.4.m1.1.1.cmml" xref="S1.T1.86.86.86.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.86.86.86.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.86.86.86.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.87.87.87.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.87.87.87.5.m1.1"><semantics id="S1.T1.87.87.87.5.m1.1a"><mo id="S1.T1.87.87.87.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.87.87.87.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.87.87.87.5.m1.1b"><times id="S1.T1.87.87.87.5.m1.1.1.cmml" xref="S1.T1.87.87.87.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.87.87.87.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.87.87.87.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.88.88.88.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.88.88.88.6.m1.1"><semantics id="S1.T1.88.88.88.6.m1.1a"><mo id="S1.T1.88.88.88.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.88.88.88.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.88.88.88.6.m1.1b"><times id="S1.T1.88.88.88.6.m1.1.1.cmml" xref="S1.T1.88.88.88.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.88.88.88.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.88.88.88.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.89.89.89.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.89.89.89.7.m1.1"><semantics id="S1.T1.89.89.89.7.m1.1a"><mo id="S1.T1.89.89.89.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.89.89.89.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.89.89.89.7.m1.1b"><times id="S1.T1.89.89.89.7.m1.1.1.cmml" xref="S1.T1.89.89.89.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.89.89.89.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.89.89.89.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.90.90.90.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.90.90.90.8.m1.1"><semantics id="S1.T1.90.90.90.8.m1.1a"><mo id="S1.T1.90.90.90.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.90.90.90.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.90.90.90.8.m1.1b"><times id="S1.T1.90.90.90.8.m1.1.1.cmml" xref="S1.T1.90.90.90.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.90.90.90.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.90.90.90.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.91.91.91.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.91.91.91.9.m1.1"><semantics id="S1.T1.91.91.91.9.m1.1a"><mo id="S1.T1.91.91.91.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.91.91.91.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.91.91.91.9.m1.1b"><times id="S1.T1.91.91.91.9.m1.1.1.cmml" xref="S1.T1.91.91.91.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.91.91.91.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.91.91.91.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.92.92.92.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.92.92.92.10.m1.1"><semantics id="S1.T1.92.92.92.10.m1.1a"><mo id="S1.T1.92.92.92.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.92.92.92.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.92.92.92.10.m1.1b"><times id="S1.T1.92.92.92.10.m1.1.1.cmml" xref="S1.T1.92.92.92.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.92.92.92.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.92.92.92.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.102.102.102">
<td class="ltx_td ltx_align_left" id="S1.T1.102.102.102.11">Video-MME <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.93.93.93.1"><math alttext="2,700" class="ltx_Math" display="inline" id="S1.T1.93.93.93.1.m1.2"><semantics id="S1.T1.93.93.93.1.m1.2a"><mrow id="S1.T1.93.93.93.1.m1.2.3.2" xref="S1.T1.93.93.93.1.m1.2.3.1.cmml"><mn id="S1.T1.93.93.93.1.m1.1.1" xref="S1.T1.93.93.93.1.m1.1.1.cmml">2</mn><mo id="S1.T1.93.93.93.1.m1.2.3.2.1" xref="S1.T1.93.93.93.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.93.93.93.1.m1.2.2" xref="S1.T1.93.93.93.1.m1.2.2.cmml">700</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.93.93.93.1.m1.2b"><list id="S1.T1.93.93.93.1.m1.2.3.1.cmml" xref="S1.T1.93.93.93.1.m1.2.3.2"><cn id="S1.T1.93.93.93.1.m1.1.1.cmml" type="integer" xref="S1.T1.93.93.93.1.m1.1.1">2</cn><cn id="S1.T1.93.93.93.1.m1.2.2.cmml" type="integer" xref="S1.T1.93.93.93.1.m1.2.2">700</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.93.93.93.1.m1.2c">2,700</annotation><annotation encoding="application/x-llamapun" id="S1.T1.93.93.93.1.m1.2d">2 , 700</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.102.102.102.12">CVPR 2025</td>
<td class="ltx_td ltx_align_center" id="S1.T1.94.94.94.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.94.94.94.2.m1.1"><semantics id="S1.T1.94.94.94.2.m1.1a"><mo id="S1.T1.94.94.94.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.94.94.94.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.94.94.94.2.m1.1b"><times id="S1.T1.94.94.94.2.m1.1.1.cmml" xref="S1.T1.94.94.94.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.94.94.94.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.94.94.94.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.95.95.95.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.95.95.95.3.m1.1"><semantics id="S1.T1.95.95.95.3.m1.1a"><mo id="S1.T1.95.95.95.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.95.95.95.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.95.95.95.3.m1.1b"><times id="S1.T1.95.95.95.3.m1.1.1.cmml" xref="S1.T1.95.95.95.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.95.95.95.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.95.95.95.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.102.102.102.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.96.96.96.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.96.96.96.4.m1.1"><semantics id="S1.T1.96.96.96.4.m1.1a"><mo id="S1.T1.96.96.96.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.96.96.96.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.96.96.96.4.m1.1b"><times id="S1.T1.96.96.96.4.m1.1.1.cmml" xref="S1.T1.96.96.96.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.96.96.96.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.96.96.96.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.97.97.97.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.97.97.97.5.m1.1"><semantics id="S1.T1.97.97.97.5.m1.1a"><mo id="S1.T1.97.97.97.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.97.97.97.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.97.97.97.5.m1.1b"><times id="S1.T1.97.97.97.5.m1.1.1.cmml" xref="S1.T1.97.97.97.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.97.97.97.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.97.97.97.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.98.98.98.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.98.98.98.6.m1.1"><semantics id="S1.T1.98.98.98.6.m1.1a"><mo id="S1.T1.98.98.98.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.98.98.98.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.98.98.98.6.m1.1b"><times id="S1.T1.98.98.98.6.m1.1.1.cmml" xref="S1.T1.98.98.98.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.98.98.98.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.98.98.98.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.99.99.99.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.99.99.99.7.m1.1"><semantics id="S1.T1.99.99.99.7.m1.1a"><mo id="S1.T1.99.99.99.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.99.99.99.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.99.99.99.7.m1.1b"><times id="S1.T1.99.99.99.7.m1.1.1.cmml" xref="S1.T1.99.99.99.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.99.99.99.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.99.99.99.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.100.100.100.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.100.100.100.8.m1.1"><semantics id="S1.T1.100.100.100.8.m1.1a"><mo id="S1.T1.100.100.100.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.100.100.100.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.100.100.100.8.m1.1b"><times id="S1.T1.100.100.100.8.m1.1.1.cmml" xref="S1.T1.100.100.100.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.100.100.100.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.100.100.100.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.101.101.101.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.101.101.101.9.m1.1"><semantics id="S1.T1.101.101.101.9.m1.1a"><mo id="S1.T1.101.101.101.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.101.101.101.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.101.101.101.9.m1.1b"><times id="S1.T1.101.101.101.9.m1.1.1.cmml" xref="S1.T1.101.101.101.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.101.101.101.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.101.101.101.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.102.102.102.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.102.102.102.10.m1.1"><semantics id="S1.T1.102.102.102.10.m1.1a"><mo id="S1.T1.102.102.102.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.102.102.102.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.102.102.102.10.m1.1b"><times id="S1.T1.102.102.102.10.m1.1.1.cmml" xref="S1.T1.102.102.102.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.102.102.102.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.102.102.102.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.112.112.112">
<td class="ltx_td ltx_align_left" id="S1.T1.112.112.112.11">MME-RealWorld <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03641v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.103.103.103.1"><math alttext="29,429" class="ltx_Math" display="inline" id="S1.T1.103.103.103.1.m1.2"><semantics id="S1.T1.103.103.103.1.m1.2a"><mrow id="S1.T1.103.103.103.1.m1.2.3.2" xref="S1.T1.103.103.103.1.m1.2.3.1.cmml"><mn id="S1.T1.103.103.103.1.m1.1.1" xref="S1.T1.103.103.103.1.m1.1.1.cmml">29</mn><mo id="S1.T1.103.103.103.1.m1.2.3.2.1" xref="S1.T1.103.103.103.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.103.103.103.1.m1.2.2" xref="S1.T1.103.103.103.1.m1.2.2.cmml">429</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.103.103.103.1.m1.2b"><list id="S1.T1.103.103.103.1.m1.2.3.1.cmml" xref="S1.T1.103.103.103.1.m1.2.3.2"><cn id="S1.T1.103.103.103.1.m1.1.1.cmml" type="integer" xref="S1.T1.103.103.103.1.m1.1.1">29</cn><cn id="S1.T1.103.103.103.1.m1.2.2.cmml" type="integer" xref="S1.T1.103.103.103.1.m1.2.2">429</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.103.103.103.1.m1.2c">29,429</annotation><annotation encoding="application/x-llamapun" id="S1.T1.103.103.103.1.m1.2d">29 , 429</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.112.112.112.12">ICLR 2025</td>
<td class="ltx_td ltx_align_center" id="S1.T1.112.112.112.13">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.104.104.104.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.104.104.104.2.m1.1"><semantics id="S1.T1.104.104.104.2.m1.1a"><mo id="S1.T1.104.104.104.2.m1.1.1" mathcolor="#FF0000" xref="S1.T1.104.104.104.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.104.104.104.2.m1.1b"><times id="S1.T1.104.104.104.2.m1.1.1.cmml" xref="S1.T1.104.104.104.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.104.104.104.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.104.104.104.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.105.105.105.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.105.105.105.3.m1.1"><semantics id="S1.T1.105.105.105.3.m1.1a"><mo id="S1.T1.105.105.105.3.m1.1.1" mathcolor="#FF0000" xref="S1.T1.105.105.105.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.105.105.105.3.m1.1b"><times id="S1.T1.105.105.105.3.m1.1.1.cmml" xref="S1.T1.105.105.105.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.105.105.105.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.105.105.105.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.106.106.106.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.106.106.106.4.m1.1"><semantics id="S1.T1.106.106.106.4.m1.1a"><mo id="S1.T1.106.106.106.4.m1.1.1" mathcolor="#FF0000" xref="S1.T1.106.106.106.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.106.106.106.4.m1.1b"><times id="S1.T1.106.106.106.4.m1.1.1.cmml" xref="S1.T1.106.106.106.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.106.106.106.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.106.106.106.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.107.107.107.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.107.107.107.5.m1.1"><semantics id="S1.T1.107.107.107.5.m1.1a"><mo id="S1.T1.107.107.107.5.m1.1.1" mathcolor="#FF0000" xref="S1.T1.107.107.107.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.107.107.107.5.m1.1b"><times id="S1.T1.107.107.107.5.m1.1.1.cmml" xref="S1.T1.107.107.107.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.107.107.107.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.107.107.107.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.108.108.108.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.108.108.108.6.m1.1"><semantics id="S1.T1.108.108.108.6.m1.1a"><mo id="S1.T1.108.108.108.6.m1.1.1" mathcolor="#FF0000" xref="S1.T1.108.108.108.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.108.108.108.6.m1.1b"><times id="S1.T1.108.108.108.6.m1.1.1.cmml" xref="S1.T1.108.108.108.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.108.108.108.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.108.108.108.6.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.109.109.109.7"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.109.109.109.7.m1.1"><semantics id="S1.T1.109.109.109.7.m1.1a"><mo id="S1.T1.109.109.109.7.m1.1.1" mathcolor="#FF0000" xref="S1.T1.109.109.109.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.109.109.109.7.m1.1b"><times id="S1.T1.109.109.109.7.m1.1.1.cmml" xref="S1.T1.109.109.109.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.109.109.109.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.109.109.109.7.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.110.110.110.8"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.110.110.110.8.m1.1"><semantics id="S1.T1.110.110.110.8.m1.1a"><mo id="S1.T1.110.110.110.8.m1.1.1" mathcolor="#FF0000" xref="S1.T1.110.110.110.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.110.110.110.8.m1.1b"><times id="S1.T1.110.110.110.8.m1.1.1.cmml" xref="S1.T1.110.110.110.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.110.110.110.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.110.110.110.8.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.111.111.111.9"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.111.111.111.9.m1.1"><semantics id="S1.T1.111.111.111.9.m1.1a"><mo id="S1.T1.111.111.111.9.m1.1.1" mathcolor="#FF0000" xref="S1.T1.111.111.111.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.111.111.111.9.m1.1b"><times id="S1.T1.111.111.111.9.m1.1.1.cmml" xref="S1.T1.111.111.111.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.111.111.111.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.111.111.111.9.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.112.112.112.10"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.112.112.112.10.m1.1"><semantics id="S1.T1.112.112.112.10.m1.1a"><mo id="S1.T1.112.112.112.10.m1.1.1" mathcolor="#FF0000" xref="S1.T1.112.112.112.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.112.112.112.10.m1.1b"><times id="S1.T1.112.112.112.10.m1.1.1.cmml" xref="S1.T1.112.112.112.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.112.112.112.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.112.112.112.10.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.113.113.113">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.2">MME-Unify (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.1"><math alttext="4,104" class="ltx_Math" display="inline" id="S1.T1.113.113.113.1.m1.2"><semantics id="S1.T1.113.113.113.1.m1.2a"><mrow id="S1.T1.113.113.113.1.m1.2.3.2" xref="S1.T1.113.113.113.1.m1.2.3.1.cmml"><mn id="S1.T1.113.113.113.1.m1.1.1" xref="S1.T1.113.113.113.1.m1.1.1.cmml">4</mn><mo id="S1.T1.113.113.113.1.m1.2.3.2.1" xref="S1.T1.113.113.113.1.m1.2.3.1.cmml">,</mo><mn id="S1.T1.113.113.113.1.m1.2.2" xref="S1.T1.113.113.113.1.m1.2.2.cmml">104</mn></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.113.113.113.1.m1.2b"><list id="S1.T1.113.113.113.1.m1.2.3.1.cmml" xref="S1.T1.113.113.113.1.m1.2.3.2"><cn id="S1.T1.113.113.113.1.m1.1.1.cmml" type="integer" xref="S1.T1.113.113.113.1.m1.1.1">4</cn><cn id="S1.T1.113.113.113.1.m1.2.2.cmml" type="integer" xref="S1.T1.113.113.113.1.m1.2.2">104</cn></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.113.113.113.1.m1.2c">4,104</annotation><annotation encoding="application/x-llamapun" id="S1.T1.113.113.113.1.m1.2d">4 , 104</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.3">2025</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.7">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.8">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.9">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.10">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.11">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.12">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.113.113.113.13">✓</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the MME-Unify benchmark with other existing multimodal benchmarks.  It details the number of questions and year of publication for each benchmark.  More importantly, it shows which tasks each benchmark includes. Tasks covered are: Single Image Perception and Understanding (SIPU), Multiple & Interleaved Image-Text Understanding (MITIU), Video Perception & Understanding (VPU), Conditional Image-to-Video Generation (CIVG), Fine-grained Image Reconstruction (FIR), Text-Guided Image Editing (TIE), Text-to-Image Generation (TIG), Text-to-Video Generation (TVG), Video Prediction (VP), and Unified Tasks (UT). A checkmark indicates the task is included in the benchmark, while an 'X' indicates it is not.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of MME-U and other Benchmark. SIPU: Single Image Perception & Understanding; MITIU: Multiple & Interleaved Image-Text Understanding; VPU: Video Perception & Understanding; CIVG: Conditional Image-to-Video Generation; FIR: Fine-grained Image Reconstruction; TIE: Text-Guided Image Editing; TIG: Text-to-Image Generation; TVG: Text-to-Video Generation; VP: Video Prediction; UT: Unified Task.
> </details>





### In-depth insights


#### MME-Unify
**MME-Unify** serves as a centralized evaluation framework for U-MLLMs. It offers a structured approach to assess multimodal understanding, generation, and the synergy between them. **Data collection**, question annotation, and evaluation strategies are defined. The benchmark categorizes U-MLLM capabilities into three core areas: **multimodal understanding**, **multimodal generation**, and a novel **unify capability**, thus creating a holistic view of a model's strengths and weaknesses. It aims to standardize evaluation, providing a common ground for comparison that was previously lacking. It addresses inconsistency in benchmarks and evaluation metrics across studies by standardizing formats and normalizing evaluation scores.The framework facilitates fair comparison and progress tracking.

#### Multi-Modal Eval
**Multi-modal evaluation** presents significant challenges due to the diverse nature of data and tasks involved. Creating unified metrics is difficult, as modalities like images, text, and video require different evaluation approaches. Furthermore, assessing the coherence and interaction between modalities is critical but often overlooked. **Effective multi-modal eval** demands benchmarks that cover a wide range of tasks, from basic perception to complex reasoning, and incorporate both quantitative metrics and qualitative assessments to fully capture model capabilities and limitations.

#### Unify:  5 Tasks
The research paper introduces a novel benchmark, MME-Unify (MME-U), designed to comprehensively evaluate unified multimodal large language models (U-MLLMs) across understanding, generation, and mixed-modality generation capabilities. To rigorously assess how effectively models can leverage both their understanding and generation, the benchmark incorporates five carefully designed tasks. **Image Editing and Explaining**, assesses a model's ability to understand complex instructions, perform corresponding image edits, and offer clear explanations, emphasizing reasoning and execution. **Common Sense Question Answering**, requires models to provide the correct image and choose the matching answer. **SpotDiff**, demands models identify and illustrate differences between images. **Auxiliary Lines**, checks models to construct auxiliary lines to geometry problems. **Visual CoT**, tests step by step visualization of the maze and reasoning. These tasks provide a comprehensive evaluation framework for U-MLLMs.

#### Generative Model
Generative models, as depicted in the research paper, exhibit diverse performance. **Closed-source models like GPT-40 and Gemini 2.0 Flash lead in instruction comprehension and image creation, surpassing proprietary generative models.** This underscores their advanced generative capabilities. However, the paper notes a general challenge in comprehensively evaluating these models due to a lack of standardized benchmarks. U-MLLMs like EMU3 and HermesFlow show promising results, often exceeding basic models in image generation. Despite this, the paper underscores a significant gap in video generation performance among current open-source U-MLLMs. These models, while showcasing potential in image-related tasks, struggle to generate high-quality, temporally coherent videos, highlighting areas needing improvement.

#### Vision Language Model
**Vision-Language Models (VLMs)** represent a paradigm shift in AI, bridging the gap between visual perception and natural language understanding. These models aim to process and generate information across both modalities, enabling machines to perform tasks that require a deeper understanding of the world. The core challenge in VLMs lies in effectively aligning the distinct representations of images and text into a shared embedding space. This alignment allows for tasks such as image captioning, visual question answering, and text-based image generation. **Current research emphasizes enhancing the cross-modal interaction** to facilitate more nuanced reasoning and generation capabilities. VLMs also show promise in areas like robotics, where they can interpret visual scenes and respond with appropriate linguistic instructions. However, challenges remain in improving robustness, reducing bias, and enhancing the models' ability to handle complex, real-world scenarios. **Future directions** include exploring novel architectures and training methodologies to create VLMs that are more versatile, reliable, and ethically aligned.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/leadboard.png)

> 🔼 This leaderboard shows the performance rankings of twelve different unified multimodal large language models (U-MLLMs) on the MME-Unify benchmark.  The models are ranked by their overall MME-U score, a metric that combines performance across multiple tasks assessing multimodal understanding, generation, and unified capabilities. The table shows that Gemini2.0-Flash achieves the highest score.
> <details>
> <summary>read the caption</summary>
> (b) Leaderboard.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/teaser.png)

> 🔼 Figure 1 presents a comprehensive overview of the MME-Unify (MME-U) benchmark, showcasing its diverse tasks and the leaderboard of participating models.  Part (a) illustrates the breadth of tasks, ranging from basic single-modal understanding (e.g., image recognition, question answering) to complex mixed-modality generation tasks (e.g., generating auxiliary lines for geometrical reasoning or creating images based on complex instructions). This emphasizes the benchmark's capacity to assess the unified capabilities of multimodal large language models.  Part (b) displays the leaderboard, ranking 12 unified multimodal large language models (U-MLLMs) based on their performance across all MME-U tasks, providing a clear picture of model strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Figure 1: A comprehensive visualization of the diverse tasks in MME-U and the leaderboard. The figure (a) illustrates the wide-ranging nature of the tasks covered in our benchmark, which spans from traditional understanding tasks to complex mixed-modality generation challenges. Additionally, the leaderboard (b) highlights the performance rankings of various U-MLLMs in our benchmark.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Main.png)

> 🔼 Figure 2 showcases a comparison of image generation results across various models, highlighting the capabilities of unified multimodal large language models (U-MLLMs).  It presents examples of complex image generation tasks, such as creating detailed scenes based on extensive instructions.  The models tested include both open-source U-MLLMs (DeepSeek-Janus Flow and EMU3), closed-source U-MLLMs (GPT-4o and Gemini-2), and proprietary models (DALL-E 3).  The results reveal that the closed-source U-MLLMs produce images that are superior to those produced by the proprietary models and show a considerably greater advantage over the images created by open-source models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Complex instruction-based image generation comparison of results from open-source U-MLLMs (DeepSeek-Janus Flow, EMU3), closed-source U-MLLMs (GPT-4o, Gemini-2), and proprietary models (DALLE-3). The closed-source U-MLLMs have demonstrated abilities surpassing proprietary generation models, with a significantly larger gap compared to open-source models.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/VCoT_Accuracy/action_accuracy_chart.png)

> 🔼 This figure illustrates the MME-Unify benchmark's structure, which evaluates unified multimodal large language models (U-MLLMs).  It's divided into three main sections: Multimodal Understanding, Multimodal Generation, and Unify Capability.  Each section includes multiple subtasks designed to test different aspects of U-MLLM capabilities.  The Unify Capability section is further broken down into five specific tasks that assess how well U-MLLMs can integrate understanding and generation.  For each unify task, the model receives an image, question, and multiple-choice text options. It must select the correct text option and generate a corresponding image. The correctness of the text selection is straightforward.  The generated image is evaluated by comparing its CLIP score to the CLIP score of the correct answer image.  If the generated image has the highest CLIP score, it's deemed correct.
> <details>
> <summary>read the caption</summary>
> Figure 3: Diagram of our MME-Unify. Our benchmark consists of 3 main domains, encompassing 15 subtasks to comprehensively evaluate U-MLLMs’ understanding, generation, and unified capabilities. Specifically, each unify task includes at least one question, an input image, multiple text choices, and image choices. The image choices consist of a correct answer image and a set of manually crafted negative samples. During the evaluation process, we input the image, question, and text options, and the U-MLLMs are required to select the correct text answer and generate an image. The text answer is evaluated by matching it with the correct answer, while the generated image is compared with the constructed image choices. If the CLIP score between the generated image and the correct answer image is the highest, it is considered correct; otherwise, it is deemed incorrect.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/VCoT_Accuracy/coordinate_accuracy.chart.png)

> 🔼 The figure shows the accuracy of different models on the action prediction subtask of the Visual CoT task across different steps.  The x-axis represents the step number in the maze navigation task, and the y-axis represents the accuracy.  The lines represent different models, allowing a comparison of their performance on action prediction at each step.
> <details>
> <summary>read the caption</summary>
> (a) Action Accuracy.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/VCoT_Accuracy/image_accuracy_chart.png)

> 🔼 The figure shows the accuracy of coordinate prediction across different steps in the Visual CoT task. The x-axis represents the steps involved in the task, and the y-axis represents the accuracy of coordinate prediction. The accuracy is calculated as the proportion of correctly predicted coordinates for each step across all samples. The figure shows that coordinate accuracy decreases as the number of steps increases.
> <details>
> <summary>read the caption</summary>
> (b) Coordinate Accuracy.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_gt.png)

> 🔼 The figure shows the accuracy of image generation across different steps in the Visual CoT task.  The x-axis represents the step number, and the y-axis represents the accuracy in percentage.  Multiple lines are displayed, each showing the accuracy of a different model.  This visualizes how the models' accuracy in generating images changes as the task progresses through multiple steps.
> <details>
> <summary>read the caption</summary>
> (c) Image Accuracy.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_dalle2.png)

> 🔼 This figure presents a detailed breakdown of accuracy across three key aspects—action, location, and image—within the Visual CoT task.  Each subplot (a, b, c) displays the accuracy for a specific aspect over increasing numbers of steps in the task. This illustrates how model accuracy changes as the complexity (number of steps) of the task increases, shedding light on the model's performance over time in each of the three considered aspects.
> <details>
> <summary>read the caption</summary>
> Figure 4: Accuracy distribution across different dimensions on visual cot task. (a) action, (b) location, and (c) image.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_dalle3.png)

> 🔼 This figure shows the ground truth image used for comparison in a image generation task. The image depicts a man standing in a park, wearing a white t-shirt with the number 28 on it, grey shorts, grey socks and black shoes.  In the background there is a 'Run for Rights' banner, other people in the park, some sitting on benches, and a bicycle leaning against a tree. This image serves as the reference for evaluating the quality and accuracy of image generation models.
> <details>
> <summary>read the caption</summary>
> (a) Ground Truth.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/genemi.png)

> 🔼 The image shows the results generated by the DALL-E 2 model in response to a complex instruction-based image generation task.  The task involved generating an image based on a detailed description, demonstrating the model's capabilities in image creation and comprehension of natural language instructions. The specific prompt and the model's output can be found in the paper.
> <details>
> <summary>read the caption</summary>
> (b) DALLE-2.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_emu3.png)

> 🔼 The image shows a result of instruction-based image generation by DALL-E 3, a proprietary model. The image depicts an astronaut standing on an alien planet, gazing at a breathtaking sky filled with twin moons and vibrant auroras.  A mission flag planted beside them reads 'WELCOME TO THE NEW ERA'. This is an example of a complex instruction followed successfully by a large language model (LLM), demonstrating its impressive generative capabilities.  This image is shown as part of a comparison of several different LLMs in terms of image generation, showcasing the varied abilities of different models to handle detailed and complex instructions.
> <details>
> <summary>read the caption</summary>
> (c) DALLE-3.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_gill.png)

> 🔼 The image showcases the results produced by the Gemini2.0-flash-exp model for a complex instruction-based image generation task.  The model is tasked with generating an image from a detailed textual description, aiming to assess the model's ability to comprehend and visually represent complex scenes and objects. The image generated by Gemini2.0-flash-exp demonstrates the model's performance in this task, showing its ability to handle intricate details and complex instructions, highlighting its strong generative capabilities. This specific example is part of a larger comparison across multiple models in the paper, illustrating a high level of visual detail and accuracy in the generated output. 
> <details>
> <summary>read the caption</summary>
> (d) Gemini2.0-flash-exp.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_hflow.png)

> 🔼 The image shows the results produced by the EMU3 model for a complex instruction-based image generation task.  The model was instructed to generate an image based on a detailed text prompt.  This image is part of a comparative study assessing the image generation capabilities of different multimodal large language models (MLLMs). The image's quality, detail, and faithfulness to the prompt description can be analyzed to evaluate the EMU3 model's performance.
> <details>
> <summary>read the caption</summary>
> (e) EMU3.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_janus_pro.png)

> 🔼 The figure shows the results of GILL model in the fine-grained image reconstruction task. The input is a degraded image, and the model is tasked to reconstruct the image with high-fidelity, maintaining the details, textures, edges, and structural integrity.
> <details>
> <summary>read the caption</summary>
> (f) GILL.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_minigpt5.png)

> 🔼 The figure shows the result of the Text-to-Image Generation task performed by HermersFlow model. The prompt was: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The image generated by HermersFlow shows a man in a park with a banner, but the details are not as accurate as those generated by other models. For instance, the number 28 on the t-shirt is not clearly visible, and the overall quality of the image is relatively low compared to the other models.
> <details>
> <summary>read the caption</summary>
> (g) HermersFlow.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_mio.png)

> 🔼 The figure shows the results from Janus-Pro model in the text-to-image generation task. The model was given the following prompt: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The generated image attempts to capture these details, showing a man in a park, but some of the specifics, like the number 28 on the shirt and the bicycle, may not be as clear or accurate as in other models.
> <details>
> <summary>read the caption</summary>
> (h) Janus-Pro.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_showo.png)

> 🔼 The figure shows the result of the text-to-image generation task performed by MiniGPT-5. The prompt was: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.”  The image generated by MiniGPT-5 shows a park scene with people, a bicycle, and a banner, but the details like the man's clothing and the number on his shirt are not accurately depicted, indicating room for improvement in the model’s image generation accuracy.
> <details>
> <summary>read the caption</summary>
> (i) MiniGPT-5.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/t2i/t2i_vilau.png)

> 🔼 The image shows the result of a text-to-image generation task performed by the MIO-Instruct model. The prompt was: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The image generated by the MIO-Instruct model depicts a realistic scene consistent with the prompt.  The level of detail, the overall composition, and the degree of photorealism can be compared to the results produced by other models (shown in the same figure) to assess the relative strengths and weaknesses of MIO-Instruct in terms of image generation capabilities.
> <details>
> <summary>read the caption</summary>
> (j) MIO-Instruct.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Visualization.png)

> 🔼 The figure shows the results from the Show-O model in the text-to-image generation task.  The model was given the prompt: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.”  The image generated by Show-O is compared to the ground truth and the images generated by other models to illustrate the model’s ability to generate realistic and detailed images based on textual descriptions. The image shows a group of people in a park, although the visual quality and attention to detail may differ compared to the ground truth and other models' results.
> <details>
> <summary>read the caption</summary>
> (k) Show-O.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Generation_Visualization.png)

> 🔼 The figure shows the results from the VILA-U model in the text-to-image generation task, where the model is asked to generate an image from a textual description. The description is: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The generated image by VILA-U appears to show a man in a park with a banner, though certain details are not entirely accurate compared to the description. It shows a lack of attention to detail compared to other models. This suggests that VILA-U might need improvements in generating images consistent with the input text descriptions.
> <details>
> <summary>read the caption</summary>
> (l) Vila-u
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/subtask_disturbution.png)

> 🔼 Figure 5 presents a comparison of image generation results from different models given the same text prompt:  A man is in a park with a 'Run for Rights' banner. He's wearing a white shirt with '28' on it, grey shorts, grey socks, and black shoes.  Other park details include people sitting on benches, and a bicycle leaning against a tree. The figure showcases how various models interpret and render this detailed description, highlighting differences in image quality, detail accuracy, and overall fidelity to the prompt.
> <details>
> <summary>read the caption</summary>
> Figure 5: The generated results from various models in the text-to-image generation task, based on the following text prompt: A man is standing in a park with a ’Run for Rights’ banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/step_distribution_chart.png)

> 🔼 Figure 6 presents example questions from the Multimodal Understanding section of the MME-Unify benchmark.  It showcases the diversity of tasks included in the benchmark, spanning single-image perception and reasoning, multi-image and interleaved image-text understanding, and video perception and reasoning.  Each example visually illustrates the type of input provided to the model (image or video) and the types of questions asked of the model, demonstrating the complexity of understanding implicit and explicit relationships within different modalities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Data samples from understanding task, which includes single-image perception and reasoning, multi-image and image-text interlaced perception and reasoning, video perception and reasoning, etc.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Construct_Process.png)

> 🔼 Figure 7 presents example outputs from various multimodal generation tasks included in the MME-Unify benchmark.  It showcases the benchmark's capacity to evaluate different types of image and video generation tasks.  Specifically, examples are shown for: generating an image from text, editing an existing image based on text instructions, reconstructing a high-resolution image from a low-resolution version, generating a video from an image and text, generating a video from only text, and predicting future frames in a video sequence.
> <details>
> <summary>read the caption</summary>
> Figure 7: Data samples from generation task. It includes subtasks such as Text-to-Image Generation, Text-to-Image Editing, Fine-Grained Image Reconstruction, Text-to-Video Generation, conditional Image-to-Video Generation, and Video Prediction.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_1.png)

> 🔼 Figure 8 presents a comprehensive breakdown of real-world scenarios included within the Understanding Task of the MME-Unify benchmark.  It visually represents the proportion of the total dataset dedicated to each scenario.  The chart showcases the diverse range of tasks, such as object recognition, scene understanding, and action recognition, that are essential for robust multimodal understanding.  The relative sizes of the sections in the chart directly reflect the weighting of these scenarios in the overall dataset used for the Understanding Task.
> <details>
> <summary>read the caption</summary>
> Figure 8: An overview of real-life scenarios included in the Understanding Task. The scores in the bars represent the proportion of the number of samples of the corresponding scenario to the total number of samples of the task.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_2.png)

> 🔼 This figure shows the distribution of the number of steps needed to solve mazes of varying sizes (3x3, 4x4, and 5x5) in the Visual Chain of Thought (Visual CoT) task.  The x-axis represents the maze size, and the y-axis represents the number of steps. Each bar represents the number of mazes requiring a certain number of steps to be solved. The data shows that larger mazes generally require more steps to solve.
> <details>
> <summary>read the caption</summary>
> Figure 9: Distribution of steps required for samples of mazes of different sizes in the Visual CoT task.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_3.png)

> 🔼 Figure 10 illustrates the detailed construction process for the five unified tasks within the MME-Unify benchmark.  Each subtask's construction process is broken down step-by-step, showing how inputs (questions, images, etc.), processing steps, and outputs (answers, edited images, etc.) are handled.  Specifically, it displays examples of: (a) Common Sense Question Answering:  How questions are framed and images are generated for common sense reasoning. (b) Image Editing and Explaining:  The steps involved in understanding an edit instruction, modifying an image, and then explaining the changes. (c) SpotDiff:  The process of identifying and extracting differences between two similar images. (d) Auxiliary Lines:  Solving geometry problems using auxiliary lines, including the creation of the line and problem solving steps. (e) Visual CoT (Chain of Thought):  The step-by-step process involved in solving a maze, including decision-making at each step.
> <details>
> <summary>read the caption</summary>
> Figure 10: The overall construction process for five unified tasks, which consists of (a) Common Sense Question Answering, (b) Image Editing and Explaining, (c)SpotDiff, (d) Auxiliary Lines, and (e) Visual CoT.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_4.png)

> 🔼 This figure shows the system prompt used for the Common Sense Question Answering task within the MME-Unify benchmark.  The prompt instructs the AI model to answer a common sense question by selecting the correct answer from multiple choices and then generating an image that visually represents that answer.  The prompt details the input data (question and choices), output requirements (answer selection and image generation), processing steps (understanding, evaluating, selecting, generating, verifying), and provides an example question, choices, and expected output.  The example clearly shows the desired format for both the text-based answer and the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 11: System prompt for Common Sense Question Answering task.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_5.png)

> 🔼 This figure shows the system prompt used for the Image Editing and Explaining task within the MME-Unify benchmark.  The prompt instructs the AI model to act as an image editing assistant, modifying a provided image based on a given natural language instruction. The model must then generate a visual description explaining how the modification integrates into the scene and produce the edited image itself.  The prompt details specific requirements for the output, including clarity, realism, coherence, and preservation of the original image's visual qualities. An example question and desired output are also provided.
> <details>
> <summary>read the caption</summary>
> Figure 12: Systemp prompt for Image Editing and Explaining task
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/System_Prompt_for_Unify/System_Prompt_6.png)

> 🔼 This figure presents the system prompt used for the SpotDiff task within the MME-Unify benchmark.  The prompt instructs the AI model to identify the differences between two similar images. It requires the model to: 1) Compare the two input images and determine the total number of differences. 2) Choose the correct answer based on the multiple-choice options provided. 3) Extract and display the differing image regions on a uniform white background, preserving the original details of these regions. The prompt also specifies the input and output formats, including an example of each, and outlines the necessary processing steps. The prompt highlights several key requirements, such as accurately selecting the correct answer, ensuring the extracted regions are clearly displayed on a clean white background, and preserving the original structural information within those extracted regions.
> <details>
> <summary>read the caption</summary>
> Figure 13: System prompt for SpotDiff task.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/vcot/vcot_anole7b.png)

> 🔼 This figure shows the system prompt used for the Auxiliary Lines task within the MME-Unify benchmark.  The prompt instructs the AI model to solve geometry problems by analyzing a given question, image (geometric diagram), and multiple-choice answers. The model should draw auxiliary lines (like perpendiculars, bisectors, or diagonals) onto the diagram to aid in problem-solving, maintaining the diagram's original structure. The model then identifies the correct answer based on problem conditions and outputs both the selected answer and the modified diagram with the added auxiliary lines. An example question and its associated diagram are included to demonstrate the required input and output format. The prompt emphasizes using geometric reasoning and ensuring line clarity and logical placement within the constraints of the problem.
> <details>
> <summary>read the caption</summary>
> Figure 14: System prompt for Auxiliary Lines task.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/vcot/vcot_gill.png)

> 🔼 This figure shows the system prompt used for the first step of the Visual CoT task in the MME-Unify benchmark.  The Visual CoT task involves a grid-based puzzle game where the agent must navigate to a goal while avoiding holes, following specific movement rules, and providing the action, location, and updated grid map image at each step.  The prompt details the game rules, output format, and provides an initial game map.
> <details>
> <summary>read the caption</summary>
> Figure 15: Systemp prompt for Visual CoT task in the first step.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/vcot/vcot_seed.png)

> 🔼 This figure shows the system prompt used for the Visual CoT task after the first step has been completed.  It provides a detailed description of the game's setup, rules, and the expected format of the model's response. The prompt includes information on the game's objective (reach the target while avoiding holes), the grid map (3x3), the movement rules, the expected output (action, location, and image), and includes the initial grid map shown to the model. Importantly, it also incorporates the history information from the preceding step in the sequence, prompting the model to consider this prior information when determining the next move. The inclusion of history ensures that the model is making decisions in a sequential, step-by-step manner.
> <details>
> <summary>read the caption</summary>
> Figure 16: Systemp prompt for Visual CoT task after first step.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/vcot/vcot_4.png)

> 🔼 This figure shows the intermediate process images generated by Anole, one of the multimodal large language models (MLLMs), during the Visual Composition Task (VCoT).  Specifically, it displays the model's intermediate outputs for the task, which requires the model to guide a character through a maze, one square at a time, generating images and actions at each step. The visualization demonstrates Anole's approach to problem-solving and step-by-step reasoning in the task.
> <details>
> <summary>read the caption</summary>
> (a) Anole.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/vcot/vcot_gemini.png)

> 🔼 This figure shows the intermediate results from the GILL model during the Visual CoT task.  It is one of several examples illustrating how different models approach this task's multi-step image generation and decision-making process.  The image displays the model's intermediate outputs for each step in navigating a maze, showing how GILL's visual generation and reasoning processes progress through the task.
> <details>
> <summary>read the caption</summary>
> (b) GILL.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/Src.png)

> 🔼 Figure 17 presents intermediate process images generated by different models during the Visual CoT task.  The subfigure (c) specifically showcases SEED's approach to visual composition.  It highlights the unique visual patterns and composition strategies employed by SEED as it works through the multi-step problem-solving process within the Visual CoT task. The image is a part of a sequence showing the process of generating the final answer. Comparing this image to the other models' progress would highlight differences in problem-solving approaches and visual output.
> <details>
> <summary>read the caption</summary>
> (c) SEED.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/OmniGen.png)

> 🔼 Figure 18(d) presents the results produced by the MiniGPT-5 model for the fine-grained image reconstruction task.  The model attempts to reconstruct a high-fidelity image from a degraded input, aiming to preserve detailed features, textures, and structural integrity while maintaining perceptual realism.  The generated image showcases the model's ability (or lack thereof) to effectively reconstruct the original image from the degraded input, highlighting its strengths and weaknesses in capturing fine-grained details, preserving textural elements, and maintaining overall visual coherence.
> <details>
> <summary>read the caption</summary>
> (d) MiniGPT-5.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/GILL.png)

> 🔼 The figure shows the intermediate process images generated by Gemini2.0-flash-exp model in the Visual CoT task.  The model demonstrates its approach to processing and generating visual content during the maze navigation task, illustrating a step in its decision-making process. This specific image displays one step within the multi-step maze solving process.
> <details>
> <summary>read the caption</summary>
> (e) Gemini2.0-flash-exp.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/MiniGPT5.png)

> 🔼 Figure 17 showcases intermediate steps of visual reasoning in the Visual Composition Task (VCoT).  Five different unified multimodal large language models (U-MLLMs) are compared: Anole, GILL, SEED-LLaMA, MiniGPT-5, and Gemini 2.0-flash-exp.  Each model's unique approach to problem-solving is visually represented through a series of intermediate images generated during the task. The figure highlights the diversity in strategies used by these models to integrate visual information and generate the final output.
> <details>
> <summary>read the caption</summary>
> Figure 17: Intermediate process images generated by different models in VCoT. The figure illustrates the intermediate outputs of various models in the VCoT (Visual Composition Task), showing distinct approaches in processing and generating visual content. The models shown include (a) Anole, (b) GILL, (c) SEED, (d) MiniGPT-5, and (e) Gemini-2.0-flash-exp, each producing unique visual patterns and compositions.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/Anole.png)

> 🔼 This figure shows the original image used as input for a fine-grained image reconstruction task. The goal of this task is to evaluate the model's ability to reconstruct high-fidelity images from degraded inputs, preserving details such as textures and structural integrity.
> <details>
> <summary>read the caption</summary>
> (a) Source Image.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/SEED-LLaMA.png)

> 🔼 The image is a result from OmniGen model in the text-to-image generation task.  The prompt is: A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.
> <details>
> <summary>read the caption</summary>
> (b) OmniGen.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/MIO-7B.png)

> 🔼 The figure shows the intermediate results produced by the GILL model during the Visual CoT task.  The Visual CoT task involves navigating a maze and generating corresponding images at each step. This image displays the intermediate state created by the GILL model during that process.
> <details>
> <summary>read the caption</summary>
> (c) GILL.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Fine_Grained_Examples/Gemini.png)

> 🔼 Figure 18(d) presents the results of MiniGPT-5 model's performance on the fine-grained image reconstruction task. The model is given a degraded input image and asked to reconstruct it with high fidelity, preserving fine-grained details, textures, and structural integrity while maintaining visual coherence and natural realism.  The reconstructed image generated by MiniGPT-5 shows a significant deviation from the original image, indicating the model struggles to effectively reconstruct fine details and maintain visual fidelity.
> <details>
> <summary>read the caption</summary>
> (d) MiniGPT-5.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/Src.png)

> 🔼 This figure shows the intermediate process images generated by the Anole model in the Visual CoT task. The Visual CoT (Visual Composition Task) evaluates the model's ability to perform step-by-step decision-making in a maze navigation task. The figure illustrates the intermediate outputs of the Anole model in this process, showing a distinct approach in processing and generating visual content. Each image in the sequence represents a step in the maze-solving process.
> <details>
> <summary>read the caption</summary>
> (e) Anole.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/GT.png)

> 🔼 The figure shows the results from SEED-LLaMA model in the fine-grained image reconstruction task.  The model is given a degraded input image and asked to reconstruct it with high fidelity, preserving fine details, textures, and structural integrity. The reconstructed image demonstrates the model's capability to recover details and maintain overall visual coherence.
> <details>
> <summary>read the caption</summary>
> (f) SEED-LLaMA.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/GILL.png)

> 🔼 The image showcases the result of the image generation task performed by the MIO-Instruct model.  The input prompt describes a man in a park, wearing specific clothing and near a banner, with other details of the park and surrounding people. The generated image aims to visualize this scene.
> <details>
> <summary>read the caption</summary>
> (g) MIO-Instruct.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/MiniGPT5.png)

> 🔼 The image showcases the results produced by the Gemini2.0-flash-exp model for the text-to-image generation task. The model was provided with a detailed prompt describing a man standing in a park with a specific banner, clothing, and surroundings. The generated image displays the model's ability to interpret and create a visual representation based on the given textual input, showcasing its capabilities in multimodal generation.
> <details>
> <summary>read the caption</summary>
> (h) Gemini2.0-flash-exp.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/Anole.png)

> 🔼 Figure 18 showcases the outcomes of several models tasked with reconstructing images from degraded sources. The models were instructed to maintain fine-grained details, textures, and structural integrity while achieving perceptual realism.  The figure visually compares the original image with the reconstructions generated by each model, offering a side-by-side comparison to illustrate the effectiveness of different approaches in recovering image fidelity from damaged or low-quality input.
> <details>
> <summary>read the caption</summary>
> Figure 18: The generated results from various models in the fine-grained image reconstruction task, based on the following text prompt: Reconstruct high-fidelity images from degraded inputs, preserving fine-grained details, textures, and structural integrity with perceptual realism.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/SEED-LLaMA.png)

> 🔼 The figure shows a source image used as input for a fine-grained image reconstruction task.  This task involves reconstructing a high-fidelity version of a degraded image, preserving fine details, textures, and structure.
> <details>
> <summary>read the caption</summary>
> (a) Source Image.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/MIO.png)

> 🔼 This image shows the ground truth image for a visual question answering task, specifically the 'Common Sense Question Answering' task.  The ground truth depicts the Pyramids of Giza, serving as the correct visual representation of the answer to a question about ancient monumental tombs located in Egypt near Cairo.  The image is a high-quality, visually clear photograph of the Pyramids.
> <details>
> <summary>read the caption</summary>
> (b) Ground Truth.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-Guided_Image_Editing/Gemini.png)

> 🔼 The figure shows the intermediate image generated by the GILL model during the Visual CoT task.  The Visual CoT task involves guiding a character through a maze, requiring a model to generate images at each step to visualize its progress. This particular image shows the intermediate state of the maze-solving process generated by the GILL model, showcasing its approach to the task.
> <details>
> <summary>read the caption</summary>
> (c) GILL.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Conditional_Image_to_Video_Generation/Src.png)

> 🔼 The figure shows the intermediate process images generated by MiniGPT-5 in the Visual CoT task.  Visual CoT, or Visual Chain of Thought, is a task designed to evaluate a model's ability to perform step-by-step reasoning and generate corresponding multimodal outputs at each step.  This particular image displays the model's intermediate output during a maze navigation task.  The image demonstrates MiniGPT-5's attempt at visualizing the next state of the maze after considering a specific move, which is part of the multi-step reasoning process. The image helps illustrate the model's progress through the maze and how it visualizes its plan.
> <details>
> <summary>read the caption</summary>
> (d) MiniGPT-5.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Conditional_Image_to_Video_Generation/CogVideo_Frames.png)

> 🔼 This figure shows the intermediate process images generated by the Anole model during the Visual CoT (Visual Composition Task). It showcases the model's approach to visual reasoning and generation by displaying intermediate steps in the process.  The images illustrate the model's progress towards a final solution, highlighting the model's ability to synthesize visual information and develop a coherent overall composition.
> <details>
> <summary>read the caption</summary>
> (e) Anole.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Conditional_Image_to_Video_Generation/MIO-Frames.png)

> 🔼 The figure shows the results from the SEED-LLaMA model in the fine-grained image reconstruction task.  The model is given a degraded image as input and tasked with reconstructing it to high fidelity, preserving fine-grained details and textures.  The reconstruction attempts to maintain visual coherence and natural realism.
> <details>
> <summary>read the caption</summary>
> (f) SEED-LLaMA.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-to-Video_Generation/CogVideoX.png)

> 🔼 The figure shows the results from the MIO-Instruct model in the text-to-image generation task. The model is given the following text prompt: 'A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.' The image generated by MIO-Instruct shows a realistic scene of people at a park, but the specifics of the prompt are not entirely met. For instance, the number 28 on the shirt and details of the clothes are not as clearly visible as one might expect from a model with accurate image generation capabilities.
> <details>
> <summary>read the caption</summary>
> (g) MIO-Instruct.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Text-to-Video_Generation/MIO-Instruct.png)

> 🔼 The image showcases the output generated by the Gemini2.0-flash-exp model for the text-to-image generation task.  The model was given the following prompt: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The image displays the model's interpretation and generation of this scene.
> <details>
> <summary>read the caption</summary>
> (h) Gemini2.0-flash-exp.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Unify_Output/Unify_Output_2.png)

> 🔼 This figure showcases the outputs of several multi-modal large language models (U-MLLMs) when tasked with transforming an image into a watercolor painting style.  The original image depicts several boxes of a food product. The results highlight the varying capabilities of the different models in terms of style transfer, detail preservation, and overall image quality. Some models successfully capture the essence of a watercolor painting, while others produce results that are either stylistically inconsistent or lack the fine details of the source image.
> <details>
> <summary>read the caption</summary>
> Figure 19: The generated results from various models in the text-guided image editing task, based on the following text prompt: Change this image into a watercolor art.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Unify_Output/Unify_Output_3.png)

> 🔼 This figure shows the original image used as input for the fine-grained image reconstruction task.  The task challenges models to reconstruct a high-fidelity version of the image while maintaining fine-grained details such as textures, edges, and subtle features.
> <details>
> <summary>read the caption</summary>
> (a) Source Image.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Unify_Output/Unify_Output_1.png)

> 🔼 The figure shows a video generated by the CogVideoX model for the conditional image-to-video generation task.  The input was an image of a man looking tired, and the text prompt was “The man is so tired. -camera zoom in”. The generated video shows a close-up sequence focusing on the man's face, highlighting the tired expression.
> <details>
> <summary>read the caption</summary>
> (b) CogVideoX.
> </details>



![](https://arxiv.org/html/2504.03641/extracted/6335502/MME-U_Figures/Unify_Output/Unify_Output_4.png)

> 🔼 The image shows the results from MIO-Instruct model in the text-to-image generation task, where the model was given the following prompt: “A man is standing in a park with a 'Run for Rights' banner in the background. He is wearing a white t-shirt with the number 28 on it, grey shorts, and grey socks with black shoes. The park is filled with people, some sitting on benches, and there is a bicycle leaning against a tree.” The generated image from MIO-Instruct accurately captures the main elements of the scene described in the prompt including the man, the banner, and some people in the park. However, certain details might be missing or not as accurate as compared to other models, like the specific number 28 on the shirt or the bicycle against a tree.
> <details>
> <summary>read the caption</summary>
> (c) MIO-Instruct.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.6.6">
<tr class="ltx_tr" id="S2.T2.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.6.6.7.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.6.6.7.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.2.1" style="font-size:144%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S2.T2.6.6.7.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.3.1" style="font-size:144%;">Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="7" id="S2.T2.6.6.7.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.4.1" style="font-size:144%;">Generation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="6" id="S2.T2.6.6.7.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.5.1" style="font-size:144%;">Unify</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.7.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.7.6.1" style="font-size:144%;">MME-U Score</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.8">
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T2.6.6.8.1" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.6.6.8.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.8.2.1" style="font-size:144%;">Task Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.3.1" style="font-size:144%;">SIPU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.4.1" style="font-size:144%;">MITIU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.5.1" style="font-size:144%;">VPU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.8.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.6.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.7.1" style="font-size:144%;">CIVG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.8.1" style="font-size:144%;">FIR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.9.1" style="font-size:144%;">TIE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.10.1" style="font-size:144%;">TIG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.11.1" style="font-size:144%;">TVG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.12.1" style="font-size:144%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.8.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.13.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.14.1" style="font-size:144%;">IEE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.15.1" style="font-size:144%;">CSQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.16.1" style="font-size:144%;">AL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.17.1" style="font-size:144%;">SD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.18.1" style="font-size:144%;">VCoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.8.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.19.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.8.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.6.8.20.1" style="font-size:144%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.9">
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T2.6.6.9.1" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T2.6.6.9.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.2.1" style="font-size:144%;">QA pairs</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.3.1" style="font-size:144%;">1200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.4.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.5.1" style="font-size:144%;">364</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.9.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.6.1" style="font-size:144%;">1964</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.7.1" style="font-size:144%;">600</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.8.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.9.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.10.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.11.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.12.1" style="font-size:144%;">194</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.9.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.13.1" style="font-size:144%;">1594</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.14.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.15.1" style="font-size:144%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.16.1" style="font-size:144%;">52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.17.1" style="font-size:144%;">104</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.18.1" style="font-size:144%;">90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.6.6.9.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.19.1" style="font-size:144%;">546</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.6.9.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.9.20.1" style="font-size:144%;">4104</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.10" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="20" id="S2.T2.6.6.10.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S2.T2.6.6.10.1.1" style="font-size:173%;background-color:#ECECEC;">Understanding Models</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.11.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.1.1" style="font-size:144%;">SliME-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.11.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.3.1" style="font-size:144%;">58.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.4.1" style="font-size:144%;">43.53</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.5.1" style="font-size:144%;">36.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.11.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.6.1" style="font-size:144%;">46.02</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.11.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.11.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.11.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.11.20.1" style="font-size:144%;">15.34</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.12.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.1.1" style="font-size:144%;">VITA-1.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.12.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.2.1" style="font-size:144%;">Qwen-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.3.1" style="font-size:144%;">70.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.4.1" style="font-size:144%;">56.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.5.1" style="font-size:144%;">56.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.12.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.6.1" style="font-size:144%;">60.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.12.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.12.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.12.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.12.20.1" style="font-size:144%;">20.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.13.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.1.1" style="font-size:144%;">Qwen2.5-VL-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.13.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.2.1" style="font-size:144%;">Qwen-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.3.1" style="font-size:144%;">75.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.4.1" style="font-size:144%;">53.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.5.1" style="font-size:144%;">57.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.13.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.6.1" style="font-size:144%;">61.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.13.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.13.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.13.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.13.20.1" style="font-size:144%;">20.64</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.14.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.1.1" style="font-size:144%;">Claude-3.5-sonnet</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.14.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.3.1" style="font-size:144%;">75.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.4.1" style="font-size:144%;">53.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.5.1" style="font-size:144%;">58.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.14.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.6.1" style="font-size:144%;">62.53</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.14.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.14.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.14.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.14.20.1" style="font-size:144%;">20.84</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.15.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.1.1" style="font-size:144%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.15.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.3.1" style="font-size:144%;">74.01</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.4.1" style="font-size:144%;">54.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.5.1" style="font-size:144%;">59.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.15.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.6.1" style="font-size:144%;">62.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.15.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.15.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.15.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.15.20.1" style="font-size:144%;">20.87</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.16.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.1.1" style="font-size:144%;">Gemini2.0-flash</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.16.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.16.3.1" style="font-size:144%;">80.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.4.1" style="font-size:144%;">61.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.16.5.1" style="font-size:144%;">64.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.16.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.16.6.1" style="font-size:144%;">69.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.16.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.16.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.16.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.16.20.1" style="font-size:144%;">23.03</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.17" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="20" id="S2.T2.6.6.17.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S2.T2.6.6.17.1.1" style="font-size:173%;background-color:#ECECEC;">Generative Models</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.18.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.1.1" style="font-size:144%;">DALL-E-2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.18.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.18.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.10.1" style="font-size:144%;">50.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.18.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.13.1" style="font-size:144%;">8.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.18.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.18.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.18.20.1" style="font-size:144%;">2.81</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.19.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.1.1" style="font-size:144%;">DALL-E-3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.19.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.19.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.10.1" style="font-size:144%;">51.40</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.19.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.13.1" style="font-size:144%;">8.57</span></td>
<td class="ltx_td" id="S2.T2.6.6.19.14" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td" id="S2.T2.6.6.19.15" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td" id="S2.T2.6.6.19.16" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td" id="S2.T2.6.6.19.17" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td" id="S2.T2.6.6.19.18" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S2.T2.6.6.19.19" style="padding:2.9pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.19.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.19.20.1" style="font-size:144%;">2.86</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.20.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.1.1" style="font-size:144%;">OmniGen</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.20.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.20.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.8.1" style="font-size:144%;">48.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.20.9.1" style="font-size:144%;">43.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.10.1" style="font-size:144%;">51.05</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.20.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.13.1" style="font-size:144%;">23.95</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.20.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.20.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.20.20.1" style="font-size:144%;">7.98</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.21.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.1.1" style="font-size:144%;">CogVideoX</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.21.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.21.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.21.7.1" style="font-size:144%;">68.05</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.21.11.1" style="font-size:144%;">69.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.21.12.1" style="font-size:144%;">87.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.21.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.13.1" style="font-size:144%;">37.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.21.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.21.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.21.20.1" style="font-size:144%;">12.51</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.22" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="20" id="S2.T2.6.6.22.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S2.T2.6.6.22.1.1" style="font-size:173%;background-color:#ECECEC;">Unified Models</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.23.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.1.1" style="font-size:144%;">Show-o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.23.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.2.1" style="font-size:144%;">Phi-1.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.3.1" style="font-size:144%;">32.47</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.4.1" style="font-size:144%;">34.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.5.1" style="font-size:144%;">25.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.23.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.6.1" style="font-size:144%;">30.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.9.1" style="font-size:144%;">43.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.23.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.13.1" style="font-size:144%;">7.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.23.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.23.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.23.20.1" style="font-size:144%;">12.74</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.24.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.1.1" style="font-size:144%;">Emu3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.24.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.2.1" style="font-size:144%;">LLama-8B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.3.1" style="font-size:144%;">45.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.4.1" style="font-size:144%;">30.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.5.1" style="font-size:144%;">23.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.24.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.6.1" style="font-size:144%;">33.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.10.1" style="font-size:144%;">49.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.24.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.13.1" style="font-size:144%;">8.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.24.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.24.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.24.20.1" style="font-size:144%;">13.79</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.25.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.1.1" style="font-size:144%;">HermersFlow</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.25.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.2.1" style="font-size:144%;">Phi-1.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.3.1" style="font-size:144%;">41.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.4.1" style="font-size:144%;">33.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.5.1" style="font-size:144%;">28.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.25.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.6.1" style="font-size:144%;">34.27</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.10.1" style="font-size:144%;">46.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.25.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.13.1" style="font-size:144%;">7.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.25.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.25.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.25.20.1" style="font-size:144%;">14.01</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.1.1.1.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.1.1.1.1.1" style="font-size:144%;">GILL</span><sup class="ltx_sup" id="S2.T2.1.1.1.1.2"><span class="ltx_text" id="S2.T2.1.1.1.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.1.1.1.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.2.1" style="font-size:144%;">OPT-6-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.3.1" style="font-size:144%;">22.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.4.1" style="font-size:144%;">6.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.5.1" style="font-size:144%;">3.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.1.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.6.1" style="font-size:144%;">10.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.8.1" style="font-size:144%;">50.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.9.1" style="font-size:144%;">35.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.10.1" style="font-size:144%;">46.60</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.1.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.13.1" style="font-size:144%;">22.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.14.1" style="font-size:144%;">24.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.15.1" style="font-size:144%;">21.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.16.1" style="font-size:144%;">8.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.17.1" style="font-size:144%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.18.1" style="font-size:144%;">1.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.1.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.19.1" style="font-size:144%;">12.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.1.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.1.1.20.1" style="font-size:144%;">15.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.26.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.1.1" style="font-size:144%;">Janus-Flow</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.26.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.2.1" style="font-size:144%;">DeepSeek-LLM-1.5b-base</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.3.1" style="font-size:144%;">63.17</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.4.1" style="font-size:144%;">32.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.5.1" style="font-size:144%;">35.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.26.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.6.1" style="font-size:144%;">43.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.10.1" style="font-size:144%;">32.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.26.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.13.1" style="font-size:144%;">5.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.26.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.26.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.26.20.1" style="font-size:144%;">16.31</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.2.2.2.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.2.2.2.1.1" style="font-size:144%;">MiniGPT-5</span><sup class="ltx_sup" id="S2.T2.2.2.2.1.2"><span class="ltx_text" id="S2.T2.2.2.2.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.2.2.2.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.2.1" style="font-size:144%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.3.1" style="font-size:144%;">19.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.4.1" style="font-size:144%;">10.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.5.1" style="font-size:144%;">15.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.2.2.2.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.6.1" style="font-size:144%;">15.37</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.8.1" style="font-size:144%;">38.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.9.1" style="font-size:144%;">35.04</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.10.1" style="font-size:144%;">35.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.2.2.2.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.13.1" style="font-size:144%;">18.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.14.1" style="font-size:144%;">22.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.15.1" style="font-size:144%;">34.13</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.16.1" style="font-size:144%;">14.37</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.17.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.18.1" style="font-size:144%;">2.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.2.2.2.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.19.1" style="font-size:144%;">15.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.2.2.2.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.2.2.2.20.1" style="font-size:144%;">16.43</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.27.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.1.1" style="font-size:144%;">Janus-Pro</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.27.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.2.1" style="font-size:144%;">DeepSeek-LLM-7b-base</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.3.1" style="font-size:144%;">59.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.4.1" style="font-size:144%;">43.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.5.1" style="font-size:144%;">42.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.27.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.6.1" style="font-size:144%;">48.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.10.1" style="font-size:144%;">35.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.27.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.13.1" style="font-size:144%;">5.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.27.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.27.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.27.20.1" style="font-size:144%;">18.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.28.1" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.1.1" style="font-size:144%;">VILA-U</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.6.6.28.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.2.1" style="font-size:144%;">LLama-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.3.1" style="font-size:144%;">51.04</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.4.1" style="font-size:144%;">32.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.5.1" style="font-size:144%;">36.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.28.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.6.1" style="font-size:144%;">39.95</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.10.1" style="font-size:144%;">45.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.11.1" style="font-size:144%;">49.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.28.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.13.1" style="font-size:144%;">15.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.6.6.28.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.28.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.28.20.1" style="font-size:144%;">18.58</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.3.3.3.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.3.3.3.1.1" style="font-size:144%;">Anole</span><sup class="ltx_sup" id="S2.T2.3.3.3.1.2"><span class="ltx_text" id="S2.T2.3.3.3.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.3.3.3.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.3.1" style="font-size:144%;">17.17</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.4.1" style="font-size:144%;">14.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.5.1" style="font-size:144%;">9.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.3.3.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.6.1" style="font-size:144%;">13.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.8.1" style="font-size:144%;">36.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.9.1" style="font-size:144%;">43.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.10.1" style="font-size:144%;">41.52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.3.3.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.13.1" style="font-size:144%;">19.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.14.1" style="font-size:144%;">18.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.15.1" style="font-size:144%;">59.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.16.1" style="font-size:144%;">14.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.17.1" style="font-size:144%;">15.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.18.1" style="font-size:144%;">3.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.3.3.3.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.19.1" style="font-size:144%;">22.30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.3.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.3.3.3.20.1" style="font-size:144%;">18.59</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.4.4.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.4.4.4.1.1" style="font-size:144%;">SEED-LLaMA</span><sup class="ltx_sup" id="S2.T2.4.4.4.1.2"><span class="ltx_text" id="S2.T2.4.4.4.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.4.4.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.2.1" style="font-size:144%;">LLaMA2-Chat-13B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.3.1" style="font-size:144%;">49.17</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.4.1" style="font-size:144%;">33.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.5.1" style="font-size:144%;">36.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.4.4.4.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.6.1" style="font-size:144%;">39.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.8.1" style="font-size:144%;">57.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.9.1" style="font-size:144%;">42.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.10.1" style="font-size:144%;">41.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.4.4.4.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.13.1" style="font-size:144%;">23.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.14.1" style="font-size:144%;">22.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.15.1" style="font-size:144%;">51.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.16.1" style="font-size:144%;">12.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.17.1" style="font-size:144%;">22.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.18.1" style="font-size:144%;">3.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.4.4.4.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.19.1" style="font-size:144%;">22.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.4.4.4.20.1" style="font-size:144%;">28.45</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.5.5.5.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.5.5.5.1.1" style="font-size:144%;">MIO-Instruct</span><sup class="ltx_sup" id="S2.T2.5.5.5.1.2"><span class="ltx_text" id="S2.T2.5.5.5.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.5.5.5.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.2.1" style="font-size:144%;">MIO-7B</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.3.1" style="font-size:144%;">52.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.4.1" style="font-size:144%;">33.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.5.1" style="font-size:144%;">39.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.5.5.5.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.6.1" style="font-size:144%;">41.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.7.1" style="font-size:144%;">51.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.8.1" style="font-size:144%;">59.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.9.1" style="font-size:144%;">43.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.10.1" style="font-size:144%;">48.23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.11.1" style="font-size:144%;">51.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.12.1" style="font-size:144%;">66.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.5.5.5.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.5.5.5.13.1" style="font-size:144%;">53.45</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.14.1" style="font-size:144%;">24.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.15.1" style="font-size:144%;">38.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.16.1" style="font-size:144%;">8.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.17.1" style="font-size:144%;">11.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.18.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.5.5.5.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.19.1" style="font-size:144%;">16.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.5.5.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.5.5.5.20.1" style="font-size:144%;">37.17</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S2.T2.6.6.6.1" style="padding:2.9pt 3.0pt;">
<span class="ltx_text" id="S2.T2.6.6.6.1.1" style="font-size:144%;">Gemini2.0-flash-exp</span><sup class="ltx_sup" id="S2.T2.6.6.6.1.2"><span class="ltx_text" id="S2.T2.6.6.6.1.2.1" style="font-size:144%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S2.T2.6.6.6.2" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.3" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.3.1" style="font-size:144%;">72.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.4" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.4.1" style="font-size:144%;">68.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.5" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.5.1" style="font-size:144%;">54.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T2.6.6.6.6" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.6.1" style="font-size:144%;">65.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.7" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.8" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.8.1" style="font-size:144%;">77.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.9" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.9.1" style="font-size:144%;">43.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.10" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.10.1" style="font-size:144%;">57.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.11" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.12" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T2.6.6.6.13" style="padding:2.9pt 3.0pt;"><span class="ltx_text" id="S2.T2.6.6.6.13.1" style="font-size:144%;">29.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.14" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.14.1" style="font-size:144%;">38.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.15" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.15.1" style="font-size:144%;">74.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.16" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.16.1" style="font-size:144%;">47.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.17" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.17.1" style="font-size:144%;">26.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.18" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.18.1" style="font-size:144%;">12.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T2.6.6.6.19" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.19.1" style="font-size:144%;">40.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.6.6.6.20" style="padding:2.9pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T2.6.6.6.20.1" style="font-size:144%;">45.57</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of various multimodal large language models (MLLMs) across a range of tasks categorized into three main areas: multimodal understanding, multimodal generation, and unified capabilities.  The understanding tasks include Single Image Perception & Understanding (SIPU), Multiple & Interleaved Image-Text Understanding (MITIU), and Video Perception & Understanding (VPU). Generation tasks cover Conditional Image-to-Video Generation (CIVG), Fine-grained Image Reconstruction (FIR), Text-Guided Image Editing (TIE), Text-to-Image Generation (TIG), Text-to-Video Generation (TVG), and Video Prediction (VP).  The unified capabilities are evaluated through five subtasks: Image Editing and Explaining (IEE), Common Sense Question Answering (CSQ), Auxiliary Lines (AL), SpotDiff (SD), and Visual CoT (VCoT).  The table shows each model's performance on these individual tasks, as well as an overall MME-U score that combines performance across all three categories. Models marked with * have the ability to generate interleaved images and texts, while a '-' indicates the model failed to complete the given task.  The best performance within each task is underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of multimodal models on understanding, generation, unifying tasks, and overall MME-U Score. SIPU: Single Image Perception & Understanding; MITIU: Multiple & Interleaved Image-Text Understanding; VPU: Video Perception & Understanding; CIVG: Conditional Image-to-Video Generation; FIR: Fine-grained Image Reconstruction; TIE: Text-Guided Image Editing; TIG: Text-to-Image Generation; TVG: Text-to-Video Generation; VP: Video Prediction; IEE: Image Editing and Explaining; CSQ: Common Sense Question Answering; AL: Auxiliary Lines; SD: SpotDiff; VCoT: Visual CoT. ∗ denotes U-MLLMs with the ability to generate interleaved images and texts, while ‘-’ indicates that the model is unable to finish the corresponding task and underlined content signifies the best performance within a single model across all methods on this task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.2.1">
<tr class="ltx_tr" id="S3.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.1.1.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.2.1.1.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.2.1" style="font-size:144%;">IEE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.2.1.1.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.3.1" style="font-size:144%;">CSQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.2.1.1.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.4.1" style="font-size:144%;">AL</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.2.1.1.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.5.1" style="font-size:144%;">SD</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="5" id="S3.T3.2.1.1.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.6.1" style="font-size:144%;">VCoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.2.1.1.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.7.1" style="font-size:144%;">Unify Score</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.1.2.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.1.1" style="font-size:144%;">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.2.1" style="font-size:144%;">Text Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.3.1" style="font-size:144%;">Image Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.4.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.2.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.5.1" style="font-size:144%;">Acc+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.6.1" style="font-size:144%;">Text Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.7.1" style="font-size:144%;">Image Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.8.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.2.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.9.1" style="font-size:144%;">Acc+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.10.1" style="font-size:144%;">Text Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.11.1" style="font-size:144%;">Image Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.12.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.2.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.13.1" style="font-size:144%;">Acc+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.14.1" style="font-size:144%;">Text Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.15.1" style="font-size:144%;">Image Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.16.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.2.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.17.1" style="font-size:144%;">Acc+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.18.1" style="font-size:144%;">Action Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.19.1" style="font-size:144%;">Coordinate Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.20.1" style="font-size:144%;">Image Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.21.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.2.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.22.1" style="font-size:144%;">Acc+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.23.1" style="font-size:144%;">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.2.24.1" style="font-size:144%;">Acc+</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.1.3.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.1.1" style="font-size:144%;">GILL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.2.1" style="font-size:144%;">21.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.3.1" style="font-size:144%;">27.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.4.1" style="font-size:144%;">24.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.3.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.5.1" style="font-size:144%;">8.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.6.1" style="font-size:144%;">14.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.7.1" style="font-size:144%;">27.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.8.1" style="font-size:144%;">21.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.3.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.9.1" style="font-size:144%;">4.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.10.1" style="font-size:144%;">7.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.11.1" style="font-size:144%;">9.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.12.1" style="font-size:144%;">8.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.3.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.13.1" style="font-size:144%;">1.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.15.1" style="font-size:144%;">13.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.16.1" style="font-size:144%;">6.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.3.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.17.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.18.1" style="font-size:144%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.19.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.20.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.21.1" style="font-size:144%;">1.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.1.3.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.23.1" style="font-size:144%;">12.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.3.24.1" style="font-size:144%;">2.98</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.2.1.4.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.1.1" style="font-size:144%;">MiniGPT-5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.2.1" style="font-size:144%;">21.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.3.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.4.1" style="font-size:144%;">22.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.4.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.5.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.6.1" style="font-size:144%;">29.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.7.1" style="font-size:144%;">38.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.8.1" style="font-size:144%;">34.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.4.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.9.1" style="font-size:144%;">15.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.10.1" style="font-size:144%;">5.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.11.1" style="font-size:144%;">23.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.12.1" style="font-size:144%;">14.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.4.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.13.1" style="font-size:144%;">3.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.14.1" style="font-size:144%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.15.1" style="font-size:144%;">6.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.16.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.4.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.17.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.18.1" style="font-size:144%;">2.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.19.1" style="font-size:144%;">1.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.20.1" style="font-size:144%;">2.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.21.1" style="font-size:144%;">2.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.4.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.23.1" style="font-size:144%;">15.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.4.24.1" style="font-size:144%;">5.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.2.1.5.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.1.1" style="font-size:144%;">MIO-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.2.1" style="font-size:144%;">24.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.3.1" style="font-size:144%;">24.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.4.1" style="font-size:144%;">24.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.5.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.5.1" style="font-size:144%;">7.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.6.1" style="font-size:144%;">77.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.8.1" style="font-size:144%;">38.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.5.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.10.1" style="font-size:144%;">17.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.12.1" style="font-size:144%;">8.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.5.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.14.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.16.1" style="font-size:144%;">11.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.5.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.17.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.18.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.19.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.20.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.21.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.5.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.23.1" style="font-size:144%;">16.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.5.24.1" style="font-size:144%;">1.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.2.1.6.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.1.1" style="font-size:144%;">Anole</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.2.1" style="font-size:144%;">17.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.3.1" style="font-size:144%;">20.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.4.1" style="font-size:144%;">18.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.6.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.5.1" style="font-size:144%;">3.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.6.1" style="font-size:144%;">70.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.7.1" style="font-size:144%;">49.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.8.1" style="font-size:144%;">59.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.6.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.9.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.10.1" style="font-size:144%;">15.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.11.1" style="font-size:144%;">13.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.12.1" style="font-size:144%;">14.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.6.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.13.1" style="font-size:144%;">3.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.14.1" style="font-size:144%;">17.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.15.1" style="font-size:144%;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.16.1" style="font-size:144%;">15.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.6.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.17.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.18.1" style="font-size:144%;">3.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.19.1" style="font-size:144%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.20.1" style="font-size:144%;">7.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.21.1" style="font-size:144%;">3.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.6.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.23.1" style="font-size:144%;">22.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.6.24.1" style="font-size:144%;">9.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.2.1.7.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.1.1" style="font-size:144%;">SEED-LLaMA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.2.1" style="font-size:144%;">19.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.3.1" style="font-size:144%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.4.1" style="font-size:144%;">22.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.7.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.5.1" style="font-size:144%;">4.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.6.1" style="font-size:144%;">56.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.7.1" style="font-size:144%;">46.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.8.1" style="font-size:144%;">51.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.7.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.9.1" style="font-size:144%;">37.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.10.1" style="font-size:144%;">13.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.11.1" style="font-size:144%;">11.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.12.1" style="font-size:144%;">12.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.7.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.13.1" style="font-size:144%;">3.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.14.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.15.1" style="font-size:144%;">21.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.16.1" style="font-size:144%;">22.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.7.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.17.1" style="font-size:144%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.18.1" style="font-size:144%;">4.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.19.1" style="font-size:144%;">2.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.20.1" style="font-size:144%;">4.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.21.1" style="font-size:144%;">3.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.1.7.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.23.1" style="font-size:144%;">22.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.7.24.1" style="font-size:144%;">9.99</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T3.2.1.8.1" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.8.1.1" style="font-size:144%;">Gemini2.0-flash-exp</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.2" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.2.1" style="font-size:144%;">33.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.3" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.3.1" style="font-size:144%;">43.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.4" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.4.1" style="font-size:144%;">38.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.2.1.8.5" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.5.1" style="font-size:144%;">11.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.6" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.6.1" style="font-size:144%;">83.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.7" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.7.1" style="font-size:144%;">63.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.8" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.8.1" style="font-size:144%;">74.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.2.1.8.9" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.9.1" style="font-size:144%;">66.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.10" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.10.1" style="font-size:144%;">59.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.11" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.11.1" style="font-size:144%;">34.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.12" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.12.1" style="font-size:144%;">47.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.2.1.8.13" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.13.1" style="font-size:144%;">30.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.14" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.14.1" style="font-size:144%;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.15" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.15.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.16" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.16.1" style="font-size:144%;">26.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.2.1.8.17" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.17.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.18" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.18.1" style="font-size:144%;">17.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.19" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.19.1" style="font-size:144%;">10.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.20" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.20.1" style="font-size:144%;">9.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.21" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.21.1" style="font-size:144%;">12.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.2.1.8.22" style="padding:3.6pt 3.0pt;"><span class="ltx_text" id="S3.T3.2.1.8.22.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.23" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.23.1" style="font-size:144%;">40.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.2.1.8.24" style="padding:3.6pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.1.8.24.1" style="font-size:144%;">22.64</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of the performance of various Unified Multimodal Large Language Models (U-MLLMs) across five different unified tasks designed to evaluate their combined understanding and generation capabilities.  The unified tasks assess various aspects of a model's ability to integrate multiple modalities, including image editing and explaining, common sense question answering, auxiliary line generation, spot difference identification, and visual chain-of-thought reasoning.  For each model and task, the table displays metrics including text accuracy, image accuracy, and an overall accuracy score, providing a comprehensive evaluation of the U-MLLMs' performance in complex, multi-modal scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of U-MLLMs on various unify tasks and overall unify Score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T4.4.1">
<tr class="ltx_tr" id="A2.T4.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.4.1.1.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="A2.T4.4.1.1.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.2.1" style="font-size:144%;">CIVG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A2.T4.4.1.1.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.3.1" style="font-size:144%;">FIR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A2.T4.4.1.1.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.4.1" style="font-size:144%;">TIE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A2.T4.4.1.1.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.5.1" style="font-size:144%;">TIG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="A2.T4.4.1.1.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.6.1" style="font-size:144%;">TVG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A2.T4.4.1.1.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.7.1" style="font-size:144%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.1.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.1.8.1" style="font-size:144%;">Generation Score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.4.1.2.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.1.1" style="font-size:144%;">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.2.1" style="font-size:144%;">FVD Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.3.1" style="font-size:144%;">FID Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.4.1" style="font-size:144%;">CLIPSIM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.5.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.6.1" style="font-size:144%;">1-LPIPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.7.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.8.1" style="font-size:144%;">CLIP-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.9.1" style="font-size:144%;">CLIP-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.10.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.11.1" style="font-size:144%;">CLIP-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.12.1" style="font-size:144%;">CLIP-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.13.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.14.1" style="font-size:144%;">FVD Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.15.1" style="font-size:144%;">FID Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.16.1" style="font-size:144%;">CLIPSIM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.17.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.18.1" style="font-size:144%;">FVD Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.19.1" style="font-size:144%;">FID Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.1.2.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.20.1" style="font-size:144%;">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.1.2.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.4.1.2.21.1" style="font-size:144%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.3" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="21" id="A2.T4.4.1.3.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T4.4.1.3.1.1" style="font-size:173%;background-color:#ECECEC;">Generative Models</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.4.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.1.1" style="font-size:144%;">DALL-E-2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.11.1" style="font-size:144%;">69.33</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.12.1" style="font-size:144%;">31.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.13.1" style="font-size:144%;">50.62</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.4.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.4.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.4.21.1" style="font-size:144%;">8.44</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.5.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.1.1" style="font-size:144%;">DALL-E-3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.11.1" style="font-size:144%;">70.11</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.5.12.1" style="font-size:144%;">32.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.13.1" style="font-size:144%;">51.40</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.5.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.5.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.5.21.1" style="font-size:144%;">8.57</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.6.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.1.1" style="font-size:144%;">OmniGen</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.6.1" style="font-size:144%;">48.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.7.1" style="font-size:144%;">48.82</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.8.1" style="font-size:144%;">65.63</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.6.9.1" style="font-size:144%;">22.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.6.10.1" style="font-size:144%;">43.82</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.11.1" style="font-size:144%;">73.97</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.12.1" style="font-size:144%;">28.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.13.1" style="font-size:144%;">51.05</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.6.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.6.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.6.21.1" style="font-size:144%;">23.95</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.7.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.1.1" style="font-size:144%;">CogVideoX</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.2.1" style="font-size:144%;">83.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.3.1" style="font-size:144%;">87.02</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.4.1" style="font-size:144%;">33.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.5.1" style="font-size:144%;">68.05</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.11.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.13.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.14.1" style="font-size:144%;">87.82</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.15.1" style="font-size:144%;">84.28</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.16.1" style="font-size:144%;">36.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.17.1" style="font-size:144%;">69.62</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.18.1" style="font-size:144%;">89.92</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.19.1" style="font-size:144%;">85.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.7.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.7.20.1" style="font-size:144%;">87.61</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.7.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.7.21.1" style="font-size:144%;">37.54</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.8" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="21" id="A2.T4.4.1.8.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T4.4.1.8.1.1" style="font-size:173%;background-color:#ECECEC;">Unified Models</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.9.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.1.1" style="font-size:144%;">DeepSeek-Flow</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.11.1" style="font-size:144%;">52.38</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.12.1" style="font-size:144%;">13.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.13.1" style="font-size:144%;">32.88</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.9.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.9.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.9.21.1" style="font-size:144%;">5.48</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.10.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.1.1" style="font-size:144%;">DeepSeek-Janus-Pro</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.11.1" style="font-size:144%;">55.46</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.12.1" style="font-size:144%;">15.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.13.1" style="font-size:144%;">35.29</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.10.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.10.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.10.21.1" style="font-size:144%;">5.88</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.11.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.1.1" style="font-size:144%;">Show-o</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.11.1" style="font-size:144%;">62.10</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.12.1" style="font-size:144%;">24.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.13.1" style="font-size:144%;">43.54</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.11.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.11.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.11.21.1" style="font-size:144%;">7.26</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.12.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.1.1" style="font-size:144%;">HermersFlow</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.11.1" style="font-size:144%;">65.37</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.12.1" style="font-size:144%;">27.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.13.1" style="font-size:144%;">46.48</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.12.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.12.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.12.21.1" style="font-size:144%;">7.75</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.13.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.1.1" style="font-size:144%;">Emu3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.11.1" style="font-size:144%;">68.54</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.12.1" style="font-size:144%;">29.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.13.1" style="font-size:144%;">49.08</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.13.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.13.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.13.21.1" style="font-size:144%;">8.18</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.14.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.1.1" style="font-size:144%;">VILA-U</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.10.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.11.1" style="font-size:144%;">62.54</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.12.1" style="font-size:144%;">27.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.13.1" style="font-size:144%;">45.10</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.14.1" style="font-size:144%;">57.35</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.15.1" style="font-size:144%;">66.36</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.16.1" style="font-size:144%;">25.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.17.1" style="font-size:144%;">49.64</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.14.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.14.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.14.21.1" style="font-size:144%;">15.80</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.15.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.1.1" style="font-size:144%;">MiniGPT-5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.6.1" style="font-size:144%;">38.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.7.1" style="font-size:144%;">38.96</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.8.1" style="font-size:144%;">55.86</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.9.1" style="font-size:144%;">14.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.10.1" style="font-size:144%;">35.04</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.11.1" style="font-size:144%;">56.33</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.12.1" style="font-size:144%;">14.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.13.1" style="font-size:144%;">35.48</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.15.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.15.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.15.21.1" style="font-size:144%;">18.25</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.16.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.1.1" style="font-size:144%;">Anole</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.6.1" style="font-size:144%;">36.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.7.1" style="font-size:144%;">36.64</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.8.1" style="font-size:144%;">62.35</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.9.1" style="font-size:144%;">21.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.10.1" style="font-size:144%;">41.80</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.11.1" style="font-size:144%;">60.23</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.12.1" style="font-size:144%;">21.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.13.1" style="font-size:144%;">41.00</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.16.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.16.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.16.21.1" style="font-size:144%;">19.91</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.17.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.1.1" style="font-size:144%;">GILL</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.6.1" style="font-size:144%;">50.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.7.1" style="font-size:144%;">50.67</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.8.1" style="font-size:144%;">54.15</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.9.1" style="font-size:144%;">17.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.10.1" style="font-size:144%;">35.71</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.11.1" style="font-size:144%;">67.75</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.12.1" style="font-size:144%;">25.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.13.1" style="font-size:144%;">46.60</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.17.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.17.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.17.21.1" style="font-size:144%;">22.16</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.18.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.1.1" style="font-size:144%;">SEED-LLaMA</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.6.1" style="font-size:144%;">57.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.7.1" style="font-size:144%;">57.00</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.8.1" style="font-size:144%;">67.12</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.9.1" style="font-size:144%;">17.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.10.1" style="font-size:144%;">42.26</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.11.1" style="font-size:144%;">60.57</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.12.1" style="font-size:144%;">23.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.13.1" style="font-size:144%;">41.96</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.18.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.18.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.18.21.1" style="font-size:144%;">23.54</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.1.19.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.1.1" style="font-size:144%;">Gemini-2.0-flash-exp</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.19.6.1" style="font-size:144%;">77.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.19.7.1" style="font-size:144%;">77.61</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.8.1" style="font-size:144%;">67.77</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.9.1" style="font-size:144%;">19.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.10.1" style="font-size:144%;">43.54</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.19.11.1" style="font-size:144%;">84.59</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.12.1" style="font-size:144%;">30.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.19.13.1" style="font-size:144%;">57.56</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.14.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.15.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.16.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.17.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.18.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.19.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.4.1.19.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.20.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.1.19.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.19.21.1" style="font-size:144%;">29.79</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.1.20">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A2.T4.4.1.20.1" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.1.1" style="font-size:144%;">MIO-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.2" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.2.1" style="font-size:144%;">59.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.3" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.3.1" style="font-size:144%;">70.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.4" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.4.1" style="font-size:144%;">23.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.5" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.5.1" style="font-size:144%;">51.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.6" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.6.1" style="font-size:144%;">59.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.7" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.7.1" style="font-size:144%;">59.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.8" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.20.8.1" style="font-size:144%;">68.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.9" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.9.1" style="font-size:144%;">19.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.10" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.10.1" style="font-size:144%;">43.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.11" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.11.1" style="font-size:144%;">72.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.12" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.12.1" style="font-size:144%;">23.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.13" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.13.1" style="font-size:144%;">48.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.14" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.14.1" style="font-size:144%;">60.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.15" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.15.1" style="font-size:144%;">69.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.16" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.16.1" style="font-size:144%;">26.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.17" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.17.1" style="font-size:144%;">51.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.18" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.18.1" style="font-size:144%;">64.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.19" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.19.1" style="font-size:144%;">68.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T4.4.1.20.20" style="padding:3.6pt 4.0pt;"><span class="ltx_text" id="A2.T4.4.1.20.20.1" style="font-size:144%;">66.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.1.20.21" style="padding:3.6pt 4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T4.4.1.20.21.1" style="font-size:144%;">53.45</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various multimodal models across six different image and video generation tasks.  The tasks are: Conditional Image-to-Video Generation (CIVG), Fine-grained Image Reconstruction (FIR), Text-Guided Image Editing (TIE), Text-to-Image Generation (TIG), Text-to-Video Generation (TVG), and Video Prediction (VP).  The table shows the average scores for each model on each task, using metrics appropriate to each task (e.g., LPIPS for FIR, CLIP scores for TIE and TIG, FVD and FID scores for CIVG and TVG).  Models marked with an asterisk (*) can generate interleaved image and text outputs.  A hyphen (-) indicates the model could not complete the task.  Underlined scores represent the best performance for each task across all models.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of multimodal models on various generation tasks. CIVG: Conditional Image-to-Video Generation; FIR: Fine-grained Image Reconstruction; TIE: Text-Guided Image Editing; TIG: Text-to-Image Generation; TVG: Text-to-Video Generation; VP: Video Prediction. ∗ denotes MLLMs with the ability to generate interleaved images and texts, while ‘-’ indicates that the model does not have the ability to achieve the corresponding task and underlined content signifies the best performance within a single model across all methods on this task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.2.1">
<tr class="ltx_tr" id="A2.T5.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.1.1" style="font-size:144%;">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="15" id="A2.T5.2.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.2.1" style="font-size:144%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.3.1" style="font-size:144%;">Total</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.2">
<td class="ltx_td ltx_border_r" id="A2.T5.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.2.1" style="font-size:144%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.3.1" style="font-size:144%;">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.4.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.4.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.4.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.4.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MME-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.4.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Realworld</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.5.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.5.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.5.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.5.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SEED-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.5.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Bench-2</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.5.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.6.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.6.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.6.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.6.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Video-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.6.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.6.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">MME</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.6.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.7.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.7.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.7.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.7.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.7.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.7.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Imagen</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.7.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.7.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Hub</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.7.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.8.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.8.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.8.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.8.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.8.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.8.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Emu-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.8.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.8.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Edit</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.8.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.9.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.9.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.9.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.9.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.9.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.9.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">TIP-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.9.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.9.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">I2V</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.9.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.10.1" style="font-size:144%;">COCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.11.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.11.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.11.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.11.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.11.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.11.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Image</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.11.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.11.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Net</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.11.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.12.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.12.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.12.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.12.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.12.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.12.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MSR-</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.12.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.12.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">VTT</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.12.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.13.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.13.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.13.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.13.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.13.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.13.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Pexel</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.13.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.13.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Videos</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.13.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.14.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.14.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.14.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.14.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.14.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.14.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Geometry</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.14.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.14.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">3K</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.14.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.2.15" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.15.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.15.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.15.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.15.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.15.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.15.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Spot</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.15.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.15.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Diff</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.15.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.2.1.2.16" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A2.T5.2.1.2.16.1"></span><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.16.2" style="font-size:144%;"> <span class="ltx_text" id="A2.T5.2.1.2.16.2.1">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.1.2.16.2.1.1">
<span class="ltx_tr" id="A2.T5.2.1.2.16.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.16.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Open</span></span>
<span class="ltx_tr" id="A2.T5.2.1.2.16.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.1.2.16.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">AI</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.1.2.16.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.2.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.2.17.1" style="font-size:144%;">Samples</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.3" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A2.T5.2.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T5.2.1.3.1.1" style="font-size:173%;background-color:#ECECEC;">Understanding Task</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.1.1" style="font-size:144%;">SIPU</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.2.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.3.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.4.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.4.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.4.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.4.17.1" style="font-size:144%;">1,200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.1.1" style="font-size:144%;">MITIU</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.5.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.5.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.5.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.5.17.1" style="font-size:144%;">400</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.1.1" style="font-size:144%;">VPU</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.6.1" style="font-size:144%;">364</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.6.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.6.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.6.17.1" style="font-size:144%;">364</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.7" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A2.T5.2.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T5.2.1.7.1.1" style="font-size:173%;background-color:#ECECEC;">Generative Task</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.1.1" style="font-size:144%;">CIVG</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.9.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.8.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.8.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.8.17.1" style="font-size:144%;">200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.1.1" style="font-size:144%;">FIR</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.11.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.9.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.9.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.9.17.1" style="font-size:144%;">200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.1.1" style="font-size:144%;">TIG</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.10.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.10.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.10.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.10.17.1" style="font-size:144%;">200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.1.1" style="font-size:144%;">TIE</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.7.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.8.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.11.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.11.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.11.17.1" style="font-size:144%;">600</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.1.1" style="font-size:144%;">TVG</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.12.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.12.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.12.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.12.17.1" style="font-size:144%;">200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.1.1" style="font-size:144%;">VP</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.13.1" style="font-size:144%;">194</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.13.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.13.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.13.17.1" style="font-size:144%;">194</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.14" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A2.T5.2.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T5.2.1.14.1.1" style="font-size:173%;background-color:#ECECEC;">Unify Task</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.1.1" style="font-size:144%;">IEE</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.8.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.15.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.15.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.15.17.1" style="font-size:144%;">200</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.1.1" style="font-size:144%;">CSQ</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.16.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.16.1" style="font-size:144%;">100</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.16.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.16.17.1" style="font-size:144%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.1.1" style="font-size:144%;">AL</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.14.1" style="font-size:144%;">52</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.17.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.17.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.17.17.1" style="font-size:144%;">52</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.1.1" style="font-size:144%;">SD</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.15.1" style="font-size:144%;">104</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.18.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.16.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.18.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.18.17.1" style="font-size:144%;">104</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.2.1.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.1.1" style="font-size:144%;">VCoT</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.2.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.3.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.4.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.5.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.6.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.7.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.8.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.9.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.10.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.11.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.12.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.13.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.14.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.15.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T5.2.1.19.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.16.1" style="font-size:144%;">90</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.1.19.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T5.2.1.19.17.1" style="font-size:144%;">90</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.2.1.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.1.1" style="font-size:144%;">Dataset Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.2.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.3.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.4.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.5.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.6.1" style="font-size:144%;">364</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.7.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.8.1" style="font-size:144%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.9.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.10.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.11.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.12.1" style="font-size:144%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.13.1" style="font-size:144%;">194</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.14.1" style="font-size:144%;">52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.15.1" style="font-size:144%;">104</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.2.1.20.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.16.1" style="font-size:144%;">190</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.2.1.20.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.20.17.1" style="font-size:144%;">4104</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.1.21">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A2.T5.2.1.21.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.1.1" style="font-size:144%;">Dataset %</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.2.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.3.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.4.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.5.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.6.1" style="font-size:144%;">8.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.7.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.8.1" style="font-size:144%;">9.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.9.1" style="font-size:144%;">4.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.10.1" style="font-size:144%;">4.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.11.1" style="font-size:144%;">4.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.12.1" style="font-size:144%;">4.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.13.1" style="font-size:144%;">4.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.14.1" style="font-size:144%;">1.27%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.15.1" style="font-size:144%;">2.54%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T5.2.1.21.16" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.16.1" style="font-size:144%;">4.63%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.2.1.21.17" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.21.17.1" style="font-size:144%;">100%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the distribution of data samples across various tasks in the MME-Unify benchmark.  It categorizes tasks into three groups: Understanding (Single-Image, Multi-Image, Video), Generation (Conditional Image-to-Video, Fine-Grained Reconstruction, Text-to-Image, Text-Guided Editing, Text-to-Video, Video Prediction), and Unified (Image Editing & Explanation, Common Sense QA, Auxiliary Lines, SpotDiff, Visual CoT).  For each task, it shows the number of samples drawn from each of the source datasets, with '0' indicating no samples from that dataset were used for that specific task. The total number of samples per task is also provided.
> <details>
> <summary>read the caption</summary>
> Table 5: Task-Dataset Sampling Statistics. This table presents the distribution of samples across different multimodal AI tasks and their source datasets. Tasks are categorized into three main groups: Understanding Tasks (SIPU: Single Image Perception and Understanding, MITIU: Multi-Image & Interleaved Text-Image Understanding, VPU: Video Perception and Understanding), Generative Tasks (CIVG: Conditional Image-to-Video Generation, FIR: Fine-grained Image Reconstruction, TIG: Text-to-Image Generation, TIE: Text-Guided Image Editing, TVG: Text-to-Video Generation, VP: Video Prediction), and Unify Tasks (IEE: Image Editing and Explanation, CSQ: Common Sense Question Answring, AL: Auxiliary Lines., SD: SpotDiff, VCoT: Visual CoT). The rightmost column shows the total number of samples used for each task across all datasets. A value of 0 indicates that no samples were drawn from that dataset for the corresponding task.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03641/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03641/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}