---
title: "M3: 3D-Spatial MultiModal Memory"
summary: "M3: Gaussian-integrated memory system for multimodal 3D scene understanding with foundation models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 UC San Diego",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16413 {{< /keyword >}}
{{< keyword icon="writer" >}} Xueyan Zou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16413" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16413" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16413/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing feature splatting methods often face computational constraints when storing high-dimensional features for each Gaussian primitive. They also suffer from misalignment between distilled and original features, leading to information loss. The paper introduces a system to retain information about medium-sized static scenes through video sources for visual perception.



The proposed system, **MultiModal Memory (M3)**, addresses these challenges by integrating 3D Gaussian Splatting with foundation models. It stores high-dimensional 2D feature maps in a memory bank and uses low-dimensional queries from 3D Gaussians as indices. M3 uses Gaussian memory attention between principal scene components and queries to render foundation model embeddings in a 3D scene, enabling efficient training and inference.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a novel 3D Spatial MultiModal Memory (M3) system. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} M3 uses principal scene components and Gaussian memory attention for efficient training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} M3 is applicable to real-world tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel memory system that can handle complex multimodal information for 3D scene understanding, addressing key limitations in feature distillation. It advances research in areas like **robotic perception, spatial AI, and multimodal learning** by enabling robots to interact in the real world.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/teaser.png)

