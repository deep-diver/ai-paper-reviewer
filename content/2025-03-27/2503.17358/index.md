---
title: "Image as an IMU: Estimating Camera Motion from a Single Motion-Blurred Image"
summary: "Motion blur, usually a problem, is now a solution! This paper estimates camera motion from motion-blurred images, acting like an IMU."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Oxford",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17358 {{< /keyword >}}
{{< keyword icon="writer" >}} Jerred Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17358" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17358" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17358/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Fast camera motions cause motion blur**, which makes existing methods to estimate camera pose fails. Conventional approaches often discard blurred frames or rely on inertial measurement units (IMUs). This introduces challenges like sensor synchronization and drift. Therefore, motion blur has always been viewed as unwanted artifact. 



This paper introduces a novel approach: using motion blur as a cue for estimating camera motion. The method involves predicting a dense motion flow field and a monocular depth map from a single motion-blurred image. The instantaneous camera velocity is then recovered by solving a linear least squares problem. This creates an IMU-like measurement robust to fast movements. The model is trained on a new large-scale synthetic dataset and refined on real data using a fully differentiable pipeline.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Motion blur can be a useful cue for camera motion estimation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new method is proposed to estimate camera motion from single motion-blurred images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method achieves state-of-the-art results on real-world benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an **innovative method** for motion estimation, leveraging motion blur as a cue rather than a hindrance. It also contributes a **new dataset and a differentiable pipeline**, achieving state-of-the-art results and **opening new avenues** for research in motion estimation and visual odometry.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17358/x1.png)

