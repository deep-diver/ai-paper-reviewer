---
title: "SparseFlex: High-Resolution and Arbitrary-Topology 3D Shape Modeling"
summary: "SparseFlex: Achieves high-res, arbitrary-topology 3D shape modeling via sparse isosurface representation and sectional voxel training. Revolutionizing 3D generative AI!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21732 {{< /keyword >}}
{{< keyword icon="writer" >}} Xianglong He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21732" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21732" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21732/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating high-fidelity 3D meshes with arbitrary topology remains a big challenge. Existing implicit field methods often need costly conversions that degrade details, and other approaches struggle with high resolutions. To tackle these issues, this paper introduces a novel sparse-structured isosurface representation that enables differentiable mesh reconstruction at high resolutions directly from rendering losses. 



The authors introduce **SparseFlex**, combining the accuracy of Flexicubes with a sparse voxel structure, focusing on surface-adjacent regions and efficiently handling open surfaces. A frustum-aware sectional voxel training strategy is introduced, activating only relevant voxels during rendering, dramatically reducing memory consumption and enabling high-resolution training. A variational autoencoder and a rectified flow transformer enable high-quality 3D shape generation with state-of-the-art reconstruction accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces SparseFlex, a new sparse-structured isosurface representation enabling efficient and high-resolution 3D shape modeling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a sectional voxel training strategy that dramatically reduces memory consumption and enables high-resolution mesh reconstruction and generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art reconstruction accuracy and generates high-resolution, detailed 3D shapes with arbitrary topology. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **SparseFlex, a novel representation for high-fidelity 3D shape modeling**. Its capacity to handle arbitrary topologies and complex geometries will be invaluable for researchers aiming to enhance 3D generative models and achieve more realistic and detailed 3D reconstructions.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21732/extracted/6315866/figs/pipeline.png)

