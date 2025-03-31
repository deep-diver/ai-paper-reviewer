---
title: "Hi3DGen: High-fidelity 3D Geometry Generation from Images via Normal Bridging"
summary: "Hi3DGen: High-fidelity 3D geometry generation from images via normal bridging."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Chinese University of Hong Kong, Shenzhen",]
showSummary: true
date: 2025-03-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.22236 {{< /keyword >}}
{{< keyword icon="writer" >}} Chongjie Ye et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.22236" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.22236" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.22236/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for generating 3D models from 2D images struggle with fine-grained geometric details because of domain gaps, RGB image ambiguities, and limited 3D training data. These limitations affect the realism, precision, and applicability of generated 3D models, hindering the ability to capture complex real-world geometric characteristics.



To address these challenges, the paper presents a framework that uses normal maps as an intermediate representation to bridge 2D images and 3D geometry. The method includes an image-to-normal estimator (NiRNE) with noise injection and dual-stream training for robust estimation, normal-regularized latent diffusion learning to enhance 3D geometry fidelity, and a 3D data synthesis pipeline (DetailVerse) to provide high-quality training data. **This approach enhances the generation of fine geometric details and outperforms existing methods.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Hi3DGen is introduced, a novel framework that uses normal maps as an intermediate representation to generate high-fidelity 3D geometry from images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new image-to-normal estimator (NiRNE) is proposed, decoupling low-high frequency learning with noise-injected dual-stream training for robust and stable normal estimation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A high-quality 3D data synthesis pipeline and dataset (DetailVerse) are introduced to support the training of the framework. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel framework that significantly enhances the fidelity of 3D geometry generation from 2D images by using normal maps, addressing limitations in current methods. It offers new research directions and benchmarks for high-fidelity 3D modeling.

------
#### Visual Insights



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/method_overview.png)

