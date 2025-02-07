---
title: "MotionLab: Unified Human Motion Generation and Editing via the Motion-Condition-Motion Paradigm"
summary: "MotionLab: One framework to rule them all!  Unifying human motion generation & editing via a novel Motion-Condition-Motion paradigm, boosting efficiency and generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Singapore University of Technology and Design",]
showSummary: true
date: 2025-02-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.02358 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyan Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.02358" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.02358" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.02358/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for human motion generation and editing are often task-specific and lack efficiency.  This limits progress in applications like virtual reality and animation.  A unified approach is needed that can handle various tasks with fine-grained control and knowledge sharing.

MotionLab introduces a novel Motion-Condition-Motion paradigm to solve this problem.  It uses a unified framework based on rectified flows to learn mappings between source and target motions guided by conditions.  Key improvements include the MotionFlow Transformer, Aligned Rotational Position Encoding, Task Instruction Modulation, and Motion Curriculum Learning.  MotionLab shows significant improvements in efficiency and generalization across multiple benchmarks compared to previous state-of-the-art models. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MotionLab unifies human motion generation and editing tasks under a novel Motion-Condition-Motion paradigm. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The MotionFlow Transformer with rectified flows and Aligned ROPE enhances conditional generation and editing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Motion Curriculum Learning enables effective multi-task learning and knowledge sharing across diverse tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **MotionLab**, a unified framework for human motion generation and editing, addressing the limitations of existing isolated approaches.  This offers **significant advancements** in efficiency and generalization for various motion-related tasks.  The **novel Motion-Condition-Motion paradigm** and accompanying techniques open exciting avenues for future research in human-motion understanding and control, particularly within fields like virtual reality, animation, and robotics.

------
#### Visual Insights



