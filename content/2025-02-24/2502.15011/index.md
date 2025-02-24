---
title: "CrossOver: 3D Scene Cross-Modal Alignment"
summary: "CrossOver: Flexible scene-level cross-modal alignment via modality-agnostic embeddings, unlocking robust 3D scene understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 Stanford University",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15011 {{< /keyword >}}
{{< keyword icon="writer" >}} Sayan Deb Sarkar et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15011" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15011" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15011/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-modal 3D object understanding is promising, but existing methods often rely on complete datasets with rigid alignments across modalities. Current approaches struggle in real-world settings where data is incomplete, noisy, or modalities lack consistent correspondence. They also require semantic instance segmentation, a labor intensive task. Thus there is a need to improve scene-level understanding.



This paper introduces a flexible framework: CrossOver, for cross-modal 3D scene understanding via scene-level alignment without aligned modality data. It learns a unified, modality-agnostic embedding space for scenes using RGB images, point clouds, CAD models, floorplans, and text descriptions. By using dimensionality-specific encoders and multi-stage training, CrossOver achieves robust scene retrieval and object localization, adapting to missing modalities and emergent cross-modal behaviors.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CrossOver enables robust scene retrieval and object localization, even with missing modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework employs dimensionality-specific encoders and multi-stage training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Emergent cross-modal behaviors are learned without explicit training on all modality pairs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new paradigm for **flexible scene understanding**, breaking away from the constraints of aligned multi-modal data. It inspires **new research directions in interactive mixed-reality experiences** and dynamic scene reconstruction with its adaptable method.

------
#### Visual Insights



![](https://arxiv.org/html/2502.15011/x1.png)

> 🔼 CrossOver is a method for aligning different data modalities (images, point clouds, CAD models, floorplans, and text) representing the same 3D scene.  It learns a shared embedding space where similar scenes are close together, regardless of the input modality. This allows for tasks like retrieving matching point clouds given a CAD model, or locating furniture in a point cloud based on its CAD model.  The figure illustrates the overall process of CrossOver, showing how it takes various scene inputs, processes them through modality-specific encoders, merges the results into a unified representation, and enables scene and object retrieval.
> <details>
> <summary>read the caption</summary>
> Figure 1: CrossOver is a cross-modal alignment method for 3D scenes that learns a unified, modality-agnostic embedding space, enabling a range of tasks. For example, given the 3D CAD model of a query scene and a database of reconstructed point clouds, CrossOver can retrieve the closest matching point cloud and, if object instances are known, it can identify the individual locations of furniture CAD models with matched instances in the retrieved point cloud, using brute-force alignment. This capability has direct applications in virtual and augmented reality.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F4.sf2.4.4">
<tr class="ltx_tr" id="S3.F4.sf2.4.4.5">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.F4.sf2.4.4.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.F4.sf2.4.4.5.2">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.5.2.1">Scannet</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.F4.sf2.4.4.5.3">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.5.3.1">3RScan</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.F4.sf2.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.1.1">Scene-level Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.F4.sf2.1.1.1.1.m1.1"><semantics id="S3.F4.sf2.1.1.1.1.m1.1a"><mo id="S3.F4.sf2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.F4.sf2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.F4.sf2.1.1.1.1.m1.1b"><ci id="S3.F4.sf2.1.1.1.1.m1.1.1.cmml" xref="S3.F4.sf2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.F4.sf2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.F4.sf2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F4.sf2.1.1.1.2">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.2.1">R@25</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F4.sf2.1.1.1.3">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.3.1">R@50</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.F4.sf2.1.1.1.4">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.4.1">R@75</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F4.sf2.1.1.1.5">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.5.1">R@25</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F4.sf2.1.1.1.6">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.6.1">R@50</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F4.sf2.1.1.1.7">
<span class="ltx_text ltx_font_bold" id="S3.F4.sf2.1.1.1.7.1">R@75</span>%</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="S3.F4.sf2.2.2.2.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S3.F4.sf2.2.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.F4.sf2.2.2.2.1.m1.1a"><mrow id="S3.F4.sf2.2.2.2.1.m1.1.1" xref="S3.F4.sf2.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.2.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S3.F4.sf2.2.2.2.1.m1.1.1.2.cmml">ℐ</mi><mo id="S3.F4.sf2.2.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S3.F4.sf2.2.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.2.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S3.F4.sf2.2.2.2.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.F4.sf2.2.2.2.1.m1.1b"><apply id="S3.F4.sf2.2.2.2.1.m1.1.1.cmml" xref="S3.F4.sf2.2.2.2.1.m1.1.1"><ci id="S3.F4.sf2.2.2.2.1.m1.1.1.1.cmml" xref="S3.F4.sf2.2.2.2.1.m1.1.1.1">→</ci><ci id="S3.F4.sf2.2.2.2.1.m1.1.1.2.cmml" xref="S3.F4.sf2.2.2.2.1.m1.1.1.2">ℐ</ci><ci id="S3.F4.sf2.2.2.2.1.m1.1.1.3.cmml" xref="S3.F4.sf2.2.2.2.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F4.sf2.2.2.2.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S3.F4.sf2.2.2.2.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.6.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.6.2">1.28</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.6.3">0.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.6.4">0.24</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.6.5">1.91</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.6.6">0.40</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.6.7">0.28</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.7.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.7.2">6.73</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.7.3">0.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.7.4">0.32</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.7.5">3.18</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.7.6">0.64</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.7.7">0.01</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.8.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.8.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.2.1" style="background-color:#E1FFA8;">88.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.8.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.3.1" style="background-color:#E1FFA8;">37.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.8.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.4.1" style="background-color:#E1FFA8;">1.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.8.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.5.1" style="background-color:#E1FFA8;">93.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.8.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.6.1" style="background-color:#E1FFA8;">35.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.8.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.8.7.1" style="background-color:#E1FFA8;">3.82</span></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.9.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.9.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.2.1" style="background-color:#BFFFBF;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.9.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.3.1" style="background-color:#BFFFBF;">76.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.9.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.4.1" style="background-color:#BFFFBF;">23.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.9.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.5.1" style="background-color:#BFFFBF;">99.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.9.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.6.1" style="background-color:#BFFFBF;">79.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.9.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.9.7.1" style="background-color:#BFFFBF;">22.93</span></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.3.3.3">
<td class="ltx_td ltx_align_left" colspan="7" id="S3.F4.sf2.3.3.3.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S3.F4.sf2.3.3.3.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.F4.sf2.3.3.3.1.m1.1a"><mrow id="S3.F4.sf2.3.3.3.1.m1.1.1" xref="S3.F4.sf2.3.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.3.3.3.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S3.F4.sf2.3.3.3.1.m1.1.1.2.cmml">ℐ</mi><mo id="S3.F4.sf2.3.3.3.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S3.F4.sf2.3.3.3.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.3.3.3.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S3.F4.sf2.3.3.3.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.F4.sf2.3.3.3.1.m1.1b"><apply id="S3.F4.sf2.3.3.3.1.m1.1.1.cmml" xref="S3.F4.sf2.3.3.3.1.m1.1.1"><ci id="S3.F4.sf2.3.3.3.1.m1.1.1.1.cmml" xref="S3.F4.sf2.3.3.3.1.m1.1.1.1">→</ci><ci id="S3.F4.sf2.3.3.3.1.m1.1.1.2.cmml" xref="S3.F4.sf2.3.3.3.1.m1.1.1.2">ℐ</ci><ci id="S3.F4.sf2.3.3.3.1.m1.1.1.3.cmml" xref="S3.F4.sf2.3.3.3.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F4.sf2.3.3.3.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S3.F4.sf2.3.3.3.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.10.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.10.2">98.12</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.10.3">96.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.10.4">60.34</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.10.5">98.66</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.10.6">85.91</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.10.7">36.91</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.11.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.11.2">98.22</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.11.3">95.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.11.4">62.07</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.11.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.11.5.1" style="background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.11.6">87.25</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.11.7">41.61</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.12.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.12.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.12.2.1" style="background-color:#E1FFA8;">99.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.12.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.12.3.1" style="background-color:#E1FFA8;">97.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.12.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.12.4.1" style="background-color:#E1FFA8;">71.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.12.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.12.5.1" style="background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.12.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.12.6.1" style="background-color:#E1FFA8;">92.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.12.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.12.7.1" style="background-color:#E1FFA8;">55.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.13.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.13.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.2.1" style="background-color:#BFFFBF;">99.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.13.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.3.1" style="background-color:#BFFFBF;">98.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.13.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.4.1" style="background-color:#BFFFBF;">76.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.13.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.5.1" style="background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.13.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.6.1" style="background-color:#BFFFBF;">97.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.13.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.13.7.1" style="background-color:#BFFFBF;">67.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.4">
<td class="ltx_td ltx_align_left" colspan="7" id="S3.F4.sf2.4.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S3.F4.sf2.4.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.F4.sf2.4.4.4.1.m1.1a"><mrow id="S3.F4.sf2.4.4.4.1.m1.1.1" xref="S3.F4.sf2.4.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.4.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S3.F4.sf2.4.4.4.1.m1.1.1.2.cmml">𝒫</mi><mo id="S3.F4.sf2.4.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S3.F4.sf2.4.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.F4.sf2.4.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S3.F4.sf2.4.4.4.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.F4.sf2.4.4.4.1.m1.1b"><apply id="S3.F4.sf2.4.4.4.1.m1.1.1.cmml" xref="S3.F4.sf2.4.4.4.1.m1.1.1"><ci id="S3.F4.sf2.4.4.4.1.m1.1.1.1.cmml" xref="S3.F4.sf2.4.4.4.1.m1.1.1.1">→</ci><ci id="S3.F4.sf2.4.4.4.1.m1.1.1.2.cmml" xref="S3.F4.sf2.4.4.4.1.m1.1.1.2">𝒫</ci><ci id="S3.F4.sf2.4.4.4.1.m1.1.1.3.cmml" xref="S3.F4.sf2.4.4.4.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F4.sf2.4.4.4.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S3.F4.sf2.4.4.4.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.14.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.14.2">37.24</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.14.3">16.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.14.4">8.62</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.14.5">16.78</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.14.6">6.04</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.14.7">1.34</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.15.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.15.2">54.83</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.15.3">27.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.15.4">11.72</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.15.5">21.48</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.15.6">6.04</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.15.7">2.01</td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.F4.sf2.4.4.16.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.16.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.2.1" style="background-color:#E1FFA8;">98.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.16.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.3.1" style="background-color:#E1FFA8;">83.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.F4.sf2.4.4.16.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.4.1" style="background-color:#E1FFA8;">46.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.16.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.5.1" style="background-color:#E1FFA8;">92.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.16.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.6.1" style="background-color:#E1FFA8;">60.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.F4.sf2.4.4.16.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.F4.sf2.4.4.16.7.1" style="background-color:#E1FFA8;">20.81</span></td>
</tr>
<tr class="ltx_tr" id="S3.F4.sf2.4.4.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.F4.sf2.4.4.17.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.F4.sf2.4.4.17.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.2.1" style="background-color:#BFFFBF;">99.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.F4.sf2.4.4.17.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.3.1" style="background-color:#BFFFBF;">96.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.F4.sf2.4.4.17.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.4.1" style="background-color:#BFFFBF;">70.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.F4.sf2.4.4.17.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.5.1" style="background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.F4.sf2.4.4.17.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.6.1" style="background-color:#BFFFBF;">89.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.F4.sf2.4.4.17.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.F4.sf2.4.4.17.7.1" style="background-color:#BFFFBF;">50.34</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of temporal instance matching performance on the 3RScan dataset.  It compares the proposed method's performance against several baselines across various metrics, including same-modal (where the query and retrieved instances are of the same modality) and cross-modal (where the query and retrieved instances are from different modalities) scenarios. The results demonstrate that the proposed approach achieves better performance than other baselines on same-modal tasks, even though it wasn't explicitly trained on them.  The table also highlights that the method performs well on cross-modal tasks, but shows decreased performance when textual descriptions (ℛ) are involved, suggesting that these descriptions' contextual relevance to the scene may be impacted by changes in object arrangement or location.
> <details>
> <summary>read the caption</summary>
> Table 1: Temporal Instance Matching on 3RScan [38]. Our method exhibits better performance in the same-modal task compared to baselines, despite not being specifically trained on this. It also performs well on cross-modal tasks. Lower performance when ℛℛ\mathcal{R}caligraphic_R is involved is expected, as descriptions are contextualized within the scene’s layout and may lose validity if objects rearrange.
> </details>





### In-depth insights


#### Scene-level align
Scene-level alignment is crucial for holistic 3D scene understanding, moving beyond individual object alignments. **It facilitates tasks like scene retrieval and object localization by learning relationships between different modalities, even when data is incomplete.** Current methods often fall short by assuming perfect object-level alignment, limiting their real-world applicability. Approaches like CrossOver aim to learn a modality-agnostic embedding space where scenes from diverse modalities (RGB images, point clouds, CAD models, floorplans, text) can be aligned. This is achieved through techniques such as dimensionality-specific encoders and multi-stage training pipelines that do not rely on explicit object semantics during inference. The benefit of scene-level alignment is that it allows emergent cross-modal behaviors to be learned, such as recognizing that a 'Scene' in the image modality corresponds to the same 'Scene' in the text modality, thus promoting robust scene representation. **Compared to object-level alignment, it focuses on holistic spatial relationships and the overall context of the environment, providing a more adaptable understanding of real-world scenes.**

#### No prior info
The research paper, titled CrossOver, strategically avoids reliance on **prior semantic information** or explicit 3D scene graphs, distinguishing it from existing methodologies. This is a significant departure because many current approaches depend on detailed annotations and consistent semantics, which are often challenging to obtain in real-world scenarios. By circumventing the need for prior information, CrossOver gains **flexibility** and can operate effectively in environments where data is incomplete or noisy. This design choice influences several aspects of CrossOver, including the development of dimensionality-specific encoders tailored to process raw data directly, and a multi-stage training pipeline designed to progressively learn modality-agnostic embeddings. The **emergent cross-modal behavior** is another notable outcome, enabling the system to recognize correlations between modalities without explicit training on all possible pairs, further enhancing its adaptability and practicality.

#### Emergent traits
Emergent traits refer to the novel behaviors or functionalities that arise in a system due to the interactions between its individual components. In the context of cross-modal learning, it implies the model can perform tasks or exhibit abilities not explicitly programmed or trained for. This often arises from the complex interplay of information learned from different modalities, allowing the model to generalize and infer relationships beyond the training data. **The model can perform tasks that were not explicitly trained for.** For instance, a model trained to align images and text might be able to perform zero-shot object localization, identifying objects in images based on textual descriptions it has never seen before. **This demonstrates a higher level of understanding and reasoning.** A key challenge is understanding and controlling these emergent traits, ensuring they align with desired outcomes and don't lead to unintended biases or behaviors. **This emphasizes the black-box nature of such traits.**

#### Flexible training
Flexible training in multimodal learning is crucial for real-world applicability. It allows models to handle incomplete or noisy data by leveraging available information without strict modality alignment. **Contrastive learning** can be particularly effective, aligning modalities in a shared embedding space even with missing pairs. A well-designed training strategy should also consider the specific characteristics of each modality, using **dimensionality-specific encoders** to optimize feature extraction and avoid reliance on consistent semantics. Furthermore, a **multi-stage training pipeline** can progressively build a modality-agnostic embedding space, first capturing fine-grained relationships at the object level and then developing unified scene representations. Flexible training promotes **emergent cross-modal behavior**.

#### No perfect data
**The pursuit of 'perfect data' in multi-modal 3D scene understanding is often unrealistic.** Real-world data inherently suffers from occlusions, sensor limitations, noise, and missing modalities. **Relying solely on perfectly aligned and complete datasets limits the practical applicability** of research. Methods should be robust to incomplete or noisy data, acknowledging that some modalities might be missing or poorly aligned. **Flexibility in handling imperfect data is vital**, as it mirrors the challenges encountered in real-world deployment scenarios, such as construction sites or robotic navigation, where data acquisition is rarely ideal and assumptions on data must be relaxed.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15011/x2.png)

> 🔼 CrossOver is a multimodal scene understanding framework that aligns different modalities (RGB images, point clouds, CAD models, floor plans, and text descriptions) within a shared embedding space.  It uses a two-stage approach: first, an Instance-Level Multimodal Interaction module captures interactions between modalities at the instance level; second, a Scene-Level Multimodal Interaction module combines instance-level information to generate a single scene-level feature vector.  Finally, Unified Dimensionality Encoders process each modality independently, interacting with the scene-level feature vector, to eliminate the need for precise semantic instance information and enable cross-modal alignment at the scene level.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of CrossOver. Given a scene 𝒮𝒮\mathcal{S}caligraphic_S and its instances 𝒪isubscript𝒪𝑖\mathcal{O}_{i}caligraphic_O start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT represented across different modalities ℐ,𝒫,ℳ,ℛ,ℱℐ𝒫ℳℛℱ\mathcal{I},\mathcal{P},\mathcal{M},\mathcal{R},\mathcal{F}caligraphic_I , caligraphic_P , caligraphic_M , caligraphic_R , caligraphic_F, the goal is to align all modalities within a shared embedding space. The Instance-Level Multimodal Interaction module captures modality interactions at the instance level within the context of a scene. This is further enhanced by the Scene-Level Multimodal Interaction module, which jointly processes all instances to represent the scene with a single feature vector ℱ𝒮subscriptℱ𝒮\mathcal{F_{S}}caligraphic_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT. The Unified Dimensionality Encoders eliminate dependency on precise semantic instance information by learning to process each scene modality independently while interacting with ℱ𝒮subscriptℱ𝒮\mathcal{F_{S}}caligraphic_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2502.15011/x3.png)

