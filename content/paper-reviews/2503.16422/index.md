---
title: "1000+ FPS 4D Gaussian Splatting for Dynamic Scene Rendering"
summary: "4DGS-1K: Achieves 1000+ FPS for dynamic scene rendering via a compact, memory-efficient framework, offering a 41x storage reduction and 9x faster speed."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16422 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuheng Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16422" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16422" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16422/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

4D Gaussian Splatting (4DGS) has emerged for dynamic scene reconstruction. Current 4DGS methods require substantial storage and suffer from slow rendering speed. This paper identifies two key sources of temporal redundancy. First, many Gaussians have short lifespans, leading to excessive numbers. Second, only a subset of Gaussians contributes to each frame, yet all are processed during rendering. The goal is to compress 4DGS by reducing the number of Gaussians while preserving rendering quality. 



To address these issues, the paper introduces **4DGS-1K**, running at over 1000 FPS. The proposed method introduces the Spatial-Temporal Variation Score, a new pruning criterion that removes short-lifespan Gaussians while encouraging longer temporal spans. The paper also stores a mask for active Gaussians across consecutive frames, reducing redundant computations. Compared to vanilla 4DGS, 4DGS-1K achieves a **41× reduction in storage** and **9× faster rasterization speed**, maintaining visual quality.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} 4D Gaussian Splatting suffers from temporal redundancy due to short-lifespan and inactive Gaussians, leading to high storage and slow rendering. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Spatial-Temporal Variation Score effectively prunes short-lifespan Gaussians, while a temporal filter reduces redundant computations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} 4DGS-1K significantly reduces storage requirements and accelerates rasterization speed, maintaining comparable visual quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for advancing **dynamic scene rendering**, offering a practical solution to overcome the limitations of 4DGS. By significantly reducing storage and improving rendering speed, it enables more efficient and accessible real-time applications. It also presents **new directions for future research**, focusing on developing universal compression methods and optimizing rendering modules.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16422/x2.png)

> 🔼 Figure 1 demonstrates the improved performance of the proposed 4DGS-1K method compared to the existing 4D Gaussian Splatting (4DGS). The left side shows a qualitative comparison of the reconstruction results between the two methods. 4DGS-1K achieves comparable photorealistic quality with a significantly faster rasterization speed (1000+ FPS) and only requires 2% of the original storage size. The right side presents a quantitative comparison in terms of PSNR versus the rendering speed, tested on the N3V dataset. The size of the dots represents the storage size, clearly showing the advantage of the 4DGS-1K method.
> <details>
> <summary>read the caption</summary>
> Figure 1: Compressibility and Rendering Speed. We introduce 4DGS-1K, a novel compact representation with high rendering speed. In contrast to 4D Gaussian Splatting (4DGS) [40], we can achieve rasterization at 1000+ FPS while maintaining comparable photorealistic quality with only 2%percent22\%2 % of the original storage size. The right figure is the result tested on the N3V [18] datasets, where the radius of the dot corresponds to the storage size.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.10.10.10">
<tr class="ltx_tr" id="S5.T1.7.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.7.7.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.7.7.7.7.8.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.1.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.1.1.1.1.1.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.2.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.2.2.2.2.2.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.2.m1.1"><semantics id="S5.T1.2.2.2.2.2.m1.1a"><mo id="S5.T1.2.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.2.m1.1b"><ci id="S5.T1.2.2.2.2.2.m1.1.1.cmml" xref="S5.T1.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3.3.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.3.3.3.3.3.1" style="font-size:80%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.3.m1.1"><semantics id="S5.T1.3.3.3.3.3.m1.1a"><mo id="S5.T1.3.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.3.m1.1b"><ci id="S5.T1.3.3.3.3.3.m1.1.1.cmml" xref="S5.T1.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.4.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.4.4.4.4.4.1" style="font-size:80%;">Storage(MB)</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.4.m1.1"><semantics id="S5.T1.4.4.4.4.4.m1.1a"><mo id="S5.T1.4.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.4.m1.1b"><ci id="S5.T1.4.4.4.4.4.m1.1.1.cmml" xref="S5.T1.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.5.5.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.5.5.5.5.5.1" style="font-size:80%;">FPS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.5.5.5.5.m1.1"><semantics id="S5.T1.5.5.5.5.5.m1.1a"><mo id="S5.T1.5.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.5.5.m1.1b"><ci id="S5.T1.5.5.5.5.5.m1.1.1.cmml" xref="S5.T1.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.6.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.6.6.6.6.6.1" style="font-size:80%;">Raster FPS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.6.6.6.6.6.m1.1"><semantics id="S5.T1.6.6.6.6.6.m1.1a"><mo id="S5.T1.6.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.6.6.m1.1b"><ci id="S5.T1.6.6.6.6.6.m1.1.1.cmml" xref="S5.T1.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.7.7.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.7.7.7.7.7.1" style="font-size:80%;">#Gauss</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.7.7.7.7.m1.1"><semantics id="S5.T1.7.7.7.7.7.m1.1a"><mo id="S5.T1.7.7.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T1.7.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.7.7.m1.1b"><ci id="S5.T1.7.7.7.7.7.m1.1.1.cmml" xref="S5.T1.7.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.8.8.8.8.1.1" style="font-size:80%;">Neural Volume</span><sup class="ltx_sup" id="S5.T1.8.8.8.8.1.2"><span class="ltx_text" id="S5.T1.8.8.8.8.1.2.1" style="font-size:80%;">1</span></sup><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.8.8.8.8.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib21" title=""><span class="ltx_text" style="font-size:144%;">21</span></a><span class="ltx_text" id="S5.T1.8.8.8.8.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.2.1" style="font-size:80%;">22.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.4.1" style="font-size:80%;">0.295</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.8.8.8.8.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.9.9">
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.9.9.9.9.1.1" style="font-size:80%;">DyNeRF</span><sup class="ltx_sup" id="S5.T1.9.9.9.9.1.2"><span class="ltx_text" id="S5.T1.9.9.9.9.1.2.1" style="font-size:80%;">1</span></sup><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.9.9.9.9.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib18" title=""><span class="ltx_text" style="font-size:144%;">18</span></a><span class="ltx_text" id="S5.T1.9.9.9.9.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.2.1" style="font-size:80%;">29.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.4.1" style="font-size:80%;">0.083</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.5" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.5.1" style="font-size:80%;background-color:#FFFFBF;">28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.6.1" style="font-size:80%;">0.015</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.9.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.9.9.9.9.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.11">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.11.1.1" style="font-size:80%;">StreamRF</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib17" title=""><span class="ltx_text" style="font-size:144%;">17</span></a><span class="ltx_text" id="S5.T1.10.10.10.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.2.1" style="font-size:80%;">28.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.5.1" style="font-size:80%;">5310</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.6.1" style="font-size:80%;">10.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.11.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.12">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.12.1.1" style="font-size:80%;">HyperReel</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib2" title=""><span class="ltx_text" style="font-size:144%;">2</span></a><span class="ltx_text" id="S5.T1.10.10.10.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.2.1" style="font-size:80%;">31.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.3.1" style="font-size:80%;">0.927</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.4.1" style="font-size:80%;">0.096</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.5.1" style="font-size:80%;">360</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.6.1" style="font-size:80%;">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.12.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.13">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.13.1.1" style="font-size:80%;">K-Planes</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.13.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib12" title=""><span class="ltx_text" style="font-size:144%;">12</span></a><span class="ltx_text" id="S5.T1.10.10.10.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.2.1" style="font-size:80%;">31.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.4.1" style="font-size:80%;">0.018</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.5.1" style="font-size:80%;">311</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.6.1" style="font-size:80%;">0.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.13.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.14.1.1" style="font-size:80%;">Dynamic 3DGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.14.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib23" title=""><span class="ltx_text" style="font-size:144%;">23</span></a><span class="ltx_text" id="S5.T1.10.10.10.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.2.1" style="font-size:80%;">30.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.3.1" style="font-size:80%;">0.930</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.4.1" style="font-size:80%;">0.099</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.5.1" style="font-size:80%;">2764</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.6" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.6.1" style="font-size:80%;background-color:#FFFFBF;">460</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.14.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.14.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.15">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.15.1.1" style="font-size:80%;">4DGaussian</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.15.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib39" title=""><span class="ltx_text" style="font-size:144%;">39</span></a><span class="ltx_text" id="S5.T1.10.10.10.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.2.1" style="font-size:80%;">31.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.3.1" style="font-size:80%;">0.940</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.4" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.4.1" style="font-size:80%;background-color:#FFFFBF;">0.049</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.5.1" style="font-size:80%;">90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.6.1" style="font-size:80%;">30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.15.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.16">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.16.1.1" style="font-size:80%;">E-D3DGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.16.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib3" title=""><span class="ltx_text" style="font-size:144%;">3</span></a><span class="ltx_text" id="S5.T1.10.10.10.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.2.1" style="font-size:80%;">31.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.3.1" style="font-size:80%;">0.945</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.4" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.4.1" style="font-size:80%;background-color:#FFBFBF;">0.037</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.5.1" style="font-size:80%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.6.1" style="font-size:80%;">74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.16.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.17.1.1" style="font-size:80%;">STG</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.17.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib19" title=""><span class="ltx_text" style="font-size:144%;">19</span></a><span class="ltx_text" id="S5.T1.10.10.10.17.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.2" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.2.1" style="font-size:80%;background-color:#FFBFBF;">32.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.3" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.3.1" style="font-size:80%;background-color:#FFFFBF;">0.946</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.4" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.4.1" style="font-size:80%;background-color:#FFDFBF;">0.044</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.5.1" style="font-size:80%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.6.1" style="font-size:80%;">140</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.17.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.17.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.18">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.18.1.1" style="font-size:80%;">4D-RotorGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.18.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib7" title=""><span class="ltx_text" style="font-size:144%;">7</span></a><span class="ltx_text" id="S5.T1.10.10.10.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.2.1" style="font-size:80%;">31.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.3.1" style="font-size:80%;">0.940</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.4.1" style="font-size:80%;">0.140</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.6.1" style="font-size:80%;">277</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.18.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.18.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.19.1.1" style="font-size:80%;">MEGA</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.19.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib43" title=""><span class="ltx_text" style="font-size:144%;">43</span></a><span class="ltx_text" id="S5.T1.10.10.10.19.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.2.1" style="font-size:80%;">31.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.4.1" style="font-size:80%;">0.056</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.5" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.5.1" style="font-size:80%;background-color:#FFDFBF;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.6.1" style="font-size:80%;">77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.19.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.19.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.20">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.20.1.1" style="font-size:80%;">Compact3D</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.20.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib16" title=""><span class="ltx_text" style="font-size:144%;">16</span></a><span class="ltx_text" id="S5.T1.10.10.10.20.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.2.1" style="font-size:80%;">31.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.3.1" style="font-size:80%;">0.945</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.4.1" style="font-size:80%;">0.054</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.5" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.5.1" style="font-size:80%;background-color:#FFBFBF;">15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.6.1" style="font-size:80%;">186</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.20.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.20.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.21.1.1" style="font-size:80%;">4DGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.21.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib40" title=""><span class="ltx_text" style="font-size:144%;">40</span></a><span class="ltx_text" id="S5.T1.10.10.10.21.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.2" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.2.1" style="font-size:80%;background-color:#FFDFBF;">32.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.4.1" style="font-size:80%;">0.055</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.6.1" style="font-size:80%;">114</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.21.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.21.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.10">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T1.10.10.10.10.1.1" style="font-size:80%;">4DGS</span><sup class="ltx_sup" id="S5.T1.10.10.10.10.1.2"><span class="ltx_text" id="S5.T1.10.10.10.10.1.2.1" style="font-size:80%;">2</span></sup><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.10.10.10.10.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib40" title=""><span class="ltx_text" style="font-size:144%;">40</span></a><span class="ltx_text" id="S5.T1.10.10.10.10.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.2" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.2.1" style="font-size:80%;background-color:#FFFFBF;">31.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.3" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.3.1" style="font-size:80%;background-color:#FFDFBF;">0.946</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.4.1" style="font-size:80%;">0.052</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.5.1" style="font-size:80%;">2085</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.6.1" style="font-size:80%;">90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.7.1" style="font-size:80%;">118</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.10.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.10.8.1" style="font-size:80%;">3333160</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.22">
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.2.1" style="font-size:80%;">31.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.3" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.3.1" style="font-size:80%;background-color:#FFBFBF;">0.946</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.4.1" style="font-size:80%;">0.052</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.5.1" style="font-size:80%;">418</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.6" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.10.22.6.1" style="font-size:80%;background-color:#FFBFBF;">805</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.7" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.10.22.7.1" style="font-size:80%;background-color:#FFBFBF;">1092</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.22.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.22.8.1" style="font-size:80%;">666632</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10.23">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.1.1" style="font-size:80%;">Ours-PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.2.1" style="font-size:80%;">31.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.3.1" style="font-size:80%;">0.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.4.1" style="font-size:80%;">0.053</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.10.23.5.1" style="font-size:80%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.6" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.6.1" style="font-size:80%;background-color:#FFDFBF;">805</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.7.1" style="font-size:80%;">1092</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.10.10.10.23.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T1.10.10.10.23.8.1" style="font-size:80%;">666632</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for novel view synthesis on the Neural 3D Video dataset.  Metrics include Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index Measure (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), storage size in MB, rendering speed in frames per second (FPS), rasterization speed in FPS, and the number of Gaussian primitives used.  The table allows for a direct comparison of the performance and efficiency of various approaches in reconstructing dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on the Neural 3D Video Dataset.
> </details>





