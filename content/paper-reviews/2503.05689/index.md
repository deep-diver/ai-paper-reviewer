---
title: "GoalFlow: Goal-Driven Flow Matching for Multimodal Trajectories Generation in End-to-End Autonomous Driving"
summary: "GoalFlow: A novel approach to enhance multimodal trajectory generation for autonomous driving using goal-driven flow matching."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Autonomous Vehicles", "🏢 School of Artificial Intelligence, University of Chinese Academy of Sciences",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05689 {{< /keyword >}}
{{< keyword icon="writer" >}} Zebin Xing et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05689" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05689" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05689/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Autonomous driving** relies on generating high-quality, multimodal trajectories, but current methods struggle with trajectory selection and inconsistencies between guidance and scene information. This leads to complexity and reduced trajectory quality, hindering the development of robust end-to-end systems. Recent diffusion-based approaches, while promising, often suffer from trajectory divergence, requiring complex scoring mechanisms and HD maps, which are difficult to obtain in all environments. These limitations underscore the need for improved methods that can effectively constrain trajectory generation and enhance overall system reliability.



The paper introduces **GoalFlow**, a novel method that effectively constrains the generative process using **goal-driven flow matching**. GoalFlow consists of perception module, goal point construction module, and trajectory planning module. This approach uses a scoring mechanism to select the best goal point from candidate points, based on scene information, and employs flow matching for efficient multimodal trajectory generation. Experimental results on the Navsim dataset demonstrate that GoalFlow achieves state-of-the-art performance, delivering robust multimodal trajectories. It is significantly surpassing existing methods, while requiring only a single denoising step for excellent performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GoalFlow introduces a novel goal point selection mechanism that leverages scene information to guide trajectory generation effectively. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper demonstrates the successful integration of flow matching with goal point guidance, achieving state-of-the-art results in multimodal trajectory prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach exhibits robustness with minimal denoising steps, improving the practicality of generative models for real-time autonomous driving applications. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**GoalFlow** offers a robust method for multimodal trajectory generation, outperforming existing techniques in critical safety metrics and opening new research directions for generative models in autonomous driving. It advances end-to-end autonomous driving systems towards safer and more reliable navigation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05689/x1.png)

