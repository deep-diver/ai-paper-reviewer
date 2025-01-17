---
title: "Do generative video models learn physical principles from watching videos?"
summary: "Generative video models struggle to understand physics despite producing visually realistic videos; Physics-IQ benchmark reveals this critical limitation, highlighting the need for improved physical r..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Google DeepMind",]
showSummary: true
date: 2025-01-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09038 {{< /keyword >}}
{{< keyword icon="writer" >}} Saman Motamed et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09038" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09038" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09038/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The research explores whether state-of-the-art generative video models truly understand physics, or simply mimic visual realism without grasping physical laws. Existing benchmarks primarily focus on visual fidelity rather than physical understanding, neglecting whether models can reliably extrapolate knowledge to novel scenarios involving complex interactions. This lack of evaluation leads to an ongoing debate about the true capabilities of these models.

To address this, researchers developed Physics-IQ, a benchmark dataset designed to specifically test physical understanding. This dataset includes diverse scenarios requiring knowledge of multiple physical principles such as fluid dynamics, solid mechanics, and optics.  The evaluation involved testing several popular video generation models on this dataset and employing novel metrics to assess not only where and when actions occur but also how much and how they happen.  Results showed that even the best-performing models demonstrated limited physical understanding, highlighting the critical need for improved physical reasoning in AI video generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current generative video models, while visually impressive, lack a deep understanding of underlying physical principles. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Physics-IQ benchmark provides a rigorous evaluation of physical understanding in video models, revealing the significant gap between visual realism and physical accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Visual realism in video generation does not necessarily imply true understanding of physics; further research is needed to bridge this gap. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it introduces a novel benchmark, Physics-IQ**, to rigorously evaluate physical understanding in video generative models.  It reveals a significant gap between visual realism and actual physical comprehension in current models, **highlighting a critical area for improvement** and opening avenues for future research in AI and physical reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09038/x1.png)