> 🔼 This figure provides a high-level overview of the Hi3DGen framework, which is a novel method for generating high-fidelity 3D geometry from images using normal maps as an intermediate representation. The framework consists of three main components:  1) An image-to-normal estimator (NiRNE) which takes an image as input and produces a normal map. This process is important for reducing the ambiguity in the RGB image. 2) A normal-to-geometry generator (NoRLD) that takes the normal map as input and produces a 3D mesh.  3) A data synthesis pipeline that creates the DetailVerse dataset, which contains high-quality synthetic 3D assets to support the training of the framework. The figure visually depicts the flow of information from input image to final 3D model output, highlighting the role of the normal map as a bridge between the image and 3D geometry.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the proposed normal-bridged 3D geometry generation method. Our Hi3DGen comprises three components: an image-to-normal estimator, a normal-to-geometry generator, and a synthesized dataset (DetailVerse) construction pipeline.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.6">
<tr class="ltx_tr" id="S3.T1.6.1" style="background-color:#F7F7F7;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.1.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.1.1.1" style="background-color:#F7F7F7;">
<span class="ltx_p" id="S3.T1.6.1.1.1.1" style="width:54.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.1.1" style="font-size:80%;">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.1.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.1.2.1" style="background-color:#F7F7F7;">
<span class="ltx_p" id="S3.T1.6.1.2.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.2.1.1.1" style="font-size:80%;">Obj #</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.1.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.1.3.1" style="background-color:#F7F7F7;">
<span class="ltx_p" id="S3.T1.6.1.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.3.1.1.1" style="font-size:80%;">Sharp Edge #</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.1.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.1.4.1" style="background-color:#F7F7F7;">
<span class="ltx_p" id="S3.T1.6.1.4.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.4.1.1.1" style="font-size:80%;">Source</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.2.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.2.1.1">
<span class="ltx_p" id="S3.T1.6.2.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.2.1.1.1.1" style="font-size:80%;">GSO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.2.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T1.6.2.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.2.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.2.2.1">
<span class="ltx_p" id="S3.T1.6.2.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.2.2.1.1.1" style="font-size:80%;">1K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.2.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.2.3.1">
<span class="ltx_p" id="S3.T1.6.2.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.2.3.1.1.1" style="font-size:80%;">3,071 / 1,529</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.6.2.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.2.4.1">
<span class="ltx_p" id="S3.T1.6.2.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.2.4.1.1.1" style="font-size:80%;">Scanning</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.3.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.3.1.1">
<span class="ltx_p" id="S3.T1.6.3.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.3.1.1.1.1" style="font-size:80%;">Meta </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.3.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a><span class="ltx_text" id="S3.T1.6.3.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.3.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.3.2.1">
<span class="ltx_p" id="S3.T1.6.3.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.3.2.1.1.1" style="font-size:80%;">8K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.3.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.3.3.1">
<span class="ltx_p" id="S3.T1.6.3.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.3.3.1.1.1" style="font-size:80%;">10,603 / 6,415</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.3.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.3.4.1">
<span class="ltx_p" id="S3.T1.6.3.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.3.4.1.1.1" style="font-size:80%;">Scanning</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.4.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.4.1.1">
<span class="ltx_p" id="S3.T1.6.4.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.4.1.1.1.1" style="font-size:80%;">ABO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.4.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S3.T1.6.4.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.4.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.4.2.1">
<span class="ltx_p" id="S3.T1.6.4.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.4.2.1.1.1" style="font-size:80%;">8K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.4.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.4.3.1">
<span class="ltx_p" id="S3.T1.6.4.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.4.3.1.1.1" style="font-size:80%;">2,989 / 1,035</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.4.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.4.4.1">
<span class="ltx_p" id="S3.T1.6.4.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.4.4.1.1.1" style="font-size:80%;">Artists</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.5.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.5.1.1">
<span class="ltx_p" id="S3.T1.6.5.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.5.1.1.1.1" style="font-size:80%;">3DFuture </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.5.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T1.6.5.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.5.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.5.2.1">
<span class="ltx_p" id="S3.T1.6.5.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.5.2.1.1.1" style="font-size:80%;">16K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.5.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.5.3.1">
<span class="ltx_p" id="S3.T1.6.5.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.5.3.1.1.1" style="font-size:80%;">1,776 / 865</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.5.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.5.4.1">
<span class="ltx_p" id="S3.T1.6.5.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.5.4.1.1.1" style="font-size:80%;">Artists</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.6.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.1.1">
<span class="ltx_p" id="S3.T1.6.6.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.6.1.1.1.1" style="font-size:80%;">HSSD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.6.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S3.T1.6.6.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.6.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.2.1">
<span class="ltx_p" id="S3.T1.6.6.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.6.2.1.1.1" style="font-size:80%;">6K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.6.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.3.1">
<span class="ltx_p" id="S3.T1.6.6.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.6.3.1.1.1" style="font-size:80%;">5,752 / 2,111</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.6.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.6.4.1">
<span class="ltx_p" id="S3.T1.6.6.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.6.4.1.1.1" style="font-size:80%;">Artists</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.7.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.7.1.1">
<span class="ltx_p" id="S3.T1.6.7.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.7.1.1.1.1" style="font-size:80%;">ObjV-1.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.7.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S3.T1.6.7.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.7.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.7.2.1">
<span class="ltx_p" id="S3.T1.6.7.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.7.2.1.1.1" style="font-size:80%;">800K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.7.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.7.3.1">
<span class="ltx_p" id="S3.T1.6.7.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.7.3.1.1.1" style="font-size:80%;">1,520 / 452</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.7.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.7.4.1">
<span class="ltx_p" id="S3.T1.6.7.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.7.4.1.1.1" style="font-size:80%;">Mixed</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.8.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.8.1.1">
<span class="ltx_p" id="S3.T1.6.8.1.1.1" style="width:54.1pt;"><span class="ltx_text" id="S3.T1.6.8.1.1.1.1" style="font-size:80%;">ObjV-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.8.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S3.T1.6.8.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.8.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.8.2.1">
<span class="ltx_p" id="S3.T1.6.8.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.8.2.1.1.1" style="font-size:80%;">10.2M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.8.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.8.3.1">
<span class="ltx_p" id="S3.T1.6.8.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.8.3.1.1.1" style="font-size:80%;">1,119 / 355</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.6.8.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.8.4.1">
<span class="ltx_p" id="S3.T1.6.8.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.8.4.1.1.1" style="font-size:80%;">Mixed</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.9" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T1.6.9.1" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.9.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.6.9.1.1.1" style="width:54.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.9.1.1.1.1" style="font-size:80%;">DetailVerse</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T1.6.9.2" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.9.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.6.9.2.1.1" style="width:34.1pt;"><span class="ltx_text" id="S3.T1.6.9.2.1.1.1" style="font-size:80%;">700K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T1.6.9.3" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.9.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.6.9.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.9.3.1.1.1" style="font-size:80%;">45,773 / 14,521</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T1.6.9.4" style="padding:1.2pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.6.9.4.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.6.9.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.T1.6.9.4.1.1.1" style="font-size:80%;">Synthesis</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the statistics of various 3D object datasets, including the number of objects, the average and median counts of sharp edges, and the source of the data.  The average and median number of sharp edges are provided to indicate the level of geometric detail present in the dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of 3D object dataset statistics. The numbers X/Y in the third column means the Mean/Medium number.
> </details>