> 🔼 Figure 1 illustrates the difference between traditional visual odometry/SLAM methods and the proposed method. Traditional methods (a) rely on feature matching between multiple frames to compute camera motion. However, this approach fails when significant motion blur is present during fast camera movements. The proposed method (b) directly estimates camera motion from a single motion-blurred image by exploiting motion blur as a cue, enabling robust estimation even under aggressive motions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Existing methods rely on establishing correspondences between multiple frames to estimate inter-frame camera motion (a). This leads to failures during fast motion with lots of blur. We propose a method that can estimate intra-frame camera motion from a single image (b), making our method robust to aggressive motions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.23">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.23.24.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T1.23.24.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.23.24.1.2" rowspan="2"><span class="ltx_text" id="S5.T1.23.24.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.23.24.1.3">billiards</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.23.24.1.4">commonroom</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.23.24.1.5">dining</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.23.24.1.6">office</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.23.24.1.7">avg</td>
</tr>
<tr class="ltx_tr" id="S5.T1.15.15">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.15.15.16"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3">
<math alttext="\omega_{x}" class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><msub id="S5.T1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.m1.1.1.cmml"><mi id="S5.T1.1.1.1.m1.1.1.2" xref="S5.T1.1.1.1.m1.1.1.2.cmml">ω</mi><mi id="S5.T1.1.1.1.m1.1.1.3" xref="S5.T1.1.1.1.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.1.1.1.m1.1.1.2">𝜔</ci><ci id="S5.T1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.1.1.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\omega_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">italic_ω start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{y}" class="ltx_Math" display="inline" id="S5.T1.2.2.2.m2.1"><semantics id="S5.T1.2.2.2.m2.1a"><msub id="S5.T1.2.2.2.m2.1.1" xref="S5.T1.2.2.2.m2.1.1.cmml"><mi id="S5.T1.2.2.2.m2.1.1.2" xref="S5.T1.2.2.2.m2.1.1.2.cmml">ω</mi><mi id="S5.T1.2.2.2.m2.1.1.3" xref="S5.T1.2.2.2.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.m2.1b"><apply id="S5.T1.2.2.2.m2.1.1.cmml" xref="S5.T1.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T1.2.2.2.m2.1.1.1.cmml" xref="S5.T1.2.2.2.m2.1.1">subscript</csymbol><ci id="S5.T1.2.2.2.m2.1.1.2.cmml" xref="S5.T1.2.2.2.m2.1.1.2">𝜔</ci><ci id="S5.T1.2.2.2.m2.1.1.3.cmml" xref="S5.T1.2.2.2.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.m2.1c">\omega_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.m2.1d">italic_ω start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{z}" class="ltx_Math" display="inline" id="S5.T1.3.3.3.m3.1"><semantics id="S5.T1.3.3.3.m3.1a"><msub id="S5.T1.3.3.3.m3.1.1" xref="S5.T1.3.3.3.m3.1.1.cmml"><mi id="S5.T1.3.3.3.m3.1.1.2" xref="S5.T1.3.3.3.m3.1.1.2.cmml">ω</mi><mi id="S5.T1.3.3.3.m3.1.1.3" xref="S5.T1.3.3.3.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.m3.1b"><apply id="S5.T1.3.3.3.m3.1.1.cmml" xref="S5.T1.3.3.3.m3.1.1"><csymbol cd="ambiguous" id="S5.T1.3.3.3.m3.1.1.1.cmml" xref="S5.T1.3.3.3.m3.1.1">subscript</csymbol><ci id="S5.T1.3.3.3.m3.1.1.2.cmml" xref="S5.T1.3.3.3.m3.1.1.2">𝜔</ci><ci id="S5.T1.3.3.3.m3.1.1.3.cmml" xref="S5.T1.3.3.3.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.m3.1c">\omega_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.m3.1d">italic_ω start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6">
<math alttext="\omega_{x}" class="ltx_Math" display="inline" id="S5.T1.4.4.4.m1.1"><semantics id="S5.T1.4.4.4.m1.1a"><msub id="S5.T1.4.4.4.m1.1.1" xref="S5.T1.4.4.4.m1.1.1.cmml"><mi id="S5.T1.4.4.4.m1.1.1.2" xref="S5.T1.4.4.4.m1.1.1.2.cmml">ω</mi><mi id="S5.T1.4.4.4.m1.1.1.3" xref="S5.T1.4.4.4.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.m1.1b"><apply id="S5.T1.4.4.4.m1.1.1.cmml" xref="S5.T1.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.4.4.4.m1.1.1.1.cmml" xref="S5.T1.4.4.4.m1.1.1">subscript</csymbol><ci id="S5.T1.4.4.4.m1.1.1.2.cmml" xref="S5.T1.4.4.4.m1.1.1.2">𝜔</ci><ci id="S5.T1.4.4.4.m1.1.1.3.cmml" xref="S5.T1.4.4.4.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.m1.1c">\omega_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.m1.1d">italic_ω start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{y}" class="ltx_Math" display="inline" id="S5.T1.5.5.5.m2.1"><semantics id="S5.T1.5.5.5.m2.1a"><msub id="S5.T1.5.5.5.m2.1.1" xref="S5.T1.5.5.5.m2.1.1.cmml"><mi id="S5.T1.5.5.5.m2.1.1.2" xref="S5.T1.5.5.5.m2.1.1.2.cmml">ω</mi><mi id="S5.T1.5.5.5.m2.1.1.3" xref="S5.T1.5.5.5.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.m2.1b"><apply id="S5.T1.5.5.5.m2.1.1.cmml" xref="S5.T1.5.5.5.m2.1.1"><csymbol cd="ambiguous" id="S5.T1.5.5.5.m2.1.1.1.cmml" xref="S5.T1.5.5.5.m2.1.1">subscript</csymbol><ci id="S5.T1.5.5.5.m2.1.1.2.cmml" xref="S5.T1.5.5.5.m2.1.1.2">𝜔</ci><ci id="S5.T1.5.5.5.m2.1.1.3.cmml" xref="S5.T1.5.5.5.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.m2.1c">\omega_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.m2.1d">italic_ω start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{z}" class="ltx_Math" display="inline" id="S5.T1.6.6.6.m3.1"><semantics id="S5.T1.6.6.6.m3.1a"><msub id="S5.T1.6.6.6.m3.1.1" xref="S5.T1.6.6.6.m3.1.1.cmml"><mi id="S5.T1.6.6.6.m3.1.1.2" xref="S5.T1.6.6.6.m3.1.1.2.cmml">ω</mi><mi id="S5.T1.6.6.6.m3.1.1.3" xref="S5.T1.6.6.6.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.m3.1b"><apply id="S5.T1.6.6.6.m3.1.1.cmml" xref="S5.T1.6.6.6.m3.1.1"><csymbol cd="ambiguous" id="S5.T1.6.6.6.m3.1.1.1.cmml" xref="S5.T1.6.6.6.m3.1.1">subscript</csymbol><ci id="S5.T1.6.6.6.m3.1.1.2.cmml" xref="S5.T1.6.6.6.m3.1.1.2">𝜔</ci><ci id="S5.T1.6.6.6.m3.1.1.3.cmml" xref="S5.T1.6.6.6.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.m3.1c">\omega_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.m3.1d">italic_ω start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9">
<math alttext="\omega_{x}" class="ltx_Math" display="inline" id="S5.T1.7.7.7.m1.1"><semantics id="S5.T1.7.7.7.m1.1a"><msub id="S5.T1.7.7.7.m1.1.1" xref="S5.T1.7.7.7.m1.1.1.cmml"><mi id="S5.T1.7.7.7.m1.1.1.2" xref="S5.T1.7.7.7.m1.1.1.2.cmml">ω</mi><mi id="S5.T1.7.7.7.m1.1.1.3" xref="S5.T1.7.7.7.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.m1.1b"><apply id="S5.T1.7.7.7.m1.1.1.cmml" xref="S5.T1.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.7.7.7.m1.1.1.1.cmml" xref="S5.T1.7.7.7.m1.1.1">subscript</csymbol><ci id="S5.T1.7.7.7.m1.1.1.2.cmml" xref="S5.T1.7.7.7.m1.1.1.2">𝜔</ci><ci id="S5.T1.7.7.7.m1.1.1.3.cmml" xref="S5.T1.7.7.7.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.m1.1c">\omega_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.m1.1d">italic_ω start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{y}" class="ltx_Math" display="inline" id="S5.T1.8.8.8.m2.1"><semantics id="S5.T1.8.8.8.m2.1a"><msub id="S5.T1.8.8.8.m2.1.1" xref="S5.T1.8.8.8.m2.1.1.cmml"><mi id="S5.T1.8.8.8.m2.1.1.2" xref="S5.T1.8.8.8.m2.1.1.2.cmml">ω</mi><mi id="S5.T1.8.8.8.m2.1.1.3" xref="S5.T1.8.8.8.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.8.m2.1b"><apply id="S5.T1.8.8.8.m2.1.1.cmml" xref="S5.T1.8.8.8.m2.1.1"><csymbol cd="ambiguous" id="S5.T1.8.8.8.m2.1.1.1.cmml" xref="S5.T1.8.8.8.m2.1.1">subscript</csymbol><ci id="S5.T1.8.8.8.m2.1.1.2.cmml" xref="S5.T1.8.8.8.m2.1.1.2">𝜔</ci><ci id="S5.T1.8.8.8.m2.1.1.3.cmml" xref="S5.T1.8.8.8.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.8.m2.1c">\omega_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.8.m2.1d">italic_ω start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{z}" class="ltx_Math" display="inline" id="S5.T1.9.9.9.m3.1"><semantics id="S5.T1.9.9.9.m3.1a"><msub id="S5.T1.9.9.9.m3.1.1" xref="S5.T1.9.9.9.m3.1.1.cmml"><mi id="S5.T1.9.9.9.m3.1.1.2" xref="S5.T1.9.9.9.m3.1.1.2.cmml">ω</mi><mi id="S5.T1.9.9.9.m3.1.1.3" xref="S5.T1.9.9.9.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.9.9.9.m3.1b"><apply id="S5.T1.9.9.9.m3.1.1.cmml" xref="S5.T1.9.9.9.m3.1.1"><csymbol cd="ambiguous" id="S5.T1.9.9.9.m3.1.1.1.cmml" xref="S5.T1.9.9.9.m3.1.1">subscript</csymbol><ci id="S5.T1.9.9.9.m3.1.1.2.cmml" xref="S5.T1.9.9.9.m3.1.1.2">𝜔</ci><ci id="S5.T1.9.9.9.m3.1.1.3.cmml" xref="S5.T1.9.9.9.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.9.9.m3.1c">\omega_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.9.9.m3.1d">italic_ω start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.12.12.12">
<math alttext="\omega_{x}" class="ltx_Math" display="inline" id="S5.T1.10.10.10.m1.1"><semantics id="S5.T1.10.10.10.m1.1a"><msub id="S5.T1.10.10.10.m1.1.1" xref="S5.T1.10.10.10.m1.1.1.cmml"><mi id="S5.T1.10.10.10.m1.1.1.2" xref="S5.T1.10.10.10.m1.1.1.2.cmml">ω</mi><mi id="S5.T1.10.10.10.m1.1.1.3" xref="S5.T1.10.10.10.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.10.10.10.m1.1b"><apply id="S5.T1.10.10.10.m1.1.1.cmml" xref="S5.T1.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.10.10.10.m1.1.1.1.cmml" xref="S5.T1.10.10.10.m1.1.1">subscript</csymbol><ci id="S5.T1.10.10.10.m1.1.1.2.cmml" xref="S5.T1.10.10.10.m1.1.1.2">𝜔</ci><ci id="S5.T1.10.10.10.m1.1.1.3.cmml" xref="S5.T1.10.10.10.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.10.10.m1.1c">\omega_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.10.10.m1.1d">italic_ω start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{y}" class="ltx_Math" display="inline" id="S5.T1.11.11.11.m2.1"><semantics id="S5.T1.11.11.11.m2.1a"><msub id="S5.T1.11.11.11.m2.1.1" xref="S5.T1.11.11.11.m2.1.1.cmml"><mi id="S5.T1.11.11.11.m2.1.1.2" xref="S5.T1.11.11.11.m2.1.1.2.cmml">ω</mi><mi id="S5.T1.11.11.11.m2.1.1.3" xref="S5.T1.11.11.11.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.11.11.11.m2.1b"><apply id="S5.T1.11.11.11.m2.1.1.cmml" xref="S5.T1.11.11.11.m2.1.1"><csymbol cd="ambiguous" id="S5.T1.11.11.11.m2.1.1.1.cmml" xref="S5.T1.11.11.11.m2.1.1">subscript</csymbol><ci id="S5.T1.11.11.11.m2.1.1.2.cmml" xref="S5.T1.11.11.11.m2.1.1.2">𝜔</ci><ci id="S5.T1.11.11.11.m2.1.1.3.cmml" xref="S5.T1.11.11.11.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.11.11.m2.1c">\omega_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.11.11.m2.1d">italic_ω start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{z}" class="ltx_Math" display="inline" id="S5.T1.12.12.12.m3.1"><semantics id="S5.T1.12.12.12.m3.1a"><msub id="S5.T1.12.12.12.m3.1.1" xref="S5.T1.12.12.12.m3.1.1.cmml"><mi id="S5.T1.12.12.12.m3.1.1.2" xref="S5.T1.12.12.12.m3.1.1.2.cmml">ω</mi><mi id="S5.T1.12.12.12.m3.1.1.3" xref="S5.T1.12.12.12.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.12.12.12.m3.1b"><apply id="S5.T1.12.12.12.m3.1.1.cmml" xref="S5.T1.12.12.12.m3.1.1"><csymbol cd="ambiguous" id="S5.T1.12.12.12.m3.1.1.1.cmml" xref="S5.T1.12.12.12.m3.1.1">subscript</csymbol><ci id="S5.T1.12.12.12.m3.1.1.2.cmml" xref="S5.T1.12.12.12.m3.1.1.2">𝜔</ci><ci id="S5.T1.12.12.12.m3.1.1.3.cmml" xref="S5.T1.12.12.12.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.12.12.m3.1c">\omega_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.12.12.m3.1d">italic_ω start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.15.15.15">
<math alttext="\omega_{x}" class="ltx_Math" display="inline" id="S5.T1.13.13.13.m1.1"><semantics id="S5.T1.13.13.13.m1.1a"><msub id="S5.T1.13.13.13.m1.1.1" xref="S5.T1.13.13.13.m1.1.1.cmml"><mi id="S5.T1.13.13.13.m1.1.1.2" xref="S5.T1.13.13.13.m1.1.1.2.cmml">ω</mi><mi id="S5.T1.13.13.13.m1.1.1.3" xref="S5.T1.13.13.13.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.13.13.13.m1.1b"><apply id="S5.T1.13.13.13.m1.1.1.cmml" xref="S5.T1.13.13.13.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.13.13.13.m1.1.1.1.cmml" xref="S5.T1.13.13.13.m1.1.1">subscript</csymbol><ci id="S5.T1.13.13.13.m1.1.1.2.cmml" xref="S5.T1.13.13.13.m1.1.1.2">𝜔</ci><ci id="S5.T1.13.13.13.m1.1.1.3.cmml" xref="S5.T1.13.13.13.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.13.13.13.m1.1c">\omega_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.13.13.13.m1.1d">italic_ω start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{y}" class="ltx_Math" display="inline" id="S5.T1.14.14.14.m2.1"><semantics id="S5.T1.14.14.14.m2.1a"><msub id="S5.T1.14.14.14.m2.1.1" xref="S5.T1.14.14.14.m2.1.1.cmml"><mi id="S5.T1.14.14.14.m2.1.1.2" xref="S5.T1.14.14.14.m2.1.1.2.cmml">ω</mi><mi id="S5.T1.14.14.14.m2.1.1.3" xref="S5.T1.14.14.14.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.14.14.14.m2.1b"><apply id="S5.T1.14.14.14.m2.1.1.cmml" xref="S5.T1.14.14.14.m2.1.1"><csymbol cd="ambiguous" id="S5.T1.14.14.14.m2.1.1.1.cmml" xref="S5.T1.14.14.14.m2.1.1">subscript</csymbol><ci id="S5.T1.14.14.14.m2.1.1.2.cmml" xref="S5.T1.14.14.14.m2.1.1.2">𝜔</ci><ci id="S5.T1.14.14.14.m2.1.1.3.cmml" xref="S5.T1.14.14.14.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.14.14.14.m2.1c">\omega_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.14.14.14.m2.1d">italic_ω start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="\omega_{z}" class="ltx_Math" display="inline" id="S5.T1.15.15.15.m3.1"><semantics id="S5.T1.15.15.15.m3.1a"><msub id="S5.T1.15.15.15.m3.1.1" xref="S5.T1.15.15.15.m3.1.1.cmml"><mi id="S5.T1.15.15.15.m3.1.1.2" xref="S5.T1.15.15.15.m3.1.1.2.cmml">ω</mi><mi id="S5.T1.15.15.15.m3.1.1.3" xref="S5.T1.15.15.15.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.15.15.15.m3.1b"><apply id="S5.T1.15.15.15.m3.1.1.cmml" xref="S5.T1.15.15.15.m3.1.1"><csymbol cd="ambiguous" id="S5.T1.15.15.15.m3.1.1.1.cmml" xref="S5.T1.15.15.15.m3.1.1">subscript</csymbol><ci id="S5.T1.15.15.15.m3.1.1.2.cmml" xref="S5.T1.15.15.15.m3.1.1.2">𝜔</ci><ci id="S5.T1.15.15.15.m3.1.1.3.cmml" xref="S5.T1.15.15.15.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.15.15.15.m3.1c">\omega_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.15.15.15.m3.1d">italic_ω start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T1.20.20.6" rowspan="4">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S5.T1.20.20.6.1" style="width:2.8pt;">
<span class="ltx_p" id="S5.T1.20.20.6.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.20.20.6.1.1.1" style="width:6.8pt;height:12.8pt;vertical-align:-3.0pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-2.97pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T1.20.20.6.1.1.1.1">MI</span>
</span></span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.20.20.7">COLMAP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.16.16.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.16.16.1.m1.1"><semantics id="S5.T1.16.16.1.m1.1a"><mo id="S5.T1.16.16.1.m1.1.1" xref="S5.T1.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.16.16.1.m1.1b"><times id="S5.T1.16.16.1.m1.1.1.cmml" xref="S5.T1.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.16.16.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.17.2"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.17.17.2.m1.1"><semantics id="S5.T1.17.17.2.m1.1a"><mo id="S5.T1.17.17.2.m1.1.1" xref="S5.T1.17.17.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.17.17.2.m1.1b"><times id="S5.T1.17.17.2.m1.1.1.cmml" xref="S5.T1.17.17.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.17.17.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.17.17.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.18.3"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.18.18.3.m1.1"><semantics id="S5.T1.18.18.3.m1.1a"><mo id="S5.T1.18.18.3.m1.1.1" xref="S5.T1.18.18.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.18.18.3.m1.1b"><times id="S5.T1.18.18.3.m1.1.1.cmml" xref="S5.T1.18.18.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.18.18.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.18.18.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.19.19.4"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.19.19.4.m1.1"><semantics id="S5.T1.19.19.4.m1.1a"><mo id="S5.T1.19.19.4.m1.1.1" xref="S5.T1.19.19.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.19.19.4.m1.1b"><times id="S5.T1.19.19.4.m1.1.1.cmml" xref="S5.T1.19.19.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.19.19.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.19.19.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.20.20.5"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.20.20.5.m1.1"><semantics id="S5.T1.20.20.5.m1.1a"><mo id="S5.T1.20.20.5.m1.1.1" xref="S5.T1.20.20.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.20.20.5.m1.1b"><minus id="S5.T1.20.20.5.m1.1.1.cmml" xref="S5.T1.20.20.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.20.20.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.20.20.5.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.21.21.1">    
<div class="ltx_inline-block ltx_transformed_outer" id="S5.T1.21.21.1.1" style="width:5.0pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:5.0pt;transform:translate(0pt,0pt) rotate(-180deg) ;">
<p class="ltx_p" id="S5.T1.21.21.1.1.1"><math alttext="\Lsh" class="ltx_Math" display="inline" id="S5.T1.21.21.1.1.1.m1.1"><semantics id="S5.T1.21.21.1.1.1.m1.1a"><mo id="S5.T1.21.21.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.21.21.1.1.1.m1.1.1.cmml">↰</mo><annotation-xml encoding="MathML-Content" id="S5.T1.21.21.1.1.1.m1.1b"><ci id="S5.T1.21.21.1.1.1.m1.1.1.cmml" xref="S5.T1.21.21.1.1.1.m1.1.1">↰</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.21.21.1.1.1.m1.1c">\Lsh</annotation><annotation encoding="application/x-llamapun" id="S5.T1.21.21.1.1.1.m1.1d">↰</annotation></semantics></math></p>
</span></div> D+LG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.23.23.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.4.1">2.32</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.4.2">1.94</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.23.4.3">1.50</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.23.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.5.1">1.19</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.5.2">1.61</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.23.5.3">0.91</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.22.22.2"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.22.22.2.m1.1"><semantics id="S5.T1.22.22.2.m1.1a"><mo id="S5.T1.22.22.2.m1.1.1" xref="S5.T1.22.22.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.22.22.2.m1.1b"><times id="S5.T1.22.22.2.m1.1.1.cmml" xref="S5.T1.22.22.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.22.22.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.22.22.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.23.23.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.6.1">3.06</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.6.2">2.51</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.23.6.3">3.93</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.23.23.3"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.23.23.3.m1.1"><semantics id="S5.T1.23.23.3.m1.1a"><mo id="S5.T1.23.23.3.m1.1.1" xref="S5.T1.23.23.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.23.23.3.m1.1b"><minus id="S5.T1.23.23.3.m1.1.1.cmml" xref="S5.T1.23.23.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.23.23.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.23.23.3.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.25.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.23.25.2.1">MASt3R <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.23.25.2.2">5.30 / 2.85 / 4.45</td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.25.2.3">3.70 / 3.75 / 3.26</td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.25.2.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.4.1">2.36</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.4.2">0.84</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.4.3">1.67</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.23.25.2.5">4.78 / 3.03 / 6.21</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.23.25.2.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.6.1">4.04</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.6.2">2.62</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.25.2.6.3">3.90</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.26.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.23.26.3.1">DROID-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.23.26.3.2">5.39 / 3.33 / 5.31</td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.26.3.3">3.01 / 5.89 / 3.57</td>
<td class="ltx_td ltx_align_center" id="S5.T1.23.26.3.4">2.92 / 1.20 / 1.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.23.26.3.5">6.33 / 4.90 / 5.56</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.23.26.3.6">4.41 / 3.83 / 4.10</td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.27.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T1.23.27.4.1">
<div class="ltx_inline-block ltx_parbox ltx_align_top ltx_transformed_outer" id="S5.T1.23.27.4.1.1" style="width:2.8pt;height:9.199999999999999pt;vertical-align:-1.2pt;"><span class="ltx_transformed_inner" style="width:9.2pt;transform:translate(-1.17pt,0pt) rotate(-90deg) ;">
<p class="ltx_p" id="S5.T1.23.27.4.1.1.1">SI</p>
</span></div>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.23.27.4.2">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.23.27.4.3">
<span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.3.1">1.31</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.3.2">0.87</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.27.4.3.3">1.60</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.23.27.4.4">
<span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.4.1">0.93</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.4.2">0.88</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.23.27.4.4.3">1.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.23.27.4.5">
<span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.5.1">0.87</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.5.2">0.50</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.5.3">1.33</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.23.27.4.6">
<span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.6.1">1.76</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.6.2">1.38</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.6.3">3.08</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.23.27.4.7">
<span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.7.1">1.22</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.7.2">0.91</span> / <span class="ltx_text ltx_font_bold" id="S5.T1.23.27.4.7.3">1.76</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.28.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.2"><span class="ltx_text" id="S5.T1.23.28.5.2.1" style="color:#808080;">Zero-Velocity baseline</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.3"><span class="ltx_text" id="S5.T1.23.28.5.3.1" style="color:#808080;">5.39 / 3.43 / 5.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.4"><span class="ltx_text" id="S5.T1.23.28.5.4.1" style="color:#808080;">3.95 / 4.50 / 2.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.5"><span class="ltx_text" id="S5.T1.23.28.5.5.1" style="color:#808080;">4.58 / 1.53 / 3.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.28.5.6"><span class="ltx_text" id="S5.T1.23.28.5.6.1" style="color:#808080;">5.43 / 3.19 / 6.99</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.23.28.5.7"><span class="ltx_text" id="S5.T1.23.28.5.7.1" style="color:#808080;">4.84 / 3.16 / 4.66</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Root Mean Squared Error (RMSE) for rotational velocities along the x, y, and z axes, measured in radians per second (rad/s).  The performance of several methods is compared, categorized as either multi-image (MI) methods or single-image (SI) methods, reflecting whether the methods process multiple images or a single image for pose estimation. The best and second-best results for each method are highlighted using bold and underlined font respectively. An 'x' indicates that a method failed to reconstruct camera poses for a particular scene.
> <details>
> <summary>read the caption</summary>
> Table 1: RMSE for rotational velocities across each axis, in rad/s. We evaluate against multi-image (MI) and single-image (SI) methods. The best and second-best results are bolded and underlined, respectively. The ×\times× represents a failure to reconstruct the poses.
> </details>





