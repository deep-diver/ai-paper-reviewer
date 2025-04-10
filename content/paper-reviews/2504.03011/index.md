---
title: "Comprehensive Relighting: Generalizable and Consistent Monocular Human Relighting and Harmonization"
summary: "Comprehensive Relighting: A generalizable model for consistent monocular human relighting & harmonization!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Southern California",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03011 {{< /keyword >}}
{{< keyword icon="writer" >}} Junying Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03011" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03011" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03011/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing image-based relighting methods often struggle with generalizability and controllability, typically being limited to specific scenarios like faces or static humans due to dataset scarcity and restrictions in modeling multiple light sources. These issues hinder their applicability in real-world scenarios.



This paper introduces Comprehensive Relighting, a novel approach that utilizes a pre-trained diffusion model and unsupervised temporal lighting model. This ensures temporal coherence by learning lighting cycle consistency from real-world videos. It demonstrates strong generalizability and lighting temporal coherence, outperforming existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Comprehensive Relighting enables controlling the lighting of humans with arbitrary body parts in any scene. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model leverages a pre-trained diffusion model and unsupervised temporal lighting for temporal coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method shows strong generalizability and lighting temporal coherence. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel approach to human relighting that can **handle various scenarios** with consistent results. This **advances the field** of image-based relighting and opens up possibilities for realistic and controllable human image manipulation in diverse applications.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03011/x2.png)