![](https://arxiv.org/html/2502.02358/x1.png)

> 🔼 Figure 1 showcases MotionLab's capabilities in human motion generation and editing.  It compares MotionLab's performance to several state-of-the-art (SOTA) models across various tasks, including text-based and trajectory-based motion generation and editing, as well as motion style transfer and in-betweening. The figure visually demonstrates MotionLab's ability to generate and edit human motions based on different types of conditions (text, trajectories, and other motions).  All motions are represented using the SMPL model, with transparent motions signifying the source motion or condition, and the opaque motions representing the resulting target motion.  The results highlight MotionLab's superior versatility, performance, and efficiency compared to previous SOTA methods.  Additional qualitative results can be found on the project's website and in the paper's appendix.
> <details>
> <summary>read the caption</summary>
> Figure 1. Demonstration of our MotionLab’s versatility, performance and efficiency. Previous SOTA refer to multiple expert models, including MotionLCM (Dai et al., 2025), OmniControl (Xie et al., 2023), MotionFix (Athanasiou et al., 2024), CondMDI (Cohan et al., 2024) and MCM-LDM (Song et al., 2024). All motions are represented using SMPL (Loper et al., 2023), where transparent motion indicates the source motion or condition, and the other represents the target motion. More qualitative results are available in the website and appendix.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.54.54">
<tr class="ltx_tr" id="S1.T1.54.54.55">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.2">text-based generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.3">text-based editing</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.4">trajectory-based generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.5">trajectory-based editing</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.6">in-between</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.54.54.55.7">style transfer</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.6.6.7">MDM <cite class="ltx_cite ltx_citemacro_citep">(Tevet et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib59" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.1.m1.1a"><mi id="S1.T1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S1.T1.1.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.1.m1.1b"><ci id="S1.T1.1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.2.2.2.2.m1.1"><semantics id="S1.T1.2.2.2.2.m1.1a"><mo id="S1.T1.2.2.2.2.m1.1.1" xref="S1.T1.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.2.m1.1b"><times id="S1.T1.2.2.2.2.m1.1.1.cmml" xref="S1.T1.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.3.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.3.3.3.3.m1.1"><semantics id="S1.T1.3.3.3.3.m1.1a"><mo id="S1.T1.3.3.3.3.m1.1.1" xref="S1.T1.3.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.3.m1.1b"><times id="S1.T1.3.3.3.3.m1.1.1.cmml" xref="S1.T1.3.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.4.4.4.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.4.4.4.4.m1.1"><semantics id="S1.T1.4.4.4.4.m1.1a"><mo id="S1.T1.4.4.4.4.m1.1.1" xref="S1.T1.4.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.4.4.m1.1b"><times id="S1.T1.4.4.4.4.m1.1.1.cmml" xref="S1.T1.4.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.4.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.5.5"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.5.5.5.5.m1.1"><semantics id="S1.T1.5.5.5.5.m1.1a"><mo id="S1.T1.5.5.5.5.m1.1.1" xref="S1.T1.5.5.5.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.5.5.m1.1b"><minus id="S1.T1.5.5.5.5.m1.1.1.cmml" xref="S1.T1.5.5.5.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.5.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.5.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.6.6.6.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.6.6.6.6.m1.1"><semantics id="S1.T1.6.6.6.6.m1.1a"><mo id="S1.T1.6.6.6.6.m1.1.1" xref="S1.T1.6.6.6.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.6.6.m1.1b"><times id="S1.T1.6.6.6.6.m1.1.1.cmml" xref="S1.T1.6.6.6.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.6.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.6.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.12.12">
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.7">MLD <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib10" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.7.7.7.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.7.7.7.1.m1.1"><semantics id="S1.T1.7.7.7.1.m1.1a"><mi id="S1.T1.7.7.7.1.m1.1.1" mathvariant="normal" xref="S1.T1.7.7.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.7.1.m1.1b"><ci id="S1.T1.7.7.7.1.m1.1.1.cmml" xref="S1.T1.7.7.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.7.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.8.8.8.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.8.8.8.2.m1.1"><semantics id="S1.T1.8.8.8.2.m1.1a"><mo id="S1.T1.8.8.8.2.m1.1.1" xref="S1.T1.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.8.2.m1.1b"><times id="S1.T1.8.8.8.2.m1.1.1.cmml" xref="S1.T1.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.8.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.9.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.9.9.9.3.m1.1"><semantics id="S1.T1.9.9.9.3.m1.1a"><mo id="S1.T1.9.9.9.3.m1.1.1" xref="S1.T1.9.9.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.9.9.9.3.m1.1b"><times id="S1.T1.9.9.9.3.m1.1.1.cmml" xref="S1.T1.9.9.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.9.9.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.9.9.9.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.10.10.10.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.10.10.10.4.m1.1"><semantics id="S1.T1.10.10.10.4.m1.1a"><mo id="S1.T1.10.10.10.4.m1.1.1" xref="S1.T1.10.10.10.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.10.10.10.4.m1.1b"><times id="S1.T1.10.10.10.4.m1.1.1.cmml" xref="S1.T1.10.10.10.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.10.10.10.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.10.10.10.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.11.11.11.5"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.11.11.11.5.m1.1"><semantics id="S1.T1.11.11.11.5.m1.1a"><mo id="S1.T1.11.11.11.5.m1.1.1" xref="S1.T1.11.11.11.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.11.11.11.5.m1.1b"><times id="S1.T1.11.11.11.5.m1.1.1.cmml" xref="S1.T1.11.11.11.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.11.11.11.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.11.11.11.5.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.12.12.12.6.m1.1"><semantics id="S1.T1.12.12.12.6.m1.1a"><mo id="S1.T1.12.12.12.6.m1.1.1" xref="S1.T1.12.12.12.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.12.12.12.6.m1.1b"><times id="S1.T1.12.12.12.6.m1.1.1.cmml" xref="S1.T1.12.12.12.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.12.12.12.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.12.12.12.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.18.18.18">
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.7">OmniControl <cite class="ltx_cite ltx_citemacro_citep">(Xie et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib64" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.13.13.13.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.13.13.13.1.m1.1"><semantics id="S1.T1.13.13.13.1.m1.1a"><mi id="S1.T1.13.13.13.1.m1.1.1" mathvariant="normal" xref="S1.T1.13.13.13.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.13.13.13.1.m1.1b"><ci id="S1.T1.13.13.13.1.m1.1.1.cmml" xref="S1.T1.13.13.13.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.13.13.13.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.13.13.13.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.14.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.14.14.14.2.m1.1"><semantics id="S1.T1.14.14.14.2.m1.1a"><mo id="S1.T1.14.14.14.2.m1.1.1" xref="S1.T1.14.14.14.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.14.14.14.2.m1.1b"><times id="S1.T1.14.14.14.2.m1.1.1.cmml" xref="S1.T1.14.14.14.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.14.14.14.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.14.14.14.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.15.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.15.15.15.3.m1.1"><semantics id="S1.T1.15.15.15.3.m1.1a"><mi id="S1.T1.15.15.15.3.m1.1.1" mathvariant="normal" xref="S1.T1.15.15.15.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.15.15.15.3.m1.1b"><ci id="S1.T1.15.15.15.3.m1.1.1.cmml" xref="S1.T1.15.15.15.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.15.15.15.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.15.15.15.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.16.16.16.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.16.16.16.4.m1.1"><semantics id="S1.T1.16.16.16.4.m1.1a"><mo id="S1.T1.16.16.16.4.m1.1.1" xref="S1.T1.16.16.16.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.16.16.16.4.m1.1b"><times id="S1.T1.16.16.16.4.m1.1.1.cmml" xref="S1.T1.16.16.16.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.16.16.16.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.16.16.16.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.17.17.17.5"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.17.17.17.5.m1.1"><semantics id="S1.T1.17.17.17.5.m1.1a"><mo id="S1.T1.17.17.17.5.m1.1.1" xref="S1.T1.17.17.17.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.17.17.17.5.m1.1b"><minus id="S1.T1.17.17.17.5.m1.1.1.cmml" xref="S1.T1.17.17.17.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.17.17.17.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.17.17.17.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.18.18.18.6.m1.1"><semantics id="S1.T1.18.18.18.6.m1.1a"><mo id="S1.T1.18.18.18.6.m1.1.1" xref="S1.T1.18.18.18.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.18.18.18.6.m1.1b"><times id="S1.T1.18.18.18.6.m1.1.1.cmml" xref="S1.T1.18.18.18.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.18.18.18.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.18.18.18.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.24.24.24">
<td class="ltx_td ltx_align_center" id="S1.T1.24.24.24.7">MotionFix <cite class="ltx_cite ltx_citemacro_citep">(Athanasiou et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.19.19.19.1"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.19.19.19.1.m1.1"><semantics id="S1.T1.19.19.19.1.m1.1a"><mo id="S1.T1.19.19.19.1.m1.1.1" xref="S1.T1.19.19.19.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.19.19.19.1.m1.1b"><minus id="S1.T1.19.19.19.1.m1.1.1.cmml" xref="S1.T1.19.19.19.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.19.19.19.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.19.19.19.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.20.20.20.2.m1.1"><semantics id="S1.T1.20.20.20.2.m1.1a"><mi id="S1.T1.20.20.20.2.m1.1.1" mathvariant="normal" xref="S1.T1.20.20.20.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.20.20.20.2.m1.1b"><ci id="S1.T1.20.20.20.2.m1.1.1.cmml" xref="S1.T1.20.20.20.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.20.20.20.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.20.20.20.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.21.21.21.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.21.21.21.3.m1.1"><semantics id="S1.T1.21.21.21.3.m1.1a"><mo id="S1.T1.21.21.21.3.m1.1.1" xref="S1.T1.21.21.21.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.21.21.21.3.m1.1b"><times id="S1.T1.21.21.21.3.m1.1.1.cmml" xref="S1.T1.21.21.21.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.21.21.21.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.21.21.21.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.22.22.22.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.22.22.22.4.m1.1"><semantics id="S1.T1.22.22.22.4.m1.1a"><mo id="S1.T1.22.22.22.4.m1.1.1" xref="S1.T1.22.22.22.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.22.22.22.4.m1.1b"><times id="S1.T1.22.22.22.4.m1.1.1.cmml" xref="S1.T1.22.22.22.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.22.22.22.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.22.22.22.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.23.23.23.5"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.23.23.23.5.m1.1"><semantics id="S1.T1.23.23.23.5.m1.1a"><mo id="S1.T1.23.23.23.5.m1.1.1" xref="S1.T1.23.23.23.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.23.23.23.5.m1.1b"><minus id="S1.T1.23.23.23.5.m1.1.1.cmml" xref="S1.T1.23.23.23.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.23.23.23.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.23.23.23.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.24.24.24.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.24.24.24.6.m1.1"><semantics id="S1.T1.24.24.24.6.m1.1a"><mo id="S1.T1.24.24.24.6.m1.1.1" xref="S1.T1.24.24.24.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.24.24.24.6.m1.1b"><times id="S1.T1.24.24.24.6.m1.1.1.cmml" xref="S1.T1.24.24.24.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.24.24.24.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.24.24.24.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.30.30.30">
<td class="ltx_td ltx_align_center" id="S1.T1.30.30.30.7">CondMDI <cite class="ltx_cite ltx_citemacro_citep">(Cohan et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib12" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.25.25.25.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.25.25.25.1.m1.1"><semantics id="S1.T1.25.25.25.1.m1.1a"><mi id="S1.T1.25.25.25.1.m1.1.1" mathvariant="normal" xref="S1.T1.25.25.25.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.25.25.25.1.m1.1b"><ci id="S1.T1.25.25.25.1.m1.1.1.cmml" xref="S1.T1.25.25.25.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.25.25.25.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.25.25.25.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.26.26.26.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.26.26.26.2.m1.1"><semantics id="S1.T1.26.26.26.2.m1.1a"><mo id="S1.T1.26.26.26.2.m1.1.1" xref="S1.T1.26.26.26.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.26.26.26.2.m1.1b"><times id="S1.T1.26.26.26.2.m1.1.1.cmml" xref="S1.T1.26.26.26.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.26.26.26.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.26.26.26.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.27.27.27.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.27.27.27.3.m1.1"><semantics id="S1.T1.27.27.27.3.m1.1a"><mi id="S1.T1.27.27.27.3.m1.1.1" mathvariant="normal" xref="S1.T1.27.27.27.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.27.27.27.3.m1.1b"><ci id="S1.T1.27.27.27.3.m1.1.1.cmml" xref="S1.T1.27.27.27.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.27.27.27.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.27.27.27.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.28.28.28.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.28.28.28.4.m1.1"><semantics id="S1.T1.28.28.28.4.m1.1a"><mo id="S1.T1.28.28.28.4.m1.1.1" xref="S1.T1.28.28.28.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.28.28.28.4.m1.1b"><times id="S1.T1.28.28.28.4.m1.1.1.cmml" xref="S1.T1.28.28.28.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.28.28.28.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.28.28.28.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.29.29.29.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.29.29.29.5.m1.1"><semantics id="S1.T1.29.29.29.5.m1.1a"><mi id="S1.T1.29.29.29.5.m1.1.1" mathvariant="normal" xref="S1.T1.29.29.29.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.29.29.29.5.m1.1b"><ci id="S1.T1.29.29.29.5.m1.1.1.cmml" xref="S1.T1.29.29.29.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.29.29.29.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.29.29.29.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.30.30.30.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.30.30.30.6.m1.1"><semantics id="S1.T1.30.30.30.6.m1.1a"><mo id="S1.T1.30.30.30.6.m1.1.1" xref="S1.T1.30.30.30.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.30.30.30.6.m1.1b"><times id="S1.T1.30.30.30.6.m1.1.1.cmml" xref="S1.T1.30.30.30.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.30.30.30.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.30.30.30.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.36.36.36">
<td class="ltx_td ltx_align_center" id="S1.T1.36.36.36.7">MCM-LDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib55" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.31.31.31.1"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.31.31.31.1.m1.1"><semantics id="S1.T1.31.31.31.1.m1.1a"><mo id="S1.T1.31.31.31.1.m1.1.1" xref="S1.T1.31.31.31.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.31.31.31.1.m1.1b"><times id="S1.T1.31.31.31.1.m1.1.1.cmml" xref="S1.T1.31.31.31.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.31.31.31.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.31.31.31.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.32.32.32.2"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.32.32.32.2.m1.1"><semantics id="S1.T1.32.32.32.2.m1.1a"><mo id="S1.T1.32.32.32.2.m1.1.1" xref="S1.T1.32.32.32.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.32.32.32.2.m1.1b"><times id="S1.T1.32.32.32.2.m1.1.1.cmml" xref="S1.T1.32.32.32.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.32.32.32.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.32.32.32.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.33.33.33.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.33.33.33.3.m1.1"><semantics id="S1.T1.33.33.33.3.m1.1a"><mo id="S1.T1.33.33.33.3.m1.1.1" xref="S1.T1.33.33.33.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.33.33.33.3.m1.1b"><times id="S1.T1.33.33.33.3.m1.1.1.cmml" xref="S1.T1.33.33.33.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.33.33.33.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.33.33.33.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.34.34.34.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.34.34.34.4.m1.1"><semantics id="S1.T1.34.34.34.4.m1.1a"><mo id="S1.T1.34.34.34.4.m1.1.1" xref="S1.T1.34.34.34.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.34.34.34.4.m1.1b"><times id="S1.T1.34.34.34.4.m1.1.1.cmml" xref="S1.T1.34.34.34.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.34.34.34.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.34.34.34.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.35.35.35.5"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.35.35.35.5.m1.1"><semantics id="S1.T1.35.35.35.5.m1.1a"><mo id="S1.T1.35.35.35.5.m1.1.1" xref="S1.T1.35.35.35.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.35.35.35.5.m1.1b"><minus id="S1.T1.35.35.35.5.m1.1.1.cmml" xref="S1.T1.35.35.35.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.35.35.35.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.35.35.35.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.36.36.36.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.36.36.36.6.m1.1"><semantics id="S1.T1.36.36.36.6.m1.1a"><mi id="S1.T1.36.36.36.6.m1.1.1" mathvariant="normal" xref="S1.T1.36.36.36.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.36.36.36.6.m1.1b"><ci id="S1.T1.36.36.36.6.m1.1.1.cmml" xref="S1.T1.36.36.36.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.36.36.36.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.36.36.36.6.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.42.42.42">
<td class="ltx_td ltx_align_center" id="S1.T1.42.42.42.7">MotionGPT <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.37.37.37.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.37.37.37.1.m1.1"><semantics id="S1.T1.37.37.37.1.m1.1a"><mi id="S1.T1.37.37.37.1.m1.1.1" mathvariant="normal" xref="S1.T1.37.37.37.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.37.37.37.1.m1.1b"><ci id="S1.T1.37.37.37.1.m1.1.1.cmml" xref="S1.T1.37.37.37.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.37.37.37.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.37.37.37.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.38.38.38.2"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.38.38.38.2.m1.1"><semantics id="S1.T1.38.38.38.2.m1.1a"><mo id="S1.T1.38.38.38.2.m1.1.1" xref="S1.T1.38.38.38.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.38.38.38.2.m1.1b"><minus id="S1.T1.38.38.38.2.m1.1.1.cmml" xref="S1.T1.38.38.38.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.38.38.38.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.38.38.38.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.39.39.39.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.39.39.39.3.m1.1"><semantics id="S1.T1.39.39.39.3.m1.1a"><mo id="S1.T1.39.39.39.3.m1.1.1" xref="S1.T1.39.39.39.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.39.39.39.3.m1.1b"><times id="S1.T1.39.39.39.3.m1.1.1.cmml" xref="S1.T1.39.39.39.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.39.39.39.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.39.39.39.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.40.40.40.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.40.40.40.4.m1.1"><semantics id="S1.T1.40.40.40.4.m1.1a"><mo id="S1.T1.40.40.40.4.m1.1.1" xref="S1.T1.40.40.40.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.40.40.40.4.m1.1b"><times id="S1.T1.40.40.40.4.m1.1.1.cmml" xref="S1.T1.40.40.40.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.40.40.40.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.40.40.40.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.41.41.41.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.41.41.41.5.m1.1"><semantics id="S1.T1.41.41.41.5.m1.1a"><mi id="S1.T1.41.41.41.5.m1.1.1" mathvariant="normal" xref="S1.T1.41.41.41.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.41.41.41.5.m1.1b"><ci id="S1.T1.41.41.41.5.m1.1.1.cmml" xref="S1.T1.41.41.41.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.41.41.41.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.41.41.41.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.42.42.42.6"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.42.42.42.6.m1.1"><semantics id="S1.T1.42.42.42.6.m1.1a"><mo id="S1.T1.42.42.42.6.m1.1.1" xref="S1.T1.42.42.42.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.42.42.42.6.m1.1b"><times id="S1.T1.42.42.42.6.m1.1.1.cmml" xref="S1.T1.42.42.42.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.42.42.42.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.42.42.42.6.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.48.48.48">
<td class="ltx_td ltx_align_center" id="S1.T1.48.48.48.7">MotionCLR <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.43.43.43.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.43.43.43.1.m1.1"><semantics id="S1.T1.43.43.43.1.m1.1a"><mi id="S1.T1.43.43.43.1.m1.1.1" mathvariant="normal" xref="S1.T1.43.43.43.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.43.43.43.1.m1.1b"><ci id="S1.T1.43.43.43.1.m1.1.1.cmml" xref="S1.T1.43.43.43.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.43.43.43.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.43.43.43.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.44.44.44.2"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.44.44.44.2.m1.1"><semantics id="S1.T1.44.44.44.2.m1.1a"><mo id="S1.T1.44.44.44.2.m1.1.1" xref="S1.T1.44.44.44.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.44.44.44.2.m1.1b"><minus id="S1.T1.44.44.44.2.m1.1.1.cmml" xref="S1.T1.44.44.44.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.44.44.44.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.44.44.44.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.45.45.45.3"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.45.45.45.3.m1.1"><semantics id="S1.T1.45.45.45.3.m1.1a"><mo id="S1.T1.45.45.45.3.m1.1.1" xref="S1.T1.45.45.45.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.45.45.45.3.m1.1b"><times id="S1.T1.45.45.45.3.m1.1.1.cmml" xref="S1.T1.45.45.45.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.45.45.45.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.45.45.45.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.46.46.46.4"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.46.46.46.4.m1.1"><semantics id="S1.T1.46.46.46.4.m1.1a"><mo id="S1.T1.46.46.46.4.m1.1.1" xref="S1.T1.46.46.46.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.46.46.46.4.m1.1b"><times id="S1.T1.46.46.46.4.m1.1.1.cmml" xref="S1.T1.46.46.46.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.46.46.46.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.46.46.46.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.47.47.47.5"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.47.47.47.5.m1.1"><semantics id="S1.T1.47.47.47.5.m1.1a"><mo id="S1.T1.47.47.47.5.m1.1.1" xref="S1.T1.47.47.47.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.47.47.47.5.m1.1b"><minus id="S1.T1.47.47.47.5.m1.1.1.cmml" xref="S1.T1.47.47.47.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.47.47.47.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.47.47.47.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.48.48.48.6"><math alttext="-" class="ltx_Math" display="inline" id="S1.T1.48.48.48.6.m1.1"><semantics id="S1.T1.48.48.48.6.m1.1a"><mo id="S1.T1.48.48.48.6.m1.1.1" xref="S1.T1.48.48.48.6.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S1.T1.48.48.48.6.m1.1b"><minus id="S1.T1.48.48.48.6.m1.1.1.cmml" xref="S1.T1.48.48.48.6.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.48.48.48.6.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S1.T1.48.48.48.6.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S1.T1.54.54.54">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.54.54.54.7">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.49.49.49.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.49.49.49.1.m1.1"><semantics id="S1.T1.49.49.49.1.m1.1a"><mi id="S1.T1.49.49.49.1.m1.1.1" mathvariant="normal" xref="S1.T1.49.49.49.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.49.49.49.1.m1.1b"><ci id="S1.T1.49.49.49.1.m1.1.1.cmml" xref="S1.T1.49.49.49.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.49.49.49.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.49.49.49.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.50.50.50.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.50.50.50.2.m1.1"><semantics id="S1.T1.50.50.50.2.m1.1a"><mi id="S1.T1.50.50.50.2.m1.1.1" mathvariant="normal" xref="S1.T1.50.50.50.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.50.50.50.2.m1.1b"><ci id="S1.T1.50.50.50.2.m1.1.1.cmml" xref="S1.T1.50.50.50.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.50.50.50.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.50.50.50.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.51.51.51.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.51.51.51.3.m1.1"><semantics id="S1.T1.51.51.51.3.m1.1a"><mi id="S1.T1.51.51.51.3.m1.1.1" mathvariant="normal" xref="S1.T1.51.51.51.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.51.51.51.3.m1.1b"><ci id="S1.T1.51.51.51.3.m1.1.1.cmml" xref="S1.T1.51.51.51.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.51.51.51.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.51.51.51.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.52.52.52.4"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.52.52.52.4.m1.1"><semantics id="S1.T1.52.52.52.4.m1.1a"><mi id="S1.T1.52.52.52.4.m1.1.1" mathvariant="normal" xref="S1.T1.52.52.52.4.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.52.52.52.4.m1.1b"><ci id="S1.T1.52.52.52.4.m1.1.1.cmml" xref="S1.T1.52.52.52.4.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.52.52.52.4.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.52.52.52.4.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.53.53.53.5"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.53.53.53.5.m1.1"><semantics id="S1.T1.53.53.53.5.m1.1a"><mi id="S1.T1.53.53.53.5.m1.1.1" mathvariant="normal" xref="S1.T1.53.53.53.5.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.53.53.53.5.m1.1b"><ci id="S1.T1.53.53.53.5.m1.1.1.cmml" xref="S1.T1.53.53.53.5.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.53.53.53.5.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.53.53.53.5.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.54.54.54.6"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.54.54.54.6.m1.1"><semantics id="S1.T1.54.54.54.6.m1.1a"><mi id="S1.T1.54.54.54.6.m1.1.1" mathvariant="normal" xref="S1.T1.54.54.54.6.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.54.54.54.6.m1.1b"><ci id="S1.T1.54.54.54.6.m1.1.1.cmml" xref="S1.T1.54.54.54.6.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.54.54.54.6.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.54.54.54.6.m1.1d">✓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares several existing methods for human motion generation and editing, highlighting their capabilities across various tasks.  The tasks include text-based and trajectory-based motion generation and editing, in-between motion generation, and motion style transfer. Each method's performance is represented using checkmarks (✓) to indicate whether it was trained for the specific task, an 'x' to indicate it wasn't trained for the task, and a hyphen (-) to show that while not explicitly trained, zero-shot implementation might be possible. This table provides a concise overview of the state-of-the-art in unified human motion processing before introducing the proposed MotionLab framework.
> <details>
> <summary>read the caption</summary>
> Table 1. Summary of different methods focusing on motion generation and editing. ✓✓\checkmark✓ indicates that the method has been trained for the task, ×\times× indicates that the method has not been trained, and −-- indicates that the method has not been trained but can be implemented in a zero-shot manner.
> </details>





### In-depth insights


#### Unified Motion Model
A unified motion model, as described in the research paper, aims to **consolidate diverse human motion tasks** such as generation and editing under a single framework.  This is achieved by introducing the **Motion-Condition-Motion paradigm**, which uses source motion, condition, and target motion to predict target movement.  This elegantly handles different tasks; generation uses a null source while editing utilizes the original motion.  The model's success relies heavily on the **MotionFlow Transformer**, leveraging rectified flows to efficiently map source to target motions while being guided by conditions.  **Key innovations** include Aligned Rotational Position Encoding for time synchronization and Task Instruction Modulation to distinguish tasks effectively, improving efficiency and avoiding task-specific modules. The **curriculum learning strategy** enhances generalization by introducing tasks progressively in order of difficulty.  Overall, the proposed unified motion model demonstrates a significant advance in versatility, efficiency and performance compared to existing separate models.  **Future improvements** could involve incorporating more detailed body parts like fingers and facial features to increase realism and broaden practical application.

#### MCM Paradigm
The Motion-Condition-Motion (MCM) paradigm, as proposed in the research paper, presents a novel and unified approach to human motion generation and editing.  Its core strength lies in its conceptual elegance: framing diverse tasks – from text-based generation to complex style transfers – under a single, intuitive paradigm.  By defining each task as a transformation from a source motion, guided by a condition, to a target motion, **MCM elegantly unifies tasks previously treated in isolation.** This unification offers crucial advantages: facilitating knowledge sharing between tasks, thereby potentially improving performance on data-scarce tasks, and enabling more efficient model architectures.  The paradigm's success hinges on the effectiveness of the proposed MotionLab framework, which utilizes rectified flows and specialized techniques like Aligned Rotational Position Encoding to handle multiple modalities and temporal synchronization.  **While the paradigm’s effectiveness is demonstrated, potential challenges** remain, particularly in scaling to extremely high-resolution data or incorporating diverse motion qualities such as finger movements or facial expressions.  Nevertheless, MCM represents a significant step toward a more holistic and efficient approach to human motion modeling, potentially impacting various fields, from computer graphics to robotics.

#### MotionFlow Xformr
The conceptualization of "MotionFlow Xformr" suggests a novel transformer architecture specifically designed for human motion processing.  Its core innovation likely lies in integrating **rectified flows**, enabling efficient and robust learning of motion dynamics. This contrasts with traditional diffusion models, offering a potential advantage in speed and stability.  The architecture likely processes motion data as a sequence of tokens, with the transformer layers capturing temporal dependencies and relationships between different body parts.  The name suggests that the model focuses on learning the flow of motion, possibly incorporating techniques to explicitly model and predict the trajectory of motion in the future.  **Multi-modality** is implied; the transformer may accept not only raw motion data but also textual descriptions or other contextual information (such as style or trajectory targets), making the model versatile for diverse tasks such as motion generation, editing, and style transfer. The use of **attention mechanisms** within the transformer architecture is also likely, facilitating informed information processing among different parts of the motion sequence and conditioning modalities. The efficacy of this approach hinges on the effectiveness of the rectified flow integration, the design of the attention mechanisms, and the overall architecture's capacity to handle various input and output representations of human motion.

#### Curriculum Learning
The research paper employs curriculum learning as a **crucial training strategy** for its unified human motion generation and editing framework.  This approach is particularly important because the model is designed to handle multiple diverse tasks simultaneously.  **Starting with simpler tasks and gradually progressing to more complex ones**, curriculum learning helps the model learn foundational knowledge before tackling more challenging aspects.  This prevents catastrophic forgetting and ensures that the model effectively shares information across diverse tasks. The **hierarchical nature** of the curriculum, where foundational concepts are established first, enables smoother and more efficient knowledge integration.  Specifically, the curriculum starts with simpler tasks like reconstructing masked source motions, enhancing the model's comprehension of motion characteristics before proceeding to more challenging tasks involving text, trajectory, and style, fostering a **seamless knowledge transfer**. The ultimate aim is to achieve **enhanced generalization and performance** across all tasks, demonstrating the effectiveness of curriculum learning in training sophisticated, unified models.

#### Future Research
Future research directions stemming from this MotionLab framework could explore several promising avenues.  **Expanding the model's capabilities to handle more nuanced and complex human motion** is crucial, encompassing fine-grained finger and facial movements for enhanced realism and expressivity. This would involve incorporating larger and more diverse datasets capturing these intricate details.  Another key area is **improving the efficiency and scalability of the model**, particularly for real-time applications such as virtual reality and interactive simulations. This necessitates exploring optimized architectures and training strategies.  Furthermore, **investigating the potential for cross-modal generation and editing** would unlock new possibilities, allowing users to seamlessly combine different input modalities (text, audio, video) to achieve a broader spectrum of creative control over human motion.  Finally, **rigorous evaluations on more diverse and challenging datasets**, including those with different cultural backgrounds and motion styles, are vital to fully assess the model's robustness and generalizability.  This work could incorporate metrics beyond those employed in the current research, providing a more comprehensive evaluation framework.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.02358/x2.png)

> 🔼 Figure 2 illustrates the key difference between the trajectory in diffusion models and rectified flows.  Diffusion models generate a trajectory from noise (x₀) to data (x₁) that is not linear and changes velocity as the process evolves.  This is shown mathematically as  xt = √(1-αt¯)x0 + √αt¯ϵ.  In contrast, rectified flows create a trajectory with constant velocity, moving linearly from x₀ to x₁. This is represented by xt = (1-t)x₀ + tx₁. This linear trajectory is what makes rectified flows more robust and efficient for learning, as indicated by Zhao et al. (2024).
> <details>
> <summary>read the caption</summary>
> Figure 2. Demonstration of the difference trajectory between diffusion models and rectified flows. This difference lies in that the trajectory of diffusion models is based on xt=(1−αt¯)⁢x0+αt¯⁢ϵsubscript𝑥𝑡1¯subscript𝛼𝑡subscript𝑥0¯subscript𝛼𝑡italic-ϵx_{t}=\sqrt{(1-\overline{\alpha_{t}})}x_{0}+\sqrt{\overline{\alpha_{t}}}\epsilonitalic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = square-root start_ARG ( 1 - over¯ start_ARG italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_ARG ) end_ARG italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT + square-root start_ARG over¯ start_ARG italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_ARG end_ARG italic_ϵ, while the trajectory of rectified flows is based on xt=(1−t)⁢x0+t⁢x1subscript𝑥𝑡1𝑡subscript𝑥0𝑡subscript𝑥1x_{t}=(1-t)x_{0}+tx_{1}italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = ( 1 - italic_t ) italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT + italic_t italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT. This distinction leads to more robust learning by maintaining a constant velocity, contributing to model’s efficiency (Zhao et al., 2024).
> </details>



![](https://arxiv.org/html/2502.02358/x3.png)

> 🔼 Figure 3 is a two-part illustration detailing the architecture of MotionLab, a unified framework for human motion generation and editing.  (a) shows the overall system, highlighting the input modalities (source motion, condition, task instruction) fed into the core MotionFlow Transformer (MFT). The MFT processes these inputs to generate the target motion.  (b) zooms in on a single MFT block, showcasing its internal components: joint attention mechanisms for cross-modal interaction, condition paths for modality-specific processing, and aligned rotational position encoding for temporal synchronization.  The figure visually represents the flow of information within the MotionLab framework.
> <details>
> <summary>read the caption</summary>
> Figure 3. Illustration of our MotionLab and the detail of its MotionFlow Transformer (MFT).
> </details>



![](https://arxiv.org/html/2502.02358/x4.png)

> 🔼 This figure displays qualitative results from the MotionLab model for text-based human motion generation.  Multiple examples are shown, each demonstrating the model's ability to generate a realistic 3D human motion sequence from a given text prompt.  To enhance clarity and visualize the temporal progression of each generated motion, the color scheme of the 3D models changes gradually from light to dark colors as the motion unfolds.
> <details>
> <summary>read the caption</summary>
> Figure 4. Qualitative results of MotionLab on the text-based motion generation. For clarity, as time progresses, motion sequences transit from light to dark colors.
> </details>



![](https://arxiv.org/html/2502.02358/x5.png)

> 🔼 This figure showcases the capabilities of MotionLab in text-based motion editing.  It presents several examples where a source motion (shown transparently) is modified based on a textual instruction. The resulting edited motion, generated by MotionLab, is displayed alongside the source motion for direct comparison. This illustrates how MotionLab can accurately and naturally alter existing motion sequences according to textual descriptions, allowing for fine-grained control over the editing process.
> <details>
> <summary>read the caption</summary>
> Figure 5. Qualitative results of MotionLab on the text-based motion editing. The transparent motion is the source motion, and the other is the generated motion.
> </details>



![](https://arxiv.org/html/2502.02358/x6.png)

> 🔼 Figure 6 showcases examples of human motion generated by MotionLab using trajectory-based input.  The system takes a target trajectory as input (represented by red spheres for the pelvis, right hand, and right foot) and generates a full 3D human motion sequence that follows that trajectory. This demonstrates MotionLab's ability to generate realistic and accurate motion sequences conditioned on specified joint movements over time.
> <details>
> <summary>read the caption</summary>
> Figure 6. Qualitative results of MotionLab on the trajectory-based motion generation. The red balls are the trajectory of the pelvis, right hand and right foot.
> </details>



![](https://arxiv.org/html/2502.02358/x7.png)

> 🔼 Figure 7 presents a quantitative comparison of motion in-between generation results between the proposed MotionLab model and the CondMDI model (Cohan et al., 2024) using the HumanML3D dataset (Guo et al., 2022a).  The figure displays a comparison across four key metrics: Fréchet Inception Distance (FID), R-precision (top 3), average error, and foot skating ratio. Lower FID values indicate better generation quality, higher R-precision indicates higher accuracy, lower average error reflects better fidelity to target motion, and lower foot skating ratio shows better physical plausibility.  The bar chart visually demonstrates that MotionLab significantly outperforms CondMDI across all metrics, showcasing its superior performance in generating smooth and realistic in-between motions.
> <details>
> <summary>read the caption</summary>
> Figure 7. Comparison of the motion in-between with CondMDI (Cohan et al., 2024) on HumanML3D (Guo et al., 2022a), which shows that our model outperforms CondMDI.
> </details>



![](https://arxiv.org/html/2502.02358/extracted/6183938/Figure/style.png)

> 🔼 Figure 8 presents a quantitative comparison of motion style transfer performance between the proposed MotionLab model and the state-of-the-art MCM-LDM model.  The comparison uses a subset of the HumanML3D dataset and evaluates two key aspects of style transfer: semantic preservation (measured by Content Recognition Accuracy or CRA) and style accuracy (measured by Style Recognition Accuracy or SRA).  The bar chart visually demonstrates that MotionLab achieves superior performance in both CRA and SRA compared to MCM-LDM, indicating a stronger ability to retain the original meaning of the source motion while effectively adapting the style from a target motion.
> <details>
> <summary>read the caption</summary>
> Figure 8. Comparison of the motion style transfer with MCM-LDM (Song et al., 2024) on a subset of HumanML3D (Guo et al., 2022a). This shows that our model has a stronger ability to preserve the semantics of source motion and a stronger ability to learn the style of style motion.
> </details>



![](https://arxiv.org/html/2502.02358/x8.png)

> 🔼 This figure shows an ablation study on the motion in-between task, comparing different positional encoding methods used in MotionLab. Three versions of the same motion in-between task are shown, using different positional encoding strategies: 1D-learnable position encoding (beige), Aligned ROPE (purple), and the original keyframes from the input (gray). The visual differences highlight that Aligned ROPE significantly improves the quality of the generated motion compared to the other methods. The improved temporal alignment between the generated motion and the input keyframes demonstrates the importance of Aligned ROPE for motion in-between tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9. Ablation results of MotionLab on the motion in-between. Beige motion is use 1D-learnable position encoding, purple motion use Aligned ROPE, and gray motions are the poses provided in keyframes, demonstrating the importance of Aligned ROPE.
> </details>



![](https://arxiv.org/html/2502.02358/extracted/6183938/Figure/timesteps.png)

> 🔼 Figure 10 presents a comparison of inference time for text-based human motion generation.  The experiment measured Average Inference Time per Sample (AITS) using the HumanML3D dataset (Guo et al., 2022a).  The testing excluded model and data loading times, and all tests ran on the same RTX 4090D GPU for consistent comparison.  The graph plots FID (Fréchet Inception Distance, lower is better) against AITS (lower is better).  The closer a model's point is to the lower-left corner of the plot, indicating both high generation quality (low FID) and fast inference (low AITS), the stronger the model is deemed to be.
> <details>
> <summary>read the caption</summary>
> Figure 10. Comparison of the inference time on text-based motion generation. We calculate AITS on the test set of HumanML3D (Guo et al., 2022a) without model or data loading parts. All tests are performed on the same RTX 4090D. The closer the model’s points are to the lower left corner, the stronger the model is.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.17.17">
<tr class="ltx_tr" id="S5.T2.17.17.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.17.17.18.1">Task</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.17.17.18.2">Source Motion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.17.17.18.3">Condition</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.17.17.18.4">Target Motion</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.4">unconditional generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mi id="S5.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T2.1.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><emptyset id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mi id="S5.T2.2.2.2.2.m1.1.1" mathvariant="normal" xref="S5.T2.2.2.2.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><emptyset id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mi id="S5.T2.3.3.3.3.m1.1.1" mathvariant="normal" xref="S5.T2.3.3.3.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.2">masked reconstruction</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.3">masked source motion</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.1.m1.1a"><mi id="S5.T2.4.4.4.1.m1.1.1" mathvariant="normal" xref="S5.T2.4.4.4.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><emptyset id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.4">source motion</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.2">reconstruction</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.3">complete source motion</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.5.5.5.1.m1.1"><semantics id="S5.T2.5.5.5.1.m1.1a"><mi id="S5.T2.5.5.5.1.m1.1.1" mathvariant="normal" xref="S5.T2.5.5.5.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.1.m1.1b"><emptyset id="S5.T2.5.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.5.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5.4">source motion</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.3">text-based generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.6.6.6.1.m1.1"><semantics id="S5.T2.6.6.6.1.m1.1a"><mi id="S5.T2.6.6.6.1.m1.1.1" mathvariant="normal" xref="S5.T2.6.6.6.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.1.m1.1b"><emptyset id="S5.T2.6.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.6.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.4">text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.7.7.7.2.m1.1"><semantics id="S5.T2.7.7.7.2.m1.1a"><mi id="S5.T2.7.7.7.2.m1.1.1" mathvariant="normal" xref="S5.T2.7.7.7.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.2.m1.1b"><ci id="S5.T2.7.7.7.2.m1.1.1.cmml" xref="S5.T2.7.7.7.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.9.9.9">
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.3">trajectory-based generation</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.8.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.8.8.8.1.m1.1"><semantics id="S5.T2.8.8.8.1.m1.1a"><mi id="S5.T2.8.8.8.1.m1.1.1" mathvariant="normal" xref="S5.T2.8.8.8.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.1.m1.1b"><emptyset id="S5.T2.8.8.8.1.m1.1.1.cmml" xref="S5.T2.8.8.8.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.4">text/joints’ coordinates</td>
<td class="ltx_td ltx_align_center" id="S5.T2.9.9.9.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.9.9.9.2.m1.1"><semantics id="S5.T2.9.9.9.2.m1.1a"><mi id="S5.T2.9.9.9.2.m1.1.1" mathvariant="normal" xref="S5.T2.9.9.9.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.2.m1.1b"><ci id="S5.T2.9.9.9.2.m1.1.1.cmml" xref="S5.T2.9.9.9.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.11.11.11">
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.3">motion in-between</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.10.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.10.10.10.1.m1.1"><semantics id="S5.T2.10.10.10.1.m1.1a"><mi id="S5.T2.10.10.10.1.m1.1.1" mathvariant="normal" xref="S5.T2.10.10.10.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.1.m1.1b"><emptyset id="S5.T2.10.10.10.1.m1.1.1.cmml" xref="S5.T2.10.10.10.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.4">text/poses in keyframes</td>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.11.11.11.2.m1.1"><semantics id="S5.T2.11.11.11.2.m1.1a"><mi id="S5.T2.11.11.11.2.m1.1.1" mathvariant="normal" xref="S5.T2.11.11.11.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.11.2.m1.1b"><ci id="S5.T2.11.11.11.2.m1.1.1.cmml" xref="S5.T2.11.11.11.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.11.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.11.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.13.13.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.13.13.13.3">text-based editing</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.12.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.12.12.12.1.m1.1"><semantics id="S5.T2.12.12.12.1.m1.1a"><mi id="S5.T2.12.12.12.1.m1.1.1" mathvariant="normal" xref="S5.T2.12.12.12.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.12.1.m1.1b"><ci id="S5.T2.12.12.12.1.m1.1.1.cmml" xref="S5.T2.12.12.12.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.12.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.12.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.13.13.13.4">text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.13.13.13.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.13.13.13.2.m1.1"><semantics id="S5.T2.13.13.13.2.m1.1a"><mi id="S5.T2.13.13.13.2.m1.1.1" mathvariant="normal" xref="S5.T2.13.13.13.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.13.13.13.2.m1.1b"><ci id="S5.T2.13.13.13.2.m1.1.1.cmml" xref="S5.T2.13.13.13.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.13.13.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.13.13.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.15.15">
<td class="ltx_td ltx_align_center" id="S5.T2.15.15.15.3">trajectory-based editing</td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.14.14.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.14.14.14.1.m1.1"><semantics id="S5.T2.14.14.14.1.m1.1a"><mi id="S5.T2.14.14.14.1.m1.1.1" mathvariant="normal" xref="S5.T2.14.14.14.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.14.14.14.1.m1.1b"><ci id="S5.T2.14.14.14.1.m1.1.1.cmml" xref="S5.T2.14.14.14.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.14.14.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.14.14.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.15.15.4">text/joints’ coordinates</td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.15.15.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.15.15.15.2.m1.1"><semantics id="S5.T2.15.15.15.2.m1.1a"><mi id="S5.T2.15.15.15.2.m1.1.1" mathvariant="normal" xref="S5.T2.15.15.15.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.15.15.15.2.m1.1b"><ci id="S5.T2.15.15.15.2.m1.1.1.cmml" xref="S5.T2.15.15.15.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.15.15.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.15.15.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.17.17.17">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.17.17.17.3">style transfer</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.16.16.16.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.16.16.16.1.m1.1"><semantics id="S5.T2.16.16.16.1.m1.1a"><mi id="S5.T2.16.16.16.1.m1.1.1" mathvariant="normal" xref="S5.T2.16.16.16.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.16.16.16.1.m1.1b"><ci id="S5.T2.16.16.16.1.m1.1.1.cmml" xref="S5.T2.16.16.16.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.16.16.16.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.16.16.16.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.17.17.17.4">style motion</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.17.17.17.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T2.17.17.17.2.m1.1"><semantics id="S5.T2.17.17.17.2.m1.1a"><mi id="S5.T2.17.17.17.2.m1.1.1" mathvariant="normal" xref="S5.T2.17.17.17.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T2.17.17.17.2.m1.1b"><ci id="S5.T2.17.17.17.2.m1.1.1.cmml" xref="S5.T2.17.17.17.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.17.17.17.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T2.17.17.17.2.m1.1d">✓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table categorizes various human motion tasks (unconditional generation, masked reconstruction, reconstruction, text-based generation, trajectory-based generation, motion in-between, text-based editing, trajectory-based editing, style transfer) within the Motion-Condition-Motion paradigm.  For each task, it specifies whether a source motion is required, what type of condition is used (text, trajectory, style, or none), and whether a target motion is generated. This organization helps to clarify the relationships between different motion tasks and how they are unified under a common framework.
> <details>
> <summary>read the caption</summary>
> Table 2. Structuring human motion tasks within our Motion-Condition-Motion paradigm.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.6.6">
<tr class="ltx_tr" id="S5.T3.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.2">R@3<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3.3">Diversity<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">→</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4">
<span class="ltx_text" id="S5.T3.4.4.4.4.2"></span> <span class="ltx_text" id="S5.T3.4.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.4.4.4.4.1.1">
<span class="ltx_tr" id="S5.T3.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.4.4.1.1.2.1">MM</span></span>
<span class="ltx_tr" id="S5.T3.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.4.4.1.1.1.1">Dist<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.1.1.1.1.m1.1"><semantics id="S5.T3.4.4.4.4.1.1.1.1.m1.1a"><mo id="S5.T3.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.1.1.1.1.m1.1b"><ci id="S5.T3.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.4.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.5">MModality<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mo id="S5.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><ci id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.6">AITS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.6.m1.1"><semantics id="S5.T3.6.6.6.6.m1.1a"><mo id="S5.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T3.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.6.m1.1b"><ci id="S5.T3.6.6.6.6.m1.1.1.cmml" xref="S5.T3.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.1">GT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.2">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.3">0.797</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.4">9.503</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.5">2.974</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.6">2.799</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.1">T2M <cite class="ltx_cite ltx_citemacro_citep">(Guo et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib23" title="">2022b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2">1.087</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.3">0.736</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.4">9.188</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.5">3.340</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.6">2.090</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.7"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.8.7.1">0.040</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.9">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.1">MDM <cite class="ltx_cite ltx_citemacro_citep">(Tevet et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib59" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.2">0.544</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3">0.611</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.4"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.9.4.1">9.559</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.5">5.566</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.9.6.1">2.799</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.7">26.04</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.10">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.1">MotionDiffuse <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib67" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.2">1.954</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.3">0.739</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4">11.10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.5">2.958</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.6">0.730</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.7">15.51</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.11">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.1">MLD <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib10" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.2">0.473</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.3">0.772</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.4">9.724</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5">3.196</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.6">2.413</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.7">0.236</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.12">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.1">T2M-GPT<cite class="ltx_cite ltx_citemacro_citep">(Zhang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib66" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.12.2.1">0.116</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.3">0.775</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.4">9.761</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.5">3.118</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6">1.856</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.7">11.24</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.13">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.1">MotionGPT <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.2">0.232</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.3">0.778</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.13.4.1">9.528</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.5">3.096</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.6">2.008</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7">1.240</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.14">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.1">CondMDI <cite class="ltx_cite ltx_citemacro_citep">(Cohan et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib12" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.2">0.254</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.3">0.6450</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.4">9.749</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.7">57.25</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.15">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.1">MotionLCM <cite class="ltx_cite ltx_citemacro_citep">(Dai et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib13" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.2">0.304</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.3">0.698</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.4">9.607</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.5">3.012</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.6">2.259</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.15.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.15.7.1">0.045</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.16">
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.1">MotionCLR <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.2">0.269</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.3"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.16.3.1">0.831</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.4">9.607</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.5"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.16.5.1">2.806</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.6">1.985</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.16.7">0.830</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.17">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.17.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.17.2.1">0.223</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.17.3.1">0.805</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.4">9.589</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.6.17.5.1">2.881</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.6"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.17.6.1">3.029</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.6.6.17.7">0.068</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive comparison of various text-based human motion generation models on the HumanML3D dataset.  The models are evaluated across multiple metrics: Fréchet Inception Distance (FID), which measures the similarity of generated motion distributions to real motion; Recall@3 (R@3), indicating the proportion of generated motions that correctly match the textual description; Diversity, representing the variety of generated motions; Average Inference Time per Sample (AITS), showing the computational efficiency; and Average Inference Time per Sentence (AITS), which shows the computational efficiency. The table highlights the best-performing model (in bold) and the close contenders (underlined), giving a complete overview of the performance of different models in generating human motion based on text descriptions.  All AITS values were recalculated using an RTX 4090D GPU for consistency.
> <details>
> <summary>read the caption</summary>
> Table 3. Evaluation of text-based motion generation on HumanML3D(Guo et al., 2022a) dataset. All AITS have been recalculated on RTX 4090D. The models in bold are the optimal models, and the models in underline are the sub-optimal models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.6.6">
<tr class="ltx_tr" id="S5.T4.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.6.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.6.8">Joints</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.2">R@3<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.3">Diversity<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">→</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4.4">
<span class="ltx_text" id="S5.T4.4.4.4.4.2"></span> <span class="ltx_text" id="S5.T4.4.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.4.4.4.4.1.1">
<span class="ltx_tr" id="S5.T4.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.4.4.1.1.2.1">Foot skate</span></span>
<span class="ltx_tr" id="S5.T4.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.4.4.1.1.1.1">ratio<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.1.1.1.1.m1.1"><semantics id="S5.T4.4.4.4.4.1.1.1.1.m1.1a"><mo id="S5.T4.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.1.1.1.1.m1.1b"><ci id="S5.T4.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.4.4.4.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T4.4.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.5.5.5">
<span class="ltx_text" id="S5.T4.5.5.5.5.2"></span> <span class="ltx_text" id="S5.T4.5.5.5.5.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.5.5.5.5.1.1">
<span class="ltx_tr" id="S5.T4.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.5.5.5.5.1.1.2.1">Average</span></span>
<span class="ltx_tr" id="S5.T4.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.5.5.5.5.1.1.1.1">Error<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.5.1.1.1.1.m1.1"><semantics id="S5.T4.5.5.5.5.1.1.1.1.m1.1a"><mo id="S5.T4.5.5.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.5.1.1.1.1.m1.1b"><ci id="S5.T4.5.5.5.5.1.1.1.1.m1.1.1.cmml" xref="S5.T4.5.5.5.5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.5.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T4.5.5.5.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.6.6">AITS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.6.m1.1a"><mo id="S5.T4.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.6.m1.1b"><ci id="S5.T4.6.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.1">GT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.3">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.4">0.797</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.5">9.503</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.6">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.7.8">-</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.1">GMD <cite class="ltx_cite ltx_citemacro_citep">(Karunratanakul et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib32" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.2">pelvis</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.3">0.576</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.4">0.665</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.5">9.206</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.6">0.101</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.8.7.1">0.1439</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.8.8">137.0</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.9">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.1">PriorMDM <cite class="ltx_cite ltx_citemacro_citep">(Shafir et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib51" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.2">pelvis</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.3">0.475</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.4">0.583</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.5">9.156</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.7">0.4417</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.9.8">19.83</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.10">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.1">OmniControl <cite class="ltx_cite ltx_citemacro_citep">(Xie et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib64" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.2">pelvis</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.10.3.1">0.212</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.4">0.678</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.5">9.773</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.10.6.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.7">0.3226</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.10.8">39.78</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.11">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.1">MotionLCM <cite class="ltx_cite ltx_citemacro_citep">(Dai et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib13" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.2">pelvis</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.3">0.531</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.11.4.1">0.752</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.11.5.1">9.253</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.7">0.1897</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.11.8"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.11.8.1">0.035</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.12">
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.12.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.2">pelvis</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.12.3.1">0.095</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.12.4.1">0.740</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.5"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.12.5.1">9.502</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.6"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.12.6.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.7"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.12.7.1">0.0286</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.12.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.6.12.8.1">0.133</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.1">OmniControl <cite class="ltx_cite ltx_citemacro_citep">(Xie et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib64" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.2">all</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.3">0.310</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.4">0.693</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.5">9.502</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.6">0.061</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.7">0.0404</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.13.8">76.71</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.14">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.14.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.2">all</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.3">0.126</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.4">0.765</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.5">9.554</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.6">0.002</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.7">0.0334</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.6.6.14.8">0.134</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive evaluation of trajectory-based motion generation methods using the HumanML3D dataset (Guo et al., 2022a).  It compares various models on key metrics: Average Error (measuring the discrepancy between generated and actual motion joint positions), R@3 (retrieval precision indicating the percentage of successful retrieval of motion from generated data), and Diversity (measuring the variety of generated motions).  The table also includes AITS (average inference time per sample), calculated using an RTX 4090D GPU for consistent benchmarking. The 'pelvis' and 'all' columns refer to evaluating the metrics based on the pelvis joint only or all joints respectively.  This allows for a granular analysis of performance across different aspects of trajectory-based motion generation.
> <details>
> <summary>read the caption</summary>
> Table 4. Evaluation of trajectory-based motion generation on HumanML3D(Guo et al., 2022a) dataset. AITS of all models have been recalculated on RTX 4090D.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.8.8">
<tr class="ltx_tr" id="S5.T5.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.3" rowspan="2"><span class="ltx_text" id="S5.T5.2.2.2.3.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.4" rowspan="2"><span class="ltx_text" id="S5.T5.2.2.2.4.1">Condition</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T5.2.2.2.5">generated-to-target retrieval</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T5.1.1.1.1.1"><span class="ltx_text" id="S5.T5.1.1.1.1.1.2"></span> <span class="ltx_text" id="S5.T5.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.T5.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.1.1.1.1.2.1">Average</span></span>
<span class="ltx_tr" id="S5.T5.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.1.1.1.1.1.1">Error<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span> <span class="ltx_text" id="S5.T5.1.1.1.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.2" rowspan="2"><span class="ltx_text" id="S5.T5.2.2.2.2.1">AITS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.1.m1.1"><semantics id="S5.T5.2.2.2.2.1.m1.1a"><mo id="S5.T5.2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.1.m1.1b"><ci id="S5.T5.2.2.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6.6">
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.3.1">R@1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mo id="S5.T5.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><ci id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.2">R@2<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.2.m1.1"><semantics id="S5.T5.4.4.4.2.m1.1a"><mo id="S5.T5.4.4.4.2.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.2.m1.1b"><ci id="S5.T5.4.4.4.2.m1.1.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.3">R@3<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.3.m1.1"><semantics id="S5.T5.5.5.5.3.m1.1a"><mo id="S5.T5.5.5.5.3.m1.1.1" stretchy="false" xref="S5.T5.5.5.5.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.3.m1.1b"><ci id="S5.T5.5.5.5.3.m1.1.1.cmml" xref="S5.T5.5.5.5.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.6.4">AvgR <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.4.m1.1"><semantics id="S5.T5.6.6.6.4.m1.1a"><mo id="S5.T5.6.6.6.4.m1.1.1" stretchy="false" xref="S5.T5.6.6.6.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.4.m1.1b"><ci id="S5.T5.6.6.6.4.m1.1.1.cmml" xref="S5.T5.6.6.6.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.1">GT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.3">73.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.4">84.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.5">89.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.6">2.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.9.8">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.1">TMED<sup class="ltx_sup" id="S5.T5.7.7.7.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_citep">(Athanasiou et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.2">text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.3">38.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.4">50.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.5">62.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.6">4.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.7.7.8">26.57</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.10">
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.1"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.10.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.2">text</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.3">56.34</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.4">70.40</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.5">77.24</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.6">3.54</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.10.8">0.16</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.1">TMED<sup class="ltx_sup" id="S5.T5.8.8.8.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_citep">(Athanasiou et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2502.02358v3#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.2">trajectory</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.3">60.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.4">73.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.5">82.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.6">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.7">0.129</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.8.8">30.56</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.11">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.1"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.11.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.2">trajectory</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.3">72.65</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.4">82.71</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.5">87.89</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.6">2.20</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.7">0.027</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.8.8.11.8">0.19</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of text-based and trajectory-based motion editing methods on the MotionFix dataset.  Since the original MotionFix models were trained using the SMPL skeleton, the authors re-implemented these models using the HumanML3D skeleton for a fair comparison.  The table shows results for Recall@1, Recall@2, Recall@3, and average recall, along with the average inference time per sample (AITS) which has been recalculated on an RTX 4090D GPU. The results highlight the performance improvements achieved by the proposed MotionLab method.
> <details>
> <summary>read the caption</summary>
> Table 5. Evaluation of text-based and trajectory-based motion editing on MotionFix (Athanasiou et al., 2024) dataset. TMED∗ mean that we re-implement the models since original models are trained on the skeleton of SMPL format, while our models are trained on HumanML3D format. AITS of all models have been recalculated on RTX 4090D.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1">
<tr class="ltx_tr" id="S6.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.2">text gen. (FID)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.3">traj. gen. (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.4">text edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.5">traj. edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.6">in-between (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.7">style transfer (SRA)</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.1">w/o rectified flows</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.2">0.334</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.3">0.0359</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.4">54.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.5">69.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.6">0.0289</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.7">63.96</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.4">
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.1">w/o MotionFlow Transformer</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.2">0.534</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.3">0.0447</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.4">51.26</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.5">65.34</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.6">0.0349</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.7">53.83</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.5">
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.1">w/o Aligned ROPE</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.2">0.246</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.3">0.0886</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.4">45.39</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.5">61.99</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.6">0.0756</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.7">56.59</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.6">
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.1">w/o task instruction modulation</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.2">0.279</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.3">0.0401</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.4">55.96</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.5">70.01</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.6">0.0288</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.7">63.91</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.7">
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.1">w/o motion curriculum learning</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.2">2.236</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.3">0.1983</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.4">28.56</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.5">36.61</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.6">0.1682</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.7">34.23</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.1">Ours<sup class="ltx_sup" id="S6.T6.1.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1">0.209</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.1.3.1">0.0398</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.1.4.1">41.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.1.5.1">59.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.1.6.1">0.0371</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.7.1">67.55</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.8.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.8.2.1">0.223</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.3"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.8.3.1">0.0334</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.4"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.8.4.1">56.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.5"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.8.5.1">72.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.6"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.8.6.1">0.0273</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.1.8.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.1.8.7.1">64.97</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the MotionLab model. It shows the impact of removing key components of the model (rectified flows, MotionFlow Transformer, Aligned ROPE, task instruction modulation, and motion curriculum learning) on the performance of various motion generation and editing tasks.  The performance metrics used vary depending on the specific task.  For example, FID is used for text-based generation, average error is used for trajectory-based generation and motion in-between tasks, R@1 is used for motion editing tasks, and SRA is used for motion style transfer tasks. The table also includes a comparison to a baseline model where the same framework is used to train separate models for each task (denoted as 'Ours*'). This allows for assessing the benefits of the unified multi-task learning approach.  Further details can be found in the supplementary materials.
> <details>
> <summary>read the caption</summary>
> Table 6. Ablation studies of our MotionLab’s main designs on each task. Ours∗ means that we use this framework to train models in the same size for each task separately. For text-based motion generation, we compare FID; for trajectory-based motion generation and motion in-between. we compare average error; for motion editing, we compare R@1; for motion style transfer, we compare the SRA. Additional ablation studies are available in the supplementary.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1">
<tr class="ltx_tr" id="A2.T7.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.2">text gen. (FID)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.3">traj. gen. (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.4">text edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.5">traj. edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.6">in-between (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.1.7">style transfer (SRA)</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.1">1D-Learnable</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.2">0.246</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.3">0.0886</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.4">45.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.5">61.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.6">0.0756</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.7">56.59</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.1">3D-Learnable</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.2">0.346</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.3">0.1865</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.4">35.46</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.5">53.74</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.6">0.1460</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.7">58.81</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.1">3D-ROPE</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2">0.241</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.3">0.0579</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.4">51.34</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.5">70.00</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.6">0.0354</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.7">62.46</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.1">1D-ROPE (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.2">0.223</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.3">0.0334</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.4">56.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.5">72.65</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.6">0.0273</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T7.1.1.5.7">64.97</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on MotionLab, focusing on the impact of different position encoding methods on various tasks.  It compares the performance metrics (FID for text-based generation, average error for trajectory-based generation and motion in-between, R@1 for text and trajectory-based editing, and SRA for style transfer) achieved using different position encoding techniques: 1D-learnable, 3D-learnable, 3D-ROPE, and the proposed 1D-ROPE (Aligned ROPE). The results highlight the effectiveness of the proposed Aligned ROPE in improving the overall performance across all tasks. 
> <details>
> <summary>read the caption</summary>
> Table 7. Ablation studies of our MotionLab’s position encoding on each task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.2">text gen. (FID)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.3">traj. gen. (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.4">text edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.5">traj. edit (R@1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.6">in-between (avg. err.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.7">style transfer (SRA)</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.1">random selection based on FID</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.2">2.236</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.3">0.1983</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.4">28.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.5">36.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.6">0.1682</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.7">34.23</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.1">removing the masked pre-training</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.2">0.861</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.3">0.0932</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.4">44.99</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.5">63.92</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.6">0.0639</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.7">57.59</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.1">supervised fine-tuning all tasks together</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2">1.331</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.3">0.1317</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.4">38.19</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.5">55.22</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.6">0.1143</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.7">50.59</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.1">masked pre-training in order</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.2">0.256</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.3">0.0423</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.4">56.33</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.5">69.31</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.6">0.0264</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.7">64.39</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.1">motion curriculum learning</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.2">0.223</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.3">0.0334</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.4">56.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.5">72.65</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.6">0.0273</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.6.7">64.97</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments conducted on the MotionLab model to assess the impact of the motion curriculum learning strategy.  It shows the performance of MotionLab on several key tasks (text-based generation, trajectory-based generation, text-based editing, trajectory-based editing, motion in-between, and style transfer) when different aspects of the curriculum learning are removed or modified. This allows for a quantitative understanding of the contribution of this training strategy to the model's overall performance and versatility. Metrics reported include FID (Fréchet Inception Distance), Average Error, R@1 (recall at rank 1), and Style Recognition Accuracy (SRA), depending on the specific task.
> <details>
> <summary>read the caption</summary>
> Table 8. Ablation studies of our MotionLab’s motion curriculum learning on each task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T9.1.1">
<tr class="ltx_tr" id="A4.T9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.1.1.1.1">Task</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.1.1.1.2">Instruction</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.1.1.2.1">unconditional generation</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.1.1.2.2">“reconstruct given masked source motion.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.3">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.3.1">masked source motion generation</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.3.2">“reconstruct given masked source motion.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.4">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.4.1">reconstruct source motion</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.4.2">“reconstruct given masked source motion.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.5">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.5.1">trajectory-based generation (without text)</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.5.2">“generate motion by given trajectory.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.6">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.6.1">in-between (without text)</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.6.2">“generate motion by given key frames.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.7">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.7.1">style-based generation</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.7.2">“generate motion by given style.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.8">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.8.1">trajectory-based editing</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.8.2">“edit source motion by given trajectory.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.9">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.9.1">text-based editing</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.9.2">“edit source motion by given text.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.10">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.10.1">style transfer</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.10.2">“generate motion by the given style and content.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.11">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.11.1">in-between (with text)</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.11.2">“generate motion by given text and key frames.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.12">
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.12.1">trajectory-based generation (with text)</td>
<td class="ltx_td ltx_align_left" id="A4.T9.1.1.12.2">“generate motion by given text and trajectory.”</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_b" id="A4.T9.1.1.13.1">text-based generation</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A4.T9.1.1.13.2">“generate motion by given text.”</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific instructions used in the Task Instruction Modulation component of the MotionLab model.  These instructions serve as task-specific guidance for the model, ensuring it appropriately performs different human motion tasks. Each row represents a task (e.g., unconditional generation, text-based generation, motion editing), and the instruction column provides the text prompt used to guide the model's behavior for that task. The instructions are designed to be easily understood and can be directly fed to a CLIP model to generate the embedding needed by MotionLab.
> <details>
> <summary>read the caption</summary>
> Table 9. Instructions in the Task Instruction Modulations for each task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T10.4.4">
<tr class="ltx_tr" id="A5.T10.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T10.4.4.5.1">Task</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.4.4.5.2">Source Motion Guidance</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.4.4.5.3">Condition Guidance</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T10.1.1.1.2">trajectory-based generation (without text)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.1.1"><math alttext="-" class="ltx_Math" display="inline" id="A5.T10.1.1.1.1.m1.1"><semantics id="A5.T10.1.1.1.1.m1.1a"><mo id="A5.T10.1.1.1.1.m1.1.1" xref="A5.T10.1.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A5.T10.1.1.1.1.m1.1b"><minus id="A5.T10.1.1.1.1.m1.1.1.cmml" xref="A5.T10.1.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A5.T10.1.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A5.T10.1.1.1.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.1.3">1.5</td>
</tr>
<tr class="ltx_tr" id="A5.T10.2.2.2">
<td class="ltx_td ltx_align_left" id="A5.T10.2.2.2.2">in-between (without text)</td>
<td class="ltx_td ltx_align_center" id="A5.T10.2.2.2.1"><math alttext="-" class="ltx_Math" display="inline" id="A5.T10.2.2.2.1.m1.1"><semantics id="A5.T10.2.2.2.1.m1.1a"><mo id="A5.T10.2.2.2.1.m1.1.1" xref="A5.T10.2.2.2.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A5.T10.2.2.2.1.m1.1b"><minus id="A5.T10.2.2.2.1.m1.1.1.cmml" xref="A5.T10.2.2.2.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A5.T10.2.2.2.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A5.T10.2.2.2.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A5.T10.2.2.2.3">1.5</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.6">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.6.1">text-based generation</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.6.2">-</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.6.3">2.5</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.7">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.7.1">style-based generation</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.7.2">-</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.7.3">2.5</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.8">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.8.1">trajectory-based editing (without text)</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.8.2">2</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.8.3">2</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.9">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.9.1">text-based editing</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.9.2">2</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.9.3">2</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.10">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.10.1">style transfer</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.10.2">2.5</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.10.3">2.5</td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.3.3">
<td class="ltx_td ltx_align_left" id="A5.T10.3.3.3.2">in-between (with text)</td>
<td class="ltx_td ltx_align_center" id="A5.T10.3.3.3.1"><math alttext="-" class="ltx_Math" display="inline" id="A5.T10.3.3.3.1.m1.1"><semantics id="A5.T10.3.3.3.1.m1.1a"><mo id="A5.T10.3.3.3.1.m1.1.1" xref="A5.T10.3.3.3.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A5.T10.3.3.3.1.m1.1b"><minus id="A5.T10.3.3.3.1.m1.1.1.cmml" xref="A5.T10.3.3.3.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A5.T10.3.3.3.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A5.T10.3.3.3.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A5.T10.3.3.3.3">2</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.4">
<td class="ltx_td ltx_align_left" id="A5.T10.4.4.4.2">trajectory-based generation (with text)</td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.4.1"><math alttext="-" class="ltx_Math" display="inline" id="A5.T10.4.4.4.1.m1.1"><semantics id="A5.T10.4.4.4.1.m1.1a"><mo id="A5.T10.4.4.4.1.m1.1.1" xref="A5.T10.4.4.4.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A5.T10.4.4.4.1.m1.1b"><minus id="A5.T10.4.4.4.1.m1.1.1.cmml" xref="A5.T10.4.4.4.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A5.T10.4.4.4.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A5.T10.4.4.4.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A5.T10.4.4.4.3">2</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_b" id="A5.T10.4.4.11.1">trajectory-based editing</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T10.4.4.11.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A5.T10.4.4.11.3">2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the strength of classifier-free guidance used for each task in the MotionLab framework.  Classifier-free guidance is a technique used to improve the quality of generated results.  The values in the table represent the hyperparameter λ controlling the strength of the guidance.  A higher value indicates stronger guidance.  The tasks are categorized into generation and editing tasks, further broken down by the type of conditioning used (text, trajectory, etc.).  The values help demonstrate how the optimal guidance strength varies based on task complexity and conditioning modality.
> <details>
> <summary>read the caption</summary>
> Table 10. Strength of classifier free guidance for each task.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.02358/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02358/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}