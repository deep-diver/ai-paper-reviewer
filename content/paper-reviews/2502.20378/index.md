---
title: "Efficient Gaussian Splatting for Monocular Dynamic Scene Rendering via Sparse Time-Variant Attribute Modeling"
summary: "EDGS: Achieves faster, high-quality dynamic scene rendering by sparse time-variant attribute modeling and intelligent static area filtering."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 National University of Singapore",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20378 {{< /keyword >}}
{{< keyword icon="writer" >}} Hanyang Kong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20378" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20378" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20378/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Rendering dynamic scenes from videos is challenging due to complex motions and need for real-time processing. Deformable Gaussian Splatting shows promise, but suffers from redundant Gaussians leading to slower speeds. Static areas don't need attribute updates leading to unnecessary processing overhead. The primary bottleneck in rendering speed is the number of Gaussians.



This paper introduces Efficient Dynamic Gaussian Splatting (**EDGS**) to represent dynamic scenes via **sparse time-variant attribute modeling**. It formulates dynamic scenes using a sparse anchor-grid with motion flow calculated via kernel representation. It efficiently filters out static area anchors, inputting only deformable object anchors into MLPs for time-variant attribute queries.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dynamic scenes can be efficiently rendered by focusing on sparse, time-variant attributes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Unsupervised filtering of static areas significantly reduces computational overhead. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A sparse anchor-grid representation coupled with kernel-based motion flow provides precise and efficient rendering. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces an efficient approach to dynamic scene rendering, crucial for VR/AR applications. The method significantly improves rendering speed while maintaining quality, addressing a key bottleneck in the field and opening new avenues for real-time dynamic scene reconstruction.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20378/x1.png)