> 🔼 This figure demonstrates the capabilities of the Comprehensive Relighting model.  The model takes as input a single image or video of a person (or multiple people), and allows for precise control over the lighting in the output image.  The figure shows four examples: the original input, relighting controlled by spherical harmonics, relighting controlled by a background image, and relighting controlled by a combination of spherical harmonics and a background image.  In each example, the output is a harmonized image where lighting and background are seamlessly blended.
> <details>
> <summary>read the caption</summary>
> Figure 1: We introduce Comprehensive Relighting, a generalizable and consistent model for relighting and harmonization, which controls the lighting property from a single image or video of humans with arbitrary body parts. Given target lighting coefficients, e.g., Spherical harmonics (second), background scenes (third), or their combination (fourth), our model performs consistent and harmonized relighting.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.14.1">
<tr class="ltx_tr" id="S3.T1.14.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S3.T1.14.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.1.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top ltx_border_r ltx_border_t" colspan="2" id="S3.T1.14.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.1.1.2.1" style="font-size:80%;">Scenario 1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top ltx_border_r ltx_border_t" colspan="2" id="S3.T1.14.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.1.1.3.1" style="font-size:80%;">Scenario 2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top ltx_border_r ltx_border_t" colspan="2" id="S3.T1.14.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.1.1.4.1" style="font-size:80%;">Scenario 3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="S3.T1.14.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S3.T1.14.1.2.1.1" style="font-size:80%;">DPR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.14.1.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a><span class="ltx_text" id="S3.T1.14.1.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.2.1">
<span class="ltx_p" id="S3.T1.14.1.2.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.2.2.1.1.1" style="font-size:80%;">18.62/0.86/0.103</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.3.1">
<span class="ltx_p" id="S3.T1.14.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.2.3.1.1.1" style="font-size:80%;background-color:#FFE0B2;">32.00</span><span class="ltx_text" id="S3.T1.14.1.2.3.1.1.2" style="font-size:80%;">/0.94/0.030</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.4.1">
<span class="ltx_p" id="S3.T1.14.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.2.4.1.1.1" style="font-size:80%;">18.14/0.89/0.089</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.5.1">
<span class="ltx_p" id="S3.T1.14.1.2.5.1.1" style="width:65.4pt;"><span class="ltx_text" id="S3.T1.14.1.2.5.1.1.1" style="font-size:80%;background-color:#FFE0B2;">35.29</span><span class="ltx_text" id="S3.T1.14.1.2.5.1.1.2" style="font-size:80%;">/0.98/0.032</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.6.1">
<span class="ltx_p" id="S3.T1.14.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.2.6.1.1.1" style="font-size:80%;">21.20/0.89/0.072</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.14.1.2.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.2.7.1">
<span class="ltx_p" id="S3.T1.14.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.2.7.1.1.1" style="font-size:80%;">37.11/0.95/0.038</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="S3.T1.14.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S3.T1.14.1.3.1.1" style="font-size:80%;">RHW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.14.1.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S3.T1.14.1.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.2.1">
<span class="ltx_p" id="S3.T1.14.1.3.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.3.2.1.1.1" style="font-size:80%;">19.78/0.87/0.113</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.3.1">
<span class="ltx_p" id="S3.T1.14.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.3.3.1.1.1" style="font-size:80%;">30.74/0.95/</span><span class="ltx_text" id="S3.T1.14.1.3.3.1.1.2" style="font-size:80%;background-color:#FFE0B2;">0.027</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.4.1">
<span class="ltx_p" id="S3.T1.14.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.3.4.1.1.1" style="font-size:80%;">20.12/0.88/0.078</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.5.1">
<span class="ltx_p" id="S3.T1.14.1.3.5.1.1" style="width:65.4pt;"><span class="ltx_text" id="S3.T1.14.1.3.5.1.1.1" style="font-size:80%;background-color:#C8E6C9;">36.64</span><span class="ltx_text" id="S3.T1.14.1.3.5.1.1.2" style="font-size:80%;">/0.98/</span><span class="ltx_text" id="S3.T1.14.1.3.5.1.1.3" style="font-size:80%;background-color:#C8E6C9;">0.028</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.6.1">
<span class="ltx_p" id="S3.T1.14.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.3.6.1.1.1" style="font-size:80%;">23.33/0.90/0.060</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.3.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.3.7.1">
<span class="ltx_p" id="S3.T1.14.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.3.7.1.1.1" style="font-size:80%;background-color:#FFE0B2;">37.53</span><span class="ltx_text" id="S3.T1.14.1.3.7.1.1.2" style="font-size:80%;">/0.98/0.033</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="S3.T1.14.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S3.T1.14.1.4.1.1" style="font-size:80%;">GFR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.14.1.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S3.T1.14.1.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.2" style="background-color:#FFE0B2;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.2.1">
<span class="ltx_p" id="S3.T1.14.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.4.2.1.1.1" style="font-size:80%;background-color:#FFE0B2;">25.59/0.91/0.089</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.3.1">
<span class="ltx_p" id="S3.T1.14.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.4.3.1.1.1" style="font-size:80%;">30.33/0.95/0.033</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.4" style="background-color:#FFE0B2;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.4.1">
<span class="ltx_p" id="S3.T1.14.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.4.4.1.1.1" style="font-size:80%;background-color:#FFE0B2;">22.76/0.91/0.072</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.5.1">
<span class="ltx_p" id="S3.T1.14.1.4.5.1.1" style="width:65.4pt;"><span class="ltx_text" id="S3.T1.14.1.4.5.1.1.1" style="font-size:80%;">32.36/0.98/0.036</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.6" style="background-color:#FFE0B2;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.6.1">
<span class="ltx_p" id="S3.T1.14.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.4.6.1.1.1" style="font-size:80%;background-color:#FFE0B2;">25.49/0.93/0.050</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.4.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.4.7.1">
<span class="ltx_p" id="S3.T1.14.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.4.7.1.1.1" style="font-size:80%;">35.89/0.98/</span><span class="ltx_text" id="S3.T1.14.1.4.7.1.1.2" style="font-size:80%;background-color:#FFE0B2;">0.028</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="S3.T1.14.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S3.T1.14.1.5.1.1" style="font-size:80%;">LPBR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.14.1.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S3.T1.14.1.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.2.1">
<span class="ltx_p" id="S3.T1.14.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.5.2.1.1.1" style="font-size:80%;">18.19/0.86/0.090</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.3.1">
<span class="ltx_p" id="S3.T1.14.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.5.3.1.1.1" style="font-size:80%;">31.62/0.91/0.035</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.4.1">
<span class="ltx_p" id="S3.T1.14.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.5.4.1.1.1" style="font-size:80%;">19.96/0.88/0.084</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.5.1">
<span class="ltx_p" id="S3.T1.14.1.5.5.1.1" style="width:65.4pt;"><span class="ltx_text" id="S3.T1.14.1.5.5.1.1.1" style="font-size:80%;">27.94/0.94/0.041</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.6" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.6.1">
<span class="ltx_p" id="S3.T1.14.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.5.6.1.1.1" style="font-size:80%;">21.42/0.88/0.053</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.14.1.5.7" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.5.7.1">
<span class="ltx_p" id="S3.T1.14.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.5.7.1.1.1" style="font-size:80%;">33.39/0.95/0.038</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_l ltx_border_rr" id="S3.T1.14.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S3.T1.14.1.6.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.2" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.2.1">
<span class="ltx_p" id="S3.T1.14.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.6.2.1.1.1" style="font-size:80%;background-color:#C8E6C9;">25.95/0.95/0.066</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.3" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.3.1">
<span class="ltx_p" id="S3.T1.14.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.6.3.1.1.1" style="font-size:80%;background-color:#C8E6C9;">33.58/0.96/0.024</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.4" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.4.1">
<span class="ltx_p" id="S3.T1.14.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.6.4.1.1.1" style="font-size:80%;background-color:#C8E6C9;">23.99/0.93/0.048</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.5.1">
<span class="ltx_p" id="S3.T1.14.1.6.5.1.1" style="width:65.4pt;"><span class="ltx_text" id="S3.T1.14.1.6.5.1.1.1" style="font-size:80%;">35.18/</span><span class="ltx_text" id="S3.T1.14.1.6.5.1.1.2" style="font-size:80%;background-color:#C8E6C9;">0.99</span><span class="ltx_text" id="S3.T1.14.1.6.5.1.1.3" style="font-size:80%;">/</span><span class="ltx_text" id="S3.T1.14.1.6.5.1.1.4" style="font-size:80%;background-color:#FFE0B2;">0.031</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.6" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.6.1">
<span class="ltx_p" id="S3.T1.14.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.6.6.1.1.1" style="font-size:80%;background-color:#C8E6C9;">26.61/0.94/0.033</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.14.1.6.7" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.14.1.6.7.1">
<span class="ltx_p" id="S3.T1.14.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="S3.T1.14.1.6.7.1.1.1" style="font-size:80%;background-color:#C8E6C9;">38.32/0.98/0.026</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of the proposed Comprehensive Relighting model against existing image-based human relighting methods. The evaluation is performed on synthetic videos, assessing both image fidelity and temporal consistency.  Image fidelity is measured using Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  Temporal consistency is evaluated using the same metrics, prefixed with 't' (e.g., tPSNR). Higher PSNR and SSIM values indicate better image quality, while lower LPIPS values represent higher perceptual similarity to ground truth.  Green highlights the best performance for each metric, while yellow indicates the second-best. This table demonstrates the superior performance of the proposed method in both image quality and temporal coherence compared to existing methods.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison with existing image-based human relighting methods on synthetic videos for fidelity and temporal consistency. Each column shows image fidelity (left) and video temporal consistency (right). Metrics are PSNR↑↑\uparrow↑ / SSIM↑↑\uparrow↑ / LPIPS↓↓\downarrow↓ for accuracy, and tPSNR↑↑\uparrow↑ / tSSIM↑↑\uparrow↑ / tLPIPS↓↓\downarrow↓ for temporal consistency. While green is used for the best values, yellow highlights the second-best values.
> </details>





