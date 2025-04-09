---
title: "Audio-visual Controlled Video Diffusion with Masked Selective State Spaces Modeling for Natural Talking Head Generation"
summary: "ACTalker: A novel audio-visual video diffusion framework for natural talking head generation with multi-signal control and masked selective state spaces."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02542 {{< /keyword >}}
{{< keyword icon="writer" >}} Fa-Ting Hong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02542" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02542" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02542/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Talking head synthesis is crucial, but existing methods often limit control to a single modality, restricting their use. Generating videos driven by both audio and facial motion poses challenges like control conflicts, where signals interfere, and difficulties in aggregating signals effectively across spatial-temporal dimensions. Existing video diffusion models separately process these dimensions, missing important interactions. To tackle these problems, **ACTalker** is introduced. 



**ACTalker**, an end-to-end video diffusion framework, uses a parallel mamba structure with multiple branches to control specific facial regions with separate driving signals. A gate mechanism provides flexible control. The mamba structure and mask-drop strategy handle facial control with single signals in specific regions. Experimental results show that this method produces natural-looking facial videos driven by diverse signals and integrates multiple driving modalities without conflict.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ACTalker, a new video diffusion framework, enables both multi-signal and single-signal control for talking head video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A parallel mamba structure with a gate mechanism provides flexible and conflict-free control over different facial regions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A mask-drop strategy enhances the effectiveness of driving signals and improves the quality of generated content by focusing on relevant facial regions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it **introduces a new approach to talking head generation that tackles the limitations of existing methods by enabling more nuanced control over facial expressions and lip synchronization.** It also provides a **new benchmark** for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02542/x2.png)