### In-depth insights


#### Normal as Bridge
The concept of 'Normal as Bridge' suggests leveraging **surface normal information** to connect 2D images and 3D geometry. This bridging approach likely aims to overcome limitations in direct 2D-to-3D mapping, where inherent ambiguities hinder accurate detail reconstruction. Normals, representing surface orientation, offer a more explicit geometric cue than raw RGB values. This helps in **reducing the domain gap** between synthetic training data and real-world images. Ultimately, the normals serve as an **intermediate representation** that guides the geometry learning process. Also, **normal regularization** is essential for consistent 3D structure generations.

#### Noise-Injected Est
The paper addresses the challenge of generating high-fidelity 3D geometry from 2D images by introducing a novel noise-injected regression-based approach for normal estimation. Traditional regression methods struggle with generating fine-grained details, while diffusion-based methods suffer from instability. This work innovatively integrates noise injection, a key mechanism in diffusion learning, into a regressive framework. By doing so, they aim to enhance the framework's sensitivity to **high-frequency patterns** typically associated with sharp geometric details like edges and cavities. The rationale is that noise injection provides stronger supervision at **high-frequency regions**, encouraging the model to focus on capturing and predicting sharp details. This technique effectively bridges the gap between robust, stable predictions of regression-based methods and the sharp detail generation of diffusion-based ones. The overall effect is a novel method for stable and fine-grained normal estimation.

#### DetailVerse Data
DetailVerse Data, as a synthesized 3D dataset, addresses the crucial need for high-quality training data, which is often a bottleneck in 3D generation tasks. Given the prohibitive costs of manual creation, DetailVerse offers a scalable solution through a text-to-image-to-3D pipeline. A notable strength lies in its **meticulous prompt engineering and data cleaning** to ensure diversity and fidelity, aiming to overcome the limitations of existing datasets with simplistic geometries. The use of advanced generators further contributes to creating complex structures with rich details, crucial for high-fidelity 3D generation. By providing a diverse, high-quality dataset, DetailVerse will likely **spur advancements in 3D generation**, enabling models to learn finer geometric features and **reducing the reliance on human-created data**.

#### Latent Diffusion+
The idea of latent diffusion is a powerful concept in generative modeling, especially for tasks like 3D geometry generation. It hinges on the principle of performing the diffusion and denoising processes within a lower-dimensional latent space, rather than directly manipulating the high-dimensional data space (e.g., voxel grids or meshes). This has several benefits. **Computationally**, it drastically reduces memory requirements and processing time, making training and inference more tractable. **From a learning perspective**, the latent space can be designed to capture the essential features and structure of the data, allowing the model to focus on learning the underlying distribution without being overwhelmed by irrelevant details or noise. This often leads to better generalization and sample quality. Further, it will enables the use of **latent space regularizations**. Such regularizations are highly useful to guide the diffusion learning in the low dimensional latent space. 