### In-depth insights


#### 4DGS Redundancy
The 4DGS redundancy stems from **inefficient representation of dynamic scenes**, leading to high storage and slow rendering. The paper identifies **short-lifespan Gaussians** which flicker briefly, and **inactive Gaussians** processed unnecessarily. These redundancies suggest a need for compression techniques focusing on pruning transient Gaussians and filtering inactive ones to improve efficiency without compromising quality. Addressing temporal redundancy is crucial for optimizing 4DGS. This involves leveraging **temporal coherence** and minimizing redundant Gaussian primitives. A compact, memory-efficient framework is essential to deal with these issues.

#### Spatial-Temporal
The concept of 'Spatial-Temporal' is crucial for understanding dynamic scenes, as it combines spatial information with temporal evolution. Representations that model both space and time effectively can capture complex motions and changes in a scene. **This is particularly relevant in dynamic scene rendering, where the goal is to generate realistic images from novel viewpoints at different points in time.** A key challenge lies in efficiently representing this 4D data, often requiring significant storage and computational resources. Methods that leverage spatial-temporal coherence, such as sharing information across adjacent frames, can reduce redundancy and improve performance. **The analysis of spatial-temporal variations can guide the pruning of less important elements, leading to more compact and efficient representations without sacrificing visual quality.** Accurately modeling spatial-temporal relationships is essential for applications like virtual reality, augmented reality, and autonomous navigation.

#### Inactive Pruning
**Inactive Gaussian pruning** is crucial for efficient dynamic scene rendering, addressing the redundancy in 4D Gaussian Splatting (4DGS). The core idea is to identify and remove Gaussians that contribute negligibly to the final rendered image at each frame. This is motivated by the observation that, at any given time, only a small subset of Gaussians are 'active,' while the rest remain inactive, leading to wasted computations. Effective **pruning strategies** are thus necessary to accelerate rendering without compromising quality. This may include using key-frame temporal filter by sharing masks for adjacent frames based on observation that Gaussians are active. By decreasing computations on inactive parts, the method can improve the rendering speed.

#### 1K+FPS Rendering
Achieving **1K+ FPS rendering** is a significant leap in dynamic scene representation, particularly with Gaussian Splatting. This advancement addresses the prior limitations of methods like 4DGS, which struggled with both storage intensity and slow rendering speeds. The core strategy involves minimizing redundancy, focusing on two key areas. First, **pruning short-lifespan Gaussians** to reduce overall count, and second, **filtering inactive Gaussians** to decrease per-frame computational load. This optimization not only makes the representation more compact but also dramatically accelerates the rendering process. The implications are far-reaching, enabling real-time applications and deployment on devices with limited resources, marking a critical step towards practical, high-fidelity dynamic scene modeling. The ability to achieve such high frame rates while maintaining comparable photorealistic quality highlights the efficiency of the proposed techniques in addressing both storage and computational bottlenecks, paving the way for more accessible and versatile dynamic scene rendering solutions.

#### Mask Refinement
**Mask refinement** is crucial for precise object segmentation in dynamic scenes. The initial masks generated may be coarse, and refining them enhances accuracy for downstream tasks. Techniques could involve **morphological operations** to smooth boundaries and fill gaps. Also, consider **conditional random fields** to enforce spatial consistency with neighboring pixels. **Temporal information** could be integrated to track object motion and refine masks across frames. This ensures the masks are aligned with the actual object boundaries and the visual context, especially where lighting or shadows can affect mask boundaries.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16422/x3.png)

> 🔼 This figure shows the distribution of the temporal variance parameter (Στ) for all Gaussians in the Sear Steak scene.  The x-axis represents the value of Στ, and the y-axis represents the frequency. The plot demonstrates that a significant portion of Gaussians in 4DGS have small Στ values (e.g., 70% have Στ < 0.25). This indicates that many Gaussians have short lifespans, contributing to the temporal redundancy identified in the paper.  The figure also shows that the distribution of Στ is not uniform across the dataset. Most Gaussians have small Στ, and the distribution is skewed towards smaller values. This supports the authors' argument that 4DGS uses a large number of Gaussians with short lifespans, which leads to excessive storage and computational costs.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.16422/x4.png)

> 🔼 The figure shows the active ratio during rendering at different timestamps.  The active ratio is the proportion of active Gaussians (contributing to the rendered image) relative to the total number of Gaussians at each time step.  The graph illustrates how the proportion of active Gaussians changes over time in both the vanilla 4DGS and the proposed 4DGS-1K method.  This comparison highlights the significant reduction in inactive Gaussians achieved by 4DGS-1K, indicating its efficiency in reducing computational redundancy during rendering.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.16422/x5.png)

> 🔼 The figure shows the Intersection over Union (IoU) between the set of active Gaussians in the first frame and frame t.  It demonstrates that active Gaussians tend to significantly overlap across adjacent frames, highlighting temporal redundancy in the data. This overlap is leveraged by the 4DGS-1K method to share masks for adjacent frames, further reducing computation during rendering.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2503.16422/x6.png)

> 🔼 This figure provides a detailed analysis of temporal redundancy in 4D Gaussian splatting (4DGS).  Panel (a) shows the distribution of the temporal variance (Σt) of Gaussians in vanilla 4DGS, highlighting a high concentration of Gaussians with short lifespans. The other lines in this panel show how the proposed 4DGS-1K method significantly reduces the number of these short-lived Gaussians. Panel (b) illustrates the active ratio of Gaussians during rendering across different time steps.  It reveals that vanilla 4DGS spends a large portion of computation time processing inactive Gaussians, while 4DGS-1K significantly reduces this redundancy.  Finally, panel (c) shows the Intersection over Union (IoU) between the active Gaussians in the first frame and subsequent frames.  The high IoU values demonstrate a substantial overlap in active Gaussians across consecutive frames, indicating a potential for optimization.
> <details>
> <summary>read the caption</summary>
> Figure 2: Temporal redundancy Study. (a) The ΣtsubscriptΣ𝑡\Sigma_{t}roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT distribution of 4DGS. The red line shows the result of vanilla 4DGS. The other two lines represent our model has effectively reduced the number of transient Gaussians with small ΣtsubscriptΣ𝑡\Sigma_{t}roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. (b) The active ratio during rendering at different timestamps. It demonstrates that most of the computation time is spent on inactive Gaussians in vanilla 4DGS. However, 4DGS-1K can significantly reduce the occurrence of inactive Gaussians during rendering to avoid unnecessary computations. (c) This figure shows the IoU between the set of active Gaussians in the first frame and frame t. It proves that active Gaussians tend to overlap significantly across adjacent frames.
> </details>