> 🔼 This figure illustrates the architecture of the proposed MultiModal Memory (M3) system.  M3 combines 3D Gaussian splatting with various foundation models (like CLIP, LLaMA, DINO, etc.) to create a memory system that efficiently stores and retrieves multimodal information about a scene. The Gaussian splatting technique provides an effective way to represent the spatial structure of the scene, while the foundation models contribute rich semantic understanding.  The figure shows how these components work together to generate high-fidelity feature maps that maintain the expressiveness of the foundation models, enabling tasks such as rendering, retrieval, and captioning.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our proposed MultiModal Memory integrates Gaussian splatting with foundation models to efficiently store multimodal memory in a Gaussian structure. The feature maps rendered by our approach exhibit high fidelity, preserving the strong expressive capabilities of the foundation models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.12.12.13.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.12.12.13.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.12.12.13.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.12.12.13.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.3.1"># Param</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.4.2">DINOv2</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.5.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.5.2">CLIP</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.6.2">SigLIP</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.7.2">SEEM</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.8.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.8.2">LLaMA3</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T1.12.12.13.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.12.12.13.1.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.9.2">LLaMAv</span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T1.12.12.12.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.13.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T1.12.12.12.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.14.1">Method</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T1.12.12.12.15" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.7.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.8.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.9.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.10.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.m1.1a"><mo id="S4.T1.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.m1.1b"><ci id="S4.T1.10.10.10.10.m1.1.1.cmml" xref="S4.T1.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.11.11.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.m1.1"><semantics id="S4.T1.11.11.11.11.m1.1a"><mo id="S4.T1.11.11.11.11.m1.1.1" stretchy="false" xref="S4.T1.11.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.m1.1b"><ci id="S4.T1.11.11.11.11.m1.1.1.cmml" xref="S4.T1.11.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.12.12.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.m1.1"><semantics id="S4.T1.12.12.12.12.m1.1a"><mo id="S4.T1.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.m1.1b"><ci id="S4.T1.12.12.12.12.m1.1.1.cmml" xref="S4.T1.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.12.12.14.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Train</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.12.12.14.1.2.1" style="color:#0067C0;">F-Splat</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib26" title="">26</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.6833</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.9835</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.5998</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.4779</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.6346</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.7851</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.4269</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">11.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.5300</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.2900</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.7026</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.1.15" style="padding-left:4.0pt;padding-right:4.0pt;">56.23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.15.2">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.15.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.15.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.12.12.15.2.2.1" style="color:#0067C0;">F-3DGS</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.3790</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.0108</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.3330</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.1540</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.3692</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.3328</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.1063</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.1034</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.4993</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.0150</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.6288</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.2.15" style="padding-left:4.0pt;padding-right:4.0pt;">46.48</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.16.3">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.16.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.16.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.16.3.2.1" style="color:#DC322F;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">35M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.5321</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.681</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.3140</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.2800</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2811</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5096</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.1389</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.2251</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.4401</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.0253</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.7069</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.3.15" style="padding-left:4.0pt;padding-right:4.0pt;">53.43</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.17.4" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.17.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.1.1" style="background-color:#EFEFEF;">Garden</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.17.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.2.1" style="color:#0067C0;background-color:#EFEFEF;">F-Splat<span class="ltx_text" id="S4.T1.12.12.17.4.2.1.1" style="color:#000000;background-color:#EFEFEF;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib26" title="">26</a>]</cite></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.3.1" style="background-color:#EFEFEF;">61M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.4.1" style="background-color:#EFEFEF;">0.7328</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.5.1" style="background-color:#EFEFEF;">1.9567</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.6.1" style="background-color:#EFEFEF;">0.7005</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.7.1" style="background-color:#EFEFEF;">1.3570</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.8.1" style="background-color:#EFEFEF;">0.7247</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.9.1" style="background-color:#EFEFEF;">0.8698</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.10.1" style="background-color:#EFEFEF;">0.4224</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.11.1" style="background-color:#EFEFEF;">9.4675</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.12.1" style="background-color:#EFEFEF;">0.4944</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.4.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.13.1" style="background-color:#EFEFEF;">0.3314</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.14.1" style="background-color:#EFEFEF;">0.7443</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.4.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.17.4.15.1" style="background-color:#EFEFEF;">60.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.18.5">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.18.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.18.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.2.1" style="color:#0067C0;background-color:#EFEFEF;">F-3DGS<span class="ltx_text" id="S4.T1.12.12.18.5.2.1.1" style="color:#000000;background-color:#EFEFEF;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.3.1" style="background-color:#EFEFEF;">61M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.4.1" style="background-color:#EFEFEF;">0.2295</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.5.1" style="background-color:#EFEFEF;">0.6033</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.6.1" style="background-color:#EFEFEF;">0.2105</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.7.1" style="background-color:#EFEFEF;">0.0945</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.8.1" style="background-color:#EFEFEF;">0.2697</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.9.1" style="background-color:#EFEFEF;">0.2585</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.10.1" style="background-color:#EFEFEF;">0.1071</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.11.1" style="background-color:#EFEFEF;">0.1424</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.12.1" style="background-color:#EFEFEF;">0.4139</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.13.1" style="background-color:#EFEFEF;">0.0141</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.14.1" style="background-color:#EFEFEF;">0.4913</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.5.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.18.5.15.1" style="background-color:#EFEFEF;">43.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.19.6">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.19.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.19.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.19.6.2.1" style="color:#DC322F;background-color:#EFEFEF;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.3.1" style="background-color:#EFEFEF;">35M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.4.1" style="background-color:#EFEFEF;">0.5701</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.5.1" style="background-color:#EFEFEF;">1.7279</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.6.1" style="background-color:#EFEFEF;">0.3168</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.7.1" style="background-color:#EFEFEF;">0.2876</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.8.1" style="background-color:#EFEFEF;">0.2927</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.9.1" style="background-color:#EFEFEF;">0.0004</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.10.1" style="background-color:#EFEFEF;">0.1839</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.11.1" style="background-color:#EFEFEF;">0.3469</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.12.1" style="background-color:#EFEFEF;">0.3387</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.6.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.13.1" style="background-color:#EFEFEF;">0.0217</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.14.1" style="background-color:#EFEFEF;">0.7235</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.6.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.19.6.15.1" style="background-color:#EFEFEF;">58.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.20.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.20.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Drjohnson</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.20.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.12.12.20.7.2.1" style="color:#0067C0;">F-Splat</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib26" title="">26</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.8107</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.0333</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.6689</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.7877</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.6826</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.7744</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.4650</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">10.411</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.3757</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.0145</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.8184</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.7.15" style="padding-left:4.0pt;padding-right:4.0pt;">54.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.21.8">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.21.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.21.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.12.12.21.8.2.1" style="color:#0067C0;">F-3DGS</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.21.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.4190</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.21.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.1279</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.3344</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.1537</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.3846</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.21.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.3552</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.1693</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.2169</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.3853</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.21.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.0150</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.6669</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.21.8.15" style="padding-left:4.0pt;padding-right:4.0pt;">47.35</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.22.9">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.22.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.22.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.22.9.2.1" style="color:#DC322F;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.22.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">35M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.5878</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.22.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.7553</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.3435</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.2924</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2975</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.22.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5366</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.2456</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.4179</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.3175</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.22.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.0226</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.7224</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.22.9.15" style="padding-left:4.0pt;padding-right:4.0pt;">52.68</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.23.10" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.23.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.1.1" style="background-color:#EFEFEF;">Playroom</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.23.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.2.1" style="color:#0067C0;background-color:#EFEFEF;">F-Splat<span class="ltx_text" id="S4.T1.12.12.23.10.2.1.1" style="color:#000000;background-color:#EFEFEF;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib26" title="">26</a>]</cite></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.3.1" style="background-color:#EFEFEF;">61M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.4.1" style="background-color:#EFEFEF;">0.7956</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.5.1" style="background-color:#EFEFEF;">1.9640</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.6.1" style="background-color:#EFEFEF;">0.6458</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.7.1" style="background-color:#EFEFEF;">0.7808</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.8.1" style="background-color:#EFEFEF;">0.6839</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.9.1" style="background-color:#EFEFEF;">0.7678</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.10.1" style="background-color:#EFEFEF;">0.4745</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.11.1" style="background-color:#EFEFEF;">10.873</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.12.1" style="background-color:#EFEFEF;">0.3915</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.10.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.13.1" style="background-color:#EFEFEF;">0.0136</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.14.1" style="background-color:#EFEFEF;">0.8185</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.10.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.23.10.15.1" style="background-color:#EFEFEF;">59.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.24.11">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.24.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.12.24.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.2.1" style="color:#0067C0;background-color:#EFEFEF;">F-3DGS<span class="ltx_text" id="S4.T1.12.12.24.11.2.1.1" style="color:#000000;background-color:#EFEFEF;"> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.3.1" style="background-color:#EFEFEF;">61M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.4.1" style="background-color:#EFEFEF;">0.4867</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.5.1" style="background-color:#EFEFEF;">1.2193</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.6.1" style="background-color:#EFEFEF;">0.3813</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.7.1" style="background-color:#EFEFEF;">0.1726</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.8.1" style="background-color:#EFEFEF;">0.4571</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.9.1" style="background-color:#EFEFEF;">0.4094</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.10.1" style="background-color:#EFEFEF;">0.1714</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.11.1" style="background-color:#EFEFEF;">0.2103</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.12.1" style="background-color:#EFEFEF;">0.3987</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.11.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.13.1" style="background-color:#EFEFEF;">0.0139</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.14.1" style="background-color:#EFEFEF;">0.6922</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.11.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.24.11.15.1" style="background-color:#EFEFEF;">52.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.25.12">
<td class="ltx_td ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.25.12.2.1" style="color:#DC322F;background-color:#EFEFEF;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.3.1" style="background-color:#EFEFEF;">35M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.4.1" style="background-color:#EFEFEF;">0.6074</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.5.1" style="background-color:#EFEFEF;">1.7545</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.6.1" style="background-color:#EFEFEF;">0.3260</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.7.1" style="background-color:#EFEFEF;">0.2987</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.8.1" style="background-color:#EFEFEF;">0.2951</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.9.1" style="background-color:#EFEFEF;">0.5623</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.10.1" style="background-color:#EFEFEF;">0.2560</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.11.1" style="background-color:#EFEFEF;">0.4584</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.12.1" style="background-color:#EFEFEF;">0.3555</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.12.12.25.12.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.13.1" style="background-color:#EFEFEF;">0.0241</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.14.1" style="background-color:#EFEFEF;">0.7288</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.12.12.25.12.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.12.12.25.12.15.1" style="background-color:#EFEFEF;">57.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of feature distances achieved by M3 against two other distillation methods (F-Splat and F-3DGS).  The comparison is done across multiple datasets (Train, Garden, Drjohnson, Playroom) and foundation models (DINOV2, CLIP, SigLIP, SEEM, LLaMA3, LLaMAv).  The metrics used are cosine similarity and L2 distance, reflecting the similarity and difference between the features generated by each method. Lower values in both cosine similarity and L2 distance are better, indicating that the generated features are closer to the ground truth. The table highlights M3's efficiency by achieving comparable or superior results with a significantly smaller parameter budget.
> <details>
> <summary>read the caption</summary>
> Table 1: Feature Distance in comparison with distillation methods that use similar or higher budgets across datasets and foundation models.
> </details>





