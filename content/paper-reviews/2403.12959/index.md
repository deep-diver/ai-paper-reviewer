---
title: "WHAC: World-grounded Humans and Cameras"
summary: "WHAC: Grounding humans and cameras together!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 SenseTime Research",]
showSummary: true
date: 2024-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2403.12959 {{< /keyword >}}
{{< keyword icon="writer" >}} Wanqi Yin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2403.12959" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2403.12959" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2403.12959/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Estimating human & camera movement in the world coordinate system from a single camera is hard due to the lack of depth information. Existing methods fall short in dynamic scenes. This paper tackles the challenge by leveraging the relationship between the world, humans, and camera. It builds on two observations: camera-frame human pose estimation can recover depth, and human motions inherently provide spatial cues. 



The paper introduces **WHAC, a novel framework** for estimating human pose, shape, and camera pose from monocular video. It also presents **WHAC-A-Mole, a new dataset** with accurate human and camera annotations & diverse motions. Experiments on benchmarks show WHAC's effectiveness, outperforming existing methods and handling challenging scenarios.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces WHAC, a novel framework for world-grounded human and camera trajectory estimation from monocular video without relying on traditional optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents WHAC-A-Mole, a new synthetic dataset with accurate annotations for humans and cameras, featuring diverse human motions and realistic camera trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates state-of-the-art performance on both standard and newly established benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces a novel method for **accurate human and camera motion capture from monocular video**, using a new dataset to facilitate future work. It addresses the challenge of scaleless estimation, offering a robust solution applicable in areas like AR/VR, sports analysis, and robotics.

------
#### Visual Insights