> 🔼 Figure 1 presents example scenarios from the Physics-IQ benchmark dataset, designed to evaluate the physical understanding capabilities of video generative models.  Each scenario tests a specific aspect of physics (Solid Mechanics, Fluid Dynamics, Optics, Thermodynamics, and Magnetism).  The models receive either a single frame (for image-to-video models) or a 3-second video clip (for video-to-video models) as input, and are then tasked with predicting the next 5 seconds of the video. Successful prediction necessitates an understanding of the relevant physical principles involved in each scene.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample scenarios from the Physics-IQ dataset for testing physical understanding in generative video models. Models are shown the beginning of a video (single frame for image2video models; 3 seconds for video2video models) and need to predict how the video continues over the next 5 seconds, which requires understanding different physical properties: Solid Mechanics, Fluid Dynamics, Optics, Thermodynamics, and Magnetism. See here for an animated version of this figure.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx2.T1.5.5">
<tr class="ltx_tr" id="Sx2.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.5.6"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.5.6.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.1.1.1.1">
<span class="ltx_text" id="Sx2.T1.1.1.1.1.2"></span> <span class="ltx_text" id="Sx2.T1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="Sx2.T1.1.1.1.1.1.1">
<span class="ltx_tr" id="Sx2.T1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.1.1.1.1.1.1.2.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="Sx2.T1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.1.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.1.1.1.1.1.1.1.1.1">IoU</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1"><semantics id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1a"><mo id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1b"><ci id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="Sx2.T1.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T1.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="Sx2.T1.1.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.2.2.2.2">
<span class="ltx_text" id="Sx2.T1.2.2.2.2.2"></span> <span class="ltx_text" id="Sx2.T1.2.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="Sx2.T1.2.2.2.2.1.1">
<span class="ltx_tr" id="Sx2.T1.2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.2.2.2.2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.2.2.2.2.1.1.2.1.1">Spatiotemporal</span></span></span>
<span class="ltx_tr" id="Sx2.T1.2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.2.2.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.2.2.2.2.1.1.1.1.1">IoU</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1"><semantics id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1a"><mo id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1b"><ci id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="Sx2.T1.2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T1.2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="Sx2.T1.2.2.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.3.3.3.3">
<span class="ltx_text" id="Sx2.T1.3.3.3.3.2"></span> <span class="ltx_text" id="Sx2.T1.3.3.3.3.1">
<span class="ltx_tabular ltx_align_middle" id="Sx2.T1.3.3.3.3.1.1">
<span class="ltx_tr" id="Sx2.T1.3.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.3.3.3.3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.3.3.3.3.1.1.2.1.1">Weighted spatial</span></span></span>
<span class="ltx_tr" id="Sx2.T1.3.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.3.3.3.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.3.3.3.3.1.1.1.1.1">IoU</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1"><semantics id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1a"><mo id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1b"><ci id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="Sx2.T1.3.3.3.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T1.3.3.3.3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="Sx2.T1.3.3.3.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.4.4.4.4">
<span class="ltx_text" id="Sx2.T1.4.4.4.4.2"></span> <span class="ltx_text" id="Sx2.T1.4.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="Sx2.T1.4.4.4.4.1.1">
<span class="ltx_tr" id="Sx2.T1.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.4.4.4.4.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.4.4.4.4.1.1.2.1.1">MSE</span></span></span>
<span class="ltx_tr" id="Sx2.T1.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.4.4.4.4.1.1.1.1"><math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1"><semantics id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1a"><mo id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T1.4.4.4.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1b"><ci id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="Sx2.T1.4.4.4.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T1.4.4.4.4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="Sx2.T1.4.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.5.5">
<span class="ltx_text" id="Sx2.T1.5.5.5.5.2"></span> <span class="ltx_text" id="Sx2.T1.5.5.5.5.1">
<span class="ltx_tabular ltx_align_middle" id="Sx2.T1.5.5.5.5.1.1">
<span class="ltx_tr" id="Sx2.T1.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.5.5.5.5.1.1.2.1"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.5.5.1.1.2.1.1">Physics-IQ Score</span></span></span>
<span class="ltx_tr" id="Sx2.T1.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T1.5.5.5.5.1.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1"><semantics id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1a"><mo id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="Sx2.T1.5.5.5.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1b"><ci id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1.1.cmml" xref="Sx2.T1.5.5.5.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T1.5.5.5.5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="Sx2.T1.5.5.5.5.3"></span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.1.1" style="background-color:#E6E6E6;">Physical Variance</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.2.1" style="background-color:#E6E6E6;">0.645</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.3.1" style="background-color:#E6E6E6;">0.512</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.4.1" style="background-color:#E6E6E6;">0.626</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.5.1" style="background-color:#E6E6E6;">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.6.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.6.6.1" style="background-color:#E6E6E6;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.1" style="background-color:#CC5500;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.7.1.1" style="background-color:#CC5500;">VideoPoet (multiframe)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.2"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.7.2.1">0.245</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.3">0.143</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.4">0.054</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.5"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.7.5.1">0.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.7.6"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.7.6.1">24.1</span></td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.1" style="background-color:#2CA02C;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.8.1.1" style="background-color:#2CA02C;">Runway Gen 3 (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.2">0.220</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.3">0.109</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.4">0.044</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.5">0.015</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.8.6">18.4</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.1" style="background-color:#1C69A7;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.9.1.1" style="background-color:#1C69A7;">Lumiere (multiframe)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.2">0.170</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.3">0.146</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.4">0.034</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.5">0.013</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.9.6">18.2</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.1" style="background-color:#FF7F0E;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.10.1.1" style="background-color:#FF7F0E;">VideoPoet (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.2">0.175</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.3">0.106</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.4">0.057</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.5">0.012</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.10.6">18.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.11">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.1" style="background-color:#17BECF;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.11.1.1" style="background-color:#17BECF;">Lumiere (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.2">0.138</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.3"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.11.3.1">0.165</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.4">0.024</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.5">0.016</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.11.6">17.1</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.12">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.1" style="background-color:#9467BD;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.12.1.1" style="background-color:#9467BD;">Stable Video Diffusion (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.2">0.139</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.3">0.054</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.4"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.12.4.1">0.088</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.5">0.021</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.12.6">13.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.13">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.1" style="background-color:#FFD700;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.13.1.1" style="background-color:#FFD700;">Pika 1.0 (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.2">0.151</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.3">0.034</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.4">0.026</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.5">0.014</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T1.5.5.13.6">9.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T1.5.5.14">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.1" style="background-color:#FF0606;"><span class="ltx_text ltx_font_bold" id="Sx2.T1.5.5.14.1.1" style="background-color:#FF0606;">Sora (i2v)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.2">0.142</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.3">0.041</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.4">0.055</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.5">0.036</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx2.T1.5.5.14.6">8.7</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of eight different video generative models' performance on four metrics designed to evaluate physical understanding in videos.  Each metric assesses a different aspect of physical realism: Spatial IoU (location of action), Spatiotemporal IoU (location and timing of action), Weighted spatial IoU (location and amount of action), and MSE (pixel-level accuracy). The table shows each model's score on each metric, with the best-performing model for each metric highlighted in bold.  Crucially, the 'Physical Variance' row provides a baseline representing the inherent variability found in real-world physical phenomena – representing the best possible score attainable, a score achieved by the natural variation of two recordings of the same physical event.  This allows comparison of how well models capture true physical understanding compared to just replicating visual similarities of real videos.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of metric scores for different models. The best-performing model for each metric is marked in bold. Note that Physical Variance serves as a performance upper bound for each metric, representing the difference between two real videos and capturing the inherent variability in real-world scenarios.
> </details>