#### Limited Details
Research papers often face limitations in providing exhaustive details due to space constraints or focus. This can impact reproducibility, hindering other researchers from independently verifying the findings or building upon the work. **Insufficient detail** regarding data preprocessing steps, specific hyperparameter settings, or architectural nuances of neural networks makes it difficult to understand the exact methodology employed. Moreover, **limited ablation studies** might obscure the contribution of individual components of the proposed framework. A **lack of discussion** on failure cases and potential biases can lead to an incomplete understanding of the model's capabilities and limitations. Addressing these points by including supplementary materials with extended explanations and code releases would improve the transparency and impact of the research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.22236/extracted/6317474/images/method_i2n_new.png)

> 🔼 This figure illustrates the proposed Noise-injected Regressive Normal Estimation method. The left part shows the architecture, which injects noise into the regressive network to enhance its sensitivity to high-frequency patterns and improve normal map sharpness.  The right part highlights the noisy labels at high-frequency regions (such as edges and corners) commonly found in real-world image data. This noise injection helps the network learn to accurately estimate normals in these challenging areas, leading to improved sharpness and detail in the generated normal maps.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left part: Illustration of Noise-injected Regressive Normal Estimation; Right part: Noisy label at high-frequency regions in real-domain data.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/method_n2g.png)

> 🔼 This figure illustrates the process of Normal-Regularized Latent Diffusion used in the Hi3DGen framework.  It shows how a Variational Autoencoder (VAE) encodes a 3D input geometry into a latent representation. This latent representation then undergoes a diffusion process, where noise is added and subsequently removed to refine the geometry. Crucially, normal maps (representing surface orientation) are used to regularize the latent diffusion process, ensuring that the generated 3D geometry accurately reflects the surface details and fidelity of the input normal map. The figure highlights the interaction between the VAE, the diffusion process, normal map information, and the final 3D output.
> <details>
> <summary>read the caption</summary>
> Figure 3: An illustration of Normal-Regularized Latent Diffusion.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/detailverse.png)

> 🔼 The figure illustrates the pipeline used to create the DetailVerse dataset.  It starts with a text prompt database and a high-quality image database. These are used to generate initial 3D assets.  A classification step filters these assets, and further steps standardize and validate poses, leading to the final high-quality 3D assets in the DetailVerse dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: The procedure of DetailVerse Construction.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/result_i2n.png)

> 🔼 This figure compares the performance of different normal estimation methods, including regression-based methods (Lotus and GenPercept), diffusion-based methods (GeoWizard and StableNormal), and the proposed method (Hi3DGen). The comparison is based on the angular error and sharp normal error. The results show that Hi3DGen outperforms existing methods in terms of both overall accuracy and sharpness of normal estimation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Normal estimation results comparison.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/ablation_i2n2g.png)

> 🔼 This ablation study investigates the effect of using normal maps as an intermediate representation in 3D geometry generation.  It compares the results of a direct image-to-3D generation method (Trellis) against Hi3DGen, highlighting the improvements in detail and fidelity achieved by incorporating normal bridging.  The figure demonstrates that Hi3DGen, which leverages normal maps, outperforms the direct approach, especially in capturing fine-grained details.  The comparison also shows the impact of using different normal map estimation methods (diffusion-based and regression-based) on the final 3D model quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablations on the importance of normal bridging.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/more_results.png)

> 🔼 This figure showcases several high-fidelity 3D models generated by the Hi3DGen model.  The models demonstrate the ability of the system to accurately reconstruct detailed and complex 3D shapes from 2D images, highlighting the fine-grained geometric features that are often lost in existing techniques.
> <details>
> <summary>read the caption</summary>
> Figure 7: High-fidelity 3D results generated by our Hi3DGen.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/chart.png)

> 🔼 This figure presents the results of a user study comparing the 3D model generation quality of Hi3DGen against five other methods: Hunyuan3D-2.0, Dora, Clay, Tripo-2.5, and Trellis.  Two groups of participants evaluated the generated models: 50 amateur 3D users and 10 professional 3D artists.  The evaluations focused on overall quality for various applications and professional use cases, respectively.  The results show that Hi3DGen significantly outperforms the other methods in terms of user preference for both amateur and professional users.
> <details>
> <summary>read the caption</summary>
> Figure 8: User study results.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/Qualitative_results_3d_gen.png)

