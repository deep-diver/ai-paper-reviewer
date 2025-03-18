---
title: "BlobCtrl: A Unified and Flexible Framework for Element-level Image Generation and Editing"
summary: "BlobCtrl: Precisely edit images at the element level with a unified, flexible framework, bridging the gap between generation and editing."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Peking University",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13434 {{< /keyword >}}
{{< keyword icon="writer" >}} Yaowei Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13434" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13434" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13434/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current diffusion-based image manipulation methods lack the precision of traditional tools, and struggle with interactive, element-based editing. These methods face challenges in decoupling visual elements, layout control, identity preservation, visual harmony, and data scarcity. Existing benchmarks also don't comprehensively evaluate element-level manipulations.



This paper introduces **BlobCtrl, a unified framework for element-level image generation and editing using a probabilistic blob-based representation**. A dual-branch diffusion model and self-supervised training enables flexible manipulation. The authors also present **BlobData, a large-scale dataset and BlobBench, a rigorous evaluation benchmark** to facilitate future research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BlobCtrl offers a unified framework for both generating and editing images at the element level. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A dual-branch diffusion model and self-supervised training paradigm enables precise manipulation while preserving visual coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The introduction of BlobData and BlobBench facilitates large-scale training and systematic evaluation of element-level manipulation models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to element-level image manipulation, a crucial area for content creation. **By providing a unified framework and open-source dataset, it enables more flexible and precise image editing**, and paves the way for future research in visual content creation and manipulation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13434/x2.png)

