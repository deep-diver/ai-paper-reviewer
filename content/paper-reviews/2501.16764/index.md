---
title: "DiffSplat: Repurposing Image Diffusion Models for Scalable Gaussian Splat Generation"
summary: "DIFFSPLAT repurposes 2D image diffusion models to natively generate high-quality 3D Gaussian splats, overcoming limitations in existing 3D generation methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Peking University",]
showSummary: true
date: 2025-01-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.16764 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenguo Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-29 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.16764" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.16764" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.16764/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating high-quality 3D content from text or images is challenging due to limited high-quality 3D datasets and the inconsistencies arising from 2D multi-view generation methods.  Current methods either struggle with training 3D diffusion models from scratch or encounter challenges in maintaining consistency when using 2D priors.  These limitations hinder the fidelity and generalizability of 3D content creation. 

This paper introduces DIFFSPLAT, a novel 3D generative framework that directly generates 3D Gaussian splats using pre-trained large-scale text-to-image diffusion models.  **By utilizing web-scale 2D priors**, DIFFSPLAT maintains 3D consistency in a unified model.  A lightweight reconstruction model is used to instantly generate multi-view Gaussian splat grids for efficient dataset curation.  A 3D rendering loss is incorporated to enhance 3D coherence.  Extensive experiments showcase DIFFSPLAT's superiority in various generation tasks and its compatibility with existing image generation techniques.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DIFFSPLAT leverages pre-trained 2D image diffusion models for efficient 3D Gaussian splat generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A lightweight reconstruction model enables scalable dataset curation for training DIFFSPLAT. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DIFFSPLAT demonstrates superior performance in text- and image-conditioned 3D generation tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel and efficient method for 3D content generation, addressing the limitations of existing techniques.  **Its use of pre-trained 2D image diffusion models significantly reduces the need for large 3D datasets**, making it more accessible to researchers with limited resources.  The findings could **spur further research** in leveraging 2D priors for 3D generation and lead to advancements in various applications like game design, virtual reality, and digital arts.

------
#### Visual Insights