> 🔼 SparseFlex VAE, a novel variational autoencoder, achieves high-fidelity 3D shape reconstruction and generation from point cloud inputs.  Its success stems from a sparse-structured, differentiable isosurface representation and an efficient training strategy (frustum-aware sectional voxel training). This allows it to surpass state-of-the-art performance on complex shapes with arbitrary topology, including intricate geometries, open surfaces, and even internal structures, paving the way for high-quality image-to-3D generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: SparseFlex VAE achieves high-fidelity reconstruction and generalization from point clouds. Benefiting from a sparse-structured differentiable isosurface surface representation and an efficient frustum-aware sectional voxel training strategy, our SparseFlex VAE demonstrates the state-of-the-art performance on complex geometries (left), open surfaces (top right), and even interior structures (bottom right), facilitating the high-quality image-to-3D generation with arbitrary topology.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.10.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.10.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.10.10.10.11.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.11.1.1.1" style="font-size:80%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.10.10.10.11.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.11.1.2.1" style="font-size:80%;">Toys4k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.10.10.10.11.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.11.1.3.1" style="font-size:80%;">Dora Benchmark</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{CD\downarrow}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S3.T1.1.1.1.1.1.m1.1.1.2.cmml">𝐂𝐃</mi><mo id="S3.T1.1.1.1.1.1.m1.1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S3.T1.1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1"><ci id="S3.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.1">↓</ci><ci id="S3.T1.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.2">𝐂𝐃</ci><csymbol cd="latexml" id="S3.T1.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\mathbf{CD\downarrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">bold_CD ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{F1(0.001)\uparrow}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.2.m1.1a"><mrow id="S3.T1.2.2.2.2.2.m1.1.2" xref="S3.T1.2.2.2.2.2.m1.1.2.cmml"><mrow id="S3.T1.2.2.2.2.2.m1.1.2.2" xref="S3.T1.2.2.2.2.2.m1.1.2.2.cmml"><mi id="S3.T1.2.2.2.2.2.m1.1.2.2.2" mathsize="80%" xref="S3.T1.2.2.2.2.2.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T1.2.2.2.2.2.m1.1.2.2.1" xref="S3.T1.2.2.2.2.2.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T1.2.2.2.2.2.m1.1.2.2.3.2" xref="S3.T1.2.2.2.2.2.m1.1.2.2.cmml"><mo id="S3.T1.2.2.2.2.2.m1.1.2.2.3.2.1" maxsize="80%" minsize="80%" xref="S3.T1.2.2.2.2.2.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T1.2.2.2.2.2.m1.1.1" mathsize="80%" mathvariant="bold" xref="S3.T1.2.2.2.2.2.m1.1.1.cmml">0.001</mn><mo id="S3.T1.2.2.2.2.2.m1.1.2.2.3.2.2" maxsize="80%" minsize="80%" xref="S3.T1.2.2.2.2.2.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T1.2.2.2.2.2.m1.1.2.1" mathsize="80%" stretchy="false" xref="S3.T1.2.2.2.2.2.m1.1.2.1.cmml">↑</mo><mi id="S3.T1.2.2.2.2.2.m1.1.2.3" xref="S3.T1.2.2.2.2.2.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.m1.1b"><apply id="S3.T1.2.2.2.2.2.m1.1.2.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2"><ci id="S3.T1.2.2.2.2.2.m1.1.2.1.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2.1">↑</ci><apply id="S3.T1.2.2.2.2.2.m1.1.2.2.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2.2"><times id="S3.T1.2.2.2.2.2.m1.1.2.2.1.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2.2.1"></times><ci id="S3.T1.2.2.2.2.2.m1.1.2.2.2.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T1.2.2.2.2.2.m1.1.1.cmml" type="float" xref="S3.T1.2.2.2.2.2.m1.1.1">0.001</cn></apply><csymbol cd="latexml" id="S3.T1.2.2.2.2.2.m1.1.2.3.cmml" xref="S3.T1.2.2.2.2.2.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.m1.1c">\mathbf{F1(0.001)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.m1.1d">bold_F1 ( bold_0.001 ) ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{F1(0.01)\uparrow}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.3.m1.1a"><mrow id="S3.T1.3.3.3.3.3.m1.1.2" xref="S3.T1.3.3.3.3.3.m1.1.2.cmml"><mrow id="S3.T1.3.3.3.3.3.m1.1.2.2" xref="S3.T1.3.3.3.3.3.m1.1.2.2.cmml"><mi id="S3.T1.3.3.3.3.3.m1.1.2.2.2" mathsize="80%" xref="S3.T1.3.3.3.3.3.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T1.3.3.3.3.3.m1.1.2.2.1" xref="S3.T1.3.3.3.3.3.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T1.3.3.3.3.3.m1.1.2.2.3.2" xref="S3.T1.3.3.3.3.3.m1.1.2.2.cmml"><mo id="S3.T1.3.3.3.3.3.m1.1.2.2.3.2.1" maxsize="80%" minsize="80%" xref="S3.T1.3.3.3.3.3.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T1.3.3.3.3.3.m1.1.1" mathsize="80%" mathvariant="bold" xref="S3.T1.3.3.3.3.3.m1.1.1.cmml">0.01</mn><mo id="S3.T1.3.3.3.3.3.m1.1.2.2.3.2.2" maxsize="80%" minsize="80%" xref="S3.T1.3.3.3.3.3.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T1.3.3.3.3.3.m1.1.2.1" mathsize="80%" stretchy="false" xref="S3.T1.3.3.3.3.3.m1.1.2.1.cmml">↑</mo><mi id="S3.T1.3.3.3.3.3.m1.1.2.3" xref="S3.T1.3.3.3.3.3.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.3.m1.1b"><apply id="S3.T1.3.3.3.3.3.m1.1.2.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2"><ci id="S3.T1.3.3.3.3.3.m1.1.2.1.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2.1">↑</ci><apply id="S3.T1.3.3.3.3.3.m1.1.2.2.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2.2"><times id="S3.T1.3.3.3.3.3.m1.1.2.2.1.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2.2.1"></times><ci id="S3.T1.3.3.3.3.3.m1.1.2.2.2.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T1.3.3.3.3.3.m1.1.1.cmml" type="float" xref="S3.T1.3.3.3.3.3.m1.1.1">0.01</cn></apply><csymbol cd="latexml" id="S3.T1.3.3.3.3.3.m1.1.2.3.cmml" xref="S3.T1.3.3.3.3.3.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.3.m1.1c">\mathbf{F1(0.01)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.3.m1.1d">bold_F1 ( bold_0.01 ) ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{CD\downarrow}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.4.m1.1a"><mrow id="S3.T1.4.4.4.4.4.m1.1.1" xref="S3.T1.4.4.4.4.4.m1.1.1.cmml"><mi id="S3.T1.4.4.4.4.4.m1.1.1.2" mathsize="80%" xref="S3.T1.4.4.4.4.4.m1.1.1.2.cmml">𝐂𝐃</mi><mo id="S3.T1.4.4.4.4.4.m1.1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.4.4.4.4.4.m1.1.1.1.cmml">↓</mo><mi id="S3.T1.4.4.4.4.4.m1.1.1.3" xref="S3.T1.4.4.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.4.m1.1b"><apply id="S3.T1.4.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1"><ci id="S3.T1.4.4.4.4.4.m1.1.1.1.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1.1">↓</ci><ci id="S3.T1.4.4.4.4.4.m1.1.1.2.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1.2">𝐂𝐃</ci><csymbol cd="latexml" id="S3.T1.4.4.4.4.4.m1.1.1.3.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.4.m1.1c">\mathbf{CD\downarrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.4.m1.1d">bold_CD ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{F1(0.001)\uparrow}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.5.m1.1a"><mrow id="S3.T1.5.5.5.5.5.m1.1.2" xref="S3.T1.5.5.5.5.5.m1.1.2.cmml"><mrow id="S3.T1.5.5.5.5.5.m1.1.2.2" xref="S3.T1.5.5.5.5.5.m1.1.2.2.cmml"><mi id="S3.T1.5.5.5.5.5.m1.1.2.2.2" mathsize="80%" xref="S3.T1.5.5.5.5.5.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T1.5.5.5.5.5.m1.1.2.2.1" xref="S3.T1.5.5.5.5.5.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T1.5.5.5.5.5.m1.1.2.2.3.2" xref="S3.T1.5.5.5.5.5.m1.1.2.2.cmml"><mo id="S3.T1.5.5.5.5.5.m1.1.2.2.3.2.1" maxsize="80%" minsize="80%" xref="S3.T1.5.5.5.5.5.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T1.5.5.5.5.5.m1.1.1" mathsize="80%" mathvariant="bold" xref="S3.T1.5.5.5.5.5.m1.1.1.cmml">0.001</mn><mo id="S3.T1.5.5.5.5.5.m1.1.2.2.3.2.2" maxsize="80%" minsize="80%" xref="S3.T1.5.5.5.5.5.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T1.5.5.5.5.5.m1.1.2.1" mathsize="80%" stretchy="false" xref="S3.T1.5.5.5.5.5.m1.1.2.1.cmml">↑</mo><mi id="S3.T1.5.5.5.5.5.m1.1.2.3" xref="S3.T1.5.5.5.5.5.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.5.m1.1b"><apply id="S3.T1.5.5.5.5.5.m1.1.2.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2"><ci id="S3.T1.5.5.5.5.5.m1.1.2.1.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2.1">↑</ci><apply id="S3.T1.5.5.5.5.5.m1.1.2.2.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2.2"><times id="S3.T1.5.5.5.5.5.m1.1.2.2.1.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2.2.1"></times><ci id="S3.T1.5.5.5.5.5.m1.1.2.2.2.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T1.5.5.5.5.5.m1.1.1.cmml" type="float" xref="S3.T1.5.5.5.5.5.m1.1.1">0.001</cn></apply><csymbol cd="latexml" id="S3.T1.5.5.5.5.5.m1.1.2.3.cmml" xref="S3.T1.5.5.5.5.5.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.5.m1.1c">\mathbf{F1(0.001)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.5.m1.1d">bold_F1 ( bold_0.001 ) ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{F1(0.01)\uparrow}" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.6.m1.1a"><mrow id="S3.T1.6.6.6.6.6.m1.1.2" xref="S3.T1.6.6.6.6.6.m1.1.2.cmml"><mrow id="S3.T1.6.6.6.6.6.m1.1.2.2" xref="S3.T1.6.6.6.6.6.m1.1.2.2.cmml"><mi id="S3.T1.6.6.6.6.6.m1.1.2.2.2" mathsize="80%" xref="S3.T1.6.6.6.6.6.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T1.6.6.6.6.6.m1.1.2.2.1" xref="S3.T1.6.6.6.6.6.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T1.6.6.6.6.6.m1.1.2.2.3.2" xref="S3.T1.6.6.6.6.6.m1.1.2.2.cmml"><mo id="S3.T1.6.6.6.6.6.m1.1.2.2.3.2.1" maxsize="80%" minsize="80%" xref="S3.T1.6.6.6.6.6.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T1.6.6.6.6.6.m1.1.1" mathsize="80%" mathvariant="bold" xref="S3.T1.6.6.6.6.6.m1.1.1.cmml">0.01</mn><mo id="S3.T1.6.6.6.6.6.m1.1.2.2.3.2.2" maxsize="80%" minsize="80%" xref="S3.T1.6.6.6.6.6.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T1.6.6.6.6.6.m1.1.2.1" mathsize="80%" stretchy="false" xref="S3.T1.6.6.6.6.6.m1.1.2.1.cmml">↑</mo><mi id="S3.T1.6.6.6.6.6.m1.1.2.3" xref="S3.T1.6.6.6.6.6.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.6.m1.1b"><apply id="S3.T1.6.6.6.6.6.m1.1.2.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2"><ci id="S3.T1.6.6.6.6.6.m1.1.2.1.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2.1">↑</ci><apply id="S3.T1.6.6.6.6.6.m1.1.2.2.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2.2"><times id="S3.T1.6.6.6.6.6.m1.1.2.2.1.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2.2.1"></times><ci id="S3.T1.6.6.6.6.6.m1.1.2.2.2.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T1.6.6.6.6.6.m1.1.1.cmml" type="float" xref="S3.T1.6.6.6.6.6.m1.1.1">0.01</cn></apply><csymbol cd="latexml" id="S3.T1.6.6.6.6.6.m1.1.2.3.cmml" xref="S3.T1.6.6.6.6.6.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.6.m1.1c">\mathbf{F1(0.01)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.6.m1.1d">bold_F1 ( bold_0.01 ) ↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.10.10.10.12.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.10.10.10.12.2.1.1" style="font-size:80%;">Craftsman </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.10.10.12.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S3.T1.10.10.10.12.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.12.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.2.1" style="font-size:80%;">13.08/4.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.12.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.3.1" style="font-size:80%;">10.13/15.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.10.10.10.12.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.4.1" style="font-size:80%;">56.51/85.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.12.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.5.1" style="font-size:80%;">13.54/2.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.12.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.6.1" style="font-size:80%;">6.30/11.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.12.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.12.2.7.1" style="font-size:80%;">73.71/91.95</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.10.13.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.10.10.10.13.3.1.1" style="font-size:80%;">Dora </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.10.10.13.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S3.T1.10.10.10.13.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.2.1" style="font-size:80%;">11.15/2.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.3.1" style="font-size:80%;">17.29/26.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.10.13.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.4.1" style="font-size:80%;">81.54/93.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.5.1" style="font-size:80%;">16.61/1.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.6.1" style="font-size:80%;">13.65/25.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.13.3.7.1" style="font-size:80%;">78.73/96.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.10.14.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.10.10.10.14.4.1.1" style="font-size:80%;">Trellis </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.10.10.14.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a><span class="ltx_text" id="S3.T1.10.10.10.14.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.14.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.2.1" style="font-size:80%;">12.90/11.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.14.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.3.1" style="font-size:80%;">4.05/4.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.10.14.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.4.1" style="font-size:80%;">59.65/64.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.14.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.5.1" style="font-size:80%;">17.42/9.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.14.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.6.1" style="font-size:80%;">3.81/6.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.14.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.14.4.7.1" style="font-size:80%;">62.70/71.95</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.10.15.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.10.10.10.15.5.1.1" style="font-size:80%;">XCube </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.10.10.15.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T1.10.10.10.15.5.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.15.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.2.1" style="font-size:80%;">4.35/3.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.15.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.3.1" style="font-size:80%;">1.61/13.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.10.15.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.4.1" style="font-size:80%;">74.65/79.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.15.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.5.1" style="font-size:80%;">4.74/2.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.15.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.6.1" style="font-size:80%;">1.31/0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.15.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.15.5.7.1" style="font-size:80%;">75.64/86.50</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.7.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.7.7.7.7.1.1" style="font-size:80%;">3PSDF</span><sup class="ltx_sup" id="S3.T1.7.7.7.7.1.2"><span class="ltx_text" id="S3.T1.7.7.7.7.1.2.1" style="font-size:80%;">∗</span></sup><span class="ltx_text" id="S3.T1.7.7.7.7.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.7.7.7.7.1.4.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S3.T1.7.7.7.7.1.5.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.2.1" style="font-size:80%;">4.51/3.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.3.1" style="font-size:80%;">11.33/14.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.4.1" style="font-size:80%;">81.70/86.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.5.1" style="font-size:80%;">7.45/1.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.6.1" style="font-size:80%;">7.52/12.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.7.7.1" style="font-size:80%;">79.43/91.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8.8" style="background-color:#FFF9F9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.8.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.1.1" style="font-size:80%;background-color:#FFF9F9;">Ours<sub class="ltx_sub" id="S3.T1.8.8.8.8.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.8.8.8.8.1.1.1.1">256</span></sub></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.2.1" style="font-size:80%;background-color:#FFF9F9;">2.56/1.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.3.1" style="font-size:80%;background-color:#FFF9F9;">18.31/27.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.8.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.4.1" style="font-size:80%;background-color:#FFF9F9;">85.35/92.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.5.1" style="font-size:80%;background-color:#FFF9F9;">1.93/0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.6.1" style="font-size:80%;background-color:#FFF9F9;">16.24/28.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.8.7.1" style="font-size:80%;background-color:#FFF9F9;">88.76/97.31</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9.9" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.1.1" style="font-size:80%;background-color:#E6FFE6;">Ours<sub class="ltx_sub" id="S3.T1.9.9.9.9.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.9.9.9.9.1.1.1.1">512</span></sub></span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.2.1" style="font-size:80%;background-color:#E6FFE6;">1.67/0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.3.1" style="font-size:80%;background-color:#E6FFE6;">23.74/34.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.4.1" style="font-size:80%;background-color:#E6FFE6;">90.39/95.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.5.1" style="font-size:80%;background-color:#E6FFE6;">1.36/0.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.6.1" style="font-size:80%;background-color:#E6FFE6;">21.85/36.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.9.7.1" style="font-size:80%;background-color:#E6FFE6;">91.55/98.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10.10" style="background-color:#E6E6FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.10.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.10.1.1" style="font-size:80%;background-color:#E6E6FF;">Ours<sub class="ltx_sub" id="S3.T1.10.10.10.10.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.10.10.10.10.1.1.1.1">1024</span></sub></span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.2.1" style="font-size:80%;background-color:#E6E6FF;">1.33<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.2.1.1">/</span>0.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.3.1" style="font-size:80%;background-color:#E6E6FF;">25.95<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.3.1.1">/</span>35.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.4.1" style="font-size:80%;background-color:#E6E6FF;">92.30<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.4.1.1">/</span>96.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.5.1" style="font-size:80%;background-color:#E6E6FF;">0.86<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.5.1.1">/</span>0.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.6.1" style="font-size:80%;background-color:#E6E6FF;">25.71<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.6.1.1">/</span>39.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.10.7.1" style="font-size:80%;background-color:#E6E6FF;">94.71<span class="ltx_text ltx_font_medium" id="S3.T1.10.10.10.10.7.1.1">/</span>99.14</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the reconstruction performance of different Variational Autoencoders (VAEs) on two datasets: Toys4K and the Dora benchmark.  For each dataset, the table shows the Chamfer Distance (CD) and F1-scores (at thresholds of 0.001 and 0.01). The results are broken down into two groups: performance on the entire dataset and performance only on the watertight subset of models (those without open surfaces). The '/' symbol separates these two sets of results within each dataset's columns.  This allows for a direct comparison of how well each VAE handles both complete and incomplete (open-surface) 3D shapes.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison for VAE reconstruction quality on the Toys4K dataset (left) and Dora benchmark (right). The ‘/’ symbol separates the results computed over the entire dataset from those obtained exclusively on the watertight subset.
> </details>





### In-depth insights


#### SparseFlex Intro
The paper introduces SparseFlex as a novel solution to address the challenges in creating high-fidelity 3D meshes with arbitrary topologies, including open surfaces and complex interiors. **Existing implicit field methods often require costly, detail-degrading watertight conversion, while other approaches struggle with high resolutions.** SparseFlex tackles these limitations with a **sparse-structured isosurface representation**, enabling differentiable mesh reconstruction at high resolutions directly from rendering losses. This representation combines the accuracy of Flexicubes with a sparse voxel structure, focusing computation on surface-adjacent regions and efficiently handling open surfaces. A key contribution is the **frustum-aware sectional voxel training strategy**, which activates only relevant voxels during rendering, dramatically reducing memory consumption and enabling high-resolution training. This enables the reconstruction of mesh interiors using only rendering supervision.

#### Frustum Voxel
The frustum voxel approach represents a significant advancement in 3D scene processing. By focusing computation on the **visible voxels** within the camera's frustum, it drastically reduces memory consumption, which is a major bottleneck in high-resolution 3D modeling. This selective activation allows for efficient rendering and manipulation of complex geometries. Furthermore, this technique enables the **reconstruction of interior details** by strategically positioning the camera. The adaptive nature of the frustum, adjusting its clipping planes based on voxel occupancy, further optimizes resource allocation. This results in a more efficient and scalable system for handling detailed 3D shapes.

#### VAE Pipeline
**VAE pipeline** is used for **high-resolution 3D shape modeling**. The pipeline takes **point clouds** as input, **voxelizes them**, and uses a **sparse transformer** encoder-decoder to compress features. It employs a **self-pruning** upsampling module for higher resolution. The VAE is trained using **rendering losses** and **frustum-aware sectional voxel training**, improving efficiency by focusing on relevant voxels during training. This addresses limitations of implicit field methods by avoiding **watertight conversion** and enabling detail preservation. It achieves **state-of-the-art reconstruction accuracy** and generates high-resolution, detailed 3D shapes with **arbitrary topology** and **open surfaces**.

#### Open Surfaces
**Open surface** modeling presents unique challenges in 3D geometry. Unlike closed, watertight meshes, open surfaces lack a defined interior, complicating tasks like inside/outside determination. Traditional methods often struggle, leading to artifacts or instabilities. The paper addresses this with SparseFlex, a novel approach designed to handle open surfaces efficiently. **Unsigned Distance Fields (UDFs)** are often used, but face inaccuracies in gradient estimation, hindering high-quality results. SparseFlex tackles these issues by focusing computation on surface-adjacent regions, crucial for defining open boundaries. The **sparse voxel structure** allows for efficient pruning of voxels near open boundaries, naturally representing these surfaces. By combining Flexicubes with this sparsity, SparseFlex achieves a more accurate and stable representation, a significant advancement for modeling complex, non-closed 3D shapes.

#### Image-to-3D
Image-to-3D generation represents a significant leap in AI, bridging the gap between 2D visual understanding and 3D spatial reasoning. This field aims to create 3D models from single or multiple images, a task that requires overcoming challenges like inferring depth, handling occlusions, and generating consistent geometry and texture. Current approaches often combine deep learning techniques such as **Generative Adversarial Networks (GANs), Variational Autoencoders (VAEs), and diffusion models** with neural rendering to produce high-quality 3D assets. **The ability to generate 3D models from images has broad applications, including virtual reality, augmented reality, gaming, e-commerce, and robotics.** Future research directions include improving the fidelity and realism of generated 3D models, reducing the computational cost of training and inference, and developing methods that can handle more complex and diverse input images, ultimately leading to more accessible and versatile 3D content creation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21732/extracted/6315866/figs/strategy.png)

> 🔼 This figure illustrates the SparseFlex VAE pipeline.  The process begins with point cloud data sampled from a 3D mesh.  These points are voxelized, meaning they're grouped into volumetric units (voxels), and their features are combined within each voxel. A sparse transformer network (encoder-decoder) then compresses these structured voxel features into a lower-dimensional latent space, which efficiently represents the 3D shape. The process then uses a self-pruning upsampling technique to increase the resolution of the representation. Finally, a linear layer decodes the latent space features back into the SparseFlex representation (a sparse collection of voxels representing the shape's surface). Importantly, the entire pipeline uses a 'frustum-aware sectional voxel training strategy,' significantly increasing training efficiency by rendering losses (only calculating the loss for voxels currently visible from the camera viewpoint).
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the SparseFlex VAE pipeline. SparseFlex VAE takes point clouds sampled from a mesh as input, voxelizes them, and aggregates their features into each voxel. A sparse transformer encoder-decoder compresses the structured feature into a more compact latent space, followed by a self-pruning upsampling for higher resolution. Finally, the structured features are decoded to SparseFlex through a linear layer. Using the frustum-aware section voxel training strategy, we can train the entire pipeline more efficiently by rendering loss.
> </details>



![](https://arxiv.org/html/2503.21732/x2.png)

> 🔼 This figure illustrates the core concept of frustum-aware sectional voxel training. The left panel depicts the conventional method of mesh-based rendering, which necessitates activating every voxel in the dense grid to extract the mesh surface. This method is highly inefficient, especially when only a few voxels are essential for rendering. In contrast, the right panel demonstrates the proposed approach.  This method selectively activates only the relevant voxels within the camera's viewing frustum, resulting in significant computational and memory savings.  Furthermore, this approach uniquely allows for the reconstruction of mesh interiors, using only rendering supervision, by strategically positioning the virtual camera. The figure highlights the superior efficiency and capabilities of the proposed method compared to the conventional dense grid approach.
> <details>
> <summary>read the caption</summary>
> Figure 3: Frustum-aware sectional voxel training. The previous mesh-based rendering training strategy (left) requires activating the entire dense grid to extract the mesh surface, even though only a few voxels are necessary during rendering. In contrast, our approach (right) adaptively activates the relevant voxels and enables the reconstruction of mesh interiors only using rendering supervision.
> </details>



![](https://arxiv.org/html/2503.21732/x3.png)

> 🔼 Figure 4 presents a qualitative comparison of 3D shape reconstruction results from various state-of-the-art Variational Autoencoders (VAEs), including the proposed SparseFlex VAE.  The figure showcases the superior performance of SparseFlex in handling complex geometries, open surfaces (shapes with incomplete boundaries), and even interior structures (reconstructing the insides of 3D objects).  The comparison is visual, highlighting the detailed reconstruction capabilities of SparseFlex compared to other leading methods, demonstrating its ability to accurately capture fine details and complex topologies.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison of VAE reconstruction between ours and other state-of-the-art baselines. Our approach demonstrate superior performance in reconstructing complex shapes, open surfaces, and even interior structures.
> </details>



![](https://arxiv.org/html/2503.21732/x4.png)

> 🔼 Figure 5 presents a qualitative comparison of 3D shape reconstruction results obtained using the SparseFlex VAE with different resolutions (256³, 512³, and 1024³) and the TRELLIS method.  The figure visually showcases the impact of increasing resolution on the fidelity of reconstructed 3D shapes. By comparing the output of SparseFlex VAE at various resolutions to the TRELLIS results, the improvements in accuracy and detail preservation with higher resolutions are highlighted.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison of VAE reconstruction quality between our method with different resolution and TRELLIS.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.10.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.1"><math alttext="\mathbf{CD\downarrow}" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mrow id="S3.T2.1.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.1.1.1.1.1.m1.1.1.2" xref="S3.T2.1.1.1.1.1.m1.1.1.2.cmml">𝐂𝐃</mi><mo id="S3.T2.1.1.1.1.1.m1.1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S3.T2.1.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1"><ci id="S3.T2.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1.1">↓</ci><ci id="S3.T2.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1.2">𝐂𝐃</ci><csymbol cd="latexml" id="S3.T2.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\mathbf{CD\downarrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">bold_CD ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2.2.2"><math alttext="\mathbf{F1(0.001)\uparrow}" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.2.m1.1a"><mrow id="S3.T2.2.2.2.2.2.m1.1.2" xref="S3.T2.2.2.2.2.2.m1.1.2.cmml"><mrow id="S3.T2.2.2.2.2.2.m1.1.2.2" xref="S3.T2.2.2.2.2.2.m1.1.2.2.cmml"><mi id="S3.T2.2.2.2.2.2.m1.1.2.2.2" xref="S3.T2.2.2.2.2.2.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T2.2.2.2.2.2.m1.1.2.2.1" xref="S3.T2.2.2.2.2.2.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.2.2.2.2.2.m1.1.2.2.3.2" xref="S3.T2.2.2.2.2.2.m1.1.2.2.cmml"><mo id="S3.T2.2.2.2.2.2.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.2.2.2.2.2.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T2.2.2.2.2.2.m1.1.1" mathvariant="bold" xref="S3.T2.2.2.2.2.2.m1.1.1.cmml">0.001</mn><mo id="S3.T2.2.2.2.2.2.m1.1.2.2.3.2.2" stretchy="false" xref="S3.T2.2.2.2.2.2.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.2.2.2.2.2.m1.1.2.1" stretchy="false" xref="S3.T2.2.2.2.2.2.m1.1.2.1.cmml">↑</mo><mi id="S3.T2.2.2.2.2.2.m1.1.2.3" xref="S3.T2.2.2.2.2.2.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.2.m1.1.2.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2"><ci id="S3.T2.2.2.2.2.2.m1.1.2.1.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2.1">↑</ci><apply id="S3.T2.2.2.2.2.2.m1.1.2.2.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2.2"><times id="S3.T2.2.2.2.2.2.m1.1.2.2.1.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2.2.1"></times><ci id="S3.T2.2.2.2.2.2.m1.1.2.2.2.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T2.2.2.2.2.2.m1.1.1.cmml" type="float" xref="S3.T2.2.2.2.2.2.m1.1.1">0.001</cn></apply><csymbol cd="latexml" id="S3.T2.2.2.2.2.2.m1.1.2.3.cmml" xref="S3.T2.2.2.2.2.2.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.2.m1.1c">\mathbf{F1(0.001)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.2.m1.1d">bold_F1 ( bold_0.001 ) ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3.3.3"><math alttext="\mathbf{F1(0.01)\uparrow}" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.3.m1.1a"><mrow id="S3.T2.3.3.3.3.3.m1.1.2" xref="S3.T2.3.3.3.3.3.m1.1.2.cmml"><mrow id="S3.T2.3.3.3.3.3.m1.1.2.2" xref="S3.T2.3.3.3.3.3.m1.1.2.2.cmml"><mi id="S3.T2.3.3.3.3.3.m1.1.2.2.2" xref="S3.T2.3.3.3.3.3.m1.1.2.2.2.cmml">𝐅𝟏</mi><mo id="S3.T2.3.3.3.3.3.m1.1.2.2.1" xref="S3.T2.3.3.3.3.3.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.3.3.3.3.3.m1.1.2.2.3.2" xref="S3.T2.3.3.3.3.3.m1.1.2.2.cmml"><mo id="S3.T2.3.3.3.3.3.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.3.3.3.3.3.m1.1.2.2.cmml">(</mo><mn class="ltx_mathvariant_bold" id="S3.T2.3.3.3.3.3.m1.1.1" mathvariant="bold" xref="S3.T2.3.3.3.3.3.m1.1.1.cmml">0.01</mn><mo id="S3.T2.3.3.3.3.3.m1.1.2.2.3.2.2" stretchy="false" xref="S3.T2.3.3.3.3.3.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.3.3.3.3.3.m1.1.2.1" stretchy="false" xref="S3.T2.3.3.3.3.3.m1.1.2.1.cmml">↑</mo><mi id="S3.T2.3.3.3.3.3.m1.1.2.3" xref="S3.T2.3.3.3.3.3.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.3.3.m1.1.2.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2"><ci id="S3.T2.3.3.3.3.3.m1.1.2.1.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2.1">↑</ci><apply id="S3.T2.3.3.3.3.3.m1.1.2.2.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2.2"><times id="S3.T2.3.3.3.3.3.m1.1.2.2.1.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2.2.1"></times><ci id="S3.T2.3.3.3.3.3.m1.1.2.2.2.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2.2.2">𝐅𝟏</ci><cn id="S3.T2.3.3.3.3.3.m1.1.1.cmml" type="float" xref="S3.T2.3.3.3.3.3.m1.1.1">0.01</cn></apply><csymbol cd="latexml" id="S3.T2.3.3.3.3.3.m1.1.2.3.cmml" xref="S3.T2.3.3.3.3.3.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.3.m1.1c">\mathbf{F1(0.01)\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.3.m1.1d">bold_F1 ( bold_0.01 ) ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.10.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.10.10.10.11.1.1">Surf-D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.10.11.1.2">63.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.10.11.1.3">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.10.11.1.4">23.17</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.4.4.4.1">3PSDF<sup class="ltx_sup" id="S3.T2.4.4.4.4.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.4.2">0.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.4.3">8.14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.4.4">99.35</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.5.5" style="background-color:#FFF9F9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.5.5.5.5.1"><span class="ltx_text" id="S3.T2.5.5.5.5.1.1" style="background-color:#FFF9F9;">Ours<math alttext="{}_{256}^{\dagger}" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.1.1.m1.1"><semantics id="S3.T2.5.5.5.5.1.1.m1.1a"><mmultiscripts id="S3.T2.5.5.5.5.1.1.m1.1.1" xref="S3.T2.5.5.5.5.1.1.m1.1.1.cmml"><mi id="S3.T2.5.5.5.5.1.1.m1.1.1.2.2" xref="S3.T2.5.5.5.5.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T2.5.5.5.5.1.1.m1.1.1a" xref="S3.T2.5.5.5.5.1.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T2.5.5.5.5.1.1.m1.1.1b" xref="S3.T2.5.5.5.5.1.1.m1.1.1.cmml"></mrow><mo id="S3.T2.5.5.5.5.1.1.m1.1.1.3" mathbackground="#FFF9F9" xref="S3.T2.5.5.5.5.1.1.m1.1.1.3.cmml">†</mo><mn id="S3.T2.5.5.5.5.1.1.m1.1.1.2.3" mathbackground="#FFF9F9" xref="S3.T2.5.5.5.5.1.1.m1.1.1.2.3.cmml">256</mn><mrow id="S3.T2.5.5.5.5.1.1.m1.1.1c" xref="S3.T2.5.5.5.5.1.1.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.1.1.m1.1b"><apply id="S3.T2.5.5.5.5.1.1.m1.1.1.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.5.5.5.5.1.1.m1.1.1.1.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1">superscript</csymbol><apply id="S3.T2.5.5.5.5.1.1.m1.1.1.2.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.5.5.5.5.1.1.m1.1.1.2.1.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S3.T2.5.5.5.5.1.1.m1.1.1.2.2.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1.2.2">absent</csymbol><cn id="S3.T2.5.5.5.5.1.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.5.5.5.5.1.1.m1.1.1.2.3">256</cn></apply><ci id="S3.T2.5.5.5.5.1.1.m1.1.1.3.cmml" xref="S3.T2.5.5.5.5.1.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.1.1.m1.1c">{}_{256}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.1.1.m1.1d">start_FLOATSUBSCRIPT 256 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5.2"><span class="ltx_text" id="S3.T2.5.5.5.5.2.1" style="background-color:#FFF9F9;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5.3"><span class="ltx_text" id="S3.T2.5.5.5.5.3.1" style="background-color:#FFF9F9;">6.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5.4"><span class="ltx_text" id="S3.T2.5.5.5.5.4.1" style="background-color:#FFF9F9;">94.88</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6.6.6" style="background-color:#FFF9F9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.6.6.6.1"><span class="ltx_text" id="S3.T2.6.6.6.6.1.1" style="background-color:#FFF9F9;">Ours<sub class="ltx_sub" id="S3.T2.6.6.6.6.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.6.6.6.6.1.1.1.1">256</span></sub></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.6.2"><span class="ltx_text" id="S3.T2.6.6.6.6.2.1" style="background-color:#FFF9F9;">0.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.6.3"><span class="ltx_text" id="S3.T2.6.6.6.6.3.1" style="background-color:#FFF9F9;">18.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.6.4"><span class="ltx_text" id="S3.T2.6.6.6.6.4.1" style="background-color:#FFF9F9;">99.99</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.7.7" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.7.7.7.7.1"><span class="ltx_text" id="S3.T2.7.7.7.7.1.1" style="background-color:#E6FFE6;">Ours<math alttext="{}_{512}^{\dagger}" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.1.1.m1.1"><semantics id="S3.T2.7.7.7.7.1.1.m1.1a"><mmultiscripts id="S3.T2.7.7.7.7.1.1.m1.1.1" xref="S3.T2.7.7.7.7.1.1.m1.1.1.cmml"><mi id="S3.T2.7.7.7.7.1.1.m1.1.1.2.2" xref="S3.T2.7.7.7.7.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T2.7.7.7.7.1.1.m1.1.1a" xref="S3.T2.7.7.7.7.1.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T2.7.7.7.7.1.1.m1.1.1b" xref="S3.T2.7.7.7.7.1.1.m1.1.1.cmml"></mrow><mo id="S3.T2.7.7.7.7.1.1.m1.1.1.3" mathbackground="#E6FFE6" xref="S3.T2.7.7.7.7.1.1.m1.1.1.3.cmml">†</mo><mn id="S3.T2.7.7.7.7.1.1.m1.1.1.2.3" mathbackground="#E6FFE6" xref="S3.T2.7.7.7.7.1.1.m1.1.1.2.3.cmml">512</mn><mrow id="S3.T2.7.7.7.7.1.1.m1.1.1c" xref="S3.T2.7.7.7.7.1.1.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.1.1.m1.1b"><apply id="S3.T2.7.7.7.7.1.1.m1.1.1.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.7.7.7.7.1.1.m1.1.1.1.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1">superscript</csymbol><apply id="S3.T2.7.7.7.7.1.1.m1.1.1.2.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.7.7.7.7.1.1.m1.1.1.2.1.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S3.T2.7.7.7.7.1.1.m1.1.1.2.2.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1.2.2">absent</csymbol><cn id="S3.T2.7.7.7.7.1.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.7.7.7.7.1.1.m1.1.1.2.3">512</cn></apply><ci id="S3.T2.7.7.7.7.1.1.m1.1.1.3.cmml" xref="S3.T2.7.7.7.7.1.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.1.1.m1.1c">{}_{512}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.1.1.m1.1d">start_FLOATSUBSCRIPT 512 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.7.2"><span class="ltx_text" id="S3.T2.7.7.7.7.2.1" style="background-color:#E6FFE6;">0.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.7.3"><span class="ltx_text" id="S3.T2.7.7.7.7.3.1" style="background-color:#E6FFE6;">11.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.7.4"><span class="ltx_text" id="S3.T2.7.7.7.7.4.1" style="background-color:#E6FFE6;">99.93</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8.8" style="background-color:#E6FFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.8.8.8.8.1"><span class="ltx_text" id="S3.T2.8.8.8.8.1.1" style="background-color:#E6FFE6;">Ours<sub class="ltx_sub" id="S3.T2.8.8.8.8.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.8.8.8.8.1.1.1.1">512</span></sub></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.8.8.2.1" style="background-color:#E6FFE6;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.8.8.3.1" style="background-color:#E6FFE6;">31.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.8.4"><span class="ltx_text" id="S3.T2.8.8.8.8.4.1" style="background-color:#E6FFE6;">100.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.9" style="background-color:#E6E6FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.9.9.9.9.1"><span class="ltx_text" id="S3.T2.9.9.9.9.1.1" style="background-color:#E6E6FF;">Ours<math alttext="{}_{1024}^{\dagger}" class="ltx_Math" display="inline" id="S3.T2.9.9.9.9.1.1.m1.1"><semantics id="S3.T2.9.9.9.9.1.1.m1.1a"><mmultiscripts id="S3.T2.9.9.9.9.1.1.m1.1.1" xref="S3.T2.9.9.9.9.1.1.m1.1.1.cmml"><mi id="S3.T2.9.9.9.9.1.1.m1.1.1.2.2" xref="S3.T2.9.9.9.9.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T2.9.9.9.9.1.1.m1.1.1a" xref="S3.T2.9.9.9.9.1.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T2.9.9.9.9.1.1.m1.1.1b" xref="S3.T2.9.9.9.9.1.1.m1.1.1.cmml"></mrow><mo id="S3.T2.9.9.9.9.1.1.m1.1.1.3" mathbackground="#E6E6FF" xref="S3.T2.9.9.9.9.1.1.m1.1.1.3.cmml">†</mo><mn id="S3.T2.9.9.9.9.1.1.m1.1.1.2.3" mathbackground="#E6E6FF" xref="S3.T2.9.9.9.9.1.1.m1.1.1.2.3.cmml">1024</mn><mrow id="S3.T2.9.9.9.9.1.1.m1.1.1c" xref="S3.T2.9.9.9.9.1.1.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.9.1.1.m1.1b"><apply id="S3.T2.9.9.9.9.1.1.m1.1.1.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.9.9.9.9.1.1.m1.1.1.1.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1">superscript</csymbol><apply id="S3.T2.9.9.9.9.1.1.m1.1.1.2.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.9.9.9.9.1.1.m1.1.1.2.1.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S3.T2.9.9.9.9.1.1.m1.1.1.2.2.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1.2.2">absent</csymbol><cn id="S3.T2.9.9.9.9.1.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.9.9.9.9.1.1.m1.1.1.2.3">1024</cn></apply><ci id="S3.T2.9.9.9.9.1.1.m1.1.1.3.cmml" xref="S3.T2.9.9.9.9.1.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.9.1.1.m1.1c">{}_{1024}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.9.1.1.m1.1d">start_FLOATSUBSCRIPT 1024 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.9.2"><span class="ltx_text" id="S3.T2.9.9.9.9.2.1" style="background-color:#E6E6FF;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.9.3"><span class="ltx_text" id="S3.T2.9.9.9.9.3.1" style="background-color:#E6E6FF;">24.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.9.9.9.9.4.1" style="background-color:#E6E6FF;">100.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.10.10" style="background-color:#E6E6FF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.10.10.10.10.1"><span class="ltx_text" id="S3.T2.10.10.10.10.1.1" style="background-color:#E6E6FF;">Ours<sub class="ltx_sub" id="S3.T2.10.10.10.10.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.10.10.10.10.1.1.1.1">1024</span></sub></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.10.2"><span class="ltx_text ltx_font_bold" id="S3.T2.10.10.10.10.2.1" style="background-color:#E6E6FF;">0.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.10.3"><span class="ltx_text ltx_font_bold" id="S3.T2.10.10.10.10.3.1" style="background-color:#E6E6FF;">37.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10.10.4"><span class="ltx_text ltx_font_bold" id="S3.T2.10.10.10.10.4.1" style="background-color:#E6E6FF;">100.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of reconstruction performance on the DeepFashion3D dataset, focusing on open surfaces.  It shows Chamfer Distance (CD) and F1-scores (at thresholds of 0.001 and 0.01) for different models, including variations of the proposed SparseFlex model with and without the self-pruning upsampling module. Lower CD values and higher F1-scores indicate better reconstruction accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Reconstruction results on open-surface dataset Deepfashion3D. † indicates the absence of the self-pruning upsampling module.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.11.11.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.2.2.2.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Feed-Forward Time (ms)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.2.1">GPU Memory Cost (MB)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.8.8.8.8.7">Resolution</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.3.3.3.1"><math alttext="256^{3}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><msup id="S4.T3.3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml"><mn id="S4.T3.3.3.3.3.1.m1.1.1.2" xref="S4.T3.3.3.3.3.1.m1.1.1.2.cmml">256</mn><mn id="S4.T3.3.3.3.3.1.m1.1.1.3" xref="S4.T3.3.3.3.3.1.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><apply id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.3.1.m1.1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">superscript</csymbol><cn id="S4.T3.3.3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.3.3.3.3.1.m1.1.1.2">256</cn><cn id="S4.T3.3.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.3.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">256^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">256 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.4.4.4.2"><math alttext="512^{3}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.2.m1.1"><semantics id="S4.T3.4.4.4.4.2.m1.1a"><msup id="S4.T3.4.4.4.4.2.m1.1.1" xref="S4.T3.4.4.4.4.2.m1.1.1.cmml"><mn id="S4.T3.4.4.4.4.2.m1.1.1.2" xref="S4.T3.4.4.4.4.2.m1.1.1.2.cmml">512</mn><mn id="S4.T3.4.4.4.4.2.m1.1.1.3" xref="S4.T3.4.4.4.4.2.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.2.m1.1b"><apply id="S4.T3.4.4.4.4.2.m1.1.1.cmml" xref="S4.T3.4.4.4.4.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.4.4.2.m1.1.1.1.cmml" xref="S4.T3.4.4.4.4.2.m1.1.1">superscript</csymbol><cn id="S4.T3.4.4.4.4.2.m1.1.1.2.cmml" type="integer" xref="S4.T3.4.4.4.4.2.m1.1.1.2">512</cn><cn id="S4.T3.4.4.4.4.2.m1.1.1.3.cmml" type="integer" xref="S4.T3.4.4.4.4.2.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.2.m1.1c">512^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.2.m1.1d">512 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.5.5.5.3"><math alttext="1024^{3}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.3.m1.1"><semantics id="S4.T3.5.5.5.5.3.m1.1a"><msup id="S4.T3.5.5.5.5.3.m1.1.1" xref="S4.T3.5.5.5.5.3.m1.1.1.cmml"><mn id="S4.T3.5.5.5.5.3.m1.1.1.2" xref="S4.T3.5.5.5.5.3.m1.1.1.2.cmml">1024</mn><mn id="S4.T3.5.5.5.5.3.m1.1.1.3" xref="S4.T3.5.5.5.5.3.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.3.m1.1b"><apply id="S4.T3.5.5.5.5.3.m1.1.1.cmml" xref="S4.T3.5.5.5.5.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.5.3.m1.1.1.1.cmml" xref="S4.T3.5.5.5.5.3.m1.1.1">superscript</csymbol><cn id="S4.T3.5.5.5.5.3.m1.1.1.2.cmml" type="integer" xref="S4.T3.5.5.5.5.3.m1.1.1.2">1024</cn><cn id="S4.T3.5.5.5.5.3.m1.1.1.3.cmml" type="integer" xref="S4.T3.5.5.5.5.3.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.3.m1.1c">1024^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.3.m1.1d">1024 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.6.6.6.6.4"><math alttext="256^{3}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.4.m1.1"><semantics id="S4.T3.6.6.6.6.4.m1.1a"><msup id="S4.T3.6.6.6.6.4.m1.1.1" xref="S4.T3.6.6.6.6.4.m1.1.1.cmml"><mn id="S4.T3.6.6.6.6.4.m1.1.1.2" xref="S4.T3.6.6.6.6.4.m1.1.1.2.cmml">256</mn><mn id="S4.T3.6.6.6.6.4.m1.1.1.3" xref="S4.T3.6.6.6.6.4.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.4.m1.1b"><apply id="S4.T3.6.6.6.6.4.m1.1.1.cmml" xref="S4.T3.6.6.6.6.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.6.6.4.m1.1.1.1.cmml" xref="S4.T3.6.6.6.6.4.m1.1.1">superscript</csymbol><cn id="S4.T3.6.6.6.6.4.m1.1.1.2.cmml" type="integer" xref="S4.T3.6.6.6.6.4.m1.1.1.2">256</cn><cn id="S4.T3.6.6.6.6.4.m1.1.1.3.cmml" type="integer" xref="S4.T3.6.6.6.6.4.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.4.m1.1c">256^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.4.m1.1d">256 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.7.7.7.7.5"><math alttext="512^{3}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.5.m1.1"><semantics id="S4.T3.7.7.7.7.5.m1.1a"><msup id="S4.T3.7.7.7.7.5.m1.1.1" xref="S4.T3.7.7.7.7.5.m1.1.1.cmml"><mn id="S4.T3.7.7.7.7.5.m1.1.1.2" xref="S4.T3.7.7.7.7.5.m1.1.1.2.cmml">512</mn><mn id="S4.T3.7.7.7.7.5.m1.1.1.3" xref="S4.T3.7.7.7.7.5.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.5.m1.1b"><apply id="S4.T3.7.7.7.7.5.m1.1.1.cmml" xref="S4.T3.7.7.7.7.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.7.7.5.m1.1.1.1.cmml" xref="S4.T3.7.7.7.7.5.m1.1.1">superscript</csymbol><cn id="S4.T3.7.7.7.7.5.m1.1.1.2.cmml" type="integer" xref="S4.T3.7.7.7.7.5.m1.1.1.2">512</cn><cn id="S4.T3.7.7.7.7.5.m1.1.1.3.cmml" type="integer" xref="S4.T3.7.7.7.7.5.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.5.m1.1c">512^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.5.m1.1d">512 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.8.8.8.8.6"><math alttext="1024^{3}" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.6.m1.1"><semantics id="S4.T3.8.8.8.8.6.m1.1a"><msup id="S4.T3.8.8.8.8.6.m1.1.1" xref="S4.T3.8.8.8.8.6.m1.1.1.cmml"><mn id="S4.T3.8.8.8.8.6.m1.1.1.2" xref="S4.T3.8.8.8.8.6.m1.1.1.2.cmml">1024</mn><mn id="S4.T3.8.8.8.8.6.m1.1.1.3" xref="S4.T3.8.8.8.8.6.m1.1.1.3.cmml">3</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.6.m1.1b"><apply id="S4.T3.8.8.8.8.6.m1.1.1.cmml" xref="S4.T3.8.8.8.8.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.8.8.8.8.6.m1.1.1.1.cmml" xref="S4.T3.8.8.8.8.6.m1.1.1">superscript</csymbol><cn id="S4.T3.8.8.8.8.6.m1.1.1.2.cmml" type="integer" xref="S4.T3.8.8.8.8.6.m1.1.1.2">1024</cn><cn id="S4.T3.8.8.8.8.6.m1.1.1.3.cmml" type="integer" xref="S4.T3.8.8.8.8.6.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.6.m1.1c">1024^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.6.m1.1d">1024 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.9.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.9.9.9.9.1">Ours (<math alttext="\alpha=0.1" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.9.1.m1.1a"><mrow id="S4.T3.9.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.9.1.m1.1.1.cmml"><mi id="S4.T3.9.9.9.9.1.m1.1.1.2" xref="S4.T3.9.9.9.9.1.m1.1.1.2.cmml">α</mi><mo id="S4.T3.9.9.9.9.1.m1.1.1.1" xref="S4.T3.9.9.9.9.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.9.9.9.9.1.m1.1.1.3" xref="S4.T3.9.9.9.9.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.1.m1.1b"><apply id="S4.T3.9.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.9.1.m1.1.1"><eq id="S4.T3.9.9.9.9.1.m1.1.1.1.cmml" xref="S4.T3.9.9.9.9.1.m1.1.1.1"></eq><ci id="S4.T3.9.9.9.9.1.m1.1.1.2.cmml" xref="S4.T3.9.9.9.9.1.m1.1.1.2">𝛼</ci><cn id="S4.T3.9.9.9.9.1.m1.1.1.3.cmml" type="float" xref="S4.T3.9.9.9.9.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.1.m1.1c">\alpha=0.1</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.1.m1.1d">italic_α = 0.1</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.2">333</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.3">620</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.4">1151</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.5">35515</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.6">40183</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.9.7">55441</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.10.10.10.10.1">Ours (<math alttext="\alpha=0.3" class="ltx_Math" display="inline" id="S4.T3.10.10.10.10.1.m1.1"><semantics id="S4.T3.10.10.10.10.1.m1.1a"><mrow id="S4.T3.10.10.10.10.1.m1.1.1" xref="S4.T3.10.10.10.10.1.m1.1.1.cmml"><mi id="S4.T3.10.10.10.10.1.m1.1.1.2" xref="S4.T3.10.10.10.10.1.m1.1.1.2.cmml">α</mi><mo id="S4.T3.10.10.10.10.1.m1.1.1.1" xref="S4.T3.10.10.10.10.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.10.10.10.10.1.m1.1.1.3" xref="S4.T3.10.10.10.10.1.m1.1.1.3.cmml">0.3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.10.1.m1.1b"><apply id="S4.T3.10.10.10.10.1.m1.1.1.cmml" xref="S4.T3.10.10.10.10.1.m1.1.1"><eq id="S4.T3.10.10.10.10.1.m1.1.1.1.cmml" xref="S4.T3.10.10.10.10.1.m1.1.1.1"></eq><ci id="S4.T3.10.10.10.10.1.m1.1.1.2.cmml" xref="S4.T3.10.10.10.10.1.m1.1.1.2">𝛼</ci><cn id="S4.T3.10.10.10.10.1.m1.1.1.3.cmml" type="float" xref="S4.T3.10.10.10.10.1.m1.1.1.3">0.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.10.1.m1.1c">\alpha=0.3</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.10.1.m1.1d">italic_α = 0.3</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.2">357</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.3">697</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.4">1475</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.5">37403</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.6">45675</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.10.7">69991</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11.12.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.11.11.11.12.1.1">w/o FSV</th>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.2">390</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.3">958</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.4">OOM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.5">40703</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.6">62029</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.12.1.7">OOM</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.11.11.11.11.1">w/o FSV <math alttext="\&amp;" class="ltx_Math" display="inline" id="S4.T3.11.11.11.11.1.m1.1"><semantics id="S4.T3.11.11.11.11.1.m1.1a"><mo id="S4.T3.11.11.11.11.1.m1.1.1" xref="S4.T3.11.11.11.11.1.m1.1.1.cmml">&amp;</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.11.1.m1.1b"><and id="S4.T3.11.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.11.1.m1.1.1"></and></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.11.1.m1.1c">\&amp;</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.11.1.m1.1d">&amp;</annotation></semantics></math> Sp.</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.2">418</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.3">OOM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.4">OOM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.5">45505</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.6">OOM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.11.7">OOM</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the feed-forward time and GPU memory consumption of the SparseFlex VAE model with different settings.  It shows the impact of the visibility ratio (α), which controls the fraction of voxels processed during each training iteration, and the effects of using the frustum-aware sectional voxel training strategy (FSV) and the SparseFlex representation (Sp).  The table helps demonstrate the efficiency gains achieved by SparseFlex and the FSV strategy, especially at higher resolutions where traditional methods often run out of memory (OOM).
> <details>
> <summary>read the caption</summary>
> Table 3: Feed-Forward time and GPU memory cost comparisons. α𝛼\alphaitalic_α stands for the visibility ratio of voxels. ‘OOM’ means Out Of Memory and ‘FSV’ means frustum-aware sectional voxel training strategy. ‘Sp’ means SparseFlex.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.3.3.3.4.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.4.1.2">InstantMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.4.1.3">Direct3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.3.3.3.4.1.4">TRELLIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21732v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.4.1.5">Ours</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.2">68.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.3">50.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1.4">47.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.5.1">44.95</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.3.3.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.2.2">KID (<math alttext="\times 10^{3}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.1.m1.1a"><mrow id="S4.T4.2.2.2.2.1.1.m1.1.1" xref="S4.T4.2.2.2.2.1.1.m1.1.1.cmml"><mi id="S4.T4.2.2.2.2.1.1.m1.1.1.2" xref="S4.T4.2.2.2.2.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T4.2.2.2.2.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.2.2.2.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T4.2.2.2.2.1.1.m1.1.1.3" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3.cmml"><mn id="S4.T4.2.2.2.2.1.1.m1.1.1.3.2" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T4.2.2.2.2.1.1.m1.1.1.3.3" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3.3.cmml">3</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.1.m1.1b"><apply id="S4.T4.2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.1.m1.1.1"><times id="S4.T4.2.2.2.2.1.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.2.1.1.m1.1.1.1"></times><csymbol cd="latexml" id="S4.T4.2.2.2.2.1.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.2.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T4.2.2.2.2.1.1.m1.1.1.3.cmml" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.2.2.2.2.1.1.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T4.2.2.2.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3.2">10</cn><cn id="S4.T4.2.2.2.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.2.2.2.2.1.1.m1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.1.m1.1c">\times 10^{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math>)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.2.2.m2.1"><semantics id="S4.T4.3.3.3.3.2.2.m2.1a"><mo id="S4.T4.3.3.3.3.2.2.m2.1.1" stretchy="false" xref="S4.T4.3.3.3.3.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.2.2.m2.1b"><ci id="S4.T4.3.3.3.3.2.2.m2.1.1.cmml" xref="S4.T4.3.3.3.3.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.2.2.m2.1d">↓</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.3.3.3">9.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.3.3.4">2.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.3.3.5">1.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.6.1">1.05</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the image-to-3D generation performance of different methods on the Toys4k dataset.  The metrics used are the Fréchet Inception Distance (FID) and Kernel Inception Distance (KID), which are common measures for assessing the quality of generated images. Lower FID and KID scores indicate better generation quality, reflecting a closer match between the generated images and real images.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative generation results on Toys4k.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21732/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21732/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}