> 🔼 Figure 9 presents a qualitative comparison of 3D model generation results from different methods, using example images sourced from Dora's project page [54]. It visually demonstrates the relative strengths and weaknesses of each approach in terms of generating high-fidelity 3D models with fine-grained details that accurately reflect the input 2D images.  The figure showcases how well each method captures fine details, surface smoothness, and overall shape accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative 3D generation comparison on samples from Dora’s project page [54].
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/ablation_n2g.png)

> 🔼 This ablation study visualizes the impact of the proposed normal-regularized latent diffusion (NoRLD) on the 3D geometry generation.  By comparing the results with and without NoRLD, the figure demonstrates the effectiveness of NoRLD in enhancing the generation of fine-grained details in 3D models. The results showcase that NoRLD leads to significantly improved detail preservation and fidelity compared to the model trained without this component.
> <details>
> <summary>read the caption</summary>
> Figure 10: Ablation on the proposed NoRLD.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/ablation_i2n.png)

> 🔼 This ablation study visualizes the effects of different components of the proposed Noise-Injected Regressive Normal Estimation (NiRNE) method on the accuracy of normal map generation.  It compares the performance of the full NiRNE model against versions where key components such as the DetailVerse dataset, the dual-stream architecture, the noise injection technique, and the domain-specific training strategy, are removed. The results are presented as a qualitative comparison of normal maps generated using each model variant alongside the ground truth normal map. This allows for a visual assessment of how each component contributes to the overall accuracy and sharpness of the estimated normal maps.
> <details>
> <summary>read the caption</summary>
> Figure S11: Ablations on image-to-normal estimation.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/unipsk4.jpg)

> 🔼 This figure presents a qualitative comparison of the image-to-normal estimation performance between the proposed NiRNE method and the state-of-the-art (SOTA) photometric stereo method, SDM-UniPS.  It visually demonstrates the accuracy and detail preservation capabilities of each method by showing the estimated normal maps alongside the ground truth normal maps. Different scenarios are included to show the generalizability of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure S12: Qualitative comparison of image-to-normal estimation with SOTA Photometric Stereo-based Method, SDM-UniPS.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/dataset_show.png)

> 🔼 Figure S13 showcases a diverse range of 3D models from the DetailVerse dataset.  These models demonstrate the dataset's ability to generate assets with complex geometries, rich surface details, and a variety of shapes and styles. The high visual fidelity of these models underscores the effectiveness of the dataset in supporting high-fidelity 3D geometry generation.
> <details>
> <summary>read the caption</summary>
> Figure S13: More DetailVerse data exhibition.
> </details>