![](https://arxiv.org/html/2501.16764/x1.png)

> 🔼 This figure compares four different approaches to 3D content generation using diffusion models.  Method (1) trains a 3D diffusion model directly on 3D data, which is limited by the scarcity of high-quality 3D datasets. Method (2) uses 2D supervision via differentiable rendering techniques but suffers from the same dataset limitation. Method (3) leverages pre-trained 2D diffusion models to generate multi-view images that are then used to reconstruct 3D content, but suffers from consistency issues in the generated multi-view images.  In contrast, the proposed method (4), DiffSplat, directly generates 3D Gaussian splats using pre-trained image diffusion models and leverages 2D priors while maintaining 3D consistency. This approach bypasses the need for large-scale 3D datasets, directly utilizing the power of web-scale 2D image data.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison with Previous 3D Diffusion Generative Models. (1) Native 3D methods and (2) rendering-based methods encounter challenges in training 3D diffusion models from scratch with limited 3D data. (3) Reconstruction-based methods struggle with inconsistencies in generated multi-view images. In contrast, (4) DiffSplat leverages pretrained image diffusion models for the direct 3DGS generation, effectively utilizing 2D diffusion priors and maintaining 3D consistency. “GT” refers to ground-truth samples in a 3D representation used for diffusion loss computation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.19.17">
<tr class="ltx_tr" id="S4.T1.4.2.2">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.4.2.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.4" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.4.2.2.4.1" style="background-color:#F0F0F0;">DiffSplat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">GVGEN</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">LN3Diff</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">DIRECT-3D</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">3DTopia</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.3.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">LGM<sup class="ltx_sup" id="S4.T1.3.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.1.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">GRM<sup class="ltx_sup" id="S4.T1.4.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T1.4.2.2.2.1.1">†</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.4.4.3" rowspan="3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T1.6.4.4.3.1"><span class="ltx_text" id="S4.T1.6.4.4.3.1.1"></span><span class="ltx_text" id="S4.T1.6.4.4.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.6.4.4.3.1.2.1">
<span class="ltx_tr" id="S4.T1.6.4.4.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.6.4.4.3.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Single</span></span>
<span class="ltx_tr" id="S4.T1.6.4.4.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.6.4.4.3.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Object</span></span>
</span></span> <span class="ltx_text" id="S4.T1.6.4.4.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.6.4.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.3.3.1.m1.1"><semantics id="S4.T1.5.3.3.1.m1.1a"><mo id="S4.T1.5.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.5.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.3.3.1.m1.1b"><ci id="S4.T1.5.3.3.1.m1.1.1.cmml" xref="S4.T1.5.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.3.3.1.m1.1d">↑</annotation></semantics></math> CLIP Sim.<sub class="ltx_sub" id="S4.T1.6.4.4.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.4" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.4.4.4.1" style="background-color:#F0F0F0;">30.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">23.66</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">24.36</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">24.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">25.55</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.9" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.4.4.9.1">29.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.10" style="padding-top:2.5pt;padding-bottom:2.5pt;">28.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.8.6.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.5.5.1.m1.1"><semantics id="S4.T1.7.5.5.1.m1.1a"><mo id="S4.T1.7.5.5.1.m1.1.1" stretchy="false" xref="S4.T1.7.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.5.1.m1.1b"><ci id="S4.T1.7.5.5.1.m1.1.1.cmml" xref="S4.T1.7.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.5.1.m1.1d">↑</annotation></semantics></math> CLIP R-Prec.<sub class="ltx_sub" id="S4.T1.8.6.6.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.3" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.6.6.3.1" style="background-color:#F0F0F0;">81.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">23.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">27.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">30.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">34.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.6.6.8.1">78.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.6.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">64.75</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.9.7.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.7.7.1.m1.1"><semantics id="S4.T1.9.7.7.1.m1.1a"><mo id="S4.T1.9.7.7.1.m1.1.1" stretchy="false" xref="S4.T1.9.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.7.7.1.m1.1b"><ci id="S4.T1.9.7.7.1.m1.1.1.cmml" xref="S4.T1.9.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.7.7.1.m1.1d">↑</annotation></semantics></math> ImageReward</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.2" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.7.7.2.1" style="background-color:#F0F0F0;">-0.491</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.156</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.008</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.005</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">-1.998</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.7.7.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.9.7.7.7.1">-0.720</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.7.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">-1.337</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.11.9.9.3" rowspan="3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T1.11.9.9.3.1"><span class="ltx_text" id="S4.T1.11.9.9.3.1.1"></span><span class="ltx_text" id="S4.T1.11.9.9.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.11.9.9.3.1.2.1">
<span class="ltx_tr" id="S4.T1.11.9.9.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.11.9.9.3.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Single</span></span>
<span class="ltx_tr" id="S4.T1.11.9.9.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.11.9.9.3.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Object</span></span>
<span class="ltx_tr" id="S4.T1.11.9.9.3.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.11.9.9.3.1.2.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">w/ Sur.</span></span>
</span></span> <span class="ltx_text" id="S4.T1.11.9.9.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.11.9.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.8.8.1.m1.1"><semantics id="S4.T1.10.8.8.1.m1.1a"><mo id="S4.T1.10.8.8.1.m1.1.1" stretchy="false" xref="S4.T1.10.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.8.8.1.m1.1b"><ci id="S4.T1.10.8.8.1.m1.1.1.cmml" xref="S4.T1.10.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.8.8.1.m1.1d">↑</annotation></semantics></math> CLIP Sim.<sub class="ltx_sub" id="S4.T1.11.9.9.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.4" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.9.9.4.1" style="background-color:#F0F0F0;">30.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">22.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">22.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">23.05</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">24.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.11.9.9.9" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.9.9.9.1">27.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.11.9.9.10" style="padding-top:2.5pt;padding-bottom:2.5pt;">26.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.13.11.11.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.10.10.1.m1.1"><semantics id="S4.T1.12.10.10.1.m1.1a"><mo id="S4.T1.12.10.10.1.m1.1.1" stretchy="false" xref="S4.T1.12.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.10.10.1.m1.1b"><ci id="S4.T1.12.10.10.1.m1.1.1.cmml" xref="S4.T1.12.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.10.10.1.m1.1d">↑</annotation></semantics></math> CLIP R-Prec.<sub class="ltx_sub" id="S4.T1.13.11.11.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.3" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.13.11.11.3.1" style="background-color:#F0F0F0;">80.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">26.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">22.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">25.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">39.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.13.11.11.8.1">55.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.11.11.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">51.25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.14.12.12.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.14.12.12.1.m1.1"><semantics id="S4.T1.14.12.12.1.m1.1a"><mo id="S4.T1.14.12.12.1.m1.1.1" stretchy="false" xref="S4.T1.14.12.12.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.12.12.1.m1.1b"><ci id="S4.T1.14.12.12.1.m1.1.1.cmml" xref="S4.T1.14.12.12.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.12.12.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.12.12.1.m1.1d">↑</annotation></semantics></math> ImageReward</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.2" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.14.12.12.2.1" style="background-color:#F0F0F0;">-0.674</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.251</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.244</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.191</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.230</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.12.12.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.14.12.12.7.1">-1.772</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.12.12.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">-1.869</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.16.14.14.3" rowspan="3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T1.16.14.14.3.1"><span class="ltx_text" id="S4.T1.16.14.14.3.1.1"></span><span class="ltx_text" id="S4.T1.16.14.14.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.16.14.14.3.1.2.1">
<span class="ltx_tr" id="S4.T1.16.14.14.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.16.14.14.3.1.2.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Multiple</span></span>
<span class="ltx_tr" id="S4.T1.16.14.14.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.16.14.14.3.1.2.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Objects</span></span>
</span></span> <span class="ltx_text" id="S4.T1.16.14.14.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.16.14.14.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.15.13.13.1.m1.1"><semantics id="S4.T1.15.13.13.1.m1.1a"><mo id="S4.T1.15.13.13.1.m1.1.1" stretchy="false" xref="S4.T1.15.13.13.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.13.13.1.m1.1b"><ci id="S4.T1.15.13.13.1.m1.1.1.cmml" xref="S4.T1.15.13.13.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.13.13.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.13.13.1.m1.1d">↑</annotation></semantics></math> CLIP Sim.<sub class="ltx_sub" id="S4.T1.16.14.14.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.4" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.16.14.14.4.1" style="background-color:#F0F0F0;">29.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">21.48</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">21.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">21.89</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">22.88</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.16.14.14.9" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.16.14.14.9.1">27.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.16.14.14.10" style="padding-top:2.5pt;padding-bottom:2.5pt;">24.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.18.16.16.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.17.15.15.1.m1.1"><semantics id="S4.T1.17.15.15.1.m1.1a"><mo id="S4.T1.17.15.15.1.m1.1.1" stretchy="false" xref="S4.T1.17.15.15.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.15.15.1.m1.1b"><ci id="S4.T1.17.15.15.1.m1.1.1.cmml" xref="S4.T1.17.15.15.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.15.15.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.15.15.1.m1.1d">↑</annotation></semantics></math> CLIP R-Prec.<sub class="ltx_sub" id="S4.T1.18.16.16.2.1">%</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.3" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.18.16.16.3.1" style="background-color:#F0F0F0;">69.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">8.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">8.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">7.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">16.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.16.16.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.18.16.16.8.1">51.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.16.16.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">26.50</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.19.17.17.1.m1.1"><semantics id="S4.T1.19.17.17.1.m1.1a"><mo id="S4.T1.19.17.17.1.m1.1.1" stretchy="false" xref="S4.T1.19.17.17.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.17.17.1.m1.1b"><ci id="S4.T1.19.17.17.1.m1.1.1.cmml" xref="S4.T1.19.17.17.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.17.17.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.17.17.1.m1.1d">↑</annotation></semantics></math> ImageReward</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.2" style="background-color:#F0F0F0;padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.19.17.17.2.1" style="background-color:#F0F0F0;">-0.849</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.272</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.267</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.249</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.225</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.17.17.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.19.17.17.7.1">-1.731</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.17.17.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">-2.116</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different text-to-3D generation methods on the T3Bench benchmark.  The metrics used are CLIP similarity score (%), CLIP R-Precision (%), and ImageReward, which assess the alignment between generated 3D models and text prompts, and the aesthetic quality of the generated models, respectively. The results are categorized into three scenarios: single objects, single objects with surroundings, and multiple objects.  The '†' symbol indicates methods that rely on pre-trained multi-view image generation models as an additional step for reconstruction-based 3D generation, highlighting the direct generative nature of the other approaches.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitive evaluations on T3Bench prompts for text-conditioned generation. † indicates reconstruction-based methods that require additional text-conditioned multi-view generative models.
> </details>





### In-depth insights


#### 3D Diffusion's Limits
3D diffusion models, while showing promise, face significant limitations.  **Data scarcity** is a major hurdle; high-quality, diverse 3D datasets are far less abundant than their 2D counterparts, hindering training and generalization.  The inherent complexity of 3D space introduces **computational challenges**, making training and inference significantly more resource-intensive than 2D diffusion.  **Maintaining 3D consistency** across multiple viewpoints remains a difficult problem; many current methods generate plausible individual views but fail to create a coherent 3D representation.  Furthermore, **evaluation metrics** for 3D content are still under development and lack the robustness and standardization of 2D metrics, complicating objective comparison and progress assessment.  Finally, current 3D diffusion models struggle with generating highly detailed, realistic objects, often producing results with artifacts and inaccuracies. Addressing these limitations will require further research into novel 3D representations, more efficient training techniques, and the development of more sophisticated evaluation methods.  Ultimately, overcoming these obstacles is essential to unlock the true potential of 3D diffusion for creating realistic and complex 3D content.

#### DIFFSPLAT's Approach
DIFFSPLAT presents a novel approach to 3D Gaussian splat generation by effectively repurposing the power of pre-trained 2D image diffusion models.  Instead of training a 3D model from scratch, which is data-intensive and computationally expensive, **DIFFSPLAT leverages the vast amount of data and learned representations inherent in these 2D models.** It achieves this by representing 3D objects as structured Gaussian splat grids, which are then processed by the adapted 2D diffusion model.  This clever technique bypasses the need for extensive 3D training data.  **A key innovation is the use of a lightweight reconstruction model** to instantly generate these splat grids from multi-view images, significantly accelerating dataset creation. The approach cleverly incorporates a 3D rendering loss in addition to the standard diffusion loss to ensure consistency across views and enforce 3D coherence. This fusion of 2D and 3D methodologies results in a scalable and efficient 3D generation framework capable of generating high-quality outputs. The model's adaptability, thanks to its compatibility with a broad range of image diffusion models, allows easy integration of existing image generation techniques and further enhances its effectiveness.  **DIFFSPLAT demonstrates a significant advancement in 3D generation by bridging the gap between the rich resources of 2D image generation and the challenges of 3D model training.**

#### Scalable Data Curation
Scalable data curation is crucial for training high-performing 3D generative models, especially when dealing with the limitations of existing 3D datasets.  **The core challenge lies in acquiring sufficient high-quality 3D data**, which is often time-consuming and expensive to obtain.  This paper addresses this challenge by proposing a novel approach that leverages readily available 2D image data and pre-trained 2D diffusion models.  Instead of directly creating 3D data, the method focuses on efficiently generating structured 2D representations (Gaussian splat grids) that implicitly capture 3D information.  **This strategy allows for scalable data curation because it bypasses the need for explicitly creating large 3D datasets.** A lightweight reconstruction model is trained to regress these 2D grids from multi-view images, enabling rapid generation of training data.  This approach is particularly effective because it **combines the power of large-scale 2D priors with 3D consistency constraints**, overcoming limitations of methods relying solely on either 2D or 3D supervision. The proposed method's ability to efficiently generate training data paves the way for training more powerful 3D generative models and **facilitates advancements in high-quality, scalable 3D content creation.**

#### Ablation Study Insights
An ablation study systematically removes components of a model to assess their individual contributions.  In the context of 3D generation, this could involve removing different loss functions (e.g., removing the rendering loss to isolate the impact of the diffusion loss),  altering network architectures, or varying the input data. **Key insights would surface from observing how these changes impact the quality of 3D model generation**:  Does removing the rendering loss drastically reduce 3D consistency across views? Does a simpler architecture compromise the level of detail or the overall visual fidelity?  Does reducing the input data (e.g., using fewer views) dramatically affect the reconstruction accuracy and model training stability?  The ablation study would not only quantify these changes (e.g., by measuring metrics such as PSNR, SSIM, and LPIPS) but also help to identify which components are essential for high-quality 3D model generation, and which may be redundant or even detrimental. **Understanding this interplay would be critical for optimizing model design, streamlining the training process, and potentially achieving greater efficiency in terms of computational resources and training time.**  A thoughtful ablation study can illuminate the design choices and thus provide crucial guidance for future improvements and optimization in the field of 3D generation.

#### Future 3D Directions
Future research in 3D generation should prioritize **scalability and efficiency**, moving beyond reliance on limited, high-quality datasets.  **Improving the integration of 2D and 3D techniques** is crucial, leveraging the wealth of pre-trained 2D models to boost 3D model training and generation speed.  Addressing the challenge of **generating high-fidelity, consistent multi-view 3D assets** remains a critical area for development.  This involves exploring innovative model architectures and training strategies that explicitly enforce 3D consistency across viewpoints. **Research into novel 3D representations**,  beyond current methods such as point clouds, voxels, and implicit functions, is also necessary to enhance the efficiency and realism of generated 3D content.  Finally, **incorporating physical-based rendering and material properties** into the generation process will be vital for creating truly photorealistic and interactive 3D experiences.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.16764/x2.png)

