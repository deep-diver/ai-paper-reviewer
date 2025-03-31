---
title: "Reconstructing Humans with a Biomechanically Accurate Skeleton"
summary: "HSMR: Reconstructing 3D humans with a biomechanically accurate skeleton model from a single image, enhancing pose realism."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Texas at Austin",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21751 {{< /keyword >}}
{{< keyword icon="writer" >}} Yan Xia et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21751" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21751" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21751/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current 3D human pose estimation methods often lack anatomical accuracy, limiting their use in biomechanics. These methods frequently violate joint angle limits, leading to unnatural and unrealistic poses. This gap highlights the need for approaches aligned with biomechanically accurate skeleton models. The paper aims to bridge this by creating predictions that respect anatomical constraints. 



The study introduces a method named HSMR, which reconstructs humans using a biomechanically accurate skeleton from a single image. It uses the SKEL model and trains a transformer to estimate model parameters. Addressing the lack of training data, they create a pipeline to generate pseudo ground truth and iteratively refine it. HSMR matches state-of-the-art performance on benchmarks and improves results in extreme poses, ensuring realistic joint rotations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces HSMR, a novel approach for reconstructing 3D humans using a biomechanically accurate skeleton from a single image. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Demonstrates that biomechanical constraints can improve the realism of 3D human pose estimation, especially in challenging poses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Provides a method for generating training data without paired images and SKEL ground truth. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the **biomechanical accuracy in 3D human pose estimation**, a critical factor for applications like biomechanics. By using a biomechanically accurate skeleton model, this research opens avenues for **more realistic and reliable human pose estimation**, advancing both computer vision and biomechanical simulations.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21751/x1.png)