### In-depth insights


#### Physics IQ Dataset
The Physics-IQ dataset represents a **novel benchmark** designed to rigorously evaluate the physical understanding of video generative models.  Unlike previous benchmarks that rely on synthetic data, Physics-IQ leverages **real-world videos** depicting diverse physical phenomena. This focus on real-world data is crucial as it bridges the gap between simulated environments and the complexities of the physical world. The dataset's strength lies in its **carefully designed scenarios**, testing understanding across various physical principles (fluid dynamics, optics, solid mechanics, thermodynamics, magnetism), and the use of multiple camera angles to capture diverse perspectives. By requiring models to predict video continuations, Physics-IQ assesses not just visual realism, but also **genuine understanding of physical laws**. The use of multiple evaluation metrics provides a multifaceted assessment of model performance, going beyond simple visual fidelity.

#### Model Evaluation
Model evaluation in this research is multifaceted and crucial.  The authors wisely move beyond simple visual metrics (like PSNR or SSIM) which don't capture physical understanding.  Instead, they introduce a novel benchmark, **Physics-IQ**, with metrics assessing not only where and when actions occur, but also how much and how realistically they unfold. This nuanced approach using metrics like Spatial IoU, Spatiotemporal IoU, Weighted Spatial IoU, and MSE is vital for distinguishing true comprehension of physics from mere visual mimicry.  **The inclusion of a multimodal large language model (MLLM) evaluation provides an additional layer**, assessing the visual realism independent of physical accuracy, highlighting the critical difference between visual fidelity and genuine physical understanding.  The results underscore the limitations of current models in grasping physical principles, despite achieving considerable visual realism in some cases.  This comprehensive evaluation strategy is a major strength of the paper, offering a more robust and insightful analysis than solely relying on superficial metrics.

#### Visual vs. Physics
The core question explored in the research is whether visually realistic video generation automatically implies an understanding of underlying physics.  The paper contrasts visual realism, achieved through sophisticated pattern recognition and prediction, with true physical understanding, requiring knowledge of fundamental physical principles. **The key finding is a significant disconnect between these two aspects**: models can generate impressive visuals without necessarily grasping the physics behind the scenes.  This highlights a crucial limitation of current AI video generation: **visual fidelity is not a sufficient proxy for genuine understanding of the physical world.**  The benchmark developed in the paper directly assesses physical understanding, offering valuable insights into the limitations of current approaches and potential avenues for future research focusing on imbuing AI models with a more robust grasp of physics.  **Future work should focus on bridging this gap, perhaps through methods that incorporate interaction and causal reasoning.** The results underscore the importance of moving beyond solely evaluating visual quality and embracing assessment of the fundamental physical knowledge embedded within the generated videos. 

