---
title: "Segment Any Motion in Videos"
summary: "New method for moving object segmentation by combining long-range motion cues, semantic features, and SAM2, achieving state-of-the-art performance in challenging scenarios."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 UC Berkeley",]
showSummary: true
date: 2025-03-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.22268 {{< /keyword >}}
{{< keyword icon="writer" >}} Nan Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.22268" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.22268" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.22268/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Moving object segmentation is vital for high-level visual scene understanding. Previous methods often rely on optical flow, which struggles with partial motion, complex deformations, and distractions. Humans effortlessly segment moving objects, inspiring the need for more robust automated solutions. Current solutions also struggle with differentiating camera vs. object motion and tracking objects through deformations, occlusions, and rapid movements.



To solve these issues, this paper presents a novel approach for moving object segmentation, integrating long-range trajectory motion cues with DINO-based semantic features. It leverages SAM2 for pixel-level mask densification via an iterative prompting strategy. The model uses **Spatio-Temporal Trajectory Attention and Motion-Semantic Decoupled Embedding** to prioritize motion while integrating semantic support, leading to superior performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Combines long-range trajectory motion cues, DINO-based semantic features, and SAM2 for moving object segmentation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces Spatio-Temporal Trajectory Attention and Motion-Semantic Decoupled Embedding to effectively balance motion and semantic information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art performance on diverse datasets, excelling in challenging scenarios and fine-grained segmentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an innovative method for moving object segmentation in videos, combining long-range trajectory cues with semantic features and SAM2 for precise mask generation. This approach outperforms existing methods, particularly in complex scenarios, offering new research directions in video understanding, autonomous systems, and human-computer interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.22268/x1.png)