> 🔼 This figure illustrates the Human Skeleton and Mesh Recovery (HSMR) method.  The method takes a single image of a person as input and outputs a 3D biomechanically accurate skeleton and a surface mesh. The skeleton is based on the SKEL model, and a transformer network is trained to estimate the model's parameters from the input image.  The figure shows example input images and corresponding side and top views of the recovered skeleton and mesh. To see more detailed results, the reader is directed to the project page.
> <details>
> <summary>read the caption</summary>
> Figure 1: Human Skeleton and Mesh Recovery (HSMR). We propose an approach that recovers the biomechanical skeleton and the surface mesh of a human from a single image. We adopt a recent biomechanical model, SKEL [24] and train a transformer to estimate the parameters of the model. We encourage the reader to see the skeleton and surface reconstructions in our project page.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.12.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.1.1" style="font-size:80%;">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.2.1" style="font-size:80%;">COCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.3.1" style="font-size:80%;">LSP-Extended</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.4.1" style="font-size:80%;">PoseTrack</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.5.1" style="font-size:80%;">3DPW</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.6.1" style="font-size:80%;">Human3.6M</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.12.12.13.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.13.1.7.1" style="font-size:80%;">MOYO</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.1.1.1.1.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.2.2.2.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.3.3.3.3.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.4.4.4.4.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.5.5.5.5.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.6.6.6.6.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.7.7.7.7.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.8.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.8.8.8.8.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.8.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.9.9.9.9.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.9.m1.1a"><mo id="S3.T1.9.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.m1.1b"><ci id="S3.T1.9.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.10.10.10.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.10.10.10.10.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.m1.1"><semantics id="S3.T1.10.10.10.10.m1.1a"><mo id="S3.T1.10.10.10.10.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.m1.1b"><ci id="S3.T1.10.10.10.10.m1.1.1.cmml" xref="S3.T1.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.11.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.11.11.11.11.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.m1.1"><semantics id="S3.T1.11.11.11.11.m1.1a"><mo id="S3.T1.11.11.11.11.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.11.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.m1.1b"><ci id="S3.T1.11.11.11.11.m1.1.1.cmml" xref="S3.T1.11.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.12.12" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.12.12.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.m1.1"><semantics id="S3.T1.12.12.12.12.m1.1a"><mo id="S3.T1.12.12.12.12.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.m1.1b"><ci id="S3.T1.12.12.12.12.m1.1.1.cmml" xref="S3.T1.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.14.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T1.12.12.14.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.14.2.2.1" style="font-size:80%;">PARE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.12.12.14.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S3.T1.12.12.14.2.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.3.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.4.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.5.1" style="font-size:80%;">0.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.6.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.7.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.8.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.9.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.10.1" style="font-size:80%;">50.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.11.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.14.2.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.12.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.13.1" style="font-size:80%;">165.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.14.2.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.14.2.14.1" style="font-size:80%;">117.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.15.3">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.12.12.15.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.12.12.15.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.15.3.2.1" style="font-size:80%;">CLIFF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.12.12.15.3.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S3.T1.12.12.15.3.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.3.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.4.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.5.1" style="font-size:80%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.6.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.7.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.8.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.9.1" style="font-size:80%;">– *</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.10.1" style="font-size:80%;">– *</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.11.1" style="font-size:80%;">47.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.15.3.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.12.1" style="font-size:80%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.13.1" style="font-size:80%;">154.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.15.3.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.15.3.14.1" style="font-size:80%;">109.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.16.4">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.12.12.16.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.12.12.16.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.16.4.2.1" style="font-size:80%;">HybrIK </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.12.12.16.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S3.T1.12.12.16.4.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.3.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.4.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.5.1" style="font-size:80%;">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.6.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.7.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.8.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.16.4.9.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.16.4.10.1" style="font-size:80%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.11.1" style="font-size:80%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.16.4.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.12.1" style="font-size:80%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.13.1" style="font-size:80%;">140.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.16.4.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.16.4.14.1" style="font-size:80%;">93.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.17.5">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.12.12.17.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.12.12.17.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.17.5.2.1" style="font-size:80%;">PLIKS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.12.12.17.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S3.T1.12.12.17.5.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.3.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.4.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.5.1" style="font-size:80%;">0.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.6.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.7.1" style="font-size:80%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.8.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.9.1" style="font-size:80%;">– *</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.10.1" style="font-size:80%;">– *</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.17.5.11.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.12.12.17.5.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.12.1" style="font-size:80%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.13.1" style="font-size:80%;">132.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.17.5.14.1" style="font-size:80%;">91.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.18.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T1.12.12.18.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.12.12.18.6.2.1" style="font-size:80%;">HMR2.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.12.12.18.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S3.T1.12.12.18.6.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.3.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.4.1" style="font-size:80%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.5.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.6.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.7.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.8.1" style="font-size:80%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.18.6.9.1" style="font-size:80%;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.18.6.10.1" style="font-size:80%;">54.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.18.6.11.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.12.12.18.6.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.18.6.12.1" style="font-size:80%;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.18.6.13.1" style="font-size:80%;">123.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.18.6.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.18.6.14.1" style="font-size:80%;">90.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.19.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S3.T1.12.12.19.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.12.12.19.7.2.1" style="font-size:80%;">HSMR</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.3.1" style="font-size:50%;"><span style="visibility:hidden">+0.01</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.3.2" style="font-size:50%;"> 0.85<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.3.2.1" style="color:#FF6666;"> +0.01</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.4.1" style="font-size:50%;"><span style="visibility:hidden">+0</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.4.2" style="font-size:50%;"> 0.96<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.4.2.1" style="color:#008000;"> +0</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.5.1" style="font-size:50%;"><span style="visibility:hidden">+0.02</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.5.2" style="font-size:50%;"> 0.51<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.5.2.1" style="color:#FF6666;"> +0.02</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.6.1" style="font-size:50%;"><span style="visibility:hidden">+0.01</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.6.2" style="font-size:50%;"> 0.81<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.6.2.1" style="color:#FF6666;"> +0.01</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.7.1" style="font-size:50%;"><span style="visibility:hidden">+0</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.7.2" style="font-size:50%;"> 0.90<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.7.2.1" style="color:#008000;"> +0</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.8.1" style="font-size:50%;"><span style="visibility:hidden">+0</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.8.2" style="font-size:50%;"> 0.98<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.8.2.1" style="color:#008000;"> +0</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.9.1" style="font-size:50%;"><span style="visibility:hidden">+0.2</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.9.2" style="font-size:50%;"> 81.5<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.9.2.1" style="color:#FF6666;"> +0.2</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.10.1" style="font-size:50%;"><span style="visibility:hidden">+0.5</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.10.2" style="font-size:50%;"> 54.8<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.10.2.1" style="color:#FF6666;"> +0.5</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.11.1" style="font-size:50%;"><span style="visibility:hidden">+0.4</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.11.2" style="font-size:50%;"> 50.4<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.11.2.1" style="color:#FF6666;"> +0.4</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.12.12.19.7.12" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.12.1" style="font-size:50%;"><span style="visibility:hidden">+0.5</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.12.2" style="font-size:50%;"> 32.9<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.12.2.1" style="color:#FF6666;"> +0.5</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.13" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.13.1" style="font-size:50%;"><span style="visibility:hidden">-18.8</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.13.2" style="font-size:50%;"> 104.5<span class="ltx_text ltx_align_right" id="S3.T1.12.12.19.7.13.2.1" style="color:#008000;"> -18.8</span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.19.7.14" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T1.12.12.19.7.14.1" style="font-size:50%;"><span style="visibility:hidden">-10.8</span></span><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.7.14.2" style="font-size:50%;"> 79.6<span class="ltx_text ltx_align_right ltx_align_center" id="S3.T1.12.12.19.7.14.2.1" style="color:#008000;"> -10.8</span></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of the proposed HSMR method with state-of-the-art human pose estimation methods that predict SMPL parameters.  HMR2.0 serves as the primary baseline due to its similar architecture and training data to HSMR.  The table reports PCK (Percentage of Correct Keypoints) for 2D datasets (COCO, LSP Extended, PoseTrack) and MPJPE (Mean Per Joint Position Error) and PA-MPJPE (Procrustes Aligned MPJPE) for 3D datasets (3DPW, Human3.6M, MOYO).  Despite using the less flexible SKEL model and lacking initial ground truth for training, HSMR achieves comparable performance to HMR2.0 (within 0.5mm difference) on most datasets.  Significantly, HSMR substantially outperforms HMR2.0 on the MOYO dataset (more than 10mm improvement), which contains challenging extreme poses and viewpoints. The table highlights these differences in evaluation metrics between HSMR and HMR2.0.  Note that one method (*) uses 3DPW for training.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with state-of-the-art approaches that regress SMPL parameters. The primary baseline for HSMR is the HMR2.0 network [14], since it is the closest to our design, in terms of architecture and training data We report PCK @0.05 & @0.1 for the 2D datasets (COCO, LSP-Extended, PoseTrack) and MPJPE & PA-MPJPE for the 3D datasets (3DPW, Human3.6M, MOYO). Even though we adopt the SKEL model which is less flexible and we start without any initial ground truth for training, we are able to match the performance of HMR2.0 on most datasets - with up to 0.5mm difference. More importantly, we outperform HMR2.0 by a big gap of more than 10mm on the challenging MOYO dataset that includes extreme poses and viewpoints. In the table, we explicitly report the differences in evaluation metrics between our HSMR network and HMR2.0. *: trains on 3DPW.
> </details>