> 🔼 This figure illustrates the three main stages of the DIFFSPLAT method.  First, a lightweight reconstruction model takes multi-view images as input and generates a structured representation of 3D Gaussian splats. This serves to create a 'pseudo' dataset for training. Second, an image Variational Autoencoder (VAE) is fine-tuned; its purpose is to encode the properties of these Gaussian splats into a lower-dimensional latent space shared with the pre-trained image diffusion model.  Finally, the core DIFFSPLAT model uses this latent space to generate new 3D content conditioned on either text or image inputs. This leverages the power of pre-trained 2D image diffusion models to enable native 3D Gaussian splat generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method Overview. (1) A lightweight reconstruction model provides high-quality structured representation for “pseudo” dataset curation. (2) Image VAE is fine-tuned to encode Gaussian splat properties into a shared latent space. (3) DiffSplat is natively capable of generating 3D contents by image and text conditions utilizing 2D priors from text-to-image diffusion models.
> </details>



![](https://arxiv.org/html/2501.16764/x3.png)

> 🔼 This figure presents a qualitative comparison of text-to-3D generation results between DiffSplat and several other state-of-the-art methods.  Each model is given the same text prompt, and the generated 3D objects are shown.  DiffSplat's outputs are compared visually with results from GVGEN, LN3Diff, 3DTopia, LGM, and GRM. The figure highlights DiffSplat's ability to generate high-quality, detailed 3D models that closely match the input text descriptions, in comparison to other models. Additional visualizations are available in the appendix for a more comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative Results and Comparisons on Text-conditioned 3D Generation. More visualizations of DiffSplat results are provided in Appendix Figure 9, 10 and 11.
> </details>



![](https://arxiv.org/html/2501.16764/x4.png)

> 🔼 Figure 4 presents a qualitative comparison of image-conditioned 3D generation results using different methods.  It showcases the 3D models generated from single input images by DiffSplat and other state-of-the-art methods.  The figure highlights DiffSplat's ability to produce high-quality 3D models that accurately reflect the input images. For a more comprehensive view of the results generated by DiffSplat, refer to Appendix Figures 12, 13, and 14.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Results and Comparisons on Image-conditioned 3D Generation. More visualizations of DiffSplat results are provided in Appendix Figure 12, 13 and 14.
> </details>



![](https://arxiv.org/html/2501.16764/x5.png)

> 🔼 Figure 5 showcases the adaptability of ControlNet with DiffSplat.  ControlNet's ability to incorporate various image formats, including normal maps, depth maps, and Canny edge maps, as guidance for text-to-3D generation is highlighted. The figure demonstrates how these different input formats enhance the control and precision of the 3D model generation process within the DiffSplat framework.  This allows for more fine-grained control over the final output, resulting in more realistic and nuanced 3D objects.
> <details>
> <summary>read the caption</summary>
> Figure 5: Controllable Generation. ControlNet can seamlessly adapt to DiffSplat for controllable text-to-3D generation in various formats, such as normal and depth maps, and Canny edges.
> </details>



![](https://arxiv.org/html/2501.16764/x6.png)

> 🔼 This table presents an ablation study on the impact of different inputs used for reconstructing structured splat representations.  The goal is to determine which inputs are most effective for generating high-quality 3D Gaussian splat grids. The experiment compares the performance of using RGB images only versus incorporating additional geometric guidance such as normal and coordinate maps.  The results are quantified using PSNR, SSIM, and LPIPS metrics to evaluate the quality of the reconstructed splats.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of inputs for structured splat reconstruction.
> </details>



![](https://arxiv.org/html/2501.16764/x7.png)

> 🔼 This table presents an ablation study on different strategies for auto-encoding Gaussian splat properties.  It compares the performance of various methods for encoding these properties into a latent space suitable for use with a diffusion model.  The methods compared involve using a pretrained VAE (Variational Autoencoder) either frozen or fine-tuned, and with or without incorporating a rendering loss into the training process. The table shows the impact of these choices on the quality of the reconstructed Gaussian splat grids, measured by metrics such as PSNR, SSIM, and LPIPS.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study for Gaussian splat property auto-encoding strategies.
> </details>



![](https://arxiv.org/html/2501.16764/x8.png)

> 🔼 Figure 6 demonstrates the effect of the rendering loss (ℒrender) on the quality of 3D content generated by DiffSplat.  The top row shows results from text-conditioned generation, and the bottom row shows image-conditioned generation.  In both cases, the inclusion of the rendering loss leads to more visually appealing results with richer textures and a reduction in translucent artifacts (areas that appear semi-transparent). The comparison highlights the importance of the rendering loss in improving the overall quality and realism of the 3D models produced by the DiffSplat model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation of ℒrendersubscriptℒrender\mathcal{L}_{\text{render}}caligraphic_L start_POSTSUBSCRIPT render end_POSTSUBSCRIPT. Both text- (1st row) and image-conditioned (2nd row) DiffSplat with ℒrendersubscriptℒrender\mathcal{L}_{\text{render}}caligraphic_L start_POSTSUBSCRIPT render end_POSTSUBSCRIPT produces more aesthetic and textured 3D content with fewer translucent floaters.
> </details>



![](https://arxiv.org/html/2501.16764/x9.png)

> 🔼 Figure 7 visualizes the latent representations (splat latents) used in the DIFFSPLAT model.  It shows how the properties of 3D Gaussian splats—color, depth, opacity, scale, and rotation—are organized into structured 2D grids.  The figure highlights how these splat grids are encoded by a Variational Autoencoder (VAE) and then decoded using a pretrained image diffusion model's decoder.  The 'Decoded GS' section demonstrates the result of decoding the splat latents back into an image-like representation, revealing that they maintain meaningful information related to the 3D object's appearance and structure. This visualization helps illustrate the core concept of DIFFSPLAT's approach:  using image diffusion models to generate and manipulate 3D Gaussian splat representations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Splat Latents Visualization. 3DGS properties are structured in grids. “Decoded GS” shows the splat latents decoded by an image diffusion VAE.
> </details>



![](https://arxiv.org/html/2501.16764/x10.png)

> 🔼 Figure 8 showcases the capability of DiffSplat to generate 3D models using both text and image cues.  Instead of requiring multiple views, it successfully reconstructs a 3D object from a single image, demonstrating its ability to integrate textual context with visual information for improved accuracy and detail in the reconstruction process. The examples visually demonstrate how different image and text prompts lead to variations in the generated 3D output. This highlights the model's capacity for text understanding in conjunction with visual input during reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 8: Controllable Generation with Multi-modal Conditions. DiffSplat can effectively utilize both text and image conditions for single-view reconstruction with text understanding.
> </details>



![](https://arxiv.org/html/2501.16764/x11.png)

> 🔼 This figure showcases various 3D models generated by the DiffSplat model using different text prompts as input.  Each row displays a different text prompt and the corresponding generated 3D object from multiple viewpoints. The models are detailed and realistic, demonstrating the model's capability for generating high-quality 3D content based on text descriptions. The variety of objects presented highlights the versatility of DiffSplat in generating diverse 3D scenes.
> <details>
> <summary>read the caption</summary>
> Figure 9: More results of text-conditioned DiffSplat.
> </details>



![](https://arxiv.org/html/2501.16764/x12.png)

> 🔼 This figure displays additional examples of 3D models generated by the DiffSplat model using text prompts as input.  It showcases the model's ability to generate diverse and high-quality 3D objects from a range of descriptive text prompts, highlighting its capacity for detailed and nuanced object creation based on textual descriptions. The figure visually demonstrates the variety of objects, textures, and contexts that DiffSplat can generate from text alone.
> <details>
> <summary>read the caption</summary>
> Figure 10: More results of text-conditioned DiffSplat.
> </details>



![](https://arxiv.org/html/2501.16764/x13.png)

> 🔼 This figure displays more examples of 3D models generated by the DiffSplat model using text prompts as input.  Each row shows a different text prompt (e.g., 'A golden retriever with a blue bowtie') and the corresponding generated 3D Gaussian splat representations from multiple viewpoints.  The figure demonstrates the model's ability to generate diverse and detailed 3D objects based on textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 11: More results of text-conditioned DiffSplat.
> </details>



![](https://arxiv.org/html/2501.16764/x14.png)

> 🔼 This figure showcases additional examples of 3D models generated using the image-conditioned DiffSplat method.  Each row presents a single input image followed by multiple views (front, back, and side) of the corresponding 3D object generated by the model.  The variety of objects demonstrates the model's ability to handle diverse shapes and textures.
> <details>
> <summary>read the caption</summary>
> Figure 12: More results of image-conditioned DiffSplat.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.10.8">
<tr class="ltx_tr" id="S4.T2.7.5.5">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T2.7.5.5.6" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.7.5.5.7" style="background-color:#F0F0F0;padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.7.5.5.7.1" style="background-color:#F0F0F0;">DiffSplat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.7.5.5.8" style="padding-top:2pt;padding-bottom:2pt;">3DTopia-XL</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.7.5.5.9" style="padding-top:2pt;padding-bottom:2pt;">LN3Diff</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.1.1.1" style="padding-top:2pt;padding-bottom:2pt;">LGM<sup class="ltx_sup" id="S4.T2.3.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.3.1.1.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.4.2.2.2" style="padding-top:2pt;padding-bottom:2pt;">GRM<sup class="ltx_sup" id="S4.T2.4.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.2.2.2.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.5.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">LaRa<sup class="ltx_sup" id="S4.T2.5.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.3.3.3.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.6.4.4.4" style="padding-top:2pt;padding-bottom:2pt;">CRM<sup class="ltx_sup" id="S4.T2.6.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.4.4.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.7.5.5.5" style="padding-top:2pt;padding-bottom:2pt;">InstantMesh<sup class="ltx_sup" id="S4.T2.7.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.7.5.5.5.1.1">†</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.8.6.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.6.6.1.m1.1"><semantics id="S4.T2.8.6.6.1.m1.1a"><mo id="S4.T2.8.6.6.1.m1.1.1" stretchy="false" xref="S4.T2.8.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.6.6.1.m1.1b"><ci id="S4.T2.8.6.6.1.m1.1.1.cmml" xref="S4.T2.8.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.6.6.1.m1.1d">↑</annotation></semantics></math> PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.2" style="background-color:#F0F0F0;padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.6.6.2.1" style="background-color:#F0F0F0;">22.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.3" style="padding-top:2pt;padding-bottom:2pt;">17.27</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.4" style="padding-top:2pt;padding-bottom:2pt;">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.5" style="padding-top:2pt;padding-bottom:2pt;">18.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.6.6.6.1">19.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.7" style="padding-top:2pt;padding-bottom:2pt;">18.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.6.6.8" style="padding-top:2pt;padding-bottom:2pt;">18.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.6.6.9" style="padding-top:2pt;padding-bottom:2pt;">19.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.9.7.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.7.7.1.m1.1"><semantics id="S4.T2.9.7.7.1.m1.1a"><mo id="S4.T2.9.7.7.1.m1.1.1" stretchy="false" xref="S4.T2.9.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.7.7.1.m1.1b"><ci id="S4.T2.9.7.7.1.m1.1.1.cmml" xref="S4.T2.9.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.7.7.1.m1.1d">↑</annotation></semantics></math> SSIM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.2" style="background-color:#F0F0F0;padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.7.7.2.1" style="background-color:#F0F0F0;">0.892</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.3" style="padding-top:2pt;padding-bottom:2pt;">0.840</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.4" style="padding-top:2pt;padding-bottom:2pt;">0.831</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.5" style="padding-top:2pt;padding-bottom:2pt;">0.841</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.6" style="padding-top:2pt;padding-bottom:2pt;">0.869</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.7" style="padding-top:2pt;padding-bottom:2pt;">0.852</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.7.7.8" style="padding-top:2pt;padding-bottom:2pt;">0.855</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.7.7.9" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.7.7.9.1">0.876</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.1" style="padding-top:2pt;padding-bottom:2pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.8.8.1.m1.1"><semantics id="S4.T2.10.8.8.1.m1.1a"><mo id="S4.T2.10.8.8.1.m1.1.1" stretchy="false" xref="S4.T2.10.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.8.8.1.m1.1b"><ci id="S4.T2.10.8.8.1.m1.1.1.cmml" xref="S4.T2.10.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.8.8.1.m1.1d">↓</annotation></semantics></math> LPIPS</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.2" style="background-color:#F0F0F0;padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.8.8.2.1" style="background-color:#F0F0F0;">0.107</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.3" style="padding-top:2pt;padding-bottom:2pt;">0.175</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.4" style="padding-top:2pt;padding-bottom:2pt;">0.177</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.5" style="padding-top:2pt;padding-bottom:2pt;">0.166</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.6" style="padding-top:2pt;padding-bottom:2pt;">0.141</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.7" style="padding-top:2pt;padding-bottom:2pt;">0.202</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.10.8.8.8" style="padding-top:2pt;padding-bottom:2pt;">0.149</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.10.8.8.9" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.8.8.9.1">0.128</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for image-conditioned 3D generation, focusing on the GSO dataset.  The metrics used to evaluate performance are PSNR, SSIM, and LPIPS, which measure peak signal-to-noise ratio, structural similarity index, and learned perceptual image patch similarity, respectively. Lower LPIPS scores indicate better perceptual similarity. The methods compared include DIFFSPLAT and several baselines, both native 3D methods and reconstruction-based methods. The † symbol next to certain methods indicates that those techniques require additional image generation models to convert a single image to a 3D representation before evaluation, highlighting a key difference in approach and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative evaluations on GSO for image-conditioned generation. † indicates reconstruction methods that require additional image generation models for single image-to-3D generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.5.5">
<tr class="ltx_tr" id="S4.T4.3.3.3.3">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T4.3.3.3.3.4" style="padding-top:1.7pt;padding-bottom:1.7pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.1.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math> PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.2.2.2.2.2" style="padding-top:1.7pt;padding-bottom:1.7pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.2.m1.1d">↑</annotation></semantics></math> SSIM</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.3.3.3.3.3" style="padding-top:1.7pt;padding-bottom:1.7pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.3.m1.1d">↓</annotation></semantics></math> LPIPS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">#Param.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.5.5.5.6.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">LGM</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.6.2" style="padding-top:1.7pt;padding-bottom:1.7pt;">26.48</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.6.3" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.892</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.6.4" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.077</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.6.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">415M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.5.7.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">GRM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.7.2" style="padding-top:1.7pt;padding-bottom:1.7pt;">28.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.7.3" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.959</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.7.4" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.031</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.7.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">179M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.5.5.5.8.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.8.2" style="padding-top:1.7pt;padding-bottom:1.7pt;">27.43</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.8.3" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.956</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5.8.4" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.041</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.8.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">42M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.4.4.4.4.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><plus id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">+</annotation></semantics></math>Normal</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.4.2" style="padding-top:1.7pt;padding-bottom:1.7pt;">28.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.4.3" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.957</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.4.4" style="padding-top:1.7pt;padding-bottom:1.7pt;">0.033</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.4.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">42M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.5.5.1" style="padding-top:1.7pt;padding-bottom:1.7pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.5.1.m1.1.1" xref="S4.T4.5.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.1.m1.1b"><plus id="S4.T4.5.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.1.m1.1d">+</annotation></semantics></math>Coord.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.5.2" style="padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.5.5.2.1">29.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.5.3" style="padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.5.5.3.1">0.961</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.5.4" style="padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.5.5.5.5.4.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5.5" style="padding-top:1.7pt;padding-bottom:1.7pt;">42M</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.5.5.9.1" style="background-color:#F0F0F0;padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text" id="S4.T4.5.5.5.9.1.1" style="background-color:#F0F0F0;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.5.5.9.2" style="background-color:#F0F0F0;padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.9.2.1" style="background-color:#F0F0F0;">30.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.5.5.9.3" style="background-color:#F0F0F0;padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.9.3.1" style="background-color:#F0F0F0;">0.963</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.5.5.9.4" style="background-color:#F0F0F0;padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.9.4.1" style="background-color:#F0F0F0;">0.027</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.5.9.5" style="background-color:#F0F0F0;padding-top:1.7pt;padding-bottom:1.7pt;"><span class="ltx_text" id="S4.T4.5.5.5.9.5.1" style="background-color:#F0F0F0;">42M</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies performed on the DIFFSPLAT model's design choices.  It shows the quantitative impact of various design decisions on the model's performance, across different metrics and experimental settings. Specifically, it analyzes the effects of different multi-view generation approaches (spatial-concat vs. view-concat), training objective functions (with or without the diffusion and rendering losses), and the choice of base diffusion model. The metrics used to evaluate performance include CLIP similarity, CLIP R-Precision, ImageReward, PSNR, SSIM, and LPIPS, providing a comprehensive assessment of both the qualitative and quantitative aspects of the generated 3D models.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study of DiffSplat design choices.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.16764/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16764/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}