### In-depth insights


#### Blur as Motion
The idea of leveraging motion blur as a cue for understanding camera movement represents a significant shift in perspective. Traditionally, blur is seen as an artifact to be removed, but recent research suggests its potential as a valuable source of information. **Motion blur directly reflects the camera's trajectory during the exposure time**, offering insights into both the speed and direction of movement. This approach could be particularly beneficial in scenarios where traditional visual odometry or SLAM methods struggle due to insufficient texture or rapid motion. Extracting reliable motion information from blur requires sophisticated techniques to disentangle the effects of scene geometry, camera motion, and the blurring process itself. **Advanced algorithms can be developed to estimate camera motion parameters directly from the blurred image, potentially achieving robustness against challenging conditions**. By exploiting blur as an informative cue, it might be possible to create more resilient and accurate systems for visual navigation, robotics, and augmented reality applications.

#### IMU-like Vision
The idea of "IMU-like Vision" is intriguing, aiming to derive motion information directly from visual data akin to how an Inertial Measurement Unit (IMU) functions. This approach seeks to **extract instantaneous velocity and angular rate** from images, bypassing traditional methods. The paper effectively turns motion blur into a valuable cue, potentially **eliminating the need for IMUs** in some applications. It's a significant shift from treating motion blur as an artifact to actively leveraging it. It enables robust camera motion estimates even in challenging, fast-motion scenarios where conventional methods falter. By extracting a dense motion flow field from motion-blurred images, it provides the relative motion of the camera, yielding an instantaneous rotational and translation velocity, directly providing **IMU-like measurements robust to fast and aggressive movements**.