> 🔼 BlobCtrl is a framework for element-level image generation and editing.  The top row shows the diverse manipulation operations it supports: composing new elements, moving existing ones, resizing, removing, replacing, and combining these actions. The bottom row illustrates the iterative refinement process, demonstrating how BlobCtrl enables precise, fine-grained editing to achieve the desired results.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Our proposed BlobCtrl framework enables comprehensive element-level control over both visual appearance and spatial layout, facilitating diverse manipulation operations including compositional generation, spatial transformation, element removal, content replacement and arbitrary combinations thereof (top). Through an iterative refinement process, BlobCtrl allows precise and fine-grained editing capabilities to achieve desired visual outcomes (bottom).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.14.14.15.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.14.14.15.1.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.14.14.15.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.14.14.15.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Compose</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.14.14.15.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Move</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.14.14.15.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">Resize</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.14.14.15.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">Replace</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.14.14.15.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">Remove</th>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.2.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.4.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.5.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.6.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">MSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.7.7.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.8.8.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.9.9.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">MSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.9.m1.1a"><mo id="S3.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.m1.1b"><ci id="S3.T1.9.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.10.10.10.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.m1.1"><semantics id="S3.T1.10.10.10.10.m1.1a"><mo id="S3.T1.10.10.10.10.m1.1.1" stretchy="false" xref="S3.T1.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.m1.1b"><ci id="S3.T1.10.10.10.10.m1.1.1.cmml" xref="S3.T1.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.11.11.11.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.m1.1"><semantics id="S3.T1.11.11.11.11.m1.1a"><mo id="S3.T1.11.11.11.11.m1.1.1" stretchy="false" xref="S3.T1.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.m1.1b"><ci id="S3.T1.11.11.11.11.m1.1.1.cmml" xref="S3.T1.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.12.12.12.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">MSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.m1.1"><semantics id="S3.T1.12.12.12.12.m1.1a"><mo id="S3.T1.12.12.12.12.m1.1.1" stretchy="false" xref="S3.T1.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.m1.1b"><ci id="S3.T1.12.12.12.12.m1.1.1.cmml" xref="S3.T1.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.13.13.13.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP-I<math alttext="{}^{*}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.13.13.13.13.m1.1"><semantics id="S3.T1.13.13.13.13.m1.1a"><mmultiscripts id="S3.T1.13.13.13.13.m1.1.1"><mo id="S3.T1.13.13.13.13.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.13.13.13.13.m1.1.1a"></mprescripts><mrow id="S3.T1.13.13.13.13.m1.1.1b"></mrow><mo id="S3.T1.13.13.13.13.m1.1.1.3">∗</mo></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.13.13.13.13.m1.1b">{}^{*}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.13.m1.1c">start_FLOATSUPERSCRIPT ∗ end_FLOATSUPERSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.14.14.14.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINO<math alttext="{}^{*}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.14.14.14.14.m1.1"><semantics id="S3.T1.14.14.14.14.m1.1a"><mmultiscripts id="S3.T1.14.14.14.14.m1.1.1"><mo id="S3.T1.14.14.14.14.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.14.14.14.14.m1.1.1a"></mprescripts><mrow id="S3.T1.14.14.14.14.m1.1.1b"></mrow><mo id="S3.T1.14.14.14.14.m1.1.1.3">∗</mo></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.14.14.14.14.m1.1b">{}^{*}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.14.m1.1c">start_FLOATSUPERSCRIPT ∗ end_FLOATSUPERSCRIPT ↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.14.14.16.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.14.14.16.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Anydoor <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib9" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">86.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.14.14.16.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.14.14.16.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.14.14.16.1.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.14.14.16.1.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.14.14.16.1.15" style="padding-top:0.5pt;padding-bottom:0.5pt;">13.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.17.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.14.14.17.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GliGen <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib26" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">70.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">57.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.17.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.17.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">69.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.17.2.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.17.2.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.17.2.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">40.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.14.14.17.2.15" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.18.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.14.14.18.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MagicFix <cite class="ltx_cite ltx_citemacro_citep">(Alzayer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.18.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.18.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.18.3.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.14.14.18.3.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.18.3.14" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.14.14.18.3.15" style="padding-top:0.5pt;padding-bottom:0.5pt;">23.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.19.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.14.14.19.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_italic" id="S3.T1.14.14.19.4.1.1">BlobCtrl</span> (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.2.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.3.1">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.14.14.19.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.4.1">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.5.1">88.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.6.1">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.14.14.19.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.7.1">6.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.8.1">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.9.1">89.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.14.14.19.4.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.10.1">8.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.11.1">86.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.12.1">86.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.14.14.19.4.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.13.1">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.14" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.14.1">35.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.19.4.15" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.14.19.4.15.1">8.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different element-level image manipulation methods (compose, move, resize, replace, and remove).  The performance of each method is evaluated using three metrics: CLIP-I and DINO scores (higher is better) measure the preservation of the original element's identity after manipulation, and MSE (lower is better) measures the accuracy of the element's placement. For removal operations, lower CLIP-I* and DINO* scores are desirable, indicating a more thorough removal. The results show that the proposed BlobCtrl method consistently outperforms existing state-of-the-art methods across all five manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison of identity preservation and grounding accuracy across various element-level manipulations. We evaluate using CLIP-I and DINO scores for identity preservation, and MSE for grounding accuracy. For removal operations, lower CLIP-I∗ and DINO∗ scores (↓↓\downarrow↓) are desired as they indicate more complete removal of target elements. Our method consistently outperforms existing approaches across all operations.
> </details>





### In-depth insights


#### Blob Representation
**Blob representations offer a compelling approach to element-level image manipulation due to their inherent flexibility and control.** Unlike segmentation masks that enforce rigid shapes, blobs, particularly when modeled as Gaussians, provide a smooth and continuous representation, enabling harmonious integration and manipulation of visual elements. This allows for precise control over an object's position, size, and orientation within an image. **Blob opacity, derived from the Gaussian distribution, facilitates depth-aware alpha compositing, which effectively addresses occlusion and models relationships between objects.** By leveraging blob splatting, visual semantics can be projected into a two-dimensional space, creating spatially-aware features that enhance visual understanding and manipulation.

#### Dual-Branch Model
The dual-branch model seems to be a **powerful architectural choice for element-level image manipulation**, offering a way to disentangle foreground and background processing. By dedicating one branch to preserving the identity and details of foreground elements, and the other to maintaining overall scene context and harmony, it allows for **more controlled and coherent image editing**. This division of labor is particularly important in tasks where preserving the visual characteristics of specific objects while seamlessly integrating them into a new environment is critical. The **success of this approach relies on effective feature fusion** between the branches to ensure that the manipulated elements are both visually consistent with the scene and retain their original appearance. Furthermore, **random dropout strategies** allow for a better balance between apperance fidelity and diversity.

#### Self-Supervised Train
**Self-supervised training** is a clever approach to overcome the scarcity of paired data in element-level image manipulation. Instead of relying on pre-existing datasets, it leverages the idea that any image can be considered the result of a manipulation process. By **simulating source and target positions** for elements within an image and optimizing for noise prediction, the model learns to fill in elements, inpaint backgrounds, and harmoniously integrate the two. This avoids the need for labor-intensive, perfectly aligned datasets and allows the model to learn from a broader range of images, ultimately boosting its robustness and generalization.This approach effectively leverages readily available data, reduces the reliance on specialized datasets, and ultimately enhances the model's adaptability to various scenarios.

#### ID Preserv. Ablation
An ablation study focusing on Identity Preservation is crucial to understand the contribution of specific components in a model. This helps to determine the most impactful design choices in retaining the original characteristics of the manipulated elements. **Removing the ID preservation loss** and observing a drop in performance indicates its effectiveness. **Analyzing model behavior** after removing each component helps to ensure a deeper understanding of the model’s overall capabilities.

#### Future Work: Depth
Future research could explore leveraging depth information to enhance element-level image manipulation. **Integrating depth estimation or 3D scene reconstruction techniques** could provide a more comprehensive understanding of the scene's geometry, leading to more realistic and consistent manipulations. For example, depth-aware compositing would allow for better handling of occlusions and spatial relationships between elements. **Furthermore, incorporating depth information** could improve the accuracy of element removal and replacement, ensuring seamless integration of new elements into the scene. **Specifically, conditional diffusion model** could be experimented.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13434/x3.png)

> 🔼 Figure 2 illustrates the dual representation of a blob, a fundamental element in the BlobCtrl framework.  Geometrically, a blob is depicted as an ellipse, defined by its center coordinates (Cx, Cy), the lengths of its minor and major axes (a, b), and its orientation (θ).  Simultaneously, it's statistically modeled as a two-dimensional Gaussian distribution, parameterized by its mean (μ) and covariance matrix (Σ).  This dual representation highlights the equivalence and interchangeability between the geometric and statistical interpretations of a blob, illustrating how BlobCtrl seamlessly integrates geometric intuition with statistical rigor in its approach to element-level image manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Blob Formula. A blob can be represented in two equivalent forms: geometrically as an ellipse parameterized by center coordinates (Cx,Cy)subscript𝐶𝑥subscript𝐶𝑦(C_{x},C_{y})( italic_C start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT , italic_C start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT ), axes lengths (a,b)𝑎𝑏(a,b)( italic_a , italic_b ), and orientation θ𝜃\thetaitalic_θ; and statistically as a 2D Gaussian distribution characterized by mean 𝝁𝝁\bm{\mu}bold_italic_μ and covariance matrix 𝚺𝚺\bm{\Sigma}bold_Σ. The two forms are exactly equivalent and interchangeable.
> </details>



![](https://arxiv.org/html/2503.13434/x4.png)

> 🔼 BlobCtrl uses a dual-branch diffusion model for element-level image manipulation.  The foreground branch focuses on preserving element identity using blob representations, while the background branch maintains scene context and harmonizes the elements. Both branches receive noisy latent inputs and reference conditions.  Self-supervised training involves stochastically generating element positions and optimizing for target reconstruction.  Feature fusion between branches ensures precise control while maintaining visual coherence.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of BlobCtrl. Our framework consists of: (1) A dual-branch architecture with a foreground branch for element identity encoding and a background branch for scene context preservation and harmonization. Both branches use concatenated inputs of noisy latents and reference conditions (Sec. 3.1). (2) A self-supervised training paradigm for element-level manipulation through stochastic position generation and target reconstruction optimization. Through feature fusion between branches, our framework achieves precise control over elements while maintaining visual coherence.
> </details>



![](https://arxiv.org/html/2503.13434/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of element-level image manipulation results produced by four different methods: BlobCtrl, Anydoor, GliGen, and MagicFix.  Each method is evaluated on five fundamental operations: composition, movement, resizing, replacement, and removal. The figure visually demonstrates that while other methods struggle with identity preservation (Anydoor, GliGen), visual harmonization (MagicFix), or both, BlobCtrl consistently achieves superior results.  All five operations are shown for each method to illustrate BlobCtrl's strengths. It's recommended to zoom in to fully appreciate the details in the source images and the precise element-level manipulations performed.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visual comparison of element-level manipulation capabilities across different methods. We evaluate five fundamental operations: composition, movement, resizing, replacement and removal. Anydoor (Chen et al., 2023) struggles with precise identity preservation, GliGen (Li et al., 2023) fails to maintain any identity information, and Magic Fixup (Chen et al., 2023) produces results with poor visual harmonization. In contrast, BlobCtrl achieves superior results across all operations while maintaining both identity preservation and visual harmony. We recommend zooming in to examine the source images and element-level manipulation instructions in detail.
> </details>



![](https://arxiv.org/html/2503.13434/x6.png)

> 🔼 Figure 5 illustrates how BlobCtrl's dual-branch architecture allows for flexible control over the balance between generating diverse outputs and preserving the original appearance of elements.  This control is achieved in two ways: adjusting the control timestep interval which influences the level of noise reduction at each step of the diffusion process, and changing the fusion strength (ω) which modulates how much information from the foreground and background branches are combined.  Feature dropout mechanisms, further enhancing controllability by randomly dropping features during the training process, are also mentioned, though not visually depicted.
> <details>
> <summary>read the caption</summary>
> Figure 5: Flexible Control. Our dual-branch fusion mechanism enables flexible control over the trade-off between diversity and appearance preservation by adjusting the control timestep interval and fusion strength ω𝜔\omegaitalic_ω. Additionally, the feature dropout mechanisms provide more flexible interfaces for controlling the generation process.
> </details>



![](https://arxiv.org/html/2503.13434/extracted/6284831/figures/benchmark_overview.png)

> 🔼 Figure 6 demonstrates the impact of the Identity Preservation Score Function on model training and performance.  The ablation study compares training with and without this function.  The left panel shows the lower training loss achieved using the Identity Preservation Score Function, indicating faster convergence. The right panel provides a visualization of the denoising process for scaling a deer image, comparing outputs with and without the function.  In the visualization, it's clear that the Identity Preservation Score Function helps to maintain the foreground element's identity (the deer) while better integrating it into the background, effectively decoupling foreground and background during element-level manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation of Identity Preservation Score Function. Training loss and denoising visualization for scaling a deer, demonstrating how Identity Preservation Score Function enables faster convergence and effective foreground-background decoupling during element-level manipulation.
> </details>



![](https://arxiv.org/html/2503.13434/extracted/6284831/figures/data_pipeline.png)

> 🔼 BlobBench is a comprehensive benchmark dataset consisting of 100 images, each annotated with ellipse parameters, foreground masks, and detailed text descriptions.  The images cover a wide range of scenarios and element-level operations, including composition, movement, resizing, removal, and replacement. The dataset is designed to provide a thorough evaluation of element-level manipulation capabilities of models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Overview of the BlobBench.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.4.4.5.1.1">Anydoor <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib9" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.5.1.2">32.0631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.5.1.3">0.7424</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.5.1.4">0.2394</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.4.4.5.1.5">145.2546</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.4.6.2.1">GliGen <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib26" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.6.2.2">27.923</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.6.2.3">0.2414</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.6.2.4">0.6963</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.4.4.6.2.5">307.8219</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.4.7.3.1">MagicFix <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib9" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.3.2">30.3958</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.3.3">0.7415</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.3.4">0.2277</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.4.4.7.3.5">194.0154</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.4.8.4.1">
<span class="ltx_text ltx_font_italic" id="S3.T2.4.4.8.4.1.1">BlobCtrl</span> (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.8.4.2.1">32.1571</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.8.4.3.1">0.7507</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.8.4.4.1">0.2196</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.8.4.5.1">102.8094</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of BlobCtrl's image generation quality against three state-of-the-art methods using standard metrics: PSNR, SSIM, LPIPS, and FID.  Higher PSNR and SSIM scores indicate better fidelity to the original image, while a lower LPIPS score suggests better perceptual similarity. A lower FID score signifies that the generated images are closer in distribution to real images.  The results demonstrate that BlobCtrl significantly outperforms existing methods across all metrics, highlighting its superior image generation quality and reduced artifacts.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of image generation quality using standard metrics. Our method achieves superior performance across all metrics, demonstrating better generation quality and fewer artifacts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">Fidelity<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">Layout<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">Harmony<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.3.4.1.1">Anydoor <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib9" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.2">82.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.3">81.7%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.4">78.1%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.5.2.1">GliGen <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib26" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.2">51.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.3">68.1%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.5.2.4">80.3%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.6.3.1">MagicFix <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13434v1#bib.bib9" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.2">70.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.3">73.1%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.6.3.4">49.4%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.3.3.7.4.1">
<span class="ltx_text ltx_font_italic" id="S4.T3.3.3.7.4.1.1">BlobCtrl</span> (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.4.2.1">87.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.4.3.1">86.5%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.4.4.1">82.1%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a human evaluation comparing the performance of BlobCtrl against three state-of-the-art methods in terms of fidelity, layout, and harmony.  Human evaluators rated the generated images on a scale of 1-5 for each of these three aspects, with higher scores indicating better perceptual quality. The results demonstrate that BlobCtrl consistently outperforms existing methods, indicating superior perceptual quality across all evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Table 3: Human evaluation results comparing our method with baselines. Our method achieves consistently higher human preference scores across all metrics, demonstrating superior perceptual quality.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13434/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13434/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}