![](https://arxiv.org/html/2503.16422/extracted/6295667/Fig/pruned/sear_steak/gt_00101.png)

> 🔼 Figure 3 visualizes the distribution of the temporal variance (Σt) of 4D Gaussians in a dynamic scene.  The visualization highlights that a significant portion of these Gaussians, represented by brighter areas in the image, are concentrated along the boundaries of moving objects. This observation supports the paper's argument that a considerable number of 4D Gaussians in the 4D Gaussian Splatting (4DGS) method have short lifespans, contributing to redundancy and inefficiencies. The figure thus provides visual evidence for the temporal redundancy problem addressed by the authors.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualizations of Distribution of ΣtsubscriptΣ𝑡\Sigma_{t}roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. Most of these Gaussians are concentrated along the edges of moving objects.
> </details>



![](https://arxiv.org/html/2503.16422/extracted/6295667/Fig/pruned/sear_steak/dis_00101.png)

> 🔼 Figure 4 illustrates the two-step pruning strategy used in 4DGS-1K to improve efficiency. (a) shows the pruning of Gaussians with short lifespans using the spatial-temporal variation score. A score is calculated for each Gaussian, and those with low scores (indicating minimal impact) are removed. This step reduces redundancy caused by many Gaussians having short temporal spans. (b) shows how a temporal filter is used to remove inactive Gaussians before rendering. A mask is created to identify active Gaussians in two adjacent keyframes (t0 and t0 + Δt).  Gaussians not present in this mask are excluded from the rendering process at timestamp t, thereby reducing computation time.  Overall, the figure explains how 4DGS-1K reduces both storage requirements and rendering time through intelligent Gaussian pruning.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Overview of 4DGS-1K. (a) We first calculate the spatial-temporal variation score for each 4D Gaussian on training views, to prune Gaussians with short lifespan (The Red Gaussian). (b) The temporal filter is introduced to filter out inactive Gaussians before the rendering process to alleviate suboptimal rendering speed. At a given timestamp t𝑡titalic_t, the set of Gaussians participating in rendering is derived from the two adjacent key-frames, t0subscript𝑡0t_{0}italic_t start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT and t0+Δtsubscript𝑡0subscriptΔ𝑡t_{0+\Delta_{t}}italic_t start_POSTSUBSCRIPT 0 + roman_Δ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2503.16422/extracted/6295667/Fig/pruned/sear_steak/pruned_00101.png)

> 🔼 This figure presents a qualitative comparison of the results obtained using the original 4D Gaussian Splatting (4DGS) method and the proposed 4DGS-1K method.  It shows visual results for two dynamic scenes ('Sear Steak' and 'Trex'), comparing ground truth images with those rendered by 4DGS and the two versions of the 4DGS-1K method (one with post-processing and one without). The comparison highlights the visual similarity between 4DGS-1K's output and the ground truth, while also demonstrating the significant reduction in storage size and increase in rendering speed achieved by the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparisons of 4DGS and our method.
> </details>



![](https://arxiv.org/html/2503.16422/extracted/6295667/Fig/pruned/sear_steak/00101.png)

> 🔼 This figure visualizes the distribution of the temporal variance parameter (Σt) across all Gaussians in the Sear Steak scene.  The reciprocal of Σt is taken and then normalized, resulting in brighter regions representing smaller Σt values (indicating a short lifespan for those Gaussians).  The visualization shows the spatial distribution of Σt across different timestamps, highlighting where Gaussians with short lifespans are concentrated (primarily along edges of moving objects). This illustrates the temporal redundancy issue in 4DGS, where a large number of Gaussians have short lifespans.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualizations of Distribution of ΣtsubscriptΣ𝑡\Sigma_{t}roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2503.16422/x7.png)

> 🔼 This figure demonstrates the inverse relationship between rendering speed (FPS) and the number of inactive Gaussians in a dynamic scene.  As the number of inactive Gaussians increases, the rendering speed decreases. This is because the computational resources are being wasted on processing Gaussians that do not contribute to the rendered image.
> <details>
> <summary>read the caption</summary>
> Figure 7: Relationship between rendering speed and the number of inactive Gaussians.
> </details>



![](https://arxiv.org/html/2503.16422/x8.png)

> 🔼 This figure shows a qualitative comparison of the results obtained by the proposed method (4DGS-1K) and the baseline method (4DGS) on the Sear Steak scene.  The top row displays the ground truth frames of the scene. The subsequent rows show the corresponding frames rendered using vanilla 4DGS, 4DGS-1K, and 4DGS-1K with post-processing (Ours-PP). This visualization allows for a direct comparison of the visual quality and fidelity of the different methods, highlighting the improvements achieved by 4DGS-1K in terms of visual quality and compression.
> <details>
> <summary>read the caption</summary>
> (a) Ground Truth
> </details>



![](https://arxiv.org/html/2503.16422/x9.png)

> 🔼 This figure visualizes the distribution of the temporal variance parameter (Σt) across all Gaussians in the Sear Steak scene from the Neural 3D Video dataset.  The visualization uses a colormap where brighter regions indicate smaller Σt values, thus highlighting Gaussians with shorter lifespans. The plot shows that a significant portion of Gaussians in the scene exhibit short lifespans, particularly concentrated along the edges of moving objects. This observation supports the claim that 4D Gaussian Splatting often uses many short-lived Gaussians, leading to storage redundancy and slow rendering.
> <details>
> <summary>read the caption</summary>
> (b) Distribution of ΣtsubscriptΣ𝑡\Sigma_{t}roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT
> </details>



![](https://arxiv.org/html/2503.16422/x10.png)

> 🔼 This figure visualizes the effect of applying the spatial-temporal variation score pruning strategy.  It shows a comparison between the original Gaussians (before pruning) and the remaining Gaussians after the pruning step in 4DGS-1K. The result demonstrates the effectiveness of the proposed method to eliminate redundant Gaussians, leading to a more compact scene representation.
> <details>
> <summary>read the caption</summary>
> (c) Pruned Gaussians
> </details>



![](https://arxiv.org/html/2503.16422/x11.png)

> 🔼 This figure shows the result of the proposed method (4DGS-1K) on a dynamic scene. It demonstrates that the method achieves high-quality reconstruction and high rendering speed, comparable to the ground truth but using significantly less storage space than existing methods like vanilla 4DGS.
> <details>
> <summary>read the caption</summary>
> (d) Ours
> </details>



![](https://arxiv.org/html/2503.16422/x12.png)

> 🔼 This figure visualizes the effect of the proposed pruning strategy on Gaussians. It shows four sets of images: ground truth, vanilla 4DGS, the results after pruning Gaussians using the spatial-temporal variation score, and the final results after applying the temporal filter.  The comparison highlights how the pruning technique effectively removes redundant Gaussians while maintaining high-quality scene reconstruction. The reduction in the number of Gaussians leads to significant improvements in both storage and rendering speed.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visualization of Pruned Gaussians.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.8.8.8">
<tr class="ltx_tr" id="S5.T2.7.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.7.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.7.7.7.7.8.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.1.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.1.1.1.1.1.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.2.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.2.2.2.2.2.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.3.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.3.3.3.3.3.1" style="font-size:80%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.4.4.4.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.4.4.4.4.4.1" style="font-size:80%;">Storage(MB)</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.5.5.5.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.5.5.5.5.5.1" style="font-size:80%;">FPS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6.6.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.6.6.6.6.6.1" style="font-size:80%;">Raster FPS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.6.m1.1"><semantics id="S5.T2.6.6.6.6.6.m1.1a"><mo id="S5.T2.6.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.6.m1.1b"><ci id="S5.T2.6.6.6.6.6.m1.1.1.cmml" xref="S5.T2.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.7.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.7.7.7.7.7.1" style="font-size:80%;">#Gauss</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.7.7.m1.1"><semantics id="S5.T2.7.7.7.7.7.m1.1a"><mo id="S5.T2.7.7.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T2.7.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.7.7.m1.1b"><ci id="S5.T2.7.7.7.7.7.m1.1.1.cmml" xref="S5.T2.7.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.9.1.1" style="font-size:80%;">DNeRF</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib30" title=""><span class="ltx_text" style="font-size:144%;">30</span></a><span class="ltx_text" id="S5.T2.8.8.8.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.2.1" style="font-size:80%;">29.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.3.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.4.1" style="font-size:80%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.6.1" style="font-size:80%;">0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.9.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.9.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.10">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.10.1.1" style="font-size:80%;">TiNeuVox</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib10" title=""><span class="ltx_text" style="font-size:144%;">10</span></a><span class="ltx_text" id="S5.T2.8.8.8.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.2.1" style="font-size:80%;">32.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.4.1" style="font-size:80%;">0.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.6.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.10.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.10.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.11">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.11.1.1" style="font-size:80%;">K-Planes</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib12" title=""><span class="ltx_text" style="font-size:144%;">12</span></a><span class="ltx_text" id="S5.T2.8.8.8.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.2.1" style="font-size:80%;">31.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.4" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.4.1" style="font-size:80%;background-color:#FFFFBF;">0.02</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.6.1" style="font-size:80%;">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.11.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.11.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.12.1.1" style="font-size:80%;">4DGaussian</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib39" title=""><span class="ltx_text" style="font-size:144%;">39</span></a><span class="ltx_text" id="S5.T2.8.8.8.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.2.1" style="font-size:80%;">32.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.4.1" style="font-size:80%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.5" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.5.1" style="font-size:80%;background-color:#FFDFBF;">18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.6.1" style="font-size:80%;">104</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.12.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.12.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.13">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.13.1.1" style="font-size:80%;">Deformable3DGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.13.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib41" title=""><span class="ltx_text" style="font-size:144%;">41</span></a><span class="ltx_text" id="S5.T2.8.8.8.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.2" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.2.1" style="font-size:80%;background-color:#FFBFBF;">40.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.3" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.3.1" style="font-size:80%;background-color:#FFBFBF;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.4" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.4.1" style="font-size:80%;background-color:#FFBFBF;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.5" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.5.1" style="font-size:80%;background-color:#FFFFBF;">27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.6.1" style="font-size:80%;">70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.13.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.13.8.1" style="font-size:80%;">131428</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.14.1.1" style="font-size:80%;">4D-RotorGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.14.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib7" title=""><span class="ltx_text" style="font-size:144%;">7</span></a><span class="ltx_text" id="S5.T2.8.8.8.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.2" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.2.1" style="font-size:80%;background-color:#FFDFBF;">34.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.4.1" style="font-size:80%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.5.1" style="font-size:80%;">112</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.6" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.6.1" style="font-size:80%;background-color:#FFFFBF;">1257</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.14.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.14.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.15">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.15.1.1" style="font-size:80%;">4DGS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.15.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib40" title=""><span class="ltx_text" style="font-size:144%;">40</span></a><span class="ltx_text" id="S5.T2.8.8.8.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.2" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.2.1" style="font-size:80%;background-color:#FFFFBF;">34.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.3" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.3.1" style="font-size:80%;background-color:#FFDFBF;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.4" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.4.1" style="font-size:80%;background-color:#FFDFBF;">0.02</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.15.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.15.8.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.8">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<span class="ltx_text" id="S5.T2.8.8.8.8.1.1" style="font-size:80%;">4DGS</span><sup class="ltx_sup" id="S5.T2.8.8.8.8.1.2"><span class="ltx_text" id="S5.T2.8.8.8.8.1.2.1" style="font-size:80%;">1</span></sup><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.8.8.8.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16422v1#bib.bib40" title=""><span class="ltx_text" style="font-size:144%;">40</span></a><span class="ltx_text" id="S5.T2.8.8.8.8.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.2.1" style="font-size:80%;">32.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.4.1" style="font-size:80%;">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.5.1" style="font-size:80%;">278</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.6" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.6.1" style="font-size:80%;">376</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.7.1" style="font-size:80%;">1232</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.8.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.8.8.1" style="font-size:80%;">445076</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.16">
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.2.1" style="font-size:80%;">33.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.3" style="background-color:#FFFFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.3.1" style="font-size:80%;background-color:#FFFFBF;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.4.1" style="font-size:80%;">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.5.1" style="font-size:80%;">42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.6" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.8.16.6.1" style="font-size:80%;background-color:#FFBFBF;">1462</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.7" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.8.16.7.1" style="font-size:80%;background-color:#FFBFBF;">2482</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.16.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.16.8.1" style="font-size:80%;">66460</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.8.17">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.1.1" style="font-size:80%;">Ours-PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.2.1" style="font-size:80%;">33.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.3.1" style="font-size:80%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.4.1" style="font-size:80%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.5" style="background-color:#FFBFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.8.17.5.1" style="font-size:80%;background-color:#FFBFBF;">7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.6" style="background-color:#FFDFBF;padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.6.1" style="font-size:80%;background-color:#FFDFBF;">1462</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.7" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.7.1" style="font-size:80%;">2482</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.8.8.8.17.8" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T2.8.8.8.17.8.1" style="font-size:80%;">66460</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for novel view synthesis on the D-NeRF dataset.  Metrics include Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index Measure (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), storage size in MB, rendering FPS (frames per second), and the number of Gaussians used in the model.  It allows for a comparison of the performance and efficiency of various techniques in representing and rendering dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons on the D-NeRF Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.11.11.11">
<tr class="ltx_tr" id="S5.T3.7.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7.8" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.7.7.7.7.8.1" style="font-size:90%;">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T3.7.7.7.7.9" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.7.7.7.7.9.1" style="font-size:90%;">Method\Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.1" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.1.1.1.1.1.1" style="font-size:90%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.2.2" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.2.2.2.2.2.1" style="font-size:90%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.2.2.1.m1.1a"><mo id="S5.T3.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.2.1.m1.1b"><ci id="S5.T3.2.2.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3.3.3" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.3.3.3.3.3.1" style="font-size:90%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.3.1.m1.1"><semantics id="S5.T3.3.3.3.3.3.1.m1.1a"><mo id="S5.T3.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.3.1.m1.1b"><ci id="S5.T3.3.3.3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4.4" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.4.4.4.4.4.1" style="font-size:90%;">Storage(MB)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.4.1.m1.1"><semantics id="S5.T3.4.4.4.4.4.1.m1.1a"><mo id="S5.T3.4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.4.1.m1.1b"><ci id="S5.T3.4.4.4.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.5.5" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.5.5.5.5.5.1" style="font-size:90%;">FPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.5.1.m1.1"><semantics id="S5.T3.5.5.5.5.5.1.m1.1a"><mo id="S5.T3.5.5.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.5.1.m1.1b"><ci id="S5.T3.5.5.5.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.6.6" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.6.6.6.6.6.1" style="font-size:90%;">Raster FPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.6.6.1.m1.1a"><mo id="S5.T3.6.6.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T3.6.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.6.6.1.m1.1b"><ci id="S5.T3.6.6.6.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7.7" rowspan="2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.7.7.7.7.7.1" style="font-size:90%;">#Gauss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.7.7.7.7.7.1.m1.1"><semantics id="S5.T3.7.7.7.7.7.1.m1.1a"><mo id="S5.T3.7.7.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T3.7.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.7.7.1.m1.1b"><ci id="S5.T3.7.7.7.7.7.1.m1.1.1.cmml" xref="S5.T3.7.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11.12">
<td class="ltx_td ltx_border_t" id="S5.T3.11.11.11.12.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.11.11.11.12.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.12.2.1" style="font-size:90%;">Filter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.11.11.11.12.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.12.3.1" style="font-size:90%;">Pruning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.11.11.11.12.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.12.4.1" style="font-size:90%;">PP</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.2.1" style="font-size:90%;">a</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T3.8.8.8.8.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;">
<span class="ltx_text" id="S5.T3.8.8.8.8.1.1" style="font-size:90%;">vanilla 4DGS</span><sup class="ltx_sup" id="S5.T3.8.8.8.8.1.2"><span class="ltx_text ltx_font_italic" id="S5.T3.8.8.8.8.1.2.1" style="font-size:90%;">1</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.3" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.3.1" style="font-size:90%;background-color:#FFDFBF;">31.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.4" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.4.1" style="font-size:90%;background-color:#FFDFBF;">0.9458</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.5" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.5.1" style="font-size:90%;background-color:#FFDFBF;">0.0518</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.6" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.6.1" style="font-size:90%;">2085</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.7" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.7.1" style="font-size:90%;">90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.8" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.8.1" style="font-size:90%;">118</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8.9" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.8.8.8.8.9.1" style="font-size:90%;">3333160</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.9.9.9.9">
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.2.1" style="font-size:90%;">b</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;">
<span class="ltx_text" id="S5.T3.9.9.9.9.1.1" style="font-size:90%;">✓</span><sup class="ltx_sup" id="S5.T3.9.9.9.9.1.2"><span class="ltx_text ltx_font_italic" id="S5.T3.9.9.9.9.1.2.1" style="font-size:90%;">1,2</span></sup>
</td>
<td class="ltx_td" id="S5.T3.9.9.9.9.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td" id="S5.T3.9.9.9.9.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.5" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.5.1" style="font-size:90%;">31.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.6" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.6.1" style="font-size:90%;">0.9446</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.7" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.7.1" style="font-size:90%;">0.0539</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.8" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.8.1" style="font-size:90%;">2091</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.9" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.9.1" style="font-size:90%;">242</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.10" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.10.1" style="font-size:90%;">561</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.9.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.9.9.9.9.11.1" style="font-size:90%;">3333160</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10.10">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.2.1" style="font-size:90%;">c</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;">
<span class="ltx_text" id="S5.T3.10.10.10.10.1.1" style="font-size:90%;">✓</span><sup class="ltx_sup" id="S5.T3.10.10.10.10.1.2"><span class="ltx_text ltx_font_italic" id="S5.T3.10.10.10.10.1.2.1" style="font-size:90%;">2</span></sup>
</td>
<td class="ltx_td" id="S5.T3.10.10.10.10.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td" id="S5.T3.10.10.10.10.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.5" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.5.1" style="font-size:90%;">29.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.6" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.6.1" style="font-size:90%;">0.9354</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.7" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.7.1" style="font-size:90%;">0.0605</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.8" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.8.1" style="font-size:90%;">2091</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.9" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.9.1" style="font-size:90%;">300</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.10" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.10.1" style="font-size:90%;">561</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.10.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.10.10.10.10.11.1" style="font-size:90%;">3333160</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11.13">
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.1.1" style="font-size:90%;">d</span></td>
<td class="ltx_td" id="S5.T3.11.11.11.13.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S5.T3.11.11.11.13.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.5" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.5.1" style="font-size:90%;background-color:#FFBFBF;">31.92</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.6" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.6.1" style="font-size:90%;background-color:#FFBFBF;">0.9462</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.7" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.7.1" style="font-size:90%;background-color:#FFBFBF;">0.0513</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.8" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.8.1" style="font-size:90%;background-color:#FFDFBF;">417</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.9" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.9.1" style="font-size:90%;">312</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.10" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.10.1" style="font-size:90%;">600</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.13.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.13.11.1" style="font-size:90%;">666632</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11.14">
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.1.1" style="font-size:90%;">e</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S5.T3.11.11.11.14.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.5" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.5.1" style="font-size:90%;background-color:#FFFFBF;">31.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.6" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.6.1" style="font-size:90%;background-color:#FFFFBF;">0.9457</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.7" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.7.1" style="font-size:90%;background-color:#FFFFBF;">0.0524</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.8" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.8.1" style="font-size:90%;background-color:#FFFFBF;">418</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.9" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.9.1" style="font-size:90%;background-color:#FFDFBF;">805</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.10" style="background-color:#FFDFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.10.1" style="font-size:90%;background-color:#FFDFBF;">1092</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.14.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.14.11.1" style="font-size:90%;">666632</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11.11">
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.2.1" style="font-size:90%;">f</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;">
<span class="ltx_text" id="S5.T3.11.11.11.11.1.1" style="font-size:90%;">✓</span><sup class="ltx_sup" id="S5.T3.11.11.11.11.1.2"><span class="ltx_text ltx_font_italic" id="S5.T3.11.11.11.11.1.2.1" style="font-size:90%;">2</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S5.T3.11.11.11.11.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.5" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.5.1" style="font-size:90%;">31.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.6" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.6.1" style="font-size:90%;">0.9452</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.7" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.7.1" style="font-size:90%;">0.0524</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.8" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.8.1" style="font-size:90%;">418</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.9" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.9.1" style="font-size:90%;background-color:#FFFFBF;">789</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.10" style="background-color:#FFFFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.10.1" style="font-size:90%;background-color:#FFFFBF;">1080</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.11.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.11.11.1" style="font-size:90%;">666632</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.11.11.15">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.1" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.1.1" style="font-size:90%;">g</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.2" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.3" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.4" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.5" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.5.1" style="font-size:90%;">31.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.6" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.6.1" style="font-size:90%;">0.9444</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.7" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.7.1" style="font-size:90%;">0.0532</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.8" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.8.1" style="font-size:90%;background-color:#FFBFBF;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.9" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.9.1" style="font-size:90%;background-color:#FFBFBF;">805</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.10" style="background-color:#FFBFBF;padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.10.1" style="font-size:90%;background-color:#FFBFBF;">1092</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.11.11.11.15.11" style="padding-top:-0.45pt;padding-bottom:-0.45pt;"><span class="ltx_text" id="S5.T3.11.11.11.15.11.1" style="font-size:90%;">666632</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the individual and combined contributions of different components within the proposed 4DGS-1K method.  It systematically analyzes the effects of the spatial-temporal variation score (STVS) based pruning, the temporal filter, and the combination of both, on key metrics like PSNR, SSIM, LPIPS, storage size, and rendering speed (both raster and total FPS). By comparing various configurations, the study quantifies the impact of each component and validates the effectiveness of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of per-component contribution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.6">
<tr class="ltx_tr" id="S5.T4.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.7.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.7.1.1" style="font-size:80%;">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.7.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.7.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.7.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.7.3.1" style="font-size:80%;">Sear Steak</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.7.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.7.4.1" style="font-size:80%;">Flame Salmon</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.8.1.1" style="font-size:80%;">a</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.8.2.1" style="font-size:80%;">4DGS w/o Prune</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.8.3.1" style="font-size:80%;">33.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.8.4.1" style="font-size:80%;">29.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1">
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.1.1.2.1" style="font-size:80%;">b</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<math alttext="\mathcal{S}^{S}_{i}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><msubsup id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T4.1.1.1.m1.1.1.2.2" mathsize="80%" xref="S5.T4.1.1.1.m1.1.1.2.2.cmml">𝒮</mi><mi id="S5.T4.1.1.1.m1.1.1.3" mathsize="80%" xref="S5.T4.1.1.1.m1.1.1.3.cmml">i</mi><mi id="S5.T4.1.1.1.m1.1.1.2.3" mathsize="80%" xref="S5.T4.1.1.1.m1.1.1.2.3.cmml">S</mi></msubsup><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">subscript</csymbol><apply id="S5.T4.1.1.1.m1.1.1.2.cmml" xref="S5.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.1.1.2.1.cmml" xref="S5.T4.1.1.1.m1.1.1">superscript</csymbol><ci id="S5.T4.1.1.1.m1.1.1.2.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2.2">𝒮</ci><ci id="S5.T4.1.1.1.m1.1.1.2.3.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3">𝑆</ci></apply><ci id="S5.T4.1.1.1.m1.1.1.3.cmml" xref="S5.T4.1.1.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\mathcal{S}^{S}_{i}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">caligraphic_S start_POSTSUPERSCRIPT italic_S end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T4.1.1.1.1" style="font-size:80%;"> Only</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.1.1.3.1" style="font-size:80%;">33.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.1.1.4.1" style="font-size:80%;">28.75</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2">
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.2.2.2.1" style="font-size:80%;">c</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<math alttext="\mathcal{S}^{T}_{i}" class="ltx_Math" display="inline" id="S5.T4.2.2.1.m1.1"><semantics id="S5.T4.2.2.1.m1.1a"><msubsup id="S5.T4.2.2.1.m1.1.1" xref="S5.T4.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T4.2.2.1.m1.1.1.2.2" mathsize="80%" xref="S5.T4.2.2.1.m1.1.1.2.2.cmml">𝒮</mi><mi id="S5.T4.2.2.1.m1.1.1.3" mathsize="80%" xref="S5.T4.2.2.1.m1.1.1.3.cmml">i</mi><mi id="S5.T4.2.2.1.m1.1.1.2.3" mathsize="80%" xref="S5.T4.2.2.1.m1.1.1.2.3.cmml">T</mi></msubsup><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.1.m1.1b"><apply id="S5.T4.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.2.2.1.m1.1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1">subscript</csymbol><apply id="S5.T4.2.2.1.m1.1.1.2.cmml" xref="S5.T4.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.2.2.1.m1.1.1.2.1.cmml" xref="S5.T4.2.2.1.m1.1.1">superscript</csymbol><ci id="S5.T4.2.2.1.m1.1.1.2.2.cmml" xref="S5.T4.2.2.1.m1.1.1.2.2">𝒮</ci><ci id="S5.T4.2.2.1.m1.1.1.2.3.cmml" xref="S5.T4.2.2.1.m1.1.1.2.3">𝑇</ci></apply><ci id="S5.T4.2.2.1.m1.1.1.3.cmml" xref="S5.T4.2.2.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.1.m1.1c">\mathcal{S}^{T}_{i}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.1.m1.1d">caligraphic_S start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T4.2.2.1.1" style="font-size:80%;"> Only</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.2.2.3.1" style="font-size:80%;">33.59</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.2.2.4.1" style="font-size:80%;">28.79</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.4.4.3.1" style="font-size:80%;">d</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<math alttext="\mathcal{S}_{i}" class="ltx_Math" display="inline" id="S5.T4.3.3.1.m1.1"><semantics id="S5.T4.3.3.1.m1.1a"><msub id="S5.T4.3.3.1.m1.1.1" xref="S5.T4.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T4.3.3.1.m1.1.1.2" mathsize="80%" xref="S5.T4.3.3.1.m1.1.1.2.cmml">𝒮</mi><mi id="S5.T4.3.3.1.m1.1.1.3" mathsize="80%" xref="S5.T4.3.3.1.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.1.m1.1b"><apply id="S5.T4.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.3.3.1.m1.1.1.1.cmml" xref="S5.T4.3.3.1.m1.1.1">subscript</csymbol><ci id="S5.T4.3.3.1.m1.1.1.2.cmml" xref="S5.T4.3.3.1.m1.1.1.2">𝒮</ci><ci id="S5.T4.3.3.1.m1.1.1.3.cmml" xref="S5.T4.3.3.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.1.m1.1c">\mathcal{S}_{i}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.1.m1.1d">caligraphic_S start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T4.4.4.2.1" style="font-size:80%;"> (w. </span><math alttext="p^{(1)}_{i}(t)" class="ltx_Math" display="inline" id="S5.T4.4.4.2.m2.2"><semantics id="S5.T4.4.4.2.m2.2a"><mrow id="S5.T4.4.4.2.m2.2.3" xref="S5.T4.4.4.2.m2.2.3.cmml"><msubsup id="S5.T4.4.4.2.m2.2.3.2" xref="S5.T4.4.4.2.m2.2.3.2.cmml"><mi id="S5.T4.4.4.2.m2.2.3.2.2.2" mathsize="80%" xref="S5.T4.4.4.2.m2.2.3.2.2.2.cmml">p</mi><mi id="S5.T4.4.4.2.m2.2.3.2.3" mathsize="80%" xref="S5.T4.4.4.2.m2.2.3.2.3.cmml">i</mi><mrow id="S5.T4.4.4.2.m2.1.1.1.3" xref="S5.T4.4.4.2.m2.2.3.2.cmml"><mo id="S5.T4.4.4.2.m2.1.1.1.3.1" maxsize="80%" minsize="80%" xref="S5.T4.4.4.2.m2.2.3.2.cmml">(</mo><mn id="S5.T4.4.4.2.m2.1.1.1.1" mathsize="80%" xref="S5.T4.4.4.2.m2.1.1.1.1.cmml">1</mn><mo id="S5.T4.4.4.2.m2.1.1.1.3.2" maxsize="80%" minsize="80%" xref="S5.T4.4.4.2.m2.2.3.2.cmml">)</mo></mrow></msubsup><mo id="S5.T4.4.4.2.m2.2.3.1" xref="S5.T4.4.4.2.m2.2.3.1.cmml">⁢</mo><mrow id="S5.T4.4.4.2.m2.2.3.3.2" xref="S5.T4.4.4.2.m2.2.3.cmml"><mo id="S5.T4.4.4.2.m2.2.3.3.2.1" maxsize="80%" minsize="80%" xref="S5.T4.4.4.2.m2.2.3.cmml">(</mo><mi id="S5.T4.4.4.2.m2.2.2" mathsize="80%" xref="S5.T4.4.4.2.m2.2.2.cmml">t</mi><mo id="S5.T4.4.4.2.m2.2.3.3.2.2" maxsize="80%" minsize="80%" xref="S5.T4.4.4.2.m2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.2.m2.2b"><apply id="S5.T4.4.4.2.m2.2.3.cmml" xref="S5.T4.4.4.2.m2.2.3"><times id="S5.T4.4.4.2.m2.2.3.1.cmml" xref="S5.T4.4.4.2.m2.2.3.1"></times><apply id="S5.T4.4.4.2.m2.2.3.2.cmml" xref="S5.T4.4.4.2.m2.2.3.2"><csymbol cd="ambiguous" id="S5.T4.4.4.2.m2.2.3.2.1.cmml" xref="S5.T4.4.4.2.m2.2.3.2">subscript</csymbol><apply id="S5.T4.4.4.2.m2.2.3.2.2.cmml" xref="S5.T4.4.4.2.m2.2.3.2"><csymbol cd="ambiguous" id="S5.T4.4.4.2.m2.2.3.2.2.1.cmml" xref="S5.T4.4.4.2.m2.2.3.2">superscript</csymbol><ci id="S5.T4.4.4.2.m2.2.3.2.2.2.cmml" xref="S5.T4.4.4.2.m2.2.3.2.2.2">𝑝</ci><cn id="S5.T4.4.4.2.m2.1.1.1.1.cmml" type="integer" xref="S5.T4.4.4.2.m2.1.1.1.1">1</cn></apply><ci id="S5.T4.4.4.2.m2.2.3.2.3.cmml" xref="S5.T4.4.4.2.m2.2.3.2.3">𝑖</ci></apply><ci id="S5.T4.4.4.2.m2.2.2.cmml" xref="S5.T4.4.4.2.m2.2.2">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.2.m2.2c">p^{(1)}_{i}(t)</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.2.m2.2d">italic_p start_POSTSUPERSCRIPT ( 1 ) end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ( italic_t )</annotation></semantics></math><span class="ltx_text" id="S5.T4.4.4.2.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.4.4.4.1" style="font-size:80%;">33.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.4.4.5.1" style="font-size:80%;">28.81</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.6.3.1" style="font-size:80%;">e</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;">
<math alttext="\mathcal{S}_{i}" class="ltx_Math" display="inline" id="S5.T4.5.5.1.m1.1"><semantics id="S5.T4.5.5.1.m1.1a"><msub id="S5.T4.5.5.1.m1.1.1" xref="S5.T4.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T4.5.5.1.m1.1.1.2" mathsize="80%" xref="S5.T4.5.5.1.m1.1.1.2.cmml">𝒮</mi><mi id="S5.T4.5.5.1.m1.1.1.3" mathsize="80%" xref="S5.T4.5.5.1.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.1.m1.1b"><apply id="S5.T4.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.5.5.1.m1.1.1.1.cmml" xref="S5.T4.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T4.5.5.1.m1.1.1.2.cmml" xref="S5.T4.5.5.1.m1.1.1.2">𝒮</ci><ci id="S5.T4.5.5.1.m1.1.1.3.cmml" xref="S5.T4.5.5.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.1.m1.1c">\mathcal{S}_{i}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.1.m1.1d">caligraphic_S start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T4.6.6.2.1" style="font-size:80%;"> (w. </span><math alttext="\Sigma_{t}" class="ltx_Math" display="inline" id="S5.T4.6.6.2.m2.1"><semantics id="S5.T4.6.6.2.m2.1a"><msub id="S5.T4.6.6.2.m2.1.1" xref="S5.T4.6.6.2.m2.1.1.cmml"><mi id="S5.T4.6.6.2.m2.1.1.2" mathsize="80%" mathvariant="normal" xref="S5.T4.6.6.2.m2.1.1.2.cmml">Σ</mi><mi id="S5.T4.6.6.2.m2.1.1.3" mathsize="80%" xref="S5.T4.6.6.2.m2.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.2.m2.1b"><apply id="S5.T4.6.6.2.m2.1.1.cmml" xref="S5.T4.6.6.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T4.6.6.2.m2.1.1.1.cmml" xref="S5.T4.6.6.2.m2.1.1">subscript</csymbol><ci id="S5.T4.6.6.2.m2.1.1.2.cmml" xref="S5.T4.6.6.2.m2.1.1.2">Σ</ci><ci id="S5.T4.6.6.2.m2.1.1.3.cmml" xref="S5.T4.6.6.2.m2.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.2.m2.1c">\Sigma_{t}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.2.m2.1d">roman_Σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T4.6.6.2.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.6.4.1" style="font-size:80%;">33.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.5" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.6.5.1" style="font-size:80%;">28.71</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.6.9.1" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.9.1.1" style="font-size:80%;">f</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.6.9.2" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.9.2.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.6.9.3" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.9.3.1" style="font-size:80%;">33.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T4.6.9.4" style="padding-top:-0.4pt;padding-bottom:-0.4pt;"><span class="ltx_text" id="S5.T4.6.9.4.1" style="font-size:80%;">28.90</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different spatial-temporal variation score components on the PSNR (Peak Signal-to-Noise Ratio) of various scenes.  The study compares the full Spatial-Temporal Variation Score against versions using only the spatial component, only the temporal component, a modified temporal component using the first derivative of opacity instead of the second derivative, and a variant that uses the temporal variance parameter (Στ) instead of the temporal variation score. The PSNR values for each scene under these different scoring methods are presented, allowing for an assessment of the individual contributions of the spatial and temporal aspects of the score in achieving high PSNR values.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of Spatial-Temporal Variation Score. We compare our Spatial-Temporal Variation Score with other variants, and report the PSNR score of each scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T5.6.1">
<tr class="ltx_tr" id="S9.T5.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S9.T5.6.1.1.1"><span class="ltx_text" id="S9.T5.6.1.1.1.1" style="font-size:80%;">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.2"><span class="ltx_text" id="S9.T5.6.1.1.2.1" style="font-size:80%;">Coffee Martini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.3"><span class="ltx_text" id="S9.T5.6.1.1.3.1" style="font-size:80%;">Cook Spinach</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.4"><span class="ltx_text" id="S9.T5.6.1.1.4.1" style="font-size:80%;">Cut Roasted Beef</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.5"><span class="ltx_text" id="S9.T5.6.1.1.5.1" style="font-size:80%;">Flame Salmon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.6"><span class="ltx_text" id="S9.T5.6.1.1.6.1" style="font-size:80%;">Flame Steak</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.7"><span class="ltx_text" id="S9.T5.6.1.1.7.1" style="font-size:80%;">Sear Steak</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.1.8"><span class="ltx_text" id="S9.T5.6.1.1.8.1" style="font-size:80%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.1" rowspan="7"><span class="ltx_text" id="S9.T5.6.1.2.1.1" style="font-size:80%;">4DGS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.2"><span class="ltx_text" id="S9.T5.6.1.2.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.3"><span class="ltx_text" id="S9.T5.6.1.2.3.1" style="font-size:80%;">27.9286</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.4"><span class="ltx_text" id="S9.T5.6.1.2.4.1" style="font-size:80%;">33.1651</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.5"><span class="ltx_text" id="S9.T5.6.1.2.5.1" style="font-size:80%;">33.8849</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.6"><span class="ltx_text" id="S9.T5.6.1.2.6.1" style="font-size:80%;">29.1009</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.7"><span class="ltx_text" id="S9.T5.6.1.2.7.1" style="font-size:80%;">33.7970</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.8"><span class="ltx_text" id="S9.T5.6.1.2.8.1" style="font-size:80%;">33.6031</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.2.9"><span class="ltx_text" id="S9.T5.6.1.2.9.1" style="font-size:80%;">31.9133</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.3">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.1"><span class="ltx_text" id="S9.T5.6.1.3.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.2"><span class="ltx_text" id="S9.T5.6.1.3.2.1" style="font-size:80%;">0.9160</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.3"><span class="ltx_text" id="S9.T5.6.1.3.3.1" style="font-size:80%;">0.9545</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.4"><span class="ltx_text" id="S9.T5.6.1.3.4.1" style="font-size:80%;">0.9589</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.5"><span class="ltx_text" id="S9.T5.6.1.3.5.1" style="font-size:80%;">0.9236</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.6"><span class="ltx_text" id="S9.T5.6.1.3.6.1" style="font-size:80%;">0.9615</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.7"><span class="ltx_text" id="S9.T5.6.1.3.7.1" style="font-size:80%;">0.9607</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.3.8"><span class="ltx_text" id="S9.T5.6.1.3.8.1" style="font-size:80%;">0.9459</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.4">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.1"><span class="ltx_text" id="S9.T5.6.1.4.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.2"><span class="ltx_text" id="S9.T5.6.1.4.2.1" style="font-size:80%;">0.0759</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.3"><span class="ltx_text" id="S9.T5.6.1.4.3.1" style="font-size:80%;">0.0449</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.4"><span class="ltx_text" id="S9.T5.6.1.4.4.1" style="font-size:80%;">0.0408</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.5"><span class="ltx_text" id="S9.T5.6.1.4.5.1" style="font-size:80%;">0.0691</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.6"><span class="ltx_text" id="S9.T5.6.1.4.6.1" style="font-size:80%;">0.0383</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.7"><span class="ltx_text" id="S9.T5.6.1.4.7.1" style="font-size:80%;">0.0418</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.4.8"><span class="ltx_text" id="S9.T5.6.1.4.8.1" style="font-size:80%;">0.0518</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.5">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.1"><span class="ltx_text" id="S9.T5.6.1.5.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.2"><span class="ltx_text" id="S9.T5.6.1.5.2.1" style="font-size:80%;">2764</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.3"><span class="ltx_text" id="S9.T5.6.1.5.3.1" style="font-size:80%;">2211</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.4"><span class="ltx_text" id="S9.T5.6.1.5.4.1" style="font-size:80%;">1863</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.5"><span class="ltx_text" id="S9.T5.6.1.5.5.1" style="font-size:80%;">2969</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.6"><span class="ltx_text" id="S9.T5.6.1.5.6.1" style="font-size:80%;">1536</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.7"><span class="ltx_text" id="S9.T5.6.1.5.7.1" style="font-size:80%;">1167</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.5.8"><span class="ltx_text" id="S9.T5.6.1.5.8.1" style="font-size:80%;">2085</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.6">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.1"><span class="ltx_text" id="S9.T5.6.1.6.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.2"><span class="ltx_text" id="S9.T5.6.1.6.2.1" style="font-size:80%;">43</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.3"><span class="ltx_text" id="S9.T5.6.1.6.3.1" style="font-size:80%;">89</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.4"><span class="ltx_text" id="S9.T5.6.1.6.4.1" style="font-size:80%;">103</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.5"><span class="ltx_text" id="S9.T5.6.1.6.5.1" style="font-size:80%;">31</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.6"><span class="ltx_text" id="S9.T5.6.1.6.6.1" style="font-size:80%;">122</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.7"><span class="ltx_text" id="S9.T5.6.1.6.7.1" style="font-size:80%;">152</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.6.8"><span class="ltx_text" id="S9.T5.6.1.6.8.1" style="font-size:80%;">90</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.7">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.1"><span class="ltx_text" id="S9.T5.6.1.7.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.2"><span class="ltx_text" id="S9.T5.6.1.7.2.1" style="font-size:80%;">75</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.3"><span class="ltx_text" id="S9.T5.6.1.7.3.1" style="font-size:80%;">103</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.4"><span class="ltx_text" id="S9.T5.6.1.7.4.1" style="font-size:80%;">122</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.5"><span class="ltx_text" id="S9.T5.6.1.7.5.1" style="font-size:80%;">70</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.6"><span class="ltx_text" id="S9.T5.6.1.7.6.1" style="font-size:80%;">148</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.7"><span class="ltx_text" id="S9.T5.6.1.7.7.1" style="font-size:80%;">195</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.7.8"><span class="ltx_text" id="S9.T5.6.1.7.8.1" style="font-size:80%;">118</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.8">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.1"><span class="ltx_text" id="S9.T5.6.1.8.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.2"><span class="ltx_text" id="S9.T5.6.1.8.2.1" style="font-size:80%;">4441271</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.3"><span class="ltx_text" id="S9.T5.6.1.8.3.1" style="font-size:80%;">3530165</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.4"><span class="ltx_text" id="S9.T5.6.1.8.4.1" style="font-size:80%;">2979832</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.5"><span class="ltx_text" id="S9.T5.6.1.8.5.1" style="font-size:80%;">4719443</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.6"><span class="ltx_text" id="S9.T5.6.1.8.6.1" style="font-size:80%;">2457356</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.7"><span class="ltx_text" id="S9.T5.6.1.8.7.1" style="font-size:80%;">1870891</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.8.8"><span class="ltx_text" id="S9.T5.6.1.8.8.1" style="font-size:80%;">3333160</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.1" rowspan="7"><span class="ltx_text" id="S9.T5.6.1.9.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.2"><span class="ltx_text" id="S9.T5.6.1.9.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.3"><span class="ltx_text" id="S9.T5.6.1.9.3.1" style="font-size:80%;">28.5780</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.4"><span class="ltx_text" id="S9.T5.6.1.9.4.1" style="font-size:80%;">33.2613</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.5"><span class="ltx_text" id="S9.T5.6.1.9.5.1" style="font-size:80%;">33.6092</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.6"><span class="ltx_text" id="S9.T5.6.1.9.6.1" style="font-size:80%;">28.8488</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.7"><span class="ltx_text" id="S9.T5.6.1.9.7.1" style="font-size:80%;">33.2804</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.8"><span class="ltx_text" id="S9.T5.6.1.9.8.1" style="font-size:80%;">33.7150</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.9.9"><span class="ltx_text" id="S9.T5.6.1.9.9.1" style="font-size:80%;">31.8821</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.10">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.1"><span class="ltx_text" id="S9.T5.6.1.10.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.2"><span class="ltx_text" id="S9.T5.6.1.10.2.1" style="font-size:80%;">0.9185</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.3"><span class="ltx_text" id="S9.T5.6.1.10.3.1" style="font-size:80%;">0.9553</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.4"><span class="ltx_text" id="S9.T5.6.1.10.4.1" style="font-size:80%;">0.9570</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.5"><span class="ltx_text" id="S9.T5.6.1.10.5.1" style="font-size:80%;">0.9221</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.6"><span class="ltx_text" id="S9.T5.6.1.10.6.1" style="font-size:80%;">0.9598</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.7"><span class="ltx_text" id="S9.T5.6.1.10.7.1" style="font-size:80%;">0.9615</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.10.8"><span class="ltx_text" id="S9.T5.6.1.10.8.1" style="font-size:80%;">0.9457</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.11">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.1"><span class="ltx_text" id="S9.T5.6.1.11.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.2"><span class="ltx_text" id="S9.T5.6.1.11.2.1" style="font-size:80%;">0.0726</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.3"><span class="ltx_text" id="S9.T5.6.1.11.3.1" style="font-size:80%;">0.0459</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.4"><span class="ltx_text" id="S9.T5.6.1.11.4.1" style="font-size:80%;">0.0435</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.5"><span class="ltx_text" id="S9.T5.6.1.11.5.1" style="font-size:80%;">0.0707</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.6"><span class="ltx_text" id="S9.T5.6.1.11.6.1" style="font-size:80%;">0.0417</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.7"><span class="ltx_text" id="S9.T5.6.1.11.7.1" style="font-size:80%;">0.0401</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.11.8"><span class="ltx_text" id="S9.T5.6.1.11.8.1" style="font-size:80%;">0.0524</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.12">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.1"><span class="ltx_text" id="S9.T5.6.1.12.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.2"><span class="ltx_text" id="S9.T5.6.1.12.2.1" style="font-size:80%;">557.4</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.3"><span class="ltx_text" id="S9.T5.6.1.12.3.1" style="font-size:80%;">443.11</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.4"><span class="ltx_text" id="S9.T5.6.1.12.4.1" style="font-size:80%;">374.05</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.5"><span class="ltx_text" id="S9.T5.6.1.12.5.1" style="font-size:80%;">592.4</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.6"><span class="ltx_text" id="S9.T5.6.1.12.6.1" style="font-size:80%;">308.4</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.7"><span class="ltx_text" id="S9.T5.6.1.12.7.1" style="font-size:80%;">234.8</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.12.8"><span class="ltx_text" id="S9.T5.6.1.12.8.1" style="font-size:80%;">418.36</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.13">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.1"><span class="ltx_text" id="S9.T5.6.1.13.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.2"><span class="ltx_text" id="S9.T5.6.1.13.2.1" style="font-size:80%;">696</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.3"><span class="ltx_text" id="S9.T5.6.1.13.3.1" style="font-size:80%;">803</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.4"><span class="ltx_text" id="S9.T5.6.1.13.4.1" style="font-size:80%;">853</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.5"><span class="ltx_text" id="S9.T5.6.1.13.5.1" style="font-size:80%;">680</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.6"><span class="ltx_text" id="S9.T5.6.1.13.6.1" style="font-size:80%;">864</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.7"><span class="ltx_text" id="S9.T5.6.1.13.7.1" style="font-size:80%;">935</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.13.8"><span class="ltx_text" id="S9.T5.6.1.13.8.1" style="font-size:80%;">805</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.14">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.1"><span class="ltx_text" id="S9.T5.6.1.14.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.2"><span class="ltx_text" id="S9.T5.6.1.14.2.1" style="font-size:80%;">901</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.3"><span class="ltx_text" id="S9.T5.6.1.14.3.1" style="font-size:80%;">1088</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.4"><span class="ltx_text" id="S9.T5.6.1.14.4.1" style="font-size:80%;">1163</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.5"><span class="ltx_text" id="S9.T5.6.1.14.5.1" style="font-size:80%;">879</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.6"><span class="ltx_text" id="S9.T5.6.1.14.6.1" style="font-size:80%;">1189</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.7"><span class="ltx_text" id="S9.T5.6.1.14.7.1" style="font-size:80%;">1332</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.14.8"><span class="ltx_text" id="S9.T5.6.1.14.8.1" style="font-size:80%;">1092</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.15">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.1"><span class="ltx_text" id="S9.T5.6.1.15.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.2"><span class="ltx_text" id="S9.T5.6.1.15.2.1" style="font-size:80%;">888254</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.3"><span class="ltx_text" id="S9.T5.6.1.15.3.1" style="font-size:80%;">706033</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.4"><span class="ltx_text" id="S9.T5.6.1.15.4.1" style="font-size:80%;">595967</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.5"><span class="ltx_text" id="S9.T5.6.1.15.5.1" style="font-size:80%;">943889</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.6"><span class="ltx_text" id="S9.T5.6.1.15.6.1" style="font-size:80%;">491471</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.7"><span class="ltx_text" id="S9.T5.6.1.15.7.1" style="font-size:80%;">374178</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.15.8"><span class="ltx_text" id="S9.T5.6.1.15.8.1" style="font-size:80%;">666632</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.16">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T5.6.1.16.1" rowspan="7"><span class="ltx_text" id="S9.T5.6.1.16.1.1" style="font-size:80%;">Ours-PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.2"><span class="ltx_text" id="S9.T5.6.1.16.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.3"><span class="ltx_text" id="S9.T5.6.1.16.3.1" style="font-size:80%;">28.5472</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.4"><span class="ltx_text" id="S9.T5.6.1.16.4.1" style="font-size:80%;">33.0641</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.5"><span class="ltx_text" id="S9.T5.6.1.16.5.1" style="font-size:80%;">33.7767</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.6"><span class="ltx_text" id="S9.T5.6.1.16.6.1" style="font-size:80%;">28.9878</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.7"><span class="ltx_text" id="S9.T5.6.1.16.7.1" style="font-size:80%;">33.2519</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.8"><span class="ltx_text" id="S9.T5.6.1.16.8.1" style="font-size:80%;">33.6053</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T5.6.1.16.9"><span class="ltx_text" id="S9.T5.6.1.16.9.1" style="font-size:80%;">31.8722</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.17">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.1"><span class="ltx_text" id="S9.T5.6.1.17.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.2"><span class="ltx_text" id="S9.T5.6.1.17.2.1" style="font-size:80%;">0.9166</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.3"><span class="ltx_text" id="S9.T5.6.1.17.3.1" style="font-size:80%;">0.9540</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.4"><span class="ltx_text" id="S9.T5.6.1.17.4.1" style="font-size:80%;">0.9562</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.5"><span class="ltx_text" id="S9.T5.6.1.17.5.1" style="font-size:80%;">0.9209</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.6"><span class="ltx_text" id="S9.T5.6.1.17.6.1" style="font-size:80%;">0.9581</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.7"><span class="ltx_text" id="S9.T5.6.1.17.7.1" style="font-size:80%;">0.9604</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.17.8"><span class="ltx_text" id="S9.T5.6.1.17.8.1" style="font-size:80%;">0.9444</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.18">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.1"><span class="ltx_text" id="S9.T5.6.1.18.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.2"><span class="ltx_text" id="S9.T5.6.1.18.2.1" style="font-size:80%;">0.0744</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.3"><span class="ltx_text" id="S9.T5.6.1.18.3.1" style="font-size:80%;">0.0467</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.4"><span class="ltx_text" id="S9.T5.6.1.18.4.1" style="font-size:80%;">0.0445</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.5"><span class="ltx_text" id="S9.T5.6.1.18.5.1" style="font-size:80%;">0.0712</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.6"><span class="ltx_text" id="S9.T5.6.1.18.6.1" style="font-size:80%;">0.0421</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.7"><span class="ltx_text" id="S9.T5.6.1.18.7.1" style="font-size:80%;">0.0402</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.18.8"><span class="ltx_text" id="S9.T5.6.1.18.8.1" style="font-size:80%;">0.0532</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.19">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.1"><span class="ltx_text" id="S9.T5.6.1.19.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.2"><span class="ltx_text" id="S9.T5.6.1.19.2.1" style="font-size:80%;">64.94</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.3"><span class="ltx_text" id="S9.T5.6.1.19.3.1" style="font-size:80%;">52.04</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.4"><span class="ltx_text" id="S9.T5.6.1.19.4.1" style="font-size:80%;">44.54</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.5"><span class="ltx_text" id="S9.T5.6.1.19.5.1" style="font-size:80%;">69.24</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.6"><span class="ltx_text" id="S9.T5.6.1.19.6.1" style="font-size:80%;">36.94</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.7"><span class="ltx_text" id="S9.T5.6.1.19.7.1" style="font-size:80%;">29.34</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.19.8"><span class="ltx_text" id="S9.T5.6.1.19.8.1" style="font-size:80%;">49.50</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.20">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.1"><span class="ltx_text" id="S9.T5.6.1.20.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.2"><span class="ltx_text" id="S9.T5.6.1.20.2.1" style="font-size:80%;">696</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.3"><span class="ltx_text" id="S9.T5.6.1.20.3.1" style="font-size:80%;">803</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.4"><span class="ltx_text" id="S9.T5.6.1.20.4.1" style="font-size:80%;">853</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.5"><span class="ltx_text" id="S9.T5.6.1.20.5.1" style="font-size:80%;">680</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.6"><span class="ltx_text" id="S9.T5.6.1.20.6.1" style="font-size:80%;">864</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.7"><span class="ltx_text" id="S9.T5.6.1.20.7.1" style="font-size:80%;">935</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.20.8"><span class="ltx_text" id="S9.T5.6.1.20.8.1" style="font-size:80%;">805</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.21">
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.1"><span class="ltx_text" id="S9.T5.6.1.21.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.2"><span class="ltx_text" id="S9.T5.6.1.21.2.1" style="font-size:80%;">901</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.3"><span class="ltx_text" id="S9.T5.6.1.21.3.1" style="font-size:80%;">1088</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.4"><span class="ltx_text" id="S9.T5.6.1.21.4.1" style="font-size:80%;">1163</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.5"><span class="ltx_text" id="S9.T5.6.1.21.5.1" style="font-size:80%;">879</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.6"><span class="ltx_text" id="S9.T5.6.1.21.6.1" style="font-size:80%;">1189</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.7"><span class="ltx_text" id="S9.T5.6.1.21.7.1" style="font-size:80%;">1332</span></td>
<td class="ltx_td ltx_align_center" id="S9.T5.6.1.21.8"><span class="ltx_text" id="S9.T5.6.1.21.8.1" style="font-size:80%;">1092</span></td>
</tr>
<tr class="ltx_tr" id="S9.T5.6.1.22">
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.1"><span class="ltx_text" id="S9.T5.6.1.22.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.2"><span class="ltx_text" id="S9.T5.6.1.22.2.1" style="font-size:80%;">888254</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.3"><span class="ltx_text" id="S9.T5.6.1.22.3.1" style="font-size:80%;">706033</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.4"><span class="ltx_text" id="S9.T5.6.1.22.4.1" style="font-size:80%;">595967</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.5"><span class="ltx_text" id="S9.T5.6.1.22.5.1" style="font-size:80%;">943889</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.6"><span class="ltx_text" id="S9.T5.6.1.22.6.1" style="font-size:80%;">491471</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.7"><span class="ltx_text" id="S9.T5.6.1.22.7.1" style="font-size:80%;">374178</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T5.6.1.22.8"><span class="ltx_text" id="S9.T5.6.1.22.8.1" style="font-size:80%;">666632</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a per-scene breakdown of quantitative results for the Neural 3D Video (N3V) dataset.  For each of the six scenes in the dataset (Coffee Martini, Cook Spinach, Cut Roasted Beef, Flame Salmon, Flame Steak, Sear Steak), the table provides key metrics evaluating the performance of the proposed 4DGS-1K model and compares it to the original 4DGS model. The metrics include Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index Measure (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), storage size in MB, frames per second (FPS), raster FPS, and the number of Gaussians used.  The results offer a scene-specific comparison of rendering quality and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 5: Per-scene results of N3V datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T6.6.1">
<tr class="ltx_tr" id="S9.T6.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S9.T6.6.1.1.1"><span class="ltx_text" id="S9.T6.6.1.1.1.1" style="font-size:80%;">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.2"><span class="ltx_text" id="S9.T6.6.1.1.2.1" style="font-size:80%;">Bouncingballs</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.3"><span class="ltx_text" id="S9.T6.6.1.1.3.1" style="font-size:80%;">Hellwarrior</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.4"><span class="ltx_text" id="S9.T6.6.1.1.4.1" style="font-size:80%;">Hook</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.5"><span class="ltx_text" id="S9.T6.6.1.1.5.1" style="font-size:80%;">Jumpingjacks</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.6"><span class="ltx_text" id="S9.T6.6.1.1.6.1" style="font-size:80%;">Lego</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.7"><span class="ltx_text" id="S9.T6.6.1.1.7.1" style="font-size:80%;">Mutant</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.8"><span class="ltx_text" id="S9.T6.6.1.1.8.1" style="font-size:80%;">Standup</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.9"><span class="ltx_text" id="S9.T6.6.1.1.9.1" style="font-size:80%;">Trex</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.10"><span class="ltx_text" id="S9.T6.6.1.1.10.1" style="font-size:80%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.1" rowspan="7"><span class="ltx_text" id="S9.T6.6.1.2.1.1" style="font-size:80%;">4DGS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2"><span class="ltx_text" id="S9.T6.6.1.2.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.3"><span class="ltx_text" id="S9.T6.6.1.2.3.1" style="font-size:80%;">33.3472</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.4"><span class="ltx_text" id="S9.T6.6.1.2.4.1" style="font-size:80%;">34.7296</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.5"><span class="ltx_text" id="S9.T6.6.1.2.5.1" style="font-size:80%;">31.9369</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.6"><span class="ltx_text" id="S9.T6.6.1.2.6.1" style="font-size:80%;">30.8247</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.7"><span class="ltx_text" id="S9.T6.6.1.2.7.1" style="font-size:80%;">25.3320</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.8"><span class="ltx_text" id="S9.T6.6.1.2.8.1" style="font-size:80%;">38.9257</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.9"><span class="ltx_text" id="S9.T6.6.1.2.9.1" style="font-size:80%;">39.0411</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.10"><span class="ltx_text" id="S9.T6.6.1.2.10.1" style="font-size:80%;">29.8542</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.11"><span class="ltx_text" id="S9.T6.6.1.2.11.1" style="font-size:80%;">32.9989</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.3">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.1"><span class="ltx_text" id="S9.T6.6.1.3.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.2"><span class="ltx_text" id="S9.T6.6.1.3.2.1" style="font-size:80%;">0.9821</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.3"><span class="ltx_text" id="S9.T6.6.1.3.3.1" style="font-size:80%;">0.9516</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.4"><span class="ltx_text" id="S9.T6.6.1.3.4.1" style="font-size:80%;">0.9635</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.5"><span class="ltx_text" id="S9.T6.6.1.3.5.1" style="font-size:80%;">0.9684</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.6"><span class="ltx_text" id="S9.T6.6.1.3.6.1" style="font-size:80%;">0.9178</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.7"><span class="ltx_text" id="S9.T6.6.1.3.7.1" style="font-size:80%;">0.9903</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.8"><span class="ltx_text" id="S9.T6.6.1.3.8.1" style="font-size:80%;">0.9896</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.9"><span class="ltx_text" id="S9.T6.6.1.3.9.1" style="font-size:80%;">0.9795</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.3.10"><span class="ltx_text" id="S9.T6.6.1.3.10.1" style="font-size:80%;">0.9678</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.4">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.1"><span class="ltx_text" id="S9.T6.6.1.4.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.2"><span class="ltx_text" id="S9.T6.6.1.4.2.1" style="font-size:80%;">0.0252</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.3"><span class="ltx_text" id="S9.T6.6.1.4.3.1" style="font-size:80%;">0.0652</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.4"><span class="ltx_text" id="S9.T6.6.1.4.4.1" style="font-size:80%;">0.0385</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.5"><span class="ltx_text" id="S9.T6.6.1.4.5.1" style="font-size:80%;">0.0340</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.6"><span class="ltx_text" id="S9.T6.6.1.4.6.1" style="font-size:80%;">0.0819</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.7"><span class="ltx_text" id="S9.T6.6.1.4.7.1" style="font-size:80%;">0.0090</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.8"><span class="ltx_text" id="S9.T6.6.1.4.8.1" style="font-size:80%;">0.0094</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.9"><span class="ltx_text" id="S9.T6.6.1.4.9.1" style="font-size:80%;">0.0193</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.4.10"><span class="ltx_text" id="S9.T6.6.1.4.10.1" style="font-size:80%;">0.0353</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.5">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.1"><span class="ltx_text" id="S9.T6.6.1.5.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.2"><span class="ltx_text" id="S9.T6.6.1.5.2.1" style="font-size:80%;">83.69</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.3"><span class="ltx_text" id="S9.T6.6.1.5.3.1" style="font-size:80%;">156.53</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.4"><span class="ltx_text" id="S9.T6.6.1.5.4.1" style="font-size:80%;">164.91</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.5"><span class="ltx_text" id="S9.T6.6.1.5.5.1" style="font-size:80%;">510.99</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.6"><span class="ltx_text" id="S9.T6.6.1.5.6.1" style="font-size:80%;">351.19</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.7"><span class="ltx_text" id="S9.T6.6.1.5.7.1" style="font-size:80%;">73.24</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.8"><span class="ltx_text" id="S9.T6.6.1.5.8.1" style="font-size:80%;">95.38</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.9"><span class="ltx_text" id="S9.T6.6.1.5.9.1" style="font-size:80%;">791.66</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.5.10"><span class="ltx_text" id="S9.T6.6.1.5.10.1" style="font-size:80%;">278.45</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.6">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.1"><span class="ltx_text" id="S9.T6.6.1.6.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.2"><span class="ltx_text" id="S9.T6.6.1.6.2.1" style="font-size:80%;">462</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.3"><span class="ltx_text" id="S9.T6.6.1.6.3.1" style="font-size:80%;">426</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.4"><span class="ltx_text" id="S9.T6.6.1.6.4.1" style="font-size:80%;">414</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.5"><span class="ltx_text" id="S9.T6.6.1.6.5.1" style="font-size:80%;">267</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.6"><span class="ltx_text" id="S9.T6.6.1.6.6.1" style="font-size:80%;">317</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.7"><span class="ltx_text" id="S9.T6.6.1.6.7.1" style="font-size:80%;">463</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.8"><span class="ltx_text" id="S9.T6.6.1.6.8.1" style="font-size:80%;">457</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.9"><span class="ltx_text" id="S9.T6.6.1.6.9.1" style="font-size:80%;">202</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.6.10"><span class="ltx_text" id="S9.T6.6.1.6.10.1" style="font-size:80%;">376</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.7">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.1"><span class="ltx_text" id="S9.T6.6.1.7.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.2"><span class="ltx_text" id="S9.T6.6.1.7.2.1" style="font-size:80%;">1951</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.3"><span class="ltx_text" id="S9.T6.6.1.7.3.1" style="font-size:80%;">1433</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.4"><span class="ltx_text" id="S9.T6.6.1.7.4.1" style="font-size:80%;">1309</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.5"><span class="ltx_text" id="S9.T6.6.1.7.5.1" style="font-size:80%;">489</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.6"><span class="ltx_text" id="S9.T6.6.1.7.6.1" style="font-size:80%;">634</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.7"><span class="ltx_text" id="S9.T6.6.1.7.7.1" style="font-size:80%;">1861</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.8"><span class="ltx_text" id="S9.T6.6.1.7.8.1" style="font-size:80%;">1878</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.9"><span class="ltx_text" id="S9.T6.6.1.7.9.1" style="font-size:80%;">302</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.7.10"><span class="ltx_text" id="S9.T6.6.1.7.10.1" style="font-size:80%;">1232</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.8">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.1"><span class="ltx_text" id="S9.T6.6.1.8.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.2"><span class="ltx_text" id="S9.T6.6.1.8.2.1" style="font-size:80%;">133762</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.3"><span class="ltx_text" id="S9.T6.6.1.8.3.1" style="font-size:80%;">250201</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.4"><span class="ltx_text" id="S9.T6.6.1.8.4.1" style="font-size:80%;">263593</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.5"><span class="ltx_text" id="S9.T6.6.1.8.5.1" style="font-size:80%;">816773</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.6"><span class="ltx_text" id="S9.T6.6.1.8.6.1" style="font-size:80%;">561357</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.7"><span class="ltx_text" id="S9.T6.6.1.8.7.1" style="font-size:80%;">117062</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.8"><span class="ltx_text" id="S9.T6.6.1.8.8.1" style="font-size:80%;">152454</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.9"><span class="ltx_text" id="S9.T6.6.1.8.9.1" style="font-size:80%;">1265408</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.8.10"><span class="ltx_text" id="S9.T6.6.1.8.10.1" style="font-size:80%;">445076</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.1" rowspan="7"><span class="ltx_text" id="S9.T6.6.1.9.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.2"><span class="ltx_text" id="S9.T6.6.1.9.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.3"><span class="ltx_text" id="S9.T6.6.1.9.3.1" style="font-size:80%;">33.4532</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.4"><span class="ltx_text" id="S9.T6.6.1.9.4.1" style="font-size:80%;">35.0316</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.5"><span class="ltx_text" id="S9.T6.6.1.9.5.1" style="font-size:80%;">32.5118</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.6"><span class="ltx_text" id="S9.T6.6.1.9.6.1" style="font-size:80%;">31.8045</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.7"><span class="ltx_text" id="S9.T6.6.1.9.7.1" style="font-size:80%;">26.8319</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.8"><span class="ltx_text" id="S9.T6.6.1.9.8.1" style="font-size:80%;">37.1916</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.9"><span class="ltx_text" id="S9.T6.6.1.9.9.1" style="font-size:80%;">39.3990</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.10"><span class="ltx_text" id="S9.T6.6.1.9.10.1" style="font-size:80%;">30.4726</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.9.11"><span class="ltx_text" id="S9.T6.6.1.9.11.1" style="font-size:80%;">33.3370</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.10">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.1"><span class="ltx_text" id="S9.T6.6.1.10.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.2"><span class="ltx_text" id="S9.T6.6.1.10.2.1" style="font-size:80%;">0.9826</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.3"><span class="ltx_text" id="S9.T6.6.1.10.3.1" style="font-size:80%;">0.9530</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.4"><span class="ltx_text" id="S9.T6.6.1.10.4.1" style="font-size:80%;">0.9653</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.5"><span class="ltx_text" id="S9.T6.6.1.10.5.1" style="font-size:80%;">0.9716</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.6"><span class="ltx_text" id="S9.T6.6.1.10.6.1" style="font-size:80%;">0.9280</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.7"><span class="ltx_text" id="S9.T6.6.1.10.7.1" style="font-size:80%;">0.9886</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.8"><span class="ltx_text" id="S9.T6.6.1.10.8.1" style="font-size:80%;">0.9896</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.9"><span class="ltx_text" id="S9.T6.6.1.10.9.1" style="font-size:80%;">0.9811</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.10.10"><span class="ltx_text" id="S9.T6.6.1.10.10.1" style="font-size:80%;">0.9699</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.11">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.1"><span class="ltx_text" id="S9.T6.6.1.11.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.2"><span class="ltx_text" id="S9.T6.6.1.11.2.1" style="font-size:80%;">0.0248</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.3"><span class="ltx_text" id="S9.T6.6.1.11.3.1" style="font-size:80%;">0.0644</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.4"><span class="ltx_text" id="S9.T6.6.1.11.4.1" style="font-size:80%;">0.035</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.5"><span class="ltx_text" id="S9.T6.6.1.11.5.1" style="font-size:80%;">0.0322</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.6"><span class="ltx_text" id="S9.T6.6.1.11.6.1" style="font-size:80%;">0.0674</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.7"><span class="ltx_text" id="S9.T6.6.1.11.7.1" style="font-size:80%;">0.0124</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.8"><span class="ltx_text" id="S9.T6.6.1.11.8.1" style="font-size:80%;">0.0099</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.9"><span class="ltx_text" id="S9.T6.6.1.11.9.1" style="font-size:80%;">0.0180</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.11.10"><span class="ltx_text" id="S9.T6.6.1.11.10.1" style="font-size:80%;">0.0330</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.12">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.1"><span class="ltx_text" id="S9.T6.6.1.12.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.2"><span class="ltx_text" id="S9.T6.6.1.12.2.1" style="font-size:80%;">12.56</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.3"><span class="ltx_text" id="S9.T6.6.1.12.3.1" style="font-size:80%;">23.38</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.4"><span class="ltx_text" id="S9.T6.6.1.12.4.1" style="font-size:80%;">24.63</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.5"><span class="ltx_text" id="S9.T6.6.1.12.5.1" style="font-size:80%;">76.19</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.6"><span class="ltx_text" id="S9.T6.6.1.12.6.1" style="font-size:80%;">52.45</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.7"><span class="ltx_text" id="S9.T6.6.1.12.7.1" style="font-size:80%;">10.97</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.8"><span class="ltx_text" id="S9.T6.6.1.12.8.1" style="font-size:80%;">14.25</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.9"><span class="ltx_text" id="S9.T6.6.1.12.9.1" style="font-size:80%;">118.24</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.12.10"><span class="ltx_text" id="S9.T6.6.1.12.10.1" style="font-size:80%;">41.58</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.13">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.1"><span class="ltx_text" id="S9.T6.6.1.13.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.2"><span class="ltx_text" id="S9.T6.6.1.13.2.1" style="font-size:80%;">1509</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.3"><span class="ltx_text" id="S9.T6.6.1.13.3.1" style="font-size:80%;">1517</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.4"><span class="ltx_text" id="S9.T6.6.1.13.4.1" style="font-size:80%;">1444</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.5"><span class="ltx_text" id="S9.T6.6.1.13.5.1" style="font-size:80%;">1491</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.6"><span class="ltx_text" id="S9.T6.6.1.13.6.1" style="font-size:80%;">1318</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.7"><span class="ltx_text" id="S9.T6.6.1.13.7.1" style="font-size:80%;">1518</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.8"><span class="ltx_text" id="S9.T6.6.1.13.8.1" style="font-size:80%;">1539</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.9"><span class="ltx_text" id="S9.T6.6.1.13.9.1" style="font-size:80%;">1361</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.13.10"><span class="ltx_text" id="S9.T6.6.1.13.10.1" style="font-size:80%;">1462</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.14">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.1"><span class="ltx_text" id="S9.T6.6.1.14.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.2"><span class="ltx_text" id="S9.T6.6.1.14.2.1" style="font-size:80%;">2600</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.3"><span class="ltx_text" id="S9.T6.6.1.14.3.1" style="font-size:80%;">2665</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.4"><span class="ltx_text" id="S9.T6.6.1.14.4.1" style="font-size:80%;">2634</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.5"><span class="ltx_text" id="S9.T6.6.1.14.5.1" style="font-size:80%;">2476</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.6"><span class="ltx_text" id="S9.T6.6.1.14.6.1" style="font-size:80%;">2067</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.7"><span class="ltx_text" id="S9.T6.6.1.14.7.1" style="font-size:80%;">2598</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.8"><span class="ltx_text" id="S9.T6.6.1.14.8.1" style="font-size:80%;">2644</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.9"><span class="ltx_text" id="S9.T6.6.1.14.9.1" style="font-size:80%;">2174</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.14.10"><span class="ltx_text" id="S9.T6.6.1.14.10.1" style="font-size:80%;">2482</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.15">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.1"><span class="ltx_text" id="S9.T6.6.1.15.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.2"><span class="ltx_text" id="S9.T6.6.1.15.2.1" style="font-size:80%;">20065</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.3"><span class="ltx_text" id="S9.T6.6.1.15.3.1" style="font-size:80%;">37368</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.4"><span class="ltx_text" id="S9.T6.6.1.15.4.1" style="font-size:80%;">39360</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.5"><span class="ltx_text" id="S9.T6.6.1.15.5.1" style="font-size:80%;">121776</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.6"><span class="ltx_text" id="S9.T6.6.1.15.6.1" style="font-size:80%;">83837</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.7"><span class="ltx_text" id="S9.T6.6.1.15.7.1" style="font-size:80%;">17527</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.8"><span class="ltx_text" id="S9.T6.6.1.15.8.1" style="font-size:80%;">22768</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.9"><span class="ltx_text" id="S9.T6.6.1.15.9.1" style="font-size:80%;">188986</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.15.10"><span class="ltx_text" id="S9.T6.6.1.15.10.1" style="font-size:80%;">66460</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.16">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T6.6.1.16.1" rowspan="7"><span class="ltx_text" id="S9.T6.6.1.16.1.1" style="font-size:80%;">Ours-PP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.2"><span class="ltx_text" id="S9.T6.6.1.16.2.1" style="font-size:80%;">PSNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.3"><span class="ltx_text" id="S9.T6.6.1.16.3.1" style="font-size:80%;">33.4592</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.4"><span class="ltx_text" id="S9.T6.6.1.16.4.1" style="font-size:80%;">35.1570</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.5"><span class="ltx_text" id="S9.T6.6.1.16.5.1" style="font-size:80%;">32.5498</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.6"><span class="ltx_text" id="S9.T6.6.1.16.6.1" style="font-size:80%;">31.8467</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.7"><span class="ltx_text" id="S9.T6.6.1.16.7.1" style="font-size:80%;">27.2850</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.8"><span class="ltx_text" id="S9.T6.6.1.16.8.1" style="font-size:80%;">37.0218</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.9"><span class="ltx_text" id="S9.T6.6.1.16.9.1" style="font-size:80%;">39.0713</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.10"><span class="ltx_text" id="S9.T6.6.1.16.10.1" style="font-size:80%;">30.6063</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.16.11"><span class="ltx_text" id="S9.T6.6.1.16.11.1" style="font-size:80%;">33.3746</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.17">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.1"><span class="ltx_text" id="S9.T6.6.1.17.1.1" style="font-size:80%;">SSIM</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.2"><span class="ltx_text" id="S9.T6.6.1.17.2.1" style="font-size:80%;">0.9821</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.3"><span class="ltx_text" id="S9.T6.6.1.17.3.1" style="font-size:80%;">0.9537</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.4"><span class="ltx_text" id="S9.T6.6.1.17.4.1" style="font-size:80%;">0.9671</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.5"><span class="ltx_text" id="S9.T6.6.1.17.5.1" style="font-size:80%;">0.9728</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.6"><span class="ltx_text" id="S9.T6.6.1.17.6.1" style="font-size:80%;">0.9315</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.7"><span class="ltx_text" id="S9.T6.6.1.17.7.1" style="font-size:80%;">0.9883</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.8"><span class="ltx_text" id="S9.T6.6.1.17.8.1" style="font-size:80%;">0.9896</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.9"><span class="ltx_text" id="S9.T6.6.1.17.9.1" style="font-size:80%;">0.9821</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.17.10"><span class="ltx_text" id="S9.T6.6.1.17.10.1" style="font-size:80%;">0.9709</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.18">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.1"><span class="ltx_text" id="S9.T6.6.1.18.1.1" style="font-size:80%;">LPIPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.2"><span class="ltx_text" id="S9.T6.6.1.18.2.1" style="font-size:80%;">0.0259</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.3"><span class="ltx_text" id="S9.T6.6.1.18.3.1" style="font-size:80%;">0.0629</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.4"><span class="ltx_text" id="S9.T6.6.1.18.4.1" style="font-size:80%;">0.0345</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.5"><span class="ltx_text" id="S9.T6.6.1.18.5.1" style="font-size:80%;">0.0309</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.6"><span class="ltx_text" id="S9.T6.6.1.18.6.1" style="font-size:80%;">0.0646</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.7"><span class="ltx_text" id="S9.T6.6.1.18.7.1" style="font-size:80%;">0.0139</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.8"><span class="ltx_text" id="S9.T6.6.1.18.8.1" style="font-size:80%;">0.0109</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.9"><span class="ltx_text" id="S9.T6.6.1.18.9.1" style="font-size:80%;">0.0173</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.18.10"><span class="ltx_text" id="S9.T6.6.1.18.10.1" style="font-size:80%;">0.0326</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.19">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.1"><span class="ltx_text" id="S9.T6.6.1.19.1.1" style="font-size:80%;">Storage(MB)</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.2"><span class="ltx_text" id="S9.T6.6.1.19.2.1" style="font-size:80%;">4.12</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.3"><span class="ltx_text" id="S9.T6.6.1.19.3.1" style="font-size:80%;">5.29</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.4"><span class="ltx_text" id="S9.T6.6.1.19.4.1" style="font-size:80%;">5.39</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.5"><span class="ltx_text" id="S9.T6.6.1.19.5.1" style="font-size:80%;">11.04</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.6"><span class="ltx_text" id="S9.T6.6.1.19.6.1" style="font-size:80%;">8.48</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.7"><span class="ltx_text" id="S9.T6.6.1.19.7.1" style="font-size:80%;">3.56</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.8"><span class="ltx_text" id="S9.T6.6.1.19.8.1" style="font-size:80%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.9"><span class="ltx_text" id="S9.T6.6.1.19.9.1" style="font-size:80%;">16.11</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.19.10"><span class="ltx_text" id="S9.T6.6.1.19.10.1" style="font-size:80%;">7.23</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.20">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.1"><span class="ltx_text" id="S9.T6.6.1.20.1.1" style="font-size:80%;">FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.2"><span class="ltx_text" id="S9.T6.6.1.20.2.1" style="font-size:80%;">1509</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.3"><span class="ltx_text" id="S9.T6.6.1.20.3.1" style="font-size:80%;">1517</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.4"><span class="ltx_text" id="S9.T6.6.1.20.4.1" style="font-size:80%;">1444</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.5"><span class="ltx_text" id="S9.T6.6.1.20.5.1" style="font-size:80%;">1491</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.6"><span class="ltx_text" id="S9.T6.6.1.20.6.1" style="font-size:80%;">1318</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.7"><span class="ltx_text" id="S9.T6.6.1.20.7.1" style="font-size:80%;">1518</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.8"><span class="ltx_text" id="S9.T6.6.1.20.8.1" style="font-size:80%;">1539</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.9"><span class="ltx_text" id="S9.T6.6.1.20.9.1" style="font-size:80%;">1361</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.20.10"><span class="ltx_text" id="S9.T6.6.1.20.10.1" style="font-size:80%;">1462</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.21">
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.1"><span class="ltx_text" id="S9.T6.6.1.21.1.1" style="font-size:80%;">Raster FPS</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.2"><span class="ltx_text" id="S9.T6.6.1.21.2.1" style="font-size:80%;">2600</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.3"><span class="ltx_text" id="S9.T6.6.1.21.3.1" style="font-size:80%;">2665</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.4"><span class="ltx_text" id="S9.T6.6.1.21.4.1" style="font-size:80%;">2634</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.5"><span class="ltx_text" id="S9.T6.6.1.21.5.1" style="font-size:80%;">2476</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.6"><span class="ltx_text" id="S9.T6.6.1.21.6.1" style="font-size:80%;">2067</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.7"><span class="ltx_text" id="S9.T6.6.1.21.7.1" style="font-size:80%;">2598</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.8"><span class="ltx_text" id="S9.T6.6.1.21.8.1" style="font-size:80%;">2644</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.9"><span class="ltx_text" id="S9.T6.6.1.21.9.1" style="font-size:80%;">2174</span></td>
<td class="ltx_td ltx_align_center" id="S9.T6.6.1.21.10"><span class="ltx_text" id="S9.T6.6.1.21.10.1" style="font-size:80%;">2482</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.22">
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.1"><span class="ltx_text" id="S9.T6.6.1.22.1.1" style="font-size:80%;">#NUM</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.2"><span class="ltx_text" id="S9.T6.6.1.22.2.1" style="font-size:80%;">20065</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.3"><span class="ltx_text" id="S9.T6.6.1.22.3.1" style="font-size:80%;">37368</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.4"><span class="ltx_text" id="S9.T6.6.1.22.4.1" style="font-size:80%;">39360</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.5"><span class="ltx_text" id="S9.T6.6.1.22.5.1" style="font-size:80%;">121776</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.6"><span class="ltx_text" id="S9.T6.6.1.22.6.1" style="font-size:80%;">83837</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.7"><span class="ltx_text" id="S9.T6.6.1.22.7.1" style="font-size:80%;">17527</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.8"><span class="ltx_text" id="S9.T6.6.1.22.8.1" style="font-size:80%;">22768</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.9"><span class="ltx_text" id="S9.T6.6.1.22.9.1" style="font-size:80%;">188986</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S9.T6.6.1.22.10"><span class="ltx_text" id="S9.T6.6.1.22.10.1" style="font-size:80%;">66460</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods on the D-NeRF dataset.  For each scene in the dataset, it shows the Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index Measure (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), storage in MB, frames per second (FPS), raster FPS, and the number of Gaussians used.  The methods compared include the baseline 4DGS, and the proposed method (Ours and Ours-PP).  This allows for a comprehensive evaluation of the performance of different approaches in terms of visual quality, efficiency, and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 6: Per-scene results of D-NeRF datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16422/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16422/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}