#### Differentiable Solver
While the heading 'Differentiable Solver' isn't explicitly present, the paper extensively employs differentiable techniques. Crucially, the method utilizes a **differentiable least squares solver** to recover camera velocity from predicted flow and depth. This differentiability is vital, enabling **end-to-end training** of the entire network, including the velocity estimation process, with pose supervision. The network can directly learn to predict flow and depth representations that are most suitable for accurate camera motion estimation. Without the differentiability, the velocity solver would act as a non-differentiable bottleneck, preventing the gradients from flowing back to the flow and depth prediction modules. The reorientation function helps stabilize the training, allowing for consistent output. It provides clear pose supervision, which is important for obtaining optimal solutions. 

#### Real-world Robust
The notion of 'Real-world Robust' in a research paper, especially in areas like computer vision or robotics, typically refers to the ability of a proposed method or system to perform reliably and accurately when deployed in uncontrolled, everyday environments. This is a crucial aspect of any practical application. Demonstrating real-world robustness often involves testing the system under a variety of challenging conditions that are commonly encountered outside of a lab setting. These might include **variations in lighting, occlusions, noisy sensor data, unexpected object appearances, and dynamic environments**. The evaluation metrics used to assess robustness would likely go beyond simple accuracy measurements and incorporate aspects like **reliability, failure rate, and adaptability to unforeseen circumstances**.A system that is 'Real-world Robust' should be able to gracefully handle these challenges, maintaining acceptable performance even when faced with imperfect or incomplete data. This requires careful consideration of factors such as **sensor noise, calibration errors, and the limitations of the underlying algorithms**. Techniques such as data augmentation, robust optimization methods, and adaptive filtering can be employed to improve the system's resilience to real-world conditions. The ultimate goal is to create a system that can operate reliably and effectively in the complex and unpredictable environments that characterize real-world applications. A **rigorous evaluation** on diverse datasets is important.

#### No Deblurring
The "No Deblurring" aspect of this paper is a key innovation. Instead of attempting to remove motion blur, which is a difficult and often imperfect process, the method **explicitly leverages the blur as a source of information**. Traditional approaches treat blur as noise, discarding blurred frames or trying to computationally reverse the blurring effect. This work inverts that paradigm, recognizing that **the characteristics of the blur (direction, length, intensity) directly correlate with the camera's motion during the exposure**. By directly modeling and interpreting the motion blur, the system avoids the error-prone deblurring step, potentially leading to more robust and accurate motion estimation, especially in scenarios with severe blur where deblurring algorithms struggle. It simplifies the process and allows the model to focus on learning the relationship between blur and motion.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17358/x2.png)

> 🔼 This figure illustrates the proposed method for estimating camera motion from a single motion-blurred image. The process begins by inputting a motion-blurred image into a neural network. This network predicts a dense flow field and a monocular depth map. These predictions are then used to construct a linear system of equations, solved using linear least squares to estimate the optimal camera velocity parameters. The method's differentiability allows for end-to-end training of the entire network, directly supervised using known camera motion.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our method. Given a single motion blurred image, we pass it through the network to obtain a dense flow field and monocular depth prediction (Section 4.1). These are then formulated in a linear system, where the optimal velocity parameters are solved for using linear least squares (Section 4.2). Because the linear solver is fully differentiable, we can train the entire network end-to-end, supervised on the camera motion.
> </details>