![](https://arxiv.org/html/2403.12959/x1.png)

> 🔼 This figure illustrates the WHAC framework, which integrates three key components to estimate world-grounded human and camera trajectories.  The first component is camera-frame SMPL-X estimation, which provides initial estimates of human pose and shape in the camera's coordinate system.  This is combined with visual odometry (VO), which estimates the camera's trajectory in the world coordinate system, providing information about camera movement. Finally, the human-world component, the MotionVelocimeter, analyzes human movements to infer velocity and thus scale information, refining both camera and human trajectory estimates. The synergy of these three components allows WHAC to accurately estimate both camera and human trajectories with correct scale in the world.
> <details>
> <summary>read the caption</summary>
> Figure 1: WHAC synergizes human-camera (camera-frame SMPL-X estimation), camera-world (visual odometry), and human-world (our proposed MotionVelocimeter) modeling for constructing world-grounded human and camera trajectories.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.22">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.22.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">#Inst.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">#Seq.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">R/S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Multi.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Track.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">Contact</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">HHI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Camera</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.22.17.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Human</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.8.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">3DPW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib41" title="">41</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">74.6K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">R</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.7.1.1.m1.1"><semantics id="S4.T1.7.1.1.m1.1a"><mo id="S4.T1.7.1.1.m1.1.1" xref="S4.T1.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.1.1.m1.1b"><times id="S4.T1.7.1.1.m1.1.1.cmml" xref="S4.T1.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.8.2.2.m1.1"><semantics id="S4.T1.8.2.2.m1.1a"><mo id="S4.T1.8.2.2.m1.1.1" xref="S4.T1.8.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.2.2.m1.1b"><times id="S4.T1.8.2.2.m1.1.1.cmml" xref="S4.T1.8.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">Moving</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.18.1">
<td class="ltx_td ltx_align_left" id="S4.T1.22.18.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">RICH <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib16" title="">16</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">476K</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">141</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">R</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Static*</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.18.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.6">
<td class="ltx_td ltx_align_left" id="S4.T1.12.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">HCM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\ddagger" class="ltx_Math" display="inline" id="S4.T1.9.3.1.m1.1"><semantics id="S4.T1.9.3.1.m1.1a"><mo id="S4.T1.9.3.1.m1.1.1" xref="S4.T1.9.3.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.3.1.m1.1b"><ci id="S4.T1.9.3.1.m1.1.1.cmml" xref="S4.T1.9.3.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.3.1.m1.1c">\ddagger</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.3.1.m1.1d">‡</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">S</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\ddagger" class="ltx_Math" display="inline" id="S4.T1.10.4.2.m1.1"><semantics id="S4.T1.10.4.2.m1.1a"><mo id="S4.T1.10.4.2.m1.1.1" xref="S4.T1.10.4.2.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.4.2.m1.1b"><ci id="S4.T1.10.4.2.m1.1.1.cmml" xref="S4.T1.10.4.2.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.4.2.m1.1c">\ddagger</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.4.2.m1.1d">‡</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.11.5.3.m1.1"><semantics id="S4.T1.11.5.3.m1.1a"><mo id="S4.T1.11.5.3.m1.1.1" xref="S4.T1.11.5.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.5.3.m1.1b"><times id="S4.T1.11.5.3.m1.1.1.cmml" xref="S4.T1.11.5.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.5.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.5.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.12.6.4.m1.1"><semantics id="S4.T1.12.6.4.m1.1a"><mo id="S4.T1.12.6.4.m1.1.1" xref="S4.T1.12.6.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.6.4.m1.1b"><times id="S4.T1.12.6.4.m1.1.1.cmml" xref="S4.T1.12.6.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.6.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.6.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">Moving</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.8">
<td class="ltx_td ltx_align_left" id="S4.T1.14.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">EMDB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib19" title="">19</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">109K</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">R</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.13.7.1.m1.1"><semantics id="S4.T1.13.7.1.m1.1a"><mo id="S4.T1.13.7.1.m1.1.1" xref="S4.T1.13.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.7.1.m1.1b"><times id="S4.T1.13.7.1.m1.1.1.cmml" xref="S4.T1.13.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.7.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">N.A.</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.14.8.2.m1.1"><semantics id="S4.T1.14.8.2.m1.1a"><mo id="S4.T1.14.8.2.m1.1.1" xref="S4.T1.14.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.8.2.m1.1b"><times id="S4.T1.14.8.2.m1.1.1.cmml" xref="S4.T1.14.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.8.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">N.A.</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">Moving</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.10">
<td class="ltx_td ltx_align_left" id="S4.T1.15.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">EgoBody<math alttext="{}^{\dagger}" class="ltx_Math" display="inline" id="S4.T1.15.9.1.m1.1"><semantics id="S4.T1.15.9.1.m1.1a"><msup id="S4.T1.15.9.1.m1.1.1" xref="S4.T1.15.9.1.m1.1.1.cmml"><mi id="S4.T1.15.9.1.m1.1.1a" xref="S4.T1.15.9.1.m1.1.1.cmml"></mi><mo id="S4.T1.15.9.1.m1.1.1.1" xref="S4.T1.15.9.1.m1.1.1.1.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T1.15.9.1.m1.1b"><apply id="S4.T1.15.9.1.m1.1.1.cmml" xref="S4.T1.15.9.1.m1.1.1"><ci id="S4.T1.15.9.1.m1.1.1.1.cmml" xref="S4.T1.15.9.1.m1.1.1.1">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.9.1.m1.1c">{}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.9.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib47" title="">47</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">175K</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">125</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">R</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.16.10.2.m1.1"><semantics id="S4.T1.16.10.2.m1.1a"><mo id="S4.T1.16.10.2.m1.1.1" xref="S4.T1.16.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.10.2.m1.1b"><times id="S4.T1.16.10.2.m1.1.1.cmml" xref="S4.T1.16.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.10.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">Moving</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL-X</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.13">
<td class="ltx_td ltx_align_left" id="S4.T1.19.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">BEDLAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib3" title="">3</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">951K</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">10.4K<math alttext="{}^{\diamond}" class="ltx_Math" display="inline" id="S4.T1.17.11.1.m1.1"><semantics id="S4.T1.17.11.1.m1.1a"><msup id="S4.T1.17.11.1.m1.1.1" xref="S4.T1.17.11.1.m1.1.1.cmml"><mi id="S4.T1.17.11.1.m1.1.1a" xref="S4.T1.17.11.1.m1.1.1.cmml"></mi><mo id="S4.T1.17.11.1.m1.1.1.1" xref="S4.T1.17.11.1.m1.1.1.1.cmml">⋄</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T1.17.11.1.m1.1b"><apply id="S4.T1.17.11.1.m1.1.1.cmml" xref="S4.T1.17.11.1.m1.1.1"><ci id="S4.T1.17.11.1.m1.1.1.1.cmml" xref="S4.T1.17.11.1.m1.1.1.1">⋄</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.11.1.m1.1c">{}^{\diamond}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.11.1.m1.1d">start_FLOATSUPERSCRIPT ⋄ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">S</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.18.12.2.m1.1"><semantics id="S4.T1.18.12.2.m1.1a"><mo id="S4.T1.18.12.2.m1.1.1" xref="S4.T1.18.12.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.12.2.m1.1b"><times id="S4.T1.18.12.2.m1.1.1.cmml" xref="S4.T1.18.12.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.12.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.12.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.19.13.3.m1.1"><semantics id="S4.T1.19.13.3.m1.1a"><mo id="S4.T1.19.13.3.m1.1.1" xref="S4.T1.19.13.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.13.3.m1.1b"><times id="S4.T1.19.13.3.m1.1.1.cmml" xref="S4.T1.19.13.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.13.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.13.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">Static</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL-X</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.16">
<td class="ltx_td ltx_align_left" id="S4.T1.22.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">SynBody <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib42" title="">42</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">2.7M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.20.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">27K<math alttext="{}^{\diamond}" class="ltx_Math" display="inline" id="S4.T1.20.14.1.m1.1"><semantics id="S4.T1.20.14.1.m1.1a"><msup id="S4.T1.20.14.1.m1.1.1" xref="S4.T1.20.14.1.m1.1.1.cmml"><mi id="S4.T1.20.14.1.m1.1.1a" xref="S4.T1.20.14.1.m1.1.1.cmml"></mi><mo id="S4.T1.20.14.1.m1.1.1.1" xref="S4.T1.20.14.1.m1.1.1.1.cmml">⋄</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T1.20.14.1.m1.1b"><apply id="S4.T1.20.14.1.m1.1.1.cmml" xref="S4.T1.20.14.1.m1.1.1"><ci id="S4.T1.20.14.1.m1.1.1.1.cmml" xref="S4.T1.20.14.1.m1.1.1.1">⋄</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.14.1.m1.1c">{}^{\diamond}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.14.1.m1.1d">start_FLOATSUPERSCRIPT ⋄ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">S</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.21.15.2.m1.1"><semantics id="S4.T1.21.15.2.m1.1a"><mo id="S4.T1.21.15.2.m1.1.1" xref="S4.T1.21.15.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.15.2.m1.1b"><times id="S4.T1.21.15.2.m1.1.1.cmml" xref="S4.T1.21.15.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.15.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.15.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.22.16.3.m1.1"><semantics id="S4.T1.22.16.3.m1.1a"><mo id="S4.T1.22.16.3.m1.1.1" xref="S4.T1.22.16.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.16.3.m1.1b"><times id="S4.T1.22.16.3.m1.1.1.cmml" xref="S4.T1.22.16.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.16.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.16.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">Static</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL-X</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.19.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC-A-Mole</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.46M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">2434</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">S</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">Moving</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.22.19.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">SMPL-X</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares various existing human pose and shape estimation datasets.  The columns describe the number of human instances, the number of video sequences, whether the data is real or synthetic, whether multiple people are present in each scene, the availability of track IDs to follow individual people across the video, the presence of human-human interactions, and whether the camera was static or moving during capture.  It also indicates whether SMPL or SMPL-X human models are available for the data, and notes any specific characteristics of certain datasets such as the EgoSet dataset or datasets with very short video clips.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset Comparison. #Inst.: number of human instances (crops). #Seq.: number of video sequences. R/S: Real or Synthetic. Multi.: multiperson scenes. Track.: track ID labels. HHI: human-human interaction motions. ††\dagger†: EgoSet. ‡‡\ddagger‡: unknown as the data is not released when this paper is written. ⋄⋄\diamond⋄: typically short (<100 frames) clips.
> </details>





### In-depth insights


#### EHPS: Scaled VO
While "EHPS: Scaled VO" isn't explicitly in the paper, we can infer its meaning. EHPS (Expressive Human Pose and Shape estimation) combined with Scaled VO (Visual Odometry) suggests a system leveraging both human-centric understanding and scene geometry for enhanced 3D reconstruction. **The core idea is to resolve the scale ambiguity inherent in monocular VO by incorporating constraints from EHPS.** Traditional VO often struggles to determine the true scale of the environment. However, if we can accurately estimate the size and pose of humans within the scene (using EHPS), this information provides valuable metric scale cues. The system could work by first establishing camera motion with VO then refining this trajectory using EHPS outputs for the human in the scene to fix the scale. It should provide more accurate and robust 3D scene understanding, especially in dynamic environments where both the camera and humans are moving. **This synergy between human-centric understanding and scene geometry promises to overcome the limitations of each individual method**

#### WHAC Architecture
While the paper doesn't explicitly detail a 'WHAC Architecture' section, the core idea revolves around a synergistic framework. It leverages **camera-frame human pose estimation** (e.g., SMPL-X), **visual odometry (VO)** for camera motion, and a novel **MotionVelocimeter (MV)** module to estimate human motion velocities and recover absolute scale. The architecture likely involves a pipeline where initial camera-relative human poses are estimated, VO provides scaleless camera trajectory, MV infers human velocity, and a scale-alignment process refines both human and camera trajectories into a world-grounded coordinate system. This iterative refinement is central to the 'architecture', correcting scale and orientation ambiguities by blending visual and motion cues. The integration is not a mere concatenation of modules, but a carefully orchestrated feedback loop to improve estimation accuracy. The core is to refine the motion and trajectory using MV and VO.

#### WHAC-A-Mole Data
While the actual heading may vary, the 'WHAC-A-Mole' data likely refers to a **novel, synthetically generated dataset** introduced in the paper. Given the context, it would be designed to address limitations in existing datasets for world-grounded human and camera pose estimation. This suggests it contains accurately annotated 3D human poses (possibly SMPL-X parameters), camera trajectories, and scene information within a global coordinate system. The dataset likely features **diverse human motions**, including interactions, and **realistic camera movements**, perhaps mimicking cinematic techniques. The aim is to facilitate training and evaluation of models that can jointly estimate human and camera trajectories with accurate scale in real-world coordinates, overcoming the scaleless nature of monocular video. WHAC-A-Mole probably involves a comprehensive set of animated subjects and moving viewpoints for robust training. This synthetic nature allows for controlled variation and precise annotation, which is often lacking in real-world datasets. The dataset is probably split into training and testing sets for robust evaluation.

#### Accurate Recovery
Accurate recovery in the context of human pose estimation and camera trajectory estimation is a multifaceted challenge. **Achieving high accuracy requires addressing ambiguities inherent in monocular vision**, such as depth perception and scale determination. The synergy of combining camera-frame estimations, motion cues, and robust optimization techniques holds promise for recovering both human poses and camera trajectories with minimized error. **Precise camera calibration is vital for accurate recovery** for pose and camera parameters, and using external information can assist this process. Furthermore, developing novel metrics that adequately capture the nuanced aspects of accuracy becomes essential for evaluating improvements of the results. It needs to incorporate a balance of both human and camera recovery to ensure the estimation is good, and it is important to also take into account motion.

#### Societal Impact
This work, while advancing human pose and camera trajectory estimation, carries potential societal impacts that warrant careful consideration. On the positive side, the technology could revolutionize fields like **motion capture for film and gaming,** enabling more realistic and accessible character animation. It could also contribute to **advancements in healthcare**, allowing for remote monitoring of patients' movements and rehabilitation progress. Furthermore, its potential applications in **human-robot interaction** could lead to more intuitive and seamless collaborations. However, there is a **risk of misuse for surveillance purposes**. The ability to accurately track human movements in the world, even from monocular video, could be exploited for unwarranted monitoring and tracking of individuals, raising serious privacy concerns. It will also be used for unwanted surveillance as it recovers human trajectories in the world frame. To mitigate these risks, responsible development practices, including **robust privacy safeguards, ethical guidelines, and transparent communication** about the technology's capabilities and limitations, are crucial. Open discussions involving researchers, policymakers, and the public are necessary to ensure that this technology is used in a way that benefits society while respecting individual rights and freedoms.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2403.12959/x2.png)