### In-depth insights


#### Generalizable Light
The concept of "Generalizable Light" is compelling, suggesting a lighting model capable of adapting across diverse scenes and subjects. A truly generalizable lighting approach would need to **overcome challenges like varying material properties, complex occlusions, and diverse light source configurations**. Existing methods often struggle with **domain gaps**, performing well in controlled environments but failing in unconstrained real-world scenarios. A successful generalizable model might leverage **deep learning to learn lighting priors** from vast datasets, or employ **physics-based rendering techniques** to simulate realistic light transport. Key to achieving this goal is **robustness to noisy inputs, ability to handle novel scenarios, and efficient computation** for practical applications. Furthermore, the model needs to disentangle lighting from other factors like albedo and surface normals.

#### Temporal Module
The temporal module is crucial for ensuring **consistency in video relighting**. Without it, frame-to-frame lighting changes can appear unnatural and jarring. This module likely employs techniques like **recurrent neural networks** or **temporal filters** to smooth lighting transitions. A key challenge is the **lack of ground truth data** for video relighting, necessitating unsupervised learning approaches. Cycle consistency, where relighting a video and then reverting it should approximate the original, is a common strategy. Furthermore, **optical flow** might be used to track pixel movement between frames, ensuring that lighting changes are applied consistently to moving objects. The module likely learns the temporal relationship between consecutive frames. Effectively it predicts the future lighting distribution given the past and helps to avoid artifacts. Also, to obtain better visual results, features from different sources (e.g. lighting, and temporal) may be combined via blending techniques. Finally, a guided refinement can also be applied to ensure high-frequency details can be preserved.

#### Coarse-to-Fine Relit
The Coarse-to-Fine Relit approach is a hierarchical strategy that refines an initial coarse estimate into a more detailed result. **Coarse relighting generates a basic illumination map**, capturing overall lighting, which is then refined. A key benefit is its **ability to handle complex lighting effects** by gradually incorporating detail, enhancing visual realism. This technique uses image priors and multi-modal lighting, and could use a diffusion model or neural network. Coarse output is then passed to a refined output for further fidelity which leads to efficient and high quality relit images.

#### Limitations Note
The paper acknowledges several limitations. **The model struggles with strong shadows**, particularly on clothing, though it can suppress self-occlusion shadows. This could be addressed by incorporating shadow removal techniques or augmenting training data with hard shadow examples. **The computational cost is significant**, requiring substantial time for inference due to the diffusion model. Addressing this limitation could involve exploring more efficient diffusion models. **Noisy detections of masks and surface normals affect temporal coherence**, leading to flickering. Further advancement in video prior models will be necessary to enhance temporal coherence. Finally, while focusing on human relighting, **the model's material handling is limited**, especially with general objects. Future work could extend the model to accurately handle various materials.

#### Diffusion is Key
The concept of **'Diffusion is Key'** in the context of image or video processing highlights the transformative power of diffusion models. Traditional image-based relighting methods often grapple with the complexities of disentangling lighting and appearance, requiring specialized setups and meticulous data acquisition. **Diffusion models**, with their ability to learn the underlying distribution of vast datasets, offer a more generalizable approach. Instead of relying on explicit decomposition or 3D reconstruction, these models can learn the nuanced relationship between lighting conditions and visual appearance directly from data. A crucial benefit is the ability to leverage pre-trained diffusion models, fine-tuning them for specific tasks like human relighting. This approach overcomes the limitations of dataset scarcity and allows for the creation of more robust and adaptable relighting systems. **The coarse-to-fine strategy**, where diffusion models are used to refine an initial estimate, can further enhance performance and provide control over the relighting process.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03011/x3.png)

> 🔼 This figure provides a comparison of different baseline methods used for human relighting. It shows whether each method supports various functionalities such as image relighting, spherical harmonics (SH) relighting, background harmonization, video relighting, video consistency, and generalizability.  The table visually represents the capabilities of each method across different relighting settings and tasks, making it easy to compare their strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of various baseline methods for relighting settings and functionalities.
> </details>