> 🔼 This figure compares different approaches to multimodal trajectory generation in autonomous driving.  A standalone generative model is shown to produce a wide range of trajectories that blend together without clear distinctions between different driving behaviors (e.g., turning left vs. going straight).  In contrast, the 'Goal-Driven Generation Model' uses goal points to guide the trajectory generation process, resulting in distinct trajectory clusters, each corresponding to a different driving maneuver.  The use of goal points effectively separates the different trajectory modalities, leading to improved clarity and quality of the generated paths.
> <details>
> <summary>read the caption</summary>
> Figure 1: The comparison of different multimodal trajectory generation paradigms recently. A standalone generative model often produces highly diverse trajectories with no clear boundaries between different modalities. In contrast, the Goal-Driven Generation Model leverages the strong guidance of goal points, effectively distinguishing multiple modalities by utilizing different goal points.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.14.14">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.12.12.12.13"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.13.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.12.12.12.14"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.14.1">Ego Stat.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.12.12.12.15"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.15.1">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.12.12.12.16"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.16.1">LiDAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.12.12.12.17"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.17.1">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2">
<math alttext="\mathbf{S_{NC}}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><msub id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.m1.1.1.3.cmml">𝐍𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2">𝐒</ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3">𝐍𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\mathbf{S_{NC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">bold_S start_POSTSUBSCRIPT bold_NC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m2.1"><semantics id="S4.T1.2.2.2.2.m2.1a"><mo id="S4.T1.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m2.1b"><ci id="S4.T1.2.2.2.2.m2.1.1.cmml" xref="S4.T1.2.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4">
<math alttext="\mathbf{S_{DAC}}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><msub id="S4.T1.3.3.3.3.m1.1.1" xref="S4.T1.3.3.3.3.m1.1.1.cmml"><mi id="S4.T1.3.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.3.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.3.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.3.m1.1.1.3.cmml">𝐃𝐀𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T1.3.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.3.m1.1.1.2">𝐒</ci><ci id="S4.T1.3.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.3.m1.1.1.3">𝐃𝐀𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\mathbf{S_{DAC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">bold_S start_POSTSUBSCRIPT bold_DAC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m2.1"><semantics id="S4.T1.4.4.4.4.m2.1a"><mo id="S4.T1.4.4.4.4.m2.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m2.1b"><ci id="S4.T1.4.4.4.4.m2.1.1.cmml" xref="S4.T1.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.6.6.6">
<math alttext="\mathbf{S_{TTC}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><msub id="S4.T1.5.5.5.5.m1.1.1" xref="S4.T1.5.5.5.5.m1.1.1.cmml"><mi id="S4.T1.5.5.5.5.m1.1.1.2" xref="S4.T1.5.5.5.5.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.5.5.5.5.m1.1.1.3" xref="S4.T1.5.5.5.5.m1.1.1.3.cmml">𝐓𝐓𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T1.5.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.5.m1.1.1.2">𝐒</ci><ci id="S4.T1.5.5.5.5.m1.1.1.3.cmml" xref="S4.T1.5.5.5.5.m1.1.1.3">𝐓𝐓𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\mathbf{S_{TTC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">bold_S start_POSTSUBSCRIPT bold_TTC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m2.1"><semantics id="S4.T1.6.6.6.6.m2.1a"><mo id="S4.T1.6.6.6.6.m2.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m2.1b"><ci id="S4.T1.6.6.6.6.m2.1.1.cmml" xref="S4.T1.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.8.8.8.8">
<math alttext="\mathbf{S_{CF}}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><msub id="S4.T1.7.7.7.7.m1.1.1" xref="S4.T1.7.7.7.7.m1.1.1.cmml"><mi id="S4.T1.7.7.7.7.m1.1.1.2" xref="S4.T1.7.7.7.7.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.7.7.7.7.m1.1.1.3" xref="S4.T1.7.7.7.7.m1.1.1.3.cmml">𝐂𝐅</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><apply id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.7.7.7.7.m1.1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S4.T1.7.7.7.7.m1.1.1.2.cmml" xref="S4.T1.7.7.7.7.m1.1.1.2">𝐒</ci><ci id="S4.T1.7.7.7.7.m1.1.1.3.cmml" xref="S4.T1.7.7.7.7.m1.1.1.3">𝐂𝐅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\mathbf{S_{CF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">bold_S start_POSTSUBSCRIPT bold_CF end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m2.1"><semantics id="S4.T1.8.8.8.8.m2.1a"><mo id="S4.T1.8.8.8.8.m2.1.1" stretchy="false" xref="S4.T1.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m2.1b"><ci id="S4.T1.8.8.8.8.m2.1.1.cmml" xref="S4.T1.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.10">
<math alttext="\mathbf{S_{EP}}" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><msub id="S4.T1.9.9.9.9.m1.1.1" xref="S4.T1.9.9.9.9.m1.1.1.cmml"><mi id="S4.T1.9.9.9.9.m1.1.1.2" xref="S4.T1.9.9.9.9.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.9.9.9.9.m1.1.1.3" xref="S4.T1.9.9.9.9.m1.1.1.3.cmml">𝐄𝐏</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><apply id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.9.9.9.9.m1.1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">subscript</csymbol><ci id="S4.T1.9.9.9.9.m1.1.1.2.cmml" xref="S4.T1.9.9.9.9.m1.1.1.2">𝐒</ci><ci id="S4.T1.9.9.9.9.m1.1.1.3.cmml" xref="S4.T1.9.9.9.9.m1.1.1.3">𝐄𝐏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\mathbf{S_{EP}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">bold_S start_POSTSUBSCRIPT bold_EP end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.m2.1"><semantics id="S4.T1.10.10.10.10.m2.1a"><mo id="S4.T1.10.10.10.10.m2.1.1" stretchy="false" xref="S4.T1.10.10.10.10.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.m2.1b"><ci id="S4.T1.10.10.10.10.m2.1.1.cmml" xref="S4.T1.10.10.10.10.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.12.12.12.12">
<math alttext="\mathbf{S_{PDM}}" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.m1.1"><semantics id="S4.T1.11.11.11.11.m1.1a"><msub id="S4.T1.11.11.11.11.m1.1.1" xref="S4.T1.11.11.11.11.m1.1.1.cmml"><mi id="S4.T1.11.11.11.11.m1.1.1.2" xref="S4.T1.11.11.11.11.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T1.11.11.11.11.m1.1.1.3" xref="S4.T1.11.11.11.11.m1.1.1.3.cmml">𝐏𝐃𝐌</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.m1.1b"><apply id="S4.T1.11.11.11.11.m1.1.1.cmml" xref="S4.T1.11.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.11.11.11.11.m1.1.1.1.cmml" xref="S4.T1.11.11.11.11.m1.1.1">subscript</csymbol><ci id="S4.T1.11.11.11.11.m1.1.1.2.cmml" xref="S4.T1.11.11.11.11.m1.1.1.2">𝐒</ci><ci id="S4.T1.11.11.11.11.m1.1.1.3.cmml" xref="S4.T1.11.11.11.11.m1.1.1.3">𝐏𝐃𝐌</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.m1.1c">\mathbf{S_{PDM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.m1.1d">bold_S start_POSTSUBSCRIPT bold_PDM end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.m2.1"><semantics id="S4.T1.12.12.12.12.m2.1a"><mo id="S4.T1.12.12.12.12.m2.1.1" stretchy="false" xref="S4.T1.12.12.12.12.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.m2.1b"><ci id="S4.T1.12.12.12.12.m2.1.1.cmml" xref="S4.T1.12.12.12.12.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.15.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.14.14.15.1.1">Constant Velocity</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.2">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T1.14.14.15.1.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.14.14.15.1.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.14.14.15.1.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.6">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.7">57.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.8">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.9">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.10">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.15.1.11">20.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.16.2">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.16.2.1">Ego Status MLP</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.2">✓</td>
<td class="ltx_td" id="S4.T1.14.14.16.2.3"></td>
<td class="ltx_td" id="S4.T1.14.14.16.2.4"></td>
<td class="ltx_td" id="S4.T1.14.14.16.2.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.6">93.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.7">77.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.8">83.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.9">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.10">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.16.2.11">65.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.17.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.14.14.17.3.1">LTF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05689v3#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.3">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T1.14.14.17.3.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.14.14.17.3.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.6">97.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.7">92.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.8">92.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.9">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.10">79.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.17.3.11">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.18.4">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.18.4.1">TransFuser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05689v3#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.4">✓</td>
<td class="ltx_td" id="S4.T1.14.14.18.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.6">97.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.7">92.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.8">92.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.9">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.10">79.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.18.4.11">84.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.19.5">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.19.5.1">UniAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05689v3#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.4">✓</td>
<td class="ltx_td" id="S4.T1.14.14.19.5.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.6">97.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.7">91.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.8">92.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.9">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.10">78.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.19.5.11">83.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.20.6">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.20.6.1">PARA-Drive <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05689v3#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.6">97.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.7">92.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.8">93.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.9">99.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.10">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.20.6.11">84.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.21.7">
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.21.7.1"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.1.1">GoalFlow (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.4">✓</td>
<td class="ltx_td" id="S4.T1.14.14.21.7.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.6"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.6.1">98.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.7"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.7.1">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.8.1">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.9"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.9.1">100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.10"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.10.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.21.7.11"><span class="ltx_text ltx_font_bold" id="S4.T1.14.14.21.7.11.1">90.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.13.13.13.1"><math alttext="\text{GoalFlow}^{{\dagger}}" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.m1.1"><semantics id="S4.T1.13.13.13.1.m1.1a"><msup id="S4.T1.13.13.13.1.m1.1.1" xref="S4.T1.13.13.13.1.m1.1.1.cmml"><mtext id="S4.T1.13.13.13.1.m1.1.1.2" mathcolor="#808080" xref="S4.T1.13.13.13.1.m1.1.1.2a.cmml">GoalFlow</mtext><mo id="S4.T1.13.13.13.1.m1.1.1.3" mathcolor="#808080" xref="S4.T1.13.13.13.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.m1.1b"><apply id="S4.T1.13.13.13.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.13.13.13.1.m1.1.1.1.cmml" xref="S4.T1.13.13.13.1.m1.1.1">superscript</csymbol><ci id="S4.T1.13.13.13.1.m1.1.1.2a.cmml" xref="S4.T1.13.13.13.1.m1.1.1.2"><mtext id="S4.T1.13.13.13.1.m1.1.1.2.cmml" xref="S4.T1.13.13.13.1.m1.1.1.2">GoalFlow</mtext></ci><ci id="S4.T1.13.13.13.1.m1.1.1.3.cmml" xref="S4.T1.13.13.13.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.m1.1c">\text{GoalFlow}^{{\dagger}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.m1.1d">GoalFlow start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.2"><span class="ltx_text" id="S4.T1.13.13.13.2.1" style="color:#808080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.3"><span class="ltx_text" id="S4.T1.13.13.13.3.1" style="color:#808080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.4"><span class="ltx_text" id="S4.T1.13.13.13.4.1" style="color:#808080;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.13.13.13.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.6"><span class="ltx_text" id="S4.T1.13.13.13.6.1" style="color:#808080;">99.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.7"><span class="ltx_text" id="S4.T1.13.13.13.7.1" style="color:#808080;">97.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.8"><span class="ltx_text" id="S4.T1.13.13.13.8.1" style="color:#808080;">98.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.9"><span class="ltx_text" id="S4.T1.13.13.13.9.1" style="color:#808080;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.10"><span class="ltx_text" id="S4.T1.13.13.13.10.1" style="color:#808080;">85.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.13.13.13.11"><span class="ltx_text" id="S4.T1.13.13.13.11.1" style="color:#808080;">92.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.14.14.14.1"><math alttext="\text{Human}^{{\ddagger}}" class="ltx_Math" display="inline" id="S4.T1.14.14.14.1.m1.1"><semantics id="S4.T1.14.14.14.1.m1.1a"><msup id="S4.T1.14.14.14.1.m1.1.1" xref="S4.T1.14.14.14.1.m1.1.1.cmml"><mtext id="S4.T1.14.14.14.1.m1.1.1.2" mathcolor="#808080" xref="S4.T1.14.14.14.1.m1.1.1.2a.cmml">Human</mtext><mo id="S4.T1.14.14.14.1.m1.1.1.3" mathcolor="#808080" xref="S4.T1.14.14.14.1.m1.1.1.3.cmml">‡</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.1.m1.1b"><apply id="S4.T1.14.14.14.1.m1.1.1.cmml" xref="S4.T1.14.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.14.14.14.1.m1.1.1.1.cmml" xref="S4.T1.14.14.14.1.m1.1.1">superscript</csymbol><ci id="S4.T1.14.14.14.1.m1.1.1.2a.cmml" xref="S4.T1.14.14.14.1.m1.1.1.2"><mtext id="S4.T1.14.14.14.1.m1.1.1.2.cmml" xref="S4.T1.14.14.14.1.m1.1.1.2">Human</mtext></ci><ci id="S4.T1.14.14.14.1.m1.1.1.3.cmml" xref="S4.T1.14.14.14.1.m1.1.1.3">‡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.1.m1.1c">\text{Human}^{{\ddagger}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.1.m1.1d">Human start_POSTSUPERSCRIPT ‡ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.14.14.14.2"></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.14.14.14.3"></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.14.14.14.4"></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.14.14.14.5"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.6"><span class="ltx_text" id="S4.T1.14.14.14.6.1" style="color:#808080;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.7"><span class="ltx_text" id="S4.T1.14.14.14.7.1" style="color:#808080;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.8"><span class="ltx_text" id="S4.T1.14.14.14.8.1" style="color:#808080;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.9"><span class="ltx_text" id="S4.T1.14.14.14.9.1" style="color:#808080;">99.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.10"><span class="ltx_text" id="S4.T1.14.14.14.10.1" style="color:#808080;">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.14.14.14.11"><span class="ltx_text" id="S4.T1.14.14.14.11.1" style="color:#808080;">94.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the proposed GoalFlow model with state-of-the-art (SOTA) methods for autonomous driving trajectory generation, evaluated using the PDM (Predictive Driving Metrics) score on the Navsim dataset.  The table shows that GoalFlow outperforms all other methods across all key metrics (SNC, SDAC, STTC, SCF, SEP, and SPDM).  Two additional rows highlight results using either the endpoint of the ground truth trajectory or the ground truth trajectories themselves for evaluation, further illustrating GoalFlow's performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons with SOTA methods in PDM score metrics on Navsim [7] Test. Our method outperforms other approaches across all evaluation metrics. ††{\dagger}† uses the endpoint of the ground-truth trajectory as the goal point. ‡‡{\ddagger}‡ uses the ground-truth trajectories to evaluate.
> </details>





### In-depth insights


#### GoalFlow: Overview
GoalFlow's overview likely details its core architecture and functionality, acting as a high-level introduction to the method. It probably articulates the key components and how they interact to achieve the primary goal: generating high-quality, multimodal trajectories for autonomous driving. The overview would highlight how GoalFlow addresses limitations in existing approaches, such as trajectory divergence and inconsistencies between guidance and scene information. It would likely emphasize the importance of the **goal-driven approach**, explaining how carefully constructed goal points constrain the generative process. Also it touches on the perception module for feature extraction from image and LiDAR data, goal point construction module to select the most suitable goal point and trajectory generation module using Flow Matching. The overview likely emphasizes that GoalFlow consists of three modules: perception module for BEV feature extraction, goal point construction module to select the optimal goal point for guidance and finally trajectory planning module to generate trajectories by denoising from the Gaussian distribution to the target distribution. The overview will likely summarize the benefits achieved by GoalFlow, such as state-of-the-art performance and reduced computational complexity.

#### Goal-Driven FM
Goal-Driven Flow Matching (FM) likely focuses on leveraging flow matching techniques, which excel at mapping probability distributions, **guided by specific goals**. In autonomous driving, this means generating trajectories that are not just diverse but also **intentionally directed** towards pre-defined goal states. This approach contrasts with unguided generative models that might produce trajectories lacking clear objectives. A key challenge involves effectively **defining and representing these goals** in a way that is compatible with the FM framework. This could involve using goal points, which represent desired future locations or states of the vehicle. By conditioning the flow matching process on these goals, the generated trajectories are more likely to be **relevant and useful for planning**. The effectiveness of Goal-Driven FM hinges on the **accuracy and relevance of the goal representation**, as well as the ability of the FM model to seamlessly integrate this information into the trajectory generation process.

#### Navsim Validation
Although the exact phrase "Navsim Validation" isn't explicitly present, the paper validates its approach through experiments conducted within the **Navsim environment**, a crucial aspect for assessing autonomous driving algorithms. The choice of Navsim suggests a controlled, simulated setting allowing for repeatable testing and precise measurement of performance metrics. The validation likely focuses on evaluating the generated trajectories using closed-loop metrics like **collision avoidance, drivable area compliance, and progress**. Analyzing performance within Navsim provides insights into the algorithm's robustness and safety before real-world deployment. The paper would detail how GoalFlow's performance on Navsim compares to baseline methods, emphasizing improvements in key metrics related to safe and efficient navigation. The validation likely investigates the impact of GoalFlow's components and parameters on trajectory quality and multimodal capabilities within the simulated environment. The results from the Navsim validation are vital for demonstrating the effectiveness and promise of the GoalFlow framework for autonomous driving applications. Also the **Metrics used in Navsim** can be a good way to determine the performance of the model.

#### Single-step Robust
The concept of "single-step robust" likely refers to a method's ability to maintain performance or stability when subjected to a single, significant perturbation or outlier data point. In machine learning, this is valuable because real-world datasets often contain noisy or erroneous data. A model that is **single-step robust** would not drastically change its predictions or internal parameters due to one bad sample. This could be achieved through various techniques such as **robust loss functions** (e.g., Huber loss) that are less sensitive to outliers, **data preprocessing steps** to identify and mitigate outliers, or **regularization methods** that prevent the model from overfitting to single data points. The term highlights a practical focus on **immediate resilience** to isolated errors, rather than aggregate performance over a distribution of noisy data. Further, in end-to-end systems, the single denoising step also means single-step robust

#### Beyond Diversity
While **diversity** aims to include a range of perspectives, it can sometimes fall short of fostering true **collaboration** and **understanding**. Going beyond diversity means actively cultivating **inclusion**, where every voice is not only heard but also valued and integrated into decision-making processes. This requires creating a culture of **equity**, ensuring that everyone has equal opportunities to contribute and succeed, regardless of their background or identity. Furthermore, it necessitates addressing systemic biases and power imbalances that may hinder full participation. A truly impactful approach moves beyond mere representation to focus on creating a sense of **belonging** for all individuals, promoting empathy, and celebrating the richness that diverse perspectives bring to innovation and problem-solving. It's about building bridges and fostering a shared commitment to creating a more just and equitable environment. This is a continuous journey that demands ongoing reflection, learning, and action.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05689/x2.png)

> 🔼 GoalFlow's architecture is composed of three modules: the Perception Module, the Goal Point Construction Module, and the Trajectory Planning Module.  The Perception Module takes image and LiDAR data as input, processing them to generate a Bird's Eye View (BEV) feature representation, denoted as  Fbev. This BEV feature is then passed to the Goal Point Construction Module. This module utilizes a Goal Point Vocabulary (a set of potential goal points) to identify the optimal goal point for trajectory generation, using a scoring mechanism. The selected goal point is then given to the Trajectory Planning Module, which uses a denoising process to generate multiple trajectory candidates starting from a Gaussian distribution and converging towards the target distribution. These candidates are then evaluated by a Trajectory Scorer, which selects the single best trajectory.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the GoalFlow architecture. GoalFlow consists of three modules. The Perception Module is responsible for integrating scene information into a BEV feature Fb⁢e⁢vsubscript𝐹𝑏𝑒𝑣F_{bev}italic_F start_POSTSUBSCRIPT italic_b italic_e italic_v end_POSTSUBSCRIPT, the Goal Point Construction Module selects the optimal goal point from Goal Point Vocabulary 𝕍𝕍\mathbb{V}blackboard_V as guidance information, and the Trajectory Planning Module generates the trajectories by denoising from the Gaussian distribution to the target distribution. Finally, the Trajectory Scorer selects the optimal trajectory from the candidates.
> </details>



![](https://arxiv.org/html/2503.05689/x3.png)

> 🔼 This figure shows the detailed structure of the Goal Point Construction Module.  It visually depicts how the module processes the BEV feature (Fbev), ego status (Fego), and the goal point vocabulary (V) to select the optimal goal point. The figure highlights the key components: the vocabulary encoder, the scorer decoder (using MLPs), and the final goal point selection process.  The accompanying text (b) illustrates the distributions of distance score (dis), drivable area compliance score (dac), and final score (final).  Warmer colors indicate higher scores.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.05689/x4.png)

> 🔼 This figure shows the score distributions of the Distance Score (d<sub>is</sub>), Drivable Area Compliance Score (d<sub>ac</sub>), and the final score (f<sub>final</sub>) for goal point selection.  Warmer colors indicate higher scores. The Distance Score measures how close a goal point is to the ground truth. The Drivable Area Compliance Score checks if the goal point is within a drivable area. The final score combines both scores to select the best goal point.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.05689/x5.png)

> 🔼 Figure 3 illustrates the Goal Point Construction Module, a key component of the GoalFlow architecture.  Part (a) provides a detailed diagram of this module's structure, showing how it uses a transformer-based scorer decoder to generate distance and drivable area compliance scores for each potential goal point.  Part (b) visualizes the resulting score distributions (distance score, drivable area compliance score, and final score), using a color gradient to represent the magnitude of each score—warmer colors indicating higher scores. This visualization helps to understand how the module effectively selects the most appropriate goal point for trajectory generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Goal Point Scorer. (a) shows the detailed structure of the Goal Point Construction Module, and (b) presents the score distributions of {δ^id⁢i⁢s}Nsuperscriptsubscriptsuperscript^𝛿𝑑𝑖𝑠𝑖𝑁\{\hat{\delta}^{dis}_{i}\}^{N}{ over^ start_ARG italic_δ end_ARG start_POSTSUPERSCRIPT italic_d italic_i italic_s end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUPERSCRIPT italic_N end_POSTSUPERSCRIPT, {δ^id⁢a⁢c}Nsuperscriptsubscriptsuperscript^𝛿𝑑𝑎𝑐𝑖𝑁\{\hat{\delta}^{dac}_{i}\}^{N}{ over^ start_ARG italic_δ end_ARG start_POSTSUPERSCRIPT italic_d italic_a italic_c end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUPERSCRIPT italic_N end_POSTSUPERSCRIPT, and {δ^if⁢i⁢n⁢a⁢l}Nsuperscriptsubscriptsuperscript^𝛿𝑓𝑖𝑛𝑎𝑙𝑖𝑁\{\hat{\delta}^{final}_{i}\}^{N}{ over^ start_ARG italic_δ end_ARG start_POSTSUPERSCRIPT italic_f italic_i italic_n italic_a italic_l end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUPERSCRIPT italic_N end_POSTSUPERSCRIPT, where points with higher scores are highlighted with warmer color.
> </details>



![](https://arxiv.org/html/2503.05689/x8.png)

> 🔼 This figure illustrates the architecture of the Rectified Flow model employed in GoalFlow for trajectory generation.  It shows how the model takes different inputs including time step (t), the current state (xt), and features from the environment (Fenv) and ego vehicle (Fego) to generate a trajectory.  These features are processed through various encoder and transformer layers to produce a shift vector (vt), used for transitioning the trajectory from a noise distribution to a target distribution. The various components such as the encoder, transformer layers, and positional encoding are clearly depicted to show the process of trajectory prediction using the rectified flow framework.
> <details>
> <summary>read the caption</summary>
> Figure 4: The network architecture used in Rectified Flow.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.11.11.12"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.11.11.13"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.1">Description</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">
<math alttext="\mathbf{S_{NC}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.m1.1.1.3.cmml">𝐍𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T2.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.m1.1.1.2">𝐒</ci><ci id="S4.T2.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.m1.1.1.3">𝐍𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\mathbf{S_{NC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">bold_S start_POSTSUBSCRIPT bold_NC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.m2.1a"><mo id="S4.T2.2.2.2.m2.1.1" stretchy="false" xref="S4.T2.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4">
<math alttext="\mathbf{S_{DAC}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><msub id="S4.T2.3.3.3.m1.1.1" xref="S4.T2.3.3.3.m1.1.1.cmml"><mi id="S4.T2.3.3.3.m1.1.1.2" xref="S4.T2.3.3.3.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.3.3.3.m1.1.1.3" xref="S4.T2.3.3.3.m1.1.1.3.cmml">𝐃𝐀𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.3.3.3.m1.1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T2.3.3.3.m1.1.1.2.cmml" xref="S4.T2.3.3.3.m1.1.1.2">𝐒</ci><ci id="S4.T2.3.3.3.m1.1.1.3.cmml" xref="S4.T2.3.3.3.m1.1.1.3">𝐃𝐀𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\mathbf{S_{DAC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">bold_S start_POSTSUBSCRIPT bold_DAC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m2.1"><semantics id="S4.T2.4.4.4.m2.1a"><mo id="S4.T2.4.4.4.m2.1.1" stretchy="false" xref="S4.T2.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m2.1b"><ci id="S4.T2.4.4.4.m2.1.1.cmml" xref="S4.T2.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.6.6">
<math alttext="\mathbf{S_{TTC}}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><msub id="S4.T2.5.5.5.m1.1.1" xref="S4.T2.5.5.5.m1.1.1.cmml"><mi id="S4.T2.5.5.5.m1.1.1.2" xref="S4.T2.5.5.5.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.5.5.5.m1.1.1.3" xref="S4.T2.5.5.5.m1.1.1.3.cmml">𝐓𝐓𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><apply id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.5.5.5.m1.1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T2.5.5.5.m1.1.1.2.cmml" xref="S4.T2.5.5.5.m1.1.1.2">𝐒</ci><ci id="S4.T2.5.5.5.m1.1.1.3.cmml" xref="S4.T2.5.5.5.m1.1.1.3">𝐓𝐓𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\mathbf{S_{TTC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">bold_S start_POSTSUBSCRIPT bold_TTC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m2.1"><semantics id="S4.T2.6.6.6.m2.1a"><mo id="S4.T2.6.6.6.m2.1.1" stretchy="false" xref="S4.T2.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m2.1b"><ci id="S4.T2.6.6.6.m2.1.1.cmml" xref="S4.T2.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.7.7"><math alttext="\mathbf{S_{CF}}" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><msub id="S4.T2.7.7.7.m1.1.1" xref="S4.T2.7.7.7.m1.1.1.cmml"><mi id="S4.T2.7.7.7.m1.1.1.2" xref="S4.T2.7.7.7.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.7.7.7.m1.1.1.3" xref="S4.T2.7.7.7.m1.1.1.3.cmml">𝐂𝐅</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><apply id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.7.7.7.m1.1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">subscript</csymbol><ci id="S4.T2.7.7.7.m1.1.1.2.cmml" xref="S4.T2.7.7.7.m1.1.1.2">𝐒</ci><ci id="S4.T2.7.7.7.m1.1.1.3.cmml" xref="S4.T2.7.7.7.m1.1.1.3">𝐂𝐅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">\mathbf{S_{CF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">bold_S start_POSTSUBSCRIPT bold_CF end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.9.9.9">
<math alttext="\mathbf{S_{EP}}" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.m1.1a"><msub id="S4.T2.8.8.8.m1.1.1" xref="S4.T2.8.8.8.m1.1.1.cmml"><mi id="S4.T2.8.8.8.m1.1.1.2" xref="S4.T2.8.8.8.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.8.8.8.m1.1.1.3" xref="S4.T2.8.8.8.m1.1.1.3.cmml">𝐄𝐏</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m1.1b"><apply id="S4.T2.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.8.8.8.m1.1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1">subscript</csymbol><ci id="S4.T2.8.8.8.m1.1.1.2.cmml" xref="S4.T2.8.8.8.m1.1.1.2">𝐒</ci><ci id="S4.T2.8.8.8.m1.1.1.3.cmml" xref="S4.T2.8.8.8.m1.1.1.3">𝐄𝐏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m1.1c">\mathbf{S_{EP}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m1.1d">bold_S start_POSTSUBSCRIPT bold_EP end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.m2.1"><semantics id="S4.T2.9.9.9.m2.1a"><mo id="S4.T2.9.9.9.m2.1.1" stretchy="false" xref="S4.T2.9.9.9.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.m2.1b"><ci id="S4.T2.9.9.9.m2.1.1.cmml" xref="S4.T2.9.9.9.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.11.11.11">
<math alttext="\mathbf{S_{PDM}}" class="ltx_Math" display="inline" id="S4.T2.10.10.10.m1.1"><semantics id="S4.T2.10.10.10.m1.1a"><msub id="S4.T2.10.10.10.m1.1.1" xref="S4.T2.10.10.10.m1.1.1.cmml"><mi id="S4.T2.10.10.10.m1.1.1.2" xref="S4.T2.10.10.10.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T2.10.10.10.m1.1.1.3" xref="S4.T2.10.10.10.m1.1.1.3.cmml">𝐏𝐃𝐌</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.m1.1b"><apply id="S4.T2.10.10.10.m1.1.1.cmml" xref="S4.T2.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.10.10.10.m1.1.1.1.cmml" xref="S4.T2.10.10.10.m1.1.1">subscript</csymbol><ci id="S4.T2.10.10.10.m1.1.1.2.cmml" xref="S4.T2.10.10.10.m1.1.1.2">𝐒</ci><ci id="S4.T2.10.10.10.m1.1.1.3.cmml" xref="S4.T2.10.10.10.m1.1.1.3">𝐏𝐃𝐌</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.m1.1c">\mathbf{S_{PDM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.m1.1d">bold_S start_POSTSUBSCRIPT bold_PDM end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.11.11.m2.1"><semantics id="S4.T2.11.11.11.m2.1a"><mo id="S4.T2.11.11.11.m2.1.1" stretchy="false" xref="S4.T2.11.11.11.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.m2.1b"><ci id="S4.T2.11.11.11.m2.1.1.cmml" xref="S4.T2.11.11.11.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.1"><math alttext="-" class="ltx_Math" display="inline" id="S4.T2.12.12.1.m1.1"><semantics id="S4.T2.12.12.1.m1.1a"><mo id="S4.T2.12.12.1.m1.1.1" mathcolor="#808080" xref="S4.T2.12.12.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.1.m1.1b"><minus id="S4.T2.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.1.m1.1d">-</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.2"><span class="ltx_text" id="S4.T2.12.12.2.1" style="color:#808080;">Transfuser<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05689v3#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.3"><span class="ltx_text" id="S4.T2.12.12.3.1" style="color:#808080;">97.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.4"><span class="ltx_text" id="S4.T2.12.12.4.1" style="color:#808080;">92.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.5"><span class="ltx_text" id="S4.T2.12.12.5.1" style="color:#808080;">92.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.6"><span class="ltx_text" id="S4.T2.12.12.6.1" style="color:#808080;">100</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.7"><span class="ltx_text" id="S4.T2.12.12.7.1" style="color:#808080;">79.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.8"><span class="ltx_text" id="S4.T2.12.12.8.1" style="color:#808080;">84.0</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.13.1"><math alttext="\mathcal{M}_{0}" class="ltx_Math" display="inline" id="S4.T2.13.13.1.m1.1"><semantics id="S4.T2.13.13.1.m1.1a"><msub id="S4.T2.13.13.1.m1.1.1" xref="S4.T2.13.13.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.13.13.1.m1.1.1.2" xref="S4.T2.13.13.1.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.13.13.1.m1.1.1.3" xref="S4.T2.13.13.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.1.m1.1b"><apply id="S4.T2.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.13.13.1.m1.1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1">subscript</csymbol><ci id="S4.T2.13.13.1.m1.1.1.2.cmml" xref="S4.T2.13.13.1.m1.1.1.2">ℳ</ci><cn id="S4.T2.13.13.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.13.13.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.1.m1.1c">\mathcal{M}_{0}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.1.m1.1d">caligraphic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.13.2">Base Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.3">97.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.4">94.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.5">94.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.6">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.7">79.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.8">85.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15">
<td class="ltx_td ltx_align_left" id="S4.T2.14.14.1"><math alttext="\mathcal{M}_{1}" class="ltx_Math" display="inline" id="S4.T2.14.14.1.m1.1"><semantics id="S4.T2.14.14.1.m1.1a"><msub id="S4.T2.14.14.1.m1.1.1" xref="S4.T2.14.14.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.14.14.1.m1.1.1.2" xref="S4.T2.14.14.1.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.14.14.1.m1.1.1.3" xref="S4.T2.14.14.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.1.m1.1b"><apply id="S4.T2.14.14.1.m1.1.1.cmml" xref="S4.T2.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.14.14.1.m1.1.1.1.cmml" xref="S4.T2.14.14.1.m1.1.1">subscript</csymbol><ci id="S4.T2.14.14.1.m1.1.1.2.cmml" xref="S4.T2.14.14.1.m1.1.1.2">ℳ</ci><cn id="S4.T2.14.14.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.14.14.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.1.m1.1c">\mathcal{M}_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.1.m1.1d">caligraphic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.15.2">
<math alttext="\mathcal{M}_{0}" class="ltx_Math" display="inline" id="S4.T2.15.15.2.m1.1"><semantics id="S4.T2.15.15.2.m1.1a"><msub id="S4.T2.15.15.2.m1.1.1" xref="S4.T2.15.15.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.15.15.2.m1.1.1.2" xref="S4.T2.15.15.2.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.15.15.2.m1.1.1.3" xref="S4.T2.15.15.2.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.2.m1.1b"><apply id="S4.T2.15.15.2.m1.1.1.cmml" xref="S4.T2.15.15.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.15.15.2.m1.1.1.1.cmml" xref="S4.T2.15.15.2.m1.1.1">subscript</csymbol><ci id="S4.T2.15.15.2.m1.1.1.2.cmml" xref="S4.T2.15.15.2.m1.1.1.2">ℳ</ci><cn id="S4.T2.15.15.2.m1.1.1.3.cmml" type="integer" xref="S4.T2.15.15.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.2.m1.1c">\mathcal{M}_{0}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.2.m1.1d">caligraphic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math> + Distance Score Map</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.3">98.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.4">96.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.5">94.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.6">100</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.7">83.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.8">88.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.17">
<td class="ltx_td ltx_align_left" id="S4.T2.16.16.1"><math alttext="\mathcal{M}_{2}" class="ltx_Math" display="inline" id="S4.T2.16.16.1.m1.1"><semantics id="S4.T2.16.16.1.m1.1a"><msub id="S4.T2.16.16.1.m1.1.1" xref="S4.T2.16.16.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.16.16.1.m1.1.1.2" xref="S4.T2.16.16.1.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.16.16.1.m1.1.1.3" xref="S4.T2.16.16.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.1.m1.1b"><apply id="S4.T2.16.16.1.m1.1.1.cmml" xref="S4.T2.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.16.16.1.m1.1.1.1.cmml" xref="S4.T2.16.16.1.m1.1.1">subscript</csymbol><ci id="S4.T2.16.16.1.m1.1.1.2.cmml" xref="S4.T2.16.16.1.m1.1.1.2">ℳ</ci><cn id="S4.T2.16.16.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.16.16.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.1.m1.1c">\mathcal{M}_{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.1.m1.1d">caligraphic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S4.T2.17.17.2">
<math alttext="\mathcal{M}_{1}" class="ltx_Math" display="inline" id="S4.T2.17.17.2.m1.1"><semantics id="S4.T2.17.17.2.m1.1a"><msub id="S4.T2.17.17.2.m1.1.1" xref="S4.T2.17.17.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.17.17.2.m1.1.1.2" xref="S4.T2.17.17.2.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.17.17.2.m1.1.1.3" xref="S4.T2.17.17.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.2.m1.1b"><apply id="S4.T2.17.17.2.m1.1.1.cmml" xref="S4.T2.17.17.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.17.17.2.m1.1.1.1.cmml" xref="S4.T2.17.17.2.m1.1.1">subscript</csymbol><ci id="S4.T2.17.17.2.m1.1.1.2.cmml" xref="S4.T2.17.17.2.m1.1.1.2">ℳ</ci><cn id="S4.T2.17.17.2.m1.1.1.3.cmml" type="integer" xref="S4.T2.17.17.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.2.m1.1c">\mathcal{M}_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.2.m1.1d">caligraphic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> + DAC Score Map</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.3"><span class="ltx_text ltx_font_bold" id="S4.T2.17.17.3.1">98.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.4">97.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.5"><span class="ltx_text ltx_font_bold" id="S4.T2.17.17.5.1">94.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.17.17.6.1">100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.7">83.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.8">89.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.18.18.1"><math alttext="\mathcal{M}_{3}" class="ltx_Math" display="inline" id="S4.T2.18.18.1.m1.1"><semantics id="S4.T2.18.18.1.m1.1a"><msub id="S4.T2.18.18.1.m1.1.1" xref="S4.T2.18.18.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.18.18.1.m1.1.1.2" xref="S4.T2.18.18.1.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.18.18.1.m1.1.1.3" xref="S4.T2.18.18.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.1.m1.1b"><apply id="S4.T2.18.18.1.m1.1.1.cmml" xref="S4.T2.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.18.18.1.m1.1.1.1.cmml" xref="S4.T2.18.18.1.m1.1.1">subscript</csymbol><ci id="S4.T2.18.18.1.m1.1.1.2.cmml" xref="S4.T2.18.18.1.m1.1.1.2">ℳ</ci><cn id="S4.T2.18.18.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.18.18.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.1.m1.1c">\mathcal{M}_{3}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.1.m1.1d">caligraphic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.19.19.2">
<math alttext="\mathcal{M}_{2}" class="ltx_Math" display="inline" id="S4.T2.19.19.2.m1.1"><semantics id="S4.T2.19.19.2.m1.1a"><msub id="S4.T2.19.19.2.m1.1.1" xref="S4.T2.19.19.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.19.19.2.m1.1.1.2" xref="S4.T2.19.19.2.m1.1.1.2.cmml">ℳ</mi><mn id="S4.T2.19.19.2.m1.1.1.3" xref="S4.T2.19.19.2.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.2.m1.1b"><apply id="S4.T2.19.19.2.m1.1.1.cmml" xref="S4.T2.19.19.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.19.19.2.m1.1.1.1.cmml" xref="S4.T2.19.19.2.m1.1.1">subscript</csymbol><ci id="S4.T2.19.19.2.m1.1.1.2.cmml" xref="S4.T2.19.19.2.m1.1.1.2">ℳ</ci><cn id="S4.T2.19.19.2.m1.1.1.3.cmml" type="integer" xref="S4.T2.19.19.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.2.m1.1c">\mathcal{M}_{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.2.m1.1d">caligraphic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> + Trajectory Scorer</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.3">98.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.4"><span class="ltx_text ltx_font_bold" id="S4.T2.19.19.4.1">98.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.5">94.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.6">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.7"><span class="ltx_text ltx_font_bold" id="S4.T2.19.19.7.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.8"><span class="ltx_text ltx_font_bold" id="S4.T2.19.19.8.1">90.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different components on the model's performance.  The base model (ℳ₀) uses rectified flow without goal point guidance, averaging all generated trajectories for the final output.  Adding the distance score map (ℳ₁) improves the model by providing distance information for guidance.  Further enhancement comes from incorporating the drivable area compliance (DAC) score map (ℳ₂), which adds constraints to keep trajectories within drivable areas. Finally, adding a trajectory scorer (ℳ₃) refines the selection process for the optimal trajectory among the candidates.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study on the influence of each component. ℳ0subscriptℳ0\mathcal{M}_{0}caligraphic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT is the base model, which uses rectified flow without goal point guidance and averages all generated trajectories to produce the final output. ℳ1subscriptℳ1\mathcal{M}_{1}caligraphic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT and ℳ2subscriptℳ2\mathcal{M}_{2}caligraphic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT introduce the distance score map and DAC score map, respectively, to guide the rectified flow. ℳ3subscriptℳ3\mathcal{M}_{3}caligraphic_M start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT builds upon ℳ1subscriptℳ1\mathcal{M}_{1}caligraphic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT by incorporating trajectory scorer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1"><math alttext="T" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">italic_T</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2"><math alttext="\mathbf{Inf.Time}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.2"><semantics id="S4.T3.2.2.2.2.m1.2a"><mrow id="S4.T3.2.2.2.2.m1.2.3.2" xref="S4.T3.2.2.2.2.m1.2.3.1.cmml"><mi id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml">𝐈𝐧𝐟</mi><mo id="S4.T3.2.2.2.2.m1.2.3.2.1" lspace="0em" rspace="0.167em" xref="S4.T3.2.2.2.2.m1.2.3.1a.cmml">.</mo><mi id="S4.T3.2.2.2.2.m1.2.2" xref="S4.T3.2.2.2.2.m1.2.2.cmml">𝐓𝐢𝐦𝐞</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.2b"><apply id="S4.T3.2.2.2.2.m1.2.3.1.cmml" xref="S4.T3.2.2.2.2.m1.2.3.2"><csymbol cd="ambiguous" id="S4.T3.2.2.2.2.m1.2.3.1a.cmml" xref="S4.T3.2.2.2.2.m1.2.3.2.1">formulae-sequence</csymbol><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">𝐈𝐧𝐟</ci><ci id="S4.T3.2.2.2.2.m1.2.2.cmml" xref="S4.T3.2.2.2.2.m1.2.2">𝐓𝐢𝐦𝐞</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.2c">\mathbf{Inf.Time}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.2d">bold_Inf . bold_Time</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4">
<math alttext="\mathbf{S_{NC}}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><msub id="S4.T3.3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.cmml"><mi id="S4.T3.3.3.3.3.m1.1.1.2" xref="S4.T3.3.3.3.3.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.3.3.3.3.m1.1.1.3" xref="S4.T3.3.3.3.3.m1.1.1.3.cmml">𝐍𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T3.3.3.3.3.m1.1.1.2.cmml" xref="S4.T3.3.3.3.3.m1.1.1.2">𝐒</ci><ci id="S4.T3.3.3.3.3.m1.1.1.3.cmml" xref="S4.T3.3.3.3.3.m1.1.1.3">𝐍𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\mathbf{S_{NC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">bold_S start_POSTSUBSCRIPT bold_NC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m2.1"><semantics id="S4.T3.4.4.4.4.m2.1a"><mo id="S4.T3.4.4.4.4.m2.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m2.1b"><ci id="S4.T3.4.4.4.4.m2.1.1.cmml" xref="S4.T3.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6.6">
<math alttext="\mathbf{S_{DAC}}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><msub id="S4.T3.5.5.5.5.m1.1.1" xref="S4.T3.5.5.5.5.m1.1.1.cmml"><mi id="S4.T3.5.5.5.5.m1.1.1.2" xref="S4.T3.5.5.5.5.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.5.5.5.5.m1.1.1.3" xref="S4.T3.5.5.5.5.m1.1.1.3.cmml">𝐃𝐀𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><apply id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.5.m1.1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T3.5.5.5.5.m1.1.1.2.cmml" xref="S4.T3.5.5.5.5.m1.1.1.2">𝐒</ci><ci id="S4.T3.5.5.5.5.m1.1.1.3.cmml" xref="S4.T3.5.5.5.5.m1.1.1.3">𝐃𝐀𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\mathbf{S_{DAC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">bold_S start_POSTSUBSCRIPT bold_DAC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m2.1"><semantics id="S4.T3.6.6.6.6.m2.1a"><mo id="S4.T3.6.6.6.6.m2.1.1" stretchy="false" xref="S4.T3.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m2.1b"><ci id="S4.T3.6.6.6.6.m2.1.1.cmml" xref="S4.T3.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.8.8.8">
<math alttext="\mathbf{S_{TTC}}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><msub id="S4.T3.7.7.7.7.m1.1.1" xref="S4.T3.7.7.7.7.m1.1.1.cmml"><mi id="S4.T3.7.7.7.7.m1.1.1.2" xref="S4.T3.7.7.7.7.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.7.7.7.7.m1.1.1.3" xref="S4.T3.7.7.7.7.m1.1.1.3.cmml">𝐓𝐓𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><apply id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.7.7.m1.1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S4.T3.7.7.7.7.m1.1.1.2.cmml" xref="S4.T3.7.7.7.7.m1.1.1.2">𝐒</ci><ci id="S4.T3.7.7.7.7.m1.1.1.3.cmml" xref="S4.T3.7.7.7.7.m1.1.1.3">𝐓𝐓𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\mathbf{S_{TTC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">bold_S start_POSTSUBSCRIPT bold_TTC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.m2.1"><semantics id="S4.T3.8.8.8.8.m2.1a"><mo id="S4.T3.8.8.8.8.m2.1.1" stretchy="false" xref="S4.T3.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.m2.1b"><ci id="S4.T3.8.8.8.8.m2.1.1.cmml" xref="S4.T3.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.10.10.10.10">
<math alttext="\mathbf{S_{CF}}" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.9.m1.1a"><msub id="S4.T3.9.9.9.9.m1.1.1" xref="S4.T3.9.9.9.9.m1.1.1.cmml"><mi id="S4.T3.9.9.9.9.m1.1.1.2" xref="S4.T3.9.9.9.9.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.9.9.9.9.m1.1.1.3" xref="S4.T3.9.9.9.9.m1.1.1.3.cmml">𝐂𝐅</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.m1.1b"><apply id="S4.T3.9.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.9.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.9.9.9.9.m1.1.1.1.cmml" xref="S4.T3.9.9.9.9.m1.1.1">subscript</csymbol><ci id="S4.T3.9.9.9.9.m1.1.1.2.cmml" xref="S4.T3.9.9.9.9.m1.1.1.2">𝐒</ci><ci id="S4.T3.9.9.9.9.m1.1.1.3.cmml" xref="S4.T3.9.9.9.9.m1.1.1.3">𝐂𝐅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.m1.1c">\mathbf{S_{CF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.m1.1d">bold_S start_POSTSUBSCRIPT bold_CF end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.10.10.10.10.m2.1"><semantics id="S4.T3.10.10.10.10.m2.1a"><mo id="S4.T3.10.10.10.10.m2.1.1" stretchy="false" xref="S4.T3.10.10.10.10.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.10.m2.1b"><ci id="S4.T3.10.10.10.10.m2.1.1.cmml" xref="S4.T3.10.10.10.10.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.10.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.10.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.12.12.12.12">
<math alttext="\mathbf{S_{EP}}" class="ltx_Math" display="inline" id="S4.T3.11.11.11.11.m1.1"><semantics id="S4.T3.11.11.11.11.m1.1a"><msub id="S4.T3.11.11.11.11.m1.1.1" xref="S4.T3.11.11.11.11.m1.1.1.cmml"><mi id="S4.T3.11.11.11.11.m1.1.1.2" xref="S4.T3.11.11.11.11.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.11.11.11.11.m1.1.1.3" xref="S4.T3.11.11.11.11.m1.1.1.3.cmml">𝐄𝐏</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.11.m1.1b"><apply id="S4.T3.11.11.11.11.m1.1.1.cmml" xref="S4.T3.11.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.11.11.11.11.m1.1.1.1.cmml" xref="S4.T3.11.11.11.11.m1.1.1">subscript</csymbol><ci id="S4.T3.11.11.11.11.m1.1.1.2.cmml" xref="S4.T3.11.11.11.11.m1.1.1.2">𝐒</ci><ci id="S4.T3.11.11.11.11.m1.1.1.3.cmml" xref="S4.T3.11.11.11.11.m1.1.1.3">𝐄𝐏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.11.m1.1c">\mathbf{S_{EP}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.11.m1.1d">bold_S start_POSTSUBSCRIPT bold_EP end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.12.12.12.12.m2.1"><semantics id="S4.T3.12.12.12.12.m2.1a"><mo id="S4.T3.12.12.12.12.m2.1.1" stretchy="false" xref="S4.T3.12.12.12.12.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.12.m2.1b"><ci id="S4.T3.12.12.12.12.m2.1.1.cmml" xref="S4.T3.12.12.12.12.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.12.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.12.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.14.14.14.14">
<math alttext="\mathbf{S_{PDM}}" class="ltx_Math" display="inline" id="S4.T3.13.13.13.13.m1.1"><semantics id="S4.T3.13.13.13.13.m1.1a"><msub id="S4.T3.13.13.13.13.m1.1.1" xref="S4.T3.13.13.13.13.m1.1.1.cmml"><mi id="S4.T3.13.13.13.13.m1.1.1.2" xref="S4.T3.13.13.13.13.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T3.13.13.13.13.m1.1.1.3" xref="S4.T3.13.13.13.13.m1.1.1.3.cmml">𝐏𝐃𝐌</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.13.m1.1b"><apply id="S4.T3.13.13.13.13.m1.1.1.cmml" xref="S4.T3.13.13.13.13.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.13.13.13.13.m1.1.1.1.cmml" xref="S4.T3.13.13.13.13.m1.1.1">subscript</csymbol><ci id="S4.T3.13.13.13.13.m1.1.1.2.cmml" xref="S4.T3.13.13.13.13.m1.1.1.2">𝐒</ci><ci id="S4.T3.13.13.13.13.m1.1.1.3.cmml" xref="S4.T3.13.13.13.13.m1.1.1.3">𝐏𝐃𝐌</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.13.m1.1c">\mathbf{S_{PDM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.13.m1.1d">bold_S start_POSTSUBSCRIPT bold_PDM end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.14.14.14.14.m2.1"><semantics id="S4.T3.14.14.14.14.m2.1a"><mo id="S4.T3.14.14.14.14.m2.1.1" stretchy="false" xref="S4.T3.14.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.14.m2.1b"><ci id="S4.T3.14.14.14.14.m2.1.1.cmml" xref="S4.T3.14.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.14.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.14.14.15.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.14.14.15.1.1">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.2">177.8ms</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.3">98.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.4">98.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.5">94.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.6">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.7">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.15.1.8">89.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.16.2">
<td class="ltx_td ltx_align_left" id="S4.T3.14.14.16.2.1">10</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.2">92.4ms</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.3">98.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.4">98.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.5">94.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.6">100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.16.2.7.1">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.16.2.8">90.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.17.3">
<td class="ltx_td ltx_align_left" id="S4.T3.14.14.17.3.1">5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.2">49.0ms</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.3">98.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.17.3.4.1">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.17.3.5.1">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.17.3.6.1">100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.7">84.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.17.3.8"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.17.3.8.1">90.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.18.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.14.14.18.4.1">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.2">10.4ms</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.18.4.3.1">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.4">97.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.5">94.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.6">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.7">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.14.14.18.4.8">88.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of varying the number of denoising steps (T) during inference on the performance of the GoalFlow model.  It shows that the model's performance metrics (SNC, SDAC, STTC, SCF, SEP, and SPDM) remain relatively stable across a wide range of denoising steps from 20 to 1, demonstrating the model's robustness to this hyperparameter.  This is a key finding, highlighting the efficiency of GoalFlow, as it requires only a few denoising steps to achieve excellent results.  The inference time is also shown, demonstrating the significant reduction in computation time as the number of steps decreases.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of different timesteps in inference. T𝑇Titalic_T denotes the number of denoising steps during inference. The results indicate that the model’s performance is robust to variations of denoising steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1"><math alttext="\sigma" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">σ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">𝜎</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\sigma</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_σ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3">
<math alttext="\mathbf{S_{NC}}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><msub id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml"><mi id="S4.T4.2.2.2.2.m1.1.1.2" xref="S4.T4.2.2.2.2.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.2.2.2.2.m1.1.1.3" xref="S4.T4.2.2.2.2.m1.1.1.3.cmml">𝐍𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T4.2.2.2.2.m1.1.1.2.cmml" xref="S4.T4.2.2.2.2.m1.1.1.2">𝐒</ci><ci id="S4.T4.2.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3">𝐍𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\mathbf{S_{NC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">bold_S start_POSTSUBSCRIPT bold_NC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m2.1"><semantics id="S4.T4.3.3.3.3.m2.1a"><mo id="S4.T4.3.3.3.3.m2.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m2.1b"><ci id="S4.T4.3.3.3.3.m2.1.1.cmml" xref="S4.T4.3.3.3.3.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.5.5.5">
<math alttext="\mathbf{S_{DAC}}" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><msub id="S4.T4.4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.4.m1.1.1.cmml"><mi id="S4.T4.4.4.4.4.m1.1.1.2" xref="S4.T4.4.4.4.4.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.4.4.4.4.m1.1.1.3" xref="S4.T4.4.4.4.4.m1.1.1.3.cmml">𝐃𝐀𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><apply id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.4.4.4.4.m1.1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S4.T4.4.4.4.4.m1.1.1.2.cmml" xref="S4.T4.4.4.4.4.m1.1.1.2">𝐒</ci><ci id="S4.T4.4.4.4.4.m1.1.1.3.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3">𝐃𝐀𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\mathbf{S_{DAC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">bold_S start_POSTSUBSCRIPT bold_DAC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.m2.1"><semantics id="S4.T4.5.5.5.5.m2.1a"><mo id="S4.T4.5.5.5.5.m2.1.1" stretchy="false" xref="S4.T4.5.5.5.5.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.m2.1b"><ci id="S4.T4.5.5.5.5.m2.1.1.cmml" xref="S4.T4.5.5.5.5.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.7.7.7.7">
<math alttext="\mathbf{S_{TTC}}" class="ltx_Math" display="inline" id="S4.T4.6.6.6.6.m1.1"><semantics id="S4.T4.6.6.6.6.m1.1a"><msub id="S4.T4.6.6.6.6.m1.1.1" xref="S4.T4.6.6.6.6.m1.1.1.cmml"><mi id="S4.T4.6.6.6.6.m1.1.1.2" xref="S4.T4.6.6.6.6.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.6.6.6.6.m1.1.1.3" xref="S4.T4.6.6.6.6.m1.1.1.3.cmml">𝐓𝐓𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.6.m1.1b"><apply id="S4.T4.6.6.6.6.m1.1.1.cmml" xref="S4.T4.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.6.6.6.6.m1.1.1.1.cmml" xref="S4.T4.6.6.6.6.m1.1.1">subscript</csymbol><ci id="S4.T4.6.6.6.6.m1.1.1.2.cmml" xref="S4.T4.6.6.6.6.m1.1.1.2">𝐒</ci><ci id="S4.T4.6.6.6.6.m1.1.1.3.cmml" xref="S4.T4.6.6.6.6.m1.1.1.3">𝐓𝐓𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.6.m1.1c">\mathbf{S_{TTC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.6.m1.1d">bold_S start_POSTSUBSCRIPT bold_TTC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.7.7.7.7.m2.1"><semantics id="S4.T4.7.7.7.7.m2.1a"><mo id="S4.T4.7.7.7.7.m2.1.1" stretchy="false" xref="S4.T4.7.7.7.7.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.7.m2.1b"><ci id="S4.T4.7.7.7.7.m2.1.1.cmml" xref="S4.T4.7.7.7.7.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.7.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.7.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.9.9.9">
<math alttext="\mathbf{S_{CF}}" class="ltx_Math" display="inline" id="S4.T4.8.8.8.8.m1.1"><semantics id="S4.T4.8.8.8.8.m1.1a"><msub id="S4.T4.8.8.8.8.m1.1.1" xref="S4.T4.8.8.8.8.m1.1.1.cmml"><mi id="S4.T4.8.8.8.8.m1.1.1.2" xref="S4.T4.8.8.8.8.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.8.8.8.8.m1.1.1.3" xref="S4.T4.8.8.8.8.m1.1.1.3.cmml">𝐂𝐅</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.8.m1.1b"><apply id="S4.T4.8.8.8.8.m1.1.1.cmml" xref="S4.T4.8.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.8.8.8.8.m1.1.1.1.cmml" xref="S4.T4.8.8.8.8.m1.1.1">subscript</csymbol><ci id="S4.T4.8.8.8.8.m1.1.1.2.cmml" xref="S4.T4.8.8.8.8.m1.1.1.2">𝐒</ci><ci id="S4.T4.8.8.8.8.m1.1.1.3.cmml" xref="S4.T4.8.8.8.8.m1.1.1.3">𝐂𝐅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.8.m1.1c">\mathbf{S_{CF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.8.m1.1d">bold_S start_POSTSUBSCRIPT bold_CF end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.9.9.9.9.m2.1"><semantics id="S4.T4.9.9.9.9.m2.1a"><mo id="S4.T4.9.9.9.9.m2.1.1" stretchy="false" xref="S4.T4.9.9.9.9.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.9.m2.1b"><ci id="S4.T4.9.9.9.9.m2.1.1.cmml" xref="S4.T4.9.9.9.9.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.9.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.9.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.11.11.11.11">
<math alttext="\mathbf{S_{EP}}" class="ltx_Math" display="inline" id="S4.T4.10.10.10.10.m1.1"><semantics id="S4.T4.10.10.10.10.m1.1a"><msub id="S4.T4.10.10.10.10.m1.1.1" xref="S4.T4.10.10.10.10.m1.1.1.cmml"><mi id="S4.T4.10.10.10.10.m1.1.1.2" xref="S4.T4.10.10.10.10.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.10.10.10.10.m1.1.1.3" xref="S4.T4.10.10.10.10.m1.1.1.3.cmml">𝐄𝐏</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.10.m1.1b"><apply id="S4.T4.10.10.10.10.m1.1.1.cmml" xref="S4.T4.10.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.10.10.10.10.m1.1.1.1.cmml" xref="S4.T4.10.10.10.10.m1.1.1">subscript</csymbol><ci id="S4.T4.10.10.10.10.m1.1.1.2.cmml" xref="S4.T4.10.10.10.10.m1.1.1.2">𝐒</ci><ci id="S4.T4.10.10.10.10.m1.1.1.3.cmml" xref="S4.T4.10.10.10.10.m1.1.1.3">𝐄𝐏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.10.m1.1c">\mathbf{S_{EP}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.10.m1.1d">bold_S start_POSTSUBSCRIPT bold_EP end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.11.11.11.11.m2.1"><semantics id="S4.T4.11.11.11.11.m2.1a"><mo id="S4.T4.11.11.11.11.m2.1.1" stretchy="false" xref="S4.T4.11.11.11.11.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.11.m2.1b"><ci id="S4.T4.11.11.11.11.m2.1.1.cmml" xref="S4.T4.11.11.11.11.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.11.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.11.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.13.13.13.13">
<math alttext="\mathbf{S_{PDM}}" class="ltx_Math" display="inline" id="S4.T4.12.12.12.12.m1.1"><semantics id="S4.T4.12.12.12.12.m1.1a"><msub id="S4.T4.12.12.12.12.m1.1.1" xref="S4.T4.12.12.12.12.m1.1.1.cmml"><mi id="S4.T4.12.12.12.12.m1.1.1.2" xref="S4.T4.12.12.12.12.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T4.12.12.12.12.m1.1.1.3" xref="S4.T4.12.12.12.12.m1.1.1.3.cmml">𝐏𝐃𝐌</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.12.12.m1.1b"><apply id="S4.T4.12.12.12.12.m1.1.1.cmml" xref="S4.T4.12.12.12.12.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.12.12.12.12.m1.1.1.1.cmml" xref="S4.T4.12.12.12.12.m1.1.1">subscript</csymbol><ci id="S4.T4.12.12.12.12.m1.1.1.2.cmml" xref="S4.T4.12.12.12.12.m1.1.1.2">𝐒</ci><ci id="S4.T4.12.12.12.12.m1.1.1.3.cmml" xref="S4.T4.12.12.12.12.m1.1.1.3">𝐏𝐃𝐌</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.12.12.m1.1c">\mathbf{S_{PDM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.12.12.m1.1d">bold_S start_POSTSUBSCRIPT bold_PDM end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.13.13.13.13.m2.1"><semantics id="S4.T4.13.13.13.13.m2.1a"><mo id="S4.T4.13.13.13.13.m2.1.1" stretchy="false" xref="S4.T4.13.13.13.13.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.13.13.13.13.m2.1b"><ci id="S4.T4.13.13.13.13.m2.1.1.cmml" xref="S4.T4.13.13.13.13.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.13.13.13.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.13.13.13.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.13.13.14.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.13.13.14.1.1">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.2">98.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.3">98.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.4">94.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.5">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.14.1.6.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.14.1.7">90.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.13.13.15.2">
<td class="ltx_td ltx_align_left" id="S4.T4.13.13.15.2.1">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.15.2.2.1">98.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.15.2.3.1">98.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.15.2.4.1">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.15.2.5.1">100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.6">85.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.15.2.7"><span class="ltx_text ltx_font_bold" id="S4.T4.13.13.15.2.7.1">90.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.13.13.16.3">
<td class="ltx_td ltx_align_left" id="S4.T4.13.13.16.3.1">0.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.2">87.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.3">76.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.4">69.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.5">32.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.6">56.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.16.3.7">49.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.13.13.17.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.13.13.17.4.1">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.2">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.3">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.4">44.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.5">2.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.6">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.13.13.17.4.7">18.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the effect of varying the standard deviation (σ) of the initial noise distribution (x₀) on the performance of the GoalFlow model.  The standard deviation (σ) controls the amount of noise added to the initial state of the trajectory generation process.  The results demonstrate that model performance is relatively robust to changes in σ when σ is below 0.1. However, as σ increases beyond 0.1, the performance drops significantly, indicating that too much initial noise negatively impacts the model's ability to generate high-quality trajectories.
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of different values of σ𝜎\sigmaitalic_σ on the initial noise distribution. σ𝜎\sigmaitalic_σ is the standard deviation of x0subscript𝑥0x_{0}italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT. The results show that performance drops significantly when σ𝜎\sigmaitalic_σ exceeds 0.1, but remains stable for values below 0.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.10.10.10.11"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.10.11.1">Dim</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.10.10.10.12"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.10.12.1">Backbone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.2">
<math alttext="\mathbf{S_{NC}}" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><msub id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml"><mi id="S4.T5.1.1.1.1.m1.1.1.2" xref="S4.T5.1.1.1.1.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T5.1.1.1.1.m1.1.1.3" xref="S4.T5.1.1.1.1.m1.1.1.3.cmml">𝐍𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><apply id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.1.1.1.1.m1.1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T5.1.1.1.1.m1.1.1.2.cmml" xref="S4.T5.1.1.1.1.m1.1.1.2">𝐒</ci><ci id="S4.T5.1.1.1.1.m1.1.1.3.cmml" xref="S4.T5.1.1.1.1.m1.1.1.3">𝐍𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\mathbf{S_{NC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">bold_S start_POSTSUBSCRIPT bold_NC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m2.1"><semantics id="S4.T5.2.2.2.2.m2.1a"><mo id="S4.T5.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m2.1b"><ci id="S4.T5.2.2.2.2.m2.1.1.cmml" xref="S4.T5.2.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.4.4.4.4">
<math alttext="\mathbf{S_{DAC}}" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><msub id="S4.T5.3.3.3.3.m1.1.1" xref="S4.T5.3.3.3.3.m1.1.1.cmml"><mi id="S4.T5.3.3.3.3.m1.1.1.2" xref="S4.T5.3.3.3.3.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T5.3.3.3.3.m1.1.1.3" xref="S4.T5.3.3.3.3.m1.1.1.3.cmml">𝐃𝐀𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><apply id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.3.3.3.3.m1.1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T5.3.3.3.3.m1.1.1.2.cmml" xref="S4.T5.3.3.3.3.m1.1.1.2">𝐒</ci><ci id="S4.T5.3.3.3.3.m1.1.1.3.cmml" xref="S4.T5.3.3.3.3.m1.1.1.3">𝐃𝐀𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\mathbf{S_{DAC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">bold_S start_POSTSUBSCRIPT bold_DAC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.m2.1"><semantics id="S4.T5.4.4.4.4.m2.1a"><mo id="S4.T5.4.4.4.4.m2.1.1" stretchy="false" xref="S4.T5.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.m2.1b"><ci id="S4.T5.4.4.4.4.m2.1.1.cmml" xref="S4.T5.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.6.6.6.6">
<math alttext="\mathbf{S_{TTC}}" class="ltx_Math" display="inline" id="S4.T5.5.5.5.5.m1.1"><semantics id="S4.T5.5.5.5.5.m1.1a"><msub id="S4.T5.5.5.5.5.m1.1.1" xref="S4.T5.5.5.5.5.m1.1.1.cmml"><mi id="S4.T5.5.5.5.5.m1.1.1.2" xref="S4.T5.5.5.5.5.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T5.5.5.5.5.m1.1.1.3" xref="S4.T5.5.5.5.5.m1.1.1.3.cmml">𝐓𝐓𝐂</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.5.m1.1b"><apply id="S4.T5.5.5.5.5.m1.1.1.cmml" xref="S4.T5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.5.5.5.5.m1.1.1.1.cmml" xref="S4.T5.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T5.5.5.5.5.m1.1.1.2.cmml" xref="S4.T5.5.5.5.5.m1.1.1.2">𝐒</ci><ci id="S4.T5.5.5.5.5.m1.1.1.3.cmml" xref="S4.T5.5.5.5.5.m1.1.1.3">𝐓𝐓𝐂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.5.m1.1c">\mathbf{S_{TTC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.5.m1.1d">bold_S start_POSTSUBSCRIPT bold_TTC end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.6.6.6.6.m2.1"><semantics id="S4.T5.6.6.6.6.m2.1a"><mo id="S4.T5.6.6.6.6.m2.1.1" stretchy="false" xref="S4.T5.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.6.m2.1b"><ci id="S4.T5.6.6.6.6.m2.1.1.cmml" xref="S4.T5.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.6.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.8.8.8.8">
<math alttext="\mathbf{S_{EP}}" class="ltx_Math" display="inline" id="S4.T5.7.7.7.7.m1.1"><semantics id="S4.T5.7.7.7.7.m1.1a"><msub id="S4.T5.7.7.7.7.m1.1.1" xref="S4.T5.7.7.7.7.m1.1.1.cmml"><mi id="S4.T5.7.7.7.7.m1.1.1.2" xref="S4.T5.7.7.7.7.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T5.7.7.7.7.m1.1.1.3" xref="S4.T5.7.7.7.7.m1.1.1.3.cmml">𝐄𝐏</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T5.7.7.7.7.m1.1b"><apply id="S4.T5.7.7.7.7.m1.1.1.cmml" xref="S4.T5.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.7.7.7.7.m1.1.1.1.cmml" xref="S4.T5.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S4.T5.7.7.7.7.m1.1.1.2.cmml" xref="S4.T5.7.7.7.7.m1.1.1.2">𝐒</ci><ci id="S4.T5.7.7.7.7.m1.1.1.3.cmml" xref="S4.T5.7.7.7.7.m1.1.1.3">𝐄𝐏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.7.7.7.m1.1c">\mathbf{S_{EP}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.7.7.7.m1.1d">bold_S start_POSTSUBSCRIPT bold_EP end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.8.8.8.8.m2.1"><semantics id="S4.T5.8.8.8.8.m2.1a"><mo id="S4.T5.8.8.8.8.m2.1.1" stretchy="false" xref="S4.T5.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.8.8.8.m2.1b"><ci id="S4.T5.8.8.8.8.m2.1.1.cmml" xref="S4.T5.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.8.8.8.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.10.10.10.10">
<math alttext="\mathbf{S_{PDM}}" class="ltx_Math" display="inline" id="S4.T5.9.9.9.9.m1.1"><semantics id="S4.T5.9.9.9.9.m1.1a"><msub id="S4.T5.9.9.9.9.m1.1.1" xref="S4.T5.9.9.9.9.m1.1.1.cmml"><mi id="S4.T5.9.9.9.9.m1.1.1.2" xref="S4.T5.9.9.9.9.m1.1.1.2.cmml">𝐒</mi><mi id="S4.T5.9.9.9.9.m1.1.1.3" xref="S4.T5.9.9.9.9.m1.1.1.3.cmml">𝐏𝐃𝐌</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T5.9.9.9.9.m1.1b"><apply id="S4.T5.9.9.9.9.m1.1.1.cmml" xref="S4.T5.9.9.9.9.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.9.9.9.9.m1.1.1.1.cmml" xref="S4.T5.9.9.9.9.m1.1.1">subscript</csymbol><ci id="S4.T5.9.9.9.9.m1.1.1.2.cmml" xref="S4.T5.9.9.9.9.m1.1.1.2">𝐒</ci><ci id="S4.T5.9.9.9.9.m1.1.1.3.cmml" xref="S4.T5.9.9.9.9.m1.1.1.3">𝐏𝐃𝐌</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.9.9.9.m1.1c">\mathbf{S_{PDM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.9.9.9.m1.1d">bold_S start_POSTSUBSCRIPT bold_PDM end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.10.10.10.10.m2.1"><semantics id="S4.T5.10.10.10.10.m2.1a"><mo id="S4.T5.10.10.10.10.m2.1.1" stretchy="false" xref="S4.T5.10.10.10.10.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.10.10.10.m2.1b"><ci id="S4.T5.10.10.10.10.m2.1.1.cmml" xref="S4.T5.10.10.10.10.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.10.10.10.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.10.10.10.m2.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.10.10.11.1.1">256</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.10.10.11.1.2">V2-99</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.11.1.3">97.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.11.1.4">96.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.11.1.5">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.11.1.6">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.11.1.7">86.5</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.10.10.12.2.1">512</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.10.10.12.2.2">V2-99</th>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.12.2.3">97.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.12.2.4"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.12.2.4.1">97.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.12.2.5">92.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.12.2.6">83.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.12.2.7">88.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.10.10.13.3.1">1024</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.10.10.13.3.2">V2-99</th>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.13.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.13.3.3.1">98.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.13.3.4">97.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.13.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.13.3.5.1">94.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.13.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.13.3.6.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.13.3.7"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.13.3.7.1">89.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.10.10.14.4.1">256</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.10.10.14.4.2">resnet34</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.14.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.14.4.3.1">98.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.14.4.4">93.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.14.4.5"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.14.4.5.1">94.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.14.4.6">79.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.10.14.4.7">85.7</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.10.10.15.5.1">256</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.10.10.15.5.2">V2-99</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.15.5.3">97.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.15.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.15.5.4.1">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.15.5.5">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.15.5.6"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.15.5.6.1">81.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.15.5.7"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.15.5.7.1">86.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of scaling the transformer's hidden dimension and changing the image backbone in the GoalFlow model.  The results show that increasing the hidden dimension and using a larger backbone (V2-99 vs. ResNet-34) generally lead to performance improvements, as measured by various metrics like SNC, SDAC, STTC, SEP, and SPDM.  The table isolates the effect of trajectory post-processing by comparing results to the performance of model M2, which includes all other components except the changes made for this experiment.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of Scaling Model. We examine the impact of scaling the Transformer’s hidden dimension and changing the image backbone. Both increasing the hidden dimension and using a larger backbone improve performance. To isolate the effect of trajectory post-processing, we compare with ℳ2subscriptℳ2\mathcal{M}_{2}caligraphic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05689/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05689/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}