### In-depth insights


#### 3DGS Multimodal
The intersection of 3D Gaussian Splatting (3DGS) and multimodal learning presents exciting possibilities for scene representation and understanding. **3DGS excels at photorealistic rendering and efficient storage of 3D scenes**, but lacks inherent semantic understanding. Multimodal learning, on the other hand, leverages diverse data sources (e.g., text, audio, depth) to enrich scene representations with semantic information. **Combining these techniques can lead to systems that not only render scenes beautifully but also understand their content, relationships, and context.** Challenges include aligning features from different modalities to the Gaussian primitives, developing effective fusion strategies, and managing the increased computational complexity. Success in this area promises enhanced applications in robotics, augmented reality, and scene editing, allowing machines to interact with and manipulate virtual environments more intelligently.

#### Memory Attention
The 'Memory Attention' mechanism seems crucial for **efficiently retrieving and utilizing stored knowledge**. It likely involves weighting different memory components based on their relevance to a given query or context. A successful implementation would require addressing challenges like **scalability (handling large memory sizes)**, **content addressing (retrieving relevant information quickly)**, and **robustness (dealing with noisy or incomplete queries)**. The attention mechanism could be implemented using various techniques, like dot-product attention, or learned attention weights. The **design should also consider how to update the memory** and prevent catastrophic forgetting. Analyzing the integration of this component alongside other modalities such as gaussian splatting could uncover insights in multi-modal integration which can have far reaching consequences in AI.