![](https://arxiv.org/html/2503.17358/x3.png)

> 🔼 This figure illustrates the process of creating a synthetic dataset for training a model to estimate camera motion from a single motion-blurred image.  The process begins with preprocessing a subset of the ScanNet++v2 dataset. Selected frames are then passed through an interpolation network (like RIFE) to generate a synthetic motion-blurred image.  Simultaneously, the first and last frames from the sequence are used to create ground truth depth information (represented as  \hat{D}).  This depth map, along with the motion blurred image, is used to compute a ground truth dense flow field (represented as \hat{F}). These generated data points (blurred image,  \hat{D}, and \hat{F}) comprise the synthetic training dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview for our synthetic dataset generation process. After preprocessing the dataset, we run selected frames through an interpolation network, which we use to synthesize our blurred image. We also take the first and last virtual frames to generate 𝒟^^𝒟\mathcal{\hat{D}}over^ start_ARG caligraphic_D end_ARG, which is subsequently used for computing ℱ^^ℱ\mathcal{\hat{F}}over^ start_ARG caligraphic_F end_ARG.
> </details>



![](https://arxiv.org/html/2503.17358/x4.png)

> 🔼 Figure 4 presents a comparison of the estimated velocities (rotational and translational) for the 'billiards' sequence obtained using three different methods: the proposed method, MASt3R, and COLMAP (combined with DISK and LightGlue).  The shaded regions in the plots represent the error between each method's velocity prediction and the ground truth velocity. The results demonstrate that the proposed method outperforms MASt3R in both rotational and translational velocity estimation. While COLMAP with DISK+LightGlue achieves comparable accuracy in rotational velocity estimation, the proposed method shows a clear advantage in translational velocity estimation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of the predicted velocities for the billiards sequence using our method, MASt3R and COLMAP (w/ DISK+LightGlue). The shaded area under the curve shows the error between the predicted velocity and GT velocity. Our translations and rotations are significantly better than MASt3R. While COLMAP with DISK + LightGlue feature matching does well on rotations, our method significantly outperforms it on translations.
> </details>



![](https://arxiv.org/html/2503.17358/x5.png)

> 🔼 Figure 5 presents the cumulative distribution functions (CDFs) of the errors for translational and rotational velocities obtained from the billiards sequence. The left plot displays the CDF of the translational velocity errors, and the right plot shows the CDF of the rotational velocity errors.  A curve closer to the top-left corner indicates better performance, meaning smaller errors in both translational and rotational velocity estimation.  The closer the curve is to the top-left corner, the lower the errors are.
> <details>
> <summary>read the caption</summary>
> Figure 5: Error CDFs for the billiards sequence, such that the left plot shows the distribution of translational error in the sequence and the right plot the rotational error. Curves closer to the top-left corner are better.
> </details>



![](https://arxiv.org/html/2503.17358/extracted/6300094/figures/robot_arm_cropped.png)

> 🔼 This figure showcases a real-world application of the proposed method.  Panel (a) displays the robotic arm (RoArm-M1) used to capture the data. The arm's rapid movement introduces significant motion blur into the captured images.  Panel (b) presents a comparison of the velocity estimations. The graph plots the predicted camera velocity from the single motion-blurred images against the ground truth velocity obtained through IMU measurements and precise robotic arm pose estimations. This demonstrates the method's effectiveness in accurately estimating camera motion from a single motion-blurred image, even during high-speed movements.
> <details>
> <summary>read the caption</summary>
> Figure 6: Real-world application example of our method using a camera attached to a fast-moving RoArm-M1 robot arm platform. (a) The robot arm used for recording. (b) The predicted and GT velocity time series for the camera attached to the end-effector.
> </details>



![](https://arxiv.org/html/2503.17358/x6.png)

> 🔼 This figure compares the camera velocity estimates from the proposed method and IMU integration. The IMU initially provides accurate estimates, but it starts to drift after a few seconds. In contrast, the proposed method produces accurate and consistent velocity estimates throughout the entire sequence, highlighting its superior robustness and stability in handling long-duration camera motion.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of our method to using IMU integration. The IMU velocity estimate is accurate for a few seconds until it drifts. Our method provides accurate and drift-free estimates throughout the sequence.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.23">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.23.24.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T2.23.24.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.23.24.1.2" rowspan="2"><span class="ltx_text" id="S5.T2.23.24.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.23.24.1.3">billiards</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.23.24.1.4">commonroom</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.23.24.1.5">dining</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.23.24.1.6">office</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.23.24.1.7">avg</td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.15">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.15.15.16"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3">
<math alttext="v_{x}" class="ltx_Math" display="inline" id="S5.T2.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.m1.1a"><msub id="S5.T2.1.1.1.m1.1.1" xref="S5.T2.1.1.1.m1.1.1.cmml"><mi id="S5.T2.1.1.1.m1.1.1.2" xref="S5.T2.1.1.1.m1.1.1.2.cmml">v</mi><mi id="S5.T2.1.1.1.m1.1.1.3" xref="S5.T2.1.1.1.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.m1.1b"><apply id="S5.T2.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.1.1.1.m1.1.1.1.cmml" xref="S5.T2.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T2.1.1.1.m1.1.1.2.cmml" xref="S5.T2.1.1.1.m1.1.1.2">𝑣</ci><ci id="S5.T2.1.1.1.m1.1.1.3.cmml" xref="S5.T2.1.1.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.m1.1c">v_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.m1.1d">italic_v start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{y}" class="ltx_Math" display="inline" id="S5.T2.2.2.2.m2.1"><semantics id="S5.T2.2.2.2.m2.1a"><msub id="S5.T2.2.2.2.m2.1.1" xref="S5.T2.2.2.2.m2.1.1.cmml"><mi id="S5.T2.2.2.2.m2.1.1.2" xref="S5.T2.2.2.2.m2.1.1.2.cmml">v</mi><mi id="S5.T2.2.2.2.m2.1.1.3" xref="S5.T2.2.2.2.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.m2.1b"><apply id="S5.T2.2.2.2.m2.1.1.cmml" xref="S5.T2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.2.2.2.m2.1.1.1.cmml" xref="S5.T2.2.2.2.m2.1.1">subscript</csymbol><ci id="S5.T2.2.2.2.m2.1.1.2.cmml" xref="S5.T2.2.2.2.m2.1.1.2">𝑣</ci><ci id="S5.T2.2.2.2.m2.1.1.3.cmml" xref="S5.T2.2.2.2.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.m2.1c">v_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.m2.1d">italic_v start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{z}" class="ltx_Math" display="inline" id="S5.T2.3.3.3.m3.1"><semantics id="S5.T2.3.3.3.m3.1a"><msub id="S5.T2.3.3.3.m3.1.1" xref="S5.T2.3.3.3.m3.1.1.cmml"><mi id="S5.T2.3.3.3.m3.1.1.2" xref="S5.T2.3.3.3.m3.1.1.2.cmml">v</mi><mi id="S5.T2.3.3.3.m3.1.1.3" xref="S5.T2.3.3.3.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.m3.1b"><apply id="S5.T2.3.3.3.m3.1.1.cmml" xref="S5.T2.3.3.3.m3.1.1"><csymbol cd="ambiguous" id="S5.T2.3.3.3.m3.1.1.1.cmml" xref="S5.T2.3.3.3.m3.1.1">subscript</csymbol><ci id="S5.T2.3.3.3.m3.1.1.2.cmml" xref="S5.T2.3.3.3.m3.1.1.2">𝑣</ci><ci id="S5.T2.3.3.3.m3.1.1.3.cmml" xref="S5.T2.3.3.3.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.m3.1c">v_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.m3.1d">italic_v start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6">
<math alttext="v_{x}" class="ltx_Math" display="inline" id="S5.T2.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.m1.1a"><msub id="S5.T2.4.4.4.m1.1.1" xref="S5.T2.4.4.4.m1.1.1.cmml"><mi id="S5.T2.4.4.4.m1.1.1.2" xref="S5.T2.4.4.4.m1.1.1.2.cmml">v</mi><mi id="S5.T2.4.4.4.m1.1.1.3" xref="S5.T2.4.4.4.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.m1.1b"><apply id="S5.T2.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.4.4.4.m1.1.1.1.cmml" xref="S5.T2.4.4.4.m1.1.1">subscript</csymbol><ci id="S5.T2.4.4.4.m1.1.1.2.cmml" xref="S5.T2.4.4.4.m1.1.1.2">𝑣</ci><ci id="S5.T2.4.4.4.m1.1.1.3.cmml" xref="S5.T2.4.4.4.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.m1.1c">v_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.m1.1d">italic_v start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{y}" class="ltx_Math" display="inline" id="S5.T2.5.5.5.m2.1"><semantics id="S5.T2.5.5.5.m2.1a"><msub id="S5.T2.5.5.5.m2.1.1" xref="S5.T2.5.5.5.m2.1.1.cmml"><mi id="S5.T2.5.5.5.m2.1.1.2" xref="S5.T2.5.5.5.m2.1.1.2.cmml">v</mi><mi id="S5.T2.5.5.5.m2.1.1.3" xref="S5.T2.5.5.5.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.m2.1b"><apply id="S5.T2.5.5.5.m2.1.1.cmml" xref="S5.T2.5.5.5.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.5.5.5.m2.1.1.1.cmml" xref="S5.T2.5.5.5.m2.1.1">subscript</csymbol><ci id="S5.T2.5.5.5.m2.1.1.2.cmml" xref="S5.T2.5.5.5.m2.1.1.2">𝑣</ci><ci id="S5.T2.5.5.5.m2.1.1.3.cmml" xref="S5.T2.5.5.5.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.m2.1c">v_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.m2.1d">italic_v start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{z}" class="ltx_Math" display="inline" id="S5.T2.6.6.6.m3.1"><semantics id="S5.T2.6.6.6.m3.1a"><msub id="S5.T2.6.6.6.m3.1.1" xref="S5.T2.6.6.6.m3.1.1.cmml"><mi id="S5.T2.6.6.6.m3.1.1.2" xref="S5.T2.6.6.6.m3.1.1.2.cmml">v</mi><mi id="S5.T2.6.6.6.m3.1.1.3" xref="S5.T2.6.6.6.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.m3.1b"><apply id="S5.T2.6.6.6.m3.1.1.cmml" xref="S5.T2.6.6.6.m3.1.1"><csymbol cd="ambiguous" id="S5.T2.6.6.6.m3.1.1.1.cmml" xref="S5.T2.6.6.6.m3.1.1">subscript</csymbol><ci id="S5.T2.6.6.6.m3.1.1.2.cmml" xref="S5.T2.6.6.6.m3.1.1.2">𝑣</ci><ci id="S5.T2.6.6.6.m3.1.1.3.cmml" xref="S5.T2.6.6.6.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.m3.1c">v_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.m3.1d">italic_v start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.9.9.9">
<math alttext="v_{x}" class="ltx_Math" display="inline" id="S5.T2.7.7.7.m1.1"><semantics id="S5.T2.7.7.7.m1.1a"><msub id="S5.T2.7.7.7.m1.1.1" xref="S5.T2.7.7.7.m1.1.1.cmml"><mi id="S5.T2.7.7.7.m1.1.1.2" xref="S5.T2.7.7.7.m1.1.1.2.cmml">v</mi><mi id="S5.T2.7.7.7.m1.1.1.3" xref="S5.T2.7.7.7.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.m1.1b"><apply id="S5.T2.7.7.7.m1.1.1.cmml" xref="S5.T2.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.7.7.7.m1.1.1.1.cmml" xref="S5.T2.7.7.7.m1.1.1">subscript</csymbol><ci id="S5.T2.7.7.7.m1.1.1.2.cmml" xref="S5.T2.7.7.7.m1.1.1.2">𝑣</ci><ci id="S5.T2.7.7.7.m1.1.1.3.cmml" xref="S5.T2.7.7.7.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.m1.1c">v_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.m1.1d">italic_v start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{y}" class="ltx_Math" display="inline" id="S5.T2.8.8.8.m2.1"><semantics id="S5.T2.8.8.8.m2.1a"><msub id="S5.T2.8.8.8.m2.1.1" xref="S5.T2.8.8.8.m2.1.1.cmml"><mi id="S5.T2.8.8.8.m2.1.1.2" xref="S5.T2.8.8.8.m2.1.1.2.cmml">v</mi><mi id="S5.T2.8.8.8.m2.1.1.3" xref="S5.T2.8.8.8.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.m2.1b"><apply id="S5.T2.8.8.8.m2.1.1.cmml" xref="S5.T2.8.8.8.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.8.8.8.m2.1.1.1.cmml" xref="S5.T2.8.8.8.m2.1.1">subscript</csymbol><ci id="S5.T2.8.8.8.m2.1.1.2.cmml" xref="S5.T2.8.8.8.m2.1.1.2">𝑣</ci><ci id="S5.T2.8.8.8.m2.1.1.3.cmml" xref="S5.T2.8.8.8.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.m2.1c">v_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.m2.1d">italic_v start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{z}" class="ltx_Math" display="inline" id="S5.T2.9.9.9.m3.1"><semantics id="S5.T2.9.9.9.m3.1a"><msub id="S5.T2.9.9.9.m3.1.1" xref="S5.T2.9.9.9.m3.1.1.cmml"><mi id="S5.T2.9.9.9.m3.1.1.2" xref="S5.T2.9.9.9.m3.1.1.2.cmml">v</mi><mi id="S5.T2.9.9.9.m3.1.1.3" xref="S5.T2.9.9.9.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.m3.1b"><apply id="S5.T2.9.9.9.m3.1.1.cmml" xref="S5.T2.9.9.9.m3.1.1"><csymbol cd="ambiguous" id="S5.T2.9.9.9.m3.1.1.1.cmml" xref="S5.T2.9.9.9.m3.1.1">subscript</csymbol><ci id="S5.T2.9.9.9.m3.1.1.2.cmml" xref="S5.T2.9.9.9.m3.1.1.2">𝑣</ci><ci id="S5.T2.9.9.9.m3.1.1.3.cmml" xref="S5.T2.9.9.9.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.m3.1c">v_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.m3.1d">italic_v start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.12.12">
<math alttext="v_{x}" class="ltx_Math" display="inline" id="S5.T2.10.10.10.m1.1"><semantics id="S5.T2.10.10.10.m1.1a"><msub id="S5.T2.10.10.10.m1.1.1" xref="S5.T2.10.10.10.m1.1.1.cmml"><mi id="S5.T2.10.10.10.m1.1.1.2" xref="S5.T2.10.10.10.m1.1.1.2.cmml">v</mi><mi id="S5.T2.10.10.10.m1.1.1.3" xref="S5.T2.10.10.10.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.m1.1b"><apply id="S5.T2.10.10.10.m1.1.1.cmml" xref="S5.T2.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.10.10.10.m1.1.1.1.cmml" xref="S5.T2.10.10.10.m1.1.1">subscript</csymbol><ci id="S5.T2.10.10.10.m1.1.1.2.cmml" xref="S5.T2.10.10.10.m1.1.1.2">𝑣</ci><ci id="S5.T2.10.10.10.m1.1.1.3.cmml" xref="S5.T2.10.10.10.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.m1.1c">v_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.m1.1d">italic_v start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{y}" class="ltx_Math" display="inline" id="S5.T2.11.11.11.m2.1"><semantics id="S5.T2.11.11.11.m2.1a"><msub id="S5.T2.11.11.11.m2.1.1" xref="S5.T2.11.11.11.m2.1.1.cmml"><mi id="S5.T2.11.11.11.m2.1.1.2" xref="S5.T2.11.11.11.m2.1.1.2.cmml">v</mi><mi id="S5.T2.11.11.11.m2.1.1.3" xref="S5.T2.11.11.11.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.11.m2.1b"><apply id="S5.T2.11.11.11.m2.1.1.cmml" xref="S5.T2.11.11.11.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.11.11.11.m2.1.1.1.cmml" xref="S5.T2.11.11.11.m2.1.1">subscript</csymbol><ci id="S5.T2.11.11.11.m2.1.1.2.cmml" xref="S5.T2.11.11.11.m2.1.1.2">𝑣</ci><ci id="S5.T2.11.11.11.m2.1.1.3.cmml" xref="S5.T2.11.11.11.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.11.m2.1c">v_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.11.m2.1d">italic_v start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{z}" class="ltx_Math" display="inline" id="S5.T2.12.12.12.m3.1"><semantics id="S5.T2.12.12.12.m3.1a"><msub id="S5.T2.12.12.12.m3.1.1" xref="S5.T2.12.12.12.m3.1.1.cmml"><mi id="S5.T2.12.12.12.m3.1.1.2" xref="S5.T2.12.12.12.m3.1.1.2.cmml">v</mi><mi id="S5.T2.12.12.12.m3.1.1.3" xref="S5.T2.12.12.12.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.12.m3.1b"><apply id="S5.T2.12.12.12.m3.1.1.cmml" xref="S5.T2.12.12.12.m3.1.1"><csymbol cd="ambiguous" id="S5.T2.12.12.12.m3.1.1.1.cmml" xref="S5.T2.12.12.12.m3.1.1">subscript</csymbol><ci id="S5.T2.12.12.12.m3.1.1.2.cmml" xref="S5.T2.12.12.12.m3.1.1.2">𝑣</ci><ci id="S5.T2.12.12.12.m3.1.1.3.cmml" xref="S5.T2.12.12.12.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.12.m3.1c">v_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.12.m3.1d">italic_v start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.15.15">
<math alttext="v_{x}" class="ltx_Math" display="inline" id="S5.T2.13.13.13.m1.1"><semantics id="S5.T2.13.13.13.m1.1a"><msub id="S5.T2.13.13.13.m1.1.1" xref="S5.T2.13.13.13.m1.1.1.cmml"><mi id="S5.T2.13.13.13.m1.1.1.2" xref="S5.T2.13.13.13.m1.1.1.2.cmml">v</mi><mi id="S5.T2.13.13.13.m1.1.1.3" xref="S5.T2.13.13.13.m1.1.1.3.cmml">x</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.13.13.13.m1.1b"><apply id="S5.T2.13.13.13.m1.1.1.cmml" xref="S5.T2.13.13.13.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.13.13.13.m1.1.1.1.cmml" xref="S5.T2.13.13.13.m1.1.1">subscript</csymbol><ci id="S5.T2.13.13.13.m1.1.1.2.cmml" xref="S5.T2.13.13.13.m1.1.1.2">𝑣</ci><ci id="S5.T2.13.13.13.m1.1.1.3.cmml" xref="S5.T2.13.13.13.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.13.13.m1.1c">v_{x}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.13.13.m1.1d">italic_v start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{y}" class="ltx_Math" display="inline" id="S5.T2.14.14.14.m2.1"><semantics id="S5.T2.14.14.14.m2.1a"><msub id="S5.T2.14.14.14.m2.1.1" xref="S5.T2.14.14.14.m2.1.1.cmml"><mi id="S5.T2.14.14.14.m2.1.1.2" xref="S5.T2.14.14.14.m2.1.1.2.cmml">v</mi><mi id="S5.T2.14.14.14.m2.1.1.3" xref="S5.T2.14.14.14.m2.1.1.3.cmml">y</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.14.14.14.m2.1b"><apply id="S5.T2.14.14.14.m2.1.1.cmml" xref="S5.T2.14.14.14.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.14.14.14.m2.1.1.1.cmml" xref="S5.T2.14.14.14.m2.1.1">subscript</csymbol><ci id="S5.T2.14.14.14.m2.1.1.2.cmml" xref="S5.T2.14.14.14.m2.1.1.2">𝑣</ci><ci id="S5.T2.14.14.14.m2.1.1.3.cmml" xref="S5.T2.14.14.14.m2.1.1.3">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.14.14.m2.1c">v_{y}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.14.14.m2.1d">italic_v start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT</annotation></semantics></math> / <math alttext="v_{z}" class="ltx_Math" display="inline" id="S5.T2.15.15.15.m3.1"><semantics id="S5.T2.15.15.15.m3.1a"><msub id="S5.T2.15.15.15.m3.1.1" xref="S5.T2.15.15.15.m3.1.1.cmml"><mi id="S5.T2.15.15.15.m3.1.1.2" xref="S5.T2.15.15.15.m3.1.1.2.cmml">v</mi><mi id="S5.T2.15.15.15.m3.1.1.3" xref="S5.T2.15.15.15.m3.1.1.3.cmml">z</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T2.15.15.15.m3.1b"><apply id="S5.T2.15.15.15.m3.1.1.cmml" xref="S5.T2.15.15.15.m3.1.1"><csymbol cd="ambiguous" id="S5.T2.15.15.15.m3.1.1.1.cmml" xref="S5.T2.15.15.15.m3.1.1">subscript</csymbol><ci id="S5.T2.15.15.15.m3.1.1.2.cmml" xref="S5.T2.15.15.15.m3.1.1.2">𝑣</ci><ci id="S5.T2.15.15.15.m3.1.1.3.cmml" xref="S5.T2.15.15.15.m3.1.1.3">𝑧</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.15.15.m3.1c">v_{z}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.15.15.m3.1d">italic_v start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T2.20.20.6" rowspan="4">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S5.T2.20.20.6.1" style="width:2.8pt;">
<span class="ltx_p" id="S5.T2.20.20.6.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T2.20.20.6.1.1.1" style="width:6.8pt;height:12.8pt;vertical-align:-3.0pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-2.97pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T2.20.20.6.1.1.1.1">MI</span>
</span></span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.20.20.7">COLMAP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.16.16.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.16.16.1.m1.1"><semantics id="S5.T2.16.16.1.m1.1a"><mo id="S5.T2.16.16.1.m1.1.1" xref="S5.T2.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.16.16.1.m1.1b"><times id="S5.T2.16.16.1.m1.1.1.cmml" xref="S5.T2.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.16.16.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.17.17.2"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.17.17.2.m1.1"><semantics id="S5.T2.17.17.2.m1.1a"><mo id="S5.T2.17.17.2.m1.1.1" xref="S5.T2.17.17.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.17.17.2.m1.1b"><times id="S5.T2.17.17.2.m1.1.1.cmml" xref="S5.T2.17.17.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.17.17.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.17.17.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.18.18.3"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.18.18.3.m1.1"><semantics id="S5.T2.18.18.3.m1.1a"><mo id="S5.T2.18.18.3.m1.1.1" xref="S5.T2.18.18.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.18.18.3.m1.1b"><times id="S5.T2.18.18.3.m1.1.1.cmml" xref="S5.T2.18.18.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.18.18.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.18.18.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.19.19.4"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.19.19.4.m1.1"><semantics id="S5.T2.19.19.4.m1.1a"><mo id="S5.T2.19.19.4.m1.1.1" xref="S5.T2.19.19.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.19.19.4.m1.1b"><times id="S5.T2.19.19.4.m1.1.1.cmml" xref="S5.T2.19.19.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.19.19.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.19.19.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.20.20.5"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.20.20.5.m1.1"><semantics id="S5.T2.20.20.5.m1.1a"><mo id="S5.T2.20.20.5.m1.1.1" xref="S5.T2.20.20.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.20.20.5.m1.1b"><minus id="S5.T2.20.20.5.m1.1.1.cmml" xref="S5.T2.20.20.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.20.20.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.20.20.5.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.21.21.1">    
<div class="ltx_inline-block ltx_transformed_outer" id="S5.T2.21.21.1.1" style="width:5.0pt;height:6.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:5.0pt;transform:translate(0pt,0pt) rotate(-180deg) ;">
<p class="ltx_p" id="S5.T2.21.21.1.1.1"><math alttext="\Lsh" class="ltx_Math" display="inline" id="S5.T2.21.21.1.1.1.m1.1"><semantics id="S5.T2.21.21.1.1.1.m1.1a"><mo id="S5.T2.21.21.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.21.21.1.1.1.m1.1.1.cmml">↰</mo><annotation-xml encoding="MathML-Content" id="S5.T2.21.21.1.1.1.m1.1b"><ci id="S5.T2.21.21.1.1.1.m1.1.1.cmml" xref="S5.T2.21.21.1.1.1.m1.1.1">↰</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.21.21.1.1.1.m1.1c">\Lsh</annotation><annotation encoding="application/x-llamapun" id="S5.T2.21.21.1.1.1.m1.1d">↰</annotation></semantics></math></p>
</span></div> D+LG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.23.23.4">3.11 / 2.06 / 2.14</td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.23.5">1.70 / 2.09 / 2.20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.22.22.2"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T2.22.22.2.m1.1"><semantics id="S5.T2.22.22.2.m1.1a"><mo id="S5.T2.22.22.2.m1.1.1" xref="S5.T2.22.22.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T2.22.22.2.m1.1b"><times id="S5.T2.22.22.2.m1.1.1.cmml" xref="S5.T2.22.22.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.22.22.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T2.22.22.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.23.23.6">1.81 / 2.45 / 1.52</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.23.23.3"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.23.23.3.m1.1"><semantics id="S5.T2.23.23.3.m1.1a"><mo id="S5.T2.23.23.3.m1.1.1" xref="S5.T2.23.23.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.23.23.3.m1.1b"><minus id="S5.T2.23.23.3.m1.1.1.cmml" xref="S5.T2.23.23.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.23.23.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.23.23.3.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.23.25.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.23.25.2.1">MASt3R <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.23.25.2.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.2.1">2.59</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.2.2">1.50</span> / 3.52</td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.25.2.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.3.1">1.28</span> / 1.94 / 2.49</td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.25.2.4">
<span class="ltx_text ltx_font_bold" id="S5.T2.23.25.2.4.1">0.82</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.25.2.4.2">0.55</span> / 1.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.23.25.2.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.5.1">1.72</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.5.2">2.16</span> / 1.46</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.23.25.2.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.6.1">1.60</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.25.2.6.2">1.54</span> / 2.17</td>
</tr>
<tr class="ltx_tr" id="S5.T2.23.26.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.23.26.3.1">DROID-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17358v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.23.26.3.2">3.28 / 2.00 / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.2.1">2.65</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.26.3.3">2.23 / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.3.1">1.47</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.3.2">1.25</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.26.3.4">1.44 / 0.65 / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.4.1">0.91</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.23.26.3.5">1.98 / 2.40 / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.5.1">1.23</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.23.26.3.6">2.23 / 1.63 / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.26.3.6.1">1.51</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.23.27.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T2.23.27.4.1">
<div class="ltx_inline-block ltx_parbox ltx_align_top ltx_transformed_outer" id="S5.T2.23.27.4.1.1" style="width:2.8pt;height:9.199999999999999pt;vertical-align:-1.2pt;"><span class="ltx_transformed_inner" style="width:9.2pt;transform:translate(-1.17pt,0pt) rotate(-90deg) ;">
<p class="ltx_p" id="S5.T2.23.27.4.1.1.1">SI</p>
</span></div>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.23.27.4.2">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.23.27.4.3">
<span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.3.1">1.36</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.3.2">1.17</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.3.3">1.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.23.27.4.4">
<span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.4.1">1.00</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.4.2">0.80</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.4.3">0.71</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.23.27.4.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.27.4.5.1">0.95</span> / <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.23.27.4.5.2">0.61</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.5.3">0.81</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.23.27.4.6">
<span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.6.1">1.12</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.6.2">1.52</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.6.3">1.12</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.23.27.4.7">
<span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.7.1">1.11</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.7.2">1.03</span> / <span class="ltx_text ltx_font_bold" id="S5.T2.23.27.4.7.3">0.92</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.23.28.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.2"><span class="ltx_text" id="S5.T2.23.28.5.2.1" style="color:#808080;">Zero-Velocity baseline</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.3"><span class="ltx_text" id="S5.T2.23.28.5.3.1" style="color:#808080;">2.80 / 1.66 / 1.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.4"><span class="ltx_text" id="S5.T2.23.28.5.4.1" style="color:#808080;">1.98 / 1.48 / 1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.5"><span class="ltx_text" id="S5.T2.23.28.5.5.1" style="color:#808080;">1.30 / 1.05 / 1.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.23.28.5.6"><span class="ltx_text" id="S5.T2.23.28.5.6.1" style="color:#808080;">1.94 / 2.26 / 1.07</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.23.28.5.7"><span class="ltx_text" id="S5.T2.23.28.5.7.1" style="color:#808080;">2.01 / 1.61 / 1.24</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of the Root Mean Squared Error (RMSE) for translational velocity estimations along the x, y, and z axes. The results are obtained from various visual odometry and SLAM methods applied to both multi-image and single-image scenarios.  The RMSE values are expressed in meters per second (m/s).  The table highlights the superior performance of the proposed method compared to several state-of-the-art baselines by bolding and underlining the best and second-best results. The '×' symbol indicates that a particular method failed to reconstruct the camera poses for the given sequence.
> <details>
> <summary>read the caption</summary>
> Table 2: RMSE for translational velocities across each axis, in m/s. We evaluate both multi-image (MI) and single-image (SI) methods. The best and second-best results are bolded and underlined, respectively. The ×\times× represents a failure to reconstruct the poses.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.4.5.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T3.4.5.1.2">Runtime (s)</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.4.5.1.3"><span class="ltx_text" id="S6.T3.4.5.1.3.1" style="color:#000000;">Realtime factor</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.1.1.2">COLMAP (D+LG)</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.3">182.98</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.1.1.1"><span class="ltx_text" id="S6.T3.1.1.1.1" style="color:#000000;">0.038<math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.1.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.1.m1.1a"><mo id="S6.T3.1.1.1.1.m1.1.1" mathcolor="#000000" xref="S6.T3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.1.m1.1b"><times id="S6.T3.1.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.2.2">MASt3R</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.2.2.3">67.90</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.2.2.1"><span class="ltx_text" id="S6.T3.2.2.1.1" style="color:#000000;">0.103<math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.2.2.1.1.m1.1"><semantics id="S6.T3.2.2.1.1.m1.1a"><mo id="S6.T3.2.2.1.1.m1.1.1" mathcolor="#000000" xref="S6.T3.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.1.1.m1.1b"><times id="S6.T3.2.2.1.1.m1.1.1.cmml" xref="S6.T3.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.2">DROID-SLAM</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T3.3.3.3">41.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.3.3.1"><span class="ltx_text" id="S6.T3.3.3.1.1" style="color:#000000;">0.169<math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.3.3.1.1.m1.1"><semantics id="S6.T3.3.3.1.1.m1.1a"><mo id="S6.T3.3.3.1.1.m1.1.1" mathcolor="#000000" xref="S6.T3.3.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.1.1.m1.1b"><times id="S6.T3.3.3.1.1.m1.1.1.cmml" xref="S6.T3.3.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.4.4.2">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T3.4.4.3"><span class="ltx_text ltx_font_bold" id="S6.T3.4.4.3.1">6.48</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T3.4.4.1"><span class="ltx_text ltx_font_bold" id="S6.T3.4.4.1.1" style="color:#000000;">1.08<math alttext="\times" class="ltx_Math" display="inline" id="S6.T3.4.4.1.1.m1.1"><semantics id="S6.T3.4.4.1.1.m1.1a"><mo id="S6.T3.4.4.1.1.m1.1.1" mathcolor="#000000" xref="S6.T3.4.4.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.1.1.m1.1b"><times id="S6.T3.4.4.1.1.m1.1.1.cmml" xref="S6.T3.4.4.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the runtimes of different visual odometry and structure-from-motion methods on the 'billiards' video sequence.  It compares the time each method took to process the 7.08-second video and shows the ratio of the processing time to real-time (7.08 seconds).  The goal is to highlight the efficiency of each method, specifically noting that the proposed method is the only one capable of real-time operation.
> <details>
> <summary>read the caption</summary>
> Table 3: Runtimes of all methods on the billiards sequence showing the time taken to process the sequence and how much faster/slower the method is compared to realtime (original sequence is 7.08⁢ s7.08 s7.08\text{ s}7.08 s long). Our method is the only one that operates faster than realtime.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17358/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17358/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}