![](https://arxiv.org/html/2504.03011/x4.png)

> 🔼 This figure demonstrates the generalizability of the Comprehensive Relighting model.  It showcases consistent and harmonized relighting and harmonization results across a wide range of human poses and body configurations, including portraits, half-body shots, full-body shots, and multi-person scenes.  The inset images show different lighting control variables used for each example, highlighting the model's ability to manipulate lighting conditions effectively.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our model generalizes to various body parts (portrait, half-body, full-body, multiperson) for relighting and harmonization, with lighting control variables shown in the insets.
> </details>



![](https://arxiv.org/html/2504.03011/x5.png)

> 🔼 This figure provides a high-level overview of the Comprehensive Relighting system.  Panel (a) illustrates the core coarse-to-fine relighting and harmonization process. It shows how an input image, along with coarse lighting parameters and a background image, is used by a diffusion model to generate a finely detailed relit image that is seamlessly integrated with the background. Panel (b) details the unsupervised temporal lighting model. This model learns temporal consistency from real-world videos to predict future lighting conditions, which improves the temporal coherence of the relit videos. Panel (c) describes the inference process, showing how the lighting and temporal modules are blended (both spatially and temporally) to produce consistent and generalizable relighting results. 
> <details>
> <summary>read the caption</summary>
> Figure 4: System overview. (a) Given an input image of humans with coarse lighting and background image, our diffusion model generates the relit images harmonized with background scenes (Sec. 3.2). (b) The external temporal modules learn the temporal cycle consistency from many real-world videos to construct temporal lighting features (Sec. 3.3). (c) In inference time, we blend the features from lighting and temporal modules spatially and temporally to enable coherent and generalizable human relighting (Sec. 3.4).
> </details>



![](https://arxiv.org/html/2504.03011/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of synthetic video frames, directly corresponding to the results presented in Table 1.  The figure displays a sequence of frames for each method. Each sequence starts with a composite input image. This composite image shows the original video frame with the target lighting parameters overlaid as an inset.  Following the input, the figure shows the relighting result produced by the proposed method ('Ours'). Then, it shows the relighting results obtained by four existing baseline methods (GFR, RHW, DPR, LPBR). Finally, a normalized L2 photometric error map (as an inset) quantifies the visual difference between the ground truth and each method's output.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison of synthetic video frames (corresponding to Tab. 1). From left to right: composite input with target lighting parameters (inset), our relit result, baseline methods, and normalized L2↓↓\downarrow↓ photometric error map (inset).
> </details>



![](https://arxiv.org/html/2504.03011/x7.png)

> 🔼 This figure compares the performance of the proposed Comprehensive Relighting model against the LPBR [41] method for background harmonization using real images from the DeepFashion [33] dataset.  The top row displays the results of the proposed method's relighting, demonstrating its ability to harmonize the foreground with the background image. The second row provides a magnified view of the relighting, highlighting the fine details and demonstrating the method's ability to achieve a natural and cohesive result.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison with LPBR [41] on DeepFashion [33] real images for background harmonization testing. The first row shows the relit output, and the second shows the magnified results.
> </details>



![](https://arxiv.org/html/2504.03011/x8.png)

> 🔼 Figure 7 presents a comparison of the proposed Comprehensive Relighting model with the RHW method [51] using real images sourced from Pexels [37].  The results showcase the performance of both methods under various lighting conditions controlled by user-specified parameters (shown in insets).  While RHW demonstrates acceptable relighting results for full-body images, its performance noticeably diminishes in quality when applied to images featuring half-bodies or multiple people. This highlights a limitation of RHW's generalizability compared to the proposed approach.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison with RHW [51] on Pexels [37] real images. The lighting control variables are shown as insets. While RHW produces reasonable relighting for full-body images, its quality degrades on half-body and multi-person cases.
> </details>



![](https://arxiv.org/html/2504.03011/x9.png)

> 🔼 This figure compares the performance of the proposed Comprehensive Relighting model against the GFR [23] method on real images from the Pexels [37] dataset.  The input image, along with the target lighting conditions (shown as insets), are provided to both models.  The results demonstrate that the Comprehensive Relighting model produces higher-quality relighting outputs, particularly for scenes with half-bodies or multiple people.  The limited generalizability of GFR leads to significantly degraded results in these scenarios compared to the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison with GFR [23] on Pexels [37] real images. The lighting control variables are shown as insets. Limited generalizability of GFR results in reduced output quality for half-body and multi-person cases.
> </details>



![](https://arxiv.org/html/2504.03011/x10.png)

> 🔼 This figure illustrates the training and sampling (denoising) pipeline of the diffusion model for fine-grained human relighting and harmonization.  The process begins with an input image and target lighting parameters, including coarse shading and background images. The image is then encoded, combined with the lighting variables through the Lighting ControlNet module and processed within the Stable Diffusion model (a U-Net architecture with an encoder, middle block, and decoder).  The model outputs a fine-grained relit image harmonized with the conditioning background image.  The denoising process involves progressively removing noise from a latent representation of the image until a clear relit image is obtained.  This pipeline aims to generate a high-quality, fine-grained relit image of humans, harmonized with a background scene, all conditioned on the coarse shading and background image.
> <details>
> <summary>read the caption</summary>
> Figure 9: Relighting and Harmonization diffusion model training and denoising pipeline.
> </details>



![](https://arxiv.org/html/2504.03011/x11.png)

> 🔼 This figure provides a comparison of the scale of our training dataset with other related works and also shows a breakdown of the demographic information of our dataset. The left side shows a bar chart comparing the number of training images and subjects across several published datasets related to human relighting. It highlights that our dataset, while smaller than other datasets, is sufficiently large and diverse for our purposes.  The right side displays a breakdown of our training and evaluation datasets' demographic information, including gender, skin tone, and body part coverage. This information helps in understanding the representativeness of our dataset and ensures we considered factors like diversity in gender, race and body shapes to avoid bias in our model.
> <details>
> <summary>read the caption</summary>
> Figure 10: Left side: Training data scale comparisons; Right side: Breakdown of our training and evaluation dataset information.
> </details>



![](https://arxiv.org/html/2504.03011/x12.png)

> 🔼 This figure illustrates the architecture of the shading estimation network used in the Comprehensive Relighting model. The left panel shows the overall network structure, which consists of an encoder that processes the input normal map and mask, and a decoder that generates the shading map.  The encoder uses convolutional blocks, while the decoder utilizes deconvolutional blocks to upsample the feature maps and reconstruct the high-resolution shading. The right panel details the structures of these convolutional and deconvolutional blocks, which are the fundamental building blocks of the network.  Each block includes multiple convolutional or deconvolutional layers, along with activation functions (LReLU) and instance normalization layers to enhance performance.
> <details>
> <summary>read the caption</summary>
> Figure 11: Left: Our shading estimation network, Right: Convolutional and deconvolutional blocks.
> </details>



![](https://arxiv.org/html/2504.03011/x13.png)

> 🔼 This figure displays examples from the training dataset used for the Comprehensive Relighting model. The top half showcases examples of half-body portraits, while the bottom half presents full-body images generated through simulation. Each row consists of several images depicting various aspects of the data, including the mask (representing the subject's silhouette), albedo (the base color of the subject), the original input image, different background scenes, corresponding lighting conditions, and the final relit image. This visual representation highlights the variety and complexity of the training data used to enable the model's capability to perform generalizable and consistent human relighting and harmonization.
> <details>
> <summary>read the caption</summary>
> Figure 12: Training samples of the relighting data with half-body portraits (up) and simulation data with full-body images (bottom) .
> </details>



![](https://arxiv.org/html/2504.03011/x14.png)

> 🔼 This figure compares the results of the proposed Comprehensive Relighting model with the IC-Light harmonization method. The left side shows multi-person relighting results, where multiple individuals are present in the scene.  The right side provides a zoomed-in view of a specific portion of the image, highlighting finer details and allowing for a more detailed comparison of the relighting and harmonization effects between the two methods.  This visual comparison aims to demonstrate the effectiveness of the proposed model in generating high-quality, temporally consistent, and generalizable human relighting and harmonization results, even in complex scenes with multiple people.
> <details>
> <summary>read the caption</summary>
> Figure 13: Comparison with harmonization methods (IC-Light). Left side is multi-person testing, right side is zoom in result.
> </details>



![](https://arxiv.org/html/2504.03011/x15.png)

> 🔼 This figure illustrates the training process of the coarse shading estimation network, a crucial component in the Comprehensive Relighting model.  The network takes as input the surface normal map (N), a foreground mask (M), and the target lighting parameters (φ, Spherical Harmonics). An encoder processes N and M into a latent space.  In this latent space, the lighting parameters (φ) are conditioned.  The decoder then decodes the combined information in the latent space to generate the coarse shading map (S). This map represents a coarse estimation of the shading under the target lighting conditions, crucial for the subsequent fine-grained relighting stage.
> <details>
> <summary>read the caption</summary>
> Figure 14: Training pipeline for coarse lighting estimation network.
> </details>



![](https://arxiv.org/html/2504.03011/x16.png)

> 🔼 This figure presents a qualitative comparison of different human relighting methods using synthetic data.  It showcases results for both full-body and multi-person scenarios.  The top row displays the original input images with their respective target lighting. Subsequent rows show results generated by various relighting models. The final column in each section displays the ground truth results for comparison, allowing for a visual assessment of the accuracy and quality of each method. 
> <details>
> <summary>read the caption</summary>
> Figure 15: Qualitative comparisons conducted on synthetic data. From top to bottom: full-body testing, multi-person testing. The ground truth data is displayed in the last column.
> </details>



![](https://arxiv.org/html/2504.03011/x17.png)

> 🔼 This figure compares the performance of the proposed Comprehensive Relighting model against the DPR (Deep Portrait Relighting) method on real images from the Pexels dataset.  The comparison focuses on face and half-body relighting scenarios.  Multiple lighting conditions are applied to demonstrate the generalizability and robustness of each model in handling variations in lighting and body pose. The results showcase the ability of each model to realistically relight the images, highlighting the differences in quality and detail preservation.
> <details>
> <summary>read the caption</summary>
> Figure 16: Comparison with DPR on face and half-body relighting on Pexels [37] real images.
> </details>



![](https://arxiv.org/html/2504.03011/x18.png)

> 🔼 This figure shows a comparison of relighting results on LightStage data. The left side displays the results obtained using the proposed method, showcasing the input image, the estimated coarse shading, and the final relit image. The right side presents a comparison with other state-of-the-art relighting baselines (DPR, GFR, and RHW), demonstrating the superior performance of the proposed method in terms of visual quality and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 17: Our LigtStage data testing (Left) and comparison with other relighting baselines (Right).
> </details>



![](https://arxiv.org/html/2504.03011/x19.png)

> 🔼 This figure showcases the performance of the Comprehensive Relighting model under challenging lighting conditions. The left half presents successful relighting results where strong shadows are effectively handled, demonstrating the model's robustness. In contrast, the right half displays instances where the model struggles, highlighting limitations in handling complex shadow patterns in real-world scenarios. These failure cases provide insights into areas for future model improvement and refinement.
> <details>
> <summary>read the caption</summary>
> Figure 18: Strong shadow testing results (left) and failure cases (right) on real images from Pexels [37].
> </details>



![](https://arxiv.org/html/2504.03011/x20.png)

> 🔼 This figure compares video relighting results across different methods for three scenarios.  Each scenario features a unique lighting condition and human movement. The top row shows the input for each scenario, a composite of the human albedo (a representation of the person's surface color and texture, independent of lighting) and the background. The second row shows the ground truth shading (how light would realistically fall on the human in the scene), and the third row displays the ground truth image with correct lighting for comparison. The subsequent rows depict the results from different relighting methods, allowing for a visual comparison of their accuracy against the ground truth.
> <details>
> <summary>read the caption</summary>
> Figure 19: Video relighting comparison results on synthetic testing data: from left to right, we show comparison results for Scenario 1, 2, 3. From top to bottom, the first row shows the composite input (foreground human albedo composited with background image), the second row shows the ground truth (GT) shading, and the third row shows the GT image.
> </details>



![](https://arxiv.org/html/2504.03011/x21.png)

> 🔼 This figure compares the performance of the proposed Comprehensive Relighting model against other state-of-the-art human relighting methods on real images from the DeepFashion dataset.  The test encompasses diverse human identities and body types (full-body and half-body poses).  The results demonstrate the model's consistent and reliable ability to produce realistic relighting effects under a variety of target lighting conditions defined using Spherical Harmonics coefficients.
> <details>
> <summary>read the caption</summary>
> Figure 20: Real image comparisons with other human relighting approaches on the DeepFashion dataset [33]. We test on different identities and body parts (full body, half body). Our model shows consistent and feasible relighting with varying target lighting parameters (Spherical harmonics).
> </details>



![](https://arxiv.org/html/2504.03011/x22.png)

> 🔼 This figure compares the performance of the proposed Comprehensive Relighting model against existing harmonization methods ([41] and [23]) using real images.  The top half demonstrates background harmonization only, showing the results of the proposed method and LPBR [41]. The bottom half shows results for both harmonization and relighting, comparing the proposed method to both LPBR [41] and GFR [23].  The comparison highlights that while LPBR achieves harmonization, it introduces noticeable distortions, particularly on faces. GFR, while capable of both tasks, exhibits significant color noise in its results.  In contrast, the proposed method demonstrates effective harmonization and relighting without artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 21: We present real image comparisons with the harmonization method. Given a composite input image, our model can achieve effective harmonization. When provided with target lighting parameters (Spherical harmonics), our model can achieve both background harmonization and relighting. The top section displays the outputs of our background harmonization method compared to the results from [41]. The lower section presents harmonization and relighting comparisons with [23]. Due to the higher generative prior of LPBR, noticeable distortions are present on the human face. Although GFR can achieve both harmonization and relighting, it exhibits obvious color noise.
> </details>



![](https://arxiv.org/html/2504.03011/x23.png)

> 🔼 This figure presents the results of a user study comparing the performance of different relighting and harmonization models, including the authors' proposed model and several state-of-the-art baselines.  The study assessed three aspects of model performance: overall relighting quality, how well each model preserved the subject's identity, and how effectively each model harmonized the subject with the background scene.  The results are displayed using pie charts that show the percentage of user preferences for each model on each of the three criteria.  The inclusion of 'general object testing' suggests that the models were evaluated on a broader range of images than just human portraits, encompassing various objects or scenes.
> <details>
> <summary>read the caption</summary>
> Figure 22: User study results: Preferences between our model and other relighting and harmonization models, including our general object testing.
> </details>



![](https://arxiv.org/html/2504.03011/x24.png)

> 🔼 This figure showcases the model's ability to perform realistic relighting and background harmonization.  Multiple subjects are shown, each with varied poses and clothing.  The first column displays the input image. The next column depicts the subject with relighting applied, based on Lighting Condition 1, maintaining consistency in the subject's appearance. The following columns demonstrate the harmonization of the subject with five different background images, illustrating how the lighting and subject seamlessly integrate into each scene. This highlights the model's capacity to realistically blend foreground and background elements, demonstrating both relighting and harmonization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 23: Our model can achieve realistic relighting with lighting 1 and background harmonization.
> </details>



![](https://arxiv.org/html/2504.03011/x25.png)

> 🔼 This figure shows the results of applying the proposed Comprehensive Relighting model to generate realistic relighting effects with different background scenes.  The input image shows individuals against a neutral background.  The 'Relighting' column demonstrates the consistent relighting of these individuals across various lighting conditions (lighting parameter set 2).  The subsequent columns showcase the harmonization of the individuals with five distinct backgrounds, demonstrating the model's capability to seamlessly integrate them into different environmental contexts while maintaining consistent lighting.
> <details>
> <summary>read the caption</summary>
> Figure 24: Our model can achieve realistic relighting with lighting 2 and background harmonization.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.1">
<tr class="ltx_tr" id="S4.T2.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="S4.T2.6.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.2.1">DPR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.3.1">RHW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.4.1">GFR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03011v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.5.1">Ours</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="S4.T2.6.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Portrait</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">17.74 / 0.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">15.75 / 0.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">17.71 / 0.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.1.2.5" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.6.1.2.5.1" style="background-color:#C8E6C9;">23.04 / 0.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="S4.T2.6.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Full-body</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.6.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">27.62 / 0.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.6.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">27.73 / 0.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.6.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">29.51 / 0.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.6.1.3.5" style="background-color:#C8E6C9;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.5.1" style="background-color:#C8E6C9;">30.81 / 0.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_l ltx_border_rr" id="S4.T2.6.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Multi-person</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.6.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">25.70 / 0.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.6.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">25.69 / 0.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.6.1.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">29.35 / <span class="ltx_text" id="S4.T2.6.1.4.4.1" style="background-color:#C8E6C9;">0.97</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.6.1.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.6.1.4.5.1" style="background-color:#C8E6C9;">31.49</span> / <span class="ltx_text" id="S4.T2.6.1.4.5.2" style="background-color:#FFE0B2;">0.96</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different relighting methods on synthetic static human images.  The comparison is broken down by body part (portrait, full body, and multi-person). The metrics used to evaluate the relighting quality are the Peak Signal-to-Noise Ratio (PSNR) and the Structural Similarity Index (SSIM), both of which are higher is better.  Higher PSNR and SSIM values indicate better image quality and more accurate relighting.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison on our synthetic static testing data sorted by body-part. We compute average PSNR↑↑\uparrow↑ / SSIM↑↑\uparrow↑.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.4">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.4.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.4.5.1">
<span class="ltx_p" id="S4.T3.4.4.4.5.1.1" style="width:79.7pt;">Method</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.2.2.2">
<span class="ltx_p" id="S4.T3.2.2.2.2.2.2" style="width:34.1pt;"><math alttext="L_{1}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.1.m1.1a"><msub id="S4.T3.1.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.1.1.1.m1.1.1.2.cmml">L</mi><mn id="S4.T3.1.1.1.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.1.1.1.m1.1.1.2">𝐿</ci><cn id="S4.T3.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.1.1.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.1.m1.1c">L_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.1.m1.1d">italic_L start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.2.2.m2.1"><semantics id="S4.T3.2.2.2.2.2.2.m2.1a"><mo id="S4.T3.2.2.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T3.2.2.2.2.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.2.2.m2.1b"><ci id="S4.T3.2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T3.2.2.2.2.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.2.2.m2.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.3.3.1">
<span class="ltx_p" id="S4.T3.3.3.3.3.1.1" style="width:34.1pt;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.4.4.1">
<span class="ltx_p" id="S4.T3.4.4.4.4.1.1" style="width:34.1pt;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.1.m1.1b"><ci id="S4.T3.4.4.4.4.1.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.4.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.5.1.1">
<span class="ltx_p" id="S4.T3.4.4.5.1.1.1" style="width:79.7pt;">Ours-diffusion</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.4.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.5.2.1">
<span class="ltx_p" id="S4.T3.4.4.5.2.1.1" style="width:34.1pt;">0.05837</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.4.4.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.5.3.1">
<span class="ltx_p" id="S4.T3.4.4.5.3.1.1" style="width:34.1pt;">17.099</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.4.4.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.5.4.1">
<span class="ltx_p" id="S4.T3.4.4.5.4.1.1" style="width:34.1pt;">0.833</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.6.1.1">
<span class="ltx_p" id="S4.T3.4.4.6.1.1.1" style="width:79.7pt;">Ours end-to-end</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.6.2.1">
<span class="ltx_p" id="S4.T3.4.4.6.2.1.1" style="width:34.1pt;">0.01432</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.6.3.1">
<span class="ltx_p" id="S4.T3.4.4.6.3.1.1" style="width:34.1pt;">26.418</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.4.4.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.6.4.1">
<span class="ltx_p" id="S4.T3.4.4.6.4.1.1" style="width:34.1pt;">0.918</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.7.1.1">
<span class="ltx_p" id="S4.T3.4.4.7.1.1.1" style="width:79.7pt;">Ours-background</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.7.2.1">
<span class="ltx_p" id="S4.T3.4.4.7.2.1.1" style="width:34.1pt;">0.01239</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.7.3.1">
<span class="ltx_p" id="S4.T3.4.4.7.3.1.1" style="width:34.1pt;">27.346</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.4.4.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.7.4.1">
<span class="ltx_p" id="S4.T3.4.4.7.4.1.1" style="width:34.1pt;">0.945</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.8.1.1">
<span class="ltx_p" id="S4.T3.4.4.8.1.1.1" style="width:79.7pt;">Ours</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.8.2.1">
<span class="ltx_p" id="S4.T3.4.4.8.2.1.1" style="width:34.1pt;">0.01035</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.4.4.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.8.3.1">
<span class="ltx_p" id="S4.T3.4.4.8.3.1.1" style="width:34.1pt;">28.419</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.4.4.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.8.4.1">
<span class="ltx_p" id="S4.T3.4.4.8.4.1.1" style="width:34.1pt;">0.948</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S4.T3.4.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.9.1.1">
<span class="ltx_p" id="S4.T3.4.4.9.1.1.1" style="width:79.7pt;">Ours+refine</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S4.T3.4.4.9.2" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.9.2.1">
<span class="ltx_p" id="S4.T3.4.4.9.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S4.T3.4.4.9.2.1.1.1" style="background-color:#C8E6C9;">0.01012</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S4.T3.4.4.9.3" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.9.3.1">
<span class="ltx_p" id="S4.T3.4.4.9.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S4.T3.4.4.9.3.1.1.1" style="background-color:#C8E6C9;">28.778</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S4.T3.4.4.9.4" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.9.4.1">
<span class="ltx_p" id="S4.T3.4.4.9.4.1.1" style="width:34.1pt;"><span class="ltx_text" id="S4.T3.4.4.9.4.1.1.1" style="background-color:#C8E6C9;">0.949</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the coarse-to-fine relighting model. It shows the impact of different components of the model, such as the diffusion model, coarse lighting estimation, background harmonization, and a guided refinement step, on the overall relighting performance.  The metrics used likely include those to measure the fidelity of the generated images (e.g., PSNR, SSIM, LPIPS). By removing or modifying different components, the study aims to isolate their individual contributions and understand their importance in the model's success.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on coarse-to-fine relighting models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.4">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.4.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.4.5.1">
<span class="ltx_p" id="S4.T4.4.4.4.5.1.1" style="width:85.4pt;">Method</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.2.2.2">
<span class="ltx_p" id="S4.T4.2.2.2.2.2.2" style="width:28.5pt;">t<math alttext="L_{1}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.1.1.1.m1.1.1.2.cmml">L</mi><mn id="S4.T4.1.1.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.1.1.m1.1.1.2">𝐿</ci><cn id="S4.T4.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.1.1.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.1.m1.1c">L_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.1.m1.1d">italic_L start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.2.2.m2.1"><semantics id="S4.T4.2.2.2.2.2.2.m2.1a"><mo id="S4.T4.2.2.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T4.2.2.2.2.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.2.2.m2.1b"><ci id="S4.T4.2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T4.2.2.2.2.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.2.2.m2.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.3.3.1">
<span class="ltx_p" id="S4.T4.3.3.3.3.1.1" style="width:37.0pt;">tPSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.4.4.1">
<span class="ltx_p" id="S4.T4.4.4.4.4.1.1" style="width:37.0pt;">tSSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.1.m1.1b"><ci id="S4.T4.4.4.4.4.1.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.4.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.5.1.1">
<span class="ltx_p" id="S4.T4.4.4.5.1.1.1" style="width:85.4pt;">Ours</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.4.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.5.2.1">
<span class="ltx_p" id="S4.T4.4.4.5.2.1.1" style="width:28.5pt;">6.552</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T4.4.4.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.5.3.1">
<span class="ltx_p" id="S4.T4.4.4.5.3.1.1" style="width:37.0pt;">31.028</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.4.4.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.5.4.1">
<span class="ltx_p" id="S4.T4.4.4.5.4.1.1" style="width:37.0pt;">0.956</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T4.4.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.6.1.1">
<span class="ltx_p" id="S4.T4.4.4.6.1.1.1" style="width:85.4pt;">Ours+temporal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T4.4.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.6.2.1">
<span class="ltx_p" id="S4.T4.4.4.6.2.1.1" style="width:28.5pt;">5.638</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T4.4.4.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.6.3.1">
<span class="ltx_p" id="S4.T4.4.4.6.3.1.1" style="width:37.0pt;">32.266</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T4.4.4.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.6.4.1">
<span class="ltx_p" id="S4.T4.4.4.6.4.1.1" style="width:37.0pt;">0.957</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.7.1.1">
<span class="ltx_p" id="S4.T4.4.4.7.1.1.1" style="width:85.4pt;">Ours+temporal+blend</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.7.2" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.7.2.1">
<span class="ltx_p" id="S4.T4.4.4.7.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T4.4.4.7.2.1.1.1" style="background-color:#C8E6C9;">4.019</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.7.3" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.7.3.1">
<span class="ltx_p" id="S4.T4.4.4.7.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.1.1.1" style="background-color:#C8E6C9;">33.588</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S4.T4.4.4.7.4" style="background-color:#C8E6C9;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.4.4.7.4.1">
<span class="ltx_p" id="S4.T4.4.4.7.4.1.1" style="width:37.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.4.1.1.1" style="background-color:#C8E6C9;">0.957</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the effectiveness of different components of a temporal module used in video relighting.  The study focuses on synthetic video sequences. The tL1 error, a metric representing temporal consistency, is measured for various configurations of the temporal module and reported in units of 10^-3.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on our temporal modules evaluated on synthetic sequences: tL⁢1𝐿1L1italic_L 1 error (×10−3absentsuperscript103\times 10^{-3}× 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.6.1">
<tr class="ltx_tr" id="A2.T5.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="A2.T5.6.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.6.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.6.1.1.2.1">SH</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.6.1.1.3.1">Bg</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.6.1.1.4.1">Male</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.6.1.1.5.1">Female</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="A2.T5.6.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">RHW</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">28.89 / 0.950</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T5.6.1.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">26.58 / 0.939</td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="A2.T5.6.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">DPR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">27.63 / 0.972</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">27.62 / 0.944</td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="A2.T5.6.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">GFR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">29.32 / 0.926</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T5.6.1.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">29.71 / 0.973</td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_l ltx_border_rr" id="A2.T5.6.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Ours</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T5.6.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T5.6.1.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T5.6.1.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T5.6.1.5.4.1">31.12</span> / <span class="ltx_text ltx_font_bold" id="A2.T5.6.1.5.4.2">0.970</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T5.6.1.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T5.6.1.5.5.1">30.50</span> / <span class="ltx_text ltx_font_bold" id="A2.T5.6.1.5.5.2">0.964</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image-based human relighting methods.  The comparison is done using Peak Signal-to-Noise Ratio (PSNR) and Structural Similarity Index (SSIM) metrics.  The results are broken down by gender (male and female) to show the performance of each method across different demographic groups.  Higher PSNR and SSIM values indicate better relighting quality, showing how well the generated images match the ground truth.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of baseline methods on our full-body synthetic static data, categorized by gender: (PSNR↑↑\uparrow↑ / SSIM↑↑\uparrow↑).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.6.1">
<tr class="ltx_tr" id="A2.T6.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="A2.T6.6.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.1.2.1">White</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.1.3.1">Brown</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.1.4.1">Dark</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr ltx_border_t" id="A2.T6.6.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">RHW</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">28.15 / 0.946</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">27.37 / 0.944</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A2.T6.6.1.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">27.68 / 0.943</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="A2.T6.6.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">DPR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">27.44 / 0.956</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">27.70 / 0.962</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">27.73 / 0.956</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_rr" id="A2.T6.6.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">GFR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">29.94 / 0.936</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">29.41 / 0.934</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A2.T6.6.1.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">29.10 / <span class="ltx_text ltx_font_bold" id="A2.T6.6.1.4.4.1">0.978</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_l ltx_border_rr" id="A2.T6.6.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Ours</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T6.6.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.5.2.1">31.53 / 0.985</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T6.6.1.5.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.1.5.3.1">31.77 / 0.976</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A2.T6.6.1.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T6.6.1.5.4.1">29.13</span> / 0.940</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image-based human relighting methods.  The comparison is performed on synthetic data representing full-body humans, categorized by skin color (White, Brown, Dark). The metrics used for evaluation are PSNR (Peak Signal-to-Noise Ratio) and SSIM (Structural Similarity Index), both higher values indicating better performance.  The table allows assessment of each method's ability to accurately relight images while preserving details, specifically focusing on how well they handle different skin tones.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of baseline methods on our full-body synthetic static data, categorized by skin color: (PSNR↑↑\uparrow↑ / SSIM↑↑\uparrow↑).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03011/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03011/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}