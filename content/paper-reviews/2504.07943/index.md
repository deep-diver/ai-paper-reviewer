---
title: "HoloPart: Generative 3D Part Amodal Segmentation"
summary: "HoloPart: Completes 3D part amodal segmentation by inferring occluded geometry and ensuring shape consistency using a novel diffusion-based model."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07943 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunhan Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07943" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07943" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07943/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing 3D part segmentation methods only identify visible surface patches, limiting their utility for content creation, where complete geometry is required. This paper introduces 3D part amodal segmentation, which decomposes 3D shapes into complete semantic parts, even when occluded. This task is challenging because it requires inferring occluded geometry, maintaining shape consistency, and generalizing to diverse shapes with limited data.



This paper presents HoloPart, a novel diffusion-based model for 3D part shape completion. It leverages a 3D generative prior and adapts it to part completion using a curated dataset. HoloPart incorporates local attention for fine-grained details and shape context-aware attention for overall consistency. The authors introduce new benchmarks and demonstrate that HoloPart significantly outperforms existing methods. By integrating HoloPart with existing segmentation techniques, promising results are achieved on 3D part amodal segmentation, **opening new avenues for applications in geometry editing and animation**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces the novel task of 3D part amodal segmentation and provides new benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Proposes HoloPart, a diffusion model with local and global attention, for 3D part shape completion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates superior performance over existing methods in part completion and amodal segmentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces the amodal segmentation in 3D shapes, enabling complete part recovery and opening new avenues for downstream tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07943/x2.png)

> 🔼 Figure 1 illustrates the key difference between standard 3D part segmentation and the novel 3D part amodal segmentation task introduced in this paper.  Standard methods (a) identify only visible surface patches of parts, resulting in incomplete segments.  In contrast, 3D part amodal segmentation (b) aims to decompose a 3D shape into complete, semantically meaningful parts, even when parts are occluded.  This is achieved by inferring the full geometry of each part, ensuring consistency with the overall shape, and effectively handling diverse shapes. The figure shows examples of both approaches applied to a ring-shaped object, highlighting the completeness of parts in the amodal segmentation, which enables various downstream applications such as geometry editing, material assignment, etc. This paper addresses this challenging task by proposing a two-stage approach involving initial 3D part segmentation followed by 3D part shape completion using a novel diffusion-based model, HoloPart.
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstration of the difference between (a) 3D part segmentation and (b) 3D part amodal segmentation. 3D part amodal segmentation decomposes the 3D shape into complete semantic parts rather than broken surface patches, facilitating various downstream applications. In this paper, we propose a solution by performing 3D part shape completion on incomplete part segments.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.4.5.1">
<td class="ltx_td ltx_border_tt" id="S3.T1.4.4.5.1.1"></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.4.4.5.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.5.1.3" rowspan="2"><span class="ltx_text" id="S3.T1.4.4.5.1.3.1">P/C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.5.1.4" rowspan="2"><span class="ltx_text" id="S3.T1.4.4.5.1.4.1">D/C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.5.1.5" rowspan="2"><span class="ltx_text" id="S3.T1.4.4.5.1.5.1">F/V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.4.4.5.1.6">Ours</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.6.2">
<td class="ltx_td" id="S3.T1.4.4.6.2.1"></td>
<td class="ltx_td" id="S3.T1.4.4.6.2.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.3">w/o C-A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.4">w C-A</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.7.3">
<td class="ltx_td ltx_border_t" id="S3.T1.4.4.7.3.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.2"><span class="ltx_text" id="S3.T1.4.4.7.3.2.1" style="background-color:#E7F7FC;">bed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.3"><span class="ltx_text" id="S3.T1.4.4.7.3.3.1" style="background-color:#E7F7FC;">0.093</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.4"><span class="ltx_text" id="S3.T1.4.4.7.3.4.1" style="background-color:#E7F7FC;">0.061</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.5"><span class="ltx_text" id="S3.T1.4.4.7.3.5.1" style="background-color:#E7F7FC;">0.023</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.6"><span class="ltx_text" id="S3.T1.4.4.7.3.6.1" style="background-color:#E7F7FC;">0.032</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.7.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.7.3.7.1" style="background-color:#E7F7FC;">0.020</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.8.4">
<td class="ltx_td" id="S3.T1.4.4.8.4.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.4.4.8.4.2.1" style="background-color:#E7F7FC;">table</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.3">0.081</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.4">0.068</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.5">0.030</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.6">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.8.4.7.1">0.018</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.9.5">
<td class="ltx_td" id="S3.T1.4.4.9.5.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.2"><span class="ltx_text" id="S3.T1.4.4.9.5.2.1" style="background-color:#E7F7FC;">lamp</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.3"><span class="ltx_text" id="S3.T1.4.4.9.5.3.1" style="background-color:#E7F7FC;">0.170</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.4"><span class="ltx_text" id="S3.T1.4.4.9.5.4.1" style="background-color:#E7F7FC;">0.084</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.5"><span class="ltx_text" id="S3.T1.4.4.9.5.5.1" style="background-color:#E7F7FC;">0.044</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.6"><span class="ltx_text" id="S3.T1.4.4.9.5.6.1" style="background-color:#E7F7FC;">0.036</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.9.5.7.1" style="background-color:#E7F7FC;">0.031</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.10.6">
<td class="ltx_td" id="S3.T1.4.4.10.6.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.4.4.10.6.2.1" style="background-color:#E7F7FC;">chair</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.3">0.121</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.4">0.107</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.5">0.045</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.6">0.035</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.10.6.7.1">0.030</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.11.7">
<td class="ltx_td" id="S3.T1.4.4.11.7.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.11.7.2"><span class="ltx_text" id="S3.T1.4.4.11.7.2.1" style="background-color:#E7F7FC;">mean (instance)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.11.7.3"><span class="ltx_text" id="S3.T1.4.4.11.7.3.1" style="background-color:#E7F7FC;">0.122</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.11.7.4"><span class="ltx_text" id="S3.T1.4.4.11.7.4.1" style="background-color:#E7F7FC;">0.087</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.11.7.5"><span class="ltx_text" id="S3.T1.4.4.11.7.5.1" style="background-color:#E7F7FC;">0.037</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.11.7.6"><span class="ltx_text" id="S3.T1.4.4.11.7.6.1" style="background-color:#E7F7FC;">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.11.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.11.7.7.1" style="background-color:#E7F7FC;">0.026</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.1" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.1.1.1.1.1" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.1.1.1.1.1.1"> Chamfer <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.1.1.1.2.1" style="background-color:#E7F7FC;">mean (category)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.3">0.116</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.4">0.080</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.5">0.035</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.6">0.036</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.12.8">
<td class="ltx_td ltx_border_t" id="S3.T1.4.4.12.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.2"><span class="ltx_text" id="S3.T1.4.4.12.8.2.1" style="background-color:#F2F2F2;">bed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.3"><span class="ltx_text" id="S3.T1.4.4.12.8.3.1" style="background-color:#F2F2F2;">0.148</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.4"><span class="ltx_text" id="S3.T1.4.4.12.8.4.1" style="background-color:#F2F2F2;">0.266</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.5"><span class="ltx_text" id="S3.T1.4.4.12.8.5.1" style="background-color:#F2F2F2;">0.695</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.6"><span class="ltx_text" id="S3.T1.4.4.12.8.6.1" style="background-color:#F2F2F2;">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.12.8.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.12.8.7.1" style="background-color:#F2F2F2;">0.833</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.13.9">
<td class="ltx_td" id="S3.T1.4.4.13.9.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.4.4.13.9.2.1" style="background-color:#F2F2F2;">table</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.3">0.180</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.4">0.248</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.5">0.652</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.6">0.791</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.13.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.13.9.7.1">0.838</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.14.10">
<td class="ltx_td" id="S3.T1.4.4.14.10.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.2"><span class="ltx_text" id="S3.T1.4.4.14.10.2.1" style="background-color:#F2F2F2;">lamp</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.3"><span class="ltx_text" id="S3.T1.4.4.14.10.3.1" style="background-color:#F2F2F2;">0.155</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.4"><span class="ltx_text" id="S3.T1.4.4.14.10.4.1" style="background-color:#F2F2F2;">0.238</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.5"><span class="ltx_text" id="S3.T1.4.4.14.10.5.1" style="background-color:#F2F2F2;">0.479</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.6"><span class="ltx_text" id="S3.T1.4.4.14.10.6.1" style="background-color:#F2F2F2;">0.677</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.14.10.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.14.10.7.1" style="background-color:#F2F2F2;">0.697</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.15.11">
<td class="ltx_td" id="S3.T1.4.4.15.11.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.4.4.15.11.2.1" style="background-color:#F2F2F2;">chair</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.3">0.156</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.4">0.214</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.5">0.490</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.6">0.695</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.15.11.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.15.11.7.1">0.718</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.16.12">
<td class="ltx_td" id="S3.T1.4.4.16.12.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.16.12.2"><span class="ltx_text" id="S3.T1.4.4.16.12.2.1" style="background-color:#F2F2F2;">mean (instance)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.16.12.3"><span class="ltx_text" id="S3.T1.4.4.16.12.3.1" style="background-color:#F2F2F2;">0.159</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.16.12.4"><span class="ltx_text" id="S3.T1.4.4.16.12.4.1" style="background-color:#F2F2F2;">0.235</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.16.12.5"><span class="ltx_text" id="S3.T1.4.4.16.12.5.1" style="background-color:#F2F2F2;">0.565</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.16.12.6"><span class="ltx_text" id="S3.T1.4.4.16.12.6.1" style="background-color:#F2F2F2;">0.733</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.16.12.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.16.12.7.1" style="background-color:#F2F2F2;">0.764</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.2.2.1.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.2.2.1.1.1">IoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.1.m1.1a"><mo id="S3.T1.2.2.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S3.T1.2.2.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.1.m1.1b"><ci id="S3.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.2.2.2.1" style="background-color:#F2F2F2;">mean (category)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.3">0.160</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.4">0.241</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.5">0.580</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.6">0.739</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.7.1">0.771</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.17.13">
<td class="ltx_td ltx_border_t" id="S3.T1.4.4.17.13.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.2"><span class="ltx_text" id="S3.T1.4.4.17.13.2.1" style="background-color:#E7F7FC;">bed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.3"><span class="ltx_text" id="S3.T1.4.4.17.13.3.1" style="background-color:#E7F7FC;">0.244</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.4"><span class="ltx_text" id="S3.T1.4.4.17.13.4.1" style="background-color:#E7F7FC;">0.412</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.5"><span class="ltx_text" id="S3.T1.4.4.17.13.5.1" style="background-color:#E7F7FC;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.6"><span class="ltx_text" id="S3.T1.4.4.17.13.6.1" style="background-color:#E7F7FC;">0.864</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.17.13.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.17.13.7.1" style="background-color:#E7F7FC;">0.896</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.18.14">
<td class="ltx_td" id="S3.T1.4.4.18.14.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.4.4.18.14.2.1" style="background-color:#E7F7FC;">table</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.3">0.291</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.4">0.390</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.5">0.758</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.6">0.844</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.18.14.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.18.14.7.1">0.890</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.19.15">
<td class="ltx_td" id="S3.T1.4.4.19.15.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.2"><span class="ltx_text" id="S3.T1.4.4.19.15.2.1" style="background-color:#E7F7FC;">lamp</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.3"><span class="ltx_text" id="S3.T1.4.4.19.15.3.1" style="background-color:#E7F7FC;">0.244</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.4"><span class="ltx_text" id="S3.T1.4.4.19.15.4.1" style="background-color:#E7F7FC;">0.374</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.5"><span class="ltx_text" id="S3.T1.4.4.19.15.5.1" style="background-color:#E7F7FC;">0.610</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.6"><span class="ltx_text" id="S3.T1.4.4.19.15.6.1" style="background-color:#E7F7FC;">0.769</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.19.15.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.19.15.7.1" style="background-color:#E7F7FC;">0.789</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.20.16">
<td class="ltx_td" id="S3.T1.4.4.20.16.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.4.4.20.16.2.1" style="background-color:#E7F7FC;">chair</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.3">0.262</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.4">0.342</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.5">0.631</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.6">0.800</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.20.16.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.20.16.7.1">0.817</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.21.17">
<td class="ltx_td" id="S3.T1.4.4.21.17.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.21.17.2"><span class="ltx_text" id="S3.T1.4.4.21.17.2.1" style="background-color:#E7F7FC;">mean (instance)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.21.17.3"><span class="ltx_text" id="S3.T1.4.4.21.17.3.1" style="background-color:#E7F7FC;">0.259</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.21.17.4"><span class="ltx_text" id="S3.T1.4.4.21.17.4.1" style="background-color:#E7F7FC;">0.371</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.21.17.5"><span class="ltx_text" id="S3.T1.4.4.21.17.5.1" style="background-color:#E7F7FC;">0.689</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.21.17.6"><span class="ltx_text" id="S3.T1.4.4.21.17.6.1" style="background-color:#E7F7FC;">0.816</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.21.17.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.21.17.7.1" style="background-color:#E7F7FC;">0.843</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.1" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.3.3.3.1.1" style="background-color:#E7F7FC;">F-Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.1.1.m1.1"><semantics id="S3.T1.3.3.3.1.1.1.m1.1a"><mo id="S3.T1.3.3.3.1.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S3.T1.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.1.1.m1.1b"><ci id="S3.T1.3.3.3.1.1.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T1.3.3.3.2.1" style="background-color:#E7F7FC;">mean (category)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.3">0.260</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.4">0.380</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.5">0.700</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.6">0.819</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.7.1">0.848</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.1"><span class="ltx_text" id="S3.T1.4.4.4.1.1" style="background-color:#F2F2F2;">Success <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.1.m1.1"><semantics id="S3.T1.4.4.4.1.1.m1.1a"><mo id="S3.T1.4.4.4.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S3.T1.4.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.1.m1.1b"><ci id="S3.T1.4.4.4.1.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.4.4.4.2.1" style="background-color:#F2F2F2;">mean (instance)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.3"><span class="ltx_text" id="S3.T1.4.4.4.3.1" style="background-color:#F2F2F2;">0.822</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.4"><span class="ltx_text" id="S3.T1.4.4.4.4.1" style="background-color:#F2F2F2;">0.824</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.5"><span class="ltx_text" id="S3.T1.4.4.4.5.1" style="background-color:#F2F2F2;">0.976</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.6"><span class="ltx_text" id="S3.T1.4.4.4.6.1" style="background-color:#F2F2F2;">0.987</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.7.1" style="background-color:#F2F2F2;">0.994</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different methods for 3D part amodal completion on the ABO dataset.  It evaluates the performance of PatchComplete, DiffComplete, Finetune-VAE, and the proposed HoloPart method (both with and without context-attention). The comparison is based on four key metrics: Chamfer Distance (a measure of geometric difference), Intersection over Union (IoU, representing the overlap between predicted and ground truth shapes), F-Score (harmonic mean of precision and recall for part segmentation), and Success Rate (percentage of successful part completion).  Lower Chamfer Distance and higher values for IoU, F-Score, and Success Rate indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 1: 3D part amodal completion results of PatchComplete (P/C), DiffComplete (D/C), Finetune-VAE (F/V), Ours (w/o Context-attention), Ours (with Context-attention), on ABO, reported in Chamfer Distance, IoU, F-Score and Success Rate.
> </details>





