---
title: "DexTrack: Towards Generalizable Neural Tracking Control for Dexterous Manipulation from Human References"
summary: "DexTrack achieves highly generalizable neural tracking control for dexterous robot manipulation by iteratively training a controller using high-quality demonstrations refined via homotopy optimization..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09614 {{< /keyword >}}
{{< keyword icon="writer" >}} Xueyi Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09614" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09614" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09614/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Dexterous robotic manipulation remains a challenge due to complex dynamics and the need for adaptability. Current methods, such as reinforcement learning and trajectory optimization, often fall short due to dependence on task-specific rewards or precise models.  This necessitates a novel approach that can handle the intricacies of contact-rich scenarios and generalize across diverse objects and tasks. 

DexTrack addresses this challenge by leveraging a data-driven approach. It uses a large-scale dataset of human demonstrations paired with corresponding robot actions to train a neural tracking controller.  The approach further refines these demonstrations through an iterative process involving reinforcement and imitation learning.  This ensures both high quality and diversity of training data, enhancing the controller's ability to generalize across diverse manipulation tasks. Results show significant improvement over baselines in both simulated and real-world experiments, showcasing the generalizability, adaptability, and robustness of DexTrack.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DexTrack uses a novel neural tracking controller for dexterous manipulation, improving on existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The approach employs iterative training with high-quality demonstrations and homotopy optimization for enhanced performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DexTrack demonstrates significant improvements in success rates and generalizability compared to leading baselines, particularly in complex tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **DexTrack**, a novel approach to dexterous robot manipulation that significantly improves upon existing methods.  Its **iterative training** and **homotopy optimization** techniques are highly relevant to current research trends in robotics, and its **generalizability and robustness** offer exciting possibilities for future research.  The results achieved, especially the **10% improvement in success rates**, are impressive and provide a strong foundation for future work in complex, real-world manipulation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09614/x1.png)

> 🔼 This figure illustrates DexTrack's neural tracking controller, trained on human-demonstrated dexterous manipulations.  Panel (a) shows the controller's inference process, generating hand commands from kinematic references to closely track input trajectories. Panel (b) highlights DexTrack's ability to generalize to complex, novel tasks involving thin objects and intricate in-hand manipulations. Panel (c) demonstrates the controller's robustness to noisy kinematic data and its effectiveness in real-world settings.  Orange rectangles in the figure represent kinematic references.
> <details>
> <summary>read the caption</summary>
> Figure 1:  DexTrack  learns a generalizable neural tracking controller for dexterous manipulation from human references.  It generates hand action commands from kinematic references, ensuring close tracking of input trajectories (Fig. (a)), generalizes to novel and challenging tasks involving thin objects, complex movements and intricate in-hand manipulations (Fig. (b)), and demonstrates robustness to large kinematics noise and utility in real-world scenarios (Fig. (c)). Kinematic references are illustrated in orange rectangles and background.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.9.9">
<tr class="ltx_tr" id="S4.T1.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.9.9.9.10">Dataset</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.9.9.9.11">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.2.3"></span> <span class="ltx_text" id="S4.T1.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.2.2.2.2.2">
<span class="ltx_tr" id="S4.T1.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.2.2.2.2.2"><math alttext="R_{\text{err}}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.1.1.1.m1.1a"><msub id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.2.cmml">R</mi><mtext id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.2">𝑅</ci><ci id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3"><mtext id="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.1.1.1.1.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.1.1.1.m1.1c">R_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.2.2.2.m2.2"><semantics id="S4.T1.2.2.2.2.2.2.2.2.m2.2a"><mrow id="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.2" xref="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.1.cmml"><mtext id="S4.T1.2.2.2.2.2.2.2.2.m2.1.1" xref="S4.T1.2.2.2.2.2.2.2.2.m2.1.1a.cmml">rad</mtext><mo id="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.2.1" mathcolor="#000000" xref="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.1.cmml">,</mo><mo id="S4.T1.2.2.2.2.2.2.2.2.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="S4.T1.2.2.2.2.2.2.2.2.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.2.2.2.m2.2b"><list id="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.1.cmml" xref="S4.T1.2.2.2.2.2.2.2.2.m2.2.3.2"><ci id="S4.T1.2.2.2.2.2.2.2.2.m2.1.1a.cmml" xref="S4.T1.2.2.2.2.2.2.2.2.m2.1.1"><mtext id="S4.T1.2.2.2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T1.2.2.2.2.2.2.2.2.m2.1.1">rad</mtext></ci><ci id="S4.T1.2.2.2.2.2.2.2.2.m2.2.2.cmml" xref="S4.T1.2.2.2.2.2.2.2.2.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.2.2.2.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.2.2.2.m2.2d">rad , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.2.2.2.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.4.3"></span> <span class="ltx_text" id="S4.T1.4.4.4.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.4.4.4.4.2.2">
<span class="ltx_tr" id="S4.T1.4.4.4.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4.4.2.2.2.2"><math alttext="T_{\text{err}}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.1.1.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.1.1.1.m1.1a"><msub id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.2.cmml">T</mi><mtext id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.1.1.1.m1.1b"><apply id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.2">𝑇</ci><ci id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3"><mtext id="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.3.3.3.3.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.1.1.1.m1.1c">T_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.1.1.1.m1.1d">italic_T start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="{cm},\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.2.2.2.2.m2.2"><semantics id="S4.T1.4.4.4.4.2.2.2.2.m2.2a"><mrow id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.2.cmml"><mrow id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml"><mi id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.2" mathcolor="#000000" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml">c</mi><mo id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.1" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.3" mathcolor="#000000" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml">m</mi></mrow><mo id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.2" mathcolor="#000000" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.2.cmml">,</mo><mo id="S4.T1.4.4.4.4.2.2.2.2.m2.1.1" lspace="0em" mathcolor="#000000" stretchy="false" xref="S4.T1.4.4.4.4.2.2.2.2.m2.1.1.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.2.2.2.2.m2.2b"><list id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.2.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1"><apply id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1"><times id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.1"></times><ci id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.2">𝑐</ci><ci id="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.2.2.1.1.3">𝑚</ci></apply><ci id="S4.T1.4.4.4.4.2.2.2.2.m2.1.1.cmml" xref="S4.T1.4.4.4.4.2.2.2.2.m2.1.1">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.2.2.2.2.m2.2c">{cm},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.2.2.2.2.m2.2d">italic_c italic_m , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="S4.T1.4.4.4.4.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.6.6.6">
<math alttext="E_{\text{wrist}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><msub id="S4.T1.5.5.5.5.m1.1.1" xref="S4.T1.5.5.5.5.m1.1.1.cmml"><mi id="S4.T1.5.5.5.5.m1.1.1.2" mathcolor="#000000" xref="S4.T1.5.5.5.5.m1.1.1.2.cmml">E</mi><mtext id="S4.T1.5.5.5.5.m1.1.1.3" mathcolor="#000000" xref="S4.T1.5.5.5.5.m1.1.1.3a.cmml">wrist</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T1.5.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.5.m1.1.1.2">𝐸</ci><ci id="S4.T1.5.5.5.5.m1.1.1.3a.cmml" xref="S4.T1.5.5.5.5.m1.1.1.3"><mtext id="S4.T1.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.5.5.5.5.m1.1.1.3">wrist</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">E_{\text{wrist}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">italic_E start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m2.1"><semantics id="S4.T1.6.6.6.6.m2.1a"><mo id="S4.T1.6.6.6.6.m2.1.1" mathcolor="#000000" stretchy="false" xref="S4.T1.6.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m2.1b"><ci id="S4.T1.6.6.6.6.m2.1.1.cmml" xref="S4.T1.6.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.8.8.8.8">
<math alttext="E_{\text{finger}}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><msub id="S4.T1.7.7.7.7.m1.1.1" xref="S4.T1.7.7.7.7.m1.1.1.cmml"><mi id="S4.T1.7.7.7.7.m1.1.1.2" mathcolor="#000000" xref="S4.T1.7.7.7.7.m1.1.1.2.cmml">E</mi><mtext id="S4.T1.7.7.7.7.m1.1.1.3" mathcolor="#000000" xref="S4.T1.7.7.7.7.m1.1.1.3a.cmml">finger</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><apply id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.7.7.7.7.m1.1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S4.T1.7.7.7.7.m1.1.1.2.cmml" xref="S4.T1.7.7.7.7.m1.1.1.2">𝐸</ci><ci id="S4.T1.7.7.7.7.m1.1.1.3a.cmml" xref="S4.T1.7.7.7.7.m1.1.1.3"><mtext id="S4.T1.7.7.7.7.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.7.7.7.7.m1.1.1.3">finger</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">E_{\text{finger}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">italic_E start_POSTSUBSCRIPT finger end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m2.2"><semantics id="S4.T1.8.8.8.8.m2.2a"><mrow id="S4.T1.8.8.8.8.m2.2.3.2" xref="S4.T1.8.8.8.8.m2.2.3.1.cmml"><mtext id="S4.T1.8.8.8.8.m2.1.1" xref="S4.T1.8.8.8.8.m2.1.1a.cmml">rad</mtext><mo id="S4.T1.8.8.8.8.m2.2.3.2.1" mathcolor="#000000" xref="S4.T1.8.8.8.8.m2.2.3.1.cmml">,</mo><mo id="S4.T1.8.8.8.8.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="S4.T1.8.8.8.8.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m2.2b"><list id="S4.T1.8.8.8.8.m2.2.3.1.cmml" xref="S4.T1.8.8.8.8.m2.2.3.2"><ci id="S4.T1.8.8.8.8.m2.1.1a.cmml" xref="S4.T1.8.8.8.8.m2.1.1"><mtext id="S4.T1.8.8.8.8.m2.1.1.cmml" xref="S4.T1.8.8.8.8.m2.1.1">rad</mtext></ci><ci id="S4.T1.8.8.8.8.m2.2.2.cmml" xref="S4.T1.8.8.8.8.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m2.2d">rad , ↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.9.9.9.9">Success Rate (<math alttext="\%,\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mrow id="S4.T1.9.9.9.9.m1.1b"><mo id="S4.T1.9.9.9.9.m1.1.1" mathcolor="#000000">%</mo><mo id="S4.T1.9.9.9.9.m1.1.2" mathcolor="#000000">,</mo><mo id="S4.T1.9.9.9.9.m1.1.3" lspace="0em" mathcolor="#000000" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\%,\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">% , ↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.10.1" rowspan="6"><span class="ltx_text" id="S4.T1.9.9.10.1.1"> GRAB</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.10.2">DGrasp</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.3">0.4493</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.4">6.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.5">0.1372</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.6">0.6039</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.10.7">34.52/52.79</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.11">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.11.1">PPO (OmniGrasp rew.)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11.2">0.4404</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11.3">6.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11.4">0.1722</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11.5">0.6418</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.11.6">35.53/54.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.12">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.12.1">PPO (w/o sup., tracking rew.)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.2">0.3945</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.3">6.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.4"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.12.4.1" style="color:#FF0000;">0.1076</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.5">0.5899</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.12.6">38.58/54.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.13.1">Ours  (w/o data, w/o homotopy)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.13.2">0.3443</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.13.3">7.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.13.4">0.1225</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.13.5"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.13.5.1" style="color:#0000FF;">0.5218</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.13.6">39.59/57.87</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.14">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.14.1">Ours  (w/o data)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.14.2"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.14.2.1" style="color:#0000FF;">0.3415</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.14.3"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.14.3.1" style="color:#0000FF;">4.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.14.4">0.1483</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.14.5">0.5264</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.14.6">
<span class="ltx_text ltx_font_italic" id="S4.T1.9.9.14.6.1" style="color:#0000FF;">43.15</span>/<span class="ltx_text ltx_font_italic" id="S4.T1.9.9.14.6.2" style="color:#0000FF;">62.44</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.15">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.15.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.15.2.1" style="color:#FF0000;">0.3303</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.15.3.1" style="color:#FF0000;">4.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.15.4"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.15.4.1" style="color:#0000FF;">0.1118</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.15.5.1" style="color:#FF0000;">0.5048</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.15.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.9.9.15.6.1" style="color:#FF0000;">46.70</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.9.9.15.6.2" style="color:#FF0000;">65.48</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.9.9.16.1" rowspan="6"><span class="ltx_text" id="S4.T1.9.9.16.1.1"> TACO</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.16.2">DGrasp</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.16.3">0.5021</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.16.4">5.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.16.5"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.16.5.1" style="color:#FF0000;">0.1129</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.16.6">0.4737</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.16.7">38.42/47.78</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.17">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.17.1">PPO (OmniGrasp rew.)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.17.2">0.5174</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.17.3">5.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.17.4">0.1279</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.17.5">0.4945</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.17.6">33.5/46.31</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.18">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.18.1">PPO (w/o sup., tracking rew.)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.18.2"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.18.2.1" style="color:#0000FF;">0.4815</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.18.3">4.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.18.4"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.18.4.1" style="color:#0000FF;">0.1195</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.18.5"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.18.5.1" style="color:#0000FF;">0.4682</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.18.6">34.98/57.64</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.9.19.1">Ours  (w/o data, w/o homotopy)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.19.2"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.19.2.1" style="color:#FF0000;">0.4444</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.19.3">2.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.19.4">0.1782</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.19.5">0.5438</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.9.19.6">44.83/67.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.20">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.20.1">Ours  (w/o data)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.20.2">0.4854</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.20.3"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.20.3.1" style="color:#0000FF;">2.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.20.4">0.1698</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.20.5">0.4772</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.20.6">
<span class="ltx_text ltx_font_italic" id="S4.T1.9.9.20.6.1" style="color:#0000FF;">47.78</span>/<span class="ltx_text ltx_font_italic" id="S4.T1.9.9.20.6.2" style="color:#0000FF;">72.41</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.9.9.21.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.21.2">0.4953</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.21.3"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.21.3.1" style="color:#FF0000;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.21.4">0.1510</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.21.5"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.21.5.1" style="color:#FF0000;">0.4661</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.9.9.21.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.9.9.21.6.1" style="color:#FF0000;">48.77</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.9.9.21.6.2" style="color:#FF0000;">74.38</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for dexterous manipulation tracking control, focusing on their performance across various metrics.  The metrics evaluated include per-frame errors for object rotation and translation, as well as wrist and finger joint errors. The success rate of each method is also provided.  For the proposed method ('Ours'), ablation studies are included, demonstrating the impact of using high-quality robot tracking demonstrations ('Ours (w/o data)', 'Ours (w/o data, w/o homotopy)') during imitation learning.  The results show the superior performance of the proposed method compared to several baseline methods across both datasets, indicating its better generalization and robustness.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative evaluations. Bold red and italic blue values for best and the second best-performed ones respectively. “Ours (w/o) data” and “Ours (w/o data, w/o homotopy)” are two ablated versions w.r.t. quality of robot tracking demonstrations used in imitation learning (see Section 5 for details).
> </details>