> 🔼 This figure showcases the capabilities of the proposed ACTalker framework for talking head video generation. The top three rows demonstrate the ability to generate videos driven by multiple simultaneous signals (audio and facial motion) without control conflicts in the facial area.  The bottom two rows illustrate the framework's capacity to generate videos controlled by a single signal (either audio or facial motion).  This highlights the versatility and robustness of the approach in handling various control scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: In this work, we aim to develop a framework that not only generates videos driven by multiple signals without causing control conflicts in the facial region (first three rows) but also supports video generation driven by a single signal (last two rows).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.12.12.12.13"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.13.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.2.1">Sync-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.2.1.m1.1a"><mo id="S3.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.1.m1.1b"><ci id="S3.T1.2.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.1">FVD-Res <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.4.1">FVD-Inc <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.1.m1.1b"><ci id="S3.T1.4.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.5.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.1.m1.1b"><ci id="S3.T1.5.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.6.1">Smooth <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.6.1.m1.1a"><mo id="S3.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.1.m1.1b"><ci id="S3.T1.6.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.7.1">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.1.m1.1b"><ci id="S3.T1.7.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.8.1">Sync-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.1.m1.1"><semantics id="S3.T1.8.8.8.8.1.m1.1a"><mo id="S3.T1.8.8.8.8.1.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.1.m1.1b"><ci id="S3.T1.8.8.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.9.9.1">FVD-Res <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.1.m1.1b"><ci id="S3.T1.9.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.1">FVD-Inc <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.1.m1.1"><semantics id="S3.T1.10.10.10.10.1.m1.1a"><mo id="S3.T1.10.10.10.10.1.m1.1.1" stretchy="false" xref="S3.T1.10.10.10.10.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.1.m1.1b"><ci id="S3.T1.10.10.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.10.10.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.11.11.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.11.1.m1.1a"><mo id="S3.T1.11.11.11.11.1.m1.1.1" stretchy="false" xref="S3.T1.11.11.11.11.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.1.m1.1b"><ci id="S3.T1.11.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.11.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.12.12.12.12"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.12.1">Smooth <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.1.m1.1"><semantics id="S3.T1.12.12.12.12.1.m1.1a"><mo id="S3.T1.12.12.12.12.1.m1.1.1" stretchy="false" xref="S3.T1.12.12.12.12.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.1.m1.1b"><ci id="S3.T1.12.12.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.12.12.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.12.12.13.1.1">SadTalker<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.2">3.814</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.3">8.824</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.4">18.484</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.5">352.296</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.6">51.804</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.12.12.13.1.7">0.9963</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.8">3.899</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.9">7.895</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.10">16.642</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.11">264.065</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.12">44.965</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1.13">0.9953</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.14.2.1">Hallo<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.2">4.316</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.3">9.020</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.4">13.317</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.5">342.965</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.6">37.400</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.14.2.7">0.9946</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.8">3.963</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.9">8.125</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.10">6.888</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.11">266.920</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.12">23.157</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2.13">0.9941</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.15.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.15.3.1">VExpress<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.2">3.612</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.3">9.165</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.4">37.657</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.5">539.920</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.6">58.427</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.7">0.9959</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.8">4.888</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.9">7.898</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.10">14.950</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.11">517.880</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.12">26.753</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.13">0.9954</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.16.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.16.4.1">EDTalk <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.2">5.124</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.3">8.438</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.4">16.723</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.5">430.906</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.6">50.428</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.7">0.9972</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.8">4.759</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.9">8.375</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.10">14.114</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.11">477.147</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.12">50.135</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.13">0.9954</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.17.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.17.5.1">EchoMimic <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.2">2.989</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.3">10.188</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.4">16.897</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.5">366.007</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.6">45.489</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.7">0.9938</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.8">3.239</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.9">9.411</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.10">46.038</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.11">450.798</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.12">41.357</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.13">0.9923</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.18.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.18.6.1">Memo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.2">3.958</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.3">9.118</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.4">7.992</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.5">264.596</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.6">31.134</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.18.6.7">0.9954</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.8">5.093</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.9">7.854</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.10">5.098</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.11">194.570</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.12">18.837</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6.13">0.9945</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.19.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.19.7.1">Ours (Only Audio)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.2.1">5.317</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.3.1">7.869</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.4.1">7.328</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.5"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.5.1">232.374</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.6"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.6.1">30.721</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.19.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.7.1">0.9978</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.8"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.8.1">5.334</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.9"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.9.1">7.569</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.10"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.10.1">4.754</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.11"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.11.1">193.120</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.12"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.12.1">16.730</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7.13"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.13.1">0.9955</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.20.8" style="background-color:#BFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.12.12.20.8.1"><span class="ltx_text" id="S3.T1.12.12.20.8.1.1" style="background-color:#BFBFBF;">Ours (Audio-Visual)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.2.1" style="background-color:#BFBFBF;">5.737</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.3.1" style="background-color:#BFBFBF;">7.510</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.4"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.4.1" style="background-color:#BFBFBF;">7.074</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.5"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.5.1" style="background-color:#BFBFBF;">230.125</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.6"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.6.1" style="background-color:#BFBFBF;">29.977</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.20.8.7"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.7.1" style="background-color:#BFBFBF;">0.9979</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.8"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.8.1" style="background-color:#BFBFBF;">5.511</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.9"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.9.1" style="background-color:#BFBFBF;">7.311</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.10"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.10.1" style="background-color:#BFBFBF;">4.574</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.11"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.11.1" style="background-color:#BFBFBF;">190.125</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.12"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.12.1" style="background-color:#BFBFBF;">15.977</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.20.8.13"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.13.1" style="background-color:#BFBFBF;">0.9955</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of various audio-driven talking head generation methods.  The table is divided into two sections: the left shows results for the CelebV-HQ dataset, and the right shows results for the RAVDESS dataset. Each section lists multiple models, including the proposed ACTalker model, and evaluates their performance using several metrics. These metrics assess different aspects of the generated videos, including synchronization between audio and lip movements (Sync-C and Sync-D), perceptual quality (FVD-Res, FVD-Inc, FID), smoothness, and overall video quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Audio-driven comparison of different methods on Celebv-HQ dataset (left) and RAVDESS dataset (right).
> </details>





### In-depth insights


#### Multi-Signal Diff
The paper introduces a novel approach to talking head generation by addressing the challenge of integrating multiple control signals, such as audio and facial motion. It tackles the limitations of existing methods that typically rely on a single primary modality. The **core idea** is to create a diffusion-based framework capable of generating realistic portrait videos with either single or simultaneous control of audio and facial movements. It uses a parallel mamba structure with multiple branches. Each branch employs a separate driving signal to control specific facial regions. A gate mechanism is applied across all branches, providing flexible control over video generation. This resolves control conflicts in the facial region. Also, a mamba structure enables signals to manipulate feature tokens across both dimensions in each branch.  A mask-drop strategy allows each driving signal to control its corresponding facial region, preventing control conflicts. **Multi-signal control** aims to have fine grained control.

