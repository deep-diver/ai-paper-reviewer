---
title: "TAPIP3D: Tracking Any Point in Persistent 3D Geometry"
summary: "TAPIP3D: Robust 3D point tracking via camera-stabilized feature clouds and local pair attention, outperforming existing methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-04-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.14717 {{< /keyword >}}
{{< keyword icon="writer" >}} Bowei Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.14717" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.14717" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.14717/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Estimating pixel motion in the 2D image space can be difficult due to complex deformations and significant camera movements**. Previous solutions still struggle to address challenges that include accurately tracking motion, which is difficult due to spatial distances between objects and complex scene changes. To address this problem, **TAPIP3D represents videos as camera-stabilized spatio-temporal feature clouds**. It leverages depth and camera motion information to lift 2D video features into a 3D world space where camera motion is effectively canceled, enabling robust tracking over extended periods. 



**TAPIP3D iteratively refines multi-frame 3D motion estimates** within this stabilized representation, enabling robust tracking over extended periods. To manage the inherent irregularities of 3D point distributions, the **Local Pair Attention mechanism** is introduced to exploits spatial relationships in 3D, forming informative feature neighborhoods for precise 3D trajectory estimation. The 3D-centric approach significantly outperforms existing 3D point tracking methods and even enhances 2D tracking accuracy compared to conventional 2D pixel trackers when accurate depth is available.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TAPIP3D introduces a novel 3D point tracking approach using camera-stabilized spatio-temporal feature clouds. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Local Pair Attention mechanism effectively manages irregularities in 3D point distributions, enhancing tracking precision. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} TAPIP3D outperforms existing methods, even enhancing 2D tracking accuracy when depth is available. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**TAPIP3D offers superior 3D point tracking** by leveraging camera-stabilized spatio-temporal feature clouds, improving accuracy and robustness, with potential for advancements in AR and robotics research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.14717/x1.png)