### In-depth insights


#### BioMech. Skeleton
The biomechanical skeleton is a crucial component for realistic human modeling, as it ensures anatomical accuracy and plausible movements. Unlike simplified skeletons, **a biomechanical skeleton incorporates joint limits and constraints**, preventing unnatural poses often seen in models using basic skeletal structures. This accuracy is vital for applications like biomechanics and simulations where realistic human motion is essential. Models like **SKEL aim to integrate biomechanical fidelity with surface mesh representations**, improving the accuracy of 3D human reconstruction. The challenge lies in accurately estimating the parameters of these complex skeletons from input data like images, requiring sophisticated methods and datasets.

#### Pseudo GT Refine
The iterative pseudo-label refinement is a crucial aspect. **It addresses the lack of real data**, where we iteratively improve the quality of the labels used for training. **It enables training of more accurate and reliable models**. The process is inspired by previous works. Specifically, a network estimate is refined iteratively to align with the 2D keypoints. **The optimized estimates serve as more accurate pseudo-ground truth**. This entire process helps the model to supervise the network more accurately.

#### Extreme Pose++
While the title "Extreme Pose++" isn't present in the paper, one can speculate on its meaning based on the content. It likely refers to an enhanced method for handling extreme poses in 3D human reconstruction. **The "++" suggests an improvement over existing techniques**, possibly addressing limitations in accurately capturing and representing challenging poses. This might involve novel data augmentation strategies, specialized network architectures, or biomechanical constraints, to better regularize the estimated pose. **Robustness in extreme poses is vital for real-world applications** where human movement isn't always constrained, so the proposed method tackles this, while achieving competitive performance on standard benchmarks.

#### SKEL vs. SMPL
The comparison between SKEL and SMPL focuses on **anatomical accuracy and biomechanical plausibility**. SMPL, while widely used, employs a simplified skeleton with ball-and-socket joints, which can lead to **unrealistic joint rotations**. SKEL, in contrast, incorporates a biomechanically accurate skeleton, limiting degrees of freedom to match actual human joint movement. This results in more **realistic and physically plausible poses**, crucial for applications in biomechanics and simulation. The trade-off is that SKEL might be less flexible in representing certain extreme or unnatural poses compared to SMPL, but the gained accuracy is vital for specific use cases. SKEL models the degrees of freedom by carefully considering kinematic constraints. This makes the model anatomically plausible. **The key difference lies in how each model represents joints**, which directly impacts the realism of generated poses. The use of SKEL allows a better analysis of joint constraints as opposed to SMPL.

#### Joint Limit Viol.
Analysis of joint limit violations is crucial in evaluating the realism of human pose estimation methods. **Biomechanical constraints** dictate the natural range of motion for joints, and models that fail to respect these limits often produce unrealistic or physically implausible poses. This analysis helps to identify methods that prioritize statistical accuracy over anatomical correctness. Quantifying the frequency and magnitude of joint limit violations provides a valuable metric for assessing the suitability of a model for biomechanical applications. **Lower violation rates indicate more realistic and anatomically accurate pose estimations**, leading to more reliable simulations and analyses of human movement. Methods incorporating biomechanical priors or constraints tend to exhibit fewer joint limit violations, demonstrating the effectiveness of explicitly enforcing anatomical plausibility during pose estimation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21751/x2.png)

> 🔼 Figure 2 illustrates the HSMR (Human Skeleton and Mesh Recovery) approach.  HSMR uses the SKEL model, a biomechanically accurate skeleton, which is a key design choice. A transformer network processes a single image of a person as input.  The network outputs estimates of the SKEL model's pose (q), shape (β), and camera parameters (π).  To improve model accuracy during training, the approach iteratively refines pseudo ground truth data by aligning the HSMR's estimations with ground-truth 2D keypoints through an optimization step called 'SKELify.' The refined parameters then serve as updated supervision targets for subsequent training iterations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our HSMR approach. A key design choice of HSMR is the adoption of the SKEL parametric body model [24] which uses a biomechanically accurate skeleton. We employ a transformer-based architecture that takes as input a single image of a person and estimates the pose q𝑞qitalic_q and shape parameters β𝛽\betaitalic_β of SKEL, as well as the camera π𝜋\piitalic_π. During training, we iteratively update the pseudo ground truth we use to supervise our model, aiming to improve its quality. For this, we optimize the HSMR estimate to align with the ground-truth 2D keypoints (SKELify). The output parameters of the optimization are used in future training iterations as supervision target.
> </details>