### In-depth insights


#### DexTrack's Design
DexTrack's design is a sophisticated iterative approach to neural tracking control for dexterous manipulation.  It cleverly integrates **reinforcement learning (RL)** and **imitation learning (IL)**, leveraging a data flywheel to iteratively improve both the controller's performance and the quality of its training data. The core of DexTrack is a neural network controller trained on high-quality robot tracking demonstrations, carefully curated to showcase diverse and complex manipulation skills. A key innovation is the use of **homotopy optimization**, a chain-of-thought style approach that simplifies challenging tracking problems into a series of progressively easier subproblems, thereby enriching the dataset with complex successful trajectories.  This iterative refinement process ensures that DexTrack not only learns from successful demonstrations but also actively generates new, high-quality data, leading to superior generalization and robustness.  The use of a residual action space in the RL training further enhances sample efficiency. The design successfully addresses the challenges of contact-rich dynamics and noisy kinematic references, leading to a general-purpose controller applicable to a wide array of objects and manipulation tasks.

#### Data Flywheel's Role
The concept of a 'Data Flywheel' in the context of this research paper centers on an iterative process of data collection and model refinement.  **It's a virtuous cycle**, where initial demonstrations of dexterous manipulation, acquired through human reference, are used to train a neural tracking controller. This controller then becomes a tool to generate *higher-quality* and more *diverse* demonstrations by improving the accuracy and handling of complex scenarios. These new, improved demonstrations are fed back into the system to further refine the controller's capabilities. This iterative feedback loop is crucial to overcoming the limitations of traditional reinforcement learning and imitation learning approaches that often struggle with complex dynamics and limited data.  **The flywheel accelerates progress** beyond what could be achieved with a single training pass, resulting in a significantly more robust and generalized neural tracking controller.  **The key is the synergistic interaction** between data generation and model refinement, showcasing how high-quality data drives improved performance, which in turn enables the acquisition of even better data.

#### Homotopy Optimization
The concept of "Homotopy Optimization" in the context of the research paper suggests a novel approach to enhance the quality and diversity of robot tracking demonstrations.  The core idea revolves around iteratively solving challenging trajectory tracking problems by gradually simplifying them, mimicking a 'chain-of-thought' process.  This is achieved by leveraging a learned tracking controller to generate a series of intermediate, progressively easier-to-track trajectories, effectively creating a homotopy path from a complex reference trajectory to a simplified one.  **The homotopy optimization scheme significantly aids in generating higher-quality demonstrations by easing the difficulty of directly tracking noisy or complex human references**. This approach not only enhances data quality but also allows the generation of more diverse data, thereby improving the generalization capabilities of the trained neural controller. **The iterative process, combining the homotopy optimization with reinforcement and imitation learning, constitutes a data flywheel, improving the controller and demonstration quality mutually**.  While computationally more expensive, the results suggest that this method contributes significantly to enhanced performance, exceeding leading baselines in success rates for dexterous manipulation tasks.

#### Generalization Ability
The concept of "Generalization Ability" in a machine learning context, specifically within the scope of dexterous robotic manipulation, is crucial.  It refers to a model's capacity to successfully perform tasks beyond those explicitly seen during training.  The paper likely assesses this by testing the trained neural controller on unseen object geometries, novel manipulation sequences, or even real-world scenarios with noisy sensory inputs.  **High generalization ability suggests robustness**, meaning the system isn't brittle and can adapt to variations in the environment or task parameters.  **Quantitative metrics**, such as success rates across diverse test sets or error rates in novel situations, would be used to evaluate this ability.  A qualitative assessment, perhaps through visual observation of the robot's performance, may also be included to provide a richer understanding.  **The degree of generalization directly impacts the practical applicability** of the controller, as real-world scenarios inherently involve uncertainty and variability.  Successfully generalizing to a wide range of tasks is a key benchmark for the practicality and future development of such technology.

#### Future Work
Future work in dexterous manipulation should prioritize **improving data efficiency** and **generalization**.  Developing more efficient methods for data collection and annotation, such as **sim-to-real transfer** techniques, will be crucial.  **Addressing the challenge of long-horizon planning** in dynamic environments through advanced reinforcement learning or hierarchical approaches is vital.  Exploration of **novel reward functions** that effectively capture intricate manipulation skills and complex task objectives is needed.  Furthermore, research into **more robust and adaptable controllers** that can handle unexpected disturbances and diverse object properties is essential.  Finally, transferring learned skills to different robotic platforms and investigating the **integration of tactile sensing** for enhanced dexterity will significantly advance the field.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09614/x2.png)

> 🔼 DexTrack uses a neural network to control a robot hand's dexterous manipulation by learning from human-demonstrated examples. The system iteratively improves its performance by alternating between two phases: (1) Training the neural tracking controller using a large dataset of high-quality robot demonstrations of dexterous manipulations; and (2) Enhancing the dataset through a homotopy optimization scheme, where the controller itself guides the generation of improved demonstrations by solving challenging trajectory tracking problems.  This iterative approach leads to a more robust and generalizable controller.
> <details>
> <summary>read the caption</summary>
> Figure 2: DexTrack   learns a generalizable neural tracking controller for dexterous manipulation from human references. It alternates between training the tracking controller using abundant and high-quality robot tracking demonstrations and improving the data via the tracking controller through a homotopy optimization scheme.
> </details>



![](https://arxiv.org/html/2502.09614/x3.png)

> 🔼 This figure demonstrates the robustness of DexTrack, the neural tracking controller, when handling unreasonable states.  It showcases scenarios where the robot hand encounters significant deviations from expected kinematic references, such as deep penetrations or impossible configurations.  The caption encourages viewers to visit the project website and accompanying video for a dynamic demonstration of the controller's ability to successfully track and complete the manipulation task despite these challenging conditions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Robustness w.r.t. unreasonable states.  Please check our website and video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x4.png)

> 🔼 This figure presents a qualitative comparison of the proposed DexTrack method against two baseline methods (PPO with OmniGrasp reward and PPO without supervision, using a tracking reward) across various dexterous manipulation tasks.  Each row shows a different manipulation task involving a variety of objects and movements, including in-hand object reorientations and interactions with thin objects.  The images showcase the resulting robot hand and object trajectories generated by each method, highlighting DexTrack's superior ability to accurately track the human-demonstrated kinematic references.  For a complete and dynamic view of these results, the authors recommend visiting their website and accompanying video.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparisons.  Please check our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x5.png)

> 🔼 This figure shows a plot illustrating the relationship between the number of demonstrations used to train the model and the model's performance on the TACO dataset.  The x-axis represents the proportion of the total demonstrations used for training, ranging from 0 to 1. The y-axis displays the success rate achieved by the model. The plot demonstrates a clear upward trend, indicating that increasing the number of demonstrations improves the model's success rate in dexterous manipulation tasks. The plot suggests that even with a large number of demonstrations, there might still be room for improvement in the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Scaling the amount of demonstrations.
> </details>



![](https://arxiv.org/html/2502.09614/x6.png)

> 🔼 This figure illustrates the DexTrack framework, which learns a neural tracking controller for dexterous manipulation using human references.  The process involves two alternating stages: (1) Training the controller using many high-quality robot tracking demonstrations. These demonstrations consist of paired human kinematic references (showing desired hand and object movements) and corresponding robot actions. (2) Improving the quality of the demonstrations themselves by using the already trained controller in a homotopy optimization scheme.  This scheme refines the trajectories, making them more suitable for controller training and improving the controller's ability to generalize to novel tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: DexTrack learns a generalizable neural tracking controller for dexterous manipulation from human references. It alternates between training the tracking controller using abundant and high-quality robot tracking demonstrations, and improving the data via the tracking controller through a homotopy optimization scheme.
> </details>



![](https://arxiv.org/html/2502.09614/x7.png)

> 🔼 This figure demonstrates the robustness of the DexTrack neural tracking controller when handling objects and manipulations unseen during training.  The controller successfully tracks diverse, complex movements involving novel objects with varied shapes and sizes, including thin and delicate objects. The video and website provide additional context and animated results for a more thorough understanding of the controller's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Robustness towards out-of-distribution objects and manipulations.  Please refer to our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x8.png)

> 🔼 This figure provides additional qualitative comparisons of the DexTrack method's performance against a baseline method on various dexterous manipulation tasks.  The tasks showcase the model's ability to handle complex in-hand object reorientations, interactions with thin objects, and other challenging manipulation scenarios.  Because the image itself is limited, the caption directs the reader to the project website and accompanying video for a complete and dynamic visualization of the results.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Additional qualitative comparisons.  Please refer to our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x9.png)

> 🔼 This figure shows additional qualitative results from real-world experiments.  It provides a visual comparison of the DexTrack controller's performance against a baseline method on various dexterous manipulation tasks.  The images showcase the robot's ability to handle complex movements, intricate in-hand object reorientations, and interactions with thin objects. Because the still images don't fully capture the dynamic nature of the robot's movements, the caption suggests referring to the accompanying video and project website for a better understanding of the results.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Additional real-world qualitative results.  Please refer to our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x10.png)

> 🔼 This figure showcases instances where the DexTrack system failed during real-world experiments.  The failures primarily involve the object dropping from the robot's grasp due to variations in contact.  These failures highlight the challenges of applying a simulated controller to the real-world's unpredictable dynamics and underscore areas for future improvement in robustness and contact management. The animated results on the project website provide further visual detail.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Failure cases in real-world experiments.  Please refer to our website for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x11.png)

> 🔼 Figure 11 demonstrates the effectiveness of the homotopy optimization scheme by comparing the results of lifting a thin flute, passing a small sphere, and grasping an apple with and without the scheme.  The homotopy optimization scheme helps the model achieve better tracking results, particularly in challenging scenarios.  The accompanying video on the project website provides animated results for a better understanding.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Effectiveness of the homotopy optimization scheme.  Please refer to our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x12.png)

> 🔼 This figure showcases instances where the DexTrack method struggles.  The scenarios depicted involve objects from novel categories or situations with challenging thin geometries that the model has not been adequately trained to handle. The accompanying video and website provide animated demonstrations to illustrate these failures more comprehensively.
> <details>
> <summary>read the caption</summary>
> Figure 12:  Failure Cases.  Please refer to our website and the accompanying video for animated results.
> </details>