> 🔼 The figure illustrates the WHAC framework's workflow.  It starts with an SMPL-X estimator that outputs camera-frame SMPL-X data with initially unknown depth.  The depth is then recovered (Section 3.2). Simultaneously, visual odometry (VO) provides a scaleless camera trajectory. This trajectory is used to canonicalize (standardize) the human motion data, allowing for the estimation of human velocity and subsequently, scale (Section 3.3). A more refined camera trajectory is then derived, incorporating the scale information (Section 3.4). This refined camera trajectory is then used to further improve the accuracy of the human trajectory.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of WHAC. SMPL-X estimator extracts camera-frame SMPL-X with dummy depth, which is recovered in Sec. 3.2. The scaleless camera trajectory estimated by VO is then used to canonicalize the human trajectory to estimate its velocity and thus scale in Sec. 3.3. A camera trajectory is then derived for alignment and scale recovery, which subsequently updates the human trajectory in Sec. 3.4.
> </details>



![](https://arxiv.org/html/2403.12959/x3.png)

> 🔼 Figure 3 demonstrates the ambiguity in estimating 3D human trajectories from monocular video.  Panel (a) shows that different camera trajectories (at different scales) will produce vastly different human trajectories, even if the camera-frame human root depth and translation are kept consistent. This highlights the challenge of scale estimation. Panel (b) illustrates that the same image could result from different combinations of focal length and human root depth, further emphasizing the ill-posed nature of the problem.
> <details>
> <summary>read the caption</summary>
> Figure 3: a) Human trajectories H𝐻Hitalic_H derived from camera trajectories C𝐶Citalic_C of different scales can be vastly different in both shape and direction, despite that the same camera-frame human root depth dtsubscript𝑑𝑡d_{t}italic_d start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT and translations thcsubscriptsuperscript𝑡𝑐ℎt^{c}_{h}italic_t start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_h end_POSTSUBSCRIPT are used. b) Different pairs of focal length f𝑓fitalic_f and tzsubscript𝑡𝑧t_{z}italic_t start_POSTSUBSCRIPT italic_z end_POSTSUBSCRIPT can correspond to the same image.
> </details>