#### Masked SSM Control
The paper introduces a novel approach to talking head generation using a Masked Selective State Space Model (SSM). The Masked SSM aims to address control conflicts arising from multiple input signals (audio and visual motion). **It achieves fine-grained control over facial synthesis**. The core idea involves utilizing masks to guide the SSM, focusing on relevant facial regions for each driving signal. The mask-drop strategy enhances the effectiveness of driving signals by discarding irrelevant feature tokens outside control regions, **leading to improved content generation**. By masking specific facial regions, the model can handle audio and visual input without causing one signal to dominate another, achieving a balance for natural-looking results. The SSM aggregates feature tokens and integrates them to enhance the model's ability to focus on signal-specific regions, **resulting in more accurate control of video generation**.

#### Conflict-Free PCM
While "Conflict-Free PCM" isn't directly stated, the paper tackles a core challenge: resolving conflicts when multiple signals (audio and facial motion) drive talking head generation. The authors' parallel mamba structure and mask-drop strategy directly aim to mitigate this. **The parallel structure** dedicates separate branches to different signals, preventing one from dominating. **Mask-drop** limits each signal's influence to specific facial regions, avoiding interference. The gating mechanism further enhances this by allowing flexible enabling/disabling of signals. This promotes more natural, controllable video generation, addressing a key limitation of prior methods where conflicting signals led to unnatural expressions or one signal overriding the other. The ablation studies validate this approach, showing how removing mask-drop leads to the unwanted influence of motion on the mouth when driven by audio, thus highlighting the importance of handling the conflict.

#### Temporal SSM Fusion
While 'Temporal SSM Fusion' isn't explicitly mentioned, the paper utilizes **Selective State Space Models (SSMs) to capture temporal dependencies** within video and audio signals. The parallel mamba structure integrates these signals, so temporal fusion likely occurs within each mamba branch. SSM's strength lies in **modeling long-range dependencies efficiently**, which is crucial for coherent video generation. Considering the gated mechanism and mask-drop strategy, the temporal fusion is probably **selective**, prioritizing relevant features and mitigating conflict. Thus, the framework likely achieves robust temporal fusion via masked SSMs, allowing for fine-grained control during talking head generation.

#### Flexible Control
**Flexible control** in generative models, particularly for tasks like talking head generation, signifies the ability to manipulate specific attributes of the output (e.g., facial expressions, lip movements) using various input signals. Achieving this is challenging due to potential **control conflicts**, where different signals might influence the same facial region in contradictory ways. A successful approach should allow for both **single-signal and multi-signal control**, where the model can be driven by either a primary modality or a combination of modalities without causing artifacts or inconsistencies. This often involves designing specific architectural components that enable the model to disentangle and integrate different signals, ensuring each modality contributes to the final output in a coherent and predictable manner. Furthermore, the ability to switch between different control modes (e.g., audio-only, expression-only, or combined) during inference offers greater flexibility and allows for a wider range of applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02542/x3.png)

> 🔼 This figure illustrates the architecture of ACTalker, a novel framework for generating talking head videos driven by multiple signals (audio and facial motion).  It shows how audio and motion signals are processed through separate parallel branches within the model, each with its own mask defining the regions of influence.  The core innovation, the parallel-control mamba layer, integrates these independently processed signals to allow for simultaneous control of the video generation without conflicts, and enhances the natural coordination of the generated video temporally and spatially. The figure also details the standard layers in a stable diffusion model (spatial convolution, temporal convolution, spatial and temporal attention), which are incorporated alongside the mamba layer.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of our ACTalker framework. ACTalker takes multiple signals inputs (i.e., audio and visual facial motion) to drive the generation of talking head videos. In addition to the standard layers (e.g., spatial convolution, temporal convolution, spatial attention, and temporal attention) in the stable video diffusion model, we introduce a parallel-control mamba layer to harness the power of multiple signals control. Audio and facial motion signals are fed into this parallel-control mamba layer, along with their corresponding masks, which indicates the regions to focus on for manipulation.
> </details>