![](https://arxiv.org/html/2502.09614/x13.png)

> 🔼 This figure displays various novel objects from the TACO dataset that belong to object categories already present in the training set.  This showcases the model's ability to generalize to new objects within familiar categories, demonstrating the impact of the data augmentation technique used in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 13:  Examples of novel objects from the seen object category (TACO).
> </details>



![](https://arxiv.org/html/2502.09614/x14.png)

> 🔼 This figure shows examples of objects from categories not seen during the training of the dexterous manipulation model.  These objects are used to test the model's ability to generalize to unseen object types, highlighting its capacity for handling novel manipulation tasks and showcasing its adaptability beyond objects encountered during the training process.
> <details>
> <summary>read the caption</summary>
> Figure 14:  Examples of objects from new object categories (TACO).
> </details>



![](https://arxiv.org/html/2502.09614/x15.png)

> 🔼 The figure shows the setup for real-world experiments.  A Franka Emika Panda robot arm is used, equipped with a LEAP hand to interact with real-world objects.  A RealSense camera provides the necessary visual information for object pose estimation (using FoundationPose). The setup demonstrates the transfer of the learned tracking controller from simulation to the real world.
> <details>
> <summary>read the caption</summary>
> Figure 15:  Real-world experiment setup.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.1">
<tr class="ltx_tr" id="S4.T2.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.5.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.2"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.2.1">apple</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.3"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.3.1">banana</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.4"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.4.1">duck</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.5"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.5.1">elephant</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.6"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.6.1">flashlight</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.7"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.7.1">flute</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.8"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.8.1">hammer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.9"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.9.1">hand</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.10"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.10.1">phone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.11"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.1.1.11.1">waterbottle</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.1.2.1">PPO (w/o sup., tracking rew)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2">0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.3">25.0/25.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.4">50.0/25.0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.5">50.0/0.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.6">50.0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.7">0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.8">25.0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.9">66.7/33.3/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.10">25.0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.11">33.3/33.3/0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.5.1.3.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.2.1" style="color:#FF0000;">25.0</span>/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.3.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.3.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.3.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.4">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.4.1" style="color:#FF0000;">75.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.4.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.4.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.5">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.5.1" style="color:#FF0000;">75.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.5.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.5.3" style="color:#FF0000;">50.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.6">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.6.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.6.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.6.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.7">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.7.1" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.7.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.7.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.8">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.8.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.8.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.8.3" style="color:#FF0000;">50.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.9">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.9.1" style="color:#FF0000;">66.7</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.9.2" style="color:#FF0000;">33.3</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.9.3" style="color:#FF0000;">33.3</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.10">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.10.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.10.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.10.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.3.11">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.11.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.11.2" style="color:#FF0000;">33.3</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.11.3" style="color:#FF0000;">33.3</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the success rates achieved by different methods on real-world dexterous manipulation tasks.  The tasks involve interacting with various objects, including those requiring intricate movements and/or precise manipulation.  Success is measured across three levels of difficulty, representing increasingly complex manipulation requirements. The table highlights the superior performance of the proposed method compared to baseline approaches.
> <details>
> <summary>read the caption</summary>
> Table 2:  Real-world quantitative comparisons. Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.5.5">
<tr class="ltx_tr" id="A1.T3.5.5.5">
<td class="ltx_td ltx_border_tt" id="A1.T3.5.5.5.6"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1"><math alttext="w_{o,p}" class="ltx_Math" display="inline" id="A1.T3.1.1.1.1.m1.2"><semantics id="A1.T3.1.1.1.1.m1.2a"><msub id="A1.T3.1.1.1.1.m1.2.3" xref="A1.T3.1.1.1.1.m1.2.3.cmml"><mi id="A1.T3.1.1.1.1.m1.2.3.2" mathcolor="#000000" xref="A1.T3.1.1.1.1.m1.2.3.2.cmml">w</mi><mrow id="A1.T3.1.1.1.1.m1.2.2.2.4" xref="A1.T3.1.1.1.1.m1.2.2.2.3.cmml"><mi id="A1.T3.1.1.1.1.m1.1.1.1.1" mathcolor="#000000" xref="A1.T3.1.1.1.1.m1.1.1.1.1.cmml">o</mi><mo id="A1.T3.1.1.1.1.m1.2.2.2.4.1" mathcolor="#000000" xref="A1.T3.1.1.1.1.m1.2.2.2.3.cmml">,</mo><mi id="A1.T3.1.1.1.1.m1.2.2.2.2" mathcolor="#000000" xref="A1.T3.1.1.1.1.m1.2.2.2.2.cmml">p</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.1.m1.2b"><apply id="A1.T3.1.1.1.1.m1.2.3.cmml" xref="A1.T3.1.1.1.1.m1.2.3"><csymbol cd="ambiguous" id="A1.T3.1.1.1.1.m1.2.3.1.cmml" xref="A1.T3.1.1.1.1.m1.2.3">subscript</csymbol><ci id="A1.T3.1.1.1.1.m1.2.3.2.cmml" xref="A1.T3.1.1.1.1.m1.2.3.2">𝑤</ci><list id="A1.T3.1.1.1.1.m1.2.2.2.3.cmml" xref="A1.T3.1.1.1.1.m1.2.2.2.4"><ci id="A1.T3.1.1.1.1.m1.1.1.1.1.cmml" xref="A1.T3.1.1.1.1.m1.1.1.1.1">𝑜</ci><ci id="A1.T3.1.1.1.1.m1.2.2.2.2.cmml" xref="A1.T3.1.1.1.1.m1.2.2.2.2">𝑝</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.1.m1.2c">w_{o,p}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.1.m1.2d">italic_w start_POSTSUBSCRIPT italic_o , italic_p end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.2.2.2"><math alttext="w_{o,q}" class="ltx_Math" display="inline" id="A1.T3.2.2.2.2.m1.2"><semantics id="A1.T3.2.2.2.2.m1.2a"><msub id="A1.T3.2.2.2.2.m1.2.3" xref="A1.T3.2.2.2.2.m1.2.3.cmml"><mi id="A1.T3.2.2.2.2.m1.2.3.2" mathcolor="#000000" xref="A1.T3.2.2.2.2.m1.2.3.2.cmml">w</mi><mrow id="A1.T3.2.2.2.2.m1.2.2.2.4" xref="A1.T3.2.2.2.2.m1.2.2.2.3.cmml"><mi id="A1.T3.2.2.2.2.m1.1.1.1.1" mathcolor="#000000" xref="A1.T3.2.2.2.2.m1.1.1.1.1.cmml">o</mi><mo id="A1.T3.2.2.2.2.m1.2.2.2.4.1" mathcolor="#000000" xref="A1.T3.2.2.2.2.m1.2.2.2.3.cmml">,</mo><mi id="A1.T3.2.2.2.2.m1.2.2.2.2" mathcolor="#000000" xref="A1.T3.2.2.2.2.m1.2.2.2.2.cmml">q</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.2.2.m1.2b"><apply id="A1.T3.2.2.2.2.m1.2.3.cmml" xref="A1.T3.2.2.2.2.m1.2.3"><csymbol cd="ambiguous" id="A1.T3.2.2.2.2.m1.2.3.1.cmml" xref="A1.T3.2.2.2.2.m1.2.3">subscript</csymbol><ci id="A1.T3.2.2.2.2.m1.2.3.2.cmml" xref="A1.T3.2.2.2.2.m1.2.3.2">𝑤</ci><list id="A1.T3.2.2.2.2.m1.2.2.2.3.cmml" xref="A1.T3.2.2.2.2.m1.2.2.2.4"><ci id="A1.T3.2.2.2.2.m1.1.1.1.1.cmml" xref="A1.T3.2.2.2.2.m1.1.1.1.1">𝑜</ci><ci id="A1.T3.2.2.2.2.m1.2.2.2.2.cmml" xref="A1.T3.2.2.2.2.m1.2.2.2.2">𝑞</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.2.2.m1.2c">w_{o,q}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.2.2.m1.2d">italic_w start_POSTSUBSCRIPT italic_o , italic_q end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.3.3"><math alttext="w_{\text{wrist}}\cdot w_{\text{trans}}" class="ltx_Math" display="inline" id="A1.T3.3.3.3.3.m1.1"><semantics id="A1.T3.3.3.3.3.m1.1a"><mrow id="A1.T3.3.3.3.3.m1.1.1" xref="A1.T3.3.3.3.3.m1.1.1.cmml"><msub id="A1.T3.3.3.3.3.m1.1.1.2" xref="A1.T3.3.3.3.3.m1.1.1.2.cmml"><mi id="A1.T3.3.3.3.3.m1.1.1.2.2" mathcolor="#000000" xref="A1.T3.3.3.3.3.m1.1.1.2.2.cmml">w</mi><mtext id="A1.T3.3.3.3.3.m1.1.1.2.3" mathcolor="#000000" xref="A1.T3.3.3.3.3.m1.1.1.2.3a.cmml">wrist</mtext></msub><mo id="A1.T3.3.3.3.3.m1.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="A1.T3.3.3.3.3.m1.1.1.1.cmml">⋅</mo><msub id="A1.T3.3.3.3.3.m1.1.1.3" xref="A1.T3.3.3.3.3.m1.1.1.3.cmml"><mi id="A1.T3.3.3.3.3.m1.1.1.3.2" mathcolor="#000000" xref="A1.T3.3.3.3.3.m1.1.1.3.2.cmml">w</mi><mtext id="A1.T3.3.3.3.3.m1.1.1.3.3" mathcolor="#000000" xref="A1.T3.3.3.3.3.m1.1.1.3.3a.cmml">trans</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.3.3.m1.1b"><apply id="A1.T3.3.3.3.3.m1.1.1.cmml" xref="A1.T3.3.3.3.3.m1.1.1"><ci id="A1.T3.3.3.3.3.m1.1.1.1.cmml" xref="A1.T3.3.3.3.3.m1.1.1.1">⋅</ci><apply id="A1.T3.3.3.3.3.m1.1.1.2.cmml" xref="A1.T3.3.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="A1.T3.3.3.3.3.m1.1.1.2.1.cmml" xref="A1.T3.3.3.3.3.m1.1.1.2">subscript</csymbol><ci id="A1.T3.3.3.3.3.m1.1.1.2.2.cmml" xref="A1.T3.3.3.3.3.m1.1.1.2.2">𝑤</ci><ci id="A1.T3.3.3.3.3.m1.1.1.2.3a.cmml" xref="A1.T3.3.3.3.3.m1.1.1.2.3"><mtext id="A1.T3.3.3.3.3.m1.1.1.2.3.cmml" mathsize="70%" xref="A1.T3.3.3.3.3.m1.1.1.2.3">wrist</mtext></ci></apply><apply id="A1.T3.3.3.3.3.m1.1.1.3.cmml" xref="A1.T3.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.3.3.3.3.m1.1.1.3.1.cmml" xref="A1.T3.3.3.3.3.m1.1.1.3">subscript</csymbol><ci id="A1.T3.3.3.3.3.m1.1.1.3.2.cmml" xref="A1.T3.3.3.3.3.m1.1.1.3.2">𝑤</ci><ci id="A1.T3.3.3.3.3.m1.1.1.3.3a.cmml" xref="A1.T3.3.3.3.3.m1.1.1.3.3"><mtext id="A1.T3.3.3.3.3.m1.1.1.3.3.cmml" mathsize="70%" xref="A1.T3.3.3.3.3.m1.1.1.3.3">trans</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.3.3.m1.1c">w_{\text{wrist}}\cdot w_{\text{trans}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.3.3.m1.1d">italic_w start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT ⋅ italic_w start_POSTSUBSCRIPT trans end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.4.4.4.4"><math alttext="w_{\text{wrist}}\cdot w_{\text{ornt}}" class="ltx_Math" display="inline" id="A1.T3.4.4.4.4.m1.1"><semantics id="A1.T3.4.4.4.4.m1.1a"><mrow id="A1.T3.4.4.4.4.m1.1.1" xref="A1.T3.4.4.4.4.m1.1.1.cmml"><msub id="A1.T3.4.4.4.4.m1.1.1.2" xref="A1.T3.4.4.4.4.m1.1.1.2.cmml"><mi id="A1.T3.4.4.4.4.m1.1.1.2.2" mathcolor="#000000" xref="A1.T3.4.4.4.4.m1.1.1.2.2.cmml">w</mi><mtext id="A1.T3.4.4.4.4.m1.1.1.2.3" mathcolor="#000000" xref="A1.T3.4.4.4.4.m1.1.1.2.3a.cmml">wrist</mtext></msub><mo id="A1.T3.4.4.4.4.m1.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="A1.T3.4.4.4.4.m1.1.1.1.cmml">⋅</mo><msub id="A1.T3.4.4.4.4.m1.1.1.3" xref="A1.T3.4.4.4.4.m1.1.1.3.cmml"><mi id="A1.T3.4.4.4.4.m1.1.1.3.2" mathcolor="#000000" xref="A1.T3.4.4.4.4.m1.1.1.3.2.cmml">w</mi><mtext id="A1.T3.4.4.4.4.m1.1.1.3.3" mathcolor="#000000" xref="A1.T3.4.4.4.4.m1.1.1.3.3a.cmml">ornt</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.4.4.4.4.m1.1b"><apply id="A1.T3.4.4.4.4.m1.1.1.cmml" xref="A1.T3.4.4.4.4.m1.1.1"><ci id="A1.T3.4.4.4.4.m1.1.1.1.cmml" xref="A1.T3.4.4.4.4.m1.1.1.1">⋅</ci><apply id="A1.T3.4.4.4.4.m1.1.1.2.cmml" xref="A1.T3.4.4.4.4.m1.1.1.2"><csymbol cd="ambiguous" id="A1.T3.4.4.4.4.m1.1.1.2.1.cmml" xref="A1.T3.4.4.4.4.m1.1.1.2">subscript</csymbol><ci id="A1.T3.4.4.4.4.m1.1.1.2.2.cmml" xref="A1.T3.4.4.4.4.m1.1.1.2.2">𝑤</ci><ci id="A1.T3.4.4.4.4.m1.1.1.2.3a.cmml" xref="A1.T3.4.4.4.4.m1.1.1.2.3"><mtext id="A1.T3.4.4.4.4.m1.1.1.2.3.cmml" mathsize="70%" xref="A1.T3.4.4.4.4.m1.1.1.2.3">wrist</mtext></ci></apply><apply id="A1.T3.4.4.4.4.m1.1.1.3.cmml" xref="A1.T3.4.4.4.4.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.4.4.4.4.m1.1.1.3.1.cmml" xref="A1.T3.4.4.4.4.m1.1.1.3">subscript</csymbol><ci id="A1.T3.4.4.4.4.m1.1.1.3.2.cmml" xref="A1.T3.4.4.4.4.m1.1.1.3.2">𝑤</ci><ci id="A1.T3.4.4.4.4.m1.1.1.3.3a.cmml" xref="A1.T3.4.4.4.4.m1.1.1.3.3"><mtext id="A1.T3.4.4.4.4.m1.1.1.3.3.cmml" mathsize="70%" xref="A1.T3.4.4.4.4.m1.1.1.3.3">ornt</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.4.4.4.4.m1.1c">w_{\text{wrist}}\cdot w_{\text{ornt}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.4.4.4.4.m1.1d">italic_w start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT ⋅ italic_w start_POSTSUBSCRIPT ornt end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.5.5.5.5"><math alttext="w_{\text{finger}}" class="ltx_Math" display="inline" id="A1.T3.5.5.5.5.m1.1"><semantics id="A1.T3.5.5.5.5.m1.1a"><msub id="A1.T3.5.5.5.5.m1.1.1" xref="A1.T3.5.5.5.5.m1.1.1.cmml"><mi id="A1.T3.5.5.5.5.m1.1.1.2" mathcolor="#000000" xref="A1.T3.5.5.5.5.m1.1.1.2.cmml">w</mi><mtext id="A1.T3.5.5.5.5.m1.1.1.3" mathcolor="#000000" xref="A1.T3.5.5.5.5.m1.1.1.3a.cmml">finger</mtext></msub><annotation-xml encoding="MathML-Content" id="A1.T3.5.5.5.5.m1.1b"><apply id="A1.T3.5.5.5.5.m1.1.1.cmml" xref="A1.T3.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.5.5.5.5.m1.1.1.1.cmml" xref="A1.T3.5.5.5.5.m1.1.1">subscript</csymbol><ci id="A1.T3.5.5.5.5.m1.1.1.2.cmml" xref="A1.T3.5.5.5.5.m1.1.1.2">𝑤</ci><ci id="A1.T3.5.5.5.5.m1.1.1.3a.cmml" xref="A1.T3.5.5.5.5.m1.1.1.3"><mtext id="A1.T3.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="A1.T3.5.5.5.5.m1.1.1.3">finger</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.5.5.5.5.m1.1c">w_{\text{finger}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.5.5.5.5.m1.1d">italic_w start_POSTSUBSCRIPT finger end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.1">Weight</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.2">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.3">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.4">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.5">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.5.6.6">0.05</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the weights assigned to different components of the reward function used in reinforcement learning to train the neural tracking controller.  The reward function guides the controller's learning process by assigning different importance levels to various aspects of successful trajectory tracking, such as how well the object's position, orientation, and the robot's hand and finger positions match the reference trajectory, and the overall hand-object interaction affinity.
> <details>
> <summary>read the caption</summary>
> Table 3:  Weights of different reward components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T4.9.9">
<tr class="ltx_tr" id="A2.T4.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.9.9.9.10">Dataset</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.9.9.9.11">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.2.2.2.2">
<span class="ltx_text" id="A2.T4.2.2.2.2.3"></span> <span class="ltx_text" id="A2.T4.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T4.2.2.2.2.2.2">
<span class="ltx_tr" id="A2.T4.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.2.2.2.2.2.2.2.2"><math alttext="R_{\text{err}}" class="ltx_Math" display="inline" id="A2.T4.1.1.1.1.1.1.1.1.m1.1"><semantics id="A2.T4.1.1.1.1.1.1.1.1.m1.1a"><msub id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.2.cmml">R</mi><mtext id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.1.1.1.1.1.m1.1b"><apply id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.2">𝑅</ci><ci id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3"><mtext id="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.1.1.1.1.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.1.1.1.1.1.m1.1c">R_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.1.1.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T4.2.2.2.2.2.2.2.2.m2.2"><semantics id="A2.T4.2.2.2.2.2.2.2.2.m2.2a"><mrow id="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.2" xref="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.1.cmml"><mtext id="A2.T4.2.2.2.2.2.2.2.2.m2.1.1" xref="A2.T4.2.2.2.2.2.2.2.2.m2.1.1a.cmml">rad</mtext><mo id="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.2.1" mathcolor="#000000" xref="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.1.cmml">,</mo><mo id="A2.T4.2.2.2.2.2.2.2.2.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T4.2.2.2.2.2.2.2.2.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.2.2.2.2.2.2.m2.2b"><list id="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.1.cmml" xref="A2.T4.2.2.2.2.2.2.2.2.m2.2.3.2"><ci id="A2.T4.2.2.2.2.2.2.2.2.m2.1.1a.cmml" xref="A2.T4.2.2.2.2.2.2.2.2.m2.1.1"><mtext id="A2.T4.2.2.2.2.2.2.2.2.m2.1.1.cmml" xref="A2.T4.2.2.2.2.2.2.2.2.m2.1.1">rad</mtext></ci><ci id="A2.T4.2.2.2.2.2.2.2.2.m2.2.2.cmml" xref="A2.T4.2.2.2.2.2.2.2.2.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.2.2.2.2.2.2.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.2.2.2.2.2.2.m2.2d">rad , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T4.2.2.2.2.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.4.4.4.4">
<span class="ltx_text" id="A2.T4.4.4.4.4.3"></span> <span class="ltx_text" id="A2.T4.4.4.4.4.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T4.4.4.4.4.2.2">
<span class="ltx_tr" id="A2.T4.4.4.4.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T4.4.4.4.4.2.2.2.2"><math alttext="T_{\text{err}}" class="ltx_Math" display="inline" id="A2.T4.3.3.3.3.1.1.1.1.m1.1"><semantics id="A2.T4.3.3.3.3.1.1.1.1.m1.1a"><msub id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.cmml"><mi id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.2.cmml">T</mi><mtext id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.3.3.1.1.1.1.m1.1b"><apply id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.1.cmml" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.2.cmml" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.2">𝑇</ci><ci id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3"><mtext id="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.3.3.3.3.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.3.3.1.1.1.1.m1.1c">T_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.3.3.1.1.1.1.m1.1d">italic_T start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="{cm},\downarrow" class="ltx_Math" display="inline" id="A2.T4.4.4.4.4.2.2.2.2.m2.2"><semantics id="A2.T4.4.4.4.4.2.2.2.2.m2.2a"><mrow id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.2.cmml"><mrow id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml"><mi id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.2" mathcolor="#000000" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml">c</mi><mo id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.1" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml">⁢</mo><mi id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.3" mathcolor="#000000" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml">m</mi></mrow><mo id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.2" mathcolor="#000000" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.2.cmml">,</mo><mo id="A2.T4.4.4.4.4.2.2.2.2.m2.1.1" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T4.4.4.4.4.2.2.2.2.m2.1.1.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.4.4.4.4.2.2.2.2.m2.2b"><list id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.2.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1"><apply id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1"><times id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.1"></times><ci id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.2">𝑐</ci><ci id="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.2.2.1.1.3">𝑚</ci></apply><ci id="A2.T4.4.4.4.4.2.2.2.2.m2.1.1.cmml" xref="A2.T4.4.4.4.4.2.2.2.2.m2.1.1">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.4.4.4.2.2.2.2.m2.2c">{cm},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.4.4.4.2.2.2.2.m2.2d">italic_c italic_m , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T4.4.4.4.4.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.6.6.6.6">
<math alttext="E_{\text{wrist}}" class="ltx_Math" display="inline" id="A2.T4.5.5.5.5.m1.1"><semantics id="A2.T4.5.5.5.5.m1.1a"><msub id="A2.T4.5.5.5.5.m1.1.1" xref="A2.T4.5.5.5.5.m1.1.1.cmml"><mi id="A2.T4.5.5.5.5.m1.1.1.2" mathcolor="#000000" xref="A2.T4.5.5.5.5.m1.1.1.2.cmml">E</mi><mtext id="A2.T4.5.5.5.5.m1.1.1.3" mathcolor="#000000" xref="A2.T4.5.5.5.5.m1.1.1.3a.cmml">wrist</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.5.5.5.5.m1.1b"><apply id="A2.T4.5.5.5.5.m1.1.1.cmml" xref="A2.T4.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.5.5.5.5.m1.1.1.1.cmml" xref="A2.T4.5.5.5.5.m1.1.1">subscript</csymbol><ci id="A2.T4.5.5.5.5.m1.1.1.2.cmml" xref="A2.T4.5.5.5.5.m1.1.1.2">𝐸</ci><ci id="A2.T4.5.5.5.5.m1.1.1.3a.cmml" xref="A2.T4.5.5.5.5.m1.1.1.3"><mtext id="A2.T4.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.5.5.5.5.m1.1.1.3">wrist</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.5.5.5.5.m1.1c">E_{\text{wrist}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.5.5.5.5.m1.1d">italic_E start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T4.6.6.6.6.m2.1"><semantics id="A2.T4.6.6.6.6.m2.1a"><mo id="A2.T4.6.6.6.6.m2.1.1" mathcolor="#000000" stretchy="false" xref="A2.T4.6.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T4.6.6.6.6.m2.1b"><ci id="A2.T4.6.6.6.6.m2.1.1.cmml" xref="A2.T4.6.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.6.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T4.6.6.6.6.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.8.8.8.8">
<math alttext="E_{\text{finger}}" class="ltx_Math" display="inline" id="A2.T4.7.7.7.7.m1.1"><semantics id="A2.T4.7.7.7.7.m1.1a"><msub id="A2.T4.7.7.7.7.m1.1.1" xref="A2.T4.7.7.7.7.m1.1.1.cmml"><mi id="A2.T4.7.7.7.7.m1.1.1.2" mathcolor="#000000" xref="A2.T4.7.7.7.7.m1.1.1.2.cmml">E</mi><mtext id="A2.T4.7.7.7.7.m1.1.1.3" mathcolor="#000000" xref="A2.T4.7.7.7.7.m1.1.1.3a.cmml">finger</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.7.7.7.7.m1.1b"><apply id="A2.T4.7.7.7.7.m1.1.1.cmml" xref="A2.T4.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.7.7.7.7.m1.1.1.1.cmml" xref="A2.T4.7.7.7.7.m1.1.1">subscript</csymbol><ci id="A2.T4.7.7.7.7.m1.1.1.2.cmml" xref="A2.T4.7.7.7.7.m1.1.1.2">𝐸</ci><ci id="A2.T4.7.7.7.7.m1.1.1.3a.cmml" xref="A2.T4.7.7.7.7.m1.1.1.3"><mtext id="A2.T4.7.7.7.7.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.7.7.7.7.m1.1.1.3">finger</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.7.7.7.7.m1.1c">E_{\text{finger}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.7.7.7.7.m1.1d">italic_E start_POSTSUBSCRIPT finger end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T4.8.8.8.8.m2.2"><semantics id="A2.T4.8.8.8.8.m2.2a"><mrow id="A2.T4.8.8.8.8.m2.2.3.2" xref="A2.T4.8.8.8.8.m2.2.3.1.cmml"><mtext id="A2.T4.8.8.8.8.m2.1.1" xref="A2.T4.8.8.8.8.m2.1.1a.cmml">rad</mtext><mo id="A2.T4.8.8.8.8.m2.2.3.2.1" mathcolor="#000000" xref="A2.T4.8.8.8.8.m2.2.3.1.cmml">,</mo><mo id="A2.T4.8.8.8.8.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T4.8.8.8.8.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.8.8.8.8.m2.2b"><list id="A2.T4.8.8.8.8.m2.2.3.1.cmml" xref="A2.T4.8.8.8.8.m2.2.3.2"><ci id="A2.T4.8.8.8.8.m2.1.1a.cmml" xref="A2.T4.8.8.8.8.m2.1.1"><mtext id="A2.T4.8.8.8.8.m2.1.1.cmml" xref="A2.T4.8.8.8.8.m2.1.1">rad</mtext></ci><ci id="A2.T4.8.8.8.8.m2.2.2.cmml" xref="A2.T4.8.8.8.8.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.8.8.8.8.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T4.8.8.8.8.m2.2d">rad , ↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.9.9.9.9">Success Rate (<math alttext="\%,\uparrow" class="ltx_math_unparsed" display="inline" id="A2.T4.9.9.9.9.m1.1"><semantics id="A2.T4.9.9.9.9.m1.1a"><mrow id="A2.T4.9.9.9.9.m1.1b"><mo id="A2.T4.9.9.9.9.m1.1.1" mathcolor="#000000">%</mo><mo id="A2.T4.9.9.9.9.m1.1.2" mathcolor="#000000">,</mo><mo id="A2.T4.9.9.9.9.m1.1.3" lspace="0em" mathcolor="#000000" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="A2.T4.9.9.9.9.m1.1c">\%,\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T4.9.9.9.9.m1.1d">% , ↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.9.9.10.1" rowspan="2"><span class="ltx_text" id="A2.T4.9.9.10.1.1"> GRAB</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.9.9.10.2">PPO (w/o sup., tracking rew.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.10.3">0.5813</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.10.4">6.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.10.5">0.1730</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.10.6">0.5439</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.10.7">36.04/55.84</td>
</tr>
<tr class="ltx_tr" id="A2.T4.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.9.9.11.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.11.2"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.2.1" style="color:#FF0000;">0.4515</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.11.3"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.3.1" style="color:#FF0000;">4.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.11.4"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.4.1" style="color:#FF0000;">0.14574</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.11.5"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.5.1" style="color:#FF0000;">0.4574</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.11.6">
<span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.6.1" style="color:#FF0000;">42.64</span>/<span class="ltx_text ltx_font_bold" id="A2.T4.9.9.11.6.2" style="color:#FF0000;">61.42</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.9.9.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T4.9.9.12.1" rowspan="2"><span class="ltx_text" id="A2.T4.9.9.12.1.1">TACO</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.9.9.12.2">PPO (w/o sup., tracking rew.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.12.3">0.6751</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.12.4">6.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.12.5"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.12.5.1" style="color:#FF0000;">0.1264</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.12.6">0.5443</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.9.9.12.7">21.67/50.25</td>
</tr>
<tr class="ltx_tr" id="A2.T4.9.9.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.2"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.13.2.1" style="color:#FF0000;">0.4782</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.3"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.13.3.1" style="color:#FF0000;">3.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.4">0.1329</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.5"><span class="ltx_text ltx_font_bold" id="A2.T4.9.9.13.5.1" style="color:#FF0000;">0.4228</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.9.9.13.6">
<span class="ltx_text ltx_font_bold" id="A2.T4.9.9.13.6.1" style="color:#FF0000;">32.02</span>/<span class="ltx_text ltx_font_bold" id="A2.T4.9.9.13.6.2" style="color:#FF0000;">62.07</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for dexterous manipulation tracking control.  The results are shown for two datasets, GRAB and TACO.  Metrics evaluated include the average object rotation error (Rerr), average object translation error (Terr), average wrist error (Ewrist), average finger error (Efinger), and success rate.  The methods compared are: PPO (without supervision, tracking reward), and the proposed DexTrack method (with and without data and homotopy optimization). Bold red numbers highlight the best results for each metric and dataset.
> <details>
> <summary>read the caption</summary>
> Table 4:  Quantitative evaluations and comparisons. Bold red numbers for best values. Models are trained on training tracking tasks from both the GRAB and the TACO datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.9.9">
<tr class="ltx_tr" id="A2.T5.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.9.9.9.10">Test set</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.2.2.2.2">
<span class="ltx_text" id="A2.T5.2.2.2.2.3"></span> <span class="ltx_text" id="A2.T5.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.2.2.2.2.2.2">
<span class="ltx_tr" id="A2.T5.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.2.2.2.2.2.2.2.2"><math alttext="R_{\text{err}}" class="ltx_Math" display="inline" id="A2.T5.1.1.1.1.1.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.1.1.1.1.1.m1.1a"><msub id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.2.cmml">R</mi><mtext id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.1.1.1.1.1.m1.1b"><apply id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.2">𝑅</ci><ci id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3"><mtext id="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.1.1.1.1.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.1.1.1.1.1.m1.1c">R_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.1.1.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T5.2.2.2.2.2.2.2.2.m2.2"><semantics id="A2.T5.2.2.2.2.2.2.2.2.m2.2a"><mrow id="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.2" xref="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.1.cmml"><mtext id="A2.T5.2.2.2.2.2.2.2.2.m2.1.1" xref="A2.T5.2.2.2.2.2.2.2.2.m2.1.1a.cmml">rad</mtext><mo id="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.2.1" mathcolor="#000000" xref="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.1.cmml">,</mo><mo id="A2.T5.2.2.2.2.2.2.2.2.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T5.2.2.2.2.2.2.2.2.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.2.2.2.2.2.2.m2.2b"><list id="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.1.cmml" xref="A2.T5.2.2.2.2.2.2.2.2.m2.2.3.2"><ci id="A2.T5.2.2.2.2.2.2.2.2.m2.1.1a.cmml" xref="A2.T5.2.2.2.2.2.2.2.2.m2.1.1"><mtext id="A2.T5.2.2.2.2.2.2.2.2.m2.1.1.cmml" xref="A2.T5.2.2.2.2.2.2.2.2.m2.1.1">rad</mtext></ci><ci id="A2.T5.2.2.2.2.2.2.2.2.m2.2.2.cmml" xref="A2.T5.2.2.2.2.2.2.2.2.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.2.2.2.2.2.2.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.2.2.2.2.2.2.m2.2d">rad , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T5.2.2.2.2.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.4.4.4.4">
<span class="ltx_text" id="A2.T5.4.4.4.4.3"></span> <span class="ltx_text" id="A2.T5.4.4.4.4.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T5.4.4.4.4.2.2">
<span class="ltx_tr" id="A2.T5.4.4.4.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.4.4.4.4.2.2.2.2"><math alttext="T_{\text{err}}" class="ltx_Math" display="inline" id="A2.T5.3.3.3.3.1.1.1.1.m1.1"><semantics id="A2.T5.3.3.3.3.1.1.1.1.m1.1a"><msub id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.cmml"><mi id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.2.cmml">T</mi><mtext id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.3.3.1.1.1.1.m1.1b"><apply id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.1.cmml" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.2.cmml" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.2">𝑇</ci><ci id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3"><mtext id="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.3.3.3.3.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.3.3.1.1.1.1.m1.1c">T_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.3.3.1.1.1.1.m1.1d">italic_T start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="{cm},\downarrow" class="ltx_Math" display="inline" id="A2.T5.4.4.4.4.2.2.2.2.m2.2"><semantics id="A2.T5.4.4.4.4.2.2.2.2.m2.2a"><mrow id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.2.cmml"><mrow id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml"><mi id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.2" mathcolor="#000000" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml">c</mi><mo id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.1" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml">⁢</mo><mi id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.3" mathcolor="#000000" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml">m</mi></mrow><mo id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.2" mathcolor="#000000" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.2.cmml">,</mo><mo id="A2.T5.4.4.4.4.2.2.2.2.m2.1.1" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T5.4.4.4.4.2.2.2.2.m2.1.1.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.4.4.4.4.2.2.2.2.m2.2b"><list id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.2.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1"><apply id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1"><times id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.1"></times><ci id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.2">𝑐</ci><ci id="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.2.2.1.1.3">𝑚</ci></apply><ci id="A2.T5.4.4.4.4.2.2.2.2.m2.1.1.cmml" xref="A2.T5.4.4.4.4.2.2.2.2.m2.1.1">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.4.4.4.2.2.2.2.m2.2c">{cm},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.4.4.4.2.2.2.2.m2.2d">italic_c italic_m , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T5.4.4.4.4.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.6.6.6.6">
<math alttext="E_{\text{wrist}}" class="ltx_Math" display="inline" id="A2.T5.5.5.5.5.m1.1"><semantics id="A2.T5.5.5.5.5.m1.1a"><msub id="A2.T5.5.5.5.5.m1.1.1" xref="A2.T5.5.5.5.5.m1.1.1.cmml"><mi id="A2.T5.5.5.5.5.m1.1.1.2" mathcolor="#000000" xref="A2.T5.5.5.5.5.m1.1.1.2.cmml">E</mi><mtext id="A2.T5.5.5.5.5.m1.1.1.3" mathcolor="#000000" xref="A2.T5.5.5.5.5.m1.1.1.3a.cmml">wrist</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T5.5.5.5.5.m1.1b"><apply id="A2.T5.5.5.5.5.m1.1.1.cmml" xref="A2.T5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.5.5.5.5.m1.1.1.1.cmml" xref="A2.T5.5.5.5.5.m1.1.1">subscript</csymbol><ci id="A2.T5.5.5.5.5.m1.1.1.2.cmml" xref="A2.T5.5.5.5.5.m1.1.1.2">𝐸</ci><ci id="A2.T5.5.5.5.5.m1.1.1.3a.cmml" xref="A2.T5.5.5.5.5.m1.1.1.3"><mtext id="A2.T5.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.5.5.5.5.m1.1.1.3">wrist</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.5.5.5.m1.1c">E_{\text{wrist}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.5.5.5.m1.1d">italic_E start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T5.6.6.6.6.m2.1"><semantics id="A2.T5.6.6.6.6.m2.1a"><mo id="A2.T5.6.6.6.6.m2.1.1" mathcolor="#000000" stretchy="false" xref="A2.T5.6.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T5.6.6.6.6.m2.1b"><ci id="A2.T5.6.6.6.6.m2.1.1.cmml" xref="A2.T5.6.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.6.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T5.6.6.6.6.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.8.8.8.8">
<math alttext="E_{\text{finger}}" class="ltx_Math" display="inline" id="A2.T5.7.7.7.7.m1.1"><semantics id="A2.T5.7.7.7.7.m1.1a"><msub id="A2.T5.7.7.7.7.m1.1.1" xref="A2.T5.7.7.7.7.m1.1.1.cmml"><mi id="A2.T5.7.7.7.7.m1.1.1.2" mathcolor="#000000" xref="A2.T5.7.7.7.7.m1.1.1.2.cmml">E</mi><mtext id="A2.T5.7.7.7.7.m1.1.1.3" mathcolor="#000000" xref="A2.T5.7.7.7.7.m1.1.1.3a.cmml">finger</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T5.7.7.7.7.m1.1b"><apply id="A2.T5.7.7.7.7.m1.1.1.cmml" xref="A2.T5.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.7.7.7.7.m1.1.1.1.cmml" xref="A2.T5.7.7.7.7.m1.1.1">subscript</csymbol><ci id="A2.T5.7.7.7.7.m1.1.1.2.cmml" xref="A2.T5.7.7.7.7.m1.1.1.2">𝐸</ci><ci id="A2.T5.7.7.7.7.m1.1.1.3a.cmml" xref="A2.T5.7.7.7.7.m1.1.1.3"><mtext id="A2.T5.7.7.7.7.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.7.7.7.7.m1.1.1.3">finger</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.7.7.7.7.m1.1c">E_{\text{finger}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.7.7.7.7.m1.1d">italic_E start_POSTSUBSCRIPT finger end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T5.8.8.8.8.m2.2"><semantics id="A2.T5.8.8.8.8.m2.2a"><mrow id="A2.T5.8.8.8.8.m2.2.3.2" xref="A2.T5.8.8.8.8.m2.2.3.1.cmml"><mtext id="A2.T5.8.8.8.8.m2.1.1" xref="A2.T5.8.8.8.8.m2.1.1a.cmml">rad</mtext><mo id="A2.T5.8.8.8.8.m2.2.3.2.1" mathcolor="#000000" xref="A2.T5.8.8.8.8.m2.2.3.1.cmml">,</mo><mo id="A2.T5.8.8.8.8.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T5.8.8.8.8.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.8.8.8.8.m2.2b"><list id="A2.T5.8.8.8.8.m2.2.3.1.cmml" xref="A2.T5.8.8.8.8.m2.2.3.2"><ci id="A2.T5.8.8.8.8.m2.1.1a.cmml" xref="A2.T5.8.8.8.8.m2.1.1"><mtext id="A2.T5.8.8.8.8.m2.1.1.cmml" xref="A2.T5.8.8.8.8.m2.1.1">rad</mtext></ci><ci id="A2.T5.8.8.8.8.m2.2.2.cmml" xref="A2.T5.8.8.8.8.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.8.8.8.8.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T5.8.8.8.8.m2.2d">rad , ↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.9.9.9.9">Success Rate (<math alttext="\%,\uparrow" class="ltx_math_unparsed" display="inline" id="A2.T5.9.9.9.9.m1.1"><semantics id="A2.T5.9.9.9.9.m1.1a"><mrow id="A2.T5.9.9.9.9.m1.1b"><mo id="A2.T5.9.9.9.9.m1.1.1" mathcolor="#000000">%</mo><mo id="A2.T5.9.9.9.9.m1.1.2" mathcolor="#000000">,</mo><mo id="A2.T5.9.9.9.9.m1.1.3" lspace="0em" mathcolor="#000000" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="A2.T5.9.9.9.9.m1.1c">\%,\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T5.9.9.9.9.m1.1d">% , ↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A2.T5.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.9.9.10.1">S1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.9.9.10.2">0.5787</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.9.9.10.3">2.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.9.9.10.4">0.1481</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.9.9.10.5">0.4703</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.9.9.10.6">35.97/67.63</td>
</tr>
<tr class="ltx_tr" id="A2.T5.9.9.11">
<td class="ltx_td ltx_align_left" id="A2.T5.9.9.11.1">S2</td>
<td class="ltx_td ltx_align_center" id="A2.T5.9.9.11.2">0.6026</td>
<td class="ltx_td ltx_align_center" id="A2.T5.9.9.11.3">2.46</td>
<td class="ltx_td ltx_align_center" id="A2.T5.9.9.11.4">0.1455</td>
<td class="ltx_td ltx_align_center" id="A2.T5.9.9.11.5">0.4709</td>
<td class="ltx_td ltx_align_center" id="A2.T5.9.9.11.6">30.83/65.00</td>
</tr>
<tr class="ltx_tr" id="A2.T5.9.9.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T5.9.9.12.1">S3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.9.9.12.2">0.6508</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.9.9.12.3">8.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.9.9.12.4">0.1513</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.9.9.12.5">0.4683</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.9.9.12.6">10.18/46.32</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the DexTrack model's generalizability on the TACO dataset.  It assesses the model's performance across four test sets with varying levels of difficulty. Each test set differs in the novelty of tools, the types of interactions, and the combination of both. The table shows the model's performance in terms of rotation error, translation error, wrist error, finger error, and success rate for each test set.
> <details>
> <summary>read the caption</summary>
> Table 5:  Generalizability evaluations on the TACO dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.9.9">
<tr class="ltx_tr" id="A2.T6.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.9.9.9.10">
<span class="ltx_text" id="A2.T6.9.9.9.10.1"></span> <span class="ltx_text" id="A2.T6.9.9.9.10.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.9.9.9.10.2.1">
<span class="ltx_tr" id="A2.T6.9.9.9.10.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.9.9.9.10.2.1.1.1">Proportion</span></span>
</span></span><span class="ltx_text" id="A2.T6.9.9.9.10.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.2.2.2.2">
<span class="ltx_text" id="A2.T6.2.2.2.2.3"></span> <span class="ltx_text" id="A2.T6.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.2.2.2.2.2.2">
<span class="ltx_tr" id="A2.T6.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.2.2.2.2.2.2"><math alttext="R_{\text{err}}" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.1.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.1.1.1.1.1.m1.1a"><msub id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.2.cmml">R</mi><mtext id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.1.1.1.1.m1.1b"><apply id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.2">𝑅</ci><ci id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3"><mtext id="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T6.1.1.1.1.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.1.1.1.1.m1.1c">R_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.1.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.2.2.2.2.m2.2"><semantics id="A2.T6.2.2.2.2.2.2.2.2.m2.2a"><mrow id="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.2" xref="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.1.cmml"><mtext id="A2.T6.2.2.2.2.2.2.2.2.m2.1.1" xref="A2.T6.2.2.2.2.2.2.2.2.m2.1.1a.cmml">rad</mtext><mo id="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.2.1" mathcolor="#000000" xref="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.1.cmml">,</mo><mo id="A2.T6.2.2.2.2.2.2.2.2.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T6.2.2.2.2.2.2.2.2.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.2.2.2.2.m2.2b"><list id="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.1.cmml" xref="A2.T6.2.2.2.2.2.2.2.2.m2.2.3.2"><ci id="A2.T6.2.2.2.2.2.2.2.2.m2.1.1a.cmml" xref="A2.T6.2.2.2.2.2.2.2.2.m2.1.1"><mtext id="A2.T6.2.2.2.2.2.2.2.2.m2.1.1.cmml" xref="A2.T6.2.2.2.2.2.2.2.2.m2.1.1">rad</mtext></ci><ci id="A2.T6.2.2.2.2.2.2.2.2.m2.2.2.cmml" xref="A2.T6.2.2.2.2.2.2.2.2.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.2.2.2.2.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.2.2.2.2.m2.2d">rad , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T6.2.2.2.2.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.4">
<span class="ltx_text" id="A2.T6.4.4.4.4.3"></span> <span class="ltx_text" id="A2.T6.4.4.4.4.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.4.4.4.4.2.2">
<span class="ltx_tr" id="A2.T6.4.4.4.4.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.4.4.2.2.2.2"><math alttext="T_{\text{err}}" class="ltx_Math" display="inline" id="A2.T6.3.3.3.3.1.1.1.1.m1.1"><semantics id="A2.T6.3.3.3.3.1.1.1.1.m1.1a"><msub id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.cmml"><mi id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.2.cmml">T</mi><mtext id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml">err</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.3.1.1.1.1.m1.1b"><apply id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.1.cmml" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.2.cmml" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.2">𝑇</ci><ci id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3"><mtext id="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T6.3.3.3.3.1.1.1.1.m1.1.1.3">err</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.3.1.1.1.1.m1.1c">T_{\text{err}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.3.1.1.1.1.m1.1d">italic_T start_POSTSUBSCRIPT err end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="{cm},\downarrow" class="ltx_Math" display="inline" id="A2.T6.4.4.4.4.2.2.2.2.m2.2"><semantics id="A2.T6.4.4.4.4.2.2.2.2.m2.2a"><mrow id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.2.cmml"><mrow id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml"><mi id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.2" mathcolor="#000000" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml">c</mi><mo id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.1" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml">⁢</mo><mi id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.3" mathcolor="#000000" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml">m</mi></mrow><mo id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.2" mathcolor="#000000" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.2.cmml">,</mo><mo id="A2.T6.4.4.4.4.2.2.2.2.m2.1.1" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T6.4.4.4.4.2.2.2.2.m2.1.1.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.4.2.2.2.2.m2.2b"><list id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.2.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1"><apply id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1"><times id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.1.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.1"></times><ci id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.2.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.2">𝑐</ci><ci id="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.3.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.2.2.1.1.3">𝑚</ci></apply><ci id="A2.T6.4.4.4.4.2.2.2.2.m2.1.1.cmml" xref="A2.T6.4.4.4.4.2.2.2.2.m2.1.1">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.4.2.2.2.2.m2.2c">{cm},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.4.2.2.2.2.m2.2d">italic_c italic_m , ↓</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="A2.T6.4.4.4.4.4"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.6.6.6.6">
<math alttext="E_{\text{wrist}}" class="ltx_Math" display="inline" id="A2.T6.5.5.5.5.m1.1"><semantics id="A2.T6.5.5.5.5.m1.1a"><msub id="A2.T6.5.5.5.5.m1.1.1" xref="A2.T6.5.5.5.5.m1.1.1.cmml"><mi id="A2.T6.5.5.5.5.m1.1.1.2" mathcolor="#000000" xref="A2.T6.5.5.5.5.m1.1.1.2.cmml">E</mi><mtext id="A2.T6.5.5.5.5.m1.1.1.3" mathcolor="#000000" xref="A2.T6.5.5.5.5.m1.1.1.3a.cmml">wrist</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.5.m1.1b"><apply id="A2.T6.5.5.5.5.m1.1.1.cmml" xref="A2.T6.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.5.5.5.5.m1.1.1.1.cmml" xref="A2.T6.5.5.5.5.m1.1.1">subscript</csymbol><ci id="A2.T6.5.5.5.5.m1.1.1.2.cmml" xref="A2.T6.5.5.5.5.m1.1.1.2">𝐸</ci><ci id="A2.T6.5.5.5.5.m1.1.1.3a.cmml" xref="A2.T6.5.5.5.5.m1.1.1.3"><mtext id="A2.T6.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="A2.T6.5.5.5.5.m1.1.1.3">wrist</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.5.m1.1c">E_{\text{wrist}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.5.m1.1d">italic_E start_POSTSUBSCRIPT wrist end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T6.6.6.6.6.m2.1"><semantics id="A2.T6.6.6.6.6.m2.1a"><mo id="A2.T6.6.6.6.6.m2.1.1" mathcolor="#000000" stretchy="false" xref="A2.T6.6.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.6.m2.1b"><ci id="A2.T6.6.6.6.6.m2.1.1.cmml" xref="A2.T6.6.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.6.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.8.8.8.8">
<math alttext="E_{\text{finger}}" class="ltx_Math" display="inline" id="A2.T6.7.7.7.7.m1.1"><semantics id="A2.T6.7.7.7.7.m1.1a"><msub id="A2.T6.7.7.7.7.m1.1.1" xref="A2.T6.7.7.7.7.m1.1.1.cmml"><mi id="A2.T6.7.7.7.7.m1.1.1.2" mathcolor="#000000" xref="A2.T6.7.7.7.7.m1.1.1.2.cmml">E</mi><mtext id="A2.T6.7.7.7.7.m1.1.1.3" mathcolor="#000000" xref="A2.T6.7.7.7.7.m1.1.1.3a.cmml">finger</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T6.7.7.7.7.m1.1b"><apply id="A2.T6.7.7.7.7.m1.1.1.cmml" xref="A2.T6.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.7.7.7.7.m1.1.1.1.cmml" xref="A2.T6.7.7.7.7.m1.1.1">subscript</csymbol><ci id="A2.T6.7.7.7.7.m1.1.1.2.cmml" xref="A2.T6.7.7.7.7.m1.1.1.2">𝐸</ci><ci id="A2.T6.7.7.7.7.m1.1.1.3a.cmml" xref="A2.T6.7.7.7.7.m1.1.1.3"><mtext id="A2.T6.7.7.7.7.m1.1.1.3.cmml" mathsize="70%" xref="A2.T6.7.7.7.7.m1.1.1.3">finger</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.7.7.7.7.m1.1c">E_{\text{finger}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.7.7.7.7.m1.1d">italic_E start_POSTSUBSCRIPT finger end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\text{rad},\downarrow" class="ltx_Math" display="inline" id="A2.T6.8.8.8.8.m2.2"><semantics id="A2.T6.8.8.8.8.m2.2a"><mrow id="A2.T6.8.8.8.8.m2.2.3.2" xref="A2.T6.8.8.8.8.m2.2.3.1.cmml"><mtext id="A2.T6.8.8.8.8.m2.1.1" xref="A2.T6.8.8.8.8.m2.1.1a.cmml">rad</mtext><mo id="A2.T6.8.8.8.8.m2.2.3.2.1" mathcolor="#000000" xref="A2.T6.8.8.8.8.m2.2.3.1.cmml">,</mo><mo id="A2.T6.8.8.8.8.m2.2.2" lspace="0em" mathcolor="#000000" stretchy="false" xref="A2.T6.8.8.8.8.m2.2.2.cmml">↓</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.8.8.8.8.m2.2b"><list id="A2.T6.8.8.8.8.m2.2.3.1.cmml" xref="A2.T6.8.8.8.8.m2.2.3.2"><ci id="A2.T6.8.8.8.8.m2.1.1a.cmml" xref="A2.T6.8.8.8.8.m2.1.1"><mtext id="A2.T6.8.8.8.8.m2.1.1.cmml" xref="A2.T6.8.8.8.8.m2.1.1">rad</mtext></ci><ci id="A2.T6.8.8.8.8.m2.2.2.cmml" xref="A2.T6.8.8.8.8.m2.2.2">↓</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.8.8.8.8.m2.2c">\text{rad},\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.8.8.8.8.m2.2d">rad , ↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.9.9.9.9">Success Rate (<math alttext="\%,\uparrow" class="ltx_math_unparsed" display="inline" id="A2.T6.9.9.9.9.m1.1"><semantics id="A2.T6.9.9.9.9.m1.1a"><mrow id="A2.T6.9.9.9.9.m1.1b"><mo id="A2.T6.9.9.9.9.m1.1.1" mathcolor="#000000">%</mo><mo id="A2.T6.9.9.9.9.m1.1.2" mathcolor="#000000">,</mo><mo id="A2.T6.9.9.9.9.m1.1.3" lspace="0em" mathcolor="#000000" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="A2.T6.9.9.9.9.m1.1c">\%,\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.9.9.9.9.m1.1d">% , ↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.9.9.10.1">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.9.10.2">0.4985</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.9.10.3">4.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.9.10.4">0.1435</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.9.10.5">0.4767</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.9.10.6">31.03/57.64</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.11">
<td class="ltx_td ltx_align_left" id="A2.T6.9.9.11.1">0.1</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.11.2"><span class="ltx_text ltx_font_bold" id="A2.T6.9.9.11.2.1" style="color:#FF0000;">0.4730</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.11.3">3.86</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.11.4">0.1502</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.11.5">0.4921</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.11.6">36.45/59.61</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.12">
<td class="ltx_td ltx_align_left" id="A2.T6.9.9.12.1">0.3</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.12.2">0.4903</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.12.3">2.94</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.12.4"><span class="ltx_text ltx_font_bold" id="A2.T6.9.9.12.4.1" style="color:#FF0000;">0.1256</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.12.5">0.4804</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.12.6">40.89/62.07</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.13">
<td class="ltx_td ltx_align_left" id="A2.T6.9.9.13.1">0.5</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.13.2">0.4749</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.13.3">2.51</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.13.4">0.1680</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.13.5">0.4682</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.13.6">41.38/67.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.14">
<td class="ltx_td ltx_align_left" id="A2.T6.9.9.14.1">0.9</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.14.2">0.4776</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.14.3">2.29</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.14.4">0.1437</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.14.5">0.4839</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.9.14.6">44.83/72.91</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.9.9.15.1">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.15.2">0.4953</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.15.3"><span class="ltx_text ltx_font_bold" id="A2.T6.9.9.15.3.1" style="color:#FF0000;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.15.4">0.1510</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.15.5"><span class="ltx_text ltx_font_bold" id="A2.T6.9.9.15.5.1" style="color:#FF0000;">0.4661</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.15.6">
<span class="ltx_text ltx_font_bold" id="A2.T6.9.9.15.6.1" style="color:#FF0000;">48.77</span>/<span class="ltx_text ltx_font_bold" id="A2.T6.9.9.15.6.2" style="color:#FF0000;">74.38</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of models trained using varying amounts of demonstration data.  It shows how the success rate, rotation error, translation error, and other key metrics change as the amount of training data increases.  This allows assessment of the impact of data scaling on the model's performance and generalization ability.
> <details>
> <summary>read the caption</summary>
> Table 6:  Performance comparisons across models trained with different amount of demonstration data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.5.1">
<tr class="ltx_tr" id="A2.T7.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.5.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.2"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.2.1">apple</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.3"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.3.1">banana</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.4"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.4.1">duck</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.5"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.5.1">elephant</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.6"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.6.1">flashlight</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.7"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.7.1">flute</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.8"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.8.1">hammer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.9"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.9.1">hand</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.10"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.10.1">phone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.5.1.1.11"><span class="ltx_text ltx_font_typewriter" id="A2.T7.5.1.1.11.1">waterbottle</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.5.1.2.1">PPO (w/o sup., tracking rew)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.2">0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.3">25.0/25.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.4">50.0/50.0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.5">25.0/0.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.6">50.0/25.0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.7">0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.8">25.0/25.0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.9">33.3/33.3/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.10">25.0/25.0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.5.1.2.11">33.3/0/0</td>
</tr>
<tr class="ltx_tr" id="A2.T7.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T7.5.1.3.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.2">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.2.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.2.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.2.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.3">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.3.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.3.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.3.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.4">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.4.1" style="color:#FF0000;">75.0</span>/50.0/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.4.2" style="color:#FF0000;">50.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.5">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.5.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.5.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.5.3" style="color:#FF0000;">50.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.6">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.6.1" style="color:#FF0000;">75.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.6.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.6.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.7">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.7.1" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.7.2" style="color:#FF0000;">25.0</span>/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.8">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.8.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.8.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.8.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.9">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.9.1" style="color:#FF0000;">66.7</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.9.2" style="color:#FF0000;">66.7</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.9.3" style="color:#FF0000;">66.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.10">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.10.1" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.10.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.10.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.5.1.3.11">
<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.11.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.11.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T7.5.1.3.11.3" style="color:#FF0000;">50.0</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of different methods on real-world dexterous manipulation tasks using the GRAB dataset.  The methods are compared across various metrics, including success rates (with two different thresholds), object rotation error, object translation error, and hand wrist/finger errors.  Bold red numbers highlight the best-performing method for each metric.
> <details>
> <summary>read the caption</summary>
> Table 7:  Real-world quantitative comparisons (GRAB dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.5.1">
<tr class="ltx_tr" id="A2.T8.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.5.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.2"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.2.1">soap</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.3"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.3.1">shovel</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.4"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.4.1">brush</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.5"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.5.1">roller</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.6"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.6.1">knife</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.5.1.1.7"><span class="ltx_text ltx_font_typewriter" id="A2.T8.5.1.1.7.1">spoon</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.5.1.2.1">PPO (w/o sup., tracking rew)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.2">33.3/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.3">25.0/0.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.4">25.0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.5">25.0/25.0/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.6">0/0/0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.1.2.7">25.0/0/0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.5.1.3.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.2">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.2.1" style="color:#FF0000;">100.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.2.2" style="color:#FF0000;">66.7</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.2.3" style="color:#FF0000;">66.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.3">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.3.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.3.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.3.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.4">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.4.1" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.4.2" style="color:#FF0000;">25.0</span>/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.5">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.5.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.5.2" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.5.3" style="color:#FF0000;">25.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.6">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.6.1" style="color:#FF0000;">25.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.6.2" style="color:#FF0000;">25.0</span>/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.5.1.3.7">
<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.7.1" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.7.2" style="color:#FF0000;">50.0</span>/<span class="ltx_text ltx_font_bold" id="A2.T8.5.1.3.7.3" style="color:#FF0000;">25.0</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of the proposed DexTrack method and baseline methods on real-world dexterous manipulation tasks from the TACO dataset.  The results are broken down by object category, showing success rates (with success defined by three levels of increasing difficulty), along with per-frame error metrics (for object rotation, object translation, and wrist/finger joint positions).  Bold red numbers highlight the best performance for each object.  This illustrates DexTrack's generalization capability and robustness in real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Table 8:  Real-world quantitative comparisons (TACO dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T9.3.1">
<tr class="ltx_tr" id="A2.T9.3.1.1">
<td class="ltx_td ltx_border_tt" id="A2.T9.3.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.1.2">Homotopy test (a)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.1.3">Homotopy test (b)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.1.4">Homotopy test (c)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.1.5">Homotopy test (d)</td>
</tr>
<tr class="ltx_tr" id="A2.T9.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T9.3.1.2.1">Effectiveness Ratio (%)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.1.2.2">64.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.1.2.3">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.1.2.4">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.1.2.5">52.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of generalization experiments conducted on the homotopy path generator, a key component of the DexTrack method. The generator aims to find effective paths for solving challenging trajectory tracking problems.  The experiments evaluate how well the generator generalizes to unseen tasks by testing its performance on trajectory tracking problems drawn from different sets: tasks within the training distribution, tasks unseen during training but from the same dataset, and tasks from a different dataset. The results are presented as the effectiveness ratio, indicating the percentage of tracking tasks where the homotopy paths generated by the model result in better performance compared to a baseline approach.
> <details>
> <summary>read the caption</summary>
> Table 9:  Generalization experiments on the homotopy path generator.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.4.4">
<tr class="ltx_tr" id="A3.T10.4.4.5">
<td class="ltx_td ltx_border_tt" id="A3.T10.4.4.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.4.4.5.2">
<span class="ltx_text" id="A3.T10.4.4.5.2.1"></span> <span class="ltx_text" id="A3.T10.4.4.5.2.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.4.4.5.2.2.1">
<span class="ltx_tr" id="A3.T10.4.4.5.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.2.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T10.4.4.5.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.2.2.1.2.1">(w/o sup)</span></span>
</span></span><span class="ltx_text" id="A3.T10.4.4.5.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.4.4.5.3">
<span class="ltx_text" id="A3.T10.4.4.5.3.1"></span> <span class="ltx_text" id="A3.T10.4.4.5.3.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.4.4.5.3.2.1">
<span class="ltx_tr" id="A3.T10.4.4.5.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.3.2.1.1.1">Ours</span></span>
<span class="ltx_tr" id="A3.T10.4.4.5.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.3.2.1.2.1">(w/o prior.,</span></span>
<span class="ltx_tr" id="A3.T10.4.4.5.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.3.2.1.3.1">w/o curri.)</span></span>
</span></span><span class="ltx_text" id="A3.T10.4.4.5.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.4.4.5.4">
<span class="ltx_text" id="A3.T10.4.4.5.4.1"></span> <span class="ltx_text" id="A3.T10.4.4.5.4.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T10.4.4.5.4.2.1">
<span class="ltx_tr" id="A3.T10.4.4.5.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.4.2.1.1.1">Ours</span></span>
<span class="ltx_tr" id="A3.T10.4.4.5.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T10.4.4.5.4.2.1.2.1">(w/o prior)</span></span>
</span></span><span class="ltx_text" id="A3.T10.4.4.5.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.4.4.5.5">Ours</td>
</tr>
<tr class="ltx_tr" id="A3.T10.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T10.4.4.4.5">Time</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T10.1.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.1.1.1.1.m1.1"><semantics id="A3.T10.1.1.1.1.m1.1a"><mo id="A3.T10.1.1.1.1.m1.1.1" mathcolor="#000000" xref="A3.T10.1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.1.1.1.1.m1.1b"><csymbol cd="latexml" id="A3.T10.1.1.1.1.m1.1.1.cmml" xref="A3.T10.1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.1.1.1.1.m1.1d">∼</annotation></semantics></math>1 day</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T10.2.2.2.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.2.2.2.2.m1.1"><semantics id="A3.T10.2.2.2.2.m1.1a"><mo id="A3.T10.2.2.2.2.m1.1.1" mathcolor="#000000" xref="A3.T10.2.2.2.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.2.2.2.2.m1.1b"><csymbol cd="latexml" id="A3.T10.2.2.2.2.m1.1.1.cmml" xref="A3.T10.2.2.2.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.2.2.2.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.2.2.2.2.m1.1d">∼</annotation></semantics></math>2 days</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T10.3.3.3.3">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.3.3.3.3.m1.1"><semantics id="A3.T10.3.3.3.3.m1.1a"><mo id="A3.T10.3.3.3.3.m1.1.1" mathcolor="#000000" xref="A3.T10.3.3.3.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.3.3.3.3.m1.1b"><csymbol cd="latexml" id="A3.T10.3.3.3.3.m1.1.1.cmml" xref="A3.T10.3.3.3.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.3.3.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.3.3.3.m1.1d">∼</annotation></semantics></math>4 days</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T10.4.4.4.4">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.4.4.4.4.m1.1"><semantics id="A3.T10.4.4.4.4.m1.1a"><mo id="A3.T10.4.4.4.4.m1.1.1" mathcolor="#000000" xref="A3.T10.4.4.4.4.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.4.4.4.4.m1.1b"><csymbol cd="latexml" id="A3.T10.4.4.4.4.m1.1.1.cmml" xref="A3.T10.4.4.4.4.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.4.4.4.4.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.4.4.4.4.m1.1d">∼</annotation></semantics></math>4 days</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the training time taken for different configurations of the DexTrack model on the TACO dataset.  It compares the time taken for training using Proximal Policy Optimization (PPO) without supervision, PPO with a tracking reward, and three variations of the DexTrack approach: one without a data flywheel and homotopy optimization, one without a data flywheel, and the complete DexTrack model. The times are given in days and reflect the computation time needed for each training run.
> <details>
> <summary>read the caption</summary>
> Table 10:  Total training time consumption (TACO dataset).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.1.1">
<tr class="ltx_tr" id="A3.T11.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T11.1.1.2.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.2">DGrasp</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.3">
<span class="ltx_text" id="A3.T11.1.1.2.3.1"></span> <span class="ltx_text" id="A3.T11.1.1.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T11.1.1.2.3.2.1">
<span class="ltx_tr" id="A3.T11.1.1.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.3.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T11.1.1.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.3.2.1.2.1">(OmniGrasp rew.)</span></span>
</span></span><span class="ltx_text" id="A3.T11.1.1.2.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.4">
<span class="ltx_text" id="A3.T11.1.1.2.4.1"></span> <span class="ltx_text" id="A3.T11.1.1.2.4.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T11.1.1.2.4.2.1">
<span class="ltx_tr" id="A3.T11.1.1.2.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.4.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T11.1.1.2.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.4.2.1.2.1">(w/o sup., tracking rew.)</span></span>
</span></span><span class="ltx_text" id="A3.T11.1.1.2.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.5">
<span class="ltx_text" id="A3.T11.1.1.2.5.1"></span> <span class="ltx_text" id="A3.T11.1.1.2.5.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T11.1.1.2.5.2.1">
<span class="ltx_tr" id="A3.T11.1.1.2.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.5.2.1.1.1">Ours</span></span>
<span class="ltx_tr" id="A3.T11.1.1.2.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.5.2.1.2.1">(w/o data, w/o homotopy)</span></span>
</span></span><span class="ltx_text" id="A3.T11.1.1.2.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.6">
<span class="ltx_text" id="A3.T11.1.1.2.6.1"></span> <span class="ltx_text" id="A3.T11.1.1.2.6.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T11.1.1.2.6.2.1">
<span class="ltx_tr" id="A3.T11.1.1.2.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.6.2.1.1.1">Ours</span></span>
<span class="ltx_tr" id="A3.T11.1.1.2.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T11.1.1.2.6.2.1.2.1">(w/o data)</span></span>
</span></span><span class="ltx_text" id="A3.T11.1.1.2.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2.7">Ours</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.1"><math alttext="{s_{g}}" class="ltx_Math" display="inline" id="A3.T11.1.1.1.1.m1.1"><semantics id="A3.T11.1.1.1.1.m1.1a"><msub id="A3.T11.1.1.1.1.m1.1.1" xref="A3.T11.1.1.1.1.m1.1.1.cmml"><mi id="A3.T11.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A3.T11.1.1.1.1.m1.1.1.2.cmml">s</mi><mi id="A3.T11.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A3.T11.1.1.1.1.m1.1.1.3.cmml">g</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T11.1.1.1.1.m1.1b"><apply id="A3.T11.1.1.1.1.m1.1.1.cmml" xref="A3.T11.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T11.1.1.1.1.m1.1.1.1.cmml" xref="A3.T11.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T11.1.1.1.1.m1.1.1.2.cmml" xref="A3.T11.1.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T11.1.1.1.1.m1.1.1.3.cmml" xref="A3.T11.1.1.1.1.m1.1.1.3">𝑔</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.1.1.1.1.m1.1c">{s_{g}}</annotation><annotation encoding="application/x-llamapun" id="A3.T11.1.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_g end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.2">2.424</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.3">2.389</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.4">2.688</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.5">2.725</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.6">3.050</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T11.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.1.7.1" style="color:#FF0000;">3.251</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the generalization scores achieved by different methods on the GRAB dataset.  The generalization score quantifies a model's ability to generalize from seen to unseen data.  Higher scores indicate better generalization performance. The scores are broken down by method and show the performance across different aspects of generalization.
> <details>
> <summary>read the caption</summary>
> Table 11:  Generlaization score (GRAB dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T12.1">
<tr class="ltx_tr" id="A3.T12.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T12.1.2.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.1.2.2">
<span class="ltx_text" id="A3.T12.1.2.2.1"></span> <span class="ltx_text" id="A3.T12.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.2.1">
<span class="ltx_tr" id="A3.T12.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T12.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.2.1.2.1">(w/o sup., tracking rew.)</span></span>
</span></span><span class="ltx_text" id="A3.T12.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.1.2.3">Ours</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T12.1.1.1"><math alttext="{s_{r}}" class="ltx_Math" display="inline" id="A3.T12.1.1.1.m1.1"><semantics id="A3.T12.1.1.1.m1.1a"><msub id="A3.T12.1.1.1.m1.1.1" xref="A3.T12.1.1.1.m1.1.1.cmml"><mi id="A3.T12.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A3.T12.1.1.1.m1.1.1.2.cmml">s</mi><mi id="A3.T12.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A3.T12.1.1.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T12.1.1.1.m1.1b"><apply id="A3.T12.1.1.1.m1.1.1.cmml" xref="A3.T12.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.1.1.1.m1.1.1.1.cmml" xref="A3.T12.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T12.1.1.1.m1.1.1.2.cmml" xref="A3.T12.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T12.1.1.1.m1.1.1.3.cmml" xref="A3.T12.1.1.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.1.1.1.m1.1c">{s_{r}}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T12.1.1.2">2.665</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T12.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T12.1.1.3.1" style="color:#FF0000;">3.276</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the robustness of different methods for dexterous manipulation tracking control on the GRAB dataset.  Robustness is evaluated by comparing the performance of each method on tasks with high-quality kinematic trajectories versus those with added noise or disturbances. Higher scores indicate greater robustness.
> <details>
> <summary>read the caption</summary>
> Table 12:  Robustness score (GRAB dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T13.1.1">
<tr class="ltx_tr" id="A3.T13.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T13.1.1.2.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T13.1.1.2.2">
<span class="ltx_text" id="A3.T13.1.1.2.2.1"></span> <span class="ltx_text" id="A3.T13.1.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T13.1.1.2.2.2.1">
<span class="ltx_tr" id="A3.T13.1.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T13.1.1.2.2.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T13.1.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T13.1.1.2.2.2.1.2.1">(w/o sup., tracking rew.)</span></span>
</span></span><span class="ltx_text" id="A3.T13.1.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T13.1.1.2.3">Ours</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T13.1.1.1.1"><math alttext="{s_{a}}" class="ltx_Math" display="inline" id="A3.T13.1.1.1.1.m1.1"><semantics id="A3.T13.1.1.1.1.m1.1a"><msub id="A3.T13.1.1.1.1.m1.1.1" xref="A3.T13.1.1.1.1.m1.1.1.cmml"><mi id="A3.T13.1.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A3.T13.1.1.1.1.m1.1.1.2.cmml">s</mi><mi id="A3.T13.1.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A3.T13.1.1.1.1.m1.1.1.3.cmml">a</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T13.1.1.1.1.m1.1b"><apply id="A3.T13.1.1.1.1.m1.1.1.cmml" xref="A3.T13.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T13.1.1.1.1.m1.1.1.1.cmml" xref="A3.T13.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T13.1.1.1.1.m1.1.1.2.cmml" xref="A3.T13.1.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T13.1.1.1.1.m1.1.1.3.cmml" xref="A3.T13.1.1.1.1.m1.1.1.3">𝑎</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T13.1.1.1.1.m1.1c">{s_{a}}</annotation><annotation encoding="application/x-llamapun" id="A3.T13.1.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T13.1.1.1.2">0.317/0.098/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T13.1.1.1.3">
<span class="ltx_text ltx_font_bold" id="A3.T13.1.1.1.3.1" style="color:#FF0000;">0.537</span>/<span class="ltx_text ltx_font_bold" id="A3.T13.1.1.1.3.2" style="color:#FF0000;">0.415</span>/<span class="ltx_text ltx_font_bold" id="A3.T13.1.1.1.3.3" style="color:#FF0000;">0.293</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the adaptativity of different methods on the GRAB dataset. Adaptativity is evaluated using three metrics: smoothness, consistency, and penetrations, which measure the quality of kinematic manipulation trajectories.  The results show the scores for each of these metrics for different methods, highlighting the superior adaptativity of the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 13:  Adaptativity score (GRAB dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T14.1">
<tr class="ltx_tr" id="A3.T14.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T14.1.2.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T14.1.2.2">
<span class="ltx_text" id="A3.T14.1.2.2.1"></span> <span class="ltx_text" id="A3.T14.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T14.1.2.2.2.1">
<span class="ltx_tr" id="A3.T14.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T14.1.2.2.2.1.1.1">PPO</span></span>
<span class="ltx_tr" id="A3.T14.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T14.1.2.2.2.1.2.1">(w/o sup., tracking rew.)</span></span>
</span></span><span class="ltx_text" id="A3.T14.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T14.1.2.3">Ours</td>
</tr>
<tr class="ltx_tr" id="A3.T14.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T14.1.1.1"><math alttext="{s_{a}}" class="ltx_Math" display="inline" id="A3.T14.1.1.1.m1.1"><semantics id="A3.T14.1.1.1.m1.1a"><msub id="A3.T14.1.1.1.m1.1.1" xref="A3.T14.1.1.1.m1.1.1.cmml"><mi id="A3.T14.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A3.T14.1.1.1.m1.1.1.2.cmml">s</mi><mi id="A3.T14.1.1.1.m1.1.1.3" mathcolor="#000000" xref="A3.T14.1.1.1.m1.1.1.3.cmml">a</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T14.1.1.1.m1.1b"><apply id="A3.T14.1.1.1.m1.1.1.cmml" xref="A3.T14.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T14.1.1.1.m1.1.1.1.cmml" xref="A3.T14.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T14.1.1.1.m1.1.1.2.cmml" xref="A3.T14.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T14.1.1.1.m1.1.1.3.cmml" xref="A3.T14.1.1.1.m1.1.1.3">𝑎</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T14.1.1.1.m1.1c">{s_{a}}</annotation><annotation encoding="application/x-llamapun" id="A3.T14.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T14.1.1.2">0.317/0.098/0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T14.1.1.3">
<span class="ltx_text ltx_font_bold" id="A3.T14.1.1.3.1" style="color:#FF0000;">0.537</span>/<span class="ltx_text ltx_font_bold" id="A3.T14.1.1.3.2" style="color:#FF0000;">0.415</span>/<span class="ltx_text ltx_font_bold" id="A3.T14.1.1.3.3" style="color:#FF0000;">0.293</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the generalization scores achieved by different methods on the GRAB dataset.  The generalization score quantifies how well a model trained on one set of manipulation tasks generalizes to unseen tasks.  Higher scores indicate better generalization.  The table compares the performance of the proposed method ('Ours') against several baseline methods, highlighting the superior generalization ability of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 14:  Generlaization score (GRAB dataset). Bold red numbers for best values.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T15.3.3">
<tr class="ltx_tr" id="A3.T15.3.3.3">
<td class="ltx_td ltx_border_tt" id="A3.T15.3.3.3.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T15.1.1.1.1"><math alttext="s_{smooth}^{o}(m\cdot s^{-2})" class="ltx_Math" display="inline" id="A3.T15.1.1.1.1.m1.1"><semantics id="A3.T15.1.1.1.1.m1.1a"><mrow id="A3.T15.1.1.1.1.m1.1.1" xref="A3.T15.1.1.1.1.m1.1.1.cmml"><msubsup id="A3.T15.1.1.1.1.m1.1.1.3" xref="A3.T15.1.1.1.1.m1.1.1.3.cmml"><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.2" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.2.cmml">s</mi><mrow id="A3.T15.1.1.1.1.m1.1.1.3.2.3" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.cmml"><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.2" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.2.cmml">s</mi><mo id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml">⁢</mo><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.3" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.3.cmml">m</mi><mo id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1a" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml">⁢</mo><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.4" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.4.cmml">o</mi><mo id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1b" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml">⁢</mo><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.5" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.5.cmml">o</mi><mo id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1c" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml">⁢</mo><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.6" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.6.cmml">t</mi><mo id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1d" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml">⁢</mo><mi id="A3.T15.1.1.1.1.m1.1.1.3.2.3.7" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.7.cmml">h</mi></mrow><mi id="A3.T15.1.1.1.1.m1.1.1.3.3" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.3.3.cmml">o</mi></msubsup><mo id="A3.T15.1.1.1.1.m1.1.1.2" xref="A3.T15.1.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="A3.T15.1.1.1.1.m1.1.1.1.1" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.cmml"><mo id="A3.T15.1.1.1.1.m1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="A3.T15.1.1.1.1.m1.1.1.1.1.1" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.cmml"><mi id="A3.T15.1.1.1.1.m1.1.1.1.1.1.2" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.2.cmml">m</mi><mo id="A3.T15.1.1.1.1.m1.1.1.1.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.1.cmml">⋅</mo><msup id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.cmml"><mi id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.2" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.2.cmml">s</mi><mrow id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.cmml"><mo id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3a" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.cmml">−</mo><mn id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.2" mathcolor="#000000" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.2.cmml">2</mn></mrow></msup></mrow><mo id="A3.T15.1.1.1.1.m1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T15.1.1.1.1.m1.1b"><apply id="A3.T15.1.1.1.1.m1.1.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1"><times id="A3.T15.1.1.1.1.m1.1.1.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.2"></times><apply id="A3.T15.1.1.1.1.m1.1.1.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T15.1.1.1.1.m1.1.1.3.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3">superscript</csymbol><apply id="A3.T15.1.1.1.1.m1.1.1.3.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T15.1.1.1.1.m1.1.1.3.2.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.2">𝑠</ci><apply id="A3.T15.1.1.1.1.m1.1.1.3.2.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3"><times id="A3.T15.1.1.1.1.m1.1.1.3.2.3.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.1"></times><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.2">𝑠</ci><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.3">𝑚</ci><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.4.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.4">𝑜</ci><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.5.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.5">𝑜</ci><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.6.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.6">𝑡</ci><ci id="A3.T15.1.1.1.1.m1.1.1.3.2.3.7.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.2.3.7">ℎ</ci></apply></apply><ci id="A3.T15.1.1.1.1.m1.1.1.3.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.3.3">𝑜</ci></apply><apply id="A3.T15.1.1.1.1.m1.1.1.1.1.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1"><ci id="A3.T15.1.1.1.1.m1.1.1.1.1.1.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.1">⋅</ci><ci id="A3.T15.1.1.1.1.m1.1.1.1.1.1.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.2">𝑚</ci><apply id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3">superscript</csymbol><ci id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.2.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.2">𝑠</ci><apply id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3"><minus id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.1.cmml" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3"></minus><cn id="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.2.cmml" type="integer" xref="A3.T15.1.1.1.1.m1.1.1.1.1.1.3.3.2">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T15.1.1.1.1.m1.1c">s_{smooth}^{o}(m\cdot s^{-2})</annotation><annotation encoding="application/x-llamapun" id="A3.T15.1.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_s italic_m italic_o italic_o italic_t italic_h end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_o end_POSTSUPERSCRIPT ( italic_m ⋅ italic_s start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T15.2.2.2.2"><math alttext="{v_{contact}}" class="ltx_Math" display="inline" id="A3.T15.2.2.2.2.m1.1"><semantics id="A3.T15.2.2.2.2.m1.1a"><msub id="A3.T15.2.2.2.2.m1.1.1" xref="A3.T15.2.2.2.2.m1.1.1.cmml"><mi id="A3.T15.2.2.2.2.m1.1.1.2" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.2.cmml">v</mi><mrow id="A3.T15.2.2.2.2.m1.1.1.3" xref="A3.T15.2.2.2.2.m1.1.1.3.cmml"><mi id="A3.T15.2.2.2.2.m1.1.1.3.2" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.2.cmml">c</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.3" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.3.cmml">o</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1a" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.4" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.4.cmml">n</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1b" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.5" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.5.cmml">t</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1c" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.6" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.6.cmml">a</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1d" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.7" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.7.cmml">c</mi><mo id="A3.T15.2.2.2.2.m1.1.1.3.1e" xref="A3.T15.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A3.T15.2.2.2.2.m1.1.1.3.8" mathcolor="#000000" xref="A3.T15.2.2.2.2.m1.1.1.3.8.cmml">t</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T15.2.2.2.2.m1.1b"><apply id="A3.T15.2.2.2.2.m1.1.1.cmml" xref="A3.T15.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T15.2.2.2.2.m1.1.1.1.cmml" xref="A3.T15.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A3.T15.2.2.2.2.m1.1.1.2.cmml" xref="A3.T15.2.2.2.2.m1.1.1.2">𝑣</ci><apply id="A3.T15.2.2.2.2.m1.1.1.3.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3"><times id="A3.T15.2.2.2.2.m1.1.1.3.1.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.1"></times><ci id="A3.T15.2.2.2.2.m1.1.1.3.2.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.2">𝑐</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.3.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.3">𝑜</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.4.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.4">𝑛</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.5.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.5">𝑡</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.6.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.6">𝑎</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.7.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.7">𝑐</ci><ci id="A3.T15.2.2.2.2.m1.1.1.3.8.cmml" xref="A3.T15.2.2.2.2.m1.1.1.3.8">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T15.2.2.2.2.m1.1c">{v_{contact}}</annotation><annotation encoding="application/x-llamapun" id="A3.T15.2.2.2.2.m1.1d">italic_v start_POSTSUBSCRIPT italic_c italic_o italic_n italic_t italic_a italic_c italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T15.3.3.3.3"><math alttext="{s_{shape}}(cm^{-1})" class="ltx_Math" display="inline" id="A3.T15.3.3.3.3.m1.1"><semantics id="A3.T15.3.3.3.3.m1.1a"><mrow id="A3.T15.3.3.3.3.m1.1.1" xref="A3.T15.3.3.3.3.m1.1.1.cmml"><msub id="A3.T15.3.3.3.3.m1.1.1.3" xref="A3.T15.3.3.3.3.m1.1.1.3.cmml"><mi id="A3.T15.3.3.3.3.m1.1.1.3.2" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.2.cmml">s</mi><mrow id="A3.T15.3.3.3.3.m1.1.1.3.3" xref="A3.T15.3.3.3.3.m1.1.1.3.3.cmml"><mi id="A3.T15.3.3.3.3.m1.1.1.3.3.2" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.3.2.cmml">s</mi><mo id="A3.T15.3.3.3.3.m1.1.1.3.3.1" xref="A3.T15.3.3.3.3.m1.1.1.3.3.1.cmml">⁢</mo><mi id="A3.T15.3.3.3.3.m1.1.1.3.3.3" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.3.3.cmml">h</mi><mo id="A3.T15.3.3.3.3.m1.1.1.3.3.1a" xref="A3.T15.3.3.3.3.m1.1.1.3.3.1.cmml">⁢</mo><mi id="A3.T15.3.3.3.3.m1.1.1.3.3.4" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.3.4.cmml">a</mi><mo id="A3.T15.3.3.3.3.m1.1.1.3.3.1b" xref="A3.T15.3.3.3.3.m1.1.1.3.3.1.cmml">⁢</mo><mi id="A3.T15.3.3.3.3.m1.1.1.3.3.5" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.3.5.cmml">p</mi><mo id="A3.T15.3.3.3.3.m1.1.1.3.3.1c" xref="A3.T15.3.3.3.3.m1.1.1.3.3.1.cmml">⁢</mo><mi id="A3.T15.3.3.3.3.m1.1.1.3.3.6" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.3.3.6.cmml">e</mi></mrow></msub><mo id="A3.T15.3.3.3.3.m1.1.1.2" xref="A3.T15.3.3.3.3.m1.1.1.2.cmml">⁢</mo><mrow id="A3.T15.3.3.3.3.m1.1.1.1.1" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.cmml"><mo id="A3.T15.3.3.3.3.m1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="A3.T15.3.3.3.3.m1.1.1.1.1.1" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.cmml"><mi id="A3.T15.3.3.3.3.m1.1.1.1.1.1.2" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.2.cmml">c</mi><mo id="A3.T15.3.3.3.3.m1.1.1.1.1.1.1" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.1.cmml">⁢</mo><msup id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.cmml"><mi id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.2" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.2.cmml">m</mi><mrow id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.cmml"><mo id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3a" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.cmml">−</mo><mn id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.2" mathcolor="#000000" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.2.cmml">1</mn></mrow></msup></mrow><mo id="A3.T15.3.3.3.3.m1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T15.3.3.3.3.m1.1b"><apply id="A3.T15.3.3.3.3.m1.1.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1"><times id="A3.T15.3.3.3.3.m1.1.1.2.cmml" xref="A3.T15.3.3.3.3.m1.1.1.2"></times><apply id="A3.T15.3.3.3.3.m1.1.1.3.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T15.3.3.3.3.m1.1.1.3.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3">subscript</csymbol><ci id="A3.T15.3.3.3.3.m1.1.1.3.2.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.2">𝑠</ci><apply id="A3.T15.3.3.3.3.m1.1.1.3.3.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3"><times id="A3.T15.3.3.3.3.m1.1.1.3.3.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.1"></times><ci id="A3.T15.3.3.3.3.m1.1.1.3.3.2.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.2">𝑠</ci><ci id="A3.T15.3.3.3.3.m1.1.1.3.3.3.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.3">ℎ</ci><ci id="A3.T15.3.3.3.3.m1.1.1.3.3.4.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.4">𝑎</ci><ci id="A3.T15.3.3.3.3.m1.1.1.3.3.5.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.5">𝑝</ci><ci id="A3.T15.3.3.3.3.m1.1.1.3.3.6.cmml" xref="A3.T15.3.3.3.3.m1.1.1.3.3.6">𝑒</ci></apply></apply><apply id="A3.T15.3.3.3.3.m1.1.1.1.1.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1"><times id="A3.T15.3.3.3.3.m1.1.1.1.1.1.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.1"></times><ci id="A3.T15.3.3.3.3.m1.1.1.1.1.1.2.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.2">𝑐</ci><apply id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3">superscript</csymbol><ci id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.2.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.2">𝑚</ci><apply id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3"><minus id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.1.cmml" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3"></minus><cn id="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.2.cmml" type="integer" xref="A3.T15.3.3.3.3.m1.1.1.1.1.1.3.3.2">1</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T15.3.3.3.3.m1.1c">{s_{shape}}(cm^{-1})</annotation><annotation encoding="application/x-llamapun" id="A3.T15.3.3.3.3.m1.1d">italic_s start_POSTSUBSCRIPT italic_s italic_h italic_a italic_p italic_e end_POSTSUBSCRIPT ( italic_c italic_m start_POSTSUPERSCRIPT - 1 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T15.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T15.3.3.4.1">GRAB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.3.3.4.2">3.426</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.3.3.4.3">1.641</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.3.3.4.4">0.275</td>
</tr>
<tr class="ltx_tr" id="A3.T15.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T15.3.3.5.1">TACO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.3.3.5.2">1.978</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.3.3.5.3">2.285</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.3.3.5.4">0.497</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of trajectory difficulty across two datasets, GRAB and TACO, used in the paper's experiments.  It uses three key metrics to assess this difficulty: 1)  **Ssmooth (m.s⁻²):** quantifies trajectory smoothness by measuring average object acceleration per frame; 2) **Ucontact:** measures the rate of hand-object contact map changes per frame, indicating contact dynamics complexity; and 3) **Sshape (cm⁻¹):** assesses object shape complexity using the z-axis extent of the object's bounding box. Higher values in each metric generally indicate more difficult-to-track trajectories.
> <details>
> <summary>read the caption</summary>
> Table 15:  Trajectory difficulty statistics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09614/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09614/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}