> 🔼 Figure 1 illustrates TAPIP3D's core functionality: tracking 3D points over time in a consistent 3D world space.  Unlike previous methods that track points in camera-centric 2D image coordinates plus depth (UVD space), which are affected by camera movement, TAPIP3D leverages depth and camera pose estimations (from MegaSaM [23]) to transform the data into a 3D world space. This removes camera motion artifacts, resulting in smoother and more linear 3D trajectories.  The figure showcases how TAPIP3D uses Local Pair Attention to extract features and iteratively refine motion estimates for precise 3D point tracking.
> <details>
> <summary>read the caption</summary>
> Figure 1: TAPIP3D performs long-term 3D point tracking in a persistent 3D world space of 3D feature clouds, which exceeds prior 3D point tracking methods [44, 28] operating in camera-dependent UV pixels + Depth (UVD) spaces. We leverage the given / estimated depth map and camera pose from MegaSaM [23] to compute a 3D space where camera motion is cancelled. TAPIP3D designs a Local Pair Attention for featurization and iterative motion estimation. The 3D motion trajectories for the sampled dynamic points in 3D XYZ world space are significantly smoother and more linear then UVD space.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.12.12.13.1.1" rowspan="2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.1.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.12.12.13.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.2.1">ADT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.12.12.13.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.3.1">DriveTrack</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.12.12.13.1.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.4.1">PStudio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.12.12.13.1.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.5.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.1" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mmultiscripts id="S4.T1.1.1.1.1.m1.1.1"><mo id="S4.T1.1.1.1.1.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.1.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T1.1.1.1.1.m1.1.1.3">3D</mtext><mrow id="S4.T1.1.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mmultiscripts id="S4.T1.2.2.2.2.m1.1.1"><mo id="S4.T1.2.2.2.2.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.2.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T1.2.2.2.2.m1.1.1.3">3D</mtext><mrow id="S4.T1.2.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3.3" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mmultiscripts id="S4.T1.4.4.4.4.m1.1.1"><mo id="S4.T1.4.4.4.4.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.4.4.4.4.m1.1.1a"></mprescripts><mtext id="S4.T1.4.4.4.4.m1.1.1.3">3D</mtext><mrow id="S4.T1.4.4.4.4.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.5" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mmultiscripts id="S4.T1.5.5.5.5.m1.1.1"><mo id="S4.T1.5.5.5.5.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.5.5.5.5.m1.1.1a"></mprescripts><mtext id="S4.T1.5.5.5.5.m1.1.1.3">3D</mtext><mrow id="S4.T1.5.5.5.5.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.6.6" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.7" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mmultiscripts id="S4.T1.7.7.7.7.m1.1.1"><mo id="S4.T1.7.7.7.7.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.7.7.7.7.m1.1.1a"></mprescripts><mtext id="S4.T1.7.7.7.7.m1.1.1.3">3D</mtext><mrow id="S4.T1.7.7.7.7.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.8" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mmultiscripts id="S4.T1.8.8.8.8.m1.1.1"><mo id="S4.T1.8.8.8.8.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.8.8.8.8.m1.1.1a"></mprescripts><mtext id="S4.T1.8.8.8.8.m1.1.1.3">3D</mtext><mrow id="S4.T1.8.8.8.8.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.9.9" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.10" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.m1.1a"><mmultiscripts id="S4.T1.10.10.10.10.m1.1.1"><mo id="S4.T1.10.10.10.10.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.10.10.10.10.m1.1.1a"></mprescripts><mtext id="S4.T1.10.10.10.10.m1.1.1.3">3D</mtext><mrow id="S4.T1.10.10.10.10.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.11.11" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.11.11.11.11.m1.1"><semantics id="S4.T1.11.11.11.11.m1.1a"><mmultiscripts id="S4.T1.11.11.11.11.m1.1.1"><mo id="S4.T1.11.11.11.11.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.11.11.11.11.m1.1.1a"></mprescripts><mtext id="S4.T1.11.11.11.11.m1.1.1.3">3D</mtext><mrow id="S4.T1.11.11.11.11.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.12" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.m1.1"><semantics id="S4.T1.12.12.12.12.m1.1a"><mo id="S4.T1.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.m1.1b"><ci id="S4.T1.12.12.12.12.m1.1.1.cmml" xref="S4.T1.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.12.12.14.2.1" style="padding:1pt 3.0pt;">CoTracker3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.2" style="padding:1pt 3.0pt;">20.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.3" style="padding:1pt 3.0pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.2.4" style="padding:1pt 3.0pt;">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.5" style="padding:1pt 3.0pt;">14.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.6" style="padding:1pt 3.0pt;">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.2.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.14.2.7.1">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.8" style="padding:1pt 3.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.9" style="padding:1pt 3.0pt;">27.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.14.2.10" style="padding:1pt 3.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.11" style="padding:1pt 3.0pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.12" style="padding:1pt 3.0pt;">25.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.14.2.13" style="padding:1pt 3.0pt;">87.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.15.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.12.12.15.3.1" style="padding:1pt 3.0pt;">SpatialTracker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.2" style="padding:1pt 3.0pt;">15.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.3" style="padding:1pt 3.0pt;">23.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.3.4" style="padding:1pt 3.0pt;">90.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.5" style="padding:1pt 3.0pt;">7.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.6" style="padding:1pt 3.0pt;">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.3.7" style="padding:1pt 3.0pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.8" style="padding:1pt 3.0pt;">15.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.9" style="padding:1pt 3.0pt;">25.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.15.3.10" style="padding:1pt 3.0pt;">78.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.11" style="padding:1pt 3.0pt;">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.12" style="padding:1pt 3.0pt;">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.15.3.13" style="padding:1pt 3.0pt;">84.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.16.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.12.12.16.4.1" style="padding:1pt 3.0pt;">DELTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.2" style="padding:1pt 3.0pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.3" style="padding:1pt 3.0pt;">29.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.4.4" style="padding:1pt 3.0pt;">89.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.5" style="padding:1pt 3.0pt;">14.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.16.4.6.1">22.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.4.7" style="padding:1pt 3.0pt;">88.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.8" style="padding:1pt 3.0pt;">17.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.9" style="padding:1pt 3.0pt;">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.4.10" style="padding:1pt 3.0pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.11" style="padding:1pt 3.0pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.12" style="padding:1pt 3.0pt;">22.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.4.13" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.16.4.13.1">86.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.17.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.12.12.17.5.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.12.12.17.5.1.1">TAPIP3D-camera</span> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.2" style="padding:1pt 3.0pt;">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.3" style="padding:1pt 3.0pt;">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.17.5.4" style="padding:1pt 3.0pt;">90.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.5" style="padding:1pt 3.0pt;">14.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.6" style="padding:1pt 3.0pt;">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.17.5.7" style="padding:1pt 3.0pt;">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.8" style="padding:1pt 3.0pt;">18.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.9" style="padding:1pt 3.0pt;">27.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.17.5.10" style="padding:1pt 3.0pt;">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.11" style="padding:1pt 3.0pt;">18.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.12" style="padding:1pt 3.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.17.5.13" style="padding:1pt 3.0pt;">86.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.18.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.12.12.18.6.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.1.1">TAPIP3D-world</span> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.2.1">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.3.1">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.18.6.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.4.1">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.5.1">14.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.6" style="padding:1pt 3.0pt;">21.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.18.6.7" style="padding:1pt 3.0pt;">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.8.1">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.9.1">27.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.18.6.10" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.10.1">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.11" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.11.1">18.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.12" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.12.1">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.18.6.13" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.18.6.13.1">86.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of several long-term 3D point tracking methods on the TAPVid-3D benchmark [19], a large-scale real-world dataset.  The estimated depth values were obtained using MegaSaM [23].  For the TAPIP3D-world method, camera pose estimation from MegaSaM [23] was also utilized.  The table highlights that the ADT [30] dataset involves significant camera motion, unlike the static camera setting in PStudio [15]. The results presented cover the complete TAPVid-3D dataset split, allowing for a comprehensive evaluation of each method's accuracy in various scenarios.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of long-term 3D point tracking methods on the large-scale real-world TAPVid-3D [19] benchmark. We take the estimated depth from MegaSaM [23]. For our TAPIP3D-world, we also leverage the camera pose estimation from MegaSaM [23]. Note that ADT [30] has significant camera motions while PStudio [15] is with the static camera. We evaluate on the full split of TAPVid-3D.
> </details>





### In-depth insights


#### 3D World Tracking
3D world tracking represents a significant advancement, shifting from traditional 2D pixel motion estimation to leveraging depth and camera pose information. **By stabilizing videos in a world-centric coordinate system, camera motion is effectively canceled**, leading to more robust and accurate tracking. This approach addresses limitations of 2D methods, where camera projection can distort spatial relationships and introduce ambiguity. **TAPIP3D exploits spatial relationships in 3D**, forming informative feature neighborhoods using a Local Pair Attention mechanism for precise trajectory estimation. Experiments show that tracking in a 3D world coordinate frame outperforms camera-centric methods, demonstrating improved performance on various 3D point tracking benchmarks. Additionally, this 3D-centric approach can enhance 2D tracking accuracy compared to conventional pixel trackers when accurate depth is available, suggesting a synergistic benefit between 2D and 3D information.