#### Limitations & Bias
A critical analysis of the research paper should include a section on limitations and biases.  **Dataset limitations** could stem from the real-world nature of the data, leading to uncontrolled variability and making it difficult to isolate specific factors.  **The benchmark's focus** on specific physical principles might limit its generalizability to broader AI capabilities.  **Model selection** may not be fully representative of the current state of AI video generation, creating bias in the conclusions. **The evaluation metrics**, while novel, are proxy measures for physical understanding and may not fully capture the intricacies of complex physical reasoning.  **Subjectivity** in the selection of success and failure examples also introduces potential bias.  A thorough discussion of these limitations and biases is crucial for assessing the validity and robustness of the research findings and paving the way for future improvements in the field.  Finally, acknowledging the limitations of the study design strengthens its credibility by highlighting areas where further research is needed.

#### Future Research
Future research should prioritize **developing more sophisticated metrics** for evaluating physical understanding in video generation models, moving beyond simplistic visual comparisons to capture nuanced aspects of physical interaction.  Exploring **alternative training paradigms** that incorporate active interaction and feedback, rather than passive observation, could significantly improve a model's ability to learn true physical principles.  Investigating **different model architectures** explicitly designed for physics simulation, possibly incorporating physics engines or symbolic reasoning, could also lead to breakthroughs.   Furthermore, it's crucial to **create larger and more diverse datasets** that cover a wider range of physical phenomena and environmental conditions, ensuring better generalization and robustness. Finally, addressing **hallucinations and biases** present in current models through improved training techniques or model regularization is essential to enhance the reliability and accuracy of generated videos.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09038/x2.png)

> 🔼 This figure illustrates the Physics-IQ evaluation process.  A video generation model is given a short video clip (conditioning frames) as input, optionally along with a text description if the model supports it. The model then predicts a 5-second continuation of the video. This prediction is compared to the actual video (ground truth test frames) using four metrics: Spatial IoU, Spatiotemporal IoU, Weighted spatial IoU, and MSE. These metrics assess different aspects of physical understanding, such as the location, timing, extent, and precision of the predicted actions. The results from these metrics help determine how well the model understands the physics of the scene.  The code for running this evaluation is publicly available on the Physics-IQ-benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the Physics-IQ evaluation protocol. A video generative model produces a 5 second continuation of the conditioning frame(s), optionally including a textual description of the conditioning frames for models that accept text input. They are compared against the ground truth test frames using four metrics that quantify different properties of physical understanding. The metrics are defined and explained in the methods section. Code to run the evaluation is available at Physics-IQ-benchmark.
> </details>