> 🔼 This figure showcases the robustness and accuracy of the proposed method for moving object segmentation.  It demonstrates the ability to successfully segment moving objects even under challenging conditions such as articulated movements (e.g., a person running), shadow reflections obscuring object boundaries, dynamic background motion that could interfere with object detection, and rapid or significant camera movements. The resulting segmentation masks are fine-grained and accurately delineate the boundaries of individual moving objects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our method is capable of handling challenging scenarios, including articulated structures, shadow reflections, dynamic background motion, and drastic camera movements, while producing per object level fine-grained moving object masks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.9">
<tr class="ltx_tr" id="S4.T1.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.9.10.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.9.10.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.9.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">Model Settings</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.9.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">DAVIS2016-Moving</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.9.10.4" style="padding-left:5.0pt;padding-right:5.0pt;">SegTrackv2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.9.10.5" style="padding-left:5.0pt;padding-right:5.0pt;">FBMS-59</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.9.10.6" style="padding-left:5.0pt;padding-right:5.0pt;">DAVIS2016</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.9.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10" style="padding-left:5.0pt;padding-right:5.0pt;">Motion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.11" style="padding-left:5.0pt;padding-right:5.0pt;">Appearance</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J\&amp;F}\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><mrow id="S4.T1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.1.1.1.m1.1.1.2.2" xref="S4.T1.1.1.1.m1.1.1.2.2.cmml">𝒥</mi><mo id="S4.T1.1.1.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T1.1.1.1.m1.1.1.2.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.1.1.1.m1.1.1.2.3" xref="S4.T1.1.1.1.m1.1.1.2.3.cmml">ℱ</mi></mrow><mo id="S4.T1.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><ci id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1">↑</ci><apply id="S4.T1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2"><and id="S4.T1.1.1.1.m1.1.1.2.1.cmml" xref="S4.T1.1.1.1.m1.1.1.2.1"></and><ci id="S4.T1.1.1.1.m1.1.1.2.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2.2">𝒥</ci><ci id="S4.T1.1.1.1.m1.1.1.2.3.cmml" xref="S4.T1.1.1.1.m1.1.1.2.3">ℱ</ci></apply><csymbol cd="latexml" id="S4.T1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\mathcal{J\&amp;F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">caligraphic_J &amp; caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mrow id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T1.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"><ci id="S4.T1.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1.1">↑</ci><ci id="S4.T1.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T1.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mrow id="S4.T1.3.3.3.m1.1.1" xref="S4.T1.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T1.3.3.3.m1.1.1.1" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1"><ci id="S4.T1.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1.1">↑</ci><ci id="S4.T1.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T1.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mrow id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.4.4.4.m1.1.1.2" xref="S4.T1.4.4.4.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T1.4.4.4.m1.1.1.1" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.4.4.4.m1.1.1.3" xref="S4.T1.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"><ci id="S4.T1.4.4.4.m1.1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1.1">↑</ci><ci id="S4.T1.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T1.4.4.4.m1.1.1.3.cmml" xref="S4.T1.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mrow id="S4.T1.5.5.5.m1.1.1" xref="S4.T1.5.5.5.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.5.5.5.m1.1.1.2" xref="S4.T1.5.5.5.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T1.5.5.5.m1.1.1.1" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.5.5.5.m1.1.1.3" xref="S4.T1.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1"><ci id="S4.T1.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1.1">↑</ci><ci id="S4.T1.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T1.5.5.5.m1.1.1.3.cmml" xref="S4.T1.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mrow id="S4.T1.6.6.6.m1.1.1" xref="S4.T1.6.6.6.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.6.6.6.m1.1.1.2" xref="S4.T1.6.6.6.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T1.6.6.6.m1.1.1.1" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.6.6.6.m1.1.1.3" xref="S4.T1.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><apply id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1"><ci id="S4.T1.6.6.6.m1.1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1.1">↑</ci><ci id="S4.T1.6.6.6.m1.1.1.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T1.6.6.6.m1.1.1.3.cmml" xref="S4.T1.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J\&amp;F}\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.m1.1a"><mrow id="S4.T1.7.7.7.m1.1.1" xref="S4.T1.7.7.7.m1.1.1.cmml"><mrow id="S4.T1.7.7.7.m1.1.1.2" xref="S4.T1.7.7.7.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.7.7.7.m1.1.1.2.2" xref="S4.T1.7.7.7.m1.1.1.2.2.cmml">𝒥</mi><mo id="S4.T1.7.7.7.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T1.7.7.7.m1.1.1.2.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.7.7.7.m1.1.1.2.3" xref="S4.T1.7.7.7.m1.1.1.2.3.cmml">ℱ</mi></mrow><mo id="S4.T1.7.7.7.m1.1.1.1" stretchy="false" xref="S4.T1.7.7.7.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.7.7.7.m1.1.1.3" xref="S4.T1.7.7.7.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.m1.1b"><apply id="S4.T1.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.m1.1.1"><ci id="S4.T1.7.7.7.m1.1.1.1.cmml" xref="S4.T1.7.7.7.m1.1.1.1">↑</ci><apply id="S4.T1.7.7.7.m1.1.1.2.cmml" xref="S4.T1.7.7.7.m1.1.1.2"><and id="S4.T1.7.7.7.m1.1.1.2.1.cmml" xref="S4.T1.7.7.7.m1.1.1.2.1"></and><ci id="S4.T1.7.7.7.m1.1.1.2.2.cmml" xref="S4.T1.7.7.7.m1.1.1.2.2">𝒥</ci><ci id="S4.T1.7.7.7.m1.1.1.2.3.cmml" xref="S4.T1.7.7.7.m1.1.1.2.3">ℱ</ci></apply><csymbol cd="latexml" id="S4.T1.7.7.7.m1.1.1.3.cmml" xref="S4.T1.7.7.7.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.m1.1c">\mathcal{J\&amp;F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.m1.1d">caligraphic_J &amp; caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.m1.1a"><mrow id="S4.T1.8.8.8.m1.1.1" xref="S4.T1.8.8.8.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.8.8.8.m1.1.1.2" xref="S4.T1.8.8.8.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T1.8.8.8.m1.1.1.1" stretchy="false" xref="S4.T1.8.8.8.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.8.8.8.m1.1.1.3" xref="S4.T1.8.8.8.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.m1.1b"><apply id="S4.T1.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.m1.1.1"><ci id="S4.T1.8.8.8.m1.1.1.1.cmml" xref="S4.T1.8.8.8.m1.1.1.1">↑</ci><ci id="S4.T1.8.8.8.m1.1.1.2.cmml" xref="S4.T1.8.8.8.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T1.8.8.8.m1.1.1.3.cmml" xref="S4.T1.8.8.8.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.9" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.m1.1a"><mrow id="S4.T1.9.9.9.m1.1.1" xref="S4.T1.9.9.9.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.9.9.9.m1.1.1.2" xref="S4.T1.9.9.9.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T1.9.9.9.m1.1.1.1" stretchy="false" xref="S4.T1.9.9.9.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.9.9.9.m1.1.1.3" xref="S4.T1.9.9.9.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.m1.1b"><apply id="S4.T1.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.m1.1.1"><ci id="S4.T1.9.9.9.m1.1.1.1.cmml" xref="S4.T1.9.9.9.m1.1.1.1">↑</ci><ci id="S4.T1.9.9.9.m1.1.1.2.cmml" xref="S4.T1.9.9.9.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T1.9.9.9.m1.1.1.3.cmml" xref="S4.T1.9.9.9.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T1.9.9.12" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">CIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.4" style="padding-left:5.0pt;padding-right:5.0pt;">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.5" style="padding-left:5.0pt;padding-right:5.0pt;">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.6" style="padding-left:5.0pt;padding-right:5.0pt;">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.7" style="padding-left:5.0pt;padding-right:5.0pt;">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.8" style="padding-left:5.0pt;padding-right:5.0pt;">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.9" style="padding-left:5.0pt;padding-right:5.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.10" style="padding-left:5.0pt;padding-right:5.0pt;">68.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.11" style="padding-left:5.0pt;padding-right:5.0pt;">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.11.12" style="padding-left:5.0pt;padding-right:5.0pt;">66.8</td>
<td class="ltx_td ltx_border_t" id="S4.T1.9.11.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.12">
<td class="ltx_td ltx_align_left" id="S4.T1.9.12.1" style="padding-left:5.0pt;padding-right:5.0pt;">EM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.3" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.4" style="padding-left:5.0pt;padding-right:5.0pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.5" style="padding-left:5.0pt;padding-right:5.0pt;">76.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.6" style="padding-left:5.0pt;padding-right:5.0pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.7" style="padding-left:5.0pt;padding-right:5.0pt;">55.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.8" style="padding-left:5.0pt;padding-right:5.0pt;">57.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.9" style="padding-left:5.0pt;padding-right:5.0pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.10" style="padding-left:5.0pt;padding-right:5.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.11" style="padding-left:5.0pt;padding-right:5.0pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.12.12" style="padding-left:5.0pt;padding-right:5.0pt;">70.7</td>
<td class="ltx_td" id="S4.T1.9.12.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.13">
<td class="ltx_td ltx_align_left" id="S4.T1.9.13.1" style="padding-left:5.0pt;padding-right:5.0pt;">RCF-Stage1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.3" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.4" style="padding-left:5.0pt;padding-right:5.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.5" style="padding-left:5.0pt;padding-right:5.0pt;">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.6" style="padding-left:5.0pt;padding-right:5.0pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.7" style="padding-left:5.0pt;padding-right:5.0pt;">76.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.8" style="padding-left:5.0pt;padding-right:5.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.9" style="padding-left:5.0pt;padding-right:5.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.10" style="padding-left:5.0pt;padding-right:5.0pt;">78.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.11" style="padding-left:5.0pt;padding-right:5.0pt;">80.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.13.12" style="padding-left:5.0pt;padding-right:5.0pt;">76.9</td>
<td class="ltx_td" id="S4.T1.9.13.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.14">
<td class="ltx_td ltx_align_left" id="S4.T1.9.14.1" style="padding-left:5.0pt;padding-right:5.0pt;">RCF-All <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.3" style="padding-left:5.0pt;padding-right:5.0pt;">DINO</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.4" style="padding-left:5.0pt;padding-right:5.0pt;">79.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.5" style="padding-left:5.0pt;padding-right:5.0pt;">81.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.6" style="padding-left:5.0pt;padding-right:5.0pt;">78.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.14.7.1">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.8" style="padding-left:5.0pt;padding-right:5.0pt;">72.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.9" style="padding-left:5.0pt;padding-right:5.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.10" style="padding-left:5.0pt;padding-right:5.0pt;">80.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.11" style="padding-left:5.0pt;padding-right:5.0pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.14.12" style="padding-left:5.0pt;padding-right:5.0pt;">79.2</td>
<td class="ltx_td" id="S4.T1.9.14.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.15">
<td class="ltx_td ltx_align_left" id="S4.T1.9.15.1" style="padding-left:5.0pt;padding-right:5.0pt;">OCLR-flow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.3" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.4" style="padding-left:5.0pt;padding-right:5.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.5" style="padding-left:5.0pt;padding-right:5.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.6" style="padding-left:5.0pt;padding-right:5.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.7" style="padding-left:5.0pt;padding-right:5.0pt;">67.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.8" style="padding-left:5.0pt;padding-right:5.0pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.9" style="padding-left:5.0pt;padding-right:5.0pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.10" style="padding-left:5.0pt;padding-right:5.0pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.11" style="padding-left:5.0pt;padding-right:5.0pt;">72.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.15.12" style="padding-left:5.0pt;padding-right:5.0pt;">70.4</td>
<td class="ltx_td" id="S4.T1.9.15.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.16">
<td class="ltx_td ltx_align_left" id="S4.T1.9.16.1" style="padding-left:5.0pt;padding-right:5.0pt;">OCLR-TTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.3" style="padding-left:5.0pt;padding-right:5.0pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.4" style="padding-left:5.0pt;padding-right:5.0pt;">78.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.5" style="padding-left:5.0pt;padding-right:5.0pt;">80.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.6" style="padding-left:5.0pt;padding-right:5.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.7" style="padding-left:5.0pt;padding-right:5.0pt;">72.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.8" style="padding-left:5.0pt;padding-right:5.0pt;">69.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.9" style="padding-left:5.0pt;padding-right:5.0pt;">68.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.10" style="padding-left:5.0pt;padding-right:5.0pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.11" style="padding-left:5.0pt;padding-right:5.0pt;">80.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.16.12" style="padding-left:5.0pt;padding-right:5.0pt;">76.8</td>
<td class="ltx_td" id="S4.T1.9.16.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.17">
<td class="ltx_td ltx_align_left" id="S4.T1.9.17.1" style="padding-left:5.0pt;padding-right:5.0pt;">ABR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.2" style="padding-left:5.0pt;padding-right:5.0pt;">Optical Flow</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.3" style="padding-left:5.0pt;padding-right:5.0pt;">DINO</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.4" style="padding-left:5.0pt;padding-right:5.0pt;">72.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.5" style="padding-left:5.0pt;padding-right:5.0pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.6" style="padding-left:5.0pt;padding-right:5.0pt;">73.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.7" style="padding-left:5.0pt;padding-right:5.0pt;">76.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.17.8.1">81.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.9" style="padding-left:5.0pt;padding-right:5.0pt;">79.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.10" style="padding-left:5.0pt;padding-right:5.0pt;">72.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.11" style="padding-left:5.0pt;padding-right:5.0pt;">71.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.17.12" style="padding-left:5.0pt;padding-right:5.0pt;">73.2</td>
<td class="ltx_td" id="S4.T1.9.17.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.9.18.1" style="padding-left:5.0pt;padding-right:5.0pt;">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.2" style="padding-left:5.0pt;padding-right:5.0pt;">Trajectory</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.3" style="padding-left:5.0pt;padding-right:5.0pt;">DINO</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.4.1">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.5.1">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.6.1">89.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.7" style="padding-left:5.0pt;padding-right:5.0pt;">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.8" style="padding-left:5.0pt;padding-right:5.0pt;">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.9.1">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.10.1">90.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.11.1">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.18.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.18.12.1">91.0</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T1.9.18.13" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for moving object segmentation (MOS).  The results are based on the MOS task where all foreground objects in a video are grouped together for evaluation. The comparison includes several metrics, providing a comprehensive assessment of the performance of each method on various datasets, including the J (Jaccard index) and F (Dice score) scores.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison on MOS task which grouping all foreground objects together for evaluation.
> </details>





### In-depth insights


#### Tracks & SAM2
The paper introduces a novel approach combining long-range **point tracks** with **SAM2** for moving object segmentation. **Long-range tracks** capture motion patterns & provide prompts for visual segmentation. **SAM2** enables efficient mask densification & tracking across frames. A key innovation lies in an iterative prompting strategy, leveraging the identified dynamic tracks to guide SAM2 in generating precise moving object masks. By using the tracks to create memory and prompt SAM2 at regular intervals to avoid losing track of the object, which is an important step in generating complete masks.

#### Motion Emphasis
Motion emphasis in video analysis is crucial for understanding scene dynamics. Prior research often relies on optical flow, but this method can struggle with occlusions or complex motion. The paper introduces an innovative approach to tackle these limitations, **combining long-range trajectory motion cues with DINO-based semantic features and leveraging SAM2 for pixel-level mask densification.** The model emphasizes motion cues while integrating semantic support, **employing Spatio-Temporal Trajectory Attention and Motion-Semantic Decoupled Embedding** to prioritize motion and incorporate semantic context. This approach is beneficial as it provides robustness against background clutter and motion blur, making it applicable to more challenging real-world scenarios. It also enhances the ability to differentiate between moving objects and static elements within the same semantic category. Overall, this provides **a more reliable and accurate method for motion-based video analysis.**

#### DINO Integration
The paper leverages DINO features, likely extracted from a self-supervised model like DINOv2, to enhance moving object segmentation. DINO, pre-trained on large datasets, provides rich semantic information that complements motion cues. The integration addresses limitations of motion-based methods, which struggle with complex scenes or camera motion. The semantic context helps differentiate moving objects from static background and handles cases where motion alone is ambiguous. A key challenge is preventing the model from over-relying on semantics. The paper introduces a Motion-Semantic Decoupled Embedding to prioritize motion information while using semantics as a secondary cue. This decoupling is crucial for accurately segmenting moving objects even when they share semantic similarities with the background. Ablation studies demonstrate the importance of DINO integration, showing performance gains compared to models relying solely on motion or raw RGB data. Proper integration strategy is crucial, preventing semantic bias and ensuring robust segmentation across diverse scenarios.

#### Beyond Affinity
**Affinity-based methods** for motion segmentation, while historically significant, often struggle with **global consistency** due to their reliance on local similarities. These methods, which typically employ techniques like spectral clustering on affinity matrices, are inherently sensitive to noise and can falter when faced with complex, dynamic motion patterns. Challenges arise from the difficulty in capturing motion similarities across diverse types, as affinity matrices may fail to represent the full spectrum of motion dynamics. These methods **lack the ability to adapt** to changing motion features over time, potentially leading to inaccurate and inconsistent segmentation results. Transitioning beyond affinity requires exploring new approaches that can capture long-range dependencies and integrate diverse cues in a more robust and adaptive manner, essential for enhancing the accuracy and reliability of motion segmentation.

#### No Perfect Tracks
While "No Perfect Tracks" isn't an explicit heading, it alludes to the core challenge in motion analysis. **Real-world tracking is inherently imperfect**. Occlusions, rapid movements, and changes in appearance inevitably lead to broken or noisy tracks. A robust motion segmentation system must therefore be resilient to such imperfections. This necessitates strategies for handling missing data, filtering out erroneous tracks, and inferring motion patterns from incomplete information. The algorithm should likely incorporate mechanisms for **estimating track quality** (confidence scores) and prioritizing reliable tracks over less certain ones. The system must also be able to **leverage contextual information** from nearby tracks or semantic cues to compensate for track imperfections and maintain accurate segmentation, even when individual tracks are unreliable. It must deal with situations where **tracks are too short** or simply **terminate unexpectedly**, as is often the case due to occlusions or objects leaving the field of view.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.22268/x2.png)

> 🔼 This figure demonstrates the superiority of long-range tracking over optical flow methods for moving object segmentation.  It shows that as time elapses, factors like occlusion and changing lighting conditions can severely hinder the accuracy of optical flow-based tracking, while long-range tracking remains more robust. The graph visually compares the performance of the two methods over time, highlighting how long-range tracks maintain their effectiveness even when encountering challenging conditions that disrupt optical flow.
> <details>
> <summary>read the caption</summary>
> Figure 2: The effectiveness of long-range tracks. Over longer periods of time, if a moving object experiences factors such as occlusion or changes in lighting, it can negatively affect the tracking performance of optical-flow-based methods for that object.
> </details>



![](https://arxiv.org/html/2503.22268/x3.png)

> 🔼 This figure illustrates the pipeline of the proposed method for moving object segmentation.  It starts with 2D tracks and depth maps from external models as input. These are fed into a motion encoder to extract motion features, generating 'featured tracks'. A tracks decoder, incorporating DINO features for semantic information, then processes these featured tracks, separating motion and semantic cues to identify dynamic trajectories. Finally, the identified trajectories are grouped using SAM2 to generate pixel-accurate masks for moving objects.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of Our Pipeline. We take 2D tracks and depth maps generated by off-the-shelf models [15, 66] as input, which are then processed by a motion encoder to capture motion patterns, producing featured tracks. Next, we use tracks decoder that integrates DINO feature [45] to decode the featured tracks by decoupling motion and semantic information and ultimately obtain the dynamic trajectories(a). Finally, using SAM2 [51], we group dynamic tracks belonging to the same object and generate fine-grained moving object masks(b).
> </details>



![](https://arxiv.org/html/2503.22268/x4.png)

> 🔼 Figure 4 presents a qualitative comparison of moving object segmentation results on the DAVIS17-moving benchmark dataset.  Three challenging scenarios are highlighted:  the left column showcases the successful segmentation of a moving object despite water reflections that would typically confuse simpler methods; the middle column demonstrates accurate segmentation of a camouflaged object, highlighting the model's robustness to visual ambiguity; the right column shows accurate segmentation even with significant, drastic camera motion, proving the algorithm's effectiveness under challenging conditions.  Each row displays the ground truth mask (GT), followed by the masks generated by our proposed method and various other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison on DAVIS17-moving benchmarks. For each sequence we show moving object mask results. Our method successfully handles water reflections (left), camouflage appearances (middle), and drastic camera motion (right).
> </details>



![](https://arxiv.org/html/2503.22268/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of moving object segmentation results on the FBMS-59 benchmark dataset. It visually demonstrates that the proposed method generates masks that are more geometrically complete and detailed compared to several baseline methods.  The figure showcases examples where the model's output provides more accurate and precise boundaries for moving objects, capturing fine details that are missed by other approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison on FBMS-59 benchmarks. The masks produced by us are geometrically more complete and detailed.
> </details>



![](https://arxiv.org/html/2503.22268/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of moving object segmentation results on the SegTrack v2 benchmark dataset.  The figure visually demonstrates the performance of the proposed method (Ours) against several other state-of-the-art techniques (GT, CIS, OCLR-TTA, ABR, RCF-All, EM).  Each column shows the ground truth segmentation mask (GT), followed by the segmentation masks generated by each method, including the authors' proposed method. This allows for a direct visual comparison of the accuracy and robustness of different approaches. The figure highlights the effectiveness of the proposed method in handling challenging conditions, particularly those involving significant motion blur, a scenario where other techniques often struggle. The figure showcases improved segmentation accuracy even in challenging scenarios like those with motion blur.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison on SegTrack v2 benchmarks. Our method succeeds even under motion blur conditions.
> </details>



![](https://arxiv.org/html/2503.22268/x7.png)

> 🔼 Figure 7 displays a qualitative comparison of fine-grained moving object segmentation results.  It showcases the per-object level mask generation capabilities of the proposed model, highlighting its ability to produce detailed and accurate masks for each individual object, even in complex scenarios with multiple interacting objects.  This contrasts with methods that only produce a single mask for all moving objects.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparison on Fine-grained MOS task which will produce per-object level masks.
> </details>



![](https://arxiv.org/html/2503.22268/x8.png)

> 🔼 This figure presents a qualitative comparison of ablation study results on challenging scenarios. The top row shows the results on sequences with drastic camera motion and complex motion patterns, highlighting the impact of different components of the proposed model. The bottom row showcases results when both static and dynamic objects of the same category are present, demonstrating the model's ability to differentiate between them. The detailed experimental setup can be found in Section 4.5 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Visual comparison for the ablation study on two critical and challenging cases. The top sequence shows scenarios involves drastic camera motion and complex motion patterns, while the bottom sequence with both static and dynamic objects of the same category. The experimental setup is detailed in Sec. 4.5.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.5">
<tr class="ltx_tr" id="S4.T2.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.5.6.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.6.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.5.6.2" style="padding-left:5.0pt;padding-right:5.0pt;">MOS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.5.6.3" style="padding-left:5.0pt;padding-right:5.0pt;">Fine-grained MOS</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T2.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><ci id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1.1">↑</ci><ci id="S4.T2.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T2.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mrow id="S4.T2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.2.2.2.m1.1.1.2" xref="S4.T2.2.2.2.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T2.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.2.2.2.m1.1.1.3" xref="S4.T2.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><apply id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1"><ci id="S4.T2.2.2.2.m1.1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1.1">↑</ci><ci id="S4.T2.2.2.2.m1.1.1.2.cmml" xref="S4.T2.2.2.2.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T2.2.2.2.m1.1.1.3.cmml" xref="S4.T2.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J\&amp;F}\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mrow id="S4.T2.3.3.3.m1.1.1" xref="S4.T2.3.3.3.m1.1.1.cmml"><mrow id="S4.T2.3.3.3.m1.1.1.2" xref="S4.T2.3.3.3.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.m1.1.1.2.2" xref="S4.T2.3.3.3.m1.1.1.2.2.cmml">𝒥</mi><mo id="S4.T2.3.3.3.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.3.3.3.m1.1.1.2.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.m1.1.1.2.3" xref="S4.T2.3.3.3.m1.1.1.2.3.cmml">ℱ</mi></mrow><mo id="S4.T2.3.3.3.m1.1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.3.3.3.m1.1.1.3" xref="S4.T2.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1"><ci id="S4.T2.3.3.3.m1.1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1.1">↑</ci><apply id="S4.T2.3.3.3.m1.1.1.2.cmml" xref="S4.T2.3.3.3.m1.1.1.2"><and id="S4.T2.3.3.3.m1.1.1.2.1.cmml" xref="S4.T2.3.3.3.m1.1.1.2.1"></and><ci id="S4.T2.3.3.3.m1.1.1.2.2.cmml" xref="S4.T2.3.3.3.m1.1.1.2.2">𝒥</ci><ci id="S4.T2.3.3.3.m1.1.1.2.3.cmml" xref="S4.T2.3.3.3.m1.1.1.2.3">ℱ</ci></apply><csymbol cd="latexml" id="S4.T2.3.3.3.m1.1.1.3.cmml" xref="S4.T2.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\mathcal{J\&amp;F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mrow id="S4.T2.4.4.4.m1.1.1" xref="S4.T2.4.4.4.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.4.m1.1.1.2" xref="S4.T2.4.4.4.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T2.4.4.4.m1.1.1.1" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.4.4.4.m1.1.1.3" xref="S4.T2.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><apply id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1"><ci id="S4.T2.4.4.4.m1.1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1.1">↑</ci><ci id="S4.T2.4.4.4.m1.1.1.2.cmml" xref="S4.T2.4.4.4.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T2.4.4.4.m1.1.1.3.cmml" xref="S4.T2.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mrow id="S4.T2.5.5.5.m1.1.1" xref="S4.T2.5.5.5.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.m1.1.1.2" xref="S4.T2.5.5.5.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T2.5.5.5.m1.1.1.1" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.5.5.5.m1.1.1.3" xref="S4.T2.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><apply id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1"><ci id="S4.T2.5.5.5.m1.1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1.1">↑</ci><ci id="S4.T2.5.5.5.m1.1.1.2.cmml" xref="S4.T2.5.5.5.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T2.5.5.5.m1.1.1.3.cmml" xref="S4.T2.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">OCLR-flow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">69.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.4" style="padding-left:5.0pt;padding-right:5.0pt;">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.5" style="padding-left:5.0pt;padding-right:5.0pt;">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.6" style="padding-left:5.0pt;padding-right:5.0pt;">46.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8">
<td class="ltx_td ltx_align_left" id="S4.T2.5.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">OCLR-TTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">49.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">48.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">49.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9">
<td class="ltx_td ltx_align_left" id="S4.T2.5.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">ABR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.22268v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4" style="padding-left:5.0pt;padding-right:5.0pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.5" style="padding-left:5.0pt;padding-right:5.0pt;">50.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.6" style="padding-left:5.0pt;padding-right:5.0pt;">51.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.5.10.1" style="padding-left:5.0pt;padding-right:5.0pt;">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.2.1">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.3.1">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.4.1">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.1">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.6.1">83.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different methods for moving object segmentation on the DAVIS17-Moving dataset.  It assesses performance on two distinct tasks: standard Moving Object Segmentation (MOS), where all foreground moving objects are grouped together for evaluation; and Fine-grained MOS, which requires the accurate segmentation of individual moving objects.  The table shows the J and F scores for each method on both tasks, allowing for a detailed comparison of accuracy in segmenting moving objects at both a coarse and fine level of granularity.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison on DAVIS17-Moving dataset for MOS and Fine-grained MOS tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.6">
<tr class="ltx_tr" id="S4.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.6.7.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.7.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.7.2.1" style="font-size:90%;">DAVIS17-Moving</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.7.3.1" style="font-size:90%;">DAVIS16-Moving</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J\&amp;F}\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mrow id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.1.1.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.1.1.1.m1.1.1.2.2.cmml">𝒥</mi><mo id="S4.T3.1.1.1.m1.1.1.2.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.T3.1.1.1.m1.1.1.2.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.1.1.1.m1.1.1.2.3" mathsize="90%" xref="S4.T3.1.1.1.m1.1.1.2.3.cmml">ℱ</mi></mrow><mo id="S4.T3.1.1.1.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><ci id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1">↑</ci><apply id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2"><and id="S4.T3.1.1.1.m1.1.1.2.1.cmml" xref="S4.T3.1.1.1.m1.1.1.2.1"></and><ci id="S4.T3.1.1.1.m1.1.1.2.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2.2">𝒥</ci><ci id="S4.T3.1.1.1.m1.1.1.2.3.cmml" xref="S4.T3.1.1.1.m1.1.1.2.3">ℱ</ci></apply><csymbol cd="latexml" id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\mathcal{J\&amp;F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">caligraphic_J &amp; caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.2.2.2.m1.1.1.2" mathsize="90%" xref="S4.T3.2.2.2.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T3.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><ci id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1.1">↑</ci><ci id="S4.T3.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T3.2.2.2.m1.1.1.3.cmml" xref="S4.T3.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mrow id="S4.T3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.3.3.3.m1.1.1.2" mathsize="90%" xref="S4.T3.3.3.3.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T3.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.3.3.3.m1.1.1.3" xref="S4.T3.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1"><ci id="S4.T3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1.1">↑</ci><ci id="S4.T3.3.3.3.m1.1.1.2.cmml" xref="S4.T3.3.3.3.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T3.3.3.3.m1.1.1.3.cmml" xref="S4.T3.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J\&amp;F}\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mrow id="S4.T3.4.4.4.m1.1.1" xref="S4.T3.4.4.4.m1.1.1.cmml"><mrow id="S4.T3.4.4.4.m1.1.1.2" xref="S4.T3.4.4.4.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.4.4.m1.1.1.2.2" mathsize="90%" xref="S4.T3.4.4.4.m1.1.1.2.2.cmml">𝒥</mi><mo id="S4.T3.4.4.4.m1.1.1.2.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.T3.4.4.4.m1.1.1.2.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.4.4.m1.1.1.2.3" mathsize="90%" xref="S4.T3.4.4.4.m1.1.1.2.3.cmml">ℱ</mi></mrow><mo id="S4.T3.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.4.4.4.m1.1.1.3" xref="S4.T3.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1"><ci id="S4.T3.4.4.4.m1.1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1.1">↑</ci><apply id="S4.T3.4.4.4.m1.1.1.2.cmml" xref="S4.T3.4.4.4.m1.1.1.2"><and id="S4.T3.4.4.4.m1.1.1.2.1.cmml" xref="S4.T3.4.4.4.m1.1.1.2.1"></and><ci id="S4.T3.4.4.4.m1.1.1.2.2.cmml" xref="S4.T3.4.4.4.m1.1.1.2.2">𝒥</ci><ci id="S4.T3.4.4.4.m1.1.1.2.3.cmml" xref="S4.T3.4.4.4.m1.1.1.2.3">ℱ</ci></apply><csymbol cd="latexml" id="S4.T3.4.4.4.m1.1.1.3.cmml" xref="S4.T3.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\mathcal{J\&amp;F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">caligraphic_J &amp; caligraphic_F ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{J}\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mrow id="S4.T3.5.5.5.m1.1.1" xref="S4.T3.5.5.5.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.5.5.5.m1.1.1.2" mathsize="90%" xref="S4.T3.5.5.5.m1.1.1.2.cmml">𝒥</mi><mo id="S4.T3.5.5.5.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.5.5.5.m1.1.1.3" xref="S4.T3.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><apply id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1"><ci id="S4.T3.5.5.5.m1.1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1.1">↑</ci><ci id="S4.T3.5.5.5.m1.1.1.2.cmml" xref="S4.T3.5.5.5.m1.1.1.2">𝒥</ci><csymbol cd="latexml" id="S4.T3.5.5.5.m1.1.1.3.cmml" xref="S4.T3.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\mathcal{J}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">caligraphic_J ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\mathcal{F}\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mrow id="S4.T3.6.6.6.m1.1.1" xref="S4.T3.6.6.6.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.6.6.6.m1.1.1.2" mathsize="90%" xref="S4.T3.6.6.6.m1.1.1.2.cmml">ℱ</mi><mo id="S4.T3.6.6.6.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.6.6.6.m1.1.1.3" xref="S4.T3.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><apply id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1"><ci id="S4.T3.6.6.6.m1.1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1.1">↑</ci><ci id="S4.T3.6.6.6.m1.1.1.2.cmml" xref="S4.T3.6.6.6.m1.1.1.2">ℱ</ci><csymbol cd="latexml" id="S4.T3.6.6.6.m1.1.1.3.cmml" xref="S4.T3.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">\mathcal{F}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">caligraphic_F ↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.1.1" style="font-size:90%;">w/o Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.2.1" style="font-size:90%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.3.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.4.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.5.1" style="font-size:90%;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.6.1" style="font-size:90%;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.8.7.1" style="font-size:90%;">86.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9">
<td class="ltx_td ltx_align_left" id="S4.T3.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.1.1" style="font-size:90%;">w/o Tracks</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.2.1" style="font-size:90%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.3.1" style="font-size:90%;">14.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.4.1" style="font-size:90%;">24.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.5.1" style="font-size:90%;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.6.1" style="font-size:90%;">9.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.9.7.1" style="font-size:90%;">31.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10">
<td class="ltx_td ltx_align_left" id="S4.T3.6.10.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.1.1" style="font-size:90%;">w/o DINO</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.2.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.3.1" style="font-size:90%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.4.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.5.1" style="font-size:90%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.6.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.10.7.1" style="font-size:90%;">79.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.11">
<td class="ltx_td ltx_align_left" id="S4.T3.6.11.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.1.1" style="font-size:90%;">w/o MOE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.2.1" style="font-size:90%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.3.1" style="font-size:90%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.4.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.5.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.6.1" style="font-size:90%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.11.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.11.7.1" style="font-size:90%;">82.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.12">
<td class="ltx_td ltx_align_left" id="S4.T3.6.12.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.1.1" style="font-size:90%;">w/o MSDE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.2.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.3.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.4.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.5.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.6.1" style="font-size:90%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.12.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.12.7.1" style="font-size:90%;">79.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.13">
<td class="ltx_td ltx_align_left" id="S4.T3.6.13.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.1.1" style="font-size:90%;">w/o PE</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.2.1" style="font-size:90%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.3.1" style="font-size:90%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.4.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.5.1" style="font-size:90%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.6.1" style="font-size:90%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.13.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.13.7.1" style="font-size:90%;">82.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.14">
<td class="ltx_td ltx_align_left" id="S4.T3.6.14.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.1.1" style="font-size:90%;">w/o ST-ATT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.2.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.3.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.4.1" style="font-size:90%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.5.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.6.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.14.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.14.7.1" style="font-size:90%;">82.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.6.15.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T3.6.15.1.1" style="font-size:90%;">Ours-full</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.2.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.3.1" style="font-size:90%;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.4.1" style="font-size:90%;">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.5.1" style="font-size:90%;">89.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.6.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.6.15.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.15.7.1" style="font-size:90%;">89.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of different components of the proposed model on the DAVIS17-Moving and DAVIS16-Moving datasets.  The DAVIS17-Moving dataset assesses fine-grained moving object segmentation (per-object masks), while DAVIS16-Moving evaluates standard moving object segmentation (grouping all moving objects together). The table shows the performance (J&F scores and Intersection over Union (IoU) scores) when removing different model components, such as depth information, long-range tracks, DINO features, the motion-only encoding module, motion-semantic decoupled embedding, positional encoding, and spatio-temporal attention. This allows for a quantitative analysis of the contribution of each component to the overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison for the ablation study on the DAVIS17-Moving and DAVIS16-Moving benchmarks, which evaluate fine-grained MOS and MOS tasks, respectively. The experimental setup is detailed in Sec. 4.5.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.22268/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22268/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}