> 🔼 Figure 1 demonstrates the performance of the proposed method, Efficient Dynamic Gaussian Splatting (EDGS), for rendering dynamic scenes. (a) showcases real-time rendering results with high quality from monocular multi-view images. (b) compares EDGS against other state-of-the-art methods in terms of rendering speed, quality (PSNR), and the number of Gaussians used, highlighting EDGS's efficiency.  The circle's radius represents the count of time-variant Gaussians whose attributes require querying from MLPs, indicating the computational cost. (c) illustrates the strong correlation between rendering speed and the number of Gaussians, emphasizing that EDGS's reduced Gaussian count leads to faster rendering.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Given a set of monocular multi-view images and camera poses, our method achieves real-time rendering for dynamic scenes while maintaining high rendering quality. (b) Our method achieves promising rendering quality with faster rendering speed and fewer Gaussians. The radius of the circle is the number of time-variant Gaussians whose attributes need to be queried by MLPs. (c) The bottleneck of the rendering speed for dynamic scenes is the number of Gaussians. The fewer the number of Gaussians, the faster the rendering speed.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.24.24">
<tr class="ltx_tr" id="S4.T1.24.24.25">
<td class="ltx_td ltx_align_center ltx_align_bottom ltx_border_t" id="S4.T1.24.24.25.1" rowspan="2"><span class="ltx_text" id="S4.T1.24.24.25.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.25.2">Sieve</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.25.3">Plate</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.25.4">Bell</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.25.5">Press</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.5">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.6">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.7">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.8">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.9">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.10">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.m1.1a"><mo id="S4.T1.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.m1.1b"><ci id="S4.T1.10.10.10.10.m1.1.1.cmml" xref="S4.T1.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.11.11">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.m1.1"><semantics id="S4.T1.11.11.11.11.m1.1a"><mo id="S4.T1.11.11.11.11.m1.1.1" stretchy="false" xref="S4.T1.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.m1.1b"><ci id="S4.T1.11.11.11.11.m1.1.1.cmml" xref="S4.T1.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.12">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.m1.1"><semantics id="S4.T1.12.12.12.12.m1.1a"><mo id="S4.T1.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.m1.1b"><ci id="S4.T1.12.12.12.12.m1.1.1.cmml" xref="S4.T1.12.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.26">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.1">3D-GS <cite class="ltx_cite ltx_citemacro_citep">(Kerbl et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib8" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.2">23.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.3">0.8203</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.4">0.2247</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.5">16.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.6">0.6970</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.7">0.4093</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.8">21.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.9">0.7885</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.10">0.2503</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.11">22.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.12">0.8163</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.26.13">0.2904</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.27">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.1">TiNeuVox <cite class="ltx_cite ltx_citemacro_citep">(Fang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib3" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.2">21.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.3">0.8265</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.4">0.3176</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.5" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.27.5.1" style="background-color:#D2D2D2;">20.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.6">0.8027</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.7">0.3317</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.8">23.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.9">0.8242</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.10">0.2568</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.11">24.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.12">0.8613</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.27.13">0.3001</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.28">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.1">HyperNeRF <cite class="ltx_cite ltx_citemacro_citep">(Park et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib14" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.2">25.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.3">0.8798</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.4">0.1645</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.5">18.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.6">0.7709</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.7">0.2940</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.8">23.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.9">0.8097</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.10">0.2052</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.11">26.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.12">0.8897</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.28.13">0.1959</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.29">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.1">NeRF-DS <cite class="ltx_cite ltx_citemacro_citep">(Yan, Li, and Lee <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib21" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.2">25.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.3">0.8900</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.4">0.1472</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.5" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.29.5.1" style="background-color:#F2F2F2;">20.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.6">0.8042</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.7" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.29.7.1" style="background-color:#D2D2D2;">0.1996</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.8">23.19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.9">0.8212</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.10">0.1867</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.11">25.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.12">0.8618</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.29.13">0.2047</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.30">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.1">4DGS <cite class="ltx_cite ltx_citemacro_citep">(Wu et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib20" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.2" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.30.2.1" style="background-color:#D2D2D2;">26.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.3" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.30.3.1" style="background-color:#D2D2D2;">0.9193</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.4" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.30.4.1" style="background-color:#B3B3B3;">0.1107</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.5">20.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.6" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.30.6.1" style="background-color:#D2D2D2;">0.8311</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.7" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.30.7.1" style="background-color:#F2F2F2;">0.2010</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.8">25.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.9" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.30.9.1" style="background-color:#F2F2F2;">0.9088</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.10" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.30.10.1" style="background-color:#B3B3B3;">0.1103</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.11" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.30.11.1" style="background-color:#B3B3B3;">26.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.12" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.30.12.1" style="background-color:#D2D2D2;">0.9031</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.30.13" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.30.13.1" style="background-color:#B3B3B3;">0.1301</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.31">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.1">SCGS <cite class="ltx_cite ltx_citemacro_citep">(Huang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib7" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.2.1" style="background-color:#F2F2F2;">25.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.3.1" style="background-color:#F2F2F2;">0.9187</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.4.1" style="background-color:#F2F2F2;">0.1194</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.5">20.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.6" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.6.1" style="background-color:#F2F2F2;">0.8257</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.7">0.2104</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.8" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.31.8.1" style="background-color:#D2D2D2;">25.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.9" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.31.9.1" style="background-color:#D2D2D2;">0.9172</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.10" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.31.10.1" style="background-color:#D2D2D2;">0.1167</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.11" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.11.1" style="background-color:#F2F2F2;">26.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.12">0.8971</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.31.13" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.31.13.1" style="background-color:#F2F2F2;">0.1367</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.32">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.1">Deformable 3DGS <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib22" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.2">25.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.3">0.8715</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.4">0.1504</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.5">20.48</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.6">0.8124</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.7">0.2224</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.8" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.32.8.1" style="background-color:#F2F2F2;">25.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.9">0.8503</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.10">0.1537</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.11">26.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.12" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.32.12.1" style="background-color:#F2F2F2;">0.8646</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.32.13">0.1905</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.33">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.2" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.2.1" style="background-color:#B3B3B3;">27.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.3" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.3.1" style="background-color:#B3B3B3;">0.9271</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.4" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.33.4.1" style="background-color:#D2D2D2;">0.1151</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.5" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.5.1" style="background-color:#B3B3B3;">21.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.6" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.6.1" style="background-color:#B3B3B3;">0.8957</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.7" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.7.1" style="background-color:#B3B3B3;">0.1873</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.8" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.8.1" style="background-color:#B3B3B3;">26.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.9" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.9.1" style="background-color:#B3B3B3;">0.9203</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.10" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.33.10.1" style="background-color:#F2F2F2;">0.1204</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.11" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.33.11.1" style="background-color:#D2D2D2;">26.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.12" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.33.12.1" style="background-color:#B3B3B3;">0.9054</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.33.13" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.33.13.1" style="background-color:#D2D2D2;">0.1313</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.34">
<td class="ltx_td ltx_border_t" id="S4.T1.24.24.34.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.34.2">Cup</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.34.3">As</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.34.4">Basin</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T1.24.24.34.5">Mean</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.24">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.13">Method</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.13.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.m1.1"><semantics id="S4.T1.13.13.13.1.m1.1a"><mo id="S4.T1.13.13.13.1.m1.1.1" stretchy="false" xref="S4.T1.13.13.13.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.m1.1b"><ci id="S4.T1.13.13.13.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.14.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.14.14.14.2.m1.1"><semantics id="S4.T1.14.14.14.2.m1.1a"><mo id="S4.T1.14.14.14.2.m1.1.1" stretchy="false" xref="S4.T1.14.14.14.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.2.m1.1b"><ci id="S4.T1.14.14.14.2.m1.1.1.cmml" xref="S4.T1.14.14.14.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.15.15.15.3.m1.1"><semantics id="S4.T1.15.15.15.3.m1.1a"><mo id="S4.T1.15.15.15.3.m1.1.1" stretchy="false" xref="S4.T1.15.15.15.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.3.m1.1b"><ci id="S4.T1.15.15.15.3.m1.1.1.cmml" xref="S4.T1.15.15.15.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.4">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.16.16.16.4.m1.1"><semantics id="S4.T1.16.16.16.4.m1.1a"><mo id="S4.T1.16.16.16.4.m1.1.1" stretchy="false" xref="S4.T1.16.16.16.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.4.m1.1b"><ci id="S4.T1.16.16.16.4.m1.1.1.cmml" xref="S4.T1.16.16.16.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.5">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.17.17.17.5.m1.1"><semantics id="S4.T1.17.17.17.5.m1.1a"><mo id="S4.T1.17.17.17.5.m1.1.1" stretchy="false" xref="S4.T1.17.17.17.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.5.m1.1b"><ci id="S4.T1.17.17.17.5.m1.1.1.cmml" xref="S4.T1.17.17.17.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.6">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.18.18.18.6.m1.1"><semantics id="S4.T1.18.18.18.6.m1.1a"><mo id="S4.T1.18.18.18.6.m1.1.1" stretchy="false" xref="S4.T1.18.18.18.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.6.m1.1b"><ci id="S4.T1.18.18.18.6.m1.1.1.cmml" xref="S4.T1.18.18.18.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.19.7">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.19.19.19.7.m1.1"><semantics id="S4.T1.19.19.19.7.m1.1a"><mo id="S4.T1.19.19.19.7.m1.1.1" stretchy="false" xref="S4.T1.19.19.19.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.7.m1.1b"><ci id="S4.T1.19.19.19.7.m1.1.1.cmml" xref="S4.T1.19.19.19.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.20.20.20.8">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.20.20.20.8.m1.1"><semantics id="S4.T1.20.20.20.8.m1.1a"><mo id="S4.T1.20.20.20.8.m1.1.1" stretchy="false" xref="S4.T1.20.20.20.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.8.m1.1b"><ci id="S4.T1.20.20.20.8.m1.1.1.cmml" xref="S4.T1.20.20.20.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.21.21.9">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.21.21.21.9.m1.1"><semantics id="S4.T1.21.21.21.9.m1.1a"><mo id="S4.T1.21.21.21.9.m1.1.1" stretchy="false" xref="S4.T1.21.21.21.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.9.m1.1b"><ci id="S4.T1.21.21.21.9.m1.1.1.cmml" xref="S4.T1.21.21.21.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.22.22.10">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.22.22.22.10.m1.1"><semantics id="S4.T1.22.22.22.10.m1.1a"><mo id="S4.T1.22.22.22.10.m1.1.1" stretchy="false" xref="S4.T1.22.22.22.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.22.10.m1.1b"><ci id="S4.T1.22.22.22.10.m1.1.1.cmml" xref="S4.T1.22.22.22.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.22.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.22.10.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.23.23.23.11">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.23.23.23.11.m1.1"><semantics id="S4.T1.23.23.23.11.m1.1a"><mo id="S4.T1.23.23.23.11.m1.1.1" stretchy="false" xref="S4.T1.23.23.23.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.11.m1.1b"><ci id="S4.T1.23.23.23.11.m1.1.1.cmml" xref="S4.T1.23.23.23.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.12">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.24.24.24.12.m1.1"><semantics id="S4.T1.24.24.24.12.m1.1a"><mo id="S4.T1.24.24.24.12.m1.1.1" stretchy="false" xref="S4.T1.24.24.24.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.24.12.m1.1b"><ci id="S4.T1.24.24.24.12.m1.1.1.cmml" xref="S4.T1.24.24.24.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.24.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.24.12.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.35">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.1">3D-GS <cite class="ltx_cite ltx_citemacro_citep">(Kerbl et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib8" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.2">21.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.3">0.8304</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.4">0.2548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.5">22.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.6">0.8017</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.7">0.2994</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.8">18.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.9">0.7170</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.10">0.3153</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.11">20.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.12">0.7816</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.24.24.35.13">0.2920</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.36">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.1">TiNeuVox <cite class="ltx_cite ltx_citemacro_citep">(Fang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib3" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.2">19.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.3">0.8109</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.4">0.3643</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.5">21.26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.6">0.8289</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.7">0.3967</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.8" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.36.8.1" style="background-color:#B3B3B3;">20.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.9">0.8145</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.10">0.2690</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.11">21.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.12">0.8234</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.36.13">0.2766</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.37">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.1">HyperNeRF <cite class="ltx_cite ltx_citemacro_citep">(Park et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib14" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.2">24.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.3">0.8770</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.4">0.1650</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.5">25.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.6" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.37.6.1" style="background-color:#D2D2D2;">0.8949</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.7">0.1777</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.8" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.37.8.1" style="background-color:#D2D2D2;">20.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.9">0.8199</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.10">0.1911</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.11">23.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.12">0.8488</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.37.13">0.1990</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.38">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.1">NeRF-DS <cite class="ltx_cite ltx_citemacro_citep">(Yan, Li, and Lee <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib21" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.2" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.38.2.1" style="background-color:#D2D2D2;">24.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.3">0.8741</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.4">0.1737</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.5">25.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.6">0.8778</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.7">0.1741</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.8" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.38.8.1" style="background-color:#F2F2F2;">19.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.9">0.8166</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.10">0.1855</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.11">23.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.12">0.8494</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.38.13">0.1816</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.39">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.1">4DGS <cite class="ltx_cite ltx_citemacro_citep">(Wu et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib20" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.2">24.57</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.3.1" style="background-color:#F2F2F2;">0.9102</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.4" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.39.4.1" style="background-color:#B3B3B3;">0.1185</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.5" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.5.1" style="background-color:#F2F2F2;">26.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.6" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.6.1" style="background-color:#F2F2F2;">0.8917</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.7" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.7.1" style="background-color:#F2F2F2;">0.1499</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.8">19.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.9" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.9.1" style="background-color:#F2F2F2;">0.8277</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.10" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.39.10.1" style="background-color:#D2D2D2;">0.1631</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.11" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.39.11.1" style="background-color:#D2D2D2;">24.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.12" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.39.12.1" style="background-color:#F2F2F2;">0.8845</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.39.13" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.39.13.1" style="background-color:#B3B3B3;">0.1405</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.40">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.1">SCGS <cite class="ltx_cite ltx_citemacro_citep">(Huang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib7" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.2">24.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.3" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.40.3.1" style="background-color:#D2D2D2;">0.9121</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.4" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.40.4.1" style="background-color:#D2D2D2;">0.1207</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.5">26.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.6">0.8851</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.7" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.40.7.1" style="background-color:#D2D2D2;">0.1491</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.8">19.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.9" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.40.9.1" style="background-color:#B3B3B3;">0.8379</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.10" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.40.10.1" style="background-color:#B3B3B3;">0.1514</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.11">24.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.12" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.40.12.1" style="background-color:#D2D2D2;">0.8848</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.40.13" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.40.13.1" style="background-color:#F2F2F2;">0.1439</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.41">
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.1">Deformable 3DGS <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib22" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.41.2.1" style="background-color:#F2F2F2;">24.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.3">0.8908</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.4">0.1532</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.5" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.41.5.1" style="background-color:#D2D2D2;">26.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.6">0.8842</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.7">0.1783</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.8">19.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.9">0.7934</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.10">0.1901</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.11" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.41.11.1" style="background-color:#F2F2F2;">24.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.12">0.8524</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.41.13">0.1769</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.42">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.2" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.2.1" style="background-color:#B3B3B3;">25.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.3" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.3.1" style="background-color:#B3B3B3;">0.9132</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.42.4.1" style="background-color:#F2F2F2;">0.1225</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.5" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.5.1" style="background-color:#B3B3B3;">26.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.6" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.6.1" style="background-color:#B3B3B3;">0.9015</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.7" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.7.1" style="background-color:#B3B3B3;">0.1472</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.8">19.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.9" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.42.9.1" style="background-color:#D2D2D2;">0.8351</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.10" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.24.24.42.10.1" style="background-color:#F2F2F2;">0.1640</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.11" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.11.1" style="background-color:#B3B3B3;">24.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.12" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T1.24.24.42.12.1" style="background-color:#B3B3B3;">0.8998</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.24.24.42.13" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T1.24.24.42.13.1" style="background-color:#D2D2D2;">0.1411</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different novel view synthesis methods on the NeRF-DS dataset.  For each scene (Sieve, Plate, Bell, Press, Cup, Basin), the table shows the Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS) scores achieved by each method.  Higher PSNR and SSIM values and lower LPIPS values generally indicate better image quality. The best, second-best, and third-best results for each metric in each scene are highlighted with color-coding for easy comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison on NeRF-DS dataset per-scene. We color each cell as best, second best, and third best.
> </details>





### In-depth insights


#### Sparse Attribute
The concept of "Sparse Attribute" modeling centers around representing data or scenes using only a selective subset of attributes, rather than a complete set. This approach acknowledges that not all attributes contribute equally to the underlying structure or dynamic behavior. By **identifying and focusing on the most salient attributes**, it is possible to achieve a more efficient representation, reducing computational cost and memory footprint. The choice of which attributes to retain or discard is crucial and often relies on domain-specific knowledge or data-driven analysis. Methods for achieving sparsity can include techniques like dimensionality reduction, feature selection, or dictionary learning. Furthermore, sparse attribute modeling often **leads to more interpretable models**, as the reduced attribute set highlights the key factors influencing the outcome. This sparsity also improves generalization by preventing overfitting to noisy or irrelevant attributes, which is especially useful when dealing with high-dimensional data with limited samples. Efficient algorithms and data structures are essential for processing and manipulating sparse representations, enabling faster computations and improved scalability. **The method offers efficiency gains without significantly compromising the accuracy**.

#### Anchor-Grid 3DGS
**Anchor-Grid 3DGS** leverages anchor points arranged in a grid to represent the scene's geometry, offering a structured alternative to directly using Gaussians. This approach provides a compact representation by associating multiple Gaussians with each anchor, which means that only a sparse set of anchors require optimization, greatly reducing computational costs during rendering. Attributes of Gaussians can be efficiently derived from these anchors, with time-invariant properties handled separately from dynamic ones. Furthermore, Anchor-Grid 3DGS allows efficient handling of dynamic scenes by selectively applying deformation only to anchors that are responsible for moving regions, thereby enhancing the rendering speed and reducing jittering in static areas. Such a structured approach allows for better control over the scene's dynamics and facilitates real-time rendering of high-quality dynamic scenes.

#### Time-Masked MLPs
Time-Masked MLPs present an intriguing approach to dynamic scene representation, offering a potential solution to the redundancy often observed in methods like Deformable 3DGS. The core idea is to use a lightweight MLP to **identify and filter out static regions** within a scene, focusing computational resources on areas undergoing deformation. By processing only the dynamic attributes of deformable objects through MLPs, the approach reduces the overall computational burden, potentially leading to significant **improvements in rendering speed**. This selective approach contrasts with previous methods that indiscriminately process all time-variant Gaussian attributes, regardless of their actual temporal change. Furthermore, the use of an **unsupervised training strategy** for the time-mask MLP adds to the elegance and efficiency of the system, eliminating the need for manual labeling or explicit supervision. This strategy can significantly improve the rendering speed of dynamic scenes by reducing the number of Gaussians needed to be processed over time.

#### RBF Kernel Motion
The paper leverages a **Radial Basis Function (RBF) kernel** to model motion, indicating a focus on capturing complex, non-rigid deformations effectively. RBF kernels are known for their ability to model smooth, continuous functions, which is beneficial for representing object movements realistically. By using an RBF kernel, the method likely aims to establish **relationships between anchor points and their Gaussian offsets**, thereby capturing the dynamic changes in the scene in a sparse and efficient manner. This approach contrasts with methods that directly query Gaussian attributes using deformation networks, potentially leading to redundancy and increased computational cost. The choice of the RBF kernel suggests a preference for **smooth motion modeling** over strict geometric constraints, enabling the representation of a wider range of dynamic behaviors. Overall, the paper suggests an innovative method for dynamic 3D scene reconstruction that leverages the unique properties of RBF kernels to achieve both accuracy and efficiency.

#### Dynamic Rendering
While the provided text doesn't explicitly use the heading "Dynamic Rendering," it's heavily focused on this topic. The research addresses the challenge of rendering dynamic scenes from monocular videos, a complex task requiring accurate modeling of motion and efficient real-time processing. **Existing methods, like Deformable 3DGS and 4DGS, struggle with redundant Gaussians, leading to slower rendering speeds.** The core issue is the large number of Gaussians needed to fit every training view, and the fact that static areas are unnecessarily remodeled at each time step. **The paper introduces Efficient Dynamic Gaussian Splatting (EDGS) as a solution.** EDGS uses sparse time-variant attribute modeling. It calculates Gaussian motion through a kernel representation and filters static areas. **By focusing only on deformable objects, it reduces redundancy and speeds up rendering without sacrificing quality.** The evaluation shows that EDGS achieves faster rendering speeds and superior quality, demonstrating its potential to overcome the limitations of current dynamic scene rendering techniques. In essence, the research explores ways to optimize dynamic rendering, making it more efficient and practical for real-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20378/x2.png)

> 🔼 This figure illustrates the pipeline of Efficient Dynamic Gaussian Splatting (EDGS).  It begins by initializing sparse anchor points from a Structure from Motion (SfM) point cloud using COLMAP. A time-mask Multi-Layer Perceptron (MLP) then classifies each anchor point as either static or dynamic.  Static anchors receive k Gaussian offsets, and their time-invariant attributes (opacity, quaternion, scale, color) are determined by small MLPs.  Dynamic anchors have their time-variant attributes processed by a deformable attribute MLP, with Gaussian locations at each time step calculated using a Radial Basis Function (RBF) kernel to determine the similarity between each Gaussian and its anchor.  The entire process is efficient, using small MLPs for attribute calculation and a single network for deformation. Importantly, anchor positions remain fixed.
> <details>
> <summary>read the caption</summary>
> Figure 2: The pipeline of our EDGS. 1) We first initialize voxelized sparse anchor points from Structure from Motion (SfM) points derived from COLMAP. 2) A time-mask MLP is applied to classify if the anchor belongs to the static area or the deformable area. 3) k𝑘kitalic_k Gaussian offsets are initialized for each anchor 𝒂𝒂\bm{a}bold_italic_a belonging to static area. The time-invariant attributes of each Gaussian, i.e., opacity, quaternion, scale, and color are calculated from its feature by corresponding tiny MLPs. 4) Time-variant attributes for anchors from dynamic areas are decoded by a deformable attribute MLP. RBF kernel function is employed to compute the location of each Gaussian at timestep t𝑡titalic_t by calculating the similarity between each Gaussian and its belonging anchor point. This pipeline is compact and efficient, featuring only a few tiny MLPs for the attributes of the Gaussians and a single network for deformations. Notably, the position of each anchor remains static and is not subject to updates.
> </details>