#### Feature Fidelity
**Feature Fidelity** appears to be a central concern in the study, particularly when integrating foundation models with Gaussian Splatting. The paper emphasizes the importance of preserving the expressive capabilities of foundation models during the distillation process. A key challenge is avoiding information bottlenecks when reducing feature vector dimensions, ensuring the distilled features accurately capture the knowledge embedded in the original model. The research addresses potential misalignment between distilled and original features, highlighting the need for methods like Gaussian memory attention to maintain fidelity. Evaluations focus on feature similarity and downstream task performance, demonstrating the system's ability to retain critical information while optimizing efficiency. Preserving feature fidelity enables rich semantic understanding and supports various tasks.

#### Robotic M3 Apps
While the paper doesn't explicitly detail "Robotic M3 Apps," we can infer its potential significance. It suggests leveraging the **M3 (Multimodal Memory)** system in robotic applications. This implies robots equipped with M3 could benefit from **enhanced environmental understanding**, **improved navigation**, and **superior object manipulation capabilities**. By integrating visual, language, and spatial information, robots could perform complex tasks, such as fetching specific items or navigating cluttered environments, with greater precision and efficiency. The M3's ability to compress and retain scene knowledge would enable **long-term autonomy** and **adaptive behavior** in dynamic real-world settings, marking a substantial leap in robotic intelligence.

#### LLM Integration
Integrating Large Language Models (LLMs) into 3D spatial memory systems offers a transformative approach to scene understanding and interaction. By endowing the system with LLMs' reasoning and knowledge capabilities, we move beyond mere spatial reconstruction to achieve semantically rich scene representations. **LLMs can provide contextual awareness, enabling the system to interpret objects and their relationships within the environment**. This enhances the ability to perform complex tasks like scene captioning, object retrieval, and grounding. Furthermore, LLMs can facilitate interactive queries, allowing users to engage with the scene in a more intuitive way. **The challenge lies in efficiently encoding and retrieving visual information in a format compatible with LLMs**. Addressing this challenge could unlock new possibilities for robotics, augmented reality, and other applications that require a deep understanding of the environment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16413/extracted/6288040/images/method1.png)

> 🔼 The figure illustrates the architecture of M3, a 3D Spatial Multimodal Memory system.  It shows how the system combines multiple foundation models (e.g., CLIP, LLaMA, DINO) to extract multi-granular semantic knowledge from a scene represented as a video (V).  This knowledge, along with the scene's spatial structure captured using 3D Gaussian splatting, is integrated into a unified multimodal memory representation. This memory allows for various downstream tasks, including image retrieval, caption generation, and object grounding.  The figure visually depicts the process, showing how foundation models process the scene's input video to generate features and how Gaussian splatting structures this information for efficient storage and retrieval.
> <details>
> <summary>read the caption</summary>
> Figure 2: A scene (𝐕𝐕\mathbf{V}bold_V) is composed of both structure (𝐒𝐒\mathbf{S}bold_S) and knowledge (𝐈𝐈\mathbf{I}bold_I). To model these, we leverage multiple foundation models to extract multi-granularity scene knowledge, and employ 3D Gaussian splatting to represent the spatial structure. By combining these techniques, we construct a spatial multimodal memory (M3), which enables downstream applications such as retrieval, captioning and grounding.
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/method2.png)