![](https://arxiv.org/html/2503.22236/extracted/6317474/images/Supp_3d_gen.png)

> 🔼 Figure S14 presents a qualitative comparison of 3D model generation results from various state-of-the-art (SOTA) methods and Hi3DGen.  For several input images, the generated 3D models from Hi3DGen and other techniques (CraftsMan-1.5, Hunyuan3D-2.0, Clay, Tripo-2.5, Trellis, and Dora) are displayed side-by-side, enabling a visual assessment of the fidelity, detail preservation, and overall quality of each method's output. This comparison highlights Hi3DGen's ability to generate richer, more detailed 3D models that more closely match the input images.
> <details>
> <summary>read the caption</summary>
> Figure S14: More 3D generation results comparison.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.2.2.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.3.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T2.2.2.3.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.1.1" style="font-size:80%;">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.1.1.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T2.1.1.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1" style="font-size:80%;">NE</span><span class="ltx_text" id="S4.T2.1.1.1.1.1.2" style="font-size:80%;"> </span><math alttext="\downarrow" class="ltx_centering" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" mathsize="80%" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.2.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.2.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T2.2.2.2.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1.1.1" style="font-size:80%;">SNE</span><span class="ltx_text" id="S4.T2.2.2.2.1.1.2" style="font-size:80%;"> </span><math alttext="\downarrow" class="ltx_centering" display="inline" id="S4.T2.2.2.2.1.1.m1.1"><semantics id="S4.T2.2.2.2.1.1.m1.1a"><mo id="S4.T2.2.2.2.1.1.m1.1.1" mathbackground="#E6E6E6" mathsize="80%" stretchy="false" xref="S4.T2.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.1.m1.1b"><ci id="S4.T2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.3.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.1.1">
<span class="ltx_p" id="S4.T2.2.3.1.1.1" style="width:105.3pt;"><span class="ltx_text" id="S4.T2.2.3.1.1.1.1" style="font-size:80%;">(Diff.) GeoWizard </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.3.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T2.2.3.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.3.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.2.1">
<span class="ltx_p" id="S4.T2.2.3.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.3.2.1.1.1" style="font-size:80%;">31.381</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.3.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.3.1">
<span class="ltx_p" id="S4.T2.2.3.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.3.3.1.1.1" style="font-size:80%;">36.642</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.4.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.1.1">
<span class="ltx_p" id="S4.T2.2.4.1.1.1" style="width:105.3pt;"><span class="ltx_text" id="S4.T2.2.4.1.1.1.1" style="font-size:80%;">(Diff.) StableNormal </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.4.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S4.T2.2.4.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.4.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.2.1">
<span class="ltx_p" id="S4.T2.2.4.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.4.2.1.1.1" style="font-size:80%;">31.265</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.4.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.3.1">
<span class="ltx_p" id="S4.T2.2.4.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.4.3.1.1.1" style="font-size:80%;">37.045</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.5.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.1.1">
<span class="ltx_p" id="S4.T2.2.5.1.1.1" style="width:105.3pt;"><span class="ltx_text" id="S4.T2.2.5.1.1.1.1" style="font-size:80%;">(Regr.) Lotus </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.5.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T2.2.5.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.5.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.2.1">
<span class="ltx_p" id="S4.T2.2.5.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.5.2.1.1.1" style="font-size:80%;">53.051</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.2.5.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.3.1">
<span class="ltx_p" id="S4.T2.2.5.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.5.3.1.1.1" style="font-size:80%;">52.843</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.6.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.1.1">
<span class="ltx_p" id="S4.T2.2.6.1.1.1" style="width:105.3pt;"><span class="ltx_text" id="S4.T2.2.6.1.1.1.1" style="font-size:80%;">(Regr.) GenPercept </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.6.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.22236v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a><span class="ltx_text" id="S4.T2.2.6.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.6.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.2.1">
<span class="ltx_p" id="S4.T2.2.6.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.6.2.1.1.1" style="font-size:80%;">28.050</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.6.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.3.1">
<span class="ltx_p" id="S4.T2.2.6.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.2.6.3.1.1.1" style="font-size:80%;">35.289</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T2.2.7.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.1.1.1" style="width:105.3pt;"><span class="ltx_text" id="S4.T2.2.7.1.1.1.1" style="font-size:80%;">(Regr.) </span><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.1.1.1.2" style="font-size:80%;">NiRNE</span><span class="ltx_text" id="S4.T2.2.7.1.1.1.3" style="font-size:80%;"> (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T2.2.7.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.2.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.2.1.1.1" style="font-size:80%;">21.837</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T2.2.7.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.3.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.3.1.1.1" style="font-size:80%;">26.628</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image normal estimation methods, categorized as diffusion-based and regression-based.  The evaluation metrics used are Normal Error (NE) and Sharp Normal Error (SNE). Lower values indicate better performance.  The table highlights the superior performance of the proposed NiRNE (Noise-Injected Regressive Normal Estimation) method by showing its lower NE and SNE values compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on image normal estimation. We use (Diff.) and (Regr.) to indicate diffusion- and regression-based methods, respectively. Bold indicates best results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.2.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.3.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T3.2.2.3.1.1" style="width:74.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.1.1" style="font-size:80%;">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.1.1.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T3.1.1.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1" style="font-size:80%;">NE</span><span class="ltx_text" id="S4.T3.1.1.1.1.1.2" style="font-size:80%;"> </span><math alttext="\downarrow" class="ltx_centering" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" mathsize="80%" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.2.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S4.T3.2.2.2.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1.1.1" style="font-size:80%;">SNE</span><span class="ltx_text" id="S4.T3.2.2.2.1.1.2" style="font-size:80%;"> </span><math alttext="\downarrow" class="ltx_centering" display="inline" id="S4.T3.2.2.2.1.1.m1.1"><semantics id="S4.T3.2.2.2.1.1.m1.1a"><mo id="S4.T3.2.2.2.1.1.m1.1.1" mathbackground="#E6E6E6" mathsize="80%" stretchy="false" xref="S4.T3.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.1.m1.1b"><ci id="S4.T3.2.2.2.1.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.3.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T3.2.3.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S4.T3.2.3.1.1.1.1" style="font-size:80%;">Ours (full model)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.3.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T3.2.3.2.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.2.1.1.1" style="font-size:80%;">21.837</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.3.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T3.2.3.3.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.3.1.1.1" style="font-size:80%;">26.628</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.4.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.1.1">
<span class="ltx_p" id="S4.T3.2.4.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S4.T3.2.4.1.1.1.1" style="font-size:80%;">Ours w/o DV</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.4.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.2.1">
<span class="ltx_p" id="S4.T3.2.4.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.4.2.1.1.1" style="font-size:80%;">22.209</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.4.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.3.1">
<span class="ltx_p" id="S4.T3.2.4.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.4.3.1.1.1" style="font-size:80%;">28.324</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.5.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.1.1">
<span class="ltx_p" id="S4.T3.2.5.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S4.T3.2.5.1.1.1.1" style="font-size:80%;">Ours w/o DST</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.5.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.2.1">
<span class="ltx_p" id="S4.T3.2.5.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.5.2.1.1.1" style="font-size:80%;">23.288</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.5.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.3.1">
<span class="ltx_p" id="S4.T3.2.5.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.1.1.1" style="font-size:80%;">29.690</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.6.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.1.1">
<span class="ltx_p" id="S4.T3.2.6.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S4.T3.2.6.1.1.1.1" style="font-size:80%;">Ours w/o DS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.6.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.2.1">
<span class="ltx_p" id="S4.T3.2.6.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.6.2.1.1.1" style="font-size:80%;">21.918</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.6.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.3.1">
<span class="ltx_p" id="S4.T3.2.6.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.6.3.1.1.1" style="font-size:80%;">29.520</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.2.7.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.1.1">
<span class="ltx_p" id="S4.T3.2.7.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S4.T3.2.7.1.1.1.1" style="font-size:80%;">Ours w/o all</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.2.7.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.2.1">
<span class="ltx_p" id="S4.T3.2.7.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.7.2.1.1.1" style="font-size:80%;">22.507</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.2.7.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.3.1">
<span class="ltx_p" id="S4.T3.2.7.3.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T3.2.7.3.1.1.1" style="font-size:80%;">35.997</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the Noise-Injected Regressive Normal Estimation (NiRNE) component of the Hi3DGen model.  The study systematically removes individual components of NiRNE to assess their individual contributions to the model's overall performance.  The components evaluated are: the use of DetailVerse data (DV), the Noise Injection technique (NI), the Dual-Stream architecture (DS), and the Domain-Specific Training strategy (DST). The table shows the Normal Error (NE) and Sharp Normal Error (SNE) for each ablation configuration, allowing for a quantitative comparison of the impact of each component on the accuracy and sharpness of normal map estimation. Lower NE and SNE values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on different components of NiRNE. “DV”, “NI”,“DS”, and “DST” denote DetailVerse data, Noise Injection technique, Dual-Stream architecture, and Domain-Specific Training strategy, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.10">
<tr class="ltx_tr" id="S6.T4.10.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.10.1.1" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.2" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.2.1" style="font-size:80%;">Bowl</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.3" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.3.1" style="font-size:80%;">Buddha</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.4" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.4.1" style="font-size:80%;">Bunny</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.5" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.5.1" style="font-size:80%;">Cup</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.6" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.6.1" style="font-size:80%;">Die</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.7" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.7.1" style="font-size:80%;">Hippo</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.8" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.8.1" style="font-size:80%;">House</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.9" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.9.1" style="font-size:80%;">Owl</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.10" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.10.1" style="font-size:80%;">Queen</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.11" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.11.1" style="font-size:80%;">Squirrel</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.10.1.12" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.1.12.1" style="font-size:80%;">Ave.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.10.2.1" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.1.1" style="font-size:80%;">SDM-UniPS (K=2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.2" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.2.1" style="font-size:80%;">37.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.3" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.3.1" style="font-size:80%;">26.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.4" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.2.4.1" style="font-size:80%;">29.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.5" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.5.1" style="font-size:80%;">23.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.6" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.2.6.1" style="font-size:80%;">26.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.7" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.7.1" style="font-size:80%;">31.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.8" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.8.1" style="font-size:80%;">40.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.9" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.2.9.1" style="font-size:80%;">24.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.10" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.10.1" style="font-size:80%;">27.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.11" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.11.1" style="font-size:80%;">26.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.2.12" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.2.12.1" style="font-size:80%;">29.286</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.3">
<td class="ltx_td ltx_align_left" id="S6.T4.10.3.1" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.3.1.1" style="font-size:80%;">SDM-UniPS (K=4)</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.2" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.2.1" style="font-size:80%;color:#FF0000;">31.64</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.3" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.3.1" style="font-size:80%;color:#FF0000;">20.59</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.4" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.4.1" style="font-size:80%;color:#FF0000;">23.23</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.5" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.5.1" style="font-size:80%;">23.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.6" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.6.1" style="font-size:80%;color:#FF0000;">25.58</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.7" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.7.1" style="font-size:80%;color:#FF0000;">21.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.8" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.8.1" style="font-size:80%;">38.61</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.9" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.9.1" style="font-size:80%;color:#FF0000;">22.26</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.10" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.10.1" style="font-size:80%;color:#FF0000;">25.97</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.11" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.11.1" style="font-size:80%;color:#FF0000;">24.04</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.3.12" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.3.12.1" style="font-size:80%;color:#FF0000;">25.722</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.10.4.1" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.1.1" style="font-size:80%;background-color:#F2F2F2;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.2" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.2.1" style="font-size:80%;background-color:#F2F2F2;">34.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.3" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.3.1" style="font-size:80%;background-color:#F2F2F2;">21.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.4" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.4.4.1" style="font-size:80%;background-color:#F2F2F2;">30.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.5" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.5.1" style="font-size:80%;color:#FF0000;background-color:#F2F2F2;">17.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.6" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.4.6.1" style="font-size:80%;background-color:#F2F2F2;">27.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.7" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.7.1" style="font-size:80%;background-color:#F2F2F2;">24.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.8" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.8.1" style="font-size:80%;color:#FF0000;background-color:#F2F2F2;">34.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.9" style="padding:0.8pt 5.0pt;"><span class="ltx_text" id="S6.T4.10.4.9.1" style="font-size:80%;background-color:#F2F2F2;">25.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.10" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.10.1" style="font-size:80%;background-color:#F2F2F2;">26.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.11" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.11.1" style="font-size:80%;background-color:#F2F2F2;">24.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.4.12" style="padding:0.8pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.4.12.1" style="font-size:80%;background-color:#F2F2F2;">26.628</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table S4 presents a quantitative comparison of the proposed NiRNE model's performance on the Luces-MV dataset against state-of-the-art (SOTA) photometric stereo methods. The evaluation metric used is Sharp Normal Error (SNE), which specifically assesses the accuracy of normal estimation in sharp regions of the image, reflecting the level of detail captured. The table includes results for several different objects and displays the SNE values in degrees.  Bold font highlights the second-best performance for each object, and red font indicates the best-performing method for each object. This table demonstrates the superior performance of NiRNE in accurately estimating surface normals, especially in areas with fine geometric details.
> <details>
> <summary>read the caption</summary>
> Table S4: Image-to-Normal estimation evaluation on Luces-MV (SNE). Comparisons of NiNRE with SOTA photometric stereo techniques. Bold indicates the second best results and Red indicates best results.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.22236/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22236/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}