### In-depth insights


#### Amodal 3D Task
Amodal 3D task represents a significant leap beyond traditional 3D part segmentation, aiming to **infer complete, semantically meaningful parts** of a 3D shape, even when occluded. Unlike standard segmentation that only identifies visible surfaces, this task necessitates **reasoning about hidden geometry** and maintaining consistency with the overall shape. This poses challenges in 3D geometry, global shape awareness, and **generalization across diverse shapes** with limited data. Effectively solving it requires models to not only 'fill in the holes' but also to understand the underlying structure and function of each part to ensure a cohesive and plausible completion, thus benefiting applications like geometry editing, animation, and material assignment.

#### HoloPart Design
The HoloPart design, at its core, tackles the intricate problem of 3D part amodal segmentation through a **generative approach**. It smartly decomposes the challenge into two stages: initial part segmentation and subsequent part completion. The architecture likely leverages a **diffusion-based model**, conditioned on both local part features and global shape context, enabling the inference of occluded geometry. A key aspect may involve a novel attention mechanism to balance fine-grained detail capture with overall shape consistency, addressing a critical need in 3D shape understanding. HoloPart design likely incorporates a **VAE for object-level pretraining** to establish a strong 3D generative prior for better shape generation. **Context aware attention** plays an important role for model's superior performance. Overall, HoloPart's design represents a significant step towards more complete and usable 3D part representations.

#### Data Curation
The **data curation process** involves creating a dataset of part-whole pairs for training a conditional part diffusion model. To achieve this, parts are merged to create complete 3D meshes, and **rays are cast from different angles** to determine face visibility, which are then removed to simulate occlusion. The unsigned distance field computes the whole 3D mesh from a non-watertight mesh. Finally, part labels are assigned to each face of the whole mesh by finding the nearest part face, providing surface segment masks. The data curation also ensures a reasonable part-wise semantic distribution with **mesh count restrictions**, **connected component analysis**, and **volume distribution optimization**.

#### ABO vs. Tiny
**ABO and PartObjaverse-Tiny represent the core evaluation benchmarks** employed in this study, each offering distinct advantages. **ABO provides high-quality 3D models** within specific object categories, equipped with detailed part annotations, facilitating precise assessment of amodal completion. **PartObjaverse-Tiny**, a curated subset of the larger Objaverse dataset, introduces complexity and diversity with objects across various categories, posing a challenge for generalization. The choice between them hinges on the research goal: **ABO for focused evaluation on specific categories** and **PartObjaverse-Tiny for broader assessment of generalization capabilities.** Combining both datasets offers a comprehensive approach to evaluating 3D part amodal segmentation methods.

#### Future Works
Future work in 3D part amodal segmentation could explore several avenues for improvement. **Exploring alternative network architectures** beyond diffusion models, such as transformers or graph neural networks, might yield enhanced performance. Additionally, **investigating unsupervised or self-supervised learning** approaches could mitigate the reliance on labeled data, expanding applicability to datasets with limited annotations. Furthermore, **incorporating multi-modal information**, such as texture or material properties, could provide additional cues for segmentation, particularly in cases with ambiguous geometry. Finally, **developing more robust evaluation metrics** that better capture the quality and consistency of the completed parts would be beneficial for assessing progress in the field. Addressing these challenges could pave the way for more accurate, efficient, and generalizable 3D part amodal segmentation methods, unlocking a wider range of applications in computer graphics, robotics, and virtual reality.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07943/x3.png)