> 🔼 This figure illustrates the inference pipeline for cross-modal scene retrieval.  It begins with a query scene represented by a specific modality (e.g., a point cloud). A dimensionality-specific encoder processes this query, generating a feature vector in a shared embedding space. This feature vector is then compared to feature vectors of scenes in the target modality (e.g., floorplans) stored in a database. The scene with the closest feature vector in the target modality is identified as the retrieved scene.
> <details>
> <summary>read the caption</summary>
> Figure 3: Cross-modal Scene Retrieval Inference Pipeline. Given a query modality (𝒫𝒫\mathcal{P}caligraphic_P) that represents a scene, we obtain with the corresponding dimensionality encoder its feature vector (ℱ3⁢Dsubscriptℱ3𝐷\mathcal{F}_{3D}caligraphic_F start_POSTSUBSCRIPT 3 italic_D end_POSTSUBSCRIPT) in the shared cross-modal embedding space. We identify the closest feature vector (ℱ2⁢Dsubscriptℱ2𝐷\mathcal{F}_{2D}caligraphic_F start_POSTSUBSCRIPT 2 italic_D end_POSTSUBSCRIPT) in the target modality (ℱℱ\mathcal{F}caligraphic_F) and retrieve the corresponding scene from a database of scenes in ℱℱ\mathcal{F}caligraphic_F.
> </details>