![](https://arxiv.org/html/2503.21751/x3.png)

> 🔼 This figure showcases instances where converting a SMPL mesh to a SKEL mesh results in issues.  The conversion process, while feasible, doesn't always produce accurate or realistic SKEL meshes. The visualization compares the original SMPL mesh (in light green) against the resulting SKEL mesh (in light blue) after applying the optimization method described in reference [24].  The discrepancies highlight the challenges and potential inaccuracies of this direct conversion approach.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Failure cases of SMPL-to-SKEL conversion. While we can technically fit SKEL to an instance of the SMPL model, this conversion can often lead to problematic SKEL results. Here, we visualize SMPL meshes (light green), and the SKEL meshes we get when we try to fit the SKEL model to the SMPL mesh (light blue). For the fitting, we use the optimization code of [24].
> </details>



![](https://arxiv.org/html/2503.21751/x4.png)

> 🔼 Figure 4 illustrates the limitations of using simplified human body models like SMPL for pose estimation.  The SMPL model represents joints, such as the knee, with a ball-and-socket joint, which allows for unnatural rotations not found in real human anatomy.  The figure compares pose estimations from the HMR2.0 method (light green) showing exaggerated or impossible knee bends. In contrast, the HSMR method (light blue) utilizes the biomechanically accurate SKEL model, resulting in more natural and anatomically correct knee positions that respect joint limitations.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Examples of unnatural joint rotation for SMPL. SMPL represents the knee with a ball (socket) joint. This allows mesh recovery methods like HMR2.0 [14] to generate invalid rotations. We visualize examples from HMR2.0 (light green) where the knee is bend in unnatural ways. In comparison, the HSMR output (light blue) respects the biomechanical constraints.
> </details>



![](https://arxiv.org/html/2503.21751/x5.png)

> 🔼 Figure 5 presents a qualitative assessment of the HSMR (Human Skeleton and Mesh Recovery) model.  For each example, the input image is displayed alongside four additional views: (b) an overlay of the SKEL biomechanical skeleton on the input image providing a direct comparison between the model's reconstruction and the original image; (c) a side view of the 3D reconstruction, showing the mesh and the skeleton; and (d) a top view of the 3D reconstruction, again showcasing both the mesh and the skeleton. These multiple viewpoints enable a comprehensive evaluation of the model's ability to accurately reconstruct the human's pose and mesh.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative evaluation of HSMR. For each input example we show: a) the input image, b) the overlay of SKEL in the input view, c) a side view, d) the top view. We visualize both the skeleton and the transparent mesh of the estimated SKEL.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.3.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.2.1" style="font-size:70%;">PARE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.3.1" style="font-size:70%;">CLIFF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.4.1" style="font-size:70%;">HybrIK</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.5.1" style="font-size:70%;">PLIKS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.3.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.6.1" style="font-size:70%;">HMR2.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.3.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.3.1.7.1" style="font-size:70%;">HSMR</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:70%;">MPVPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:70%;">174.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1" style="font-size:70%;">155.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.1" style="font-size:70%;">143.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.1" style="font-size:70%;">136.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.1" style="font-size:70%;">142.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.1" style="font-size:70%;">120.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.2.2.1.1" style="font-size:70%;">PA-MPVPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mo id="S4.T2.2.2.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><ci id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:70%;">121.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1" style="font-size:70%;">110.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.1" style="font-size:70%;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.5.1" style="font-size:70%;">94.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.2.2.6.1" style="font-size:70%;">103.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.7.1" style="font-size:70%;">90.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative evaluation of the surface mesh reconstruction accuracy achieved by the proposed HSMR model and other state-of-the-art methods. The evaluation is performed using the MOYO dataset, which is known for its challenging poses and viewpoints.  The metrics used for the evaluation are Mean Per Vertex Position Error (MPVPE) and its Procrustes Aligned version (PA-MPVPE).  Lower values for both metrics indicate more accurate surface reconstruction. This table provides a comparison showing how well the different approaches reconstruct the 3D surface mesh in terms of both vertex positions and overall shape alignment.
> <details>
> <summary>read the caption</summary>
> Table 2:  Evaluation of the surface reconstruction accuracy. We report MPVPE and PA-MPVPE on the MOYO dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.1.1" style="font-size:70%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.2.1" style="font-size:70%;">COCO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.3.1" style="font-size:70%;">LSP-Extended</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.4.1" style="font-size:70%;">PoseTrack</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.5.1" style="font-size:70%;">3DPW</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.12.13.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.6.1" style="font-size:70%;">Human3.6M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.12.13.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.13.1.7.1" style="font-size:70%;">MOYO</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:70%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:70%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:70%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:70%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:70%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.6.6.6.1" style="font-size:70%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.7.7.7.1" style="font-size:70%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.8.8.8.1" style="font-size:70%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.m1.1a"><mo id="S4.T3.8.8.8.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.m1.1b"><ci id="S4.T3.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.9.9.9.1" style="font-size:70%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.m1.1a"><mo id="S4.T3.9.9.9.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.m1.1b"><ci id="S4.T3.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.10.10.10.1" style="font-size:70%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.10.10.10.m1.1"><semantics id="S4.T3.10.10.10.m1.1a"><mo id="S4.T3.10.10.10.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.m1.1b"><ci id="S4.T3.10.10.10.m1.1.1.cmml" xref="S4.T3.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.11.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.11.11.11.1" style="font-size:70%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.11.11.11.m1.1"><semantics id="S4.T3.11.11.11.m1.1a"><mo id="S4.T3.11.11.11.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.m1.1b"><ci id="S4.T3.11.11.11.m1.1.1.cmml" xref="S4.T3.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.12.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.12.12.12.1" style="font-size:70%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.12.12.12.m1.1"><semantics id="S4.T3.12.12.12.m1.1a"><mo id="S4.T3.12.12.12.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T3.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.m1.1b"><ci id="S4.T3.12.12.12.m1.1.1.cmml" xref="S4.T3.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.12.14.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T3.12.14.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.12.14.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.12.14.1.2.1" style="font-size:70%;">HMR2.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.12.14.1.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T3.12.14.1.2.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.3.1" style="font-size:70%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.14.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.4.1" style="font-size:70%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.5.1" style="font-size:70%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.14.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.6.1" style="font-size:70%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.7.1" style="font-size:70%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.14.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.8.1" style="font-size:70%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.14.1.9.1" style="font-size:70%;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.14.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.10.1" style="font-size:70%;">54.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.11.1" style="font-size:70%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.14.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.14.1.12.1" style="font-size:70%;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.14.1.13.1" style="font-size:70%;">123.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.14.1.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.14.1.14.1" style="font-size:70%;">90.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.15.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.12.15.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.15.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.2.1" style="font-size:70%;">HMR2.0 + SKEL fit</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.3.1" style="font-size:70%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.15.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.4.1" style="font-size:70%;">0.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.5.1" style="font-size:70%;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.15.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.6.1" style="font-size:70%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.15.2.7.1" style="font-size:70%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.15.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.15.2.8.1" style="font-size:70%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.15.2.9.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.15.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.10.1" style="font-size:70%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.11.1" style="font-size:70%;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.15.2.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.12.1" style="font-size:70%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.13.1" style="font-size:70%;">130.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.15.2.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.15.2.14.1" style="font-size:70%;">93.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.16.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S4.T3.12.16.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.2.1" style="font-size:70%;">HSMR</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.3.1" style="font-size:70%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.16.3.4.1" style="font-size:70%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.5.1" style="font-size:70%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.6.1" style="font-size:70%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.16.3.7.1" style="font-size:70%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.16.3.8.1" style="font-size:70%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.9.1" style="font-size:70%;">81.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.10.1" style="font-size:70%;">54.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.11.1" style="font-size:70%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.16.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.12.16.3.12.1" style="font-size:70%;">32.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.16.3.13.1" style="font-size:70%;">104.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.12.16.3.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.16.3.14.1" style="font-size:70%;">79.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed HSMR method with a two-stage baseline approach for recovering a biomechanically accurate skeleton (SKEL). The baseline first uses the HMR2.0 method to predict SMPL parameters, then iteratively fits the SKEL model to the SMPL prediction. The comparison demonstrates that the end-to-end HSMR approach significantly outperforms the two-stage baseline in terms of accuracy, while also being substantially faster (3 minutes per frame vs. HSMR's speed).
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with baseline for SKEL recovery. We start from the SMPL prediction of HMR2.0 [14] and we fit the SKEL model to it with terative optimization [24]. This baseline corresponds to the “HMR2.0 + SKEL fit” row. We observe that this two-stage baseline for SKEL recovery performs worse than HSMR, while it is also significantly slower (3 minutes for a single frame).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.3.3.3.4" rowspan="2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.3.4.1" style="font-size:80%;">Methods</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T4.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:80%;">violation </span><math alttext="&gt;10^{\circ}\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mrow id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T4.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml">&gt;</mo><msup id="S4.T4.1.1.1.1.m1.1.1.4" xref="S4.T4.1.1.1.1.m1.1.1.4.cmml"><mn id="S4.T4.1.1.1.1.m1.1.1.4.2" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.4.2.cmml">10</mn><mo id="S4.T4.1.1.1.1.m1.1.1.4.3" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.4.3.cmml">∘</mo></msup><mo id="S4.T4.1.1.1.1.m1.1.1.5" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.5.cmml">↓</mo><mi id="S4.T4.1.1.1.1.m1.1.1.6" xref="S4.T4.1.1.1.1.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><and id="S4.T4.1.1.1.1.m1.1.1a.cmml" xref="S4.T4.1.1.1.1.m1.1.1"></and><apply id="S4.T4.1.1.1.1.m1.1.1b.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><gt id="S4.T4.1.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3"></gt><csymbol cd="latexml" id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T4.1.1.1.1.m1.1.1.4.cmml" xref="S4.T4.1.1.1.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.4.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1.4">superscript</csymbol><cn id="S4.T4.1.1.1.1.m1.1.1.4.2.cmml" type="integer" xref="S4.T4.1.1.1.1.m1.1.1.4.2">10</cn><compose id="S4.T4.1.1.1.1.m1.1.1.4.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.4.3"></compose></apply></apply><apply id="S4.T4.1.1.1.1.m1.1.1c.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><ci id="S4.T4.1.1.1.1.m1.1.1.5.cmml" xref="S4.T4.1.1.1.1.m1.1.1.5">↓</ci><share href="https://arxiv.org/html/2503.21751v1#S4.T4.1.1.1.1.m1.1.1.4.cmml" id="S4.T4.1.1.1.1.m1.1.1d.cmml" xref="S4.T4.1.1.1.1.m1.1.1"></share><csymbol cd="latexml" id="S4.T4.1.1.1.1.m1.1.1.6.cmml" xref="S4.T4.1.1.1.1.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">&gt;10^{\circ}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">&gt; 10 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T4.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:80%;">violation </span><math alttext="&gt;20^{\circ}\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mrow id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml"><mi id="S4.T4.2.2.2.2.m1.1.1.2" xref="S4.T4.2.2.2.2.m1.1.1.2.cmml"></mi><mo id="S4.T4.2.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T4.2.2.2.2.m1.1.1.3.cmml">&gt;</mo><msup id="S4.T4.2.2.2.2.m1.1.1.4" xref="S4.T4.2.2.2.2.m1.1.1.4.cmml"><mn id="S4.T4.2.2.2.2.m1.1.1.4.2" mathsize="80%" xref="S4.T4.2.2.2.2.m1.1.1.4.2.cmml">20</mn><mo id="S4.T4.2.2.2.2.m1.1.1.4.3" mathsize="80%" xref="S4.T4.2.2.2.2.m1.1.1.4.3.cmml">∘</mo></msup><mo id="S4.T4.2.2.2.2.m1.1.1.5" mathsize="80%" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.5.cmml">↓</mo><mi id="S4.T4.2.2.2.2.m1.1.1.6" xref="S4.T4.2.2.2.2.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1"><and id="S4.T4.2.2.2.2.m1.1.1a.cmml" xref="S4.T4.2.2.2.2.m1.1.1"></and><apply id="S4.T4.2.2.2.2.m1.1.1b.cmml" xref="S4.T4.2.2.2.2.m1.1.1"><gt id="S4.T4.2.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3"></gt><csymbol cd="latexml" id="S4.T4.2.2.2.2.m1.1.1.2.cmml" xref="S4.T4.2.2.2.2.m1.1.1.2">absent</csymbol><apply id="S4.T4.2.2.2.2.m1.1.1.4.cmml" xref="S4.T4.2.2.2.2.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T4.2.2.2.2.m1.1.1.4.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1.4">superscript</csymbol><cn id="S4.T4.2.2.2.2.m1.1.1.4.2.cmml" type="integer" xref="S4.T4.2.2.2.2.m1.1.1.4.2">20</cn><compose id="S4.T4.2.2.2.2.m1.1.1.4.3.cmml" xref="S4.T4.2.2.2.2.m1.1.1.4.3"></compose></apply></apply><apply id="S4.T4.2.2.2.2.m1.1.1c.cmml" xref="S4.T4.2.2.2.2.m1.1.1"><ci id="S4.T4.2.2.2.2.m1.1.1.5.cmml" xref="S4.T4.2.2.2.2.m1.1.1.5">↓</ci><share href="https://arxiv.org/html/2503.21751v1#S4.T4.2.2.2.2.m1.1.1.4.cmml" id="S4.T4.2.2.2.2.m1.1.1d.cmml" xref="S4.T4.2.2.2.2.m1.1.1"></share><csymbol cd="latexml" id="S4.T4.2.2.2.2.m1.1.1.6.cmml" xref="S4.T4.2.2.2.2.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">&gt;20^{\circ}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">&gt; 20 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T4.3.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:80%;">violation </span><math alttext="&gt;30^{\circ}\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mrow id="S4.T4.3.3.3.3.m1.1.1" xref="S4.T4.3.3.3.3.m1.1.1.cmml"><mi id="S4.T4.3.3.3.3.m1.1.1.2" xref="S4.T4.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S4.T4.3.3.3.3.m1.1.1.3" mathsize="80%" xref="S4.T4.3.3.3.3.m1.1.1.3.cmml">&gt;</mo><msup id="S4.T4.3.3.3.3.m1.1.1.4" xref="S4.T4.3.3.3.3.m1.1.1.4.cmml"><mn id="S4.T4.3.3.3.3.m1.1.1.4.2" mathsize="80%" xref="S4.T4.3.3.3.3.m1.1.1.4.2.cmml">30</mn><mo id="S4.T4.3.3.3.3.m1.1.1.4.3" mathsize="80%" xref="S4.T4.3.3.3.3.m1.1.1.4.3.cmml">∘</mo></msup><mo id="S4.T4.3.3.3.3.m1.1.1.5" mathsize="80%" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.5.cmml">↓</mo><mi id="S4.T4.3.3.3.3.m1.1.1.6" xref="S4.T4.3.3.3.3.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1"><and id="S4.T4.3.3.3.3.m1.1.1a.cmml" xref="S4.T4.3.3.3.3.m1.1.1"></and><apply id="S4.T4.3.3.3.3.m1.1.1b.cmml" xref="S4.T4.3.3.3.3.m1.1.1"><gt id="S4.T4.3.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3"></gt><csymbol cd="latexml" id="S4.T4.3.3.3.3.m1.1.1.2.cmml" xref="S4.T4.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="S4.T4.3.3.3.3.m1.1.1.4.cmml" xref="S4.T4.3.3.3.3.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T4.3.3.3.3.m1.1.1.4.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1.4">superscript</csymbol><cn id="S4.T4.3.3.3.3.m1.1.1.4.2.cmml" type="integer" xref="S4.T4.3.3.3.3.m1.1.1.4.2">30</cn><compose id="S4.T4.3.3.3.3.m1.1.1.4.3.cmml" xref="S4.T4.3.3.3.3.m1.1.1.4.3"></compose></apply></apply><apply id="S4.T4.3.3.3.3.m1.1.1c.cmml" xref="S4.T4.3.3.3.3.m1.1.1"><ci id="S4.T4.3.3.3.3.m1.1.1.5.cmml" xref="S4.T4.3.3.3.3.m1.1.1.5">↓</ci><share href="https://arxiv.org/html/2503.21751v1#S4.T4.3.3.3.3.m1.1.1.4.cmml" id="S4.T4.3.3.3.3.m1.1.1d.cmml" xref="S4.T4.3.3.3.3.m1.1.1"></share><csymbol cd="latexml" id="S4.T4.3.3.3.3.m1.1.1.6.cmml" xref="S4.T4.3.3.3.3.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">&gt;30^{\circ}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">&gt; 30 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT ↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.1.1" style="font-size:80%;">left elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.2.1" style="font-size:80%;">right elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.3.1" style="font-size:80%;">left knee</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.3.3.4.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.4.1" style="font-size:80%;">right knee</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.5.1" style="font-size:80%;">left elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.6.1" style="font-size:80%;">right elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.7.1" style="font-size:80%;">left knee</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.3.3.4.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.8.1" style="font-size:80%;">right knee</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.9.1" style="font-size:80%;">left elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.10.1" style="font-size:80%;">right elbow</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.11.1" style="font-size:80%;">left knee</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.4.1.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.4.1.12.1" style="font-size:80%;">right knee</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3.5.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.5.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.3.5.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.3.3.5.1.2.1" style="font-size:80%;">PARE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.3.5.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T4.3.3.5.1.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.3.1" style="font-size:80%;">36.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.4.1" style="font-size:80%;">42.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.5.1" style="font-size:80%;">20.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.5.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.6.1" style="font-size:80%;">23.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.7.1" style="font-size:80%;">14.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.8.1" style="font-size:80%;">15.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.9.1" style="font-size:80%;">3.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.5.1.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.10.1" style="font-size:80%;">3.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.11.1" style="font-size:80%;">5.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.12.1" style="font-size:80%;">4.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.13.1" style="font-size:80%;">0.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.3.5.1.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.5.1.14.1" style="font-size:80%;">0.4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.6.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T4.3.3.6.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.6.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.3.3.6.2.2.1" style="font-size:80%;">CLIFF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.3.6.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T4.3.3.6.2.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.3.1" style="font-size:80%;">34.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.4.1" style="font-size:80%;">33.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.5.1" style="font-size:80%;">28.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.6.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.6.1" style="font-size:80%;">31.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.7.1" style="font-size:80%;">13.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.8.1" style="font-size:80%;">12.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.9.1" style="font-size:80%;">4.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.6.2.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.10.1" style="font-size:80%;">4.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.11.1" style="font-size:80%;">5.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.12.1" style="font-size:80%;">5.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.13.1" style="font-size:80%;">0.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.6.2.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.14.1" style="font-size:80%;">0.3%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T4.3.3.7.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.7.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.2.1" style="font-size:80%;">HybrIK</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.3.1" style="font-size:80%;">58.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.4.1" style="font-size:80%;">60.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.5.1" style="font-size:80%;">52.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.7.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.6.1" style="font-size:80%;">48.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.7.1" style="font-size:80%;">29.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.8.1" style="font-size:80%;">34.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.9.1" style="font-size:80%;">30.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.7.3.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.10.1" style="font-size:80%;">27.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.11.1" style="font-size:80%;">16.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.12.1" style="font-size:80%;">21.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.13.1" style="font-size:80%;">20.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.7.3.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.14.1" style="font-size:80%;">17.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.8.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T4.3.3.8.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.8.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.2.1" style="font-size:80%;">PLIKS</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.3.1" style="font-size:80%;">41.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.4.1" style="font-size:80%;">44.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.5.1" style="font-size:80%;">47.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.8.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.6.1" style="font-size:80%;">43.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.7.1" style="font-size:80%;">17.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.8.1" style="font-size:80%;">22.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.9.1" style="font-size:80%;">18.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.8.4.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.10.1" style="font-size:80%;">17.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.11.1" style="font-size:80%;">8.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.12.1" style="font-size:80%;">11.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.13.1" style="font-size:80%;">8.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.8.4.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.8.4.14.1" style="font-size:80%;">8.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.9.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T4.3.3.9.5.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.9.5.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T4.3.3.9.5.2.1" style="font-size:80%;">HMR2.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.3.9.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21751v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T4.3.3.9.5.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.3.1" style="font-size:80%;">47.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.4.1" style="font-size:80%;">44.3%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.5.1" style="font-size:80%;">45.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.9.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.6.1" style="font-size:80%;">56.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.7.1" style="font-size:80%;">19.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.8.1" style="font-size:80%;">19.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.9.1" style="font-size:80%;">6.4%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.3.3.9.5.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.10.1" style="font-size:80%;">11.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.11.1" style="font-size:80%;">8.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.12.1" style="font-size:80%;">8.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.13.1" style="font-size:80%;">1.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.9.5.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.9.5.14.1" style="font-size:80%;">1.6%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.10.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.3.10.6.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.3.3.10.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T4.3.3.10.6.2.1" style="font-size:80%;">HSMR</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.3.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.4.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.5.1" style="font-size:80%;">3.9%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.10.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.6.1" style="font-size:80%;">4.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.7.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.8.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.9.1" style="font-size:80%;">0.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.10.6.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.10.1" style="font-size:80%;">0.5%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.11.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.12.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.13.1" style="font-size:80%;">0.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.3.3.10.6.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.6.14.1" style="font-size:80%;">0.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares different human pose estimation methods' frequency of producing unnatural joint rotations (elbows and knees) exceeding specified thresholds (10°, 20°, and 30°). The dataset used is MOYO [52], known for its challenging poses.  Methods using SMPL, a simplified model, show high rates of unnatural joint angles, unlike the HSMR method, which leverages the biomechanically accurate SKEL model, exhibiting far fewer unnatural rotations.
> <details>
> <summary>read the caption</summary>
> Table 4: Frequency of unnatural rotations for mesh recovery approaches. We investigate how often each approach returns 3D bodies with unnatural joint rotations. We experiment on MOYO [52] and report the frequency that the unnatural rotation exceeds different thresholds ( 10∘, 20∘ or 30∘) for the elbow and the knee joints. Methods that regress SMPL parameters violate the joint limits frequently. Instead, our HSMR method avoids severe violations because it relies on SKEL which models only the realistic degrees of freedom.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.12.12.13.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.1" rowspan="2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.1.1" style="font-size:80%;">Models</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.2.1" style="font-size:80%;">COCO</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.3.1" style="font-size:80%;">LSP-Extended</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.4.1" style="font-size:80%;">PoseTrack</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.5.1" style="font-size:80%;">3DPW</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.6.1" style="font-size:80%;">Human3.6M</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.12.12.13.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.13.1.7.1" style="font-size:80%;">MOYO</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.12.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.1.1.1.1.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.2.2.2.2.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.3.3.3.3.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.4.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.4.4.4.4.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.5.5.5.5.1" style="font-size:80%;">@0.05</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.5.5.5.5.m1.1"><semantics id="S4.T5.5.5.5.5.m1.1a"><mo id="S4.T5.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.5.m1.1b"><ci id="S4.T5.5.5.5.5.m1.1.1.cmml" xref="S4.T5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.6.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.6.6.6.6.1" style="font-size:80%;">@0.1</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.6.6.6.6.m1.1"><semantics id="S4.T5.6.6.6.6.m1.1a"><mo id="S4.T5.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.6.m1.1b"><ci id="S4.T5.6.6.6.6.m1.1.1.cmml" xref="S4.T5.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.7.7.7.7" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.7.7.7.7.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.7.7.7.7.m1.1"><semantics id="S4.T5.7.7.7.7.m1.1a"><mo id="S4.T5.7.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.7.7.7.7.m1.1b"><ci id="S4.T5.7.7.7.7.m1.1.1.cmml" xref="S4.T5.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.8.8.8.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.8.8.8.8.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.8.8.8.8.m1.1"><semantics id="S4.T5.8.8.8.8.m1.1a"><mo id="S4.T5.8.8.8.8.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.8.8.8.m1.1b"><ci id="S4.T5.8.8.8.8.m1.1.1.cmml" xref="S4.T5.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.9.9.9.9" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.9.9.9.9.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.9.9.9.9.m1.1"><semantics id="S4.T5.9.9.9.9.m1.1a"><mo id="S4.T5.9.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.9.9.9.9.m1.1b"><ci id="S4.T5.9.9.9.9.m1.1.1.cmml" xref="S4.T5.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.10.10.10.10" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.10.10.10.10.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.10.10.10.10.m1.1"><semantics id="S4.T5.10.10.10.10.m1.1a"><mo id="S4.T5.10.10.10.10.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.10.10.10.m1.1b"><ci id="S4.T5.10.10.10.10.m1.1.1.cmml" xref="S4.T5.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.11.11.11.11" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.11.11.11.11.1" style="font-size:80%;">MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.11.11.11.11.m1.1"><semantics id="S4.T5.11.11.11.11.m1.1a"><mo id="S4.T5.11.11.11.11.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.11.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.11.11.11.11.m1.1b"><ci id="S4.T5.11.11.11.11.m1.1.1.cmml" xref="S4.T5.11.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.11.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.11.11.11.11.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.12.12.12.12" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T5.12.12.12.12.1" style="font-size:80%;">PA-MPJPE</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.12.12.12.12.m1.1"><semantics id="S4.T5.12.12.12.12.m1.1a"><mo id="S4.T5.12.12.12.12.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.12.12.12.12.m1.1b"><ci id="S4.T5.12.12.12.12.m1.1.1.cmml" xref="S4.T5.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.12.12.14.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_t" id="S4.T5.12.12.14.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.14.1.2.1" style="font-size:80%;">HSMR (ViT-B)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.3.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.4.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.5.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.6.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.7.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.8.1" style="font-size:80%;">0.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.9.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.10.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.11.1" style="font-size:80%;">49.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.12.12.14.1.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.12.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.13.1" style="font-size:80%;">124.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.12.12.14.1.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.14.1.14.1" style="font-size:80%;">92.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.12.15.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S4.T5.12.12.15.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.12.12.15.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.2.1" style="font-size:80%;">HSMR (ViT-B) w/ Euler angles</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.3.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.12.12.15.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.4.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.5.1" style="font-size:80%;">0.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.12.12.15.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.6.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.7.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.12.12.15.2.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.8.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.9.1" style="font-size:80%;">81.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.12.12.15.2.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.10.1" style="font-size:80%;">52.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.11.1" style="font-size:80%;">55.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.12.12.15.2.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.12.1" style="font-size:80%;">41.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.13.1" style="font-size:80%;">137.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.12.12.15.2.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.15.2.14.1" style="font-size:80%;">104.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.12.16.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_bb" id="S4.T5.12.12.16.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.2.1" style="font-size:80%;">HSMR (ViT-B) w/o pseudo GT refinement</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.3.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.4.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.5.1" style="font-size:80%;">0.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.16.3.6.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.7.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.16.3.8.1" style="font-size:80%;">0.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.9.1" style="font-size:80%;">81.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.10.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.11.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.12.12.16.3.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.12.1" style="font-size:80%;">38.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.13.1" style="font-size:80%;">126.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.12.12.16.3.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T5.12.12.16.3.14.1" style="font-size:80%;">96.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of two key design choices in the HSMR model: the regression target for pose parameters and the pseudo ground truth refinement process.  The first experiment replaces the continuous rotation representation of pose parameters with SKEL's native Euler angles, showing a negative effect across all metrics. The second experiment removes the iterative refinement of pseudo ground truth labels, resulting in a more significant performance drop, especially for 3D metrics.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation study on design choices. We benchmark our proposed model and ablate two design choices. First, we change the regression target from the continuous representation [64] to the native Euler angles of SKEL. This has a negative effect across the board. Then, we experiment without the pseudo ground truth refinement process. This also has a negative impact particularly on the 3D metrics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21751/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21751/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}