#### Local Pair Attention
The concept of 'Local Pair Attention' appears to be a novel approach to address the limitations of traditional methods in feature extraction, especially in the context of 3D point cloud processing. **Instead of relying on fixed grid structures or solely focusing on individual points, this mechanism establishes relationships between pairs of points within a local neighborhood.** The attention mechanism likely assigns weights to these relationships based on spatial proximity, feature similarity, or other relevant factors. This approach enables the model to capture contextual information more effectively, as it considers the interactions between neighboring points rather than treating each point in isolation. **By focusing on local pairs, the computation can be more efficient** compared to global attention mechanisms, which consider all possible point combinations. Furthermore, the ability to adjust the size and shape of the local neighborhood provides flexibility in adapting to different data densities and geometric structures.

#### Camera Motion Fix
The essence of addressing camera motion lies in establishing a stable reference frame for tracking. Traditional methods often struggle because they operate in the 2D image space, where camera movement introduces complex apparent motion of scene points. A **camera motion fix** involves transforming the tracking problem into a 3D world space, where the true positions of points are maintained regardless of camera movement. This can be achieved through camera pose estimation, which allows for a transformation of image features into a global coordinate system. By **effectively canceling out camera motion**, the tracking becomes more robust and reliable, particularly over extended periods. This approach mitigates issues like points exiting the field of view due to camera movement, which would otherwise complicate tracking in image space. The key is to operate in a **stabilized world-space representation**, where a static point remains fixed, simplifying motion estimation and tracking. This transformation can leverage different coordinate systems, like camera-centric for scenarios lacking pose information, or a global world-centric system when camera poses are available, providing flexibility and enhancing the accuracy of point trajectory estimation. By operating in world coordinates, it simplifies the tracking problem.

#### Accurate 3D Points
**Accurate 3D points** are pivotal for numerous computer vision tasks, providing a robust geometric foundation for understanding scenes. The accuracy of these points directly impacts the reliability of downstream applications like **3D reconstruction**, **scene understanding**, and **motion estimation**. High-quality 3D point data reduces ambiguities and enhances the robustness of algorithms. Factors such as sensor noise, calibration errors, and environmental conditions can significantly degrade the accuracy of 3D points. Achieving high accuracy often involves sophisticated sensor fusion techniques, advanced calibration procedures, and robust outlier removal methods. Techniques like **bundle adjustment** are crucial for refining 3D point estimates by jointly optimizing camera parameters and point positions. In applications like autonomous navigation, **accurate 3D points** are essential for reliable mapping and obstacle avoidance. Furthermore, the representation of 3D points, whether as point clouds or within a mesh structure, affects the efficiency and accuracy of processing. Thus, achieving and maintaining **accurate 3D points** is a continuous focus in computer vision research.

#### Real-World Dataset
Analyzing real-world datasets within the context of 3D point tracking, several key aspects come to light. The transition from synthetic datasets to real-world scenarios introduces significant challenges due to factors like sensor noise, varying lighting conditions, and complex object motion. The paper uses datasets like TAPVid3D, DexYCB-Pt and potentially others, each offering unique attributes. **TAPVid3D** provides diverse real-world videos, while **DexYCB-Pt** focuses on manipulation tasks, providing detailed object and hand poses. A crucial consideration is the method of obtaining depth information: sensor depth versus estimated depth. Results often reveal a performance gap between these two, emphasizing the importance of accurate depth estimation. Furthermore, the paper likely addresses how the chosen datasets reflect real-world complexities, assessing the robustness of the proposed method in handling occlusions, dynamic scenes, and varying camera movements. The choice of datasets directly impacts the generalizability of the research, showcasing its applicability beyond controlled environments and towards practical real-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.14717/x2.png)

> 🔼 Figure 2 illustrates the TAPIP3D architecture.  It begins by taking RGB video frames and their corresponding 3D point maps as input.  Features are extracted from the RGB frames and transferred to the 3D points, creating a feature cloud for each time step.  These feature clouds can be represented in either world space or camera space, depending on whether camera pose information is available.  The core of the method is the Local Pair Attention module (detailed in Figure 3), which extracts correlation features that capture the spatiotemporal relationships among 3D points. These features are then processed by a 3D Trajectory Transformer to iteratively refine the estimated 3D point trajectories over time. The top-right inset highlights the key difference between TAPIP3D's 3D k-NN approach for finding neighboring points and the traditional fixed 2D neighborhood approach used in previous methods.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture of our TAPIP3D. The model takes RGB frames and corresponding 3D point maps as input, computes features from the RGB frames, and transfers them to the 3D points, forming a feature cloud for each timestep. Using either provided or estimated camera poses, these feature clouds can be arranged in either world space or camera space. We then apply our Local Pair Attention module (Figure 3) to extract correlation features, followed by our 3D Trajectory Transformer, which iteratively updates the estimated trajectories. Top right: Illustration of the difference between 3D k𝑘kitalic_k-NN (used in our approach) and fixed 2D neighborhoods (used in prior works [17, 6]).
> </details>