![](https://arxiv.org/html/2502.15011/x4.png)

> 🔼 This figure shows the performance of CrossOver and other multi-modal methods on instance-level retrieval tasks using the ScanNet dataset.  Specifically, it displays the recall (the percentage of correctly identified instances) for various modality pairs (e.g., image to text, point cloud to mesh). Each bar represents a different modality pair, and the height of the bar indicates the recall rate.  The results showcase CrossOver's ability to achieve high recall across diverse modality combinations, demonstrating its effectiveness in cross-modal instance retrieval. The chart visually compares CrossOver's performance against other state-of-the-art multi-modal methods, highlighting CrossOver's superior performance.
> <details>
> <summary>read the caption</summary>
> (a) Instance Matching Recall on ScanNet
> </details>



![](https://arxiv.org/html/2502.15011/x5.png)

> 🔼 This figure presents a comparison of scene-level matching recall achieved by different methods on the ScanNet and 3RScan datasets. Scene-level matching recall assesses the ability of a method to retrieve the correct scene from a database given a query scene represented by a specific modality (e.g., RGB images or point clouds). The figure illustrates the superior performance of the proposed CrossOver method compared to several baselines, highlighting its robustness across different datasets and modalities.
> <details>
> <summary>read the caption</summary>
> (b) Scene-Level Matching Recall on ScanNet and 3RScan
> </details>



![](https://arxiv.org/html/2502.15011/x6.png)

> 🔼 Figure 4 presents the results of cross-modal instance retrieval experiments conducted on the ScanNet and 3RScan datasets.  Part (a) compares the performance of CrossOver to a simpler 'Instance Baseline' which doesn't leverage scene-level context. This demonstrates that CrossOver's superior performance stems from its ability to learn relationships between modalities at the scene level, not just the object level. Although CrossOver doesn't explicitly train on every possible modality combination, it shows emergent cross-modal behavior.  Part (b) shows that CrossOver significantly outperforms other existing multi-modal methods (ULIP-2 and PointBind) on both datasets, highlighting the robustness and effectiveness of its learned cross-modal interactions.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Cross-Modal Instance Retrieval on ScanNet and 3RScan. (a) Even though CrossOver does not explicitly train all modality combinations, it achieves emergent behavior within the embedding space. The same applies to our Instance Baseline (Ours). CrossOver performs better than our self-baseline since it incorporates more scene context in the fusion of modalities. (b) Our method outperforms all baselines in all datasets, showcasing the robustness of learned cross-modal interactions.
> </details>



![](https://arxiv.org/html/2502.15011/x7.png)

> 🔼 This figure demonstrates the effectiveness of the CrossOver model in cross-modal scene retrieval.  Using a floorplan as input (query modality ℱ), the model successfully retrieves the corresponding point cloud scene (target modality 𝒫) as the top match.  In contrast, PointBind and a simpler baseline model fail to identify the correct scene among the top four results.  The visualization also highlights a noteworthy characteristic of the CrossOver embedding space: temporal scenes (i.e., the same scene captured at different times) cluster closely together.  This is evident in the examples where similar scene layouts are retrieved with slightly different viewpoints (k=2 and k=3), demonstrating the model's ability to capture and maintain scene-level consistency across time.
> <details>
> <summary>read the caption</summary>
> Figure 5: Cross-Modal Scene Retrieval Qualitative Results on ScanNet. Given a scene in query modality ℱℱ\mathcal{F}caligraphic_F, we aim to retrieve the same scene in target modality 𝒫𝒫\mathcal{P}caligraphic_P. While PointBind and the Instance Baseline do not retrieve the correct scene within the top-4 matches, CrossOver identifies it as the top-1 match. Notably, temporal scenes appear close together in CrossOver’s embedding space (e.g., k=2𝑘2k=2italic_k = 2, k=3𝑘3k=3italic_k = 3), with retrieved scenes featuring similar object layouts to the query scene, such as the red couch in k=4𝑘4k=4italic_k = 4.
> </details>



![](https://arxiv.org/html/2502.15011/x8.png)

> 🔼 Figure 6 presents a comparative analysis of cross-modal scene retrieval performance using different methods.  The results are shown in plots for top 1, 5, 10, and 20 scene matching recall. Three modality pairs are compared: images to point clouds (I→P), images to text descriptions (I→R), and point clouds to text descriptions (P→R).  The 'Ours' and 'Instance Baseline' methods were not explicitly trained on the P→R pair. The experiment used a database of 306 scenes.  The plots demonstrate that the 'Ours' method significantly outperforms other methods, particularly the 'Instance Baseline', highlighting the improved cross-modal scene interactions enabled by the unified encoders used in the 'Ours' approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Cross-Modal Scene Retrieval on ScanNet (Scene Matching Recall). Plots showcase the top 1, 5, 10, 20 scene matching recall of different methods on three modality pairs: ℐ→𝒫→ℐ𝒫\mathcal{I}\rightarrow\mathcal{P}caligraphic_I → caligraphic_P, ℐ→ℛ→ℐℛ\mathcal{I}\rightarrow\mathcal{R}caligraphic_I → caligraphic_R, 𝒫→ℛ→𝒫ℛ\mathcal{P}\rightarrow\mathcal{R}caligraphic_P → caligraphic_R. Ours and the Instance Baseline have not been explicitly trained on 𝒫→ℛ→𝒫ℛ\mathcal{P}\rightarrow\mathcal{R}caligraphic_P → caligraphic_R. Results are computed on a database of 306 scenes and showcase the superior performance of our approach. Once again, the difference between Ours and our self-baseline is attributed to the enhanced cross-modal scene-level interactions achieved with the unified encoders.
> </details>



![](https://arxiv.org/html/2502.15011/x9.png)

> 🔼 This figure presents a comparison of instance matching recall across different modalities. The results are shown for various modality pairs, including image-to-point cloud, image-to-mesh, point cloud-to-mesh, and image-to-text. The figure showcases the relative performance of the proposed CrossOver model compared to several baseline methods, highlighting its ability to achieve robust performance across various modality combinations even without explicit object-level alignment.
> <details>
> <summary>read the caption</summary>
> (a) Instance Matching Recall
> </details>



![](https://arxiv.org/html/2502.15011/x10.png)

> 🔼 This figure shows the scene-level matching recall results on the ScanNet and 3RScan datasets. It compares the performance of the proposed CrossOver method with several baselines, including ULIP-2, PointBind, and an instance baseline. The results are presented for different recall thresholds (R@25%, R@50%, R@75%), which represent the percentage of correctly retrieved scenes among the top 25%, 50%, and 75% of retrieved results. The figure visually demonstrates the superior performance of CrossOver across all datasets and metrics.
> <details>
> <summary>read the caption</summary>
> (b) Scene-Level Matching Recall
> </details>



![](https://arxiv.org/html/2502.15011/x11.png)

> 🔼 Figure 7 shows the results of training the CrossOver model on different combinations of the ScanNet and 3RScan datasets.  The graph displays the improvement in both instance-level and scene-level matching recall when training on both datasets compared to training on only one.  The improvement highlights the benefit of using a larger and more diverse dataset for training. It also shows that training only on the 3RScan dataset and testing on ScanNet results in significantly lower performance, as expected, since 3RScan has different modalities (RGB images, point clouds, and text descriptions) than ScanNet.  This demonstrates the model's ability to leverage data from multiple sources to improve overall performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Scaled-up training performance on ScanNet. When training on both ScanNet and 3RScan datasets together, results improve from any individual dataset training. As expected, training on 3RScan and evaluating on ScanNet will have limited performance. Note that the 3RScan includes only the ℐℐ\mathcal{I}caligraphic_I, 𝒫𝒫\mathcal{P}caligraphic_P, and ℛℛ\mathcal{R}caligraphic_R modalities.
> </details>



![](https://arxiv.org/html/2502.15011/x12.png)

> 🔼 Figure 8 shows the performance of CrossOver on cross-modal scene retrieval using ScanNet.  The model retrieves scenes from point cloud data (P) given an image query (I). The plots illustrate different performance metrics: scene matching recall (overall accuracy), category recall (retrieving scenes of the same type), temporal recall (retrieving the same scene across different time points), and intra-category recall (retrieving a specific scene instance from a set of similar scenes).  The analysis is conducted for varying numbers of camera views (1, 5, 10, 15, 20) used during training to assess impact on retrieval performance, across multiple top-k results (k=1, 5, 10, 20). The maximum k value varies depending on the metric because the number of eligible matches differs based on the criteria for each metric (scene similarity, category, temporal changes).
> <details>
> <summary>read the caption</summary>
> Figure 8: Cross-Modal ℐ→𝒫→ℐ𝒫\mathcal{I}\rightarrow\mathcal{P}caligraphic_I → caligraphic_P Scene Retrieval on ScanNet. Plots showcase scene matching recall (Recall), category recall, temporal recall, and intra-category recall for different number of camera views evaluated on several Top-k𝑘kitalic_k matches. Note that maximum k𝑘kitalic_k differs per recall since the amount of eligible matches depends on the criteria for each recall type: scene similarity, category, temporal changes.
> </details>



![](https://arxiv.org/html/2502.15011/x13.png)

> 🔼 Figure 9 shows the results of cross-modal scene retrieval experiments on the 3RScan dataset.  Specifically, it examines how well the model can retrieve a scene represented by point clouds (𝒫) given a query scene represented by images (ℐ). The experiments vary the number of camera views used to generate the image representation of the query scene. The plots in the figure show both the scene matching recall and the temporal recall for different numbers of camera views. Scene matching recall measures the accuracy of retrieving the correct scene, while temporal recall measures the accuracy of retrieving the correct scene across different time points (i.e., capturing the same scene at different times).
> <details>
> <summary>read the caption</summary>
> Figure 9: Cross-Modal ℐ→𝒫→ℐ𝒫\mathcal{I}\rightarrow\mathcal{P}caligraphic_I → caligraphic_P Scene Retrieval on 3RScan. Plots showcase scene matching recall (Recall) and temporal recall for different number of camera views.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.7.7">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Scene-level Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.7.8.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.8.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.8.2">
<span class="ltx_text ltx_font_bold" id="S4.T1.7.7.8.2.1">R@25</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.8.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.7.7.8.3.1">R@50</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.8.4">
<span class="ltx_text ltx_font_bold" id="S4.T1.7.7.8.4.1">R@75</span>%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S4.T1.2.2.2.1" style="background-color:#EEEEEE;"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.2.1.1" style="background-color:#EEEEEE;">same-modal (<math alttext="\mathcal{P}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1.2.2.2.1.1.m1.1a"><mrow id="S4.T1.2.2.2.1.1.m1.1.1" xref="S4.T1.2.2.2.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.2.2.2.1.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T1.2.2.2.1.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.2.2.2.1.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T1.2.2.2.1.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.1.m1.1b"><apply id="S4.T1.2.2.2.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1"><ci id="S4.T1.2.2.2.1.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.1">→</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.2">𝒫</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.3.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.1.m1.1c">\mathcal{P}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.1.m1.1d">caligraphic_P → caligraphic_P</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.9.1">MendNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9.2">80.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9.3">64.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9.4">37.50</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.3.3.3.1">VN-DGCNN<sub class="ltx_sub" id="S4.T1.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.3.1.1.1">cls</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.2">72.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3">53.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.4">29.55</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.4.4.4.1">VN-ONet<sub class="ltx_sub" id="S4.T1.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.4.4.4.1.1.1">recon</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.2">86.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.3">71.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4">44.32</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.10.1">LivingScenes  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.10.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1.7.7.10.2.1" style="background-color:#E1FFA8;">87.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.10.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1.7.7.10.3.1" style="background-color:#E1FFA8;">78.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.10.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1.7.7.10.4.1" style="background-color:#E1FFA8;">50.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.11.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.11.2.1" style="background-color:#BFFFBF;">92.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.11.3.1" style="background-color:#BFFFBF;">84.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.11.4.1" style="background-color:#BFFFBF;">57.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.12">
<td class="ltx_td ltx_align_left" colspan="4" id="S4.T1.7.7.12.1" style="background-color:#EEEEEE;"><span class="ltx_text ltx_font_italic" id="S4.T1.7.7.12.1.1" style="background-color:#EEEEEE;">cross-modal (ours)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.5.5.1"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.1.m1.1a"><mrow id="S4.T1.5.5.5.1.m1.1.1" xref="S4.T1.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.5.5.5.1.m1.1.1.2" xref="S4.T1.5.5.5.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T1.5.5.5.1.m1.1.1.1" stretchy="false" xref="S4.T1.5.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.5.5.5.1.m1.1.1.3" xref="S4.T1.5.5.5.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><apply id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1"><ci id="S4.T1.5.5.5.1.m1.1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1.1">→</ci><ci id="S4.T1.5.5.5.1.m1.1.1.2.cmml" xref="S4.T1.5.5.5.1.m1.1.1.2">ℐ</ci><ci id="S4.T1.5.5.5.1.m1.1.1.3.cmml" xref="S4.T1.5.5.5.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.2">89.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.3">73.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.4">42.31</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.6.6.6.1"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><mrow id="S4.T1.6.6.6.1.m1.1.1" xref="S4.T1.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.6.6.6.1.m1.1.1.2" xref="S4.T1.6.6.6.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T1.6.6.6.1.m1.1.1.1" stretchy="false" xref="S4.T1.6.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.6.6.6.1.m1.1.1.3" xref="S4.T1.6.6.6.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><apply id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1"><ci id="S4.T1.6.6.6.1.m1.1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1.1">→</ci><ci id="S4.T1.6.6.6.1.m1.1.1.2.cmml" xref="S4.T1.6.6.6.1.m1.1.1.2">ℐ</ci><ci id="S4.T1.6.6.6.1.m1.1.1.3.cmml" xref="S4.T1.6.6.6.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.2">62.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.3">38.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.4">18.18</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.7.7.7.1"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.m1.1"><semantics id="S4.T1.7.7.7.1.m1.1a"><mrow id="S4.T1.7.7.7.1.m1.1.1" xref="S4.T1.7.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1.7.7.7.1.m1.1.1.2" xref="S4.T1.7.7.7.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T1.7.7.7.1.m1.1.1.1" stretchy="false" xref="S4.T1.7.7.7.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1.7.7.7.1.m1.1.1.3" xref="S4.T1.7.7.7.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.m1.1b"><apply id="S4.T1.7.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.m1.1.1"><ci id="S4.T1.7.7.7.1.m1.1.1.1.cmml" xref="S4.T1.7.7.7.1.m1.1.1.1">→</ci><ci id="S4.T1.7.7.7.1.m1.1.1.2.cmml" xref="S4.T1.7.7.7.1.m1.1.1.2">𝒫</ci><ci id="S4.T1.7.7.7.1.m1.1.1.3.cmml" xref="S4.T1.7.7.7.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.2">68.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.3">40.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.7.4">22.08</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of cross-modal scene retrieval experiments conducted on the 3RScan dataset.  It shows the performance of the CrossOver model in retrieving scenes across different modalities (image, point cloud, text description).  The table likely compares CrossOver's performance to other baselines or previous methods. The caption indicates that the results are similar to those obtained on the ScanNet dataset (reported in Table 3), suggesting consistent performance across different datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Cross-Modal Scene Retrieval on 3RScan. Similar performance to the ScanNet results in Tab. 3 is observed.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.5">
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.3.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Scene Matching Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">Temporal Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.6">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.5.5.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.2.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.3.1">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.4.1">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.5.1">top-20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.6.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.7.1">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.8.1">top-10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S4.T2.3.3.3.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T2.3.3.3.1.m1.1a"><mrow id="S4.T2.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T2.3.3.3.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T2.3.3.3.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T2.3.3.3.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><apply id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1"><ci id="S4.T2.3.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.1">→</ci><ci id="S4.T2.3.3.3.1.m1.1.1.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2">ℐ</ci><ci id="S4.T2.3.3.3.1.m1.1.1.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.7.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2">1.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.3">5.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.4">7.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.7.5">12.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.6">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.7">4.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.8">12.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.8.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.2">1.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3">4.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.4">9.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.8.5">17.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.8.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.7">4.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.8">8.51</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.9.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.2.1" style="background-color:#E1FFA8;">8.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.3.1" style="background-color:#E1FFA8;">30.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.4.1" style="background-color:#E1FFA8;">43.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.9.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.5.1" style="background-color:#E1FFA8;">64.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.6">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.7.1" style="background-color:#E1FFA8;">19.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.9.8.1" style="background-color:#E1FFA8;">42.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.10.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.2.1" style="background-color:#BFFFBF;">14.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.3.1" style="background-color:#BFFFBF;">49.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.4.1" style="background-color:#BFFFBF;">66.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.10.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.5.1" style="background-color:#BFFFBF;">83.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.6.1" style="background-color:#BFFFBF;">12.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.7.1" style="background-color:#BFFFBF;">36.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.8.1" style="background-color:#BFFFBF;">70.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left" colspan="8" id="S4.T2.4.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T2.4.4.4.1.m1.1a"><mrow id="S4.T2.4.4.4.1.m1.1.1" xref="S4.T2.4.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T2.4.4.4.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T2.4.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T2.4.4.4.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><apply id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1"><ci id="S4.T2.4.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.1">→</ci><ci id="S4.T2.4.4.4.1.m1.1.1.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2">ℐ</ci><ci id="S4.T2.4.4.4.1.m1.1.1.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.11.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.2">2.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.3">4.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.4">7.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.11.5">14.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.11.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.7">6.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.8">12.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.12.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.2">1.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.3">4.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.4">6.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.12.5">13.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.12.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.7">6.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.12.8">14.89</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.13.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.2.1" style="background-color:#BFFFBF;">8.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.3.1" style="background-color:#BFFFBF;">40.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.4.1" style="background-color:#BFFFBF;">57.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.13.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.5.1" style="background-color:#BFFFBF;">69.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.6.1" style="background-color:#BFFFBF;">6.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.7.1" style="background-color:#BFFFBF;">38.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.13.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.13.8.1" style="background-color:#BFFFBF;">63.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.14.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.2.1" style="background-color:#E1FFA8;">6.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.3.1" style="background-color:#E1FFA8;">26.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.4.1" style="background-color:#E1FFA8;">42.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.14.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.5.1" style="background-color:#E1FFA8;">62.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.14.7.1" style="background-color:#E1FFA8;">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.14.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.14.8.1" style="background-color:#BFFFBF;">63.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left" colspan="8" id="S4.T2.5.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T2.5.5.5.1.m1.1a"><mrow id="S4.T2.5.5.5.1.m1.1.1" xref="S4.T2.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T2.5.5.5.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T2.5.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T2.5.5.5.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><apply id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1"><ci id="S4.T2.5.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.1">→</ci><ci id="S4.T2.5.5.5.1.m1.1.1.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2">𝒫</ci><ci id="S4.T2.5.5.5.1.m1.1.1.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.15.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.2">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.3">3.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.4">6.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.15.5">12.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.15.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.7">6.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.15.8">6.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.16.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.2">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.3">3.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.4">6.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.16.5">13.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.16.6.1" style="background-color:#E1FFA8;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.7">6.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.16.8">6.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.17.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.2.1" style="background-color:#E1FFA8;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.3.1" style="background-color:#E1FFA8;">14.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.4.1" style="background-color:#E1FFA8;">24.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.17.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.5.1" style="background-color:#E1FFA8;">36.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.6">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.7.1" style="background-color:#E1FFA8;">14.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.17.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T2.5.5.17.8.1" style="background-color:#E1FFA8;">27.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.5.5.18.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.2.1" style="background-color:#BFFFBF;">6.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.3.1" style="background-color:#BFFFBF;">19.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.4.1" style="background-color:#BFFFBF;">32.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.5.18.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.5.1" style="background-color:#BFFFBF;">51.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.6.1" style="background-color:#BFFFBF;">8.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.7.1" style="background-color:#BFFFBF;">27.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.18.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.18.8.1" style="background-color:#BFFFBF;">51.06</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of cross-modal scene retrieval experiments conducted on the ScanNet dataset.  The table compares the performance of the proposed CrossOver model against several state-of-the-art baselines across various metrics, including scene matching recall at different thresholds (R@25%, R@50%, R@75%), scene category recall, temporal recall, and intra-category recall. The results demonstrate that CrossOver consistently outperforms the baselines in most scenarios, showcasing its ability to effectively retrieve scenes across different modalities.  However, the self-baseline (a simpler version of the CrossOver model) shows slightly better performance in some intra-category retrieval tasks, particularly for the image to text modality pair (I→R). This difference is attributed to the limitations of the text encoder used in CrossOver, suggesting an area for future improvement.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-Modal Scene Retrieval on ScanNet. We consistently outperform state-of-the-art methods and our self-baseline in most cases. The latter performs better in certain modality pairs on intra-category, with the biggest gap observed in ℐ→ℛ→ℐℛ\mathcal{I}\rightarrow\mathcal{R}caligraphic_I → caligraphic_R; this can be attributed to our less powerful text encoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.9.9">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.4.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Scene Category Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">Temporal Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1">Intra-Category Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.10">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.9.9.10.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.2.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.3.1">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.9.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.4.1">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.5"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.5.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.6"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.6.1">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T3.9.9.10.7"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.7.1">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.8"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.8.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.9"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.9.1">top-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.10.10"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.10.10.1">top-5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.4.4.4.1.m1.1a"><mrow id="S4.T3.4.4.4.1.m1.1.1" xref="S4.T3.4.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.4.4.4.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T3.4.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.4.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.4.4.4.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><apply id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1"><ci id="S4.T3.4.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1.1">→</ci><ci id="S4.T3.4.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.4.1.m1.1.1.2">ℐ</ci><ci id="S4.T3.4.4.4.1.m1.1.1.3.cmml" xref="S4.T3.4.4.4.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.11.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.2">7.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.3">25.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.11.4">43.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.5">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.6">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.11.7">3.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.8">16.77</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.9">41.53</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.11.10">55.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.12.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.2">13.78</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.3">24.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.12.4">42.95</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.12.5.1" style="background-color:#E1FFA8;">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.6">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.12.7">7.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.8">20.03</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.9">40.68</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.12.10">57.01</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.13.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.13.2.1" style="background-color:#E1FFA8;">42.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.13.3.1" style="background-color:#E1FFA8;">70.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.13.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.13.4.1" style="background-color:#E1FFA8;">81.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.13.5.1" style="background-color:#BFFFBF;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.13.6.1" style="background-color:#E1FFA8;">35.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.13.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.13.7.1" style="background-color:#E1FFA8;">60.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.13.8.1" style="background-color:#BFFFBF;">46.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.13.9.1" style="background-color:#BFFFBF;">79.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.13.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.13.10.1" style="background-color:#BFFFBF;">88.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.14.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.2.1" style="background-color:#BFFFBF;">64.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.3.1" style="background-color:#BFFFBF;">89.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.14.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.4.1" style="background-color:#BFFFBF;">94.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.5.1" style="background-color:#BFFFBF;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.6.1" style="background-color:#BFFFBF;">41.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.14.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.14.7.1" style="background-color:#BFFFBF;">84.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.14.8.1" style="background-color:#E1FFA8;">38.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.14.9.1" style="background-color:#E1FFA8;">73.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.14.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.14.10.1" style="background-color:#E1FFA8;">85.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_left" colspan="10" id="S4.T3.5.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.5.5.5.1.m1.1a"><mrow id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.5.5.5.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.5.5.5.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T3.5.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.5.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.5.5.5.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.5.5.5.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><apply id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1"><ci id="S4.T3.5.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1.1">→</ci><ci id="S4.T3.5.5.5.1.m1.1.1.2.cmml" xref="S4.T3.5.5.5.1.m1.1.1.2">ℐ</ci><ci id="S4.T3.5.5.5.1.m1.1.1.3.cmml" xref="S4.T3.5.5.5.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.15.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.2">41.92</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.3">57.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.15.4">61.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.5">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.6">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.15.7">8.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.8">19.48</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.9">42.18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.15.10">56.69</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.16.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.16.2.1" style="background-color:#E1FFA8;">49.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.3">70.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.16.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.16.4.1" style="background-color:#E1FFA8;">80.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.5">2.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.6">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.16.7">12.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.8">19.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.9">41.54</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.16.10">55.85</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.17.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.2">49.14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.17.3.1" style="background-color:#E1FFA8;">71.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.17.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.17.4.1" style="background-color:#E1FFA8;">80.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.17.5.1" style="background-color:#BFFFBF;">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.17.6.1" style="background-color:#BFFFBF;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.17.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.17.7.1" style="background-color:#E1FFA8;">46.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.17.8.1" style="background-color:#E1FFA8;">28.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.17.9.1" style="background-color:#BFFFBF;">62.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.17.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.17.10.1" style="background-color:#BFFFBF;">72.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.18.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.18.2.1" style="background-color:#BFFFBF;">57.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.18.3.1" style="background-color:#BFFFBF;">82.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.18.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.18.4.1" style="background-color:#BFFFBF;">87.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.18.5.1" style="background-color:#E1FFA8;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.18.6.1" style="background-color:#E1FFA8;">25.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.18.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.18.7.1" style="background-color:#BFFFBF;">51.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.18.8.1" style="background-color:#BFFFBF;">29.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.18.9.1" style="background-color:#E1FFA8;">57.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.18.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.18.10.1" style="background-color:#E1FFA8;">70.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<td class="ltx_td ltx_align_left" colspan="10" id="S4.T3.6.6.6.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.6.6.6.1.m1.1a"><mrow id="S4.T3.6.6.6.1.m1.1.1" xref="S4.T3.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.6.6.6.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.6.6.6.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T3.6.6.6.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.6.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.6.6.6.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.6.6.6.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><apply id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1"><ci id="S4.T3.6.6.6.1.m1.1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1.1">→</ci><ci id="S4.T3.6.6.6.1.m1.1.1.2.cmml" xref="S4.T3.6.6.6.1.m1.1.1.2">𝒫</ci><ci id="S4.T3.6.6.6.1.m1.1.1.3.cmml" xref="S4.T3.6.6.6.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.19.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.2">11.34</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.3">15.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.19.4">23.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.19.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.6">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.19.7">4.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.8">18.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.9">41.15</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.19.10">54.93</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.20.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.2">18.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.3">26.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.20.4">31.96</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.20.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.6">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.20.7">6.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.8">18.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.9">40.05</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.20.10">54.84</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.21.1">Inst. Baseline (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.2.1" style="background-color:#E1FFA8;">28.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.3.1" style="background-color:#E1FFA8;">50.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.21.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.4.1" style="background-color:#E1FFA8;">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.21.5.1" style="background-color:#BFFFBF;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.6.1" style="background-color:#E1FFA8;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.21.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.7.1" style="background-color:#E1FFA8;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.21.8.1" style="background-color:#BFFFBF;">29.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.9.1" style="background-color:#E1FFA8;">50.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.21.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.21.10.1" style="background-color:#E1FFA8;">65.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.22.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.2.1" style="background-color:#BFFFBF;">57.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.3.1" style="background-color:#BFFFBF;">79.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.22.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.4.1" style="background-color:#BFFFBF;">85.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.5.1" style="background-color:#BFFFBF;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.6.1" style="background-color:#BFFFBF;">20.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.22.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.7.1" style="background-color:#BFFFBF;">46.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.22.8.1" style="background-color:#E1FFA8;">26.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.9.1" style="background-color:#BFFFBF;">56.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.22.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.22.10.1" style="background-color:#BFFFBF;">68.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="10" id="S4.T3.7.7.7.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{F}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.7.7.7.1.m1.1a"><mrow id="S4.T3.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.7.7.7.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.7.7.7.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T3.7.7.7.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.7.7.7.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.7.7.7.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.7.7.7.1.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><apply id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1"><ci id="S4.T3.7.7.7.1.m1.1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1.1">→</ci><ci id="S4.T3.7.7.7.1.m1.1.1.2.cmml" xref="S4.T3.7.7.7.1.m1.1.1.2">ℐ</ci><ci id="S4.T3.7.7.7.1.m1.1.1.3.cmml" xref="S4.T3.7.7.7.1.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\mathcal{I}\rightarrow\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">caligraphic_I → caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.23.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.23.2.1" style="background-color:#E1FFA8;">38.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.3">55.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.23.4">64.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.5">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.6">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.23.7">10.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.8">18.48</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.9">39.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.23.10">55.96</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.24.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.2">35.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.3.1" style="background-color:#E1FFA8;">62.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.24.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.4.1" style="background-color:#E1FFA8;">72.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.6.1" style="background-color:#E1FFA8;">11.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.24.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.7.1" style="background-color:#E1FFA8;">21.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.8.1" style="background-color:#E1FFA8;">20.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.9.1" style="background-color:#E1FFA8;">43.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.24.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.24.10.1" style="background-color:#E1FFA8;">58.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.25.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.2.1" style="background-color:#BFFFBF;">58.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.3.1" style="background-color:#BFFFBF;">81.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.25.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.4.1" style="background-color:#BFFFBF;">89.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.5.1" style="background-color:#BFFFBF;">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.6.1" style="background-color:#BFFFBF;">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.25.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.7.1" style="background-color:#BFFFBF;">61.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.8.1" style="background-color:#BFFFBF;">28.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.9.1" style="background-color:#BFFFBF;">55.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.25.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.25.10.1" style="background-color:#BFFFBF;">71.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_align_left" colspan="10" id="S4.T3.8.8.8.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{F}" class="ltx_Math" display="inline" id="S4.T3.8.8.8.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.8.8.8.1.m1.1a"><mrow id="S4.T3.8.8.8.1.m1.1.1" xref="S4.T3.8.8.8.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.8.8.8.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.8.8.8.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T3.8.8.8.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.8.8.8.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.8.8.8.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.8.8.8.1.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.1.m1.1b"><apply id="S4.T3.8.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.8.1.m1.1.1"><ci id="S4.T3.8.8.8.1.m1.1.1.1.cmml" xref="S4.T3.8.8.8.1.m1.1.1.1">→</ci><ci id="S4.T3.8.8.8.1.m1.1.1.2.cmml" xref="S4.T3.8.8.8.1.m1.1.1.2">𝒫</ci><ci id="S4.T3.8.8.8.1.m1.1.1.3.cmml" xref="S4.T3.8.8.8.1.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.1.m1.1c">\mathcal{P}\rightarrow\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.1.m1.1d">caligraphic_P → caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.26.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.2">13.14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.3">26.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.26.4">33.65</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.26.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.6">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.26.7">6.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.8">17.46</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.9">38.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.26.10">53.99</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.27.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.2.1" style="background-color:#E1FFA8;">14.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.3.1" style="background-color:#E1FFA8;">48.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.27.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.4.1" style="background-color:#E1FFA8;">59.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.5">0.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.6.1" style="background-color:#E1FFA8;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.27.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.7.1" style="background-color:#E1FFA8;">7.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.8.1" style="background-color:#E1FFA8;">23.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.9.1" style="background-color:#E1FFA8;">39.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.27.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.27.10.1" style="background-color:#E1FFA8;">57.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.28.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.2.1" style="background-color:#BFFFBF;">55.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.3.1" style="background-color:#BFFFBF;">78.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.28.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.4.1" style="background-color:#BFFFBF;">86.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.5.1" style="background-color:#BFFFBF;">10.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.6.1" style="background-color:#BFFFBF;">30.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.28.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.7.1" style="background-color:#BFFFBF;">57.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.8.1" style="background-color:#BFFFBF;">31.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.9.1" style="background-color:#BFFFBF;">63.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.28.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.28.10.1" style="background-color:#BFFFBF;">74.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.9">
<td class="ltx_td ltx_align_left" colspan="10" id="S4.T3.9.9.9.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{R}\rightarrow\mathcal{F}" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T3.9.9.9.1.m1.1a"><mrow id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.9.9.9.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T3.9.9.9.1.m1.1.1.2.cmml">ℛ</mi><mo id="S4.T3.9.9.9.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T3.9.9.9.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T3.9.9.9.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T3.9.9.9.1.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><apply id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1"><ci id="S4.T3.9.9.9.1.m1.1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1.1">→</ci><ci id="S4.T3.9.9.9.1.m1.1.1.2.cmml" xref="S4.T3.9.9.9.1.m1.1.1.2">ℛ</ci><ci id="S4.T3.9.9.9.1.m1.1.1.3.cmml" xref="S4.T3.9.9.9.1.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">\mathcal{R}\rightarrow\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">caligraphic_R → caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.29.1">ULIP-2  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.2">8.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.29.3.1" style="background-color:#E1FFA8;">29.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.29.4">40.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.29.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.6">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.29.7">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.29.8.1" style="background-color:#E1FFA8;">18.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.29.9.1" style="background-color:#E1FFA8;">41.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.29.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.29.10.1" style="background-color:#E1FFA8;">55.35</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.30.1">PointBind  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.30.2.1" style="background-color:#E1FFA8;">14.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.3">27.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.30.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.30.4.1" style="background-color:#E1FFA8;">48.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.30.5.1" style="background-color:#E1FFA8;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.30.6.1" style="background-color:#E1FFA8;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.9.9.30.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T3.9.9.30.7.1" style="background-color:#E1FFA8;">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.8">13.64</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.9">38.32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.30.10">54.20</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.31">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.9.9.31.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.2.1" style="background-color:#BFFFBF;">54.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.3.1" style="background-color:#BFFFBF;">74.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.9.9.31.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.4.1" style="background-color:#BFFFBF;">80.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.5.1" style="background-color:#BFFFBF;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.6.1" style="background-color:#BFFFBF;">17.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S4.T3.9.9.31.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.7.1" style="background-color:#BFFFBF;">35.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.8.1" style="background-color:#BFFFBF;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.9.1" style="background-color:#BFFFBF;">51.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.31.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.31.10.1" style="background-color:#BFFFBF;">66.84</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the robustness of CrossOver's instance matching performance when training data for different modalities are sourced from separate repositories, resulting in non-overlapping data.  The table shows that even with significantly less data in one or both modality pairs, the model maintains high performance, demonstrating its ability to generalize and leverage relationships between modalities even when training data is limited or incomplete.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on 𝒫→ℳ→𝒫ℳ\mathcal{P}\rightarrow\mathcal{M}caligraphic_P → caligraphic_M instance matching on ScanNet with non-overlapping data per modality pair. Despite modality pairs not sharing the same image repository, our method retains high performance even when a pair is underrepresented in the data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.3">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Available Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T4.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Instance Matching Recall</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.1" style="background-color:#EEEEEE;">
<math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T4.2.2.2.1.m1.1a"><mrow id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.2.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T4.2.2.2.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T4.2.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T4.2.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T4.2.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><ci id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.1">→</ci><ci id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2">ℐ</ci><ci id="S4.T4.2.2.2.1.m1.1.1.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.1.1" style="background-color:#EEEEEE;"> (%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3.2" style="background-color:#EEEEEE;">
<math alttext="\mathcal{I}\rightarrow\mathcal{M}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.2.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T4.3.3.3.2.m1.1a"><mrow id="S4.T4.3.3.3.2.m1.1.1" xref="S4.T4.3.3.3.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.3.3.3.2.m1.1.1.2" mathbackground="#EEEEEE" xref="S4.T4.3.3.3.2.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T4.3.3.3.2.m1.1.1.1" mathbackground="#EEEEEE" stretchy="false" xref="S4.T4.3.3.3.2.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T4.3.3.3.2.m1.1.1.3" mathbackground="#EEEEEE" xref="S4.T4.3.3.3.2.m1.1.1.3.cmml">ℳ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.2.m1.1b"><apply id="S4.T4.3.3.3.2.m1.1.1.cmml" xref="S4.T4.3.3.3.2.m1.1.1"><ci id="S4.T4.3.3.3.2.m1.1.1.1.cmml" xref="S4.T4.3.3.3.2.m1.1.1.1">→</ci><ci id="S4.T4.3.3.3.2.m1.1.1.2.cmml" xref="S4.T4.3.3.3.2.m1.1.1.2">ℐ</ci><ci id="S4.T4.3.3.3.2.m1.1.1.3.cmml" xref="S4.T4.3.3.3.2.m1.1.1.3">ℳ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.2.m1.1c">\mathcal{I}\rightarrow\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.2.m1.1d">caligraphic_I → caligraphic_M</annotation></semantics></math><span class="ltx_text" id="S4.T4.3.3.3.2.1" style="background-color:#EEEEEE;"> (%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1">same</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.4.1">diff</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.5.1">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.6.1">top-3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.1">25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.4.2">75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.3">86.32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.4.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.4.4.1" style="background-color:#BFFFBF;">73.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.5">55.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.6">79.73</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.5">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.1">50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.5.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.5.3.1" style="background-color:#BFFFBF;">87.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.5.4">70.02</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T4.3.3.5.5.1" style="background-color:#E1FFA8;">57.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T4.3.3.5.6.1" style="background-color:#E1FFA8;">79.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.6">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.1">75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.6.2">25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3">87.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.6.4">67.65</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.5">54.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.6">79.45</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.3.3.7.1">100</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.3.3.7.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.3.3.7.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T4.3.3.7.3.1" style="background-color:#E1FFA8;">87.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.3.3.7.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T4.3.3.7.4.1" style="background-color:#E1FFA8;">72.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.3.3.7.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.5.1" style="background-color:#BFFFBF;">59.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.3.3.7.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.6.1" style="background-color:#BFFFBF;">80.81</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of scene-level matching on the ScanNet dataset. Two sets of results are shown: one where the instance-level encoder was trained using all pairwise combinations of modalities ('All Pairs') and one using the method described in the paper ('Ours'). The results show that training with all pairwise modalities does not lead to a significant improvement in performance compared to the proposed method. This is true even for modality pairs that are not directly aligned in the 'Ours' (emergent) results.  This suggests that the proposed method's approach of focused modality alignment is more effective.
> <details>
> <summary>read the caption</summary>
> Table B.1: Scene-level matching results on ScanNet. ‘All Pairs’ refers to training our instance-level encoder with all pairwise modality combinations. As shown, training on all pairwise combinations does not provide drastically improved performance, as one would expect, even in the modality pairs that are not directly aligned in ‘Ours’ (emergent).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.F7.sf2.7.7">
<tr class="ltx_tr" id="S1.F7.sf2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S1.F7.sf2.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S1.F7.sf2.1.1.1.1.1" style="font-size:144%;">Scene-level Recall</span><span class="ltx_text" id="S1.F7.sf2.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.F7.sf2.1.1.1.1.m1.1"><semantics id="S1.F7.sf2.1.1.1.1.m1.1a"><mo id="S1.F7.sf2.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S1.F7.sf2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.1.1.1.1.m1.1b"><ci id="S1.F7.sf2.1.1.1.1.m1.1.1.cmml" xref="S1.F7.sf2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.F7.sf2.7.7.8.1"><span class="ltx_text" id="S1.F7.sf2.7.7.8.1.1" style="font-size:144%;">Trained on</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.F7.sf2.7.7.8.2">
<span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.8.2.1" style="font-size:144%;">R@25</span><span class="ltx_text" id="S1.F7.sf2.7.7.8.2.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.F7.sf2.7.7.8.3">
<span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.8.3.1" style="font-size:144%;">R@50</span><span class="ltx_text" id="S1.F7.sf2.7.7.8.3.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.F7.sf2.7.7.8.4">
<span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.8.4.1" style="font-size:144%;">R@75</span><span class="ltx_text" id="S1.F7.sf2.7.7.8.4.2" style="font-size:144%;">%</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S1.F7.sf2.2.2.2.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{M}" class="ltx_Math" display="inline" id="S1.F7.sf2.2.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S1.F7.sf2.2.2.2.1.m1.1a"><mrow id="S1.F7.sf2.2.2.2.1.m1.1.1" xref="S1.F7.sf2.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.2.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.2.2.2.1.m1.1.1.2.cmml">𝒫</mi><mo id="S1.F7.sf2.2.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S1.F7.sf2.2.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.2.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.2.2.2.1.m1.1.1.3.cmml">ℳ</mi></mrow><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.2.2.2.1.m1.1b"><apply id="S1.F7.sf2.2.2.2.1.m1.1.1.cmml" xref="S1.F7.sf2.2.2.2.1.m1.1.1"><ci id="S1.F7.sf2.2.2.2.1.m1.1.1.1.cmml" xref="S1.F7.sf2.2.2.2.1.m1.1.1.1">→</ci><ci id="S1.F7.sf2.2.2.2.1.m1.1.1.2.cmml" xref="S1.F7.sf2.2.2.2.1.m1.1.1.2">𝒫</ci><ci id="S1.F7.sf2.2.2.2.1.m1.1.1.3.cmml" xref="S1.F7.sf2.2.2.2.1.m1.1.1.3">ℳ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.2.2.2.1.m1.1c">\mathcal{P}\rightarrow\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.2.2.2.1.m1.1d">caligraphic_P → caligraphic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.9.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.9.1.1" style="font-size:144%;">3RScan</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.9.2"><span class="ltx_text" id="S1.F7.sf2.7.7.9.2.1" style="font-size:144%;">22.44</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.9.3"><span class="ltx_text" id="S1.F7.sf2.7.7.9.3.1" style="font-size:144%;">8.01</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.9.4"><span class="ltx_text" id="S1.F7.sf2.7.7.9.4.1" style="font-size:144%;">2.24</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.10.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.10.1.1" style="font-size:144%;">Scannet</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.10.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.10.2.1" style="font-size:144%;background-color:#BFFFBF;">86.54</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.10.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.10.3.1" style="font-size:144%;background-color:#E1FFA8;">64.42</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.10.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.10.4.1" style="font-size:144%;background-color:#E1FFA8;">33.97</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.3.3.3.1.1" style="font-size:144%;">3RScan <math alttext="+" class="ltx_Math" display="inline" id="S1.F7.sf2.3.3.3.1.1.m1.1"><semantics id="S1.F7.sf2.3.3.3.1.1.m1.1a"><mo id="S1.F7.sf2.3.3.3.1.1.m1.1.1" xref="S1.F7.sf2.3.3.3.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.3.3.3.1.1.m1.1b"><plus id="S1.F7.sf2.3.3.3.1.1.m1.1.1.cmml" xref="S1.F7.sf2.3.3.3.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.3.3.3.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.3.3.3.1.1.m1.1d">+</annotation></semantics></math> Scannet</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.3.3.3.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.3.3.3.2.1" style="font-size:144%;background-color:#BFFFBF;">86.54</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.3.3.3.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.3.3.3.3.1" style="font-size:144%;background-color:#E1FFA8;">63.46</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.3.3.3.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.3.3.3.4.1" style="font-size:144%;background-color:#BFFFBF;">34.29</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.4.4.4">
<td class="ltx_td ltx_align_left" colspan="4" id="S1.F7.sf2.4.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S1.F7.sf2.4.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S1.F7.sf2.4.4.4.1.m1.1a"><mrow id="S1.F7.sf2.4.4.4.1.m1.1.1" xref="S1.F7.sf2.4.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.4.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.4.4.4.1.m1.1.1.2.cmml">𝒫</mi><mo id="S1.F7.sf2.4.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S1.F7.sf2.4.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.4.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.4.4.4.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.4.4.4.1.m1.1b"><apply id="S1.F7.sf2.4.4.4.1.m1.1.1.cmml" xref="S1.F7.sf2.4.4.4.1.m1.1.1"><ci id="S1.F7.sf2.4.4.4.1.m1.1.1.1.cmml" xref="S1.F7.sf2.4.4.4.1.m1.1.1.1">→</ci><ci id="S1.F7.sf2.4.4.4.1.m1.1.1.2.cmml" xref="S1.F7.sf2.4.4.4.1.m1.1.1.2">𝒫</ci><ci id="S1.F7.sf2.4.4.4.1.m1.1.1.3.cmml" xref="S1.F7.sf2.4.4.4.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.4.4.4.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.4.4.4.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.11.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.11.1.1" style="font-size:144%;">3RScan</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.11.2"><span class="ltx_text" id="S1.F7.sf2.7.7.11.2.1" style="font-size:144%;">84.54</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.11.3"><span class="ltx_text" id="S1.F7.sf2.7.7.11.3.1" style="font-size:144%;">48.80</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.11.4"><span class="ltx_text" id="S1.F7.sf2.7.7.11.4.1" style="font-size:144%;">24.74</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.12.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.12.1.1" style="font-size:144%;">Scannet</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.12.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.12.2.1" style="font-size:144%;background-color:#BFFFBF;">99.31</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.12.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.12.3.1" style="font-size:144%;background-color:#E1FFA8;">96.22</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.12.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.12.4.1" style="font-size:144%;background-color:#E1FFA8;">68.38</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.5.5.5.1.1" style="font-size:144%;">3RScan <math alttext="+" class="ltx_Math" display="inline" id="S1.F7.sf2.5.5.5.1.1.m1.1"><semantics id="S1.F7.sf2.5.5.5.1.1.m1.1a"><mo id="S1.F7.sf2.5.5.5.1.1.m1.1.1" xref="S1.F7.sf2.5.5.5.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.5.5.5.1.1.m1.1b"><plus id="S1.F7.sf2.5.5.5.1.1.m1.1.1.cmml" xref="S1.F7.sf2.5.5.5.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.5.5.5.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.5.5.5.1.1.m1.1d">+</annotation></semantics></math> Scannet</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.5.5.5.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.5.5.5.2.1" style="font-size:144%;background-color:#BFFFBF;">99.31</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.5.5.5.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.5.5.5.3.1" style="font-size:144%;background-color:#BFFFBF;">97.25</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.5.5.5.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.5.5.5.4.1" style="font-size:144%;background-color:#BFFFBF;">70.10</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.6.6.6">
<td class="ltx_td ltx_align_left" colspan="4" id="S1.F7.sf2.6.6.6.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{M}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S1.F7.sf2.6.6.6.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S1.F7.sf2.6.6.6.1.m1.1a"><mrow id="S1.F7.sf2.6.6.6.1.m1.1.1" xref="S1.F7.sf2.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.6.6.6.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.6.6.6.1.m1.1.1.2.cmml">ℳ</mi><mo id="S1.F7.sf2.6.6.6.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S1.F7.sf2.6.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S1.F7.sf2.6.6.6.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S1.F7.sf2.6.6.6.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.6.6.6.1.m1.1b"><apply id="S1.F7.sf2.6.6.6.1.m1.1.1.cmml" xref="S1.F7.sf2.6.6.6.1.m1.1.1"><ci id="S1.F7.sf2.6.6.6.1.m1.1.1.1.cmml" xref="S1.F7.sf2.6.6.6.1.m1.1.1.1">→</ci><ci id="S1.F7.sf2.6.6.6.1.m1.1.1.2.cmml" xref="S1.F7.sf2.6.6.6.1.m1.1.1.2">ℳ</ci><ci id="S1.F7.sf2.6.6.6.1.m1.1.1.3.cmml" xref="S1.F7.sf2.6.6.6.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.6.6.6.1.m1.1c">\mathcal{M}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.6.6.6.1.m1.1d">caligraphic_M → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.13.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.13.1.1" style="font-size:144%;">3RScan</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.13.2"><span class="ltx_text" id="S1.F7.sf2.7.7.13.2.1" style="font-size:144%;">68.97</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.13.3"><span class="ltx_text" id="S1.F7.sf2.7.7.13.3.1" style="font-size:144%;">48.28</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.13.4"><span class="ltx_text" id="S1.F7.sf2.7.7.13.4.1" style="font-size:144%;">22.22</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.F7.sf2.7.7.14.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.14.1.1" style="font-size:144%;">Scannet</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.14.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.14.2.1" style="font-size:144%;background-color:#BFFFBF;">99.62</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.14.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.14.3.1" style="font-size:144%;background-color:#BFFFBF;">98.47</span></td>
<td class="ltx_td ltx_align_center" id="S1.F7.sf2.7.7.14.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.14.4.1" style="font-size:144%;background-color:#E1FFA8;">82.38</span></td>
</tr>
<tr class="ltx_tr" id="S1.F7.sf2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S1.F7.sf2.7.7.7.1"><span class="ltx_text ltx_font_italic" id="S1.F7.sf2.7.7.7.1.1" style="font-size:144%;">3RScan <math alttext="+" class="ltx_Math" display="inline" id="S1.F7.sf2.7.7.7.1.1.m1.1"><semantics id="S1.F7.sf2.7.7.7.1.1.m1.1a"><mo id="S1.F7.sf2.7.7.7.1.1.m1.1.1" xref="S1.F7.sf2.7.7.7.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S1.F7.sf2.7.7.7.1.1.m1.1b"><plus id="S1.F7.sf2.7.7.7.1.1.m1.1.1.cmml" xref="S1.F7.sf2.7.7.7.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S1.F7.sf2.7.7.7.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S1.F7.sf2.7.7.7.1.1.m1.1d">+</annotation></semantics></math> Scannet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.F7.sf2.7.7.7.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.7.2.1" style="font-size:144%;background-color:#E1FFA8;">99.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.F7.sf2.7.7.7.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S1.F7.sf2.7.7.7.3.1" style="font-size:144%;background-color:#E1FFA8;">97.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.F7.sf2.7.7.7.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S1.F7.sf2.7.7.7.4.1" style="font-size:144%;background-color:#BFFFBF;">83.91</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of scene-level matching recall results on the 3RScan dataset between two training methods: one using all pairwise modality combinations during instance-level encoder training, and the other ('Ours') using a more selective approach.  The results are reported for various combinations of modalities (I-P, I-R, P-R), showing recall rates at 25%, 50%, and 75% thresholds. The comparison highlights that training with all pairwise combinations does not consistently improve performance compared to the selective approach, even for modality pairs where direct alignment wasn't explicitly performed during training.  The 'emergent' performance of the selective method suggests a capability to learn cross-modal relationships implicitly.
> <details>
> <summary>read the caption</summary>
> Table B.2: Scene-level matching results on 3RScan. ‘All Pairs’ refers to training our instance-level encoder with all pairwise modality combinations. Similar to ScanNet, training on all pairwise combinations does not provide improved performance, as one would expect, even in the modality pairs that are not directly aligned in ‘Ours’ (emergent).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.7">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S2.T1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1" style="font-size:144%;">Scene-level Recall</span><span class="ltx_text" id="S2.T1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><ci id="S2.T1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.8">
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T1.7.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.8.2">
<span class="ltx_text ltx_font_bold" id="S2.T1.7.8.2.1" style="font-size:144%;">R@25</span><span class="ltx_text" id="S2.T1.7.8.2.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.8.3">
<span class="ltx_text ltx_font_bold" id="S2.T1.7.8.3.1" style="font-size:144%;">R@50</span><span class="ltx_text" id="S2.T1.7.8.3.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.8.4">
<span class="ltx_text ltx_font_bold" id="S2.T1.7.8.4.1" style="font-size:144%;">R@75</span><span class="ltx_text" id="S2.T1.7.8.4.2" style="font-size:144%;">%</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S2.T1.2.2.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S2.T1.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.2.2.1.m1.1a"><mrow id="S2.T1.2.2.1.m1.1.1" xref="S2.T1.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.2.2.1.m1.1.1.2.cmml">ℐ</mi><mo id="S2.T1.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.2.2.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.1.m1.1b"><apply id="S2.T1.2.2.1.m1.1.1.cmml" xref="S2.T1.2.2.1.m1.1.1"><ci id="S2.T1.2.2.1.m1.1.1.1.cmml" xref="S2.T1.2.2.1.m1.1.1.1">→</ci><ci id="S2.T1.2.2.1.m1.1.1.2.cmml" xref="S2.T1.2.2.1.m1.1.1.2">ℐ</ci><ci id="S2.T1.2.2.1.m1.1.1.3.cmml" xref="S2.T1.2.2.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.9.1"><span class="ltx_text" id="S2.T1.7.9.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.9.2.1" style="font-size:144%;background-color:#E1FFA8;">97.12</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.9.3.1" style="font-size:144%;background-color:#E1FFA8;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.9.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.9.4.1" style="font-size:144%;background-color:#E1FFA8;">15.06</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.10.1"><span class="ltx_text" id="S2.T1.7.10.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.10.2.1" style="font-size:144%;background-color:#BFFFBF;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.10.3.1" style="font-size:144%;background-color:#BFFFBF;">76.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.10.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.10.4.1" style="font-size:144%;background-color:#BFFFBF;">23.40</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T1.3.3.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S2.T1.3.3.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.3.3.1.m1.1a"><mrow id="S2.T1.3.3.1.m1.1.1" xref="S2.T1.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.3.3.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.3.3.1.m1.1.1.2.cmml">ℐ</mi><mo id="S2.T1.3.3.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.3.3.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.3.3.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.3.3.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.1.m1.1b"><apply id="S2.T1.3.3.1.m1.1.1.cmml" xref="S2.T1.3.3.1.m1.1.1"><ci id="S2.T1.3.3.1.m1.1.1.1.cmml" xref="S2.T1.3.3.1.m1.1.1.1">→</ci><ci id="S2.T1.3.3.1.m1.1.1.2.cmml" xref="S2.T1.3.3.1.m1.1.1.2">ℐ</ci><ci id="S2.T1.3.3.1.m1.1.1.3.cmml" xref="S2.T1.3.3.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.11.1"><span class="ltx_text" id="S2.T1.7.11.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.11.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.11.3.1" style="font-size:144%;background-color:#E1FFA8;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.11.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.11.4.1" style="font-size:144%;background-color:#E1FFA8;">75.95</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.12.1"><span class="ltx_text" id="S2.T1.7.12.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.12.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.12.2.1" style="font-size:144%;background-color:#E1FFA8;">99.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.12.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.12.3.1" style="font-size:144%;background-color:#BFFFBF;">98.28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.12.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.12.4.1" style="font-size:144%;background-color:#BFFFBF;">76.29</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T1.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{M}" class="ltx_Math" display="inline" id="S2.T1.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.4.4.1.m1.1a"><mrow id="S2.T1.4.4.1.m1.1.1" xref="S2.T1.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.4.4.1.m1.1.1.2.cmml">ℐ</mi><mo id="S2.T1.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.4.4.1.m1.1.1.3.cmml">ℳ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.1.m1.1b"><apply id="S2.T1.4.4.1.m1.1.1.cmml" xref="S2.T1.4.4.1.m1.1.1"><ci id="S2.T1.4.4.1.m1.1.1.1.cmml" xref="S2.T1.4.4.1.m1.1.1.1">→</ci><ci id="S2.T1.4.4.1.m1.1.1.2.cmml" xref="S2.T1.4.4.1.m1.1.1.2">ℐ</ci><ci id="S2.T1.4.4.1.m1.1.1.3.cmml" xref="S2.T1.4.4.1.m1.1.1.3">ℳ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.1.m1.1c">\mathcal{I}\rightarrow\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.1.m1.1d">caligraphic_I → caligraphic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.13.1"><span class="ltx_text" id="S2.T1.7.13.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.13.2.1" style="font-size:144%;background-color:#BFFFBF;">87.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.13.3.1" style="font-size:144%;background-color:#E1FFA8;">63.14</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.13.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.13.4.1" style="font-size:144%;background-color:#E1FFA8;">33.97</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.14.1"><span class="ltx_text" id="S2.T1.7.14.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.14.2.1" style="font-size:144%;background-color:#E1FFA8;">86.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.14.3.1" style="font-size:144%;background-color:#BFFFBF;">63.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.14.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.14.4.1" style="font-size:144%;background-color:#BFFFBF;">34.29</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T1.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S2.T1.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.5.5.1.m1.1a"><mrow id="S2.T1.5.5.1.m1.1.1" xref="S2.T1.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.5.5.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.5.5.1.m1.1.1.2.cmml">𝒫</mi><mo id="S2.T1.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.5.5.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.5.5.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.1.m1.1b"><apply id="S2.T1.5.5.1.m1.1.1.cmml" xref="S2.T1.5.5.1.m1.1.1"><ci id="S2.T1.5.5.1.m1.1.1.1.cmml" xref="S2.T1.5.5.1.m1.1.1.1">→</ci><ci id="S2.T1.5.5.1.m1.1.1.2.cmml" xref="S2.T1.5.5.1.m1.1.1.2">𝒫</ci><ci id="S2.T1.5.5.1.m1.1.1.3.cmml" xref="S2.T1.5.5.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.15.1"><span class="ltx_text" id="S2.T1.7.15.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.15.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.2.1" style="font-size:144%;background-color:#BFFFBF;">99.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.15.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.3.1" style="font-size:144%;background-color:#BFFFBF;">97.25</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.15.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.15.4.1" style="font-size:144%;background-color:#BFFFBF;">75.26</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.16.1">
<span class="ltx_text" id="S2.T1.7.16.1.1" style="font-size:144%;">Ours </span><span class="ltx_text ltx_font_italic" id="S2.T1.7.16.1.2" style="font-size:144%;color:#0A9C0A;">(emergent)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.16.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.16.2.1" style="font-size:144%;background-color:#E1FFA8;">99.31</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.16.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.16.3.1" style="font-size:144%;background-color:#E1FFA8;">96.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.16.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.16.4.1" style="font-size:144%;background-color:#E1FFA8;">70.10</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.6">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T1.6.6.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{M}" class="ltx_Math" display="inline" id="S2.T1.6.6.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.6.6.1.m1.1a"><mrow id="S2.T1.6.6.1.m1.1.1" xref="S2.T1.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.6.6.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.6.6.1.m1.1.1.2.cmml">𝒫</mi><mo id="S2.T1.6.6.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.6.6.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.6.6.1.m1.1.1.3.cmml">ℳ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.1.m1.1b"><apply id="S2.T1.6.6.1.m1.1.1.cmml" xref="S2.T1.6.6.1.m1.1.1"><ci id="S2.T1.6.6.1.m1.1.1.1.cmml" xref="S2.T1.6.6.1.m1.1.1.1">→</ci><ci id="S2.T1.6.6.1.m1.1.1.2.cmml" xref="S2.T1.6.6.1.m1.1.1.2">𝒫</ci><ci id="S2.T1.6.6.1.m1.1.1.3.cmml" xref="S2.T1.6.6.1.m1.1.1.3">ℳ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.1.m1.1c">\mathcal{P}\rightarrow\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.1.m1.1d">caligraphic_P → caligraphic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.17.1"><span class="ltx_text" id="S2.T1.7.17.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.17.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.17.2.1" style="font-size:144%;background-color:#BFFFBF;">89.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.17.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.17.3.1" style="font-size:144%;background-color:#BFFFBF;">65.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.17.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.17.4.1" style="font-size:144%;background-color:#E1FFA8;">35.26</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.18.1">
<span class="ltx_text" id="S2.T1.7.18.1.1" style="font-size:144%;">Ours </span><span class="ltx_text ltx_font_italic" id="S2.T1.7.18.1.2" style="font-size:144%;color:#0A9C0A;">(emergent)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.18.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.18.2.1" style="font-size:144%;background-color:#E1FFA8;">87.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.18.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.18.3.1" style="font-size:144%;background-color:#E1FFA8;">61.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.18.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.18.4.1" style="font-size:144%;background-color:#E1FFA8;">30.77</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.7">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T1.7.7.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{M}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S2.T1.7.7.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T1.7.7.1.m1.1a"><mrow id="S2.T1.7.7.1.m1.1.1" xref="S2.T1.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.7.7.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.7.7.1.m1.1.1.2.cmml">ℳ</mi><mo id="S2.T1.7.7.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T1.7.7.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.7.7.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T1.7.7.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.1.m1.1b"><apply id="S2.T1.7.7.1.m1.1.1.cmml" xref="S2.T1.7.7.1.m1.1.1"><ci id="S2.T1.7.7.1.m1.1.1.1.cmml" xref="S2.T1.7.7.1.m1.1.1.1">→</ci><ci id="S2.T1.7.7.1.m1.1.1.2.cmml" xref="S2.T1.7.7.1.m1.1.1.2">ℳ</ci><ci id="S2.T1.7.7.1.m1.1.1.3.cmml" xref="S2.T1.7.7.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.1.m1.1c">\mathcal{M}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.1.m1.1d">caligraphic_M → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.7.19.1"><span class="ltx_text" id="S2.T1.7.19.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.19.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.19.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.19.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.19.3.1" style="font-size:144%;background-color:#BFFFBF;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.7.19.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.19.4.1" style="font-size:144%;background-color:#E1FFA8;">83.52</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T1.7.20.1">
<span class="ltx_text" id="S2.T1.7.20.1.1" style="font-size:144%;">Ours </span><span class="ltx_text ltx_font_italic" id="S2.T1.7.20.1.2" style="font-size:144%;color:#0A9C0A;">(emergent)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.7.20.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.20.2.1" style="font-size:144%;background-color:#E1FFA8;">99.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.7.20.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T1.7.20.3.1" style="font-size:144%;background-color:#E1FFA8;">97.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.7.20.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.20.4.1" style="font-size:144%;background-color:#BFFFBF;">83.91</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table C.1 presents the results of same-modality scene retrieval experiments conducted on the ScanNet dataset.  The table compares the performance of the proposed CrossOver method against several baseline methods (ULIP-2, PointBind, and an instance-level baseline) across various metrics, including top-k scene matching recall, scene category recall, temporal recall, and intra-category recall.  The results demonstrate that CrossOver achieves comparable or superior performance to the baselines across all metrics.  This finding supports the claim that the individual modalities within CrossOver's learned embedding space are well-aligned, even though the model was primarily trained with a cross-modal objective.
> <details>
> <summary>read the caption</summary>
> Table C.1: Same-Modality Scene Retrieval on ScanNet. Our method performs on par with or better than baselines in same-modality scene retrieval across most metrics, indicating that individual modalities in our method are closely aligned within the embedding space, despite the cross-modal training objective.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.4">
<tr class="ltx_tr" id="S2.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S2.T2.1.1.1">
<span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1" style="font-size:144%;">Scene-level Recall</span><span class="ltx_text" id="S2.T2.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.1.1.1.m1.1"><semantics id="S2.T2.1.1.1.m1.1a"><mo id="S2.T2.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S2.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.m1.1b"><ci id="S2.T2.1.1.1.m1.1.1.cmml" xref="S2.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.5">
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T2.4.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.5.2">
<span class="ltx_text ltx_font_bold" id="S2.T2.4.5.2.1" style="font-size:144%;">R@25</span><span class="ltx_text" id="S2.T2.4.5.2.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.5.3">
<span class="ltx_text ltx_font_bold" id="S2.T2.4.5.3.1" style="font-size:144%;">R@50</span><span class="ltx_text" id="S2.T2.4.5.3.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.5.4">
<span class="ltx_text ltx_font_bold" id="S2.T2.4.5.4.1" style="font-size:144%;">R@75</span><span class="ltx_text" id="S2.T2.4.5.4.2" style="font-size:144%;">%</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S2.T2.2.2.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S2.T2.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T2.2.2.1.m1.1a"><mrow id="S2.T2.2.2.1.m1.1.1" xref="S2.T2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.2.2.1.m1.1.1.2.cmml">ℐ</mi><mo id="S2.T2.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T2.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T2.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.2.2.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.1.m1.1b"><apply id="S2.T2.2.2.1.m1.1.1.cmml" xref="S2.T2.2.2.1.m1.1.1"><ci id="S2.T2.2.2.1.m1.1.1.1.cmml" xref="S2.T2.2.2.1.m1.1.1.1">→</ci><ci id="S2.T2.2.2.1.m1.1.1.2.cmml" xref="S2.T2.2.2.1.m1.1.1.2">ℐ</ci><ci id="S2.T2.2.2.1.m1.1.1.3.cmml" xref="S2.T2.2.2.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.6.1"><span class="ltx_text" id="S2.T2.4.6.1.1" style="font-size:144%;">All Pair loss</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.6.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.6.2.1" style="font-size:144%;background-color:#BFFFBF;">99.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.6.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T2.4.6.3.1" style="font-size:144%;background-color:#E1FFA8;">77.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.6.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T2.4.6.4.1" style="font-size:144%;background-color:#E1FFA8;">17.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.7.1"><span class="ltx_text" id="S2.T2.4.7.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.7.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.7.2.1" style="font-size:144%;background-color:#BFFFBF;">99.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.7.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.7.3.1" style="font-size:144%;background-color:#BFFFBF;">79.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.7.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.7.4.1" style="font-size:144%;background-color:#BFFFBF;">22.93</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.3">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T2.3.3.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S2.T2.3.3.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T2.3.3.1.m1.1a"><mrow id="S2.T2.3.3.1.m1.1.1" xref="S2.T2.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.3.3.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.3.3.1.m1.1.1.2.cmml">ℐ</mi><mo id="S2.T2.3.3.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T2.3.3.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T2.3.3.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.3.3.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.1.m1.1b"><apply id="S2.T2.3.3.1.m1.1.1.cmml" xref="S2.T2.3.3.1.m1.1.1"><ci id="S2.T2.3.3.1.m1.1.1.1.cmml" xref="S2.T2.3.3.1.m1.1.1.1">→</ci><ci id="S2.T2.3.3.1.m1.1.1.2.cmml" xref="S2.T2.3.3.1.m1.1.1.2">ℐ</ci><ci id="S2.T2.3.3.1.m1.1.1.3.cmml" xref="S2.T2.3.3.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.8.1"><span class="ltx_text" id="S2.T2.4.8.1.1" style="font-size:144%;">All Pair Loss</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.8.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.8.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.8.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.8.3.1" style="font-size:144%;background-color:#BFFFBF;">97.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.8.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T2.4.8.4.1" style="font-size:144%;background-color:#E1FFA8;">62.42</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.9.1"><span class="ltx_text" id="S2.T2.4.9.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.9.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.9.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.9.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.9.3.1" style="font-size:144%;background-color:#BFFFBF;">97.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.9.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.9.4.1" style="font-size:144%;background-color:#BFFFBF;">67.79</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.4">
<td class="ltx_td ltx_align_left" colspan="4" id="S2.T2.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S2.T2.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S2.T2.4.4.1.m1.1a"><mrow id="S2.T2.4.4.1.m1.1.1" xref="S2.T2.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.4.4.1.m1.1.1.2.cmml">𝒫</mi><mo id="S2.T2.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S2.T2.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S2.T2.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S2.T2.4.4.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.1.m1.1b"><apply id="S2.T2.4.4.1.m1.1.1.cmml" xref="S2.T2.4.4.1.m1.1.1"><ci id="S2.T2.4.4.1.m1.1.1.1.cmml" xref="S2.T2.4.4.1.m1.1.1.1">→</ci><ci id="S2.T2.4.4.1.m1.1.1.2.cmml" xref="S2.T2.4.4.1.m1.1.1.2">𝒫</ci><ci id="S2.T2.4.4.1.m1.1.1.3.cmml" xref="S2.T2.4.4.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T2.4.10.1"><span class="ltx_text" id="S2.T2.4.10.1.1" style="font-size:144%;">All Pair Loss</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.10.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.10.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.10.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.10.3.1" style="font-size:144%;background-color:#BFFFBF;">93.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.10.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.10.4.1" style="font-size:144%;background-color:#BFFFBF;">54.36</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T2.4.11.1">
<span class="ltx_text" id="S2.T2.4.11.1.1" style="font-size:144%;">Ours </span><span class="ltx_text ltx_font_italic" id="S2.T2.4.11.1.2" style="font-size:144%;color:#0A9C0A;">(emergent)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.4.11.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S2.T2.4.11.2.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.4.11.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T2.4.11.3.1" style="font-size:144%;background-color:#E1FFA8;">89.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.4.11.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S2.T2.4.11.4.1" style="font-size:144%;background-color:#E1FFA8;">50.34</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table C.2 presents the results of same-modality scene retrieval experiments conducted on the 3RScan dataset.  It compares the performance of the proposed CrossOver method against several established baselines (ULIP-2, PointBind, and an instance-level baseline) across various metrics including top-k scene retrieval recall (top-1, top-5, top-10), scene category recall, temporal recall, and intra-category recall. The results show that CrossOver achieves comparable or better performance than the baselines, despite the limited training data available for the 3RScan dataset, which likely accounts for the slightly lower overall performance compared to the ScanNet results presented in Table C.1.
> <details>
> <summary>read the caption</summary>
> Table C.2: Same-Modality Scene Retrieval on 3RScan. Our method performs on par with or better than baselines in same-modality scene retrieval across most metrics. The lower performance on this dataset is likely due to limited training data availability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.8">
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.4.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1" style="font-size:144%;">Scene Category Recall</span><span class="ltx_text" id="S3.T1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.2.2.2">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1" style="font-size:144%;">Temporal Recall</span><span class="ltx_text" id="S3.T1.2.2.2.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.3.3.3">
<span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.1" style="font-size:144%;">Intra-Category Recall</span><span class="ltx_text" id="S3.T1.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.9">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.8.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.2.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.3.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.8.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.4.1" style="font-size:144%;">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.5"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.5.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.6"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.6.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S3.T1.8.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.7.1" style="font-size:144%;">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.8.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.9"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.9.1" style="font-size:144%;">top-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.9.10"><span class="ltx_text ltx_font_bold" id="S3.T1.8.9.10.1" style="font-size:144%;">top-5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S3.T1.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{I}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T1.4.4.1.m1.1a"><mrow id="S3.T1.4.4.1.m1.1.1" xref="S3.T1.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.4.4.1.m1.1.1.2.cmml">ℐ</mi><mo id="S3.T1.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T1.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T1.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.4.4.1.m1.1.1.3.cmml">ℐ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><apply id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1"><ci id="S3.T1.4.4.1.m1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1">→</ci><ci id="S3.T1.4.4.1.m1.1.1.2.cmml" xref="S3.T1.4.4.1.m1.1.1.2">ℐ</ci><ci id="S3.T1.4.4.1.m1.1.1.3.cmml" xref="S3.T1.4.4.1.m1.1.1.3">ℐ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">\mathcal{I}\rightarrow\mathcal{I}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">caligraphic_I → caligraphic_I</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.10.1">
<span class="ltx_text" id="S3.T1.8.10.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T1.8.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.2"><span class="ltx_text" id="S3.T1.8.10.2.1" style="font-size:144%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.3"><span class="ltx_text" id="S3.T1.8.10.3.1" style="font-size:144%;">44.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.10.4"><span class="ltx_text" id="S3.T1.8.10.4.1" style="font-size:144%;">56.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.5"><span class="ltx_text" id="S3.T1.8.10.5.1" style="font-size:144%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.6"><span class="ltx_text" id="S3.T1.8.10.6.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.10.7"><span class="ltx_text" id="S3.T1.8.10.7.1" style="font-size:144%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.8"><span class="ltx_text" id="S3.T1.8.10.8.1" style="font-size:144%;">89.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.9"><span class="ltx_text" id="S3.T1.8.10.9.1" style="font-size:144%;">96.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.10"><span class="ltx_text" id="S3.T1.8.10.10.1" style="font-size:144%;">96.91</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.11.1">
<span class="ltx_text" id="S3.T1.8.11.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T1.8.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.2.1" style="font-size:144%;background-color:#BFFFBF;">93.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.11.3.1" style="font-size:144%;background-color:#E1FFA8;">96.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.11.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.4.1" style="font-size:144%;background-color:#BFFFBF;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.5.1" style="font-size:144%;background-color:#BFFFBF;">22.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.6.1" style="font-size:144%;background-color:#BFFFBF;">59.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.11.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.7.1" style="font-size:144%;background-color:#BFFFBF;">99.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.11.8.1" style="font-size:144%;background-color:#E1FFA8;">90.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.11.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.12.1"><span class="ltx_text" id="S3.T1.8.12.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.12.2.1" style="font-size:144%;background-color:#E1FFA8;">89.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.3"><span class="ltx_text" id="S3.T1.8.12.3.1" style="font-size:144%;">95.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.12.4"><span class="ltx_text" id="S3.T1.8.12.4.1" style="font-size:144%;">97.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.12.5.1" style="font-size:144%;background-color:#BFFFBF;">22.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.12.6.1" style="font-size:144%;background-color:#E1FFA8;">58.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.12.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.12.7.1" style="font-size:144%;background-color:#BFFFBF;">99.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.8"><span class="ltx_text" id="S3.T1.8.12.8.1" style="font-size:144%;">80.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.12.9.1" style="font-size:144%;background-color:#E1FFA8;">98.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.12.10.1" style="font-size:144%;background-color:#E1FFA8;">99.87</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.13.1"><span class="ltx_text" id="S3.T1.8.13.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.2"><span class="ltx_text" id="S3.T1.8.13.2.1" style="font-size:144%;">91.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.3.1" style="font-size:144%;background-color:#BFFFBF;">97.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.13.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.13.4.1" style="font-size:144%;background-color:#E1FFA8;">98.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.13.5.1" style="font-size:144%;background-color:#E1FFA8;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.6.1" style="font-size:144%;background-color:#BFFFBF;">59.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.13.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.13.7.1" style="font-size:144%;background-color:#E1FFA8;">98.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.8.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.13.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_left" colspan="10" id="S3.T1.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{R}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T1.5.5.1.m1.1a"><mrow id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.5.5.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.5.5.1.m1.1.1.2.cmml">ℛ</mi><mo id="S3.T1.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T1.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T1.5.5.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.5.5.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><apply id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1"><ci id="S3.T1.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1">→</ci><ci id="S3.T1.5.5.1.m1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.2">ℛ</ci><ci id="S3.T1.5.5.1.m1.1.1.3.cmml" xref="S3.T1.5.5.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">\mathcal{R}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">caligraphic_R → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.14.1">
<span class="ltx_text" id="S3.T1.8.14.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.14.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T1.8.14.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.2"><span class="ltx_text" id="S3.T1.8.14.2.1" style="font-size:144%;">11.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.3"><span class="ltx_text" id="S3.T1.8.14.3.1" style="font-size:144%;">18.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.14.4"><span class="ltx_text" id="S3.T1.8.14.4.1" style="font-size:144%;">24.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.5"><span class="ltx_text" id="S3.T1.8.14.5.1" style="font-size:144%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.6"><span class="ltx_text" id="S3.T1.8.14.6.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.14.7"><span class="ltx_text" id="S3.T1.8.14.7.1" style="font-size:144%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.8"><span class="ltx_text" id="S3.T1.8.14.8.1" style="font-size:144%;">36.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.9"><span class="ltx_text" id="S3.T1.8.14.9.1" style="font-size:144%;">57.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.14.10"><span class="ltx_text" id="S3.T1.8.14.10.1" style="font-size:144%;">66.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.15.1">
<span class="ltx_text" id="S3.T1.8.15.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.15.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T1.8.15.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.2"><span class="ltx_text" id="S3.T1.8.15.2.1" style="font-size:144%;">11.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.3"><span class="ltx_text" id="S3.T1.8.15.3.1" style="font-size:144%;">18.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.15.4"><span class="ltx_text" id="S3.T1.8.15.4.1" style="font-size:144%;">24.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.5"><span class="ltx_text" id="S3.T1.8.15.5.1" style="font-size:144%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.6"><span class="ltx_text" id="S3.T1.8.15.6.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.15.7"><span class="ltx_text" id="S3.T1.8.15.7.1" style="font-size:144%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.8"><span class="ltx_text" id="S3.T1.8.15.8.1" style="font-size:144%;">36.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.9"><span class="ltx_text" id="S3.T1.8.15.9.1" style="font-size:144%;">57.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.15.10"><span class="ltx_text" id="S3.T1.8.15.10.1" style="font-size:144%;">66.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.16.1"><span class="ltx_text" id="S3.T1.8.16.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.16.2.1" style="font-size:144%;background-color:#E1FFA8;">69.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.16.3.1" style="font-size:144%;background-color:#BFFFBF;">91.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.16.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.16.4.1" style="font-size:144%;background-color:#BFFFBF;">94.16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.16.5.1" style="font-size:144%;background-color:#BFFFBF;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.16.6.1" style="font-size:144%;background-color:#BFFFBF;">51.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.16.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.16.7.1" style="font-size:144%;background-color:#BFFFBF;">83.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.16.8.1" style="font-size:144%;background-color:#E1FFA8;">86.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.16.9.1" style="font-size:144%;background-color:#E1FFA8;">97.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.16.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.16.10.1" style="font-size:144%;background-color:#E1FFA8;">99.20</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.17.1"><span class="ltx_text" id="S3.T1.8.17.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.17.2.1" style="font-size:144%;background-color:#BFFFBF;">76.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.17.3.1" style="font-size:144%;background-color:#E1FFA8;">91.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.17.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.17.4.1" style="font-size:144%;background-color:#E1FFA8;">94.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.17.5.1" style="font-size:144%;background-color:#BFFFBF;">14.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.17.6.1" style="font-size:144%;background-color:#E1FFA8;">40.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.17.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.17.7.1" style="font-size:144%;background-color:#E1FFA8;">79.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.17.8.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.17.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.17.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.17.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<td class="ltx_td ltx_align_left" colspan="10" id="S3.T1.6.6.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T1.6.6.1.m1.1a"><mrow id="S3.T1.6.6.1.m1.1.1" xref="S3.T1.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.6.6.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.6.6.1.m1.1.1.2.cmml">𝒫</mi><mo id="S3.T1.6.6.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T1.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T1.6.6.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.6.6.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><apply id="S3.T1.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1"><ci id="S3.T1.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1.1">→</ci><ci id="S3.T1.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.1.m1.1.1.2">𝒫</ci><ci id="S3.T1.6.6.1.m1.1.1.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">\mathcal{P}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">caligraphic_P → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.18.1">
<span class="ltx_text" id="S3.T1.8.18.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.18.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T1.8.18.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.2"><span class="ltx_text" id="S3.T1.8.18.2.1" style="font-size:144%;">13.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.3"><span class="ltx_text" id="S3.T1.8.18.3.1" style="font-size:144%;">13.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.18.4"><span class="ltx_text" id="S3.T1.8.18.4.1" style="font-size:144%;">23.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.5"><span class="ltx_text" id="S3.T1.8.18.5.1" style="font-size:144%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.6"><span class="ltx_text" id="S3.T1.8.18.6.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.18.7"><span class="ltx_text" id="S3.T1.8.18.7.1" style="font-size:144%;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.8"><span class="ltx_text" id="S3.T1.8.18.8.1" style="font-size:144%;">21.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.9"><span class="ltx_text" id="S3.T1.8.18.9.1" style="font-size:144%;">42.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.18.10"><span class="ltx_text" id="S3.T1.8.18.10.1" style="font-size:144%;">57.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.19.1">
<span class="ltx_text" id="S3.T1.8.19.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.19.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T1.8.19.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.2"><span class="ltx_text" id="S3.T1.8.19.2.1" style="font-size:144%;">17.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.3"><span class="ltx_text" id="S3.T1.8.19.3.1" style="font-size:144%;">58.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.19.4"><span class="ltx_text" id="S3.T1.8.19.4.1" style="font-size:144%;">71.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.5"><span class="ltx_text" id="S3.T1.8.19.5.1" style="font-size:144%;">7.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.6"><span class="ltx_text" id="S3.T1.8.19.6.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.19.7"><span class="ltx_text" id="S3.T1.8.19.7.1" style="font-size:144%;">45.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.8"><span class="ltx_text" id="S3.T1.8.19.8.1" style="font-size:144%;">59.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.9"><span class="ltx_text" id="S3.T1.8.19.9.1" style="font-size:144%;">90.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.19.10"><span class="ltx_text" id="S3.T1.8.19.10.1" style="font-size:144%;">96.46</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.20.1"><span class="ltx_text" id="S3.T1.8.20.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.2.1" style="font-size:144%;background-color:#E1FFA8;">38.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.3.1" style="font-size:144%;background-color:#E1FFA8;">75.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.20.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.4.1" style="font-size:144%;background-color:#E1FFA8;">85.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.5.1" style="font-size:144%;background-color:#E1FFA8;">14.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.6.1" style="font-size:144%;background-color:#E1FFA8;">42.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.20.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.7.1" style="font-size:144%;background-color:#E1FFA8;">73.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.8.1" style="font-size:144%;background-color:#E1FFA8;">86.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.9.1" style="font-size:144%;background-color:#E1FFA8;">97.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.20.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.20.10.1" style="font-size:144%;background-color:#E1FFA8;">99.81</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.21.1"><span class="ltx_text" id="S3.T1.8.21.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.2.1" style="font-size:144%;background-color:#BFFFBF;">86.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.3.1" style="font-size:144%;background-color:#BFFFBF;">95.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.21.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.4.1" style="font-size:144%;background-color:#BFFFBF;">96.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.5.1" style="font-size:144%;background-color:#BFFFBF;">19.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.6.1" style="font-size:144%;background-color:#BFFFBF;">57.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.21.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.7.1" style="font-size:144%;background-color:#BFFFBF;">96.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.8.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.21.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.21.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="10" id="S3.T1.7.7.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{F}\rightarrow\mathcal{F}" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T1.7.7.1.m1.1a"><mrow id="S3.T1.7.7.1.m1.1.1" xref="S3.T1.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.7.7.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.7.7.1.m1.1.1.2.cmml">ℱ</mi><mo id="S3.T1.7.7.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T1.7.7.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T1.7.7.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.7.7.1.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.1b"><apply id="S3.T1.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1"><ci id="S3.T1.7.7.1.m1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1">→</ci><ci id="S3.T1.7.7.1.m1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.2">ℱ</ci><ci id="S3.T1.7.7.1.m1.1.1.3.cmml" xref="S3.T1.7.7.1.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.1c">\mathcal{F}\rightarrow\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.1d">caligraphic_F → caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.22.1">
<span class="ltx_text" id="S3.T1.8.22.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.22.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T1.8.22.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.2"><span class="ltx_text" id="S3.T1.8.22.2.1" style="font-size:144%;">13.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.3"><span class="ltx_text" id="S3.T1.8.22.3.1" style="font-size:144%;">24.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.22.4"><span class="ltx_text" id="S3.T1.8.22.4.1" style="font-size:144%;">41.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.5"><span class="ltx_text" id="S3.T1.8.22.5.1" style="font-size:144%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.6"><span class="ltx_text" id="S3.T1.8.22.6.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.22.7"><span class="ltx_text" id="S3.T1.8.22.7.1" style="font-size:144%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.22.8.1" style="font-size:144%;background-color:#E1FFA8;">99.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.22.9.1" style="font-size:144%;background-color:#E1FFA8;">99.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.22.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.22.10.1" style="font-size:144%;background-color:#E1FFA8;">99.89</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.23.1">
<span class="ltx_text" id="S3.T1.8.23.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.8.23.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T1.8.23.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.2.1" style="font-size:144%;background-color:#E1FFA8;">63.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.3.1" style="font-size:144%;background-color:#E1FFA8;">82.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.23.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.4.1" style="font-size:144%;background-color:#E1FFA8;">89.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.5.1" style="font-size:144%;background-color:#E1FFA8;">7.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.6.1" style="font-size:144%;background-color:#E1FFA8;">37.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.23.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.23.7.1" style="font-size:144%;background-color:#E1FFA8;">67.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.23.8.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.23.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.23.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.23.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.24.1"><span class="ltx_text" id="S3.T1.8.24.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T1.8.24.2.1" style="font-size:144%;background-color:#E1FFA8;">59.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.3.1" style="font-size:144%;background-color:#BFFFBF;">83.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.8.24.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.4.1" style="font-size:144%;background-color:#BFFFBF;">90.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.5.1" style="font-size:144%;background-color:#BFFFBF;">14.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.6.1" style="font-size:144%;background-color:#BFFFBF;">43.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S3.T1.8.24.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.7.1" style="font-size:144%;background-color:#BFFFBF;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.8.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.9.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.24.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.24.10.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="10" id="S3.T1.8.8.1" style="background-color:#EEEEEE;"><math alttext="\mathbf{F}_{\mathcal{S}}\rightarrow\mathbf{F}_{\mathcal{S}}" class="ltx_Math" display="inline" id="S3.T1.8.8.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T1.8.8.1.m1.1a"><mrow id="S3.T1.8.8.1.m1.1.1" xref="S3.T1.8.8.1.m1.1.1.cmml"><msub id="S3.T1.8.8.1.m1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.2.cmml"><mi id="S3.T1.8.8.1.m1.1.1.2.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.8.8.1.m1.1.1.2.2.cmml">𝐅</mi><mi class="ltx_font_mathcaligraphic" id="S3.T1.8.8.1.m1.1.1.2.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.8.8.1.m1.1.1.2.3.cmml">𝒮</mi></msub><mo id="S3.T1.8.8.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T1.8.8.1.m1.1.1.1.cmml">→</mo><msub id="S3.T1.8.8.1.m1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.3.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.8.8.1.m1.1.1.3.2.cmml">𝐅</mi><mi class="ltx_font_mathcaligraphic" id="S3.T1.8.8.1.m1.1.1.3.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T1.8.8.1.m1.1.1.3.3.cmml">𝒮</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.1.m1.1b"><apply id="S3.T1.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1"><ci id="S3.T1.8.8.1.m1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1">→</ci><apply id="S3.T1.8.8.1.m1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.2.1.cmml" xref="S3.T1.8.8.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.2.2.cmml" xref="S3.T1.8.8.1.m1.1.1.2.2">𝐅</ci><ci id="S3.T1.8.8.1.m1.1.1.2.3.cmml" xref="S3.T1.8.8.1.m1.1.1.2.3">𝒮</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.3.cmml" xref="S3.T1.8.8.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.3">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.3.2">𝐅</ci><ci id="S3.T1.8.8.1.m1.1.1.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.3.3">𝒮</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.1.m1.1c">\mathbf{F}_{\mathcal{S}}\rightarrow\mathbf{F}_{\mathcal{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.1.m1.1d">bold_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT → bold_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.25">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.8.25.1"><span class="ltx_text" id="S3.T1.8.25.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.2"><span class="ltx_text" id="S3.T1.8.25.2.1" style="font-size:144%;">94.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.3"><span class="ltx_text" id="S3.T1.8.25.3.1" style="font-size:144%;">97.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.8.25.4"><span class="ltx_text" id="S3.T1.8.25.4.1" style="font-size:144%;">98.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.5"><span class="ltx_text" id="S3.T1.8.25.5.1" style="font-size:144%;">17.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.6"><span class="ltx_text" id="S3.T1.8.25.6.1" style="font-size:144%;">57.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S3.T1.8.25.7"><span class="ltx_text" id="S3.T1.8.25.7.1" style="font-size:144%;">99.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.8"><span class="ltx_text" id="S3.T1.8.25.8.1" style="font-size:144%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.9"><span class="ltx_text" id="S3.T1.8.25.9.1" style="font-size:144%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.25.10"><span class="ltx_text" id="S3.T1.8.25.10.1" style="font-size:144%;">100</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different approaches for cross-modal scene retrieval on the ScanNet dataset.  The methods compared are: 1) a unified encoder trained using all pairwise modality combinations, 2) a scene-level encoder using a single modality input, and 3) the proposed CrossOver model.  The table shows that the CrossOver model generally outperforms both the all-pairs method and the uni-modal scene-level approach in terms of scene matching recall, scene category recall, temporal recall, and intra-category recall.  A key finding is that the scene-level encoder's performance is significantly affected by its dependence on instance-level data, whereas the CrossOver model's unified dimensionality encoders are more robust to the absence of specific modalities.
> <details>
> <summary>read the caption</summary>
> Table D.1: Uni-modal & All pair-wise modality training on Scene-Level Encoder Inference on Cross-Modal Scene Retrieval on ScanNet. ‘All Pairs’ refers to training our unified encoder with all pairwise modality combinations. ‘Uni-modal’ refers to the scene-level encoder with single-modality input. As shown in the Table, our approach outperforms the scene-level encoder and ‘All Pairs’ in most cases. Unlike the unified dimensionality encoders, the scene-level encoder relies on instance-level data, even when operating on a single modality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.5">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1" style="font-size:144%;">Temporal Recall</span><span class="ltx_text" id="S3.T2.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.6">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T2.5.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.6.2.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.6.3"><span class="ltx_text ltx_font_bold" id="S3.T2.5.6.3.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.6.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.6.4.1" style="font-size:144%;">top-10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="S3.T2.2.2.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{I}" class="ltx_Math" display="inline" id="S3.T2.2.2.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T2.2.2.1.m1.1a"><mrow id="S3.T2.2.2.1.m1.1.1" xref="S3.T2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T2.2.2.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.2.2.1.m1.1.1.2.cmml">ℐ</mi><mo id="S3.T2.2.2.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T2.2.2.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T2.2.2.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.2.2.1.m1.1.1.3.cmml">ℐ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.1.m1.1b"><apply id="S3.T2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.1.m1.1.1"><ci id="S3.T2.2.2.1.m1.1.1.1.cmml" xref="S3.T2.2.2.1.m1.1.1.1">→</ci><ci id="S3.T2.2.2.1.m1.1.1.2.cmml" xref="S3.T2.2.2.1.m1.1.1.2">ℐ</ci><ci id="S3.T2.2.2.1.m1.1.1.3.cmml" xref="S3.T2.2.2.1.m1.1.1.3">ℐ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.1.m1.1c">\mathcal{I}\rightarrow\mathcal{I}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.1.m1.1d">caligraphic_I → caligraphic_I</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.7.1">
<span class="ltx_text" id="S3.T2.5.7.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T2.5.7.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.7.2"><span class="ltx_text" id="S3.T2.5.7.2.1" style="font-size:144%;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.7.3"><span class="ltx_text" id="S3.T2.5.7.3.1" style="font-size:144%;">8.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.7.4"><span class="ltx_text" id="S3.T2.5.7.4.1" style="font-size:144%;">29.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.8.1">
<span class="ltx_text" id="S3.T2.5.8.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T2.5.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.8.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.8.2.1" style="font-size:144%;background-color:#E1FFA8;">10.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.8.3"><span class="ltx_text" id="S3.T2.5.8.3.1" style="font-size:144%;">51.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.8.4"><span class="ltx_text" id="S3.T2.5.8.4.1" style="font-size:144%;">93.62</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.9.1"><span class="ltx_text" id="S3.T2.5.9.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.9.2"><span class="ltx_text" id="S3.T2.5.9.2.1" style="font-size:144%;">4.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.9.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.9.3.1" style="font-size:144%;background-color:#BFFFBF;">65.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.9.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.9.4.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.10.1"><span class="ltx_text" id="S3.T2.5.10.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.10.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.10.2.1" style="font-size:144%;background-color:#BFFFBF;">17.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.10.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.10.3.1" style="font-size:144%;background-color:#E1FFA8;">61.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.10.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.10.4.1" style="font-size:144%;background-color:#BFFFBF;">100</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3">
<td class="ltx_td ltx_align_left" colspan="4" id="S3.T2.3.3.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{R}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S3.T2.3.3.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T2.3.3.1.m1.1a"><mrow id="S3.T2.3.3.1.m1.1.1" xref="S3.T2.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T2.3.3.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.3.3.1.m1.1.1.2.cmml">ℛ</mi><mo id="S3.T2.3.3.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T2.3.3.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T2.3.3.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.3.3.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.1.m1.1b"><apply id="S3.T2.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.1.m1.1.1"><ci id="S3.T2.3.3.1.m1.1.1.1.cmml" xref="S3.T2.3.3.1.m1.1.1.1">→</ci><ci id="S3.T2.3.3.1.m1.1.1.2.cmml" xref="S3.T2.3.3.1.m1.1.1.2">ℛ</ci><ci id="S3.T2.3.3.1.m1.1.1.3.cmml" xref="S3.T2.3.3.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.1.m1.1c">\mathcal{R}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.1.m1.1d">caligraphic_R → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.11.1">
<span class="ltx_text" id="S3.T2.5.11.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T2.5.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.11.2"><span class="ltx_text" id="S3.T2.5.11.2.1" style="font-size:144%;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.11.3"><span class="ltx_text" id="S3.T2.5.11.3.1" style="font-size:144%;">6.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.11.4"><span class="ltx_text" id="S3.T2.5.11.4.1" style="font-size:144%;">8.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.12.1">
<span class="ltx_text" id="S3.T2.5.12.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.12.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T2.5.12.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.12.2"><span class="ltx_text" id="S3.T2.5.12.2.1" style="font-size:144%;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.12.3"><span class="ltx_text" id="S3.T2.5.12.3.1" style="font-size:144%;">6.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.12.4"><span class="ltx_text" id="S3.T2.5.12.4.1" style="font-size:144%;">8.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.13.1"><span class="ltx_text" id="S3.T2.5.13.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.13.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.13.2.1" style="font-size:144%;background-color:#BFFFBF;">19.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.13.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.13.3.1" style="font-size:144%;background-color:#BFFFBF;">46.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.13.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.13.4.1" style="font-size:144%;background-color:#E1FFA8;">91.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.14.1"><span class="ltx_text" id="S3.T2.5.14.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.14.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.14.2.1" style="font-size:144%;background-color:#E1FFA8;">12.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.14.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.14.3.1" style="font-size:144%;background-color:#E1FFA8;">51.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.14.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.14.4.1" style="font-size:144%;background-color:#BFFFBF;">87.23</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4">
<td class="ltx_td ltx_align_left" colspan="4" id="S3.T2.4.4.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S3.T2.4.4.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T2.4.4.1.m1.1a"><mrow id="S3.T2.4.4.1.m1.1.1" xref="S3.T2.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T2.4.4.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.4.4.1.m1.1.1.2.cmml">𝒫</mi><mo id="S3.T2.4.4.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T2.4.4.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S3.T2.4.4.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.4.4.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.1.m1.1b"><apply id="S3.T2.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.1.m1.1.1"><ci id="S3.T2.4.4.1.m1.1.1.1.cmml" xref="S3.T2.4.4.1.m1.1.1.1">→</ci><ci id="S3.T2.4.4.1.m1.1.1.2.cmml" xref="S3.T2.4.4.1.m1.1.1.2">𝒫</ci><ci id="S3.T2.4.4.1.m1.1.1.3.cmml" xref="S3.T2.4.4.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.1.m1.1c">\mathcal{P}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.1.m1.1d">caligraphic_P → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.15.1">
<span class="ltx_text" id="S3.T2.5.15.1.1" style="font-size:144%;">ULIP-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.15.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S3.T2.5.15.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.15.2"><span class="ltx_text" id="S3.T2.5.15.2.1" style="font-size:144%;">0.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.15.3"><span class="ltx_text" id="S3.T2.5.15.3.1" style="font-size:144%;">4.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.15.4"><span class="ltx_text" id="S3.T2.5.15.4.1" style="font-size:144%;">6.38</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.16.1">
<span class="ltx_text" id="S3.T2.5.16.1.1" style="font-size:144%;">PointBind </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.5.16.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.15011v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T2.5.16.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.16.2"><span class="ltx_text" id="S3.T2.5.16.2.1" style="font-size:144%;">2.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.16.3"><span class="ltx_text" id="S3.T2.5.16.3.1" style="font-size:144%;">17.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.16.4"><span class="ltx_text" id="S3.T2.5.16.4.1" style="font-size:144%;">36.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.17.1"><span class="ltx_text" id="S3.T2.5.17.1.1" style="font-size:144%;">Inst. Baseline (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.17.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.17.2.1" style="font-size:144%;background-color:#E1FFA8;">6.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.17.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.17.3.1" style="font-size:144%;background-color:#E1FFA8;">29.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.17.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S3.T2.5.17.4.1" style="font-size:144%;background-color:#E1FFA8;">3.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.18.1"><span class="ltx_text" id="S3.T2.5.18.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.18.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.18.2.1" style="font-size:144%;background-color:#BFFFBF;">19.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.18.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.18.3.1" style="font-size:144%;background-color:#BFFFBF;">65.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.18.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.18.4.1" style="font-size:144%;background-color:#BFFFBF;">97.87</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="4" id="S3.T2.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathbf{F}_{\mathcal{S}}\rightarrow\mathbf{F}_{\mathcal{S}}" class="ltx_Math" display="inline" id="S3.T2.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S3.T2.5.5.1.m1.1a"><mrow id="S3.T2.5.5.1.m1.1.1" xref="S3.T2.5.5.1.m1.1.1.cmml"><msub id="S3.T2.5.5.1.m1.1.1.2" xref="S3.T2.5.5.1.m1.1.1.2.cmml"><mi id="S3.T2.5.5.1.m1.1.1.2.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.5.5.1.m1.1.1.2.2.cmml">𝐅</mi><mi class="ltx_font_mathcaligraphic" id="S3.T2.5.5.1.m1.1.1.2.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.5.5.1.m1.1.1.2.3.cmml">𝒮</mi></msub><mo id="S3.T2.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S3.T2.5.5.1.m1.1.1.1.cmml">→</mo><msub id="S3.T2.5.5.1.m1.1.1.3" xref="S3.T2.5.5.1.m1.1.1.3.cmml"><mi id="S3.T2.5.5.1.m1.1.1.3.2" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.5.5.1.m1.1.1.3.2.cmml">𝐅</mi><mi class="ltx_font_mathcaligraphic" id="S3.T2.5.5.1.m1.1.1.3.3" mathbackground="#EEEEEE" mathsize="144%" xref="S3.T2.5.5.1.m1.1.1.3.3.cmml">𝒮</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.1.m1.1b"><apply id="S3.T2.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.1.m1.1.1"><ci id="S3.T2.5.5.1.m1.1.1.1.cmml" xref="S3.T2.5.5.1.m1.1.1.1">→</ci><apply id="S3.T2.5.5.1.m1.1.1.2.cmml" xref="S3.T2.5.5.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.5.5.1.m1.1.1.2.1.cmml" xref="S3.T2.5.5.1.m1.1.1.2">subscript</csymbol><ci id="S3.T2.5.5.1.m1.1.1.2.2.cmml" xref="S3.T2.5.5.1.m1.1.1.2.2">𝐅</ci><ci id="S3.T2.5.5.1.m1.1.1.2.3.cmml" xref="S3.T2.5.5.1.m1.1.1.2.3">𝒮</ci></apply><apply id="S3.T2.5.5.1.m1.1.1.3.cmml" xref="S3.T2.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.5.5.1.m1.1.1.3.1.cmml" xref="S3.T2.5.5.1.m1.1.1.3">subscript</csymbol><ci id="S3.T2.5.5.1.m1.1.1.3.2.cmml" xref="S3.T2.5.5.1.m1.1.1.3.2">𝐅</ci><ci id="S3.T2.5.5.1.m1.1.1.3.3.cmml" xref="S3.T2.5.5.1.m1.1.1.3.3">𝒮</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.1.m1.1c">\mathbf{F}_{\mathcal{S}}\rightarrow\mathbf{F}_{\mathcal{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.1.m1.1d">bold_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT → bold_F start_POSTSUBSCRIPT caligraphic_S end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.19">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.5.19.1"><span class="ltx_text" id="S3.T2.5.19.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.19.2"><span class="ltx_text" id="S3.T2.5.19.2.1" style="font-size:144%;">17.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.19.3"><span class="ltx_text" id="S3.T2.5.19.3.1" style="font-size:144%;">59.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.19.4"><span class="ltx_text" id="S3.T2.5.19.4.1" style="font-size:144%;">97.87</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of cross-modal scene retrieval performance on the 3RScan dataset using different training methods for the scene-level encoder.  The methods compared are: using all pairwise modality combinations during training ('All Pairs'), using only a single input modality ('Uni-modal'), and the proposed CrossOver method ('Ours').  The metrics used are scene matching recall (top-1, top-5, top-10, top-20) and temporal recall (top-1, top-5, top-10). The results show that CrossOver significantly outperforms the uni-modal scene-level encoder in most cases and generally performs better than the 'All Pairs' training approach. The superior performance of CrossOver is attributed to its use of unified dimensionality encoders that do not rely on instance-level data, unlike the scene-level encoder.
> <details>
> <summary>read the caption</summary>
> Table D.2: Uni-modal & All pair-wise modality training on Scene-Level Encoder Inference on Cross-Modal Scene Retrieval on 3RScan. ‘All Pairs’ refers to training our unified encoder with all pairwise modality combinations. ‘Uni-modal’ refers to the scene-level encoder with single-modality input. As shown in the Table, our approach outperforms the scene-level encoder in all but one case. Unlike the unified dimensionality encoders, the scene-level encoder relies on instance-level data, even when operating with a single modality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1a.7.7">
<tr class="ltx_tr" id="S4.T1a.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1a.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.4.5.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1a.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T1a.1.1.1.1.1" style="font-size:144%;">Scene Matching Recall</span><span class="ltx_text" id="S4.T1a.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.1.1.1.1.m1.1"><semantics id="S4.T1a.1.1.1.1.m1.1a"><mo id="S4.T1a.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.1.1.1.1.m1.1b"><ci id="S4.T1a.1.1.1.1.m1.1.1.cmml" xref="S4.T1a.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1a.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.2.1" style="font-size:144%;">Scene Category Recall</span><span class="ltx_text" id="S4.T1a.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.2.2.2.2.m1.1"><semantics id="S4.T1a.2.2.2.2.m1.1a"><mo id="S4.T1a.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.2.2.2.2.m1.1b"><ci id="S4.T1a.2.2.2.2.m1.1.1.cmml" xref="S4.T1a.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1a.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T1a.3.3.3.3.1" style="font-size:144%;">Temporal Recall</span><span class="ltx_text" id="S4.T1a.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.3.3.3.3.m1.1"><semantics id="S4.T1a.3.3.3.3.m1.1a"><mo id="S4.T1a.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.3.3.3.3.m1.1b"><ci id="S4.T1a.3.3.3.3.m1.1.1.cmml" xref="S4.T1a.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1a.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.4.4.1" style="font-size:144%;">Intra-Category Recall</span><span class="ltx_text" id="S4.T1a.4.4.4.4.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.4.4.4.4.m1.1"><semantics id="S4.T1a.4.4.4.4.m1.1a"><mo id="S4.T1a.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.4.4.4.4.m1.1b"><ci id="S4.T1a.4.4.4.4.m1.1.1.cmml" xref="S4.T1a.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.8">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T1a.7.7.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.2.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.3"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.3.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.4"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.4.1" style="font-size:144%;">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1a.7.7.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.5.1" style="font-size:144%;">top-20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.6"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.6.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.7"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.7.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1a.7.7.8.8"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.8.1" style="font-size:144%;">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.9"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.9.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.10"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.10.1" style="font-size:144%;">top-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T1a.7.7.8.11"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.11.1" style="font-size:144%;">top-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.12"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.12.1" style="font-size:144%;">top-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.13"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.13.1" style="font-size:144%;">top-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1a.7.7.8.14"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.8.14.1" style="font-size:144%;">top-5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="14" id="S4.T1a.5.5.5.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{P}" class="ltx_Math" display="inline" id="S4.T1a.5.5.5.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1a.5.5.5.1.m1.1a"><mrow id="S4.T1a.5.5.5.1.m1.1.1" xref="S4.T1a.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1a.5.5.5.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.5.5.5.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T1a.5.5.5.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S4.T1a.5.5.5.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1a.5.5.5.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.5.5.5.1.m1.1.1.3.cmml">𝒫</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1a.5.5.5.1.m1.1b"><apply id="S4.T1a.5.5.5.1.m1.1.1.cmml" xref="S4.T1a.5.5.5.1.m1.1.1"><ci id="S4.T1a.5.5.5.1.m1.1.1.1.cmml" xref="S4.T1a.5.5.5.1.m1.1.1.1">→</ci><ci id="S4.T1a.5.5.5.1.m1.1.1.2.cmml" xref="S4.T1a.5.5.5.1.m1.1.1.2">ℐ</ci><ci id="S4.T1a.5.5.5.1.m1.1.1.3.cmml" xref="S4.T1a.5.5.5.1.m1.1.1.3">𝒫</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.5.5.5.1.m1.1c">\mathcal{I}\rightarrow\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.5.5.5.1.m1.1d">caligraphic_I → caligraphic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.9.1"><span class="ltx_text" id="S4.T1a.7.7.9.1.1" style="font-size:144%;">Uni-modal</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.9.2.1" style="font-size:144%;background-color:#E1FFA8;">16.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.9.3.1" style="font-size:144%;background-color:#E1FFA8;">51.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.4"><span class="ltx_text" id="S4.T1a.7.7.9.4.1" style="font-size:144%;">66.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.9.5"><span class="ltx_text" id="S4.T1a.7.7.9.5.1" style="font-size:144%;">85.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.6"><span class="ltx_text" id="S4.T1a.7.7.9.6.1" style="font-size:144%;">36.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.7"><span class="ltx_text" id="S4.T1a.7.7.9.7.1" style="font-size:144%;">73.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.9.8"><span class="ltx_text" id="S4.T1a.7.7.9.8.1" style="font-size:144%;">85.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.9.9.1" style="font-size:144%;background-color:#BFFFBF;">14.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.10"><span class="ltx_text" id="S4.T1a.7.7.9.10.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.9.11"><span class="ltx_text" id="S4.T1a.7.7.9.11.1" style="font-size:144%;">67.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.12" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.9.12.1" style="font-size:144%;background-color:#BFFFBF;">49.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.13" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.9.13.1" style="font-size:144%;background-color:#BFFFBF;">85.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.9.14" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.9.14.1" style="font-size:144%;background-color:#BFFFBF;">91.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.10.1"><span class="ltx_text" id="S4.T1a.7.7.10.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.2"><span class="ltx_text" id="S4.T1a.7.7.10.2.1" style="font-size:144%;">16.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.3"><span class="ltx_text" id="S4.T1a.7.7.10.3.1" style="font-size:144%;">54.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.10.4.1" style="font-size:144%;background-color:#E1FFA8;">75.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.10.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.10.5.1" style="font-size:144%;background-color:#BFFFBF;">91.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.10.6.1" style="font-size:144%;background-color:#BFFFBF;">65.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.10.7.1" style="font-size:144%;background-color:#E1FFA8;">86.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.10.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.10.8.1" style="font-size:144%;background-color:#E1FFA8;">93.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.9"><span class="ltx_text" id="S4.T1a.7.7.10.9.1" style="font-size:144%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.10.10.1" style="font-size:144%;background-color:#BFFFBF;">42.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.10.11" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.10.11.1" style="font-size:144%;background-color:#E1FFA8;">77.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.12"><span class="ltx_text" id="S4.T1a.7.7.10.12.1" style="font-size:144%;">41.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.13"><span class="ltx_text" id="S4.T1a.7.7.10.13.1" style="font-size:144%;">71.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.10.14"><span class="ltx_text" id="S4.T1a.7.7.10.14.1" style="font-size:144%;">84.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.11.1"><span class="ltx_text" id="S4.T1a.7.7.11.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.2.1" style="font-size:144%;background-color:#BFFFBF;">21.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.3.1" style="font-size:144%;background-color:#BFFFBF;">57.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.4.1" style="font-size:144%;background-color:#BFFFBF;">77.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.11.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.5.1" style="font-size:144%;background-color:#E1FFA8;">89.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.6.1" style="font-size:144%;background-color:#E1FFA8;">64.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.7.1" style="font-size:144%;background-color:#BFFFBF;">89.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.11.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.8.1" style="font-size:144%;background-color:#BFFFBF;">94.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.9.1" style="font-size:144%;background-color:#E1FFA8;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.10.1" style="font-size:144%;background-color:#E1FFA8;">41.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.11.11" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.11.11.1" style="font-size:144%;background-color:#BFFFBF;">84.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.12" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.12.1" style="font-size:144%;background-color:#E1FFA8;">38.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.13" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.13.1" style="font-size:144%;background-color:#E1FFA8;">73.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.11.14" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.11.14.1" style="font-size:144%;background-color:#E1FFA8;">85.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.6.6.6">
<td class="ltx_td ltx_align_left" colspan="14" id="S4.T1a.6.6.6.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{I}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T1a.6.6.6.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1a.6.6.6.1.m1.1a"><mrow id="S4.T1a.6.6.6.1.m1.1.1" xref="S4.T1a.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1a.6.6.6.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.6.6.6.1.m1.1.1.2.cmml">ℐ</mi><mo id="S4.T1a.6.6.6.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S4.T1a.6.6.6.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1a.6.6.6.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.6.6.6.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1a.6.6.6.1.m1.1b"><apply id="S4.T1a.6.6.6.1.m1.1.1.cmml" xref="S4.T1a.6.6.6.1.m1.1.1"><ci id="S4.T1a.6.6.6.1.m1.1.1.1.cmml" xref="S4.T1a.6.6.6.1.m1.1.1.1">→</ci><ci id="S4.T1a.6.6.6.1.m1.1.1.2.cmml" xref="S4.T1a.6.6.6.1.m1.1.1.2">ℐ</ci><ci id="S4.T1a.6.6.6.1.m1.1.1.3.cmml" xref="S4.T1a.6.6.6.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.6.6.6.1.m1.1c">\mathcal{I}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.6.6.6.1.m1.1d">caligraphic_I → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.12.1"><span class="ltx_text" id="S4.T1a.7.7.12.1.1" style="font-size:144%;">Uni-modal</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.2"><span class="ltx_text" id="S4.T1a.7.7.12.2.1" style="font-size:144%;">2.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.3"><span class="ltx_text" id="S4.T1a.7.7.12.3.1" style="font-size:144%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.4"><span class="ltx_text" id="S4.T1a.7.7.12.4.1" style="font-size:144%;">18.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.12.5"><span class="ltx_text" id="S4.T1a.7.7.12.5.1" style="font-size:144%;">29.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.6"><span class="ltx_text" id="S4.T1a.7.7.12.6.1" style="font-size:144%;">19.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.7"><span class="ltx_text" id="S4.T1a.7.7.12.7.1" style="font-size:144%;">46.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.12.8"><span class="ltx_text" id="S4.T1a.7.7.12.8.1" style="font-size:144%;">62.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.9"><span class="ltx_text" id="S4.T1a.7.7.12.9.1" style="font-size:144%;">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.10"><span class="ltx_text" id="S4.T1a.7.7.12.10.1" style="font-size:144%;">14.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.12.11"><span class="ltx_text" id="S4.T1a.7.7.12.11.1" style="font-size:144%;">19.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.12"><span class="ltx_text" id="S4.T1a.7.7.12.12.1" style="font-size:144%;">26.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.13"><span class="ltx_text" id="S4.T1a.7.7.12.13.1" style="font-size:144%;">55.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.12.14"><span class="ltx_text" id="S4.T1a.7.7.12.14.1" style="font-size:144%;">66.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.13.1"><span class="ltx_text" id="S4.T1a.7.7.13.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.13.2.1" style="font-size:144%;background-color:#E1FFA8;">7.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.3.1" style="font-size:144%;background-color:#BFFFBF;">33.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.4.1" style="font-size:144%;background-color:#BFFFBF;">50.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.13.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.5.1" style="font-size:144%;background-color:#BFFFBF;">65.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.6.1" style="font-size:144%;background-color:#BFFFBF;">65.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.7.1" style="font-size:144%;background-color:#BFFFBF;">83.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.13.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.8.1" style="font-size:144%;background-color:#BFFFBF;">88.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.9.1" style="font-size:144%;background-color:#BFFFBF;">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.10.1" style="font-size:144%;background-color:#BFFFBF;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.13.11" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.11.1" style="font-size:144%;background-color:#BFFFBF;">52.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.12" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.12.1" style="font-size:144%;background-color:#BFFFBF;">29.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.13" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.13.1" style="font-size:144%;background-color:#BFFFBF;">58.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.13.14" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.13.14.1" style="font-size:144%;background-color:#BFFFBF;">72.64</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.14.1"><span class="ltx_text" id="S4.T1a.7.7.14.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.14.2.1" style="font-size:144%;background-color:#BFFFBF;">8.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.3.1" style="font-size:144%;background-color:#E1FFA8;">31.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.4.1" style="font-size:144%;background-color:#E1FFA8;">45.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.14.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.5.1" style="font-size:144%;background-color:#E1FFA8;">59.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.6.1" style="font-size:144%;background-color:#E1FFA8;">57.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.7.1" style="font-size:144%;background-color:#E1FFA8;">82.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.14.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.8.1" style="font-size:144%;background-color:#E1FFA8;">87.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.9.1" style="font-size:144%;background-color:#E1FFA8;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.10.1" style="font-size:144%;background-color:#E1FFA8;">25.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.14.11" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.11.1" style="font-size:144%;background-color:#E1FFA8;">51.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.12" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.12.1" style="font-size:144%;background-color:#E1FFA8;">29.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.13" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.13.1" style="font-size:144%;background-color:#E1FFA8;">57.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.14.14" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.14.14.1" style="font-size:144%;background-color:#E1FFA8;">70.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.7">
<td class="ltx_td ltx_align_left" colspan="14" id="S4.T1a.7.7.7.1" style="background-color:#EEEEEE;"><math alttext="\mathcal{P}\rightarrow\mathcal{R}" class="ltx_Math" display="inline" id="S4.T1a.7.7.7.1.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1a.7.7.7.1.m1.1a"><mrow id="S4.T1a.7.7.7.1.m1.1.1" xref="S4.T1a.7.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T1a.7.7.7.1.m1.1.1.2" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.7.7.7.1.m1.1.1.2.cmml">𝒫</mi><mo id="S4.T1a.7.7.7.1.m1.1.1.1" mathbackground="#EEEEEE" mathsize="144%" stretchy="false" xref="S4.T1a.7.7.7.1.m1.1.1.1.cmml">→</mo><mi class="ltx_font_mathcaligraphic" id="S4.T1a.7.7.7.1.m1.1.1.3" mathbackground="#EEEEEE" mathsize="144%" xref="S4.T1a.7.7.7.1.m1.1.1.3.cmml">ℛ</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1a.7.7.7.1.m1.1b"><apply id="S4.T1a.7.7.7.1.m1.1.1.cmml" xref="S4.T1a.7.7.7.1.m1.1.1"><ci id="S4.T1a.7.7.7.1.m1.1.1.1.cmml" xref="S4.T1a.7.7.7.1.m1.1.1.1">→</ci><ci id="S4.T1a.7.7.7.1.m1.1.1.2.cmml" xref="S4.T1a.7.7.7.1.m1.1.1.2">𝒫</ci><ci id="S4.T1a.7.7.7.1.m1.1.1.3.cmml" xref="S4.T1a.7.7.7.1.m1.1.1.3">ℛ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.7.7.7.1.m1.1c">\mathcal{P}\rightarrow\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.7.7.7.1.m1.1d">caligraphic_P → caligraphic_R</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.15.1"><span class="ltx_text" id="S4.T1a.7.7.15.1.1" style="font-size:144%;">Uni-modal</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.2"><span class="ltx_text" id="S4.T1a.7.7.15.2.1" style="font-size:144%;">2.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.3"><span class="ltx_text" id="S4.T1a.7.7.15.3.1" style="font-size:144%;">5.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.4"><span class="ltx_text" id="S4.T1a.7.7.15.4.1" style="font-size:144%;">12.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.15.5"><span class="ltx_text" id="S4.T1a.7.7.15.5.1" style="font-size:144%;">21.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.6"><span class="ltx_text" id="S4.T1a.7.7.15.6.1" style="font-size:144%;">11.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.7"><span class="ltx_text" id="S4.T1a.7.7.15.7.1" style="font-size:144%;">39.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.15.8"><span class="ltx_text" id="S4.T1a.7.7.15.8.1" style="font-size:144%;">57.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.9"><span class="ltx_text" id="S4.T1a.7.7.15.9.1" style="font-size:144%;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.10"><span class="ltx_text" id="S4.T1a.7.7.15.10.1" style="font-size:144%;">6.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.15.11"><span class="ltx_text" id="S4.T1a.7.7.15.11.1" style="font-size:144%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.12"><span class="ltx_text" id="S4.T1a.7.7.15.12.1" style="font-size:144%;">25.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.13"><span class="ltx_text" id="S4.T1a.7.7.15.13.1" style="font-size:144%;">53.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.15.14"><span class="ltx_text" id="S4.T1a.7.7.15.14.1" style="font-size:144%;">68.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1a.7.7.16.1"><span class="ltx_text" id="S4.T1a.7.7.16.1.1" style="font-size:144%;">All Pairs</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.2" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.2.1" style="font-size:144%;background-color:#E1FFA8;">6.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.3" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.3.1" style="font-size:144%;background-color:#E1FFA8;">24.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.4" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.4.1" style="font-size:144%;background-color:#E1FFA8;">37.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.16.5" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.16.5.1" style="font-size:144%;background-color:#BFFFBF;">58.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.6" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.6.1" style="font-size:144%;background-color:#E1FFA8;">56.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.7" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.7.1" style="font-size:144%;background-color:#E1FFA8;">74.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1a.7.7.16.8" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.8.1" style="font-size:144%;background-color:#E1FFA8;">82.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.9" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.9.1" style="font-size:144%;background-color:#E1FFA8;">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.10" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.16.10.1" style="font-size:144%;background-color:#BFFFBF;">22.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1a.7.7.16.11" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.11.1" style="font-size:144%;background-color:#E1FFA8;">41.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.12" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.16.12.1" style="font-size:144%;background-color:#BFFFBF;">31.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.13" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.16.13.1" style="font-size:144%;background-color:#E1FFA8;">56.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1a.7.7.16.14" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.16.14.1" style="font-size:144%;background-color:#BFFFBF;">70.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.7.7.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1a.7.7.17.1"><span class="ltx_text" id="S4.T1a.7.7.17.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.2" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.2.1" style="font-size:144%;background-color:#BFFFBF;">7.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.3" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.3.1" style="font-size:144%;background-color:#BFFFBF;">27.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.4" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.4.1" style="font-size:144%;background-color:#BFFFBF;">44.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1a.7.7.17.5" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.17.5.1" style="font-size:144%;background-color:#E1FFA8;">57.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.6" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.6.1" style="font-size:144%;background-color:#BFFFBF;">57.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.7" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.7.1" style="font-size:144%;background-color:#BFFFBF;">79.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1a.7.7.17.8" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.8.1" style="font-size:144%;background-color:#BFFFBF;">85.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.9" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.9.1" style="font-size:144%;background-color:#BFFFBF;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.10" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.17.10.1" style="font-size:144%;background-color:#E1FFA8;">20.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S4.T1a.7.7.17.11" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.11.1" style="font-size:144%;background-color:#BFFFBF;">46.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.12" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.17.12.1" style="font-size:144%;background-color:#E1FFA8;">26.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.13" style="background-color:#BFFFBF;"><span class="ltx_text ltx_font_bold" id="S4.T1a.7.7.17.13.1" style="font-size:144%;background-color:#BFFFBF;">56.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1a.7.7.17.14" style="background-color:#E1FFA8;"><span class="ltx_text" id="S4.T1a.7.7.17.14.1" style="font-size:144%;background-color:#E1FFA8;">68.63</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table E.1 presents the results of cross-modal coarse visual localization experiments conducted on the 3RScan dataset. The task is to retrieve a scene's corresponding multi-modal map given a single image of that scene.  The evaluation uses the experimental setup from SceneGraphLoc [29].  The table compares the performance of the proposed method to SceneGraphLoc and its baselines (LidarCLIP [19] and LipLoc [36]). Despite utilizing less information within its multi-modal maps, the proposed method demonstrates competitive performance with SceneGraphLoc.
> <details>
> <summary>read the caption</summary>
> Table E.1: Cross-Modal Coarse Visual Localization on 3RScan. Given a single image of a scene, the goal is to retrieve the corresponding scene from a database of multi-modal maps. We evaluate following the experimental setup in SceneGraphLoc [29] and compare our method to it and its baselines. Despite encoding less information in our multi-modal maps, our method performs competitively with SceneGraphLoc.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15011/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15011/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}