> 🔼 Figure 3 illustrates the MultiModal Memory (M3) pipeline.  A video sequence is input, and foundation models extract raw features.  These high-dimensional features are then reduced using Algorithm 1 to create principal scene components (PSCs), which are stored in a memory bank.  Optimizable attribute queries are applied to Gaussian primitives, and a Gaussian Memory Attention mechanism generates final rendered features. These rendered features retain the semantic information from the foundation models and are used for downstream tasks via connections to various model heads.
> <details>
> <summary>read the caption</summary>
> Figure 3: Given a video sequence, we utilize foundation models (𝐅𝐅\mathbf{F}bold_F) to extract raw features (𝐑𝐑\mathbf{R}bold_R). These features are reduced using Algorithm 1, producing principal scene components (𝐏𝐒𝐂𝐏𝐒𝐂\mathbf{PSC}bold_PSC), which are stored in a memory bank. We introduce optimizable attribute queries (q𝑞qitalic_q) to Gaussian primitives, and apply a Gaussian Memory Attention (𝐀g⁢msubscript𝐀𝑔𝑚\mathbf{A}_{gm}bold_A start_POSTSUBSCRIPT italic_g italic_m end_POSTSUBSCRIPT) mechanism to produce the final rendered features (𝐑^^𝐑\hat{\mathbf{R}}over^ start_ARG bold_R end_ARG), which can be linked back to various heads of the foundation models.
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/manifold.png)

> 🔼 This UMAP visualization shows the embedding manifolds for different foundation models used in the paper.  Each model's embeddings form a distinct cluster shape, illustrating how each model focuses on different aspects of scene understanding. The different shapes highlight the unique features and perspectives extracted by the diverse foundation models, which range from vision-language models to perception models.  This visualization emphasizes the multi-modality and multi-granularity of features extracted for the proposed multimodal memory.
> <details>
> <summary>read the caption</summary>
> Figure 4: The UMAP visualization of model embedding manifolds reveals distinct shapes, reflecting different focus.
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/data_engine.png)

> 🔼 This figure illustrates the process of extracting patch-level visual embeddings from various foundation models for downstream tasks.  It shows how different models (DINOv2, CLIP, SigLIP, LLaMA3, LLaMAv) process input images, focusing on their respective strengths in vision and language understanding. The extracted features from different layers of these models are used to build a comprehensive understanding of the scene at a granular level. The output shows how the combined features can be effectively used in applications such as visual question answering, captioning, and retrieval.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of patch-level visual embedding extraction their applications.
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/qr3.png)

> 🔼 Figure 6 presents a qualitative comparison of the M3 model's performance across four diverse datasets: Garden, Playroom, Drjohnson, and Tabletop.  The images showcase the model's consistent ability to accurately capture and render fine-grained details, intricate textures, and complex scene structures, regardless of the dataset's specific characteristics. The results demonstrate M3's robustness and generalizability in handling various visual environments.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results across datasets using M3. The figure showcases the consistent performance of the M3 across various datasets (Garden, Playroom, Drjohnson, Table-top).
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/demo.jpg)

> 🔼 The figure shows a quadruped robot grasping a rubber duck. The robot uses the M3 model to locate and identify the object based on a text query ('yellow bath duck'). The image sequence demonstrates the robot's ability to identify the object, determine its position using a depth camera, and execute a grasping action. This showcases the real-world applicability of the M3 model for tasks involving object manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Real robot deployment.
> </details>