![](https://arxiv.org/html/2403.12959/x4.png)

> 🔼 Figure 4 visualizes examples from the WHAC-A-Mole dataset.  Each example shows three rows: the top row displays an overview of the scene with the camera trajectory highlighted, the second row shows a camera view from that trajectory, and the bottom row presents the same camera view with SMPL-X body annotations overlaid. The dataset's motion sequences are from three sources: AMASS (a), DLP-MoCap (b-c), and DD100 (d-e).
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of WHAC-A-Mole sample sequences, animated with a) AMASS, b-c) DLP-MoCap, and d-e) DD100. In each sample, the first row depicts the overview (note the camera trajectory shown in bright rays), and the second and the third rows show the camera view and overlaid SMPL-X annotations.
> </details>



![](https://arxiv.org/html/2403.12959/x5.png)

> 🔼 Figure 5 presents challenging scenarios where motion estimation alone might fail.  It showcases WHAC's ability to leverage information from human motion, camera movement, and scene context for improved accuracy.  Specifically: (a) shows a skateboarding example, where the human may appear stationary in the camera frame, but is actually moving in the world; (b) shows a treadmill example where the human is moving, but the root translation in the world frame is minimal; and (c) demonstrates WHAC handling a fast-moving scene from a real-world video, again highlighting its ability to combine multiple sources of information.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization on in-the-wild hard cases. WHAC leverages human-camera-scene collaboration to resolve cases where motion prior alone would fail: a) Skateboarding and b) Treadmill. c) WHAC can also handle fast cases.
> </details>



![](https://arxiv.org/html/2403.12959/x6.png)

> 🔼 This figure visualizes the results of the proposed WHAC method on the EMDB dataset, focusing on world-space trajectory estimation.  The top row (a1 and b1) shows camera trajectories, while the bottom row (a2 and b2) shows corresponding human trajectories.  The plots clearly demonstrate WHAC's ability to accurately recover both camera and human movements, including scale, in the 3D world coordinate system. The example in sequence 'b' highlights this capability, accurately capturing the downward motion of a human descending stairs.  The grid lines in the plots represent a 2-meter spacing.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of world space results on the EMDB dataset. a1) and b1) depict camera trajectories, while a2) and b2) illustrate human trajectories. Notably, in sequence b, the human is descending stairs, and WHAC effectively captures the global trajectory, indicating a downward direction besides recovering the absolute trajectory scale in the world space. The grid size in the plots is 2m.
> </details>



![](https://arxiv.org/html/2403.12959/x7.png)

> 🔼 Figure 7 visualizes the results of WHAC (World-grounded Humans and Cameras) on the WHAC-A-Mole dataset, demonstrating its ability to estimate human poses and shapes accurately in challenging scenarios. Each sample in the figure shows two rows: the top row displays the original video frames, while the bottom row overlays the estimated SMPL-X model on top of the video frames. The figure showcases several challenging cases: scenes with severe occlusions, intricate human interactions, and dynamic poses such as dancing, illustrating the robustness and accuracy of the WHAC method.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of camera space results on WHAC-A-Mole dataset. Each sample comprises two rows: the first row displays the original input frames from the sequence, while the second row overlays the SMPL-X results. This visualization showcases WHAC’s performance on challenging scenes, including sequences with severe occlusions, intricate human interactions, and dynamic dancing poses.
> </details>



![](https://arxiv.org/html/2403.12959/x8.png)

> 🔼 The MotionVelocimeter module takes as input 3D joints from SMPL-X meshes that have been canonicalized (aligned to a standard pose).  It processes these joints to output root velocities, also in the canonical space. This means the module focuses on the speed and direction of the human's root movement, relative to the starting point of the sequence.  The use of canonicalized data simplifies the task and makes the velocity estimation more robust.
> <details>
> <summary>read the caption</summary>
> Figure 8: Illustration of MotionVelocimeter module. The inputs are canonicalized 3D joints regressed from SMPL-X meshes, and the outputs are root velocities in the canonical space.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.5.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T2.5.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">W-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">WA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">H-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">H-AS</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">C-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">C-AS</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.5.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSX* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib24" title="">24</a>]</cite> + DPVO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib39" title="">39</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">90.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">1036.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">390.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">180.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T2.5.5.6.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">7.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.5.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">SMPLer-X-B* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib6" title="">6</a>]</cite> + DPVO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib39" title="">39</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.7</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">842.3</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">335.4</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">138.3</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.5</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.5</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.7.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">7.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.5.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC (GT Gyro)</th>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">343.8</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">182.0</td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.8.3.5.1">103.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.8.3.6.1">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.8.3.7.1">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S5.T2.5.5.8.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.8.3.8.1">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.5.5.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.2.1">76.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.3.1">343.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.4.1">182.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.5.1">103.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.6.1">0.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.7.1">0.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T2.5.5.9.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.9.4.8.1">1.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of different methods' performance on the WHAC-A-Mole dataset, focusing on world-frame evaluation metrics.  The asterisk (*) indicates methods adapted for world-grounded evaluation. The metrics include PA-MPJPE (Procrustes-aligned mean per joint position error), W-MPJPE (world-frame MPJPE using the first two frames for alignment), WA-MPJPE (world-frame MPJPE using the entire sequence for alignment), H-ATE (human average trajectory error), H-AS (human alignment scale), C-ATE (camera average trajectory error), and C-AS (camera alignment scale).  H-AS and C-AS values close to 1.0 represent better scale estimation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: World-frame evaluation on WHAC-A-Mole. *: adapted to world-grounded evaluation. H-AS and C-AS: the closer to 1.0, the better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.5.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">W-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">WA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">H-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.5.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">H-AS</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">C-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mo id="S5.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><ci id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.5.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">C-AS</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.5.5.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">GLAMR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib45" title="">45</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">56.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">756.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">286.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.6.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">SLAHMR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib43" title="">43</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">61.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">807.4</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">336.9</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">207.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">1.9</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.7.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib35" title="">35</a>]</cite> (GT Gyro)</th>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">41.9</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">436.4</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">165.9</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">83.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">1.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.8.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.5.5.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSX-L* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib24" title="">24</a>]</cite> + DPVO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib39" title="">39</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">99.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">1186.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">458.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">235.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.9.4.7.1">14.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.5.5.9.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">5.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.10.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">SMPLer-X-B* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib6" title="">6</a>]</cite> + DPVO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib39" title="">39</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">42.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">930.1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">375.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">200.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.7.1">14.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.10.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">5.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.11.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC (GT Gyro)</th>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.11.6.2.1">39.4</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">392.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">143.1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.11.6.5.1">75.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.11.6.6.1">1.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.11.6.7.1">14.8</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.11.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">1.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.5.5.12.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.2.1">39.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.3.1">389.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.4.1">142.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.6.1">1.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.7.1">14.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.5.5.12.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.12.7.8.1">1.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of different methods for estimating human and camera trajectories in a world coordinate system, specifically using the EMDB2 dataset.  The metrics used are PA-MPJPE (Procrustes-aligned Mean Per Joint Position Error), W-MPJPE (world-frame MPJPE), WA-MPJPE (world-aligned MPJPE), H-ATE (Human Average Trajectory Error), H-AS (Human Alignment Scale), C-ATE (Camera Average Trajectory Error), and C-AS (Camera Alignment Scale).  The lower the values for MPJPE and ATE, the better the accuracy of the trajectory estimation. The closer H-AS and C-AS are to 1.0, the better the scale estimation. The asterisk (*) indicates that methods were adapted for world-grounded evaluation. This adaptation is crucial because these methods were originally designed for camera-centric estimations; adapting them ensures fair comparison with world-grounded methods.
> <details>
> <summary>read the caption</summary>
> Table 3: World-frame evaluation on EMDB2. *: adapted to world-grounded evaluation. H-AS and C-AS: the closer to 1.0, the better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.6.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T4.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PA-PVE-all<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-all<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-hand<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-face<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.m1.1a"><mo id="S5.T4.5.5.5.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.m1.1b"><ci id="S5.T4.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T4.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">Accl.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.m1.1a"><mo id="S5.T4.6.6.6.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.m1.1b"><ci id="S5.T4.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.6.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">GLAMR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib45" title="">45</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">114.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.7.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">173.5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.8.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">SLAHMR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib43" title="">43</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">79.1</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">25.8</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.6.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Hand4Whole <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib28" title="">28</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">71.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">127.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">48.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">41.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.6.9.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">27.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.10.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSX-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib24" title="">24</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.5</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">54.6</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">115.7</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">50.5</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">41.0</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.10.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">24.7</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.11.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">SMPLer-X-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib6" title="">6</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">47.1</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">40.7</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">72.7</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">43.7</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">32.4</td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.11.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">18.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.6.12.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.2.1">46.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.3.1">39.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.4.1">64.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.5.1">41.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.6.1">26.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.6.12.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.12.6.7.1">11.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various camera-frame methods for expressive human pose and shape estimation using the EgoBody (EgoSet) dataset.  The evaluation metrics include PA-MPJPE, PA-PVE-all, PVE-all, PVE-hand, PVE-face, and Accl.  PA-MPJPE measures the error in pose estimation after aligning the root joint, while PVE measures per-vertex error across different parts of the body (whole body, hands, and face).  Accl. represents the acceleration error, reflecting the smoothness of the estimated motion. Only whole-body methods (those using SMPL-X models) are included in the PVE variants.
> <details>
> <summary>read the caption</summary>
> Table 4: Results of camera-frame methods on EgoBody (EgoSet) with SMPL-X ground truths. PVE variants are measured for whole-body (SMPL-X) methods only.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.8.9.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.8.9.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T5.8.9.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">EMDB1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib19" title="">19</a>]</cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T5.8.9.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">3DPW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib41" title="">41</a>]</cite></th>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PA-PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">T-PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">Accl.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">PA-PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.m1.1"><semantics id="S5.T5.5.5.5.m1.1a"><mo id="S5.T5.5.5.5.m1.1.1" stretchy="false" xref="S5.T5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.m1.1b"><ci id="S5.T5.5.5.5.m1.1.1.cmml" xref="S5.T5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.m1.1"><semantics id="S5.T5.6.6.6.m1.1a"><mo id="S5.T5.6.6.6.m1.1.1" stretchy="false" xref="S5.T5.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.m1.1b"><ci id="S5.T5.6.6.6.m1.1.1.cmml" xref="S5.T5.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">T-PVE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.7.7.7.m1.1"><semantics id="S5.T5.7.7.7.m1.1a"><mo id="S5.T5.7.7.7.m1.1.1" stretchy="false" xref="S5.T5.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.m1.1b"><ci id="S5.T5.7.7.7.m1.1.1.cmml" xref="S5.T5.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S5.T5.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">Accl.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.8.8.8.m1.1"><semantics id="S5.T5.8.8.8.m1.1a"><mo id="S5.T5.8.8.8.m1.1.1" stretchy="false" xref="S5.T5.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.m1.1b"><ci id="S5.T5.8.8.8.m1.1.1.cmml" xref="S5.T5.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.8.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.8.10.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Hand4Whole <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib28" title="">28</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">99.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">143.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">36851.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">34.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">81.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">124.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">30279.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.8.10.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">31.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.8.11.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSX-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib24" title="">24</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">93.3</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">134.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">45526.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">30.3</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">117.8</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">38472.2</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.11.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">24.9</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.8.12.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">SMPLer-X-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib6" title="">6</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">68.2</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">99.3</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">41298.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">24.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.12.3.6.1">62.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">95.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">32532.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.12.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">24.8</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.8.13.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.2.1">61.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.3.1">91.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.4.1">140.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.5.1">18.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">62.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.7.1">91.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.8.1">260.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.8.13.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.8.13.4.9.1">20.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of camera-frame evaluation metrics for different expressive human pose and shape estimation (EHPS) methods on the EMDB1 and 3DPW datasets.  The metrics evaluated include Procrustes-aligned Per Vertex Error (PA-PVE), Per Vertex Error (PVE), Translation-aware PVE (T-PVE), and Acceleration Error (Accl.). The results show that WHAC outperforms existing mainstream EHPS methods in terms of recovering meaningful human depth (indicated by T-PVE) and achieving lower acceleration errors (Accl).
> <details>
> <summary>read the caption</summary>
> Table 5: More camera-frame evaluations on EMDB1 and 3DPW. Compared to existing mainstream EHPS methods, WHAC recovers meaningful human depths (T-PVE) and achieves lower acceleration errors (Accl.).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.6.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T6.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">PA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.m1.1a"><mo id="S5.T6.1.1.1.m1.1.1" stretchy="false" xref="S5.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.m1.1b"><ci id="S5.T6.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PA-PVE-all<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.m1.1a"><mo id="S5.T6.2.2.2.m1.1.1" stretchy="false" xref="S5.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.m1.1b"><ci id="S5.T6.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-all<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.3.3.3.m1.1"><semantics id="S5.T6.3.3.3.m1.1a"><mo id="S5.T6.3.3.3.m1.1.1" stretchy="false" xref="S5.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.m1.1b"><ci id="S5.T6.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-hand<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.4.4.4.m1.1"><semantics id="S5.T6.4.4.4.m1.1a"><mo id="S5.T6.4.4.4.m1.1.1" stretchy="false" xref="S5.T6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.m1.1b"><ci id="S5.T6.4.4.4.m1.1.1.cmml" xref="S5.T6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">PVE-face<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.5.5.5.m1.1"><semantics id="S5.T6.5.5.5.m1.1a"><mo id="S5.T6.5.5.5.m1.1.1" stretchy="false" xref="S5.T6.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.5.m1.1b"><ci id="S5.T6.5.5.5.m1.1.1.cmml" xref="S5.T6.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">Accl.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.6.6.6.m1.1"><semantics id="S5.T6.6.6.6.m1.1a"><mo id="S5.T6.6.6.6.m1.1.1" stretchy="false" xref="S5.T6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.6.6.6.m1.1b"><ci id="S5.T6.6.6.6.m1.1.1.cmml" xref="S5.T6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.6.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSX-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib24" title="">24</a>]</cite>
</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">90.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">88.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">155.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">83.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">85.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.6.7.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">38.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.6.8.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">SMPLer-X-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib6" title="">6</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.7</td>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">74.8</td>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.8.2.4.1">116.2</span></td>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.8.2.5.1">70.6</span></td>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.8.2.6.1">63.1</span></td>
<td class="ltx_td ltx_align_right" id="S5.T6.6.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">44.0</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T6.6.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.9.3.2.1">76.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.9.3.3.1">74.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">117.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">77.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">63.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.6.9.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.6.9.3.7.1">31.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of the performance of several camera-frame methods, including WHAC and SMPLer-X, on the WHAC-A-Mole dataset.  The evaluation metrics used are PA-MPJPE, PA-PVE-all, PVE-all, PVE-hand, PVE-face, and Accl.  The results show that WHAC achieves comparable performance to SMPLer-X across all metrics, but demonstrates a notably lower acceleration error, indicating better accuracy in capturing the smoothness and realism of human motion.
> <details>
> <summary>read the caption</summary>
> Table 6: Results of camera-frame methods on WHAC-A-Mole. WHAC is on par with SMPLer-X but produces a lower acceleration error.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T8.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T8.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">WA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.1.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.1.m1.1a"><mo id="S5.T8.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T8.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.1.m1.1b"><ci id="S5.T8.1.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">H-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.2.2.2.2.m1.1"><semantics id="S5.T8.2.2.2.2.m1.1a"><mo id="S5.T8.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T8.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.2.m1.1b"><ci id="S5.T8.2.2.2.2.m1.1.1.cmml" xref="S5.T8.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">C-ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.3.3.3.3.m1.1"><semantics id="S5.T8.3.3.3.3.m1.1a"><mo id="S5.T8.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T8.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.3.m1.1b"><ci id="S5.T8.3.3.3.3.m1.1.1.cmml" xref="S5.T8.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">C-AS</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T8.3.3.4.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">DPVO</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.3.3.4.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">376.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.3.3.4.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">177.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.3.3.4.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.3.3.4.1.4.1">14.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.3.3.4.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">5.10</td>
</tr>
<tr class="ltx_tr" id="S5.T8.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T8.3.3.5.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">MV</th>
<td class="ltx_td ltx_align_right" id="S5.T8.3.3.5.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">233.2</td>
<td class="ltx_td ltx_align_right" id="S5.T8.3.3.5.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">129.9</td>
<td class="ltx_td ltx_align_right" id="S5.T8.3.3.5.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">134.1</td>
<td class="ltx_td ltx_align_right" id="S5.T8.3.3.5.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.3.3.5.2.5.1">1.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T8.3.3.6.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">MV + DPVO</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.3.3.6.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.3.3.6.3.2.1">142.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.3.3.6.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.3.3.6.3.3.1">76.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.3.3.6.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.3.3.6.3.4.1">14.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.3.3.6.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">1.40</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of key components (visual odometry and MotionVelocimeter) on the overall performance of the WHAC model. It assesses the effect of using visual odometry alone (DPVO), MotionVelocimeter alone (MV), and both components combined (MV + DPVO) on metrics such as weighted mean per joint position error (WA-MPJPE), human trajectory error (H-ATE), camera trajectory error (C-ATE), and camera scale accuracy (C-AS). The results demonstrate how the integration of both components enhances model performance, achieving improved accuracy in both human and camera trajectory estimation.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation on key components. DPVO represents visual odometry, MV represents MotionVelocimeter.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T8.6.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.6.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T8.6.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">T-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.4.1.1.1.m1.1"><semantics id="S5.T8.4.1.1.1.m1.1a"><mo id="S5.T8.4.1.1.1.m1.1.1" stretchy="false" xref="S5.T8.4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.4.1.1.1.m1.1b"><ci id="S5.T8.4.1.1.1.m1.1.1.cmml" xref="S5.T8.4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.5.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">W-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.5.2.2.2.m1.1"><semantics id="S5.T8.5.2.2.2.m1.1a"><mo id="S5.T8.5.2.2.2.m1.1.1" stretchy="false" xref="S5.T8.5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.5.2.2.2.m1.1b"><ci id="S5.T8.5.2.2.2.m1.1.1.cmml" xref="S5.T8.5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T8.6.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">WA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T8.6.3.3.3.m1.1"><semantics id="S5.T8.6.3.3.3.m1.1a"><mo id="S5.T8.6.3.3.3.m1.1.1" stretchy="false" xref="S5.T8.6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T8.6.3.3.3.m1.1b"><ci id="S5.T8.6.3.3.3.m1.1.1.cmml" xref="S5.T8.6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T8.6.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.6.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T8.6.3.4.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dummy(5,000)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.6.3.4.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">36020.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.6.3.4.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">6239.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T8.6.3.4.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">604.6</td>
</tr>
<tr class="ltx_tr" id="S5.T8.6.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T8.6.3.5.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Assumed <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib20" title="">20</a>]</cite>
</th>
<td class="ltx_td ltx_align_right" id="S5.T8.6.3.5.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">179.7</td>
<td class="ltx_td ltx_align_right" id="S5.T8.6.3.5.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">391.2</td>
<td class="ltx_td ltx_align_right" id="S5.T8.6.3.5.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">144.0</td>
</tr>
<tr class="ltx_tr" id="S5.T8.6.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T8.6.3.6.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GT</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.6.3.6.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.6.3.6.3.2.1">100.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.6.3.6.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.6.3.6.3.3.1">389.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T8.6.3.6.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T8.6.3.6.3.4.1">142.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of using different focal length values on the accuracy of human root translation estimation.  The table compares results using a dummy focal length (5000), a focal length estimated from image resolution, and ground truth focal length. The results demonstrate that using a reasonable estimate for the intrinsic parameter (focal length) significantly improves the accuracy of human root translation estimation.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation on intrinsic sources. A reasonable intrinsic drastically improve human root translation estiamtion.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">GLAMR<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib45" title="">45</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">SLAHMR<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib43" title="">43</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">PACE<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib21" title="">21</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">WHAM<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2403.12959v1#bib.bib35" title="">35</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">WHAC*</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">FPS</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">2.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">200</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">165</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">2500</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different intrinsic parameters (focal length) on the accuracy of human root translation estimation.  The study compares the performance using a dummy focal length (5000), a focal length estimated from the image diagonal, and ground truth focal length.  The results demonstrate that using a reasonable estimate of the focal length significantly improves the accuracy of the model.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation on intrinsic sources. A reasonable intrinsic drastically improve human root translation estiamtion.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2403.12959/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2403.12959/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}