> 🔼 This figure illustrates the architecture of the HoloPart model, which is a two-stage approach for 3D part amodal segmentation. First, it takes as input a complete 3D shape and its corresponding segmentation mask.  Then, it encodes this information into latent tokens using a combination of context-aware attention (to capture global shape context) and local attention (to capture fine-grained details and positional information of individual parts). These latent tokens are then used as conditioning information to guide a diffusion model that reconstructs complete 3D parts from potentially incomplete, segmented parts. The training process involves adding noise to complete 3D parts and training the model to reverse this process, learning to denoise and recover the original complete parts.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of the HoloPart model design. Given a whole 3D shape and a corresponding surface segmentation mask, HoloPart encodes these inputs into latent tokens, using context-aware attention to capture global shape context and local attention to capture local part detailed features and position mapping. These tokens are used as conditions and injected into the part diffusion model via cross-attention respectively. During training, noise is added to complete 3D parts, and the model learns to denoise them and recover the original complete part.
> </details>



![](https://arxiv.org/html/2504.07943/x4.png)

> 🔼 This figure presents a qualitative comparison of 3D part completion results on the ABO dataset between the proposed method and three baseline methods: PatchComplete, DiffComplete, and Finetune-VAE.  For several household objects (bed, table, lamp, chair), the figure visually showcases the original segmented part (incomplete), and the completed parts generated by each method. This allows for a direct visual comparison of the accuracy and completeness of the generated parts, particularly highlighting differences in the handling of occlusions and the overall plausibility of the completed geometry.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison with PatchComplete, DiffComplete and Finetune-VAE on the ABO dataset.
> </details>



![](https://arxiv.org/html/2504.07943/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of the 3D part completion results from PatchComplete, DiffComplete, Finetune-VAE, and the proposed HoloPart method on the PartObjaverse-Tiny dataset. Each row displays the ground truth complete part followed by the corresponding incomplete part segment and the completion results from each method.  The figure visually demonstrates how HoloPart outperforms the baselines in generating complete and semantically meaningful 3D parts, especially for complex shapes with significant occlusions, while the baselines often struggle to reconstruct detailed geometry or maintain shape consistency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison with PatchComplete, DiffComplete and Finetune-VAE on the PartObjaverse-Tiny dataset.
> </details>



![](https://arxiv.org/html/2504.07943/x6.png)

> 🔼 This figure demonstrates the effectiveness of the proposed method in a zero-shot setting.  It shows the integration of the HoloPart model with existing zero-shot 3D part segmentation methods. The workflow starts with a zero-shot segmentation model providing initial surface segmentations of the 3D shapes. HoloPart then takes these incomplete segments as input and generates complete 3D parts. The result is a seamless and efficient zero-shot 3D part amodal segmentation. The figure showcases this process by visually presenting the original mesh, the segmented parts, and the resulting complete parts after using HoloPart.  This highlights that HoloPart's ability to infer occluded geometry and maintain global consistency extends to new segmentation methods without requiring additional training or fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 5: Our method seamlessly integrates with existing zero-shot 3D part segmentation models, enabling effective zero-shot 3D part amodal segmentation.
> </details>



![](https://arxiv.org/html/2504.07943/x7.png)

> 🔼 Figure 6 showcases the versatility of 3D part amodal segmentation by demonstrating its applications in various downstream tasks.  It illustrates examples of geometry editing (modifying the shape of individual parts), geometry processing (improving the quality of the mesh), material editing (assigning different textures to parts), and animation (giving parts the ability to move). This highlights the ability of the approach to generate complete, accurate part geometries that are suitable for complex manipulations and downstream applications beyond simple perception tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: 3D part amodal segmentation is capable of numerous downstream applications, such as Geometry Editing, Geometry Processing, Material Editing and Animation.
> </details>



![](https://arxiv.org/html/2504.07943/x8.png)

> 🔼 Figure 7 demonstrates the capability of HoloPart to achieve geometry super-resolution.  By using the same number of tokens to represent individual parts as are used for the entire object, the model can generate highly detailed and refined part geometries. This contrasts with traditional methods that often result in lower-resolution part details.  The figure visually compares the level of detail achieved when using this technique.
> <details>
> <summary>read the caption</summary>
> Figure 7: Geometry Super-resolution. By representing a part with the same number of tokens as the overall object, we can achieve geometry super-resolution.
> </details>



![](https://arxiv.org/html/2504.07943/x9.png)

> 🔼 This ablation study compares the results of semantic and instance part completion methods. Semantic completion treats all similar parts of an object as a single part, for example, all four legs of a chair are considered one part.  Instance completion treats each individual part separately; each leg of the chair is a unique part. The figure visually demonstrates the differences in the completed parts generated using each approach.
> <details>
> <summary>read the caption</summary>
> Figure 8: Ablation study of semantic and instance part completion.
> </details>



![](https://arxiv.org/html/2504.07943/x10.png)

> 🔼 Figure 9 visually presents examples of 3D data points that were excluded from the dataset due to specific filtering rules applied during data curation.  The figure is divided into three sections (a, b, and c), each showcasing different reasons for data exclusion. Section (a) displays examples filtered out due to an excessive number of mesh components, indicating overly fragmented or complex objects. Section (b) shows data points rejected because of an imbalanced distribution of connected components in their 2D projections (frontal and side views), implying problems with data consistency and completeness. Finally, section (c) illustrates examples excluded due to a highly skewed volume distribution among object parts, revealing instances of disproportionate part sizes. These examples highlight how the filtering rules ensure the quality and consistency of the final dataset used for training and evaluating the HoloPart model.
> <details>
> <summary>read the caption</summary>
> Figure 9: Examples of data filtered out by rules.
> </details>



![](https://arxiv.org/html/2504.07943/x11.png)

> 🔼 This figure demonstrates the importance of the context-aware attention mechanism in HoloPart.  By comparing the part completion results with and without context-aware attention, it shows that the absence of this mechanism leads to poorly formed and inconsistent part generation.  Parts lack the overall shape consistency needed for plausible completions, highlighting the critical role of context in accurately reconstructing occluded geometries.
> <details>
> <summary>read the caption</summary>
> Figure 10: The absence of context-aware attention leads to a lack of guidance for completing individual components, resulting in inconsistent and lower-quality outcomes.
> </details>



![](https://arxiv.org/html/2504.07943/x12.png)

> 🔼 This figure shows the impact of different guidance scales on the quality of generated 3D parts by HoloPart.  The images illustrate how varying the guidance scale affects the model's ability to reconstruct complete and plausible 3D shapes from partial segments.  Each row represents a different 3D part and shows the results generated with guidance scales of 1.5, 3.5, 5.0, and 7.5.  This helps demonstrate the optimal balance needed for effective part completion in the HoloPart model.
> <details>
> <summary>read the caption</summary>
> Figure 11: Visualization of generated parts across different guidance scales.
> </details>



![](https://arxiv.org/html/2504.07943/x13.png)

> 🔼 This figure displays a qualitative comparison of the results obtained using different learning rate settings during the training of the HoloPart model.  The different settings impact the quality and fidelity of the generated 3D part shapes.  It helps illustrate the optimal learning rate for balancing model training efficiency and generating high-quality outputs for part completion.
> <details>
> <summary>read the caption</summary>
> Figure 12: Qualitative comparison of different learning rate settings.
> </details>



![](https://arxiv.org/html/2504.07943/x14.png)

> 🔼 This figure shows additional examples of 3D part amodal segmentation results.  The input is a generated 3D mesh.  The method first uses a 3D part segmentation model to identify the individual parts of the object. Then, the HoloPart model completes each segmented part, even the parts that were originally occluded. Finally, the completed parts are merged to form a complete, consistent 3D model. The examples illustrate the model's ability to generate high-quality 3D parts across a variety of objects, including characters and building models, demonstrating good zero-shot generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 13: More Results of 3D Part Amodal Segmentation.
> </details>



![](https://arxiv.org/html/2504.07943/x15.png)

> 🔼 Figure 14 provides a qualitative comparison of different methods for 3D part amodal segmentation on the PartObjaverse-Tiny dataset.  It shows the original mesh and segmented parts alongside the results obtained using PatchComplete, DiffComplete, Finetune-VAE, and the authors' proposed method (Ours).  Red boxes highlight areas where the different methods struggle to accurately generate complete and realistic 3D parts, especially in complex or occluded regions.
> <details>
> <summary>read the caption</summary>
> Figure 14: More qualitative results on the PartObjaverse-Tiny dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.3.3.4.1">
<td class="ltx_td ltx_border_tt" id="S3.T2.3.3.4.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.3">Overall</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.4">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.5">Animals</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.6">Daily</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.7">Buildings</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.8">Transports</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.9">Plants</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.10">Food</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.4.1.11">Electronics</th>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.5.2">
<td class="ltx_td ltx_border_t" id="S3.T2.3.3.5.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.2"><span class="ltx_text" id="S3.T2.3.3.5.2.2.1" style="background-color:#E7F7FC;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.3"><span class="ltx_text" id="S3.T2.3.3.5.2.3.1" style="background-color:#E7F7FC;">0.144</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.4"><span class="ltx_text" id="S3.T2.3.3.5.2.4.1" style="background-color:#E7F7FC;">0.150</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.5"><span class="ltx_text" id="S3.T2.3.3.5.2.5.1" style="background-color:#E7F7FC;">0.165</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.6"><span class="ltx_text" id="S3.T2.3.3.5.2.6.1" style="background-color:#E7F7FC;">0.141</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.7"><span class="ltx_text" id="S3.T2.3.3.5.2.7.1" style="background-color:#E7F7FC;">0.173</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.8"><span class="ltx_text" id="S3.T2.3.3.5.2.8.1" style="background-color:#E7F7FC;">0.147</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.9"><span class="ltx_text" id="S3.T2.3.3.5.2.9.1" style="background-color:#E7F7FC;">0.110</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.10"><span class="ltx_text" id="S3.T2.3.3.5.2.10.1" style="background-color:#E7F7FC;">0.118</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.11"><span class="ltx_text" id="S3.T2.3.3.5.2.11.1" style="background-color:#E7F7FC;">0.147</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.6.3">
<td class="ltx_td" id="S3.T2.3.3.6.3.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.6.3.2.1" style="background-color:#E7F7FC;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.6.3.3.1" style="background-color:#E7F7FC;">0.133</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.4">0.130</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.5">0.144</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.6">0.127</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.7">0.145</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.8">0.136</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.9">0.129</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.10">0.128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.11">0.125</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.7.4">
<td class="ltx_td" id="S3.T2.3.3.7.4.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.2"><span class="ltx_text" id="S3.T2.3.3.7.4.2.1" style="background-color:#E7F7FC;">SDFusion</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.3"><span class="ltx_text" id="S3.T2.3.3.7.4.3.1" style="background-color:#E7F7FC;">0.137</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.4"><span class="ltx_text" id="S3.T2.3.3.7.4.4.1" style="background-color:#E7F7FC;">0.135</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.5"><span class="ltx_text" id="S3.T2.3.3.7.4.5.1" style="background-color:#E7F7FC;">0.162</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.6"><span class="ltx_text" id="S3.T2.3.3.7.4.6.1" style="background-color:#E7F7FC;">0.146</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.7"><span class="ltx_text" id="S3.T2.3.3.7.4.7.1" style="background-color:#E7F7FC;">0.162</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.8"><span class="ltx_text" id="S3.T2.3.3.7.4.8.1" style="background-color:#E7F7FC;">0.144</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.9"><span class="ltx_text" id="S3.T2.3.3.7.4.9.1" style="background-color:#E7F7FC;">0.104</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.10"><span class="ltx_text" id="S3.T2.3.3.7.4.10.1" style="background-color:#E7F7FC;">0.105</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.11"><span class="ltx_text" id="S3.T2.3.3.7.4.11.1" style="background-color:#E7F7FC;">0.134</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.8.5">
<td class="ltx_td" id="S3.T2.3.3.8.5.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.8.5.2.1" style="background-color:#E7F7FC;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.8.5.3.1" style="background-color:#E7F7FC;">0.064</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.4">0.064</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.5">0.067</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.6">0.075</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.7">0.064</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.8">0.076</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.9">0.049</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.10">0.041</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.11">0.073</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.9.6">
<td class="ltx_td" id="S3.T2.3.3.9.6.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.2"><span class="ltx_text" id="S3.T2.3.3.9.6.2.1" style="background-color:#E7F7FC;">Ours w/o Local</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.3"><span class="ltx_text" id="S3.T2.3.3.9.6.3.1" style="background-color:#E7F7FC;">0.057</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.4"><span class="ltx_text" id="S3.T2.3.3.9.6.4.1" style="background-color:#E7F7FC;">0.061</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.5"><span class="ltx_text" id="S3.T2.3.3.9.6.5.1" style="background-color:#E7F7FC;">0.083</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.6"><span class="ltx_text" id="S3.T2.3.3.9.6.6.1" style="background-color:#E7F7FC;">0.051</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.7"><span class="ltx_text" id="S3.T2.3.3.9.6.7.1" style="background-color:#E7F7FC;">0.047</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.8"><span class="ltx_text" id="S3.T2.3.3.9.6.8.1" style="background-color:#E7F7FC;">0.075</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.9"><span class="ltx_text" id="S3.T2.3.3.9.6.9.1" style="background-color:#E7F7FC;">0.045</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.10"><span class="ltx_text" id="S3.T2.3.3.9.6.10.1" style="background-color:#E7F7FC;">0.037</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.11"><span class="ltx_text" id="S3.T2.3.3.9.6.11.1" style="background-color:#E7F7FC;">0.057</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.10.7">
<td class="ltx_td" id="S3.T2.3.3.10.7.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.10.7.2.1" style="background-color:#E7F7FC;">Ours w/o Context</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.10.7.3.1" style="background-color:#E7F7FC;">0.055</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.4">0.059</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.5">0.076</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.6">0.044</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.7">0.047</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.8">0.053</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.9">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.10">0.039</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.11">0.056</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1" style="background-color:#E7F7FC;">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.1"><span class="ltx_text" id="S3.T2.1.1.1.1.1" style="background-color:#E7F7FC;">Chamfer <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.2"><span class="ltx_text" id="S3.T2.1.1.1.2.1" style="background-color:#E7F7FC;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1" style="background-color:#E7F7FC;">0.034</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1" style="background-color:#E7F7FC;">0.034</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1" style="background-color:#E7F7FC;">0.042</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.6.1" style="background-color:#E7F7FC;">0.032</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.7.1" style="background-color:#E7F7FC;">0.032</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.8.1" style="background-color:#E7F7FC;">0.037</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.9.1" style="background-color:#E7F7FC;">0.029</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.10.1" style="background-color:#E7F7FC;">0.029</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.11.1" style="background-color:#E7F7FC;">0.041</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.11.8">
<td class="ltx_td ltx_border_t" id="S3.T2.3.3.11.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.2"><span class="ltx_text" id="S3.T2.3.3.11.8.2.1" style="background-color:#F2F2F2;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.3"><span class="ltx_text" id="S3.T2.3.3.11.8.3.1" style="background-color:#F2F2F2;">0.137</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.4"><span class="ltx_text" id="S3.T2.3.3.11.8.4.1" style="background-color:#F2F2F2;">0.129</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.5"><span class="ltx_text" id="S3.T2.3.3.11.8.5.1" style="background-color:#F2F2F2;">0.147</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.6"><span class="ltx_text" id="S3.T2.3.3.11.8.6.1" style="background-color:#F2F2F2;">0.132</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.7"><span class="ltx_text" id="S3.T2.3.3.11.8.7.1" style="background-color:#F2F2F2;">0.116</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.8"><span class="ltx_text" id="S3.T2.3.3.11.8.8.1" style="background-color:#F2F2F2;">0.129</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.9"><span class="ltx_text" id="S3.T2.3.3.11.8.9.1" style="background-color:#F2F2F2;">0.152</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.10"><span class="ltx_text" id="S3.T2.3.3.11.8.10.1" style="background-color:#F2F2F2;">0.156</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.11.8.11"><span class="ltx_text" id="S3.T2.3.3.11.8.11.1" style="background-color:#F2F2F2;">0.138</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.12.9">
<td class="ltx_td" id="S3.T2.3.3.12.9.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.12.9.2.1" style="background-color:#F2F2F2;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.12.9.3.1" style="background-color:#F2F2F2;">0.142</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.4">0.149</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.5">0.139</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.6">0.142</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.7">0.124</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.8">0.139</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.9">0.153</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.10">0.134</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.9.11">0.157</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.13.10">
<td class="ltx_td" id="S3.T2.3.3.13.10.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.2"><span class="ltx_text" id="S3.T2.3.3.13.10.2.1" style="background-color:#F2F2F2;">SDFusion</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.3"><span class="ltx_text" id="S3.T2.3.3.13.10.3.1" style="background-color:#F2F2F2;">0.235</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.4"><span class="ltx_text" id="S3.T2.3.3.13.10.4.1" style="background-color:#F2F2F2;">0.214</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.5"><span class="ltx_text" id="S3.T2.3.3.13.10.5.1" style="background-color:#F2F2F2;">0.237</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.6"><span class="ltx_text" id="S3.T2.3.3.13.10.6.1" style="background-color:#F2F2F2;">0.229</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.7"><span class="ltx_text" id="S3.T2.3.3.13.10.7.1" style="background-color:#F2F2F2;">0.202</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.8"><span class="ltx_text" id="S3.T2.3.3.13.10.8.1" style="background-color:#F2F2F2;">0.198</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.9"><span class="ltx_text" id="S3.T2.3.3.13.10.9.1" style="background-color:#F2F2F2;">0.265</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.10"><span class="ltx_text" id="S3.T2.3.3.13.10.10.1" style="background-color:#F2F2F2;">0.294</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.13.10.11"><span class="ltx_text" id="S3.T2.3.3.13.10.11.1" style="background-color:#F2F2F2;">0.242</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.14.11">
<td class="ltx_td" id="S3.T2.3.3.14.11.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.14.11.2.1" style="background-color:#F2F2F2;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.14.11.3.1" style="background-color:#F2F2F2;">0.502</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.4">0.460</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.5">0.464</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.6">0.503</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.7">0.513</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.8">0.468</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.9">0.536</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.10">0.583</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.14.11.11">0.490</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.15.12">
<td class="ltx_td" id="S3.T2.3.3.15.12.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.2"><span class="ltx_text" id="S3.T2.3.3.15.12.2.1" style="background-color:#F2F2F2;">Ours w/o Local</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.3"><span class="ltx_text" id="S3.T2.3.3.15.12.3.1" style="background-color:#F2F2F2;">0.618</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.4"><span class="ltx_text" id="S3.T2.3.3.15.12.4.1" style="background-color:#F2F2F2;">0.582</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.5"><span class="ltx_text" id="S3.T2.3.3.15.12.5.1" style="background-color:#F2F2F2;">0.574</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.6"><span class="ltx_text" id="S3.T2.3.3.15.12.6.1" style="background-color:#F2F2F2;">0.618</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.7"><span class="ltx_text" id="S3.T2.3.3.15.12.7.1" style="background-color:#F2F2F2;">0.634</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.8"><span class="ltx_text" id="S3.T2.3.3.15.12.8.1" style="background-color:#F2F2F2;">0.591</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.9"><span class="ltx_text" id="S3.T2.3.3.15.12.9.1" style="background-color:#F2F2F2;">0.673</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.10"><span class="ltx_text" id="S3.T2.3.3.15.12.10.1" style="background-color:#F2F2F2;">0.677</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.15.12.11"><span class="ltx_text" id="S3.T2.3.3.15.12.11.1" style="background-color:#F2F2F2;">0.594</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.16.13">
<td class="ltx_td" id="S3.T2.3.3.16.13.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.16.13.2.1" style="background-color:#F2F2F2;">Ours w/o Context</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T2.3.3.16.13.3.1" style="background-color:#F2F2F2;">0.553</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.4">0.535</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.5">0.518</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.6">0.579</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.7">0.593</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.8">0.553</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.9">0.590</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.10">0.609</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.16.13.11">0.538</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.1"><span class="ltx_text" id="S3.T2.2.2.2.1.1" style="background-color:#F2F2F2;">IoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S3.T2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.1.m1.1b"><ci id="S3.T2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.2"><span class="ltx_text" id="S3.T2.2.2.2.2.1" style="background-color:#F2F2F2;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.3.1" style="background-color:#F2F2F2;">0.688</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.4.1" style="background-color:#F2F2F2;">0.675</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.5.1" style="background-color:#F2F2F2;">0.667</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.6.1" style="background-color:#F2F2F2;">0.699</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.7.1" style="background-color:#F2F2F2;">0.714</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.8"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.8.1" style="background-color:#F2F2F2;">0.687</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.9"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.9.1" style="background-color:#F2F2F2;">0.709</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.10"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.10.1" style="background-color:#F2F2F2;">0.710</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.11"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.11.1" style="background-color:#F2F2F2;">0.648</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.17.14">
<td class="ltx_td ltx_border_t" id="S3.T2.3.3.17.14.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.2"><span class="ltx_text" id="S3.T2.3.3.17.14.2.1" style="background-color:#E7F7FC;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.3"><span class="ltx_text" id="S3.T2.3.3.17.14.3.1" style="background-color:#E7F7FC;">0.232</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.4"><span class="ltx_text" id="S3.T2.3.3.17.14.4.1" style="background-color:#E7F7FC;">0.221</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.5"><span class="ltx_text" id="S3.T2.3.3.17.14.5.1" style="background-color:#E7F7FC;">0.246</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.6"><span class="ltx_text" id="S3.T2.3.3.17.14.6.1" style="background-color:#E7F7FC;">0.224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.7"><span class="ltx_text" id="S3.T2.3.3.17.14.7.1" style="background-color:#E7F7FC;">0.197</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.8"><span class="ltx_text" id="S3.T2.3.3.17.14.8.1" style="background-color:#E7F7FC;">0.220</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.9"><span class="ltx_text" id="S3.T2.3.3.17.14.9.1" style="background-color:#E7F7FC;">0.254</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.10"><span class="ltx_text" id="S3.T2.3.3.17.14.10.1" style="background-color:#E7F7FC;">0.261</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.17.14.11"><span class="ltx_text" id="S3.T2.3.3.17.14.11.1" style="background-color:#E7F7FC;">0.233</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.18.15">
<td class="ltx_td" id="S3.T2.3.3.18.15.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.18.15.2.1" style="background-color:#E7F7FC;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.18.15.3.1" style="background-color:#E7F7FC;">0.239</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.4">0.250</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.5">0.235</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.6">0.238</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.7">0.212</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.8">0.234</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.9">0.254</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.10">0.225</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.18.15.11">0.262</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.19.16">
<td class="ltx_td" id="S3.T2.3.3.19.16.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.2"><span class="ltx_text" id="S3.T2.3.3.19.16.2.1" style="background-color:#E7F7FC;">SDFusion</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.3"><span class="ltx_text" id="S3.T2.3.3.19.16.3.1" style="background-color:#E7F7FC;">0.365</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.4"><span class="ltx_text" id="S3.T2.3.3.19.16.4.1" style="background-color:#E7F7FC;">0.340</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.5"><span class="ltx_text" id="S3.T2.3.3.19.16.5.1" style="background-color:#E7F7FC;">0.368</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.6"><span class="ltx_text" id="S3.T2.3.3.19.16.6.1" style="background-color:#E7F7FC;">0.357</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.7"><span class="ltx_text" id="S3.T2.3.3.19.16.7.1" style="background-color:#E7F7FC;">0.318</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.8"><span class="ltx_text" id="S3.T2.3.3.19.16.8.1" style="background-color:#E7F7FC;">0.316</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.9"><span class="ltx_text" id="S3.T2.3.3.19.16.9.1" style="background-color:#E7F7FC;">0.403</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.10"><span class="ltx_text" id="S3.T2.3.3.19.16.10.1" style="background-color:#E7F7FC;">0.442</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.19.16.11"><span class="ltx_text" id="S3.T2.3.3.19.16.11.1" style="background-color:#E7F7FC;">0.374</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.20.17">
<td class="ltx_td" id="S3.T2.3.3.20.17.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.20.17.2.1" style="background-color:#E7F7FC;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.20.17.3.1" style="background-color:#E7F7FC;">0.638</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.4">0.600</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.5">0.613</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.6">0.638</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.7">0.646</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.8">0.596</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.9">0.672</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.10">0.718</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.20.17.11">0.623</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.21.18">
<td class="ltx_td" id="S3.T2.3.3.21.18.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.2"><span class="ltx_text" id="S3.T2.3.3.21.18.2.1" style="background-color:#E7F7FC;">Ours w/o Local</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.3"><span class="ltx_text" id="S3.T2.3.3.21.18.3.1" style="background-color:#E7F7FC;">0.741</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.4"><span class="ltx_text" id="S3.T2.3.3.21.18.4.1" style="background-color:#E7F7FC;">0.715</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.5"><span class="ltx_text" id="S3.T2.3.3.21.18.5.1" style="background-color:#E7F7FC;">0.706</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.6"><span class="ltx_text" id="S3.T2.3.3.21.18.6.1" style="background-color:#E7F7FC;">0.743</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.7"><span class="ltx_text" id="S3.T2.3.3.21.18.7.1" style="background-color:#E7F7FC;">0.750</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.8"><span class="ltx_text" id="S3.T2.3.3.21.18.8.1" style="background-color:#E7F7FC;">0.713</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.9"><span class="ltx_text" id="S3.T2.3.3.21.18.9.1" style="background-color:#E7F7FC;">0.786</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.10"><span class="ltx_text" id="S3.T2.3.3.21.18.10.1" style="background-color:#E7F7FC;">0.796</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.21.18.11"><span class="ltx_text" id="S3.T2.3.3.21.18.11.1" style="background-color:#E7F7FC;">0.719</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.22.19">
<td class="ltx_td" id="S3.T2.3.3.22.19.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.22.19.2.1" style="background-color:#E7F7FC;">Ours w/o Context</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S3.T2.3.3.22.19.3.1" style="background-color:#E7F7FC;">0.691</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.4">0.679</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.5">0.663</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.6">0.716</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.7">0.722</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.8">0.688</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.9">0.727</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.10">0.743</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.22.19.11">0.676</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3" style="background-color:#E7F7FC;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.1"><span class="ltx_text" id="S3.T2.3.3.3.1.1" style="background-color:#E7F7FC;">F-Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.1.m1.1"><semantics id="S3.T2.3.3.3.1.1.m1.1a"><mo id="S3.T2.3.3.3.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S3.T2.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.1.m1.1b"><ci id="S3.T2.3.3.3.1.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.2"><span class="ltx_text" id="S3.T2.3.3.3.2.1" style="background-color:#E7F7FC;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.3.1" style="background-color:#E7F7FC;">0.801</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.4.1" style="background-color:#E7F7FC;">0.794</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.5.1" style="background-color:#E7F7FC;">0.788</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.6.1" style="background-color:#E7F7FC;">0.809</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.7.1" style="background-color:#E7F7FC;">0.818</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.8"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.8.1" style="background-color:#E7F7FC;">0.798</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.9"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.9.1" style="background-color:#E7F7FC;">0.817</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.10"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.10.1" style="background-color:#E7F7FC;">0.820</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.11"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.11.1" style="background-color:#E7F7FC;">0.767</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for 3D part amodal completion on the PartObjaverse-Tiny dataset.  It evaluates the performance of several state-of-the-art shape completion techniques, including PatchComplete, DiffComplete, Finetune-VAE, and the proposed method (HoloPart). The evaluation metrics used are Chamfer Distance (a measure of geometric similarity), Intersection over Union (IoU, a measure of segmentation accuracy), F-Score (a combined measure of precision and recall), and Success Rate (the percentage of successfully completed parts).  The results are broken down by object category within the PartObjaverse-Tiny dataset to provide a more detailed performance analysis.
> <details>
> <summary>read the caption</summary>
> Table 2: 3D part amodal completion results on PartObjaverse-Tiny, reported in Chamfer Distance, IoU, F-Score and Success Rate.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.4.4.4.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1"><math alttext="S=1.5" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S4.T3.1.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.1.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.1.m1.1.1.3.cmml">1.5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1"><eq id="S4.T3.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.1.m1.1.1.2">𝑆</ci><cn id="S4.T3.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S4.T3.1.1.1.1.m1.1.1.3">1.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">S=1.5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">italic_S = 1.5</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2"><math alttext="S=3.5" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.2.m1.1.1.2" xref="S4.T3.2.2.2.2.m1.1.1.2.cmml">S</mi><mo id="S4.T3.2.2.2.2.m1.1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S4.T3.2.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.2.m1.1.1.3.cmml">3.5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1"><eq id="S4.T3.2.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1.1"></eq><ci id="S4.T3.2.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.2.m1.1.1.2">𝑆</ci><cn id="S4.T3.2.2.2.2.m1.1.1.3.cmml" type="float" xref="S4.T3.2.2.2.2.m1.1.1.3">3.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">S=3.5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">italic_S = 3.5</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3"><math alttext="S=5" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mrow id="S4.T3.3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.cmml"><mi id="S4.T3.3.3.3.3.m1.1.1.2" xref="S4.T3.3.3.3.3.m1.1.1.2.cmml">S</mi><mo id="S4.T3.3.3.3.3.m1.1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S4.T3.3.3.3.3.m1.1.1.3" xref="S4.T3.3.3.3.3.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1"><eq id="S4.T3.3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1.1"></eq><ci id="S4.T3.3.3.3.3.m1.1.1.2.cmml" xref="S4.T3.3.3.3.3.m1.1.1.2">𝑆</ci><cn id="S4.T3.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.3.3.3.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">S=5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">italic_S = 5</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4"><math alttext="S=7.5" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mrow id="S4.T3.4.4.4.4.m1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.cmml"><mi id="S4.T3.4.4.4.4.m1.1.1.2" xref="S4.T3.4.4.4.4.m1.1.1.2.cmml">S</mi><mo id="S4.T3.4.4.4.4.m1.1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.1.cmml">=</mo><mn id="S4.T3.4.4.4.4.m1.1.1.3" xref="S4.T3.4.4.4.4.m1.1.1.3.cmml">7.5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1"><eq id="S4.T3.4.4.4.4.m1.1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1.1"></eq><ci id="S4.T3.4.4.4.4.m1.1.1.2.cmml" xref="S4.T3.4.4.4.4.m1.1.1.2">𝑆</ci><cn id="S4.T3.4.4.4.4.m1.1.1.3.cmml" type="float" xref="S4.T3.4.4.4.4.m1.1.1.3">7.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">S=7.5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">italic_S = 7.5</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.5.5" style="background-color:#E7F7FC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.5.5.1"><span class="ltx_text" id="S4.T3.5.5.5.1.1" style="background-color:#E7F7FC;">Chamfer <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.1.m1.1"><semantics id="S4.T3.5.5.5.1.1.m1.1a"><mo id="S4.T3.5.5.5.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S4.T3.5.5.5.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.1.m1.1b"><ci id="S4.T3.5.5.5.1.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.2"><span class="ltx_text" id="S4.T3.5.5.5.2.1" style="background-color:#E7F7FC;">0.059</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.3.1" style="background-color:#E7F7FC;">0.057</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.4"><span class="ltx_text" id="S4.T3.5.5.5.4.1" style="background-color:#E7F7FC;">0.058</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.5"><span class="ltx_text" id="S4.T3.5.5.5.5.1" style="background-color:#E7F7FC;">0.089</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.6.6.1">IoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.2">0.590</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.3.1">0.618</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.4">0.614</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.5">0.514</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.7" style="background-color:#E7F7FC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.7.7.7.1"><span class="ltx_text" id="S4.T3.7.7.7.1.1" style="background-color:#E7F7FC;">F-Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.1.m1.1"><semantics id="S4.T3.7.7.7.1.1.m1.1a"><mo id="S4.T3.7.7.7.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S4.T3.7.7.7.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.1.m1.1b"><ci id="S4.T3.7.7.7.1.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.2"><span class="ltx_text" id="S4.T3.7.7.7.2.1" style="background-color:#E7F7FC;">0.718</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.3.1" style="background-color:#E7F7FC;">0.741</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.4"><span class="ltx_text" id="S4.T3.7.7.7.4.1" style="background-color:#E7F7FC;">0.738</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.5"><span class="ltx_text" id="S4.T3.7.7.7.5.1" style="background-color:#E7F7FC;">0.641</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.8.8.8.1">Success <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.1.m1.1"><semantics id="S4.T3.8.8.8.1.m1.1a"><mo id="S4.T3.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T3.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.1.m1.1b"><ci id="S4.T3.8.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.8.2">0.995</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.8.3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.3.1">0.997</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.8.4">0.996</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.8.5"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.5.1">0.997</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of varying the guidance scale parameter during the diffusion sampling process on the performance of the HoloPart model, specifically focusing on the PartObjaverse-Tiny dataset.  The guidance scale influences the balance between the model's adherence to the input and its generative capacity.  Different scales are tested, and the table presents quantitative results evaluating the effect on several key metrics such as Chamfer Distance, Intersection over Union (IoU), F-Score, and Success Rate.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of different guidance scale for diffusion sampling on the PartObjaverse-Tiny dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.3.3.4.1">
<td class="ltx_td ltx_border_tt" id="S6.T4.3.3.4.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.2"><span class="ltx_text" id="S6.T4.3.3.4.1.2.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.3"><span class="ltx_text" id="S6.T4.3.3.4.1.3.1" style="font-size:144%;">Overall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.4"><span class="ltx_text" id="S6.T4.3.3.4.1.4.1" style="font-size:144%;">Hum</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.5"><span class="ltx_text" id="S6.T4.3.3.4.1.5.1" style="font-size:144%;">Ani</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.6"><span class="ltx_text" id="S6.T4.3.3.4.1.6.1" style="font-size:144%;">Dai</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.7"><span class="ltx_text" id="S6.T4.3.3.4.1.7.1" style="font-size:144%;">Bui</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.8"><span class="ltx_text" id="S6.T4.3.3.4.1.8.1" style="font-size:144%;">Tra</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.9"><span class="ltx_text" id="S6.T4.3.3.4.1.9.1" style="font-size:144%;">Pla</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.10"><span class="ltx_text" id="S6.T4.3.3.4.1.10.1" style="font-size:144%;">Food</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.3.3.4.1.11"><span class="ltx_text" id="S6.T4.3.3.4.1.11.1" style="font-size:144%;">Ele</span></th>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.5.2">
<td class="ltx_td ltx_border_t" id="S6.T4.3.3.5.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.5.2.2.1" style="font-size:144%;background-color:#E7F7FC;">SDFusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.5.2.3.1" style="font-size:144%;background-color:#E7F7FC;">0.264</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.4"><span class="ltx_text" id="S6.T4.3.3.5.2.4.1" style="font-size:144%;">0.241</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.5"><span class="ltx_text" id="S6.T4.3.3.5.2.5.1" style="font-size:144%;">0.232</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.6"><span class="ltx_text" id="S6.T4.3.3.5.2.6.1" style="font-size:144%;">0.282</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.7"><span class="ltx_text" id="S6.T4.3.3.5.2.7.1" style="font-size:144%;">0.365</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.8"><span class="ltx_text" id="S6.T4.3.3.5.2.8.1" style="font-size:144%;">0.323</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.9"><span class="ltx_text" id="S6.T4.3.3.5.2.9.1" style="font-size:144%;">0.230</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.10"><span class="ltx_text" id="S6.T4.3.3.5.2.10.1" style="font-size:144%;">0.185</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.5.2.11"><span class="ltx_text" id="S6.T4.3.3.5.2.11.1" style="font-size:144%;">0.254</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.6.3">
<td class="ltx_td" id="S6.T4.3.3.6.3.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.2"><span class="ltx_text" id="S6.T4.3.3.6.3.2.1" style="font-size:144%;background-color:#E7F7FC;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.3"><span class="ltx_text" id="S6.T4.3.3.6.3.3.1" style="font-size:144%;background-color:#E7F7FC;">0.289</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.4"><span class="ltx_text" id="S6.T4.3.3.6.3.4.1" style="font-size:144%;background-color:#E7F7FC;">0.267</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.5"><span class="ltx_text" id="S6.T4.3.3.6.3.5.1" style="font-size:144%;background-color:#E7F7FC;">0.258</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.6"><span class="ltx_text" id="S6.T4.3.3.6.3.6.1" style="font-size:144%;background-color:#E7F7FC;">0.295</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.7"><span class="ltx_text" id="S6.T4.3.3.6.3.7.1" style="font-size:144%;background-color:#E7F7FC;">0.382</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.8"><span class="ltx_text" id="S6.T4.3.3.6.3.8.1" style="font-size:144%;background-color:#E7F7FC;">0.314</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.9"><span class="ltx_text" id="S6.T4.3.3.6.3.9.1" style="font-size:144%;background-color:#E7F7FC;">0.247</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.10"><span class="ltx_text" id="S6.T4.3.3.6.3.10.1" style="font-size:144%;background-color:#E7F7FC;">0.231</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.6.3.11"><span class="ltx_text" id="S6.T4.3.3.6.3.11.1" style="font-size:144%;background-color:#E7F7FC;">0.291</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.7.4">
<td class="ltx_td" id="S6.T4.3.3.7.4.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.7.4.2.1" style="font-size:144%;background-color:#E7F7FC;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.7.4.3.1" style="font-size:144%;background-color:#E7F7FC;">0.231</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.4"><span class="ltx_text" id="S6.T4.3.3.7.4.4.1" style="font-size:144%;">0.197</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.5"><span class="ltx_text" id="S6.T4.3.3.7.4.5.1" style="font-size:144%;">0.193</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.6"><span class="ltx_text" id="S6.T4.3.3.7.4.6.1" style="font-size:144%;">0.252</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.7"><span class="ltx_text" id="S6.T4.3.3.7.4.7.1" style="font-size:144%;">0.307</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.8"><span class="ltx_text" id="S6.T4.3.3.7.4.8.1" style="font-size:144%;">0.264</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.9"><span class="ltx_text" id="S6.T4.3.3.7.4.9.1" style="font-size:144%;">0.206</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.10"><span class="ltx_text" id="S6.T4.3.3.7.4.10.1" style="font-size:144%;">0.198</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.7.4.11"><span class="ltx_text" id="S6.T4.3.3.7.4.11.1" style="font-size:144%;">0.235</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.8.5">
<td class="ltx_td" id="S6.T4.3.3.8.5.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.2"><span class="ltx_text" id="S6.T4.3.3.8.5.2.1" style="font-size:144%;background-color:#E7F7FC;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.3"><span class="ltx_text" id="S6.T4.3.3.8.5.3.1" style="font-size:144%;background-color:#E7F7FC;">0.178</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.4"><span class="ltx_text" id="S6.T4.3.3.8.5.4.1" style="font-size:144%;background-color:#E7F7FC;">0.138</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.5"><span class="ltx_text" id="S6.T4.3.3.8.5.5.1" style="font-size:144%;background-color:#E7F7FC;">0.114</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.6"><span class="ltx_text" id="S6.T4.3.3.8.5.6.1" style="font-size:144%;background-color:#E7F7FC;">0.202</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.7"><span class="ltx_text" id="S6.T4.3.3.8.5.7.1" style="font-size:144%;background-color:#E7F7FC;">0.279</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.8"><span class="ltx_text" id="S6.T4.3.3.8.5.8.1" style="font-size:144%;background-color:#E7F7FC;">0.213</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.9"><span class="ltx_text" id="S6.T4.3.3.8.5.9.1" style="font-size:144%;background-color:#E7F7FC;">0.140</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.10"><span class="ltx_text" id="S6.T4.3.3.8.5.10.1" style="font-size:144%;background-color:#E7F7FC;">0.141</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.8.5.11"><span class="ltx_text" id="S6.T4.3.3.8.5.11.1" style="font-size:144%;background-color:#E7F7FC;">0.198</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.1">
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.1.1.1.1.1" style="font-size:144%;background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.1.1.1.1.1.1"> Chamfer <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T4.1.1.1.1.1.1.1.m1.1" style="background-color:#E7F7FC;"><semantics id="S6.T4.1.1.1.1.1.1.1.m1.1a"><mo id="S6.T4.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S6.T4.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.1.1.1.1.m1.1b"><ci id="S6.T4.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.1.1.1.2.1" style="font-size:144%;background-color:#E7F7FC;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.1.1.1.3.1" style="font-size:144%;background-color:#E7F7FC;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.3.1.1">0.134</span></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.4.1" style="font-size:144%;">0.094</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.5.1" style="font-size:144%;">0.086</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.6.1" style="font-size:144%;">0.155</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.7.1" style="font-size:144%;">0.210</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.8.1" style="font-size:144%;">0.144</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.9.1" style="font-size:144%;">0.109</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.10.1" style="font-size:144%;">0.110</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.11.1" style="font-size:144%;">0.162</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.9.6">
<td class="ltx_td ltx_border_t" id="S6.T4.3.3.9.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.3.3.9.6.2.1" style="font-size:144%;background-color:#F2F2F2;">SDFusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.3.3.9.6.3.1" style="font-size:144%;background-color:#F2F2F2;">0.169</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.4"><span class="ltx_text" id="S6.T4.3.3.9.6.4.1" style="font-size:144%;">0.159</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.5"><span class="ltx_text" id="S6.T4.3.3.9.6.5.1" style="font-size:144%;">0.191</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.6"><span class="ltx_text" id="S6.T4.3.3.9.6.6.1" style="font-size:144%;">0.161</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.7"><span class="ltx_text" id="S6.T4.3.3.9.6.7.1" style="font-size:144%;">0.124</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.8"><span class="ltx_text" id="S6.T4.3.3.9.6.8.1" style="font-size:144%;">0.117</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.9"><span class="ltx_text" id="S6.T4.3.3.9.6.9.1" style="font-size:144%;">0.201</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.10"><span class="ltx_text" id="S6.T4.3.3.9.6.10.1" style="font-size:144%;">0.234</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.9.6.11"><span class="ltx_text" id="S6.T4.3.3.9.6.11.1" style="font-size:144%;">0.168</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.10.7">
<td class="ltx_td" id="S6.T4.3.3.10.7.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.2"><span class="ltx_text" id="S6.T4.3.3.10.7.2.1" style="font-size:144%;background-color:#F2F2F2;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.3"><span class="ltx_text" id="S6.T4.3.3.10.7.3.1" style="font-size:144%;background-color:#F2F2F2;">0.086</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.4"><span class="ltx_text" id="S6.T4.3.3.10.7.4.1" style="font-size:144%;background-color:#F2F2F2;">0.079</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.5"><span class="ltx_text" id="S6.T4.3.3.10.7.5.1" style="font-size:144%;background-color:#F2F2F2;">0.097</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.6"><span class="ltx_text" id="S6.T4.3.3.10.7.6.1" style="font-size:144%;background-color:#F2F2F2;">0.079</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.7"><span class="ltx_text" id="S6.T4.3.3.10.7.7.1" style="font-size:144%;background-color:#F2F2F2;">0.076</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.8"><span class="ltx_text" id="S6.T4.3.3.10.7.8.1" style="font-size:144%;background-color:#F2F2F2;">0.076</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.9"><span class="ltx_text" id="S6.T4.3.3.10.7.9.1" style="font-size:144%;background-color:#F2F2F2;">0.105</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.10"><span class="ltx_text" id="S6.T4.3.3.10.7.10.1" style="font-size:144%;background-color:#F2F2F2;">0.091</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.10.7.11"><span class="ltx_text" id="S6.T4.3.3.10.7.11.1" style="font-size:144%;background-color:#F2F2F2;">0.084</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.11.8">
<td class="ltx_td" id="S6.T4.3.3.11.8.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.3.3.11.8.2.1" style="font-size:144%;background-color:#F2F2F2;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.3.3.11.8.3.1" style="font-size:144%;background-color:#F2F2F2;">0.102</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.4"><span class="ltx_text" id="S6.T4.3.3.11.8.4.1" style="font-size:144%;">0.115</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.5"><span class="ltx_text" id="S6.T4.3.3.11.8.5.1" style="font-size:144%;">0.121</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.6"><span class="ltx_text" id="S6.T4.3.3.11.8.6.1" style="font-size:144%;">0.093</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.7"><span class="ltx_text" id="S6.T4.3.3.11.8.7.1" style="font-size:144%;">0.073</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.8"><span class="ltx_text" id="S6.T4.3.3.11.8.8.1" style="font-size:144%;">0.087</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.9"><span class="ltx_text" id="S6.T4.3.3.11.8.9.1" style="font-size:144%;">0.122</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.10"><span class="ltx_text" id="S6.T4.3.3.11.8.10.1" style="font-size:144%;">0.109</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.11.8.11"><span class="ltx_text" id="S6.T4.3.3.11.8.11.1" style="font-size:144%;">0.098</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.12.9">
<td class="ltx_td" id="S6.T4.3.3.12.9.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.2"><span class="ltx_text" id="S6.T4.3.3.12.9.2.1" style="font-size:144%;background-color:#F2F2F2;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.3"><span class="ltx_text" id="S6.T4.3.3.12.9.3.1" style="font-size:144%;background-color:#F2F2F2;">0.347</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.4"><span class="ltx_text" id="S6.T4.3.3.12.9.4.1" style="font-size:144%;background-color:#F2F2F2;">0.370</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.5"><span class="ltx_text" id="S6.T4.3.3.12.9.5.1" style="font-size:144%;background-color:#F2F2F2;">0.406</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.6"><span class="ltx_text" id="S6.T4.3.3.12.9.6.1" style="font-size:144%;background-color:#F2F2F2;">0.313</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.7"><span class="ltx_text" id="S6.T4.3.3.12.9.7.1" style="font-size:144%;background-color:#F2F2F2;">0.299</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.8"><span class="ltx_text" id="S6.T4.3.3.12.9.8.1" style="font-size:144%;background-color:#F2F2F2;">0.277</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.9"><span class="ltx_text" id="S6.T4.3.3.12.9.9.1" style="font-size:144%;background-color:#F2F2F2;">0.412</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.10"><span class="ltx_text" id="S6.T4.3.3.12.9.10.1" style="font-size:144%;background-color:#F2F2F2;">0.381</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.12.9.11"><span class="ltx_text" id="S6.T4.3.3.12.9.11.1" style="font-size:144%;background-color:#F2F2F2;">0.320</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2.2">
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.2.2.2.1.1" style="font-size:144%;background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.2.2.2.1.1.1">IoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.2.2.2.1.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S6.T4.2.2.2.1.1.1.m1.1a"><mo id="S6.T4.2.2.2.1.1.1.m1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S6.T4.2.2.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.1.1.1.m1.1b"><ci id="S6.T4.2.2.2.1.1.1.m1.1.1.cmml" xref="S6.T4.2.2.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.2.2.2.2.1" style="font-size:144%;background-color:#F2F2F2;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S6.T4.2.2.2.3.1" style="font-size:144%;background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.3.1.1">0.455</span></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.4.1" style="font-size:144%;">0.508</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.5.1" style="font-size:144%;">0.513</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.6.1" style="font-size:144%;">0.415</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.7.1" style="font-size:144%;">0.360</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.8"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.8.1" style="font-size:144%;">0.379</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.9"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.9.1" style="font-size:144%;">0.522</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.10"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.10.1" style="font-size:144%;">0.529</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.11"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.11.1" style="font-size:144%;">0.416</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.13.10">
<td class="ltx_td ltx_border_t" id="S6.T4.3.3.13.10.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.13.10.2.1" style="font-size:144%;background-color:#E7F7FC;">SDFuison</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.13.10.3.1" style="font-size:144%;background-color:#E7F7FC;">0.273</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.4"><span class="ltx_text" id="S6.T4.3.3.13.10.4.1" style="font-size:144%;">0.263</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.5"><span class="ltx_text" id="S6.T4.3.3.13.10.5.1" style="font-size:144%;">0.306</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.6"><span class="ltx_text" id="S6.T4.3.3.13.10.6.1" style="font-size:144%;">0.260</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.7"><span class="ltx_text" id="S6.T4.3.3.13.10.7.1" style="font-size:144%;">0.208</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.8"><span class="ltx_text" id="S6.T4.3.3.13.10.8.1" style="font-size:144%;">0.198</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.9"><span class="ltx_text" id="S6.T4.3.3.13.10.9.1" style="font-size:144%;">0.316</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.10"><span class="ltx_text" id="S6.T4.3.3.13.10.10.1" style="font-size:144%;">0.364</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.13.10.11"><span class="ltx_text" id="S6.T4.3.3.13.10.11.1" style="font-size:144%;">0.271</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.14.11">
<td class="ltx_td" id="S6.T4.3.3.14.11.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.2"><span class="ltx_text" id="S6.T4.3.3.14.11.2.1" style="font-size:144%;background-color:#E7F7FC;">PatchComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.3"><span class="ltx_text" id="S6.T4.3.3.14.11.3.1" style="font-size:144%;background-color:#E7F7FC;">0.149</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.4"><span class="ltx_text" id="S6.T4.3.3.14.11.4.1" style="font-size:144%;background-color:#E7F7FC;">0.139</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.5"><span class="ltx_text" id="S6.T4.3.3.14.11.5.1" style="font-size:144%;background-color:#E7F7FC;">0.168</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.6"><span class="ltx_text" id="S6.T4.3.3.14.11.6.1" style="font-size:144%;background-color:#E7F7FC;">0.138</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.7"><span class="ltx_text" id="S6.T4.3.3.14.11.7.1" style="font-size:144%;background-color:#E7F7FC;">0.133</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.8"><span class="ltx_text" id="S6.T4.3.3.14.11.8.1" style="font-size:144%;background-color:#E7F7FC;">0.134</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.9"><span class="ltx_text" id="S6.T4.3.3.14.11.9.1" style="font-size:144%;background-color:#E7F7FC;">0.179</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.10"><span class="ltx_text" id="S6.T4.3.3.14.11.10.1" style="font-size:144%;background-color:#E7F7FC;">0.157</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.14.11.11"><span class="ltx_text" id="S6.T4.3.3.14.11.11.1" style="font-size:144%;background-color:#E7F7FC;">0.147</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.15.12">
<td class="ltx_td" id="S6.T4.3.3.15.12.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.15.12.2.1" style="font-size:144%;background-color:#E7F7FC;">DiffComplete</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.15.12.3.1" style="font-size:144%;background-color:#E7F7FC;">0.177</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.4"><span class="ltx_text" id="S6.T4.3.3.15.12.4.1" style="font-size:144%;">0.198</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.5"><span class="ltx_text" id="S6.T4.3.3.15.12.5.1" style="font-size:144%;">0.206</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.6"><span class="ltx_text" id="S6.T4.3.3.15.12.6.1" style="font-size:144%;">0.162</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.7"><span class="ltx_text" id="S6.T4.3.3.15.12.7.1" style="font-size:144%;">0.129</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.8"><span class="ltx_text" id="S6.T4.3.3.15.12.8.1" style="font-size:144%;">0.153</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.9"><span class="ltx_text" id="S6.T4.3.3.15.12.9.1" style="font-size:144%;">0.206</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.10"><span class="ltx_text" id="S6.T4.3.3.15.12.10.1" style="font-size:144%;">0.189</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.15.12.11"><span class="ltx_text" id="S6.T4.3.3.15.12.11.1" style="font-size:144%;">0.170</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.16.13">
<td class="ltx_td" id="S6.T4.3.3.16.13.1"></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.2"><span class="ltx_text" id="S6.T4.3.3.16.13.2.1" style="font-size:144%;background-color:#E7F7FC;">Finetune-VAE</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.3"><span class="ltx_text" id="S6.T4.3.3.16.13.3.1" style="font-size:144%;background-color:#E7F7FC;">0.473</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.4"><span class="ltx_text" id="S6.T4.3.3.16.13.4.1" style="font-size:144%;background-color:#E7F7FC;">0.507</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.5"><span class="ltx_text" id="S6.T4.3.3.16.13.5.1" style="font-size:144%;background-color:#E7F7FC;">0.543</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.6"><span class="ltx_text" id="S6.T4.3.3.16.13.6.1" style="font-size:144%;background-color:#E7F7FC;">0.433</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.7"><span class="ltx_text" id="S6.T4.3.3.16.13.7.1" style="font-size:144%;background-color:#E7F7FC;">0.417</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.8"><span class="ltx_text" id="S6.T4.3.3.16.13.8.1" style="font-size:144%;background-color:#E7F7FC;">0.395</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.9"><span class="ltx_text" id="S6.T4.3.3.16.13.9.1" style="font-size:144%;background-color:#E7F7FC;">0.540</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.10"><span class="ltx_text" id="S6.T4.3.3.16.13.10.1" style="font-size:144%;background-color:#E7F7FC;">0.513</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.16.13.11"><span class="ltx_text" id="S6.T4.3.3.16.13.11.1" style="font-size:144%;background-color:#E7F7FC;">0.439</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.1" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.3.1.1" style="font-size:144%;background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.3.1.1.1"> F-Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.3.3.3.1.1.1.1.m1.1" style="background-color:#E7F7FC;"><semantics id="S6.T4.3.3.3.1.1.1.1.m1.1a"><mo id="S6.T4.3.3.3.1.1.1.1.m1.1.1" mathbackground="#E7F7FC" stretchy="false" xref="S6.T4.3.3.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.3.1.1.1.1.m1.1b"><ci id="S6.T4.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S6.T4.3.3.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.2" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.3.2.1" style="font-size:144%;background-color:#E7F7FC;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.3" style="background-color:#E7F7FC;"><span class="ltx_text" id="S6.T4.3.3.3.3.1" style="font-size:144%;background-color:#E7F7FC;"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.3.1.1">0.570</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.4.1" style="font-size:144%;">0.626</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.5.1" style="font-size:144%;">0.628</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.6.1" style="font-size:144%;">0.529</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.7.1" style="font-size:144%;">0.477</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.8"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.8.1" style="font-size:144%;">0.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.9"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.9.1" style="font-size:144%;">0.627</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.10.1" style="font-size:144%;">0.645</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.11"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.11.1" style="font-size:144%;">0.533</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a quantitative comparison of different methods for 3D part amodal segmentation on the PartObjaverse-Tiny dataset.  It evaluates the performance of various approaches, including PatchComplete, DiffComplete, Finetune-VAE, and the authors' proposed method, using four metrics: Chamfer Distance, Intersection over Union (IoU), F-score, and Success Rate. Lower Chamfer Distance indicates better geometric accuracy, while higher IoU, F-score, and Success Rate signify improved segmentation quality.  The table is broken down by object category to show performance variations across different object types.
> <details>
> <summary>read the caption</summary>
> Table 4: 3D part amodal segmentation results on PartObjaverse-Tiny, reported in Chamfer Distance, IoU, F-Score and Success Rate.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07943/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07943/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}