![](https://arxiv.org/html/2503.16413/extracted/6288040/images/real_robot.png)

> 🔼 This figure showcases the capabilities of the M3 model in real-world robot manipulation tasks. Three scenarios are depicted: part-level understanding (picking up a specific object by its handle), multi-scene understanding (grounding and grasping objects across different environments), and long-horizon tasks (completing a multi-step task such as retrieving an object from a different location and placing it elsewhere). Each scenario is demonstrated with a sequence of images illustrating the robot's actions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Real robot deployment on part-level understanding, multi-scene and long-horizon tasks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="4" id="S4.T2.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.1.1.1.1.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.2">CLIP</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="6" id="S4.T2.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.1.1.1.1.5.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.2">SigLIP</span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T2.1.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T2.1.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.1.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.3.1">#Param</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">mIoU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">cIoU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">AP50</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.1.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">AP60</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">I2T@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">I2T@5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">I2T10</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">T2I@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">T2I@5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">T2I10</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Train</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1.2.1">Ground Truth</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">26.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">81.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">97.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">89.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">92.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.2">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.4.2.2.1" style="color:#0067C0;">F-3DGS</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">7.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">2.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">13.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">28.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">2.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">18.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.3">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.2.1" style="color:#DC322F;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.3.1">35M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.4.1">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.5.1">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.6.1">19.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.5.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.7.1">12.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.8.1">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.9.1">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.10.1">92.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.11.1">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.12.1">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.13.1">92.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.6.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Playroom</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.6.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.4.2.1">Ground Truth</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.6.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">24.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">9.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.6.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">96.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">96.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.5">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.7.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.7.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.7.5.2.1" style="color:#0067C0;">F-3DGS</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.7.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">23.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">21.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.7.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">96.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">96.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5.13" style="padding-left:4.0pt;padding-right:4.0pt;">89.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.6">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.8.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.8.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.2.1" style="color:#DC322F;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.8.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.3.1">35M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">23.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.5.1">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.6.1">11.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.8.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.7.1">5.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">72.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.9.1">96.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.10.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.11.1">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">68.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.9.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Geisel</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.9.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.7.2.1">Ground Truth</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.9.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">21.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">5.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.9.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">91.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.8">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.10.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.10.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.10.8.2.1" style="color:#0067C0;">F-3DGS</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16413v1#bib.bib51" title="">51</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.10.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">61M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">19.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">20.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">14.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.10.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">1.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">45.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">94.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">100.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">34.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.9">
<td class="ltx_td ltx_border_b ltx_border_r" id="S4.T2.1.1.11.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T2.1.1.11.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.2.1" style="color:#DC322F;">M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.1.1.11.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.3.1">35M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.4.1">21.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.5.1">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.6.1">16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.1.1.11.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.7.1">11.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.9.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.10.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.11.1">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.12.1">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.9.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.9.13.1">94.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive quantitative evaluation of the M3 model's performance across various foundation models and scenes.  It shows feature and RGB metrics (mIoU, cIoU, AP50, AP60, I2T@1, I2T@5, I2T@10, T2I@1, T2I@5, T2I@10)  for different scenes (Train, Playroom, Geisel) and the ground truth. This allows for a comparison of M3's performance against the ground truth and other methods.  The metrics assess both the similarity between features extracted by M3 and the ground truth, as well as the model's performance on downstream tasks, providing insights into the effectiveness of M3 in representing and recalling scene information.
> <details>
> <summary>read the caption</summary>
> Table 2: Feature/RGB metrics for all foundation models and scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.19.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.19.19.20.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.19.19.20.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.19.19.20.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.19.19.20.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.3.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.3.2">RGB</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.19.19.20.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.4.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.4.2">Time</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.5.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.5.2">CLIP</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.6.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.6.2">SigLIP</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.7.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.7.2">DINOv2</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.8.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.8.2">SEEM</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.9.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.9.2">LLaMA3</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.19.19.20.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.19.19.20.1.10.1">\ul</span><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.20.1.10.2">LLaMAv</span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T3.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T3.13.13.13.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.13.13.14.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T3.13.13.13.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.13.13.15.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.13.13.13.16" style="padding-left:4.0pt;padding-right:4.0pt;">min.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.7.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.8.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.8.m1.1a"><mo id="S4.T3.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T3.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.m1.1b"><ci id="S4.T3.8.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.9.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.9.m1.1a"><mo id="S4.T3.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T3.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.m1.1b"><ci id="S4.T3.9.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.10.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.10.10.10.10.m1.1"><semantics id="S4.T3.10.10.10.10.m1.1a"><mo id="S4.T3.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T3.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.10.m1.1b"><ci id="S4.T3.10.10.10.10.m1.1.1.cmml" xref="S4.T3.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.11.11.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.11.11.11.11.m1.1"><semantics id="S4.T3.11.11.11.11.m1.1a"><mo id="S4.T3.11.11.11.11.m1.1.1" stretchy="false" xref="S4.T3.11.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.11.m1.1b"><ci id="S4.T3.11.11.11.11.m1.1.1.cmml" xref="S4.T3.11.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.11.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.12.12.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.12.12.12.12.m1.1"><semantics id="S4.T3.12.12.12.12.m1.1a"><mo id="S4.T3.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T3.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.12.m1.1b"><ci id="S4.T3.12.12.12.12.m1.1.1.cmml" xref="S4.T3.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.13.13.13.13" style="padding-left:4.0pt;padding-right:4.0pt;">L2<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.13.13.13.13.m1.1"><semantics id="S4.T3.13.13.13.13.m1.1a"><mo id="S4.T3.13.13.13.13.m1.1.1" stretchy="false" xref="S4.T3.13.13.13.13.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.13.m1.1b"><ci id="S4.T3.13.13.13.13.m1.1.1.cmml" xref="S4.T3.13.13.13.13.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.13.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.13.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">Tabletop</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.14.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.3.1" style="color:#0067C0;">+CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.91</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.14.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.14.14.14.1.m1.1"><semantics id="S4.T3.14.14.14.1.m1.1a"><mo id="S4.T3.14.14.14.1.m1.1.1" xref="S4.T3.14.14.14.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.1.m1.1b"><csymbol cd="latexml" id="S4.T3.14.14.14.1.m1.1.1.cmml" xref="S4.T3.14.14.14.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.1.m1.1d">∼</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.14.14.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.14.14.14.10" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.11" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.12" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.13" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.14.14.14.14" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.15" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.16" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.15.15">
<td class="ltx_td ltx_border_r" id="S4.T3.15.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.15.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.3.1" style="color:#0067C0;">+SigLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.15.15.15.1.m1.1"><semantics id="S4.T3.15.15.15.1.m1.1a"><mo id="S4.T3.15.15.15.1.m1.1.1" xref="S4.T3.15.15.15.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.1.m1.1b"><csymbol cd="latexml" id="S4.T3.15.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.1.m1.1d">∼</annotation></semantics></math>10</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.3122</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0005</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.10" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.11" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.12" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.13" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.15.14" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.15" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td" id="S4.T3.15.15.15.16" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16">
<td class="ltx_td ltx_border_r" id="S4.T3.16.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.16.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.16.16.16.3.1" style="color:#0067C0;">+DINOv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.16.16.16.1.m1.1"><semantics id="S4.T3.16.16.16.1.m1.1a"><mo id="S4.T3.16.16.16.1.m1.1.1" xref="S4.T3.16.16.16.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.1.m1.1b"><csymbol cd="latexml" id="S4.T3.16.16.16.1.m1.1.1.cmml" xref="S4.T3.16.16.16.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.1.m1.1d">∼</annotation></semantics></math>15</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3101</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.3123</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0005</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5161</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.6057</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.11" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.12" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.13" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.16.14" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.15" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.16" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.17.17.17">
<td class="ltx_td ltx_border_r" id="S4.T3.17.17.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.17.17.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.3.1" style="color:#0067C0;">+SEEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.17.17.17.1.m1.1"><semantics id="S4.T3.17.17.17.1.m1.1a"><mo id="S4.T3.17.17.17.1.m1.1.1" xref="S4.T3.17.17.17.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.1.m1.1b"><csymbol cd="latexml" id="S4.T3.17.17.17.1.m1.1.1.cmml" xref="S4.T3.17.17.17.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.1.m1.1d">∼</annotation></semantics></math>20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3101</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.3123</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0005</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5156</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.6048</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0472</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1013</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.13" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.17.17.17.14" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.15" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.16" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18">
<td class="ltx_td ltx_border_r" id="S4.T3.18.18.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.18.18.18.3.1" style="color:#0067C0;">+LLaMA3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.18.18.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.18.18.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.18.18.18.1.m1.1"><semantics id="S4.T3.18.18.18.1.m1.1a"><mo id="S4.T3.18.18.18.1.m1.1.1" xref="S4.T3.18.18.18.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.1.m1.1b"><csymbol cd="latexml" id="S4.T3.18.18.18.1.m1.1.1.cmml" xref="S4.T3.18.18.18.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.1.m1.1d">∼</annotation></semantics></math>30</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3101</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.3122</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.18.18.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0005</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5160</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.18.18.18.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.6056</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0472</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1012</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.3628</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.18.18.18.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0246</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.15" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.16" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.19.19.19">
<td class="ltx_td ltx_border_b ltx_border_r" id="S4.T3.19.19.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T3.19.19.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.19.19.19.3.1" style="color:#DC322F;">+LLaMAv (All)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.19.19.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">21.96</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.19.19.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.19.19.19.1.m1.1"><semantics id="S4.T3.19.19.19.1.m1.1a"><mo id="S4.T3.19.19.19.1.m1.1.1" xref="S4.T3.19.19.19.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.19.1.m1.1b"><csymbol cd="latexml" id="S4.T3.19.19.19.1.m1.1.1.cmml" xref="S4.T3.19.19.19.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.19.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.19.1.m1.1d">∼</annotation></semantics></math>45</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.3100</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2956</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.3122</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.19.19.19.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.0005</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5157</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.19.19.19.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.6049</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.11" style="padding-left:4.0pt;padding-right:4.0pt;">0.0472</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1013</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.3628</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.19.19.19.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0246</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.7262</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.19.19.19.16" style="padding-left:4.0pt;padding-right:4.0pt;">59.92</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of using different numbers of foundation models within the M3 model.  It shows how the performance changes as more models (CLIP, SigLIP, DINOv2, SEEM, LLaMA3, and LLaMAv) are incorporated into the system. The results are evaluated using PSNR, cosine similarity, and L2 distance metrics across different feature spaces, showing the trade-off between model complexity and performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on the number of foundation models in M3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.1.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Degree</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.1.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1"># Params</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.3.1">Iteration</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="4" id="S4.T4.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_bold" id="S4.T4.1.1.1.1.4.1">CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="4" id="S4.T4.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_bold" id="S4.T4.1.1.1.1.5.1">SigLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T4.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_bold" id="S4.T4.1.1.1.1.6.1">DINOv2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T4.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_bold" id="S4.T4.1.1.1.1.7.1">SEEM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T4.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_bold" id="S4.T4.1.1.1.1.8.1">LLaMA3</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">L2↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">mIoU</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">AP50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">L2↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">mIoU</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">AP50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine↓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">L2↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine↓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">L2↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">Cosine↓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2.14" style="padding-left:4.0pt;padding-right:4.0pt;">L2↓</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.1.3.3.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.3.1.1">8x6=48</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.3.2.1">14.8M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">30k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.3256</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.2880</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">25.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">19.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2913</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5239</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">19.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">2.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.5755</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">1.7664</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.1672</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.2749</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.4504</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.3.3.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.0264</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">7k</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3290</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.2900</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">14.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2938</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5277</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">21.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.5845</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">1.7835</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.2058</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.3463</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.4517</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.0265</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.1.5.5.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.5.1.1">16x6=96</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.5.2.1">21.5M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">30k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.3140</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.2800</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">25.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">19.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2866</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5172</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">24.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.5.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">10.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.5535</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.5.5.13" style="padding-left:4.0pt;padding-right:4.0pt;">1.7239</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.1388</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.5.5.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.2247</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.4480</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.5.5.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.0261</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">7k</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3206</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.2842</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2903</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5227</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">23.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">8.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.5677</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">1.7513</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1828</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.6.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.3056</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.4504</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.0263</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.1.7.7.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.7.7.1.1">32x6=192</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.7.7.2.1">34.8M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">30k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.3043</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.2735</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">26.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">22.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2814</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.5094</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">25.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.7.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.5318</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.7.7.13" style="padding-left:4.0pt;padding-right:4.0pt;">1.6807</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0972</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.7.7.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.1553</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.4401</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.7.7.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.0253</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">7k</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3132</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.2792</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">26.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">21.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2866</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5172</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">25.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.8.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">11.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.5515</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.8.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">1.7198</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1269</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.8.8.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.2139</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.4436</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.8.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.0256</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_b ltx_border_t" id="S4.T4.1.1.9.9.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.9.9.1.1">64x6=384</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_b ltx_border_t" id="S4.T4.1.1.9.9.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.1.1.9.9.2.1">61.4M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">30k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.2917</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.2650</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">28.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">23.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.2721</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.4957</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">28.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.9.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">13.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.5099</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.9.9.13" style="padding-left:4.0pt;padding-right:4.0pt;">1.6358</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.0855</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.1.9.9.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.1321</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.16" style="padding-left:4.0pt;padding-right:4.0pt;">0.4278</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.9.9.17" style="padding-left:4.0pt;padding-right:4.0pt;">0.0241</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">7k</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3049</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.2734</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">28.1</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">23.9</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.2802</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5079</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.5350</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.10.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">1.6870</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.12" style="padding-left:4.0pt;padding-right:4.0pt;">0.1012</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.10.10.13" style="padding-left:4.0pt;padding-right:4.0pt;">0.1676</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.14" style="padding-left:4.0pt;padding-right:4.0pt;">0.4348</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.10.10.15" style="padding-left:4.0pt;padding-right:4.0pt;">0.0248</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of varying the dimensionality and distillation techniques for each foundation model used in the M3 system.  It shows how different settings of feature vector dimensions and the application (or not) of feature distillation affect performance across various metrics and foundation models. This helps to understand the optimal configuration for balancing model complexity and performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on the dimensions and distillation for each foundation model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16413/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16413/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}