![](https://arxiv.org/html/2501.09038/x3.png)

> 🔼 Figure 3 showcases several existing datasets used for evaluating physical reasoning in AI models.  These datasets, including CRAFT, IntPhys, Physion, ESPRIT, Physion++, CoPhy, CLEVERER, and PhyWorld, all use synthetic data (computer-generated) rather than real-world video data. While effective for their intended purposes, using them to evaluate models trained on real videos is problematic because the characteristics of the simulated environments differ significantly from the real-world data distribution, potentially leading to inaccurate assessment of a model's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: A qualitative overview of recent synthetic datasets related to physical understanding (19, 20, 17, 38, 18, 36, 37, 39). These datasets are great for the purposes they were designed for, but not ideal for evaluating models trained on real-world videos due to the distribution shift.
> </details>



![](https://arxiv.org/html/2501.09038/x4.png)

> 🔼 Figure 4 assesses the physical understanding of eight different video generative models using the Physics-IQ benchmark. The left panel displays the Physics-IQ scores, which aggregate four individual metrics (Spatial IoU, Spatiotemporal IoU, Weighted spatial IoU, and MSE) measuring different aspects of physical understanding. The scores are normalized so that pairs of real videos differing only by random physical variations score 100%. The results reveal a significant gap between model performance and this upper bound, with the best-performing model reaching only 24.1%, highlighting the models' limited physical understanding. The right panel complements this by showing the mean rank of models across the four metrics. The high Spearman correlation (-0.87, p < 0.005) between the aggregated Physics-IQ scores and the mean ranks confirms that aggregating the four metrics into a single Physics-IQ score effectively reflects model performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: How well do current video generative models understand physical principles? Left. The Physics-IQ score is an aggregated measure across four individual metrics, normalized such that pairs of real videos that differ only by physical randomness score 100%. All evaluated models show a large gap, with the best model scoring 24.1%, indicating that physical understanding is severely limited. Right. In addition, the mean rank of models across all four metrics is shown here; the Spearman correlation between aggregated results on the left and mean rank on the right is high (-⁢.87,p<.005-.87p.005\text{-}.87,\emph{p}<.005- .87 , p < .005), thus aggregating to a single Physics-IQ score largely preserves model rankings.
> </details>



![](https://arxiv.org/html/2501.09038/x5.png)

> 🔼 This figure investigates the relationship between visual realism and physical understanding in video generation models. The left panel shows the results of a two-alternative forced-choice experiment where a large language model (MLLM) distinguished between real and generated videos. Lower scores indicate higher visual realism, with Sora achieving the lowest score (best realism) and Lumiere (multiframe) the highest. The right panel displays a scatter plot examining the correlation between visual realism (MLLM score) and physical understanding (Physics-IQ score). The plot reveals a lack of correlation, suggesting that high visual realism does not necessarily imply strong physical understanding (Pearson's r = -0.46, p = .247).
> <details>
> <summary>read the caption</summary>
> Figure 5: Relationship between visual realism and physical understanding. Left. A multimodal large language model (Gemini 1.5 Pro) is asked to identify the generated video among the real and the generated video for each scenario (MLLM score) in a two-alternative forced choice paradigm. Chance rate is 50%; lower scores indicate that the model finds it harder to tell apart generated from real videos (= better realism). Sora-generated videos are hardest to distinguish from real videos for the model, whereas Lumiere (multiframe) is easiest. Right. Do models that produce ‘realistic-looking’ videos (as assessed by the MLLM score) also score better in terms of physical understanding (as assessed via the Physics-IQ score)? This scatterplot with linear fit and 95% confidence interval as a shaded blue area shows that this is not the case: Visual realism is uncorrelated with physical understanding (Pearson’s r = - 0.46, p=.247 not significant). Note that the y axis on this plot is inverted for easier interpretation (up & right are best).
> </details>



![](https://arxiv.org/html/2501.09038/x6.png)

> 🔼 Figure 6 presents a detailed comparison of eight different video generative models' performance across various physical phenomena and evaluation metrics.  The models are assessed on their ability to predict the continuation of short video clips depicting events governed by different physical principles (solid mechanics, fluid dynamics, optics, thermodynamics, and magnetism). Four distinct metrics are used to evaluate the models: Spatial IoU (measuring the correctness of the location of actions), Spatiotemporal IoU (assessing both location and timing accuracy), Weighted Spatial IoU (considering both location and the amount of action), and MSE (measuring the pixel-level difference between the generated and real videos). Each metric's results are displayed for each physical category and model, allowing for a comprehensive comparison of model performance.  A dashed line indicates the 'physical variance', representing the performance limit imposed by inherent variability in real-world physical events.  The figure demonstrates that while some models perform reasonably well on less stringent metrics like Spatial IoU, they struggle with more demanding metrics that require understanding not only *where* but also *when* and *how much* action takes place, highlighting a general lack of robust physical understanding in current video generative models.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance comparison of video generative models across different physical categories (columns) and metrics (rows). For the top three metrics, higher is better; for the last metric lower values are best. Throughout, physical variance (i.e., the performance that is achievable by real videos differing only by physical randomness) is indicated by a dashed line. Across metrics and categories, models show a considerable lack in physical understanding. More lenient metrics like 𝖲𝗉𝖺𝗍𝗂𝖺𝗅⁢-⁢𝖨𝗈𝖴𝖲𝗉𝖺𝗍𝗂𝖺𝗅-𝖨𝗈𝖴\mathsf{Spatial}\text{-}\mathsf{IoU}sansserif_Spatial - sansserif_IoU (top row) that only assess where an action occurred lead to higher scores than more strict metrics that also take into account e.g. when or how much action should be taking place.
> </details>



![](https://arxiv.org/html/2501.09038/x7.png)

> 🔼 Figure 7 shows example successes and failures of two top-performing video generation models (VideoPoet and Runway Gen 3) on tasks requiring an understanding of fluid dynamics and solid mechanics.  The figure demonstrates that while the models can accurately simulate some simple physics-based scenarios (e.g., smearing paint or pouring liquid), they struggle with more complex scenarios that involve interactions and precise movements (e.g., a ball falling into a crate or a knife cutting a tangerine). The examples highlight the limitations of current generative video models in realistically representing physical interactions.
> <details>
> <summary>read the caption</summary>
> Figure 7: We here visualize success and failure scenarios within the fluid dynamics and solid mechanics categories for the two best models, VideoPoet and Runway Gen 3, according to our metrics. Both models are able to generate physics plausible frames for scenarios such as smearing paint on glass (VideoPoet) and pouring red liquid on a rubber duck (Runway Gen 3). At the same time, the models fail to simulate a ball falling into a crate or cutting a tangerine with a knife. See here for an animated version.
> </details>



![](https://arxiv.org/html/2501.09038/x8.png)

> 🔼 The figure shows the setup used to record videos for the Physics-IQ dataset.  The top panel displays three Sony Alpha a6400 cameras mounted on tripods, positioned to capture three different perspectives (left, center, right) of the same scene. The bottom panel shows example images captured from each of these three perspectives, demonstrating the slightly varied viewpoints obtained.
> <details>
> <summary>read the caption</summary>
> Figure 8: Illustration of recording setup (top) and perspectives (bottom).
> </details>



![](https://arxiv.org/html/2501.09038/extracted/6132070/figures/combined_setup_views.png)

> 🔼 Figure 9 shows the 'switch frames' from the Physics-IQ benchmark dataset.  Each image represents the final frame of a 3-second conditioning video shown to a generative video model. The model is then tasked with predicting the next 5 seconds of video based on this single frame.  The figure provides a visual overview of all 66 scenarios included in the benchmark, allowing for a visual inspection of the diversity and complexity of physical phenomena represented.
> <details>
> <summary>read the caption</summary>
> Figure 9: The switch frames (here: center view only) of all scenarios in the Physics-IQ benchmark. A switch frame is the last conditioning frame before a model is asked to predict 5 seconds of future frames.
> </details>



![](https://arxiv.org/html/2501.09038/extracted/6132070/figures/all_scenarios_overview.png)

> 🔼 Figure 10 demonstrates how different levels of mean squared error (MSE) affect image quality.  MSE is a metric used to evaluate how close a generated image is to the ground truth image.  The figure shows a series of images, all starting from a clear, original image of a puppy in a field.  As the MSE value increases (MSE = 0.001, MSE = 0.005, MSE = 0.01, MSE = 0.02, MSE = 0.04), progressive distortions are added to the image.  This visually demonstrates how higher MSE values correspond to greater noise and a blurring effect, ultimately resulting in a less clear and more distorted image.  The figure provides a visual aid to help readers better understand what different MSE scores represent in terms of the visual quality of images and videos.
> <details>
> <summary>read the caption</summary>
> Figure 10: Since mean squared error (MSE) values can be hard to interpret, this figure shows the effect of a distortion applied to the scene, serving as a rough intuition for the effect of a MSE at different noise levels.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09038/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09038/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}