![](https://arxiv.org/html/2504.14717/x3.png)

> 🔼 This figure illustrates the Local Pair Attention mechanism used in TAPIP3D for 3D point tracking.  A query point at a given timestep has its local 3D neighbors identified using k-NN to form a 'query group'.  At a future timestep, the K nearest 3D neighbors of this query group are located within the point cloud and form a 'key group'. Bi-directional cross-attention between these groups captures both spatial and temporal relationships for enhanced accuracy in tracking the trajectory of the 3D point across time.
> <details>
> <summary>read the caption</summary>
> Figure 3: Local Pair Attention. Given a 3D query point at a specific timestep, we first identify its local 3D context using k𝑘kitalic_k-NN to form a query group. Then, within the point cloud at another timestep, we find K𝐾Kitalic_K nearest 3D neighbors to construct a key group. We apply bi-directional cross-attention between the query and key groups to capture spatio-temporal correspondences.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.14.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.14.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.14.10.11.1.1" rowspan="2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.14.10.11.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.1.2.1">LSFOdyssey</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T2.14.10.11.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.11.1.3.1">Dynamic Replica</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.5.1.1.1" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.5.1.1.1.m1.1"><semantics id="S4.T2.5.1.1.1.m1.1a"><mmultiscripts id="S4.T2.5.1.1.1.m1.1.1"><mo id="S4.T2.5.1.1.1.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.5.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T2.5.1.1.1.m1.1.1.3">3D</mtext><mrow id="S4.T2.5.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.5.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.6.2.2.2" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.6.2.2.2.m1.1"><semantics id="S4.T2.6.2.2.2.m1.1a"><mmultiscripts id="S4.T2.6.2.2.2.m1.1.1"><mo id="S4.T2.6.2.2.2.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.6.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T2.6.2.2.2.m1.1.1.3">3D</mtext><mrow id="S4.T2.6.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.6.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.7.3.3.3" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{2D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.7.3.3.3.m1.1"><semantics id="S4.T2.7.3.3.3.m1.1a"><mmultiscripts id="S4.T2.7.3.3.3.m1.1.1"><mo id="S4.T2.7.3.3.3.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.7.3.3.3.m1.1.1a"></mprescripts><mtext id="S4.T2.7.3.3.3.m1.1.1.3">2D</mtext><mrow id="S4.T2.7.3.3.3.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.7.3.3.3.m1.1b">{}_{\text{2D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.3.3.3.m1.1c">start_FLOATSUBSCRIPT 2D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.8.4.4.4" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{2D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.8.4.4.4.m1.1"><semantics id="S4.T2.8.4.4.4.m1.1a"><mmultiscripts id="S4.T2.8.4.4.4.m1.1.1"><mo id="S4.T2.8.4.4.4.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.8.4.4.4.m1.1.1a"></mprescripts><mtext id="S4.T2.8.4.4.4.m1.1.1.3">2D</mtext><mrow id="S4.T2.8.4.4.4.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.8.4.4.4.m1.1b">{}_{\text{2D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.4.4.4.m1.1c">start_FLOATSUBSCRIPT 2D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.9.5.5.5" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.5.5.5.m1.1"><semantics id="S4.T2.9.5.5.5.m1.1a"><mo id="S4.T2.9.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.9.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.5.5.5.m1.1b"><ci id="S4.T2.9.5.5.5.m1.1.1.cmml" xref="S4.T2.9.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.10.6.6.6" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.10.6.6.6.m1.1"><semantics id="S4.T2.10.6.6.6.m1.1a"><mmultiscripts id="S4.T2.10.6.6.6.m1.1.1"><mo id="S4.T2.10.6.6.6.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.10.6.6.6.m1.1.1a"></mprescripts><mtext id="S4.T2.10.6.6.6.m1.1.1.3">3D</mtext><mrow id="S4.T2.10.6.6.6.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.10.6.6.6.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.6.6.6.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.11.7.7.7" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.11.7.7.7.m1.1"><semantics id="S4.T2.11.7.7.7.m1.1a"><mmultiscripts id="S4.T2.11.7.7.7.m1.1.1"><mo id="S4.T2.11.7.7.7.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.11.7.7.7.m1.1.1a"></mprescripts><mtext id="S4.T2.11.7.7.7.m1.1.1.3">3D</mtext><mrow id="S4.T2.11.7.7.7.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.11.7.7.7.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.7.7.7.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.12.8.8.8" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{2D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.12.8.8.8.m1.1"><semantics id="S4.T2.12.8.8.8.m1.1a"><mmultiscripts id="S4.T2.12.8.8.8.m1.1.1"><mo id="S4.T2.12.8.8.8.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.12.8.8.8.m1.1.1a"></mprescripts><mtext id="S4.T2.12.8.8.8.m1.1.1.3">2D</mtext><mrow id="S4.T2.12.8.8.8.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.12.8.8.8.m1.1b">{}_{\text{2D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.8.8.8.m1.1c">start_FLOATSUBSCRIPT 2D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.13.9.9.9" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{2D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T2.13.9.9.9.m1.1"><semantics id="S4.T2.13.9.9.9.m1.1a"><mmultiscripts id="S4.T2.13.9.9.9.m1.1.1"><mo id="S4.T2.13.9.9.9.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T2.13.9.9.9.m1.1.1a"></mprescripts><mtext id="S4.T2.13.9.9.9.m1.1.1.3">2D</mtext><mrow id="S4.T2.13.9.9.9.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T2.13.9.9.9.m1.1b">{}_{\text{2D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.9.9.9.m1.1c">start_FLOATSUBSCRIPT 2D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.14.10.10.10" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.10.10.10.m1.1"><semantics id="S4.T2.14.10.10.10.m1.1a"><mo id="S4.T2.14.10.10.10.m1.1.1" stretchy="false" xref="S4.T2.14.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.10.10.10.m1.1b"><ci id="S4.T2.14.10.10.10.m1.1.1.cmml" xref="S4.T2.14.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.14.10.12.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.1" style="padding:1pt 3.0pt;">CoTracker3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.12.1.2" style="padding:1pt 3.0pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.3" style="padding:1pt 3.0pt;">28.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.12.1.4" style="padding:1pt 3.0pt;">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.5" style="padding:1pt 3.0pt;">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.12.1.6.1">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.12.1.7" style="padding:1pt 3.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.8" style="padding:1pt 3.0pt;">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.12.1.9" style="padding:1pt 3.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.12.1.10" style="padding:1pt 3.0pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.12.1.11" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.12.1.11.1">86.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.13.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.13.2.1" style="padding:1pt 3.0pt;">SpatialTracker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.13.2.2" style="padding:1pt 3.0pt;">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.13.2.3" style="padding:1pt 3.0pt;">22.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.13.2.4" style="padding:1pt 3.0pt;">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.13.2.5" style="padding:1pt 3.0pt;">88.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.13.2.6" style="padding:1pt 3.0pt;">85.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.13.2.7" style="padding:1pt 3.0pt;">6.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.13.2.8" style="padding:1pt 3.0pt;">12.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.13.2.9" style="padding:1pt 3.0pt;">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.13.2.10" style="padding:1pt 3.0pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.13.2.11" style="padding:1pt 3.0pt;">81.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.14.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.14.3.1" style="padding:1pt 3.0pt;">DELTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.14.3.2" style="padding:1pt 3.0pt;">18.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.14.3.3" style="padding:1pt 3.0pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.14.3.4" style="padding:1pt 3.0pt;">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.14.3.5" style="padding:1pt 3.0pt;">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.14.3.6" style="padding:1pt 3.0pt;">83.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.14.3.7" style="padding:1pt 3.0pt;">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.14.3.8" style="padding:1pt 3.0pt;">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.14.3.9" style="padding:1pt 3.0pt;">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.14.3.10" style="padding:1pt 3.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.14.3.11" style="padding:1pt 3.0pt;">81.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.15.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.15.4.1" style="padding:1pt 3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.14.10.15.4.1.1">\hdashline</span>[2.0pt/2pt]
<span class="ltx_text ltx_font_bold" id="S4.T2.14.10.15.4.1.2">TAPIP3D-camera</span> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.15.4.2" style="padding:1pt 3.0pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.15.4.3" style="padding:1pt 3.0pt;">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.15.4.4" style="padding:1pt 3.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.15.4.5" style="padding:1pt 3.0pt;">86.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.15.4.6" style="padding:1pt 3.0pt;">83.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.15.4.7" style="padding:1pt 3.0pt;">20.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.15.4.8" style="padding:1pt 3.0pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.15.4.9" style="padding:1pt 3.0pt;">55.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.15.4.10" style="padding:1pt 3.0pt;">77.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.15.4.11" style="padding:1pt 3.0pt;">80.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.16.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.16.5.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.14.10.16.5.1.1">TAPIP3D-world</span> + MegaSaM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.16.5.2" style="padding:1pt 3.0pt;">20.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.16.5.3" style="padding:1pt 3.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.16.5.4" style="padding:1pt 3.0pt;">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.16.5.5" style="padding:1pt 3.0pt;">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.16.5.6" style="padding:1pt 3.0pt;">83.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.16.5.7" style="padding:1pt 3.0pt;">20.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.16.5.8" style="padding:1pt 3.0pt;">30.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.16.5.9" style="padding:1pt 3.0pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.16.5.10" style="padding:1pt 3.0pt;">77.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.16.5.11" style="padding:1pt 3.0pt;">78.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.17.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.1" style="padding:1pt 3.0pt;">CoTracker3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite> + GT C&amp;D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.17.6.2" style="padding:1pt 3.0pt;">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.3" style="padding:1pt 3.0pt;">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.17.6.4" style="padding:1pt 3.0pt;">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.5" style="padding:1pt 3.0pt;">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.6" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.17.6.6.1">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.17.6.7" style="padding:1pt 3.0pt;">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.8" style="padding:1pt 3.0pt;">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.17.6.9" style="padding:1pt 3.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.10.17.6.10" style="padding:1pt 3.0pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.10.17.6.11" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.17.6.11.1">86.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.18.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.18.7.1" style="padding:1pt 3.0pt;">SpatialTracker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> + GT C&amp;D</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.18.7.2" style="padding:1pt 3.0pt;">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.18.7.3" style="padding:1pt 3.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.18.7.4" style="padding:1pt 3.0pt;">70.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.18.7.5" style="padding:1pt 3.0pt;">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.18.7.6" style="padding:1pt 3.0pt;">84.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.18.7.7" style="padding:1pt 3.0pt;">7.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.18.7.8" style="padding:1pt 3.0pt;">13.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.18.7.9" style="padding:1pt 3.0pt;">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.18.7.10" style="padding:1pt 3.0pt;">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.18.7.11" style="padding:1pt 3.0pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.19.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.19.8.1" style="padding:1pt 3.0pt;">DELTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite> + GT C&amp;D</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.19.8.2" style="padding:1pt 3.0pt;">37.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.19.8.3" style="padding:1pt 3.0pt;">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.19.8.4" style="padding:1pt 3.0pt;">72.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.19.8.5" style="padding:1pt 3.0pt;">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.19.8.6" style="padding:1pt 3.0pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.19.8.7" style="padding:1pt 3.0pt;">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.19.8.8" style="padding:1pt 3.0pt;">37.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.19.8.9" style="padding:1pt 3.0pt;">65.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.19.8.10" style="padding:1pt 3.0pt;">80.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.19.8.11" style="padding:1pt 3.0pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.20.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.14.10.20.9.1" style="padding:1pt 3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.14.10.20.9.1.1">\hdashline</span>[2.0pt/2pt]
<span class="ltx_text ltx_font_bold" id="S4.T2.14.10.20.9.1.2">TAPIP3D-camera</span> + GT C&amp;D</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.20.9.2" style="padding:1pt 3.0pt;">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.20.9.3" style="padding:1pt 3.0pt;">83.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.20.9.4" style="padding:1pt 3.0pt;">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.20.9.5" style="padding:1pt 3.0pt;">91.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.20.9.6" style="padding:1pt 3.0pt;">86.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.20.9.7" style="padding:1pt 3.0pt;">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.20.9.8" style="padding:1pt 3.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.20.9.9" style="padding:1pt 3.0pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.14.10.20.9.10" style="padding:1pt 3.0pt;">84.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.20.9.11" style="padding:1pt 3.0pt;">84.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.21.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.1" style="padding:1pt 3.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.1.1">TAPIP3D-world</span> + GT C&amp;D</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.14.10.21.10.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.2.1">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.3.1">85.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.14.10.21.10.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.4.1">78.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.5.1">92.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.6" style="padding:1pt 3.0pt;">86.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.14.10.21.10.7" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.7.1">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.8" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.8.1">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.14.10.21.10.9" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.9.1">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.14.10.21.10.10" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.21.10.10.1">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.14.10.21.10.11" style="padding:1pt 3.0pt;">85.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of various long-term 3D and 2D point tracking methods' performance on the LSFOdyssey and Dynamic Replica benchmark datasets.  The key difference from Table 1 is that here the input depth quality is improved, moving from depth estimates generated by MegaSaM to ground truth depth data.  The table shows the Average Jaccard (AJ3D), Average Point to Depth (APD3D), Average Jaccard (AJ2D), Average Point to Depth (APD2D), and Occlusion Accuracy (OA) metrics for different methods. The best results for each metric are highlighted in bold.  GT C&D indicates that the results use ground truth depth and camera poses provided in the datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of long-term 3D and 2D point tracking results in LSFOdyssey [38] and Dynamic Replica [16] benchmarks with improved input depth quality ( MegaSaM [23] →→\rightarrow→ GT Depth). The best results per column are highlighted in bold. GT C&\&&D denotes using GT depth and camera poses provided by the dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.4.1.1" rowspan="2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.3.3.4.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1.2.1">DexYCB-Pt</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.1.1" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mmultiscripts id="S4.T3.1.1.1.1.m1.1.1"><mo id="S4.T3.1.1.1.1.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T3.1.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T3.1.1.1.1.m1.1.1.3">3D</mtext><mrow id="S4.T3.1.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.2.2.2" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mmultiscripts id="S4.T3.2.2.2.2.m1.1.1"><mo id="S4.T3.2.2.2.2.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T3.2.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T3.2.2.2.2.m1.1.1.3">3D</mtext><mrow id="S4.T3.2.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.3.3.3" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.3.5.1.1" style="padding:1pt 3.0pt;">CoTracker3 + SD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.5.1.2" style="padding:1pt 3.0pt;">14.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.5.1.3" style="padding:1pt 3.0pt;">26.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.5.1.4" style="padding:1pt 3.0pt;">70.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.6.2.1" style="padding:1pt 3.0pt;">SpatialTracker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.2.2" style="padding:1pt 3.0pt;">5.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.2.3" style="padding:1pt 3.0pt;">11.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.2.4" style="padding:1pt 3.0pt;">66.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.7.3.1" style="padding:1pt 3.0pt;">DELTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.14717v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.3.2" style="padding:1pt 3.0pt;">26.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.3.3" style="padding:1pt 3.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.3.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.3.4.1">72.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.3.3.8.4.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.4.1.1">TAPIP3D (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.8.4.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.4.2.1">30.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.8.4.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.4.3.1">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.8.4.4" style="padding:1pt 3.0pt;">71.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of 3D point tracking methods on the DexYCB-Pt dataset.  DexYCB-Pt is a new dataset consisting of 8000 real-world RGB-D videos showing manipulation scenarios.  The comparison uses sensor depth data as input, and the evaluation metric is the average percentage of points whose errors fall within a certain threshold (APD3D),  the precision of occlusion predictions (OA) and  Average Jaccard (AJ) which jointly measures accuracy in both position and occlusion estimation. The results show how well different methods perform in accurately tracking 3D points across the videos.
> <details>
> <summary>read the caption</summary>
> Table 3: 3D point tracking comparison on DexYCB-Pt consisting of 8,000 real-world manipulation videos using Sensor Depth (SD).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.5.3.3.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.3.3.4.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.1.1.1" style="padding:1pt 3.0pt;">AJ<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T4.3.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.m1.1a"><mmultiscripts id="S4.T4.3.1.1.1.m1.1.1"><mo id="S4.T4.3.1.1.1.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T4.3.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T4.3.1.1.1.m1.1.1.3">3D</mtext><mrow id="S4.T4.3.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.2.2.2" style="padding:1pt 3.0pt;">APD<math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T4.4.2.2.2.m1.1"><semantics id="S4.T4.4.2.2.2.m1.1a"><mmultiscripts id="S4.T4.4.2.2.2.m1.1.1"><mo id="S4.T4.4.2.2.2.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T4.4.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T4.4.2.2.2.m1.1.1.3">3D</mtext><mrow id="S4.T4.4.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T4.4.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.3.3.3" style="padding:1pt 3.0pt;">OA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.3.3.3.m1.1"><semantics id="S4.T4.5.3.3.3.m1.1a"><mo id="S4.T4.5.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.3.3.m1.1b"><ci id="S4.T4.5.3.3.3.m1.1.1.cmml" xref="S4.T4.5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.6.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.4.5.1.1" style="padding:1pt 3.0pt;">Fixed Neighbors in 2D</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.4.5.1.2" style="padding:1pt 3.0pt;">27.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.4.5.1.3" style="padding:1pt 3.0pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.4.5.1.4" style="padding:1pt 3.0pt;">67.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.6.4.4.1" style="padding:1pt 3.0pt;">
<math alttext="k" class="ltx_Math" display="inline" id="S4.T4.6.4.4.1.m1.1"><semantics id="S4.T4.6.4.4.1.m1.1a"><mi id="S4.T4.6.4.4.1.m1.1.1" xref="S4.T4.6.4.4.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.4.1.m1.1b"><ci id="S4.T4.6.4.4.1.m1.1.1.cmml" xref="S4.T4.6.4.4.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.4.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.4.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.1.1">-NN in 3D</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.4.4.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.2.1">29.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.4.4.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.3.1">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.4.4.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.4.1">70.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of using 3D k-Nearest Neighbors (k-NN) versus fixed 2D neighbors for feature correlation in the TAPIP3D model.  The experiment is conducted on the DexYCB-Pt benchmark dataset, using sensor depth data. The table shows the Average Jaccard index (AJ3D), Average Point-to-Point Distance (APD3D), and Occlusion Accuracy (OA) metrics, comparing the two approaches to determine which neighbor search method results in better 3D point tracking accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on the searching neighbors methods when performing correlation. We compare 3D k𝑘kitalic_k-NN vs. Fixed 2D Neighbors in DexYCB-Pt benchmark using Sensor Depth (SD).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.st1.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.st1.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.st1.3.3.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.st1.3.3.4.1.1.1" style="font-size:144%;">
<span class="ltx_inline-block" id="S4.T5.st1.3.3.4.1.1.1.1">
<span class="ltx_p" id="S4.T5.st1.3.3.4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.4.1.1.1.1.1.1">Coord.</span></span>
<span class="ltx_p" id="S4.T5.st1.3.3.4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.4.1.1.1.1.2.1">Systems</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T5.st1.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.4.1.2.1" style="font-size:144%;">LSFOdyssey</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.st1.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.st1.1.1.1.1">
<span class="ltx_text" id="S4.T5.st1.1.1.1.1.1" style="font-size:144%;">AJ</span><math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T5.st1.1.1.1.1.m1.1"><semantics id="S4.T5.st1.1.1.1.1.m1.1a"><mmultiscripts id="S4.T5.st1.1.1.1.1.m1.1.1"><mo id="S4.T5.st1.1.1.1.1.m1.1.1.2" mathsize="144%" stretchy="false">↑</mo><mprescripts id="S4.T5.st1.1.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T5.st1.1.1.1.1.m1.1.1.3" mathsize="144%">3D</mtext><mrow id="S4.T5.st1.1.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T5.st1.1.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st1.1.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.st1.2.2.2.2">
<span class="ltx_text" id="S4.T5.st1.2.2.2.2.1" style="font-size:144%;">APD</span><math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T5.st1.2.2.2.2.m1.1"><semantics id="S4.T5.st1.2.2.2.2.m1.1a"><mmultiscripts id="S4.T5.st1.2.2.2.2.m1.1.1"><mo id="S4.T5.st1.2.2.2.2.m1.1.1.2" mathsize="144%" stretchy="false">↑</mo><mprescripts id="S4.T5.st1.2.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T5.st1.2.2.2.2.m1.1.1.3" mathsize="144%">3D</mtext><mrow id="S4.T5.st1.2.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T5.st1.2.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st1.2.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.st1.3.3.3.3">
<span class="ltx_text" id="S4.T5.st1.3.3.3.3.1" style="font-size:144%;">OA</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.st1.3.3.3.3.m1.1"><semantics id="S4.T5.st1.3.3.3.3.m1.1a"><mo id="S4.T5.st1.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T5.st1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.st1.3.3.3.3.m1.1b"><ci id="S4.T5.st1.3.3.3.3.m1.1.1.cmml" xref="S4.T5.st1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.st1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.st1.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.st1.3.3.5.1.1"><span class="ltx_text" id="S4.T5.st1.3.3.5.1.1.1" style="font-size:144%;">UV + D</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st1.3.3.5.1.2"><span class="ltx_text" id="S4.T5.st1.3.3.5.1.2.1" style="font-size:144%;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st1.3.3.5.1.3"><span class="ltx_text" id="S4.T5.st1.3.3.5.1.3.1" style="font-size:144%;">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st1.3.3.5.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.5.1.4.1" style="font-size:144%;">87.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st1.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.st1.3.3.6.2.1"><span class="ltx_text" id="S4.T5.st1.3.3.6.2.1.1" style="font-size:144%;">UV + log(D)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.6.2.2"><span class="ltx_text" id="S4.T5.st1.3.3.6.2.2.1" style="font-size:144%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.6.2.3"><span class="ltx_text" id="S4.T5.st1.3.3.6.2.3.1" style="font-size:144%;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.6.2.4"><span class="ltx_text" id="S4.T5.st1.3.3.6.2.4.1" style="font-size:144%;">84.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st1.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.st1.3.3.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.7.3.1.1" style="font-size:144%;">XYZ (Cam)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.7.3.2"><span class="ltx_text" id="S4.T5.st1.3.3.7.3.2.1" style="font-size:144%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.7.3.3"><span class="ltx_text" id="S4.T5.st1.3.3.7.3.3.1" style="font-size:144%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st1.3.3.7.3.4"><span class="ltx_text" id="S4.T5.st1.3.3.7.3.4.1" style="font-size:144%;">85.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st1.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.st1.3.3.8.4.1"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.8.4.1.1" style="font-size:144%;">XYZ (world)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st1.3.3.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.8.4.2.1" style="font-size:144%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st1.3.3.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.st1.3.3.8.4.3.1" style="font-size:144%;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st1.3.3.8.4.4"><span class="ltx_text" id="S4.T5.st1.3.3.8.4.4.1" style="font-size:144%;">86.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different design choices within the TAPIP3D model on its performance.  Specifically, it investigates the effects of using 3D versus 2D spatial relationships for correlation feature extraction, and tracking in camera-centric versus world-centric 3D coordinates. The results are presented in terms of accuracy metrics on the LSFOdyssey dataset [38] with ground-truth depth and camera pose. It also compares the proposed Local Pair Attention mechanism to a standard point-to-region cross attention approach. The table isolates the effects of these individual components to understand their contribution to the overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation experiments of our TAPIP3D. To isolate the influence of depth and camera pose, we use the annotations provided by the LSFOdyssey dataset [38]. LP Att.: Local Pair Attention. Cam: 3D camera space. World: 3D world space.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.st2.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.st2.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.st2.3.3.4.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.4.1.1.1" style="font-size:144%;">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.st2.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.4.1.2.1" style="font-size:144%;">LSFOdyssey</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st2.3.3.3">
<td class="ltx_td ltx_align_center" id="S4.T5.st2.1.1.1.1">
<span class="ltx_text" id="S4.T5.st2.1.1.1.1.1" style="font-size:144%;">AJ</span><math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T5.st2.1.1.1.1.m1.1"><semantics id="S4.T5.st2.1.1.1.1.m1.1a"><mmultiscripts id="S4.T5.st2.1.1.1.1.m1.1.1"><mo id="S4.T5.st2.1.1.1.1.m1.1.1.2" mathsize="144%" stretchy="false">↑</mo><mprescripts id="S4.T5.st2.1.1.1.1.m1.1.1a"></mprescripts><mtext id="S4.T5.st2.1.1.1.1.m1.1.1.3" mathsize="144%">3D</mtext><mrow id="S4.T5.st2.1.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T5.st2.1.1.1.1.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st2.1.1.1.1.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.st2.2.2.2.2">
<span class="ltx_text" id="S4.T5.st2.2.2.2.2.1" style="font-size:144%;">APD</span><math alttext="{}_{\text{3D}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T5.st2.2.2.2.2.m1.1"><semantics id="S4.T5.st2.2.2.2.2.m1.1a"><mmultiscripts id="S4.T5.st2.2.2.2.2.m1.1.1"><mo id="S4.T5.st2.2.2.2.2.m1.1.1.2" mathsize="144%" stretchy="false">↑</mo><mprescripts id="S4.T5.st2.2.2.2.2.m1.1.1a"></mprescripts><mtext id="S4.T5.st2.2.2.2.2.m1.1.1.3" mathsize="144%">3D</mtext><mrow id="S4.T5.st2.2.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T5.st2.2.2.2.2.m1.1b">{}_{\text{3D}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st2.2.2.2.2.m1.1c">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.st2.3.3.3.3">
<span class="ltx_text" id="S4.T5.st2.3.3.3.3.1" style="font-size:144%;">OA</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.st2.3.3.3.3.m1.1"><semantics id="S4.T5.st2.3.3.3.3.m1.1a"><mo id="S4.T5.st2.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T5.st2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.st2.3.3.3.3.m1.1b"><ci id="S4.T5.st2.3.3.3.3.m1.1.1.cmml" xref="S4.T5.st2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.st2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.st2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.st2.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.st2.3.3.5.2.1"><span class="ltx_text" id="S4.T5.st2.3.3.5.2.1.1" style="font-size:144%;">Cam + Att.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.5.2.2"><span class="ltx_text" id="S4.T5.st2.3.3.5.2.2.1" style="font-size:144%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.5.2.3"><span class="ltx_text" id="S4.T5.st2.3.3.5.2.3.1" style="font-size:144%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.5.2.4.1" style="font-size:144%;">88.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st2.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.st2.3.3.6.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.6.3.1.1" style="font-size:144%;">Cam + LP Att.</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.st2.3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.6.3.2.1" style="font-size:144%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st2.3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.6.3.3.1" style="font-size:144%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.st2.3.3.6.3.4"><span class="ltx_text" id="S4.T5.st2.3.3.6.3.4.1" style="font-size:144%;">85.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st2.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.st2.3.3.7.4.1"><span class="ltx_text" id="S4.T5.st2.3.3.7.4.1.1" style="font-size:144%;">World + 2D Att.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.7.4.2"><span class="ltx_text" id="S4.T5.st2.3.3.7.4.2.1" style="font-size:144%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.7.4.3"><span class="ltx_text" id="S4.T5.st2.3.3.7.4.3.1" style="font-size:144%;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.st2.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.7.4.4.1" style="font-size:144%;">88.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.st2.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.st2.3.3.8.5.1"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.8.5.1.1" style="font-size:144%;">World + Att.</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st2.3.3.8.5.2"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.8.5.2.1" style="font-size:144%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st2.3.3.8.5.3"><span class="ltx_text ltx_font_bold" id="S4.T5.st2.3.3.8.5.3.1" style="font-size:144%;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.st2.3.3.8.5.4"><span class="ltx_text" id="S4.T5.st2.3.3.8.5.4.1" style="font-size:144%;">86.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of TAPIP3D using different 3D coordinate systems.  It shows the Average Jaccard (AJ3D), Average Point Distance (APD3D), and Occlusion Accuracy (OA) metrics for TAPIP3D when tracking in UV+D (image plane coordinates + depth), UV+log(D) (image plane coordinates + log depth), XYZ (camera-centric 3D coordinates), and XYZ (world-centric 3D coordinates). The results demonstrate the impact of the choice of coordinate system on the accuracy and robustness of 3D point tracking.
> <details>
> <summary>read the caption</summary>
> (a) 3D Coordinates Systems
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.14717/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14717/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}