![](https://arxiv.org/html/2502.20378/x3.png)

> 🔼 Figure 3 presents a qualitative comparison of novel view synthesis results on the NeRF-DS dataset.  The figure shows how different methods, including the authors' proposed approach and several state-of-the-art (SOTA) techniques, render a scene containing multiple moving objects. The key takeaway is that the authors' method reconstructs finer details and achieves more structured rendering of moving elements.  This is demonstrated by a comparison of how each method renders a cup held in a hand. The improved detail and structure in the authors' result indicate a more accurate and visually pleasing representation of the dynamic scene.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison on the NeRF-DS dataset (Yan, Li, and Lee 2023). Compared with other SOTA methods, our method reconstructs finer details and produces a structured rendering of the moving objects, e.g., the cup on human’s hand.
> </details>



![](https://arxiv.org/html/2502.20378/x4.png)

> 🔼 Figure 4 presents a qualitative comparison of dynamic scene reconstruction results on the HyperNeRF dataset. It visually demonstrates the superior performance of the proposed Efficient Dynamic Gaussian Splatting (EDGS) method against other state-of-the-art (SOTA) techniques.  EDGS is shown to reconstruct significantly more detailed textures and a more reliable overall scene structure compared to the other methods.  This showcases its ability to capture fine details and accurately represent the scene geometry, even in complex dynamic scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison on the HyperNeRF dataset (Park et al. 2021b). Our EDGS reconstructs detailed texture and reliable structure compared with other SOTA methods.
> </details>



![](https://arxiv.org/html/2502.20378/x5.png)

> 🔼 Figure 5 compares the rendering results of three different methods: Deformable 3DGS, 4DGS, and the proposed method (Ours).  It shows three rows of visualizations for each method, all using a fixed camera perspective across several time steps. The top row displays the rendered frames. The second row presents the difference between each frame and the first frame, highlighting changes over time.  The third row illustrates the optical flow, showing movement vectors. The red box emphasizes a region where the static elements appear to exhibit jittering (unwanted movement) in Deformable 3DGS and 4DGS, indicating a deficiency in representing these parts of the scene. The authors' method avoids this issue, resulting in improved quality for both static and dynamic scene elements.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visuazization of the difference map (diff.) and the optical flow with fixed camera views. We synthesis fixed novel view across time for (Yang et al. 2023; Wu et al. 2023) and ours. The 1s⁢tsuperscript1𝑠𝑡1^{st}1 start_POSTSUPERSCRIPT italic_s italic_t end_POSTSUPERSCRIPT row is the rendered frames at various time steps. The 2n⁢dsuperscript2𝑛𝑑2^{nd}2 start_POSTSUPERSCRIPT italic_n italic_d end_POSTSUPERSCRIPT and 3r⁢dsuperscript3𝑟𝑑3^{rd}3 start_POSTSUPERSCRIPT italic_r italic_d end_POSTSUPERSCRIPT rows are the difference map between tt⁢hsuperscript𝑡𝑡ℎt^{th}italic_t start_POSTSUPERSCRIPT italic_t italic_h end_POSTSUPERSCRIPT frame and the 1s⁢tsuperscript1𝑠𝑡1^{st}1 start_POSTSUPERSCRIPT italic_s italic_t end_POSTSUPERSCRIPT frame and the optical flow, respectively. The response in the highlighted red area indicates that the static area rendered by deformable GS and 4DGS is jittering. Our method achieves better quality for static and dynamic objects.
> </details>



![](https://arxiv.org/html/2502.20378/x6.png)

> 🔼 Figure 6 visualizes the learned anchor features and the predicted time masks.  The visualization employs the UMAP technique to reduce the dimensionality of anchor features for easier interpretation. Two scenes are shown, each with a side and front view.  The time mask, generated by the time-mask MLP (Φmask), distinguishes between static (green) and dynamic (red) scene regions by classifying anchor points as static or dynamic based on their time-varying attributes. This highlights the network's ability to differentiate between these two regions without explicit supervision.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of anchor features and time mask. We visualize the rendered images, anchor features, and time masks for two deformation scenes. Anchor features are visualized using the UMAP function. In the time-mask visualization, the time masks are predicted by time-mask MLP Φm⁢a⁢s⁢ksubscriptΦ𝑚𝑎𝑠𝑘\varPhi_{mask}roman_Φ start_POSTSUBSCRIPT italic_m italic_a italic_s italic_k end_POSTSUBSCRIPT. Green anchors represent static scenes, while red anchors indicate deformation scenes.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.3.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.2">PSNR(dB)↑</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.3.3">MS-SSIM↑</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.4">FPS↑</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2">Nerfies <cite class="ltx_cite ltx_citemacro_citep">(Park et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib13" title="">2021a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3">22.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.4">0.803</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><lt id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">&lt;</annotation></semantics></math> 1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2">HyperNeRF <cite class="ltx_cite ltx_citemacro_citep">(Park et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib14" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.4">0.814</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mo id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><lt id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">&lt;</annotation></semantics></math> 1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.4.1">TiNeuVox-B <cite class="ltx_cite ltx_citemacro_citep">(Fang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib3" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2">24.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.4.3">0.836</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.4">1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.1">3D-GS <cite class="ltx_cite ltx_citemacro_citep">(Kerbl et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib8" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.2">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.3">0.680</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T2.2.5.4.1" style="background-color:#F2F2F2;">32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.6.1">FFDNeRF <cite class="ltx_cite ltx_citemacro_citep">(Guo et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib6" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.2">24.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.6.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T2.2.6.3.1" style="background-color:#F2F2F2;">0.842</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.4">0.05</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.1">Deformable 3DGS <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib22" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.2" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T2.2.7.2.1" style="background-color:#F2F2F2;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.3">0.822</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.4">13</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.8.1">4DGS <cite class="ltx_cite ltx_citemacro_citep">(Wu et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib20" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.2" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T2.2.8.2.1" style="background-color:#D2D2D2;">25.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.8.3" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T2.2.8.3.1" style="background-color:#D2D2D2;">0.845</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.4" style="background-color:#D2D2D2;"><span class="ltx_text" id="S4.T2.2.8.4.1" style="background-color:#D2D2D2;">34</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.1">SCGS <cite class="ltx_cite ltx_citemacro_citep">(Huang et al. <a class="ltx_ref" href="https://arxiv.org/html/2502.20378v1#bib.bib7" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.2">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.3">0.813</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.4">12</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.2.10.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.10.2" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T2.2.10.2.1" style="background-color:#B3B3B3;">25.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.2.10.3" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T2.2.10.3.1" style="background-color:#B3B3B3;">0.860</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.10.4" style="background-color:#B3B3B3;"><span class="ltx_text" id="S4.T2.2.10.4.1" style="background-color:#B3B3B3;">117</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different novel view synthesis methods on the HyperNeRF's VRIG dataset.  The metrics used for comparison include Peak Signal-to-Noise Ratio (PSNR), Multi-Scale Structural Similarity (MS-SSIM), and Frames Per Second (FPS).  The rendering resolution for all methods was 960x540 pixels. The best, second-best, and third-best performing methods for each metric are highlighted with color-coding for easy identification and comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on HyperNeRF’s (Park et al. 2021b) vrig dataset. The rendering resolution is set to 960×\times×540. We color each cell as best, second best, and third best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T3.1.1.1.1.1">scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T3.1.1.1.2">As</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T3.1.1.1.3">Bell</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.1.1.1.4">Sieve</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.2.1">PSNR</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.2.2">FPS</td>
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.2.3">PSNR</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.1.2.4">FPS</td>
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.2.5">PSNR</td>
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.2.6">FPS</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.3.1">w/o anchor-grid init</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.2">24.57</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.3.3">27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.4">24.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.3.5">23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.6">24.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.7">17</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.1.4.1">w/o time-mask</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.2">26.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.1.4.3">127</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.4">25.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.1.4.5">132</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.6">26.18</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.7">122</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.1.1.5.1">full model</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.5.2">26.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.1.1.5.3">152</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.5.4">26.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.1.1.5.5">147</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.5.6">27.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.5.7">151</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of two key components in the proposed Efficient Dynamic Gaussian Splatting (EDGS) method: the anchor-grid initialization strategy and the time-mask Multilayer Perceptron (MLP).  The anchor-grid strategy reduces the number of Gaussians needed, which significantly speeds up rendering. The time-mask MLP further enhances speed by identifying and processing only the time-variant (dynamic) anchors, leaving the static anchors unprocessed for better efficiency. The table shows the PSNR (Peak Signal-to-Noise Ratio), a metric for image quality, and the FPS (frames per second), representing the rendering speed, for three scenes under different configurations: using the full model, removing the anchor-grid initialization, and removing the time-mask MLP.  The results highlight the contribution of each component to both the speed and quality of the dynamic scene rendering.
> <details>
> <summary>read the caption</summary>
> Table 3: Effects of anchor-voxel strategy and time-mask MLP. The anchor-grid strategy is crucial for rendering speed due to the reduced number of Gaussians. The time-mask MLP filters time-variant anchors, further reducing the number of anchors required for time-variant attribute queries.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.1.1.1">scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.1.1.1.2">As</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.1.1.1.3">Bell</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.1.4">Sieve</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.2">
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2.1">PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.2.2">SSIM</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2.3">PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.2.4">SSIM</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2.5">PSNR</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2.6">SSIM</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.1.3.1">rigid transformation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2">23.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.1.3.3">0.8259</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.4">24.21</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.1.3.5">0.8571</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.6">23.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.7">0.8750</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.4.1">KNN</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2">25.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.4.3">0.8954</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.4">25.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.4.5">0.8816</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.6">25.68</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.7">0.8907</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.5.1">cosine similarity</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.2">26.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.5.3">0.8928</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4">25.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.5.5">0.8807</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.6">26.57</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.7">0.9155</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.1.1.6.1">RBF kernel</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.2">26.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.1.1.6.3">0.9015</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.4">26.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.1.1.6.5">0.9203</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.6">27.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.7">0.9271</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of four different methods for calculating the changes in Gaussian offset positions over time.  The methods are: a rigid transformation approach (assuming all Gaussian offsets move identically to their anchor points); a k-nearest neighbor (KNN) approach; a cosine similarity approach; and a radial basis function (RBF) kernel approach.  The table presents the Peak Signal-to-Noise Ratio (PSNR) and Structural Similarity Index (SSIM) for each method across three different scenes from the NeRF-DS dataset, allowing for a comparison of accuracy and quality across varying dynamic scene complexities.
> <details>
> <summary>read the caption</summary>
> Table 4: Gaussian offsets derivation with various strategies. We conduct four different strategies for formulating the variation of the Gaussian offsets across time.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20378/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20378/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}