![](https://arxiv.org/html/2504.02542/x4.png)

> 🔼 The Parallel-Control Mamba layer in ACTalker uses two parallel branches to process audio and expression signals separately for talking head video generation. Each branch contains a Mask-SSM unit that combines the signal with a mask to independently control specific facial regions.  A gate mechanism controls signal access to each branch during both training and inference. During training, gates randomly open or close, allowing for single or multiple signal control. During inference, gates can be manually set to enable flexible control using either single or multiple signals.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of parallel-control mamba layer. There are two parallel branches in this layer, one for audio control and the other is for expression control. We utilize a gate in each branch to control the accessing of control signal during training. During inference, we can manually modify the statue of gates to enable single signal control or multiple signals control.
> </details>



![](https://arxiv.org/html/2504.02542/x5.png)

> 🔼 This figure details the Mask-SSM (Masked Selective State Space Model) architecture within the audio branch of the parallel-control mamba layer.  The Mask-SSM takes audio embeddings and a corresponding audio mask as input. The mask identifies specific regions of the feature map to be processed.  A 'Mask Drop' operation removes irrelevant features outside these specified regions, focusing processing on relevant areas. The remaining features are concatenated with the audio embeddings and passed through an SSM for spatio-temporal feature manipulation. The visual branch follows the same structure but uses motion embeddings and a motion mask instead. This design allows for parallel processing of audio and visual signals while preventing control conflicts by spatially separating their influences. 
> <details>
> <summary>read the caption</summary>
> Figure 4: The illustrating of the Mask-SSM in audio branch of parallel-control mamba layer. The visual branch is the same but replace with the motion embedding and motion mask
> </details>



![](https://arxiv.org/html/2504.02542/x6.png)

> 🔼 Figure 5 presents a comparison of various methods for generating audio-driven talking head videos.  The figure showcases the results of several approaches, highlighting the visual quality and accuracy of lip synchronization.  The authors' method (Ours) is shown alongside results from Memo, Echominic, EDTalker, and VExpress.  A visual inspection reveals that the authors' approach produces more natural-looking and accurate lip-synced videos compared to the other methods. Due to space constraints in the paper, results for the SadTalker and Hallo methods are provided in supplementary material.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of different methods for audio-driven talking head generation. Our method can produce more natural and accurate lip-synced videos. Due to the page limitation, the results of SadTalker [63] and Hallo [56] are reported in Supplementary Material
> </details>



![](https://arxiv.org/html/2504.02542/x7.png)

> 🔼 Figure 6 presents a qualitative comparison of different talking head generation methods on the VFHQ dataset. The top row showcases self-reenactment results, where the input and output videos feature the same person.  The bottom row displays cross-reenactment, using a different person's video as input for generating the output. This comparison highlights the differences in the ability of each method to generate realistic and high-fidelity talking head videos, particularly in terms of accurate facial expressions and movements.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of different methods on VFHQ. Self reenactment (first row) and cross reenactment (last row).
> </details>



![](https://arxiv.org/html/2504.02542/x8.png)

> 🔼 This figure demonstrates the effectiveness of the proposed parallel-control mamba layer in handling multiple driving signals (audio and motion) for talking head generation. The left panel shows the results when both audio and motion signals are used with corresponding masks applied to each Mask-SSM. The generated video accurately synchronizes lip movements with audio and head pose with motion. The right panel shows the results when the masks are removed. In this case, the motion signal interferes with the audio signal, causing a conflict where motion influences lip movements. This illustrates how the masks prevent signal conflicts and enable precise, independent control of different facial regions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of multiple signals control. Our generated video accurately replicates the lip movements driven by the audio source and captures the head motion—particularly the eye movements and pose—as guided by the motion source. Once we remove the masks in both Mask-SSMs and generate the video using multiple driving signals, the motion source can also affect the mouth movement (“Ours w/o MD”), causing a control conflict.
> </details>



![](https://arxiv.org/html/2504.02542/x9.png)

> 🔼 Figure 8 displays a comparison of talking head videos generated using different model variations, all driven by audio input.  The variations include a baseline model, a model without the mask-drop (MD) strategy, and a model without the identity embedding (ID). This allows for a visual assessment of the impact of each component on the overall naturalism and quality of the generated videos. The results show that the full model (with both MD and ID) produces significantly more natural-looking and higher-quality talking head videos compared to the ablation models.
> <details>
> <summary>read the caption</summary>
> Figure 8: The visualization of ablation studies driven by audio. Our full method can produce more natural videos.
> </details>



![](https://arxiv.org/html/2504.02542/x10.png)

> 🔼 This figure shows the three types of masks used in the ACTalker framework: face mask, audio mask, and motion mask.  The face mask broadly defines the facial region in the source image, while the audio mask is more specific, focusing on the mouth area to guide lip movements.  The motion mask is derived from the face mask to isolate the areas related to facial expressions.  These masks are used to help the model control specific areas of the face when generating videos with multiple driving signals, such as audio and facial motion.
> <details>
> <summary>read the caption</summary>
> Figure 9: The type of masks we used in our framework.
> </details>



![](https://arxiv.org/html/2504.02542/x11.png)

> 🔼 Figure 10 presents a comparison of talking head generation results using different methods, all driven by facial motion. The top row displays the reference or ground truth videos showing the target facial expressions and movements.  Each subsequent row shows the results generated using various methods. This illustrates the ability of the proposed approach to accurately capture nuanced facial expressions and movements, such as subtle eye movements and lip articulation, which other methods may fail to produce. The results highlight the superior performance of the proposed method in terms of both accuracy and realism.
> <details>
> <summary>read the caption</summary>
> Figure 10:  The results generated by our method under facial motion control.
> </details>



![](https://arxiv.org/html/2504.02542/x12.png)

> 🔼 This figure displays a comparison of talking head generation results driven solely by audio input.  It showcases the results from the authors' proposed ACTalker model alongside several other state-of-the-art methods. Each row represents a different input audio clip, and the columns show the generated video from each method. This comparison visually demonstrates the capabilities of ACTalker in terms of lip-synchronization accuracy, facial expression naturalness, and overall video quality compared to existing approaches.
> <details>
> <summary>read the caption</summary>
> Figure 11:  The results generated by our method under audio control.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.13.13.13.14"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.13.14.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.2">LMD(<math alttext="\times 10^{-2}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.1.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.1.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.1.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.1.m1.1.1.3.cmml"><mn id="S4.T2.1.1.1.1.1.m1.1.1.3.2" xref="S4.T2.1.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.1.1.1.1.1.m1.1.1.3.3" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3.cmml"><mo id="S4.T2.1.1.1.1.1.m1.1.1.3.3a" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.1.1.1.1.1.m1.1.1.3.3.2" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3.2.cmml">2</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1"><times id="S4.T2.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.1"></times><csymbol cd="latexml" id="S4.T2.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.1.1.1.1.1.m1.1.1.3.2">10</cn><apply id="S4.T2.1.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3"><minus id="S4.T2.1.1.1.1.1.m1.1.1.3.3.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3"></minus><cn id="S4.T2.1.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.1.1.1.1.1.m1.1.1.3.3.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\times 10^{-2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT</annotation></semantics></math>) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.2.2.m2.1a"><mo id="S4.T2.2.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T2.2.2.2.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.m2.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">FVD-Inc <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.1">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.7.1">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.8.1">Pose Distance <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.1">Expression Similarity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.9.1.m1.1a"><mo id="S4.T2.9.9.9.9.1.m1.1.1" stretchy="false" xref="S4.T2.9.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.11.2">ID Similarity(<math alttext="\times 10^{-1}" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.10.1.m1.1a"><mrow id="S4.T2.10.10.10.10.1.m1.1.1" xref="S4.T2.10.10.10.10.1.m1.1.1.cmml"><mi id="S4.T2.10.10.10.10.1.m1.1.1.2" xref="S4.T2.10.10.10.10.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.10.10.10.10.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.10.10.10.10.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.10.10.10.10.1.m1.1.1.3" xref="S4.T2.10.10.10.10.1.m1.1.1.3.cmml"><mn id="S4.T2.10.10.10.10.1.m1.1.1.3.2" xref="S4.T2.10.10.10.10.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.10.10.10.10.1.m1.1.1.3.3" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3.cmml"><mo id="S4.T2.10.10.10.10.1.m1.1.1.3.3a" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.10.10.10.10.1.m1.1.1.3.3.2" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3.2.cmml">1</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.1.m1.1b"><apply id="S4.T2.10.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1"><times id="S4.T2.10.10.10.10.1.m1.1.1.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.1"></times><csymbol cd="latexml" id="S4.T2.10.10.10.10.1.m1.1.1.2.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.10.10.10.10.1.m1.1.1.3.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.10.10.10.10.1.m1.1.1.3.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.10.10.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.10.10.10.10.1.m1.1.1.3.2">10</cn><apply id="S4.T2.10.10.10.10.1.m1.1.1.3.3.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3"><minus id="S4.T2.10.10.10.10.1.m1.1.1.3.3.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3"></minus><cn id="S4.T2.10.10.10.10.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.10.10.10.10.1.m1.1.1.3.3.2">1</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.1.m1.1c">\times 10^{-1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 1 end_POSTSUPERSCRIPT</annotation></semantics></math>)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.11.11.11.2.m2.1"><semantics id="S4.T2.11.11.11.11.2.m2.1a"><mo id="S4.T2.11.11.11.11.2.m2.1.1" stretchy="false" xref="S4.T2.11.11.11.11.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.11.2.m2.1b"><ci id="S4.T2.11.11.11.11.2.m2.1.1.cmml" xref="S4.T2.11.11.11.11.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.11.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.11.2.m2.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.13.13.13.13"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.13.13.2">Smooth (<math alttext="\times 10^{-2}" class="ltx_Math" display="inline" id="S4.T2.12.12.12.12.1.m1.1"><semantics id="S4.T2.12.12.12.12.1.m1.1a"><mrow id="S4.T2.12.12.12.12.1.m1.1.1" xref="S4.T2.12.12.12.12.1.m1.1.1.cmml"><mi id="S4.T2.12.12.12.12.1.m1.1.1.2" xref="S4.T2.12.12.12.12.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.12.12.12.12.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.12.12.12.12.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.12.12.12.12.1.m1.1.1.3" xref="S4.T2.12.12.12.12.1.m1.1.1.3.cmml"><mn id="S4.T2.12.12.12.12.1.m1.1.1.3.2" xref="S4.T2.12.12.12.12.1.m1.1.1.3.2.cmml">10</mn><mrow id="S4.T2.12.12.12.12.1.m1.1.1.3.3" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3.cmml"><mo id="S4.T2.12.12.12.12.1.m1.1.1.3.3a" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T2.12.12.12.12.1.m1.1.1.3.3.2" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3.2.cmml">2</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.12.1.m1.1b"><apply id="S4.T2.12.12.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1"><times id="S4.T2.12.12.12.12.1.m1.1.1.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.1"></times><csymbol cd="latexml" id="S4.T2.12.12.12.12.1.m1.1.1.2.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.12.12.12.12.1.m1.1.1.3.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.12.12.12.12.1.m1.1.1.3.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.12.12.12.12.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.12.12.12.12.1.m1.1.1.3.2">10</cn><apply id="S4.T2.12.12.12.12.1.m1.1.1.3.3.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3"><minus id="S4.T2.12.12.12.12.1.m1.1.1.3.3.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3"></minus><cn id="S4.T2.12.12.12.12.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.12.12.12.12.1.m1.1.1.3.3.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.12.1.m1.1c">\times 10^{-2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.12.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT</annotation></semantics></math>)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.13.13.13.13.2.m2.1"><semantics id="S4.T2.13.13.13.13.2.m2.1a"><mo id="S4.T2.13.13.13.13.2.m2.1.1" stretchy="false" xref="S4.T2.13.13.13.13.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.13.2.m2.1b"><ci id="S4.T2.13.13.13.13.2.m2.1.1.cmml" xref="S4.T2.13.13.13.13.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.13.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.13.2.m2.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.13.13.14.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.13.14.1.1">LivePortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.2"><span class="ltx_text" id="S4.T2.13.13.14.1.2.1" style="font-size:120%;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.3"><span class="ltx_text" id="S4.T2.13.13.14.1.3.1" style="font-size:120%;">82.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.4"><span class="ltx_text" id="S4.T2.13.13.14.1.4.1" style="font-size:120%;">483.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.5"><span class="ltx_text" id="S4.T2.13.13.14.1.5.1" style="font-size:120%;">40.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.6"><span class="ltx_text" id="S4.T2.13.13.14.1.6.1" style="font-size:120%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.13.13.14.1.7"><span class="ltx_text" id="S4.T2.13.13.14.1.7.1" style="font-size:120%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.8"><span class="ltx_text" id="S4.T2.13.13.14.1.8.1" style="font-size:120%;">26.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.9"><span class="ltx_text" id="S4.T2.13.13.14.1.9.1" style="font-size:120%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.10"><span class="ltx_text" id="S4.T2.13.13.14.1.10.1" style="font-size:120%;">8.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.14.1.11"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.14.1.11.1" style="font-size:120%;">99.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.15.2">
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.15.2.1">AniPortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.2"><span class="ltx_text" id="S4.T2.13.13.15.2.2.1" style="font-size:120%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.3"><span class="ltx_text" id="S4.T2.13.13.15.2.3.1" style="font-size:120%;">81.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.4"><span class="ltx_text" id="S4.T2.13.13.15.2.4.1" style="font-size:120%;">430.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.5"><span class="ltx_text" id="S4.T2.13.13.15.2.5.1" style="font-size:120%;">39.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.6"><span class="ltx_text" id="S4.T2.13.13.15.2.6.1" style="font-size:120%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.15.2.7"><span class="ltx_text" id="S4.T2.13.13.15.2.7.1" style="font-size:120%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.8"><span class="ltx_text" id="S4.T2.13.13.15.2.8.1" style="font-size:120%;">21.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.9"><span class="ltx_text" id="S4.T2.13.13.15.2.9.1" style="font-size:120%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.10"><span class="ltx_text" id="S4.T2.13.13.15.2.10.1" style="font-size:120%;">8.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.15.2.11"><span class="ltx_text" id="S4.T2.13.13.15.2.11.1" style="font-size:120%;">99.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.16.3">
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.16.3.1">FollowYourEmoji <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.2"><span class="ltx_text" id="S4.T2.13.13.16.3.2.1" style="font-size:120%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.3"><span class="ltx_text" id="S4.T2.13.13.16.3.3.1" style="font-size:120%;">77.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.4"><span class="ltx_text" id="S4.T2.13.13.16.3.4.1" style="font-size:120%;">417.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.5"><span class="ltx_text" id="S4.T2.13.13.16.3.5.1" style="font-size:120%;">39.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.6"><span class="ltx_text" id="S4.T2.13.13.16.3.6.1" style="font-size:120%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.16.3.7"><span class="ltx_text" id="S4.T2.13.13.16.3.7.1" style="font-size:120%;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.8"><span class="ltx_text" id="S4.T2.13.13.16.3.8.1" style="font-size:120%;">20.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.9"><span class="ltx_text" id="S4.T2.13.13.16.3.9.1" style="font-size:120%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.10"><span class="ltx_text" id="S4.T2.13.13.16.3.10.1" style="font-size:120%;">8.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.16.3.11"><span class="ltx_text" id="S4.T2.13.13.16.3.11.1" style="font-size:120%;">98.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.17.4">
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.17.4.1">X-Portrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02542v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.2"><span class="ltx_text" id="S4.T2.13.13.17.4.2.1" style="font-size:120%;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.3"><span class="ltx_text" id="S4.T2.13.13.17.4.3.1" style="font-size:120%;">82.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.4"><span class="ltx_text" id="S4.T2.13.13.17.4.4.1" style="font-size:120%;">416.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.5"><span class="ltx_text" id="S4.T2.13.13.17.4.5.1" style="font-size:120%;">39.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.6"><span class="ltx_text" id="S4.T2.13.13.17.4.6.1" style="font-size:120%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.17.4.7"><span class="ltx_text" id="S4.T2.13.13.17.4.7.1" style="font-size:120%;">0.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.8"><span class="ltx_text" id="S4.T2.13.13.17.4.8.1" style="font-size:120%;">20.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.9"><span class="ltx_text" id="S4.T2.13.13.17.4.9.1" style="font-size:120%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.10"><span class="ltx_text" id="S4.T2.13.13.17.4.10.1" style="font-size:120%;">8.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.17.4.11"><span class="ltx_text" id="S4.T2.13.13.17.4.11.1" style="font-size:120%;">99.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.18.5" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.13.13.18.5.1"><span class="ltx_text" id="S4.T2.13.13.18.5.1.1" style="background-color:#BFBFBF;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.2"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.2.1" style="font-size:120%;background-color:#BFBFBF;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.3.1" style="font-size:120%;background-color:#BFBFBF;">75.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.4.1" style="font-size:120%;background-color:#BFBFBF;">358.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.5.1" style="font-size:120%;background-color:#BFBFBF;">40.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.6.1" style="font-size:120%;background-color:#BFBFBF;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.13.13.18.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.7.1" style="font-size:120%;background-color:#BFBFBF;">0.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.8"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.8.1" style="font-size:120%;background-color:#BFBFBF;">20.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.9"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.9.1" style="font-size:120%;background-color:#BFBFBF;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.10"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.18.5.10.1" style="font-size:120%;background-color:#BFBFBF;">8.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.18.5.11"><span class="ltx_text" id="S4.T2.13.13.18.5.11.1" style="font-size:120%;background-color:#BFBFBF;">99.48</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of various talking head generation methods on the VFHQ dataset.  The table is divided into two sections: self reenactment and cross reenactment.  Self reenactment refers to generating videos where the target identity is the same as the source identity, while cross reenactment refers to cases where source and target identities differ. For each method and scenario (self/cross reenactment), the table reports multiple metrics reflecting different aspects of video quality such as: LMD (Landmark Mean Distance), FID (Fréchet Inception Distance), FVD-Inc (Fréchet Video Distance, incremental), PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), Pose Distance, Expression Similarity, ID Similarity (identity similarity), and Smoothness.  These metrics assess the accuracy of facial landmarks, overall visual quality, and the fidelity of generated videos in relation to the source video.
> <details>
> <summary>read the caption</summary>
> Table 2:  Comparison of different methods on VFHQ. Self reenactment (left) and cross reenactment (right).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.6.6.6.7"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.7.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">Sync-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1">FVD-Res <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.4.1">FVD-Inc <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.1">Smooth <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.6.6.7.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.2"><span class="ltx_text" id="S4.T3.6.6.7.1.2.1" style="font-size:120%;">4.592</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.3"><span class="ltx_text" id="S4.T3.6.6.7.1.3.1" style="font-size:120%;">8.523</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.4"><span class="ltx_text" id="S4.T3.6.6.7.1.4.1" style="font-size:120%;">16.983</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.5"><span class="ltx_text" id="S4.T3.6.6.7.1.5.1" style="font-size:120%;">268.512</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.6"><span class="ltx_text" id="S4.T3.6.6.7.1.6.1" style="font-size:120%;">32.483</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1.7"><span class="ltx_text" id="S4.T3.6.6.7.1.7.1" style="font-size:120%;">0.9967</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.8.2.1">Ours w/o MD</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.2"><span class="ltx_text" id="S4.T3.6.6.8.2.2.1" style="font-size:120%;">4.953</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.3"><span class="ltx_text" id="S4.T3.6.6.8.2.3.1" style="font-size:120%;">8.184</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.4"><span class="ltx_text" id="S4.T3.6.6.8.2.4.1" style="font-size:120%;">7.456</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.5"><span class="ltx_text" id="S4.T3.6.6.8.2.5.1" style="font-size:120%;">240.651</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.6"><span class="ltx_text" id="S4.T3.6.6.8.2.6.1" style="font-size:120%;">31.268</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.7"><span class="ltx_text" id="S4.T3.6.6.8.2.7.1" style="font-size:120%;">0.9969</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.9.3.1">Ours w/o ID</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.2"><span class="ltx_text" id="S4.T3.6.6.9.3.2.1" style="font-size:120%;">5.241</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.3"><span class="ltx_text" id="S4.T3.6.6.9.3.3.1" style="font-size:120%;">7.748</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.4"><span class="ltx_text" id="S4.T3.6.6.9.3.4.1" style="font-size:120%;">8.364</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.5"><span class="ltx_text" id="S4.T3.6.6.9.3.5.1" style="font-size:120%;">247.933</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.6"><span class="ltx_text" id="S4.T3.6.6.9.3.6.1" style="font-size:120%;">31.170</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.9.3.7"><span class="ltx_text" id="S4.T3.6.6.9.3.7.1" style="font-size:120%;">0.9978</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.10.4.1">Ours (Only Audio)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.2.1" style="font-size:120%;">5.317</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.3.1" style="font-size:120%;">7.869</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.4.1" style="font-size:120%;">7.328</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.5.1" style="font-size:120%;">232.374</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.6"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.6.1" style="font-size:120%;">30.721</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4.7"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.10.4.7.1" style="font-size:120%;">0.9978</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.11.5" style="background-color:#BFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.6.11.5.1"><span class="ltx_text" id="S4.T3.6.6.11.5.1.1" style="background-color:#BFBFBF;">Ours (Audio-Visual)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.2.1" style="font-size:120%;background-color:#BFBFBF;">5.737</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.3.1" style="font-size:120%;background-color:#BFBFBF;">7.510</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.4.1" style="font-size:120%;background-color:#BFBFBF;">7.074</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.5.1" style="font-size:120%;background-color:#BFBFBF;">230.125</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.6"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.6.1" style="font-size:120%;background-color:#BFBFBF;">29.977</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.11.5.7"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.11.5.7.1" style="font-size:120%;background-color:#BFBFBF;">0.9979</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the CelebV-HQ dataset to evaluate the impact of different components of the proposed audio-driven talking head generation model.  It shows the performance metrics (Sync-C, Sync-D, FVD-Res, FVD-Inc, FID, Smooth) for several model variants: a baseline, a model without mask drop (Ours w/o MD), a model without identity embedding (Ours w/o ID), the audio-only model (Ours Only Audio), and the full audio-visual model (Ours Audio-Visual). This allows for a quantitative analysis of the contributions of each component to the overall performance of the system.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation studies on Celebv-HQ dataset for audio-driven.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02542/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02542/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}