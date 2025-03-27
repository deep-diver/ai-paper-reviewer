---
title: "Self-Supervised Learning of Motion Concepts by Optimizing Counterfactuals"
summary: "Opt-CWM: Self-supervised motion learning via counterfactual optimization, achieving state-of-the-art without labels!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Stanford University",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19953 {{< /keyword >}}
{{< keyword icon="writer" >}} Stefan Stojanov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19953" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19953" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19953/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Estimating motion is key for computer vision, but current methods often use synthetic data or hand-tuned rules, limiting their real-world use. Recent self-supervised learning offers promise but hasn't been fully used for motion estimation. Addressing this gap, this paper presents a new approach, leveraging counterfactual probes with pre-trained video models to achieve state-of-the-art motion estimation without using labels. 



The paper introduces Opt-CWM, where the core idea involves learning to optimize 'counterfactual probes' that extract motion information from a video model. Instead of relying on fixed heuristics or synthetic data, Opt-CWM learns perturbations tailored to the local appearance of the scene. By training a perturbation generator and using it in conjunction with a flow-conditioned predictor, the method achieves impressive results on real-world benchmarks. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Opt-CWM, a novel self-supervised learning technique for flow and occlusion estimation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieves state-of-the-art performance on real-world videos without relying on labeled data or fixed heuristics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates the effectiveness of learning to optimize counterfactual probes for extracting motion information from pre-trained video models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a novel self-supervised learning method for motion estimation, **achieving state-of-the-art results on real-world datasets**. It paves the way for more robust and generalizable motion understanding in various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19953/x1.png)

> 🔼 This figure illustrates the process of extracting optical flow and occlusion information using counterfactual perturbations within the context of Counterfactual World Modeling (CWM). Panel (A) introduces the core concept of CWM, where a model learns to predict the next frame of a video sequence based on a sparsely masked input. The asymmetry in masking the frames enforces the model to learn temporal dynamics efficiently. Panel (B) describes how to estimate optical flow by using a 'FLOW' probe. This probe involves applying a local perturbation to a specific point in the first frame and comparing the model's prediction of the next frame with and without the perturbation. The difference between these two predictions reveals the estimated motion of that point. Finally, panel (C) explains how to estimate occlusion using a similar probe named 'OCC'. If the resulting difference image is diffuse and has low magnitude, it suggests that the point has been occluded in the following frame.
> <details>
> <summary>read the caption</summary>
> Figure 1: Extracting flow and occlusion with counterfactual perturbation: (A) CWMs learn to predict the next frame with a temporally factored masking policy [4]. (B) The motion of a point can be estimated using a simple counterfactual probing program FLOW: the model predicts the next frame with and without a local perturbation placed on the point, and the difference image between the clean and perturbed predictions reveals the estimated motion. (C) Occlusion is estimated using a related probe OCC: when the perturbation difference image is diffuse and low magnitude, that indicates the perturbed point has been occluded.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.25.25">
<tr class="ltx_tr" id="S3.T1.25.25.26">
<td class="ltx_td ltx_align_top ltx_border_tt" id="S3.T1.25.25.26.1" rowspan="2" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.25.25.26.2" rowspan="2" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.26.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.25.25.26.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.26.3.1" style="font-size:90%;">DAVIS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.25.25.26.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.26.4.1" style="font-size:90%;">Kinetics</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.25.25.26.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.26.5.1" style="font-size:90%;">Kubric</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.1.1.1.1.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.2.2.2.2.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mrow id="S3.T1.3.3.3.3.m1.1.1" xref="S3.T1.3.3.3.3.m1.1.1.cmml"><mi id="S3.T1.3.3.3.3.m1.1.1.2" xref="S3.T1.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T1.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S3.T1.3.3.3.3.m1.1.1.1.cmml">&lt;</mo><msubsup id="S3.T1.3.3.3.3.m1.1.1.3" xref="S3.T1.3.3.3.3.m1.1.1.3.cmml"><mi id="S3.T1.3.3.3.3.m1.1.1.3.2.2" mathsize="90%" xref="S3.T1.3.3.3.3.m1.1.1.3.2.2.cmml">δ</mi><mtext id="S3.T1.3.3.3.3.m1.1.1.3.3" mathsize="90%" xref="S3.T1.3.3.3.3.m1.1.1.3.3a.cmml">avg</mtext><mi id="S3.T1.3.3.3.3.m1.1.1.3.2.3" mathsize="90%" xref="S3.T1.3.3.3.3.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><apply id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1"><lt id="S3.T1.3.3.3.3.m1.1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T1.3.3.3.3.m1.1.1.2.cmml" xref="S3.T1.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="S3.T1.3.3.3.3.m1.1.1.3.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.3.3.3.3.m1.1.1.3.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3">subscript</csymbol><apply id="S3.T1.3.3.3.3.m1.1.1.3.2.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.3.3.3.3.m1.1.1.3.2.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S3.T1.3.3.3.3.m1.1.1.3.2.2.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.2.2">𝛿</ci><ci id="S3.T1.3.3.3.3.m1.1.1.3.2.3.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.2.3">𝑥</ci></apply><ci id="S3.T1.3.3.3.3.m1.1.1.3.3a.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.3"><mtext id="S3.T1.3.3.3.3.m1.1.1.3.3.cmml" mathsize="63%" xref="S3.T1.3.3.3.3.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S3.T1.4.4.4.4.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m2.1"><semantics id="S3.T1.4.4.4.4.m2.1a"><mo id="S3.T1.4.4.4.4.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T1.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m2.1b"><ci id="S3.T1.4.4.4.4.m2.1.1.cmml" xref="S3.T1.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.5.5.5.5.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.6.6.6.6.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.7" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.7.7.7.7.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.8.8.8.8.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.8.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.10" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.9.m1.1a"><mrow id="S3.T1.9.9.9.9.m1.1.1" xref="S3.T1.9.9.9.9.m1.1.1.cmml"><mi id="S3.T1.9.9.9.9.m1.1.1.2" xref="S3.T1.9.9.9.9.m1.1.1.2.cmml"></mi><mo id="S3.T1.9.9.9.9.m1.1.1.1" mathsize="90%" xref="S3.T1.9.9.9.9.m1.1.1.1.cmml">&lt;</mo><msubsup id="S3.T1.9.9.9.9.m1.1.1.3" xref="S3.T1.9.9.9.9.m1.1.1.3.cmml"><mi id="S3.T1.9.9.9.9.m1.1.1.3.2.2" mathsize="90%" xref="S3.T1.9.9.9.9.m1.1.1.3.2.2.cmml">δ</mi><mtext id="S3.T1.9.9.9.9.m1.1.1.3.3" mathsize="90%" xref="S3.T1.9.9.9.9.m1.1.1.3.3a.cmml">avg</mtext><mi id="S3.T1.9.9.9.9.m1.1.1.3.2.3" mathsize="90%" xref="S3.T1.9.9.9.9.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.m1.1b"><apply id="S3.T1.9.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1"><lt id="S3.T1.9.9.9.9.m1.1.1.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T1.9.9.9.9.m1.1.1.2.cmml" xref="S3.T1.9.9.9.9.m1.1.1.2">absent</csymbol><apply id="S3.T1.9.9.9.9.m1.1.1.3.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.9.9.9.9.m1.1.1.3.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3">subscript</csymbol><apply id="S3.T1.9.9.9.9.m1.1.1.3.2.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.9.9.9.9.m1.1.1.3.2.1.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3">superscript</csymbol><ci id="S3.T1.9.9.9.9.m1.1.1.3.2.2.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3.2.2">𝛿</ci><ci id="S3.T1.9.9.9.9.m1.1.1.3.2.3.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3.2.3">𝑥</ci></apply><ci id="S3.T1.9.9.9.9.m1.1.1.3.3a.cmml" xref="S3.T1.9.9.9.9.m1.1.1.3.3"><mtext id="S3.T1.9.9.9.9.m1.1.1.3.3.cmml" mathsize="63%" xref="S3.T1.9.9.9.9.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S3.T1.10.10.10.10.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.m2.1"><semantics id="S3.T1.10.10.10.10.m2.1a"><mo id="S3.T1.10.10.10.10.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T1.10.10.10.10.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.m2.1b"><ci id="S3.T1.10.10.10.10.m2.1.1.cmml" xref="S3.T1.10.10.10.10.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.11.11" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.11.11.11.11.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.m1.1"><semantics id="S3.T1.11.11.11.11.m1.1a"><mo id="S3.T1.11.11.11.11.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.m1.1b"><ci id="S3.T1.11.11.11.11.m1.1.1.cmml" xref="S3.T1.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.12.12" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.12.12.12.12.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.m1.1"><semantics id="S3.T1.12.12.12.12.m1.1a"><mo id="S3.T1.12.12.12.12.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.m1.1b"><ci id="S3.T1.12.12.12.12.m1.1.1.cmml" xref="S3.T1.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.13.13.13.13" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.13.13.13.13.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.13.13.13.13.m1.1"><semantics id="S3.T1.13.13.13.13.m1.1a"><mo id="S3.T1.13.13.13.13.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.13.m1.1b"><ci id="S3.T1.13.13.13.13.m1.1.1.cmml" xref="S3.T1.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.13.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.14" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.14.14.14.14.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.14.14.14.14.m1.1"><semantics id="S3.T1.14.14.14.14.m1.1a"><mo id="S3.T1.14.14.14.14.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.14.14.14.14.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.14.m1.1b"><ci id="S3.T1.14.14.14.14.m1.1.1.cmml" xref="S3.T1.14.14.14.14.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.14.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.14.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.16" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="S3.T1.15.15.15.15.m1.1"><semantics id="S3.T1.15.15.15.15.m1.1a"><mrow id="S3.T1.15.15.15.15.m1.1.1" xref="S3.T1.15.15.15.15.m1.1.1.cmml"><mi id="S3.T1.15.15.15.15.m1.1.1.2" xref="S3.T1.15.15.15.15.m1.1.1.2.cmml"></mi><mo id="S3.T1.15.15.15.15.m1.1.1.1" mathsize="90%" xref="S3.T1.15.15.15.15.m1.1.1.1.cmml">&lt;</mo><msubsup id="S3.T1.15.15.15.15.m1.1.1.3" xref="S3.T1.15.15.15.15.m1.1.1.3.cmml"><mi id="S3.T1.15.15.15.15.m1.1.1.3.2.2" mathsize="90%" xref="S3.T1.15.15.15.15.m1.1.1.3.2.2.cmml">δ</mi><mtext id="S3.T1.15.15.15.15.m1.1.1.3.3" mathsize="90%" xref="S3.T1.15.15.15.15.m1.1.1.3.3a.cmml">avg</mtext><mi id="S3.T1.15.15.15.15.m1.1.1.3.2.3" mathsize="90%" xref="S3.T1.15.15.15.15.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.15.m1.1b"><apply id="S3.T1.15.15.15.15.m1.1.1.cmml" xref="S3.T1.15.15.15.15.m1.1.1"><lt id="S3.T1.15.15.15.15.m1.1.1.1.cmml" xref="S3.T1.15.15.15.15.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T1.15.15.15.15.m1.1.1.2.cmml" xref="S3.T1.15.15.15.15.m1.1.1.2">absent</csymbol><apply id="S3.T1.15.15.15.15.m1.1.1.3.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.15.15.15.15.m1.1.1.3.1.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3">subscript</csymbol><apply id="S3.T1.15.15.15.15.m1.1.1.3.2.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.15.15.15.15.m1.1.1.3.2.1.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3">superscript</csymbol><ci id="S3.T1.15.15.15.15.m1.1.1.3.2.2.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3.2.2">𝛿</ci><ci id="S3.T1.15.15.15.15.m1.1.1.3.2.3.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3.2.3">𝑥</ci></apply><ci id="S3.T1.15.15.15.15.m1.1.1.3.3a.cmml" xref="S3.T1.15.15.15.15.m1.1.1.3.3"><mtext id="S3.T1.15.15.15.15.m1.1.1.3.3.cmml" mathsize="63%" xref="S3.T1.15.15.15.15.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.15.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.15.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S3.T1.16.16.16.16.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.16.16.16.16.m2.1"><semantics id="S3.T1.16.16.16.16.m2.1a"><mo id="S3.T1.16.16.16.16.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T1.16.16.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.16.m2.1b"><ci id="S3.T1.16.16.16.16.m2.1.1.cmml" xref="S3.T1.16.16.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.16.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.17.17.17.17" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.17.17.17.17.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.17.17.17.17.m1.1"><semantics id="S3.T1.17.17.17.17.m1.1a"><mo id="S3.T1.17.17.17.17.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.17.17.17.17.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.17.17.m1.1b"><ci id="S3.T1.17.17.17.17.m1.1.1.cmml" xref="S3.T1.17.17.17.17.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.17.17.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.17.17.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.18" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.18.18.18.18.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.18.18.18.18.m1.1"><semantics id="S3.T1.18.18.18.18.m1.1a"><mo id="S3.T1.18.18.18.18.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.18.18.18.18.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.18.18.m1.1b"><ci id="S3.T1.18.18.18.18.m1.1.1.cmml" xref="S3.T1.18.18.18.18.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.18.18.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.18.18.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="2" id="S3.T1.25.25.27.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.25.25.27.1.1" style="font-size:90%;">TAP-Vid CFG</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.2" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.27.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.25.25.28.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.28.1.1">
<span class="ltx_p" id="S3.T1.25.25.28.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.25.25.28.1.1.1.1" style="font-size:90%;">S</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.25.25.28.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.28.2.1" style="font-size:90%;">RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.28.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S3.T1.25.25.28.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.3.1" style="font-size:90%;">69.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.4.1" style="font-size:90%;">1.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.5.1" style="font-size:90%;">83.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.6.1" style="font-size:90%;">81.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.7.1" style="font-size:90%;">46.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.8.1" style="font-size:90%;background-color:#E6E6E6;">79.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.9.1" style="font-size:90%;background-color:#E6E6E6;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.10.1" style="font-size:90%;background-color:#E6E6E6;">87.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.11.1" style="font-size:90%;">92.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.12.1" style="font-size:90%;">49.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.13.1" style="font-size:90%;">73.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.14.1" style="font-size:90%;">1.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.15.1" style="font-size:90%;">83.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.16.1" style="font-size:90%;">91.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.28.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.28.17.1" style="font-size:90%;">63.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.29">
<td class="ltx_td ltx_align_top" id="S3.T1.25.25.29.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.29.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.29.2.1" style="font-size:90%;">SEA-RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.29.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S3.T1.25.25.29.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.3.1" style="font-size:90%;background-color:#E6E6E6;">69.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.4.1" style="font-size:90%;">1.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.5.1" style="font-size:90%;background-color:#E6E6E6;">84.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.6.1" style="font-size:90%;">82.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.7.1" style="font-size:90%;background-color:#E6E6E6;">47.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.8.1" style="font-size:90%;">75.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.9.1" style="font-size:90%;">1.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.10.1" style="font-size:90%;">85.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.11.1" style="font-size:90%;">88.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.12.1" style="font-size:90%;">39.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.13.1" style="font-size:90%;background-color:#E6E6E6;">77.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.14.1" style="font-size:90%;background-color:#E6E6E6;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.15.1" style="font-size:90%;background-color:#E6E6E6;">87.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.16.1" style="font-size:90%;background-color:#E6E6E6;">92.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.29.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.29.17.1" style="font-size:90%;background-color:#E6E6E6;">68.65</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.19.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.19.19.19.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.19.19.19.1.1">
<span class="ltx_p" id="S3.T1.19.19.19.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.19.19.19.1.1.1.1" style="font-size:90%;">U</span><sup class="ltx_sup" id="S3.T1.19.19.19.1.1.1.2"><span class="ltx_text" id="S3.T1.19.19.19.1.1.1.2.1" style="font-size:90%;">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.19.19.19.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.19.19.19.2.1" style="font-size:90%;">Doduo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.19.19.19.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S3.T1.19.19.19.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.3.1" style="font-size:90%;">25.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.19.19.4.1" style="font-size:90%;">1.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.5.1" style="font-size:90%;">72.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.6.1" style="font-size:90%;">37.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.7.1" style="font-size:90%;">22.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.8.1" style="font-size:90%;">35.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.9.1" style="font-size:90%;">1.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.10.1" style="font-size:90%;">77.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.11.1" style="font-size:90%;">43.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.12.1" style="font-size:90%;">11.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.13.1" style="font-size:90%;">56.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.14.1" style="font-size:90%;">1.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.15.1" style="font-size:90%;">68.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.19.19.19.16.1" style="font-size:90%;">87.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.19.19.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.19.19.17.1" style="font-size:90%;">55.01</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.25.25.30.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.30.1.1">
<span class="ltx_p" id="S3.T1.25.25.30.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.25.25.30.1.1.1.1" style="font-size:90%;">U</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.25.25.30.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.30.2.1" style="font-size:90%;">SMURF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.30.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S3.T1.25.25.30.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.3.1" style="font-size:90%;">65.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.30.4.1" style="font-size:90%;">2.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.5.1" style="font-size:90%;">79.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.30.6.1" style="font-size:90%;">82.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.7.1" style="font-size:90%;">42.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.30.8.1" style="font-size:90%;">78.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.30.9.1" style="font-size:90%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.30.10.1" style="font-size:90%;">87.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.30.11.1" style="font-size:90%;">93.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.12.1" style="font-size:90%;">47.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.13.1" style="font-size:90%;">69.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.14.1" style="font-size:90%;">1.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.30.15.1" style="font-size:90%;">82.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.30.16.1" style="font-size:90%;">90.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.30.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.30.17.1" style="font-size:90%;">53.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.31">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.25.25.31.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.31.1.1">
<span class="ltx_p" id="S3.T1.25.25.31.1.1.1" style="width:8.5pt;"><span class="ltx_ERROR undefined" id="S3.T1.25.25.31.1.1.1.1">\cdashline</span><span class="ltx_text" id="S3.T1.25.25.31.1.1.1.2" style="font-size:90%;">2-17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.31.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.31.2.1" style="font-size:90%;">CWM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.31.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S3.T1.25.25.31.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.3.1" style="font-size:90%;">27.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.4.1" style="font-size:90%;">4.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.5.1" style="font-size:90%;">38.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.31.6.1" style="font-size:90%;">88.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.7.1" style="font-size:90%;">5.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.8.1" style="font-size:90%;">34.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.9.1" style="font-size:90%;">3.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.10.1" style="font-size:90%;">43.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.31.11.1" style="font-size:90%;">95.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.12.1" style="font-size:90%;">5.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.13.1" style="font-size:90%;">30.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.14.1" style="font-size:90%;">4.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.15.1" style="font-size:90%;">42.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.16.1" style="font-size:90%;">88.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.31.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.31.17.1" style="font-size:90%;">4.27</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.32">
<td class="ltx_td ltx_align_top" id="S3.T1.25.25.32.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.32.2" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.32.2.1" style="font-size:90%;">Opt-CWM (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.3.1" style="font-size:90%;">69.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.4.1" style="font-size:90%;">1.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.5.1" style="font-size:90%;">83.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.32.6.1" style="font-size:90%;">88.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.7.1" style="font-size:90%;">44.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.32.8.1" style="font-size:90%;">75.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.32.9.1" style="font-size:90%;">1.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.32.10.1" style="font-size:90%;">84.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.11.1" style="font-size:90%;">96.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.12.1" style="font-size:90%;">58.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.13.1" style="font-size:90%;">70.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.14.1" style="font-size:90%;">1.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.15.1" style="font-size:90%;">82.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.32.16.1" style="font-size:90%;">90.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.32.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.32.17.1" style="font-size:90%;">57.30</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="3" id="S3.T1.25.25.33.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.25.25.33.1.1" style="font-size:90%;">TAP-Vid First — Main Benchmark</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.2" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.25.25.33.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.25.25.34.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.34.1.1">
<span class="ltx_p" id="S3.T1.25.25.34.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.25.25.34.1.1.1.1" style="font-size:90%;">S</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.25.25.34.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.34.2.1" style="font-size:90%;">RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.34.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S3.T1.25.25.34.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.3.1" style="font-size:90%;">41.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.4.1" style="font-size:90%;">25.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.5.1" style="font-size:90%;">54.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.6.1" style="font-size:90%;">66.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.7.1" style="font-size:90%;">56.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.8.1" style="font-size:90%;">44.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.9.1" style="font-size:90%;">19.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.10.1" style="font-size:90%;">56.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.11.1" style="font-size:90%;">75.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.12.1" style="font-size:90%;">72.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.13.1" style="font-size:90%;">69.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.14.1" style="font-size:90%;">5.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.15.1" style="font-size:90%;">80.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.16.1" style="font-size:90%;">87.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.34.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.34.17.1" style="font-size:90%;">68.48</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.35">
<td class="ltx_td ltx_align_top" id="S3.T1.25.25.35.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.35.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.35.2.1" style="font-size:90%;">SEA-RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.35.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S3.T1.25.25.35.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.3.1" style="font-size:90%;">43.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.4.1" style="font-size:90%;">20.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.5.1" style="font-size:90%;">58.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.6.1" style="font-size:90%;">66.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.7.1" style="font-size:90%;">56.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.8.1" style="font-size:90%;">39.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.9.1" style="font-size:90%;">24.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.10.1" style="font-size:90%;">52.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.11.1" style="font-size:90%;">71.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.12.1" style="font-size:90%;">69.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.13.1" style="font-size:90%;background-color:#E6E6E6;">75.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.14.1" style="font-size:90%;">4.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.15.1" style="font-size:90%;background-color:#E6E6E6;">85.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.16.1" style="font-size:90%;background-color:#E6E6E6;">90.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.35.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.35.17.1" style="font-size:90%;background-color:#E6E6E6;">73.80</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.20.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.20.20.20.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.20.20.20.1.1">
<span class="ltx_p" id="S3.T1.20.20.20.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.20.20.20.1.1.1.1" style="font-size:90%;">U</span><sup class="ltx_sup" id="S3.T1.20.20.20.1.1.1.2"><span class="ltx_text" id="S3.T1.20.20.20.1.1.1.2.1" style="font-size:90%;">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.20.20.20.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.20.20.20.2.1" style="font-size:90%;">Doduo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.20.20.20.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S3.T1.20.20.20.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.3.1" style="font-size:90%;">23.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.20.20.20.4.1" style="font-size:90%;">13.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.5.1" style="font-size:90%;">48.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.6.1" style="font-size:90%;">47.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.20.20.20.7.1" style="font-size:90%;">49.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.8.1" style="font-size:90%;">14.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.20.20.20.9.1" style="font-size:90%;">16.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.10.1" style="font-size:90%;">45.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.11.1" style="font-size:90%;">45.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.12.1" style="font-size:90%;">53.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.13.1" style="font-size:90%;">51.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.14.1" style="font-size:90%;">5.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.15.1" style="font-size:90%;">64.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.20.20.20.16.1" style="font-size:90%;">82.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.20.20.20.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.20.20.20.17.1" style="font-size:90%;">61.97</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.25.25.25.6" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.25.6.1">
<span class="ltx_p" id="S3.T1.25.25.25.6.1.1" style="width:8.5pt;"><span class="ltx_text" id="S3.T1.25.25.25.6.1.1.1" style="font-size:90%;">U</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.25.25.25.7" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.25.7.1" style="font-size:90%;">GMRW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.25.7.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S3.T1.25.25.25.7.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.25.8.1" style="font-size:90%;">36.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.9.1" style="font-size:90%;">20.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.25.10.1" style="font-size:90%;">54.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.11.1" style="font-size:90%;">76.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.12.1" style="font-size:90%;">42.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.13.1" style="font-size:90%;">25.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.14.1" style="font-size:90%;">27.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.15.1" style="font-size:90%;">41.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.25.16.1" style="font-size:90%;">71.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.17.1" style="font-size:90%;">31.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.21.21.21.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.21.21.21.1.1" style="font-size:90%;color:#808080;">67.50</span><sup class="ltx_sup" id="S3.T1.21.21.21.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.21.21.21.1.2.1" style="font-size:90%;color:#808080;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.22.22.2" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.22.22.2.1" style="font-size:90%;color:#808080;">3.16<sup class="ltx_sup" id="S3.T1.22.22.22.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.22.22.22.2.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.23.23.23.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.23.23.23.3.1" style="font-size:90%;color:#808080;">81.74<sup class="ltx_sup" id="S3.T1.23.23.23.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.23.23.23.3.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.24.24.24.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.24.4.1" style="font-size:90%;color:#808080;">89.36<sup class="ltx_sup" id="S3.T1.24.24.24.4.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.24.24.24.4.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.25.25.25.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.25.5.1" style="font-size:90%;color:#808080;">35.14<sup class="ltx_sup" id="S3.T1.25.25.25.5.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.25.25.25.5.1.1.1">‡</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.36">
<td class="ltx_td ltx_align_top" id="S3.T1.25.25.36.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.36.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.36.2.1" style="font-size:90%;">SMURF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.36.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S3.T1.25.25.36.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.3.1" style="font-size:90%;">30.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.4.1" style="font-size:90%;">27.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.5.1" style="font-size:90%;">44.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.6.1" style="font-size:90%;">59.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.7.1" style="font-size:90%;">46.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.36.8.1" style="font-size:90%;">36.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.9.1" style="font-size:90%;">28.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.36.10.1" style="font-size:90%;">48.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.11.1" style="font-size:90%;">70.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.36.12.1" style="font-size:90%;">64.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.13.1" style="font-size:90%;">63.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.14.1" style="font-size:90%;">6.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.15.1" style="font-size:90%;">78.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.16.1" style="font-size:90%;">87.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.36.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.36.17.1" style="font-size:90%;">58.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.37">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.25.25.37.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.25.25.37.1.1">
<span class="ltx_p" id="S3.T1.25.25.37.1.1.1" style="width:8.5pt;"><span class="ltx_ERROR undefined" id="S3.T1.25.25.37.1.1.1.1">\cdashline</span><span class="ltx_text" id="S3.T1.25.25.37.1.1.1.2" style="font-size:90%;">2-17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.37.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_text" id="S3.T1.25.25.37.2.1" style="font-size:90%;">CWM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.25.25.37.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S3.T1.25.25.37.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.3.1" style="font-size:90%;">15.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.4.1" style="font-size:90%;">23.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.5.1" style="font-size:90%;">26.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.37.6.1" style="font-size:90%;">76.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.7.1" style="font-size:90%;">18.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.8.1" style="font-size:90%;">14.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.9.1" style="font-size:90%;">30.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.10.1" style="font-size:90%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.11.1" style="font-size:90%;">70.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.12.1" style="font-size:90%;">16.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.13.1" style="font-size:90%;">26.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.14.1" style="font-size:90%;">11.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.15.1" style="font-size:90%;">39.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.16.1" style="font-size:90%;">84.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.37.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.37.17.1" style="font-size:90%;">13.70</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.38">
<td class="ltx_td ltx_align_top ltx_border_bb" id="S3.T1.25.25.38.1" style="padding-top:1.8pt;padding-bottom:1.8pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.25.25.38.2" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text" id="S3.T1.25.25.38.2.1" style="font-size:90%;">Opt-CWM (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.3" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.3.1" style="font-size:90%;">47.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.4" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.4.1" style="font-size:90%;">8.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.5" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.5.1" style="font-size:90%;">64.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.6" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.6.1" style="font-size:90%;">80.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.7" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.7.1" style="font-size:90%;">60.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.8" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.8.1" style="font-size:90%;">44.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.9" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.9.1" style="font-size:90%;">13.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.10" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.10.1" style="font-size:90%;">57.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.11" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.11.1" style="font-size:90%;">84.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.12" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.12.1" style="font-size:90%;">77.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.13" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.13.1" style="font-size:90%;">67.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.14" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.38.14.1" style="font-size:90%;">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.15" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.38.15.1" style="font-size:90%;">80.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.16" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.25.25.38.16.1" style="font-size:90%;">87.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.25.25.38.17" style="padding-top:1.8pt;padding-bottom:1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.25.25.38.17.1" style="font-size:90%;">67.13</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of different methods for motion estimation, evaluated using two protocols from the TAP-Vid benchmark: First and CFG.  The First protocol assesses the ability to track a point from its first appearance to the end of a video, involving significant temporal gaps.  The CFG protocol uses fixed 5-frame gaps, which is more advantageous to optical flow techniques.  The table shows results for several methods, categorized as supervised (S) or unsupervised (U), indicating how well each method performs on the two protocols, measured by several metrics. Note that Doduo uses some supervised information and GMRW was trained using the Kubric dataset, which introduces a bias.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results on TAP-Vid First and CFG protocols. In the First protocol, a point is tracked from when it is first visible to the end of the video, which requires estimating motion across large frame gaps. Opt-CWM outperforms both supervised and unsupervised two-frame baselines. In the CFG protocol, point tracking is evaluated at fixed gaps of 5 frames, making it an easier setting that is more favorable to optical flow methods. “S” and “U” indicate supervised and unsupervised, respectively. Doduo is not strictly unsupervised, as explained in Section 4.1. GMRW is trained on the Kubric dataset, (marked with ‡‡\ddagger‡), making it a more favorable evaluation setting for that method because of the minimal domain gap. Best performing supervised models (shaded) are considered separately.
> </details>





### In-depth insights


#### CWM's Limitations
**CWM's hand-designed perturbations present a key limitation**. Since the perturbations are fixed, they might be out-of-domain in real-world videos, **hindering accurate motion extraction**. These perturbations might not properly 'carry along' with moving objects, **leading to suboptimal counterfactual motion estimation**. The fixed nature limits adaptability to complex dynamics. CWM may struggle with deformable objects or scenes with large occlusions because the hard-coded nature doesn't handle the diversity. **Performance is capped by the quality of these static probes**. CWM would benefit from learning adaptive perturbations tailored to each scene and its motion dynamics.

#### Opt-CWM: Innovation
Opt-CWM innovates by introducing a **learnable perturbation generator**, moving beyond fixed, hand-designed perturbations in prior Counterfactual World Modeling (CWM). This allows for **context-specific motion extraction**, where perturbations adapt to local image appearance for more accurate tracking. Crucially, Opt-CWM uses a **self-supervised learning approach** to train the perturbation generator, eliminating the need for labeled data or heuristics. By coupling a flow-conditioned predictor with the perturbation generator and optimizing for RGB reconstruction, Opt-CWM achieves state-of-the-art motion estimation, showing the power of **adaptable, self-learned counterfactual probes**.

#### No Labeled Data
The concept of learning **without labeled data** is pivotal. Traditional supervised learning relies heavily on annotated datasets, which are often expensive and time-consuming to create. Eliminating this dependency unlocks the potential to leverage vast amounts of readily available, unlabeled video data. Methods like self-supervision become crucial, where the data provides its own supervisory signals. The focus shifts to designing pretext tasks that enable the model to learn meaningful representations from unlabeled data. Successfully learning without labels allows for greater adaptability to new environments and scenarios where labeled data is scarce or non-existent. This signifies a move towards more generalizable and robust AI systems, capable of understanding and interacting with the world with minimal human intervention. It's about creating algorithms that inherently find patterns and structures, extracting motion information without needing explicit instructions, leading to greater autonomy.

#### Outperforms SOTA
The claim of "outperforming state-of-the-art" (SOTA) is a strong assertion that requires careful consideration. A deep dive would examine the specific benchmarks used. Are these **standard datasets** widely recognized in the field, or were they custom-built? If custom, their representativeness of real-world scenarios needs scrutiny. Furthermore, **the magnitude of improvement matters**. A marginal gain might not justify the complexity of a new approach. It's important to look at **statistical significance** to rule out random chance. Another crucial factor is **generalizability**. Does the method shine only on certain data subsets or does it consistently deliver superior results across diverse conditions? The analysis would also look at the **computational cost and efficiency**. A SOTA method isn't valuable if it's too slow or resource-intensive for practical applications. Finally, a truly groundbreaking advance often lies not just in surpassing existing benchmarks, but in **opening new avenues for research and practical applications**.

#### Future Extraction
Future extraction in self-supervised learning of motion can revolve around several key aspects. Firstly, **scaling the approach** to handle longer video sequences and more complex scenes remains a key challenge, this necessitates exploring efficient architectures and training techniques. Secondly, **extending the framework** to extract a broader range of visual properties beyond motion, such as object segments, depth maps, and 3D shape, presents a promising avenue for future research. Thirdly, **exploring different base predictor architectures**, such as auto-regressive generative models, could lead to improved performance and capabilities. Lastly, the **twin techniques** of parameterizing the input-conditioned counterfactual generator and bootstrapping the learning of the generator parameters with end-to-end sparse prediction loss are generic and not flow-specific and may thus be extensible to optimizing highly performant CWM-style extraction.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19953/x2.png)

> 🔼 This figure illustrates how the Opt-CWM model parameterizes counterfactual perturbations to improve motion estimation.  Panel (A) shows the architecture, where a learned perturbation generator (δθ) is added to a pre-trained next-frame prediction model (ΨRGB).  This generator uses an MLP to predict perturbations based on image content. Panel (B) contrasts hand-designed perturbations, which often fail to move consistently with objects, against learned perturbations, which integrate more seamlessly with the scene dynamics. This shows how the learnable perturbation generator addresses limitations of hand-designed methods. The caption asks how to learn the parameters of the perturbation generator without labeled data, which is answered in Figure 3.
> <details>
> <summary>read the caption</summary>
> Figure 2: Parameterizing the counterfactual intervention policy as an input-conditioned function. (A) Building on a pre-trained RGB-conditioned predictor 𝚿RGBsuperscript𝚿RGB\boldsymbol{\Psi}^{\texttt{RGB}}bold_Ψ start_POSTSUPERSCRIPT RGB end_POSTSUPERSCRIPT, Opt-CWM uses an image-conditioned perturbation prediction function δθsubscript𝛿𝜃\delta_{\theta}italic_δ start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT containing a small MLPθ. As illustrated in B, δθsubscript𝛿𝜃\delta_{\theta}italic_δ start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT can learn to predict image-conditioned perturbations that blend naturally with the underlying scene, potentially allowing for the perturbation to be accurately carried over to the next frame prediction. But how should the parameters of δθsubscript𝛿𝜃\delta_{\theta}italic_δ start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT be learned to achieve this, without any flow supervision labels? See Figure 3.
> </details>



![](https://arxiv.org/html/2503.19953/x3.png)

> 🔼 Figure 3 illustrates the training process of the Opt-CWM model.  Panel A shows the architecture: a pre-trained RGB-conditioned next-frame predictor (ΨRGB) is used as a base model.  A learnable counterfactual perturbation generator (FLOWθ) creates perturbations, which are applied to the input frame before feeding it to ΨRGB. The output of ΨRGB is compared with the prediction without perturbation.  This difference provides information about motion, which is used to train a flow-conditioned next-frame predictor (Ψflowη).  The latter model learns to predict the next frame based on both the original frame and the sparse flow information (which necessitates accurate flow estimates from FLOWθ). Panel B shows how the reconstruction and flow estimation errors change during training. The tight coupling between the two models ensures that improvements in motion estimation directly benefit frame reconstruction, and vice-versa.
> <details>
> <summary>read the caption</summary>
> Figure 3: A generic principle for learning optimal counterfactuals. A) The parameterized counterfactual flow function FLOWθsubscriptFLOW𝜃\textbf{{FLOW}}_{\theta}FLOW start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT extracts motion from a frozen RGB-conditioned predictor 𝚿RGBsuperscript𝚿RGB\boldsymbol{\Psi}^{\texttt{RGB}}bold_Ψ start_POSTSUPERSCRIPT RGB end_POSTSUPERSCRIPT through counterfactual perturbation (details in Figure 2). Its parameters θ𝜃\thetaitalic_θ are trained using gradients from a flow-conditioned predictor 𝚿ηflowsubscriptsuperscript𝚿flow𝜂\boldsymbol{\Psi}^{\texttt{flow}}_{\eta}bold_Ψ start_POSTSUPERSCRIPT flow end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_η end_POSTSUBSCRIPT that is jointly trained to perform next-frame prediction. The predictor 𝚿flowsuperscript𝚿flow\boldsymbol{\Psi}^{\texttt{flow}}bold_Ψ start_POSTSUPERSCRIPT flow end_POSTSUPERSCRIPT can only learn to predict future frames if it is given correct flow vectors. This explicit information bottleneck ensures useful gradients will get passed back to FLOWθsubscriptFLOW𝜃\textbf{{FLOW}}_{\theta}FLOW start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT . This setup allows us to get better extractions from a pre-trained 𝚿RGBsuperscript𝚿RGB\boldsymbol{\Psi}^{\texttt{RGB}}bold_Ψ start_POSTSUPERSCRIPT RGB end_POSTSUPERSCRIPT predictor by training another flow-conditoned predictor 𝚿flowsuperscript𝚿flow\boldsymbol{\Psi}^{\texttt{flow}}bold_Ψ start_POSTSUPERSCRIPT flow end_POSTSUPERSCRIPT using the same principle of next-frame prediction. (B) As a consequence of tight coupling between the flow-conditioned predictor 𝚿flowsuperscript𝚿flow\boldsymbol{\Psi}^{\texttt{flow}}bold_Ψ start_POSTSUPERSCRIPT flow end_POSTSUPERSCRIPT and the learned flow estimation function FLOWθsubscriptFLOW𝜃\textbf{{FLOW}}_{\theta}FLOW start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT, both motion estimation and pixel reconstruction simultaneously improve.
> </details>



![](https://arxiv.org/html/2503.19953/x4.png)

> 🔼 This figure showcases a qualitative comparison of Opt-CWM's performance against other state-of-the-art methods on real-world video sequences. The examples highlight scenarios where methods relying on visual similarity or photometric loss fail.  Specifically, it demonstrates that baselines struggle with subtle but significant changes within homogeneous scenes, particularly when objects share similar colors and textures (examples (a) through (e)).  It also demonstrates the vulnerability of photometric loss-based methods, like SMURF, to variations in light intensity between frames (examples (f) through (h)). In contrast, Opt-CWM, due to its holistic approach which considers scene transformations and dynamics, consistently achieves superior performance in these challenging situations. 
> <details>
> <summary>read the caption</summary>
> Figure 4:  Qualitative comparison with baselines on real-world videos. The above examples show the failure modes of previous methods that rely on visual similarity or photometric loss. We observe that the baseline models struggle against subtle but functionally important changes in largely homogeneous scenes depicting objects of similar color and texture ((a) - (e)). Further, the use of photometric loss in self-supervised methods such as SMURF can also be susceptible to differences in light intensity across frame pairs ((f) - (h)). Opt-CWM, however, relies on a holistic understanding of scene transformations and object dynamics and is able to find correspondence without arbitrary heuristics.
> </details>



![](https://arxiv.org/html/2503.19953/x5.png)

> 🔼 This figure visualizes learned perturbation maps generated by a learned MLP (Multilayer Perceptron).  The maps show the amplitudes and standard deviations of optimal Gaussian perturbations predicted for each pixel location and color channel across two example frame pairs.  The size and magnitude of these perturbations dynamically adapt to local scene content.  Specifically, they reflect the presence and characteristics of foreground objects.  The perturbations are not uniform but are shaped to match features of the image, suggesting the model has learned to represent scene properties within them.
> <details>
> <summary>read the caption</summary>
> Figure 5: Perturbation maps emergently reflect scene properties. For two example frame pairs, we show the amplitudes and standard deviations, at each spatial position and for each color channel, of the optimal Gaussian perturbations predicted by MLPθ. These “perturbation maps” emergently reflect scene properties, with perturbation parameters varying in size and magnitude depending on where they are located in the image, corresponding to the presence of foreground objects and their parts.
> </details>



![](https://arxiv.org/html/2503.19953/x6.png)

> 🔼 This figure analyzes the impact of multiscale refinement on the accuracy of flow estimation. The x-axis represents different pixel error thresholds, while the y-axis shows the fraction of points whose error is below each threshold.  Different colored bars represent varying numbers of multiscale iterations. The results indicate that 4 zoom iterations provide the best performance overall, particularly when dealing with challenging cases (as demonstrated by its better performance at higher error thresholds).
> <details>
> <summary>read the caption</summary>
> Figure 6: <𝜹avgabsentsubscript𝜹avg<\boldsymbol{\delta}_{\text{avg}}< bold_italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT broken down across thresholds (x𝑥xitalic_x-axis). Fraction of points with error less than a fixed threshold, as a function of number of multiscale (MS) iterations, for pixel thresholds 1, 2, 4, 8, and 16. We find that 4 zoom iterations tends to perform the best, especially for robustness on difficult examples (evidenced by better performance on higher thresholds).
> </details>



![](https://arxiv.org/html/2503.19953/x7.png)

> 🔼 This figure compares the performance of various optical flow estimation methods (Opt-CWM, Doduo, SEA-RAFT, and SMURF) as the gap between frames increases. The x-axis represents the frame gap, while the y-axis shows the average pixel distance (AD) error, a key metric of accuracy. The results reveal that Opt-CWM and Doduo maintain relatively high accuracy even with larger frame gaps, unlike SEA-RAFT and SMURF, whose accuracy significantly decreases as the frame gap and motion magnitude increase.  This suggests that Opt-CWM and Doduo are more robust to challenging real-world scenarios with substantial motion between frames.
> <details>
> <summary>read the caption</summary>
> Figure 7: Model comparison as a function of frame gap. Higher frame gaps present harder flow estimation problems due to including more motion, as reflected by improved performance across models in lower frame gap settings. Opt-CWM and Doduo perform better as frame gap increases, in contrast to optical flow methods SEA-RAFT and SMURF which decay in performance as motion magnitude increases, especially on the AD metric.
> </details>



![](https://arxiv.org/html/2503.19953/x8.png)

> 🔼 Figure 8 presents a detailed analysis of the accuracy of different models in predicting the location of points across various error thresholds.  The x-axis represents the error threshold (in pixels), while the y-axis shows the percentage of points for which the predicted location falls within that threshold of the ground truth. The graph compares Opt-CWM with three baseline models: SEA-RAFT, Doduo, and SMURF.  Importantly, the evaluation considers videos with large gaps between frames (the TAP-Vid First protocol), making accurate point tracking particularly challenging. The results demonstrate that Opt-CWM consistently achieves higher accuracy across all error thresholds, particularly for larger thresholds. This highlights the robustness of Opt-CWM in handling scenarios with significant motion and longer frame intervals, which cause challenges for other methods.
> <details>
> <summary>read the caption</summary>
> Figure 8: TAP-Vid First: comparing baseline models on <δavgabsentsubscript𝛿avg<\boldsymbol{\delta}_{\text{avg}}< bold_italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT broken down across thresholds (x𝑥xitalic_x-axis). Fraction of points with error less than a fixed threshold, as a function of baseline model. Compared to baseline models, Opt-CWM maintains high performance on all thresholds even when making predictions across large frame gaps, as is necessary for TAP-Vid First.
> </details>



![](https://arxiv.org/html/2503.19953/x9.png)

> 🔼 Figure 9 presents a comparative analysis of various models' performance on the TAP-Vid CFG (Constant Frame Gap) benchmark, focusing on the average point tracking error.  The x-axis represents different error thresholds (in pixels), and the y-axis shows the percentage of points whose error falls below each threshold.  The dataset uses a fixed frame gap, making it advantageous for optical flow methods. While supervised and unsupervised optical flow methods perform well at very low error thresholds (under 2 pixels), Opt-CWM demonstrates superior performance overall, outperforming self-supervised approaches and achieving comparable results to the supervised SEA-RAFT method in predicting a higher proportion of points within an acceptable error range.
> <details>
> <summary>read the caption</summary>
> Figure 9: TAP-Vid CFG: comparing baseline models on <δavgabsentsubscript𝛿avg<\boldsymbol{\delta}_{\text{avg}}< bold_italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT broken down across thresholds (x𝑥xitalic_x-axis). Fraction of points with error less than a fixed threshold, as a function of baseline model. For fair comparison, we also evaluate on a constant frame gap setting that is more favorable to optical flow baselines. While baseline methods show strong performance for very low thresholds (<2absent2<2< 2 pixels), we see that in general Opt-CWM outperforms self-supervised methods and is comparable with SEA-RAFT in predicting more points within a reasonable boundary.
> </details>



![](https://arxiv.org/html/2503.19953/x10.png)

> 🔼 This figure visualizes the evolution of learned perturbations throughout the training process of the Opt-CWM model.  It shows how the model's ability to generate effective perturbations improves over time. Initially, the perturbations are scattered and lack coherence.  As training progresses, these perturbations become more concentrated and localized, improving the accuracy of the resulting flow predictions. The figure demonstrates this by showing example perturbation maps at various training epochs alongside a comparison of the ground truth flow (green) from the TAP-Vid dataset and the Opt-CWM model's predicted flow (blue) for those same examples. The decreasing error between the ground truth flow and the model's prediction, as demonstrated by the diminishing numerical error value shown, is directly correlated to the evolution of the perturbation.
> <details>
> <summary>read the caption</summary>
> Figure 10: Evolution of perturbations across training epochs: We observe how the predicted perturbations change as the model trains. The perturbation starts as a disjoint streak of colors and converges to a localized peak. This in turn increasingly concentrates the difference image 𝚫𝚫\boldsymbol{\Delta}bold_Δ and leads to better flow prediction. Green is the ground truth flow obtained from the TAP-Vid dataset, and blue is our model’s prediction.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.6">
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
<span class="ltx_text" id="S4.T2.6.6.6.7.1">T</span>ype</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.8" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">MM</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.9" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">MS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.10" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">Res.</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">AJ <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">AD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mrow id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml"><mi id="S4.T2.3.3.3.3.m1.1.1.2" xref="S4.T2.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S4.T2.3.3.3.3.m1.1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.1.cmml">&lt;</mo><msubsup id="S4.T2.3.3.3.3.m1.1.1.3" xref="S4.T2.3.3.3.3.m1.1.1.3.cmml"><mi id="S4.T2.3.3.3.3.m1.1.1.3.2.2" xref="S4.T2.3.3.3.3.m1.1.1.3.2.2.cmml">δ</mi><mtext id="S4.T2.3.3.3.3.m1.1.1.3.3" xref="S4.T2.3.3.3.3.m1.1.1.3.3a.cmml">avg</mtext><mi id="S4.T2.3.3.3.3.m1.1.1.3.2.3" xref="S4.T2.3.3.3.3.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1"><lt id="S4.T2.3.3.3.3.m1.1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.T2.3.3.3.3.m1.1.1.2.cmml" xref="S4.T2.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="S4.T2.3.3.3.3.m1.1.1.3.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.3.3.3.3.m1.1.1.3.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3">subscript</csymbol><apply id="S4.T2.3.3.3.3.m1.1.1.3.2.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.3.3.3.3.m1.1.1.3.2.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S4.T2.3.3.3.3.m1.1.1.3.2.2.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3.2.2">𝛿</ci><ci id="S4.T2.3.3.3.3.m1.1.1.3.2.3.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3.2.3">𝑥</ci></apply><ci id="S4.T2.3.3.3.3.m1.1.1.3.3a.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3.3"><mtext id="S4.T2.3.3.3.3.m1.1.1.3.3.cmml" mathsize="70%" xref="S4.T2.3.3.3.3.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m2.1"><semantics id="S4.T2.4.4.4.4.m2.1a"><mo id="S4.T2.4.4.4.4.m2.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m2.1b"><ci id="S4.T2.4.4.4.4.m2.1.1.cmml" xref="S4.T2.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">OA <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">OF1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text" id="S4.T2.6.6.7.1.1">l</span>earned</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.6.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.7.5.1">47.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.7.6.1">8.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.7.7.1">64.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.7.8.1">80.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.7.9.1">60.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.8">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">learned</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.8.5.1">42.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.8.7.1">59.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.8.9.1">60.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.9">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">learned</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">49.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">79.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">41.45</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.10">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">learned</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">40.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.6.1">9.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">58.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">50.06</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.11">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">red square</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">18.25</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">36.31</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">75.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.21</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.12">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">green square</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">47.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">76.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">19.10</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.13">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">learned</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">37.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.13.8.1">81.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">57.84</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.14">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">learned</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.85</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">20.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">34.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">53.10</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.15">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">red square</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">23.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">76.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">18.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.16">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.1" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">green square</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.2" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.3" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.6.6.16.4" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">256</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.5" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">19.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.6" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">19.61</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.7" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">32.73</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.8" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">78.31</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.6.6.16.9" style="padding-bottom:1.0pt;padding-top:0.5pt;padding-bottom:0.5pt;">36.53</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the TAP-Vid DAVIS First protocol, evaluating the impact of various design choices on the performance of the Opt-CWM model.  The study compares different types of perturbations (hand-designed vs. learned) and techniques such as multi-mask inference and multi-scale refinement. The results, measured across multiple metrics, demonstrate that learned, in-distribution perturbations, coupled with multi-mask inference and multi-scale refinement significantly improve the model's ability to estimate motion.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation analysis TAP-Vid DAVIS First protocol. We evaluate multi-mask (MM) and multiscale (MS), in addition to comparing our optimized perturbations (“learned”) with the fixed ones (“red square”/“green square”) [4, 42]. MM and MS columns indicate the number of masking or zooming iterations. We observe a clear improvement on all metrics, highlighting the need for bespoke, in-distribution counterfactual perturbations, multi-mask inference and multi-scale refinement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS4.6.6.6">
<tr class="ltx_tr" id="S4.SS4.6.6.6.7">
<td class="ltx_td ltx_align_top ltx_border_tt" id="S4.SS4.6.6.6.7.1" rowspan="2" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS4.6.6.6.7.2" rowspan="2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.7.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.SS4.6.6.6.7.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.7.3.1" style="font-size:90%;">DAVIS</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.1.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.1.1.1.1.1.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS4.1.1.1.1.1.m1.1"><semantics id="S4.SS4.1.1.1.1.1.m1.1a"><mo id="S4.SS4.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS4.1.1.1.1.1.m1.1b"><ci id="S4.SS4.1.1.1.1.1.m1.1.1.cmml" xref="S4.SS4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.2.2.2.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.2.2.2.2.2.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.SS4.2.2.2.2.2.m1.1"><semantics id="S4.SS4.2.2.2.2.2.m1.1a"><mo id="S4.SS4.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS4.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.SS4.2.2.2.2.2.m1.1b"><ci id="S4.SS4.2.2.2.2.2.m1.1.1.cmml" xref="S4.SS4.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.4.4.4.4.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="S4.SS4.3.3.3.3.3.m1.1"><semantics id="S4.SS4.3.3.3.3.3.m1.1a"><mrow id="S4.SS4.3.3.3.3.3.m1.1.1" xref="S4.SS4.3.3.3.3.3.m1.1.1.cmml"><mi id="S4.SS4.3.3.3.3.3.m1.1.1.2" xref="S4.SS4.3.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S4.SS4.3.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S4.SS4.3.3.3.3.3.m1.1.1.1.cmml">&lt;</mo><msubsup id="S4.SS4.3.3.3.3.3.m1.1.1.3" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.cmml"><mi id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.2" mathsize="90%" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.2.2.cmml">δ</mi><mtext id="S4.SS4.3.3.3.3.3.m1.1.1.3.3" mathsize="90%" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.3a.cmml">avg</mtext><mi id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.3" mathsize="90%" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.3.3.3.3.3.m1.1b"><apply id="S4.SS4.3.3.3.3.3.m1.1.1.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1"><lt id="S4.SS4.3.3.3.3.3.m1.1.1.1.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S4.SS4.3.3.3.3.3.m1.1.1.2.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="S4.SS4.3.3.3.3.3.m1.1.1.3.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.SS4.3.3.3.3.3.m1.1.1.3.1.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3">subscript</csymbol><apply id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.1.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.2.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.2.2">𝛿</ci><ci id="S4.SS4.3.3.3.3.3.m1.1.1.3.2.3.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.2.3">𝑥</ci></apply><ci id="S4.SS4.3.3.3.3.3.m1.1.1.3.3a.cmml" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.3"><mtext id="S4.SS4.3.3.3.3.3.m1.1.1.3.3.cmml" mathsize="63%" xref="S4.SS4.3.3.3.3.3.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.3.3.3.3.3.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.3.3.3.3.3.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.SS4.4.4.4.4.4.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS4.4.4.4.4.4.m2.1"><semantics id="S4.SS4.4.4.4.4.4.m2.1a"><mo id="S4.SS4.4.4.4.4.4.m2.1.1" mathsize="90%" stretchy="false" xref="S4.SS4.4.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS4.4.4.4.4.4.m2.1b"><ci id="S4.SS4.4.4.4.4.4.m2.1.1.cmml" xref="S4.SS4.4.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.4.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.4.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.5.5.5.5.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.5.5.5.5.5.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS4.5.5.5.5.5.m1.1"><semantics id="S4.SS4.5.5.5.5.5.m1.1a"><mo id="S4.SS4.5.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS4.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS4.5.5.5.5.5.m1.1b"><ci id="S4.SS4.5.5.5.5.5.m1.1.1.cmml" xref="S4.SS4.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.6.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.6.6.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS4.6.6.6.6.6.m1.1"><semantics id="S4.SS4.6.6.6.6.6.m1.1a"><mo id="S4.SS4.6.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS4.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS4.6.6.6.6.6.m1.1b"><ci id="S4.SS4.6.6.6.6.6.m1.1.1.cmml" xref="S4.SS4.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="2" id="S4.SS4.6.6.6.8.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_italic" id="S4.SS4.6.6.6.8.1.1" style="font-size:90%;">TAP-Vid CFG</span></td>
<td class="ltx_td ltx_border_t" id="S4.SS4.6.6.6.8.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.SS4.6.6.6.8.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.SS4.6.6.6.8.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.SS4.6.6.6.8.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.SS4.6.6.6.8.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS4.6.6.6.9.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.9.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.9.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.1.1.1.1" style="font-size:90%;">S</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.6.6.6.9.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.9.2.1" style="font-size:90%;">RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.SS4.6.6.6.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.9.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.3.1" style="font-size:90%;">69.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.9.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.4.1" style="font-size:90%;">1.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.9.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.5.1" style="font-size:90%;">83.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.9.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.6.1" style="font-size:90%;">81.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.9.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.9.7.1" style="font-size:90%;">46.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.10">
<td class="ltx_td ltx_align_top" id="S4.SS4.6.6.6.10.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_align_left" id="S4.SS4.6.6.6.10.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.10.2.1" style="font-size:90%;">SEA-RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.SS4.6.6.6.10.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.10.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.10.3.1" style="font-size:90%;">69.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.10.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.10.4.1" style="font-size:90%;">1.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.10.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.10.5.1" style="font-size:90%;background-color:#E6E6E6;">84.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.10.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.10.6.1" style="font-size:90%;">82.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.10.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.10.7.1" style="font-size:90%;">47.52</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS4.6.6.6.11.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.11.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.11.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.1.1.1.1" style="font-size:90%;">U</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.6.6.6.11.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.11.2.1" style="font-size:90%;">SMURF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.SS4.6.6.6.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.11.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.3.1" style="font-size:90%;">65.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.11.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.4.1" style="font-size:90%;">2.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.11.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.5.1" style="font-size:90%;">79.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.11.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.6.1" style="font-size:90%;">82.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.11.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.11.7.1" style="font-size:90%;">42.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.SS4.6.6.6.12.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.12.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.12.1.1.1" style="width:8.5pt;"><span class="ltx_ERROR undefined" id="S4.SS4.6.6.6.12.1.1.1.1">\cdashline</span><span class="ltx_text" id="S4.SS4.6.6.6.12.1.1.1.2" style="font-size:90%;">2-7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.SS4.6.6.6.12.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.12.2.1" style="font-size:90%;">Opt-CWM</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.12.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.12.3.1" style="font-size:90%;">69.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.12.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.12.4.1" style="font-size:90%;">1.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.12.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.12.5.1" style="font-size:90%;">83.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.12.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.12.6.1" style="font-size:90%;">88.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.12.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.12.7.1" style="font-size:90%;">44.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.13">
<td class="ltx_td ltx_align_top" id="S4.SS4.6.6.6.13.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_align_left" id="S4.SS4.6.6.6.13.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.13.2.1" style="font-size:90%;">Opt-CWM Distilled</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.13.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.13.3.1" style="font-size:90%;">70.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.13.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.13.4.1" style="font-size:90%;">1.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.13.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.13.5.1" style="font-size:90%;">82.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.13.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.13.6.1" style="font-size:90%;">88.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.13.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.13.7.1" style="font-size:90%;">55.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="7" id="S4.SS4.6.6.6.14.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_italic" id="S4.SS4.6.6.6.14.1.1" style="font-size:90%;">TAP-Vid First — Main Benchmark</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS4.6.6.6.15.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.15.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.15.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.1.1.1.1" style="font-size:90%;">S</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.6.6.6.15.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.15.2.1" style="font-size:90%;">RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.15.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.SS4.6.6.6.15.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.15.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.3.1" style="font-size:90%;">41.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.15.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.4.1" style="font-size:90%;">25.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.15.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.5.1" style="font-size:90%;">54.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.15.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.6.1" style="font-size:90%;">66.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.15.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.15.7.1" style="font-size:90%;">56.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.16">
<td class="ltx_td ltx_align_top" id="S4.SS4.6.6.6.16.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_align_left" id="S4.SS4.6.6.6.16.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.16.2.1" style="font-size:90%;">SEA-RAFT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.16.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.SS4.6.6.6.16.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.16.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.16.3.1" style="font-size:90%;">43.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.16.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.16.4.1" style="font-size:90%;">20.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.16.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.16.5.1" style="font-size:90%;">58.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.16.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.16.6.1" style="font-size:90%;">66.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.16.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.16.7.1" style="font-size:90%;">56.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS4.6.6.6.17.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.17.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.17.1.1.1" style="width:8.5pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.1.1.1.1" style="font-size:90%;">U</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.6.6.6.17.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS4.6.6.6.17.2.1" style="font-size:90%;">SMURF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS4.6.6.6.17.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.SS4.6.6.6.17.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.17.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.3.1" style="font-size:90%;">30.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.17.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.4.1" style="font-size:90%;">27.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.17.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.5.1" style="font-size:90%;">44.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.17.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.6.1" style="font-size:90%;">59.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.6.6.6.17.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.17.7.1" style="font-size:90%;">46.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.SS4.6.6.6.18.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS4.6.6.6.18.1.1">
<span class="ltx_p" id="S4.SS4.6.6.6.18.1.1.1" style="width:8.5pt;"><span class="ltx_ERROR undefined" id="S4.SS4.6.6.6.18.1.1.1.1">\cdashline</span><span class="ltx_text" id="S4.SS4.6.6.6.18.1.1.1.2" style="font-size:90%;">2-7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.SS4.6.6.6.18.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.18.2.1" style="font-size:90%;">Opt-CWM</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.18.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.18.3.1" style="font-size:90%;">47.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.18.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.18.4.1" style="font-size:90%;">8.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.18.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.18.5.1" style="font-size:90%;">64.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.18.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.18.6.1" style="font-size:90%;">80.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.6.6.18.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS4.6.6.6.18.7.1" style="font-size:90%;">60.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.6.6.19">
<td class="ltx_td ltx_align_top ltx_border_bb" id="S4.SS4.6.6.6.19.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS4.6.6.6.19.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS4.6.6.6.19.2.1" style="font-size:90%;">Opt-CWM Distilled</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.6.6.6.19.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.19.3.1" style="font-size:90%;">44.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.6.6.6.19.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.19.4.1" style="font-size:90%;">17.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.6.6.6.19.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.19.5.1" style="font-size:90%;">57.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.6.6.6.19.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.19.6.1" style="font-size:90%;">69.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.6.6.6.19.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS4.6.6.6.19.7.1" style="font-size:90%;">60.72</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of distilling the Opt-CWM model into a smaller, more efficient SEA-RAFT architecture.  Instead of using labeled data for training, the researchers used sparsely pseudo-labeled Kinetics data generated by Opt-CWM.  The goal was to achieve fast test-time inference while maintaining performance. The results show that this distilled model outperforms the self-supervised SMURF model and is competitive with supervised RAFT models, demonstrating the effectiveness of this approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Opt-CWM Distillation Results. To obtain fast test-time inference with a small model, we distill Opt-CWM into the smaller and more efficient SEA-RAFT architecture by sparsely pseudo-labeling Kinetics with Opt-CWM. This approach outpeforms the self-supervised SMURF and is competitive with the supervised RAFT models, while requiring no labeled training data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T4.1.2.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.2.1.1" style="font-size:90%;">config</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.2.2.1" style="font-size:90%;">value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.3.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.3.1.1" style="font-size:90%;">optimizer</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.3.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T4.1.3.2.1" style="font-size:90%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T4.1.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="A1.T4.1.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.4.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.4.1.1" style="font-size:90%;">base learning rate</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.4.2.1" style="font-size:90%;">1.5e-4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.5.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.5.1.1" style="font-size:90%;">weight decay</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.5.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.1.2.1" style="font-size:90%;">optimizer momentum</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<math alttext="\beta_{1},\beta_{2}=0.9,0.95" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.2"><semantics id="A1.T4.1.1.1.m1.2a"><mrow id="A1.T4.1.1.1.m1.2.2.1" xref="A1.T4.1.1.1.m1.2.2.2.cmml"><mrow id="A1.T4.1.1.1.m1.2.2.1.1" xref="A1.T4.1.1.1.m1.2.2.1.1.cmml"><mrow id="A1.T4.1.1.1.m1.2.2.1.1.2.2" xref="A1.T4.1.1.1.m1.2.2.1.1.2.3.cmml"><msub id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.cmml"><mi id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.2" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.2.cmml">β</mi><mn id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.3" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T4.1.1.1.m1.2.2.1.1.2.2.3" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.2.3.cmml">,</mo><msub id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.cmml"><mi id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.2" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.2.cmml">β</mi><mn id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.3" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.3.cmml">2</mn></msub></mrow><mo id="A1.T4.1.1.1.m1.2.2.1.1.3" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.3.cmml">=</mo><mn id="A1.T4.1.1.1.m1.2.2.1.1.4" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.1.1.4.cmml">0.9</mn></mrow><mo id="A1.T4.1.1.1.m1.2.2.1.2" mathsize="90%" xref="A1.T4.1.1.1.m1.2.2.2a.cmml">,</mo><mn id="A1.T4.1.1.1.m1.1.1" mathsize="90%" xref="A1.T4.1.1.1.m1.1.1.cmml">0.95</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.2b"><apply id="A1.T4.1.1.1.m1.2.2.2.cmml" xref="A1.T4.1.1.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.2.2.2a.cmml" xref="A1.T4.1.1.1.m1.2.2.1.2">formulae-sequence</csymbol><apply id="A1.T4.1.1.1.m1.2.2.1.1.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1"><eq id="A1.T4.1.1.1.m1.2.2.1.1.3.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.3"></eq><list id="A1.T4.1.1.1.m1.2.2.1.1.2.3.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2"><apply id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.1.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1">subscript</csymbol><ci id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.2.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.2">𝛽</ci><cn id="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.3.cmml" type="integer" xref="A1.T4.1.1.1.m1.2.2.1.1.1.1.1.3">1</cn></apply><apply id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.1.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2">subscript</csymbol><ci id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.2.cmml" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.2">𝛽</ci><cn id="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.3.cmml" type="integer" xref="A1.T4.1.1.1.m1.2.2.1.1.2.2.2.3">2</cn></apply></list><cn id="A1.T4.1.1.1.m1.2.2.1.1.4.cmml" type="float" xref="A1.T4.1.1.1.m1.2.2.1.1.4">0.9</cn></apply><cn id="A1.T4.1.1.1.m1.1.1.cmml" type="float" xref="A1.T4.1.1.1.m1.1.1">0.95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.2c">\beta_{1},\beta_{2}=0.9,0.95</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.2d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.9 , 0.95</annotation></semantics></math><span class="ltx_text" id="A1.T4.1.1.1.1" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T4.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="A1.T4.1.1.1.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.6.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.6.1.1" style="font-size:90%;">accumulative batch size</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.6.2.1" style="font-size:90%;">4096</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.7.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.7.1.1" style="font-size:90%;">learning rate schedule</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T4.1.7.2.1" style="font-size:90%;">cosine decay </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T4.1.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="A1.T4.1.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.8.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T4.1.8.1.1" style="font-size:90%;">warmup epochs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T4.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="A1.T4.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.8.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.8.2.1" style="font-size:90%;">40</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.9.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.9.1.1" style="font-size:90%;">total epochs</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.9.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.9.2.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.10.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.10.1.1" style="font-size:90%;">flip augmentation</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.10.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.10.2.1" style="font-size:90%;">no</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T4.1.11.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T4.1.11.1.1" style="font-size:90%;">augmentation</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.11.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T4.1.11.2.1" style="font-size:90%;">MultiScaleCrop </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T4.1.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19953v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="A1.T4.1.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for pre-training the Counterfactual World Model (CWM) which is a core component of the Opt-CWM model.  It shows the optimizer used, learning rate, weight decay, momentum, batch size, learning rate schedule, number of warmup and total training epochs, and data augmentation strategies employed.
> <details>
> <summary>read the caption</summary>
> Table 4: Default pre-training setting of CWM
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.6.6">
<tr class="ltx_tr" id="A1.T5.6.6.6">
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.6.7" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A1.T5.6.6.6.7.1" style="font-size:90%;">
</span><span class="ltx_text" id="A1.T5.6.6.6.7.2" style="font-size:90%;">M</span><span class="ltx_text" id="A1.T5.6.6.6.7.3" style="font-size:90%;">ask Type</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.6.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.6.8.1" style="font-size:90%;">Train %</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.6.6.6.9" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.6.9.1" style="font-size:90%;">Test %</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T5.1.1.1.1.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mo id="A1.T5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="A1.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><ci id="A1.T5.1.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T5.2.2.2.2.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T5.2.2.2.2.m1.1"><semantics id="A1.T5.2.2.2.2.m1.1a"><mo id="A1.T5.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="A1.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.2.m1.1b"><ci id="A1.T5.2.2.2.2.m1.1.1.cmml" xref="A1.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.4.4.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="A1.T5.3.3.3.3.m1.1"><semantics id="A1.T5.3.3.3.3.m1.1a"><mrow id="A1.T5.3.3.3.3.m1.1.1" xref="A1.T5.3.3.3.3.m1.1.1.cmml"><mi id="A1.T5.3.3.3.3.m1.1.1.2" xref="A1.T5.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="A1.T5.3.3.3.3.m1.1.1.1" mathsize="90%" xref="A1.T5.3.3.3.3.m1.1.1.1.cmml">&lt;</mo><msubsup id="A1.T5.3.3.3.3.m1.1.1.3" xref="A1.T5.3.3.3.3.m1.1.1.3.cmml"><mi id="A1.T5.3.3.3.3.m1.1.1.3.2.2" mathsize="90%" xref="A1.T5.3.3.3.3.m1.1.1.3.2.2.cmml">δ</mi><mtext id="A1.T5.3.3.3.3.m1.1.1.3.3" mathsize="90%" xref="A1.T5.3.3.3.3.m1.1.1.3.3a.cmml">avg</mtext><mi id="A1.T5.3.3.3.3.m1.1.1.3.2.3" mathsize="90%" xref="A1.T5.3.3.3.3.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.3.m1.1b"><apply id="A1.T5.3.3.3.3.m1.1.1.cmml" xref="A1.T5.3.3.3.3.m1.1.1"><lt id="A1.T5.3.3.3.3.m1.1.1.1.cmml" xref="A1.T5.3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="A1.T5.3.3.3.3.m1.1.1.2.cmml" xref="A1.T5.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="A1.T5.3.3.3.3.m1.1.1.3.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.3.3.3.3.m1.1.1.3.1.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3">subscript</csymbol><apply id="A1.T5.3.3.3.3.m1.1.1.3.2.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.3.3.3.3.m1.1.1.3.2.1.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="A1.T5.3.3.3.3.m1.1.1.3.2.2.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3.2.2">𝛿</ci><ci id="A1.T5.3.3.3.3.m1.1.1.3.2.3.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3.2.3">𝑥</ci></apply><ci id="A1.T5.3.3.3.3.m1.1.1.3.3a.cmml" xref="A1.T5.3.3.3.3.m1.1.1.3.3"><mtext id="A1.T5.3.3.3.3.m1.1.1.3.3.cmml" mathsize="63%" xref="A1.T5.3.3.3.3.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.3.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.3.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T5.4.4.4.4.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.4.4.4.4.m2.1"><semantics id="A1.T5.4.4.4.4.m2.1a"><mo id="A1.T5.4.4.4.4.m2.1.1" mathsize="90%" stretchy="false" xref="A1.T5.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.4.m2.1b"><ci id="A1.T5.4.4.4.4.m2.1.1.cmml" xref="A1.T5.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T5.5.5.5.5.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.5.5.5.5.m1.1"><semantics id="A1.T5.5.5.5.5.m1.1a"><mo id="A1.T5.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="A1.T5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.5.m1.1b"><ci id="A1.T5.5.5.5.5.m1.1.1.cmml" xref="A1.T5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.6.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T5.6.6.6.6.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.6.6.6.6.m1.1"><semantics id="A1.T5.6.6.6.6.m1.1a"><mo id="A1.T5.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="A1.T5.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.6.m1.1b"><ci id="A1.T5.6.6.6.6.m1.1.1.cmml" xref="A1.T5.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.6.6.7.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A1.T5.6.6.7.1.1" style="font-size:90%;">t</span><span class="ltx_text" id="A1.T5.6.6.7.1.2" style="font-size:90%;">ube</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.6.6.7.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.2.1" style="font-size:90%;">55-55</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.6.6.7.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.3.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.6.7.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.4.1" style="font-size:90%;">23.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.6.7.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.5.1" style="font-size:90%;">15.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.6.7.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.6.1" style="font-size:90%;">36.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.6.7.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.7.1" style="font-size:90%;">72.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.6.7.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.7.8.1" style="font-size:90%;">52.36</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.8">
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.8.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.1.1" style="font-size:90%;">tube</span></td>
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.8.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.2.1" style="font-size:90%;">75-75</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.6.6.8.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.3.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.8.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.4.1" style="font-size:90%;">22.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.8.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.5.1" style="font-size:90%;">15.86</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.8.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.6.1" style="font-size:90%;">39.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.8.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.7.1" style="font-size:90%;">58.20</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.8.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.8.8.1" style="font-size:90%;">52.27</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.9">
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.9.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.1.1" style="font-size:90%;">tube</span></td>
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.9.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.2.1" style="font-size:90%;">90-90</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.6.6.9.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.3.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.9.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.4.1" style="font-size:90%;">15.23</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.9.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.5.1" style="font-size:90%;">18.57</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.9.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.6.1" style="font-size:90%;">32.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.9.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.7.1" style="font-size:90%;">51.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.9.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.9.8.1" style="font-size:90%;">49.20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.10">
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.10.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.1.1" style="font-size:90%;">random</span></td>
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.10.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.2.1" style="font-size:90%;">75-75</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.6.6.10.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.3.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.10.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.4.1" style="font-size:90%;">29.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.10.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.5.1" style="font-size:90%;">14.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.10.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.6.1" style="font-size:90%;">42.57</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.10.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.7.1" style="font-size:90%;">73.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.10.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.10.8.1" style="font-size:90%;">57.06</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.11">
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.11.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.1.1" style="font-size:90%;">random</span></td>
<td class="ltx_td ltx_align_left" id="A1.T5.6.6.11.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.2.1" style="font-size:90%;">75-75</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.6.6.11.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.3.1" style="font-size:90%;">0-75</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.11.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.4.1" style="font-size:90%;">34.06</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.11.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.5.1" style="font-size:90%;">12.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.11.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.6.1" style="font-size:90%;">47.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.11.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.7.1" style="font-size:90%;">76.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.11.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.11.8.1" style="font-size:90%;">60.81</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T5.6.6.12.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.1.1" style="font-size:90%;">random</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T5.6.6.12.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.2.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T5.6.6.12.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.3.1" style="font-size:90%;">0-90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.6.6.12.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.4.1" style="font-size:90%;">37.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.6.6.12.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.5.1" style="font-size:90%;">11.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.6.6.12.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.6.1" style="font-size:90%;">52.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.6.6.12.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.7.1" style="font-size:90%;">81.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.6.6.12.8" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A1.T5.6.6.12.8.1" style="font-size:90%;">57.80</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different training-time masking policies for the RGB-conditioned next frame predictor (ΨRGB).  It compares the performance of various masking strategies, including those similar to Video-MAE, where a percentage of patches are masked in each frame (55-55 means 55% in frame 1 and 55% in frame 2).  It also explores 'tube' masking (masking the same spatial location across frames) and completely random masking. The results are evaluated using the TAP-Vid DAVIS First protocol with 256x256 resolution, 3 multi-mask iterations, and 2 multiscale iterations. The goal is to show the impact of the masking policy on the final motion estimation performance, demonstrating that the temporally factored masking policy used in the main experiments is superior.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation analysis of training-time masking policy on TAP-Vid DAVIS First. We train 𝚿RGBsuperscript𝚿RGB\boldsymbol{\Psi}^{\texttt{RGB}}bold_Ψ start_POSTSUPERSCRIPT RGB end_POSTSUPERSCRIPT with different non-temporally factored masking policies more similar to Video-MAE [39, 45]. The notation of 55-55 indicates 55% of patches are masked in the first frame and 55% are masked in the second frame. Tube masking selects patches at the same spatial location over time, whereas random independently samples patches in each frame. MAE-style masking during training is strictly worse than the temporally-factored masking policy we use as the standard in this paper (shown for reference in the bottom row). All experiments here use 256x256 resolution, MM-3 and MS-2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.6.6">
<tr class="ltx_tr" id="A2.T6.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.6.6.6.7" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.6.7.1" style="font-size:90%;">Masking Ratio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A2.T6.1.1.1.1.1" style="font-size:90%;">AJ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.1.m1.1a"><mo id="A2.T6.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="A2.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.m1.1b"><ci id="A2.T6.1.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.2.2.2.2" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A2.T6.2.2.2.2.1" style="font-size:90%;">AD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.m1.1"><semantics id="A2.T6.2.2.2.2.m1.1a"><mo id="A2.T6.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="A2.T6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.m1.1b"><ci id="A2.T6.2.2.2.2.m1.1.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.4" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;">
<math alttext="&lt;\delta^{x}_{\textrm{avg}}" class="ltx_Math" display="inline" id="A2.T6.3.3.3.3.m1.1"><semantics id="A2.T6.3.3.3.3.m1.1a"><mrow id="A2.T6.3.3.3.3.m1.1.1" xref="A2.T6.3.3.3.3.m1.1.1.cmml"><mi id="A2.T6.3.3.3.3.m1.1.1.2" xref="A2.T6.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="A2.T6.3.3.3.3.m1.1.1.1" mathsize="90%" xref="A2.T6.3.3.3.3.m1.1.1.1.cmml">&lt;</mo><msubsup id="A2.T6.3.3.3.3.m1.1.1.3" xref="A2.T6.3.3.3.3.m1.1.1.3.cmml"><mi id="A2.T6.3.3.3.3.m1.1.1.3.2.2" mathsize="90%" xref="A2.T6.3.3.3.3.m1.1.1.3.2.2.cmml">δ</mi><mtext id="A2.T6.3.3.3.3.m1.1.1.3.3" mathsize="90%" xref="A2.T6.3.3.3.3.m1.1.1.3.3a.cmml">avg</mtext><mi id="A2.T6.3.3.3.3.m1.1.1.3.2.3" mathsize="90%" xref="A2.T6.3.3.3.3.m1.1.1.3.2.3.cmml">x</mi></msubsup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.3.m1.1b"><apply id="A2.T6.3.3.3.3.m1.1.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1"><lt id="A2.T6.3.3.3.3.m1.1.1.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="A2.T6.3.3.3.3.m1.1.1.2.cmml" xref="A2.T6.3.3.3.3.m1.1.1.2">absent</csymbol><apply id="A2.T6.3.3.3.3.m1.1.1.3.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.3.3.3.3.m1.1.1.3.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3">subscript</csymbol><apply id="A2.T6.3.3.3.3.m1.1.1.3.2.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.3.3.3.3.m1.1.1.3.2.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="A2.T6.3.3.3.3.m1.1.1.3.2.2.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3.2.2">𝛿</ci><ci id="A2.T6.3.3.3.3.m1.1.1.3.2.3.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3.2.3">𝑥</ci></apply><ci id="A2.T6.3.3.3.3.m1.1.1.3.3a.cmml" xref="A2.T6.3.3.3.3.m1.1.1.3.3"><mtext id="A2.T6.3.3.3.3.m1.1.1.3.3.cmml" mathsize="63%" xref="A2.T6.3.3.3.3.m1.1.1.3.3">avg</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.3.m1.1c">&lt;\delta^{x}_{\textrm{avg}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.3.m1.1d">&lt; italic_δ start_POSTSUPERSCRIPT italic_x end_POSTSUPERSCRIPT start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A2.T6.4.4.4.4.1" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T6.4.4.4.4.m2.1"><semantics id="A2.T6.4.4.4.4.m2.1a"><mo id="A2.T6.4.4.4.4.m2.1.1" mathsize="90%" stretchy="false" xref="A2.T6.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.4.m2.1b"><ci id="A2.T6.4.4.4.4.m2.1.1.cmml" xref="A2.T6.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.5.5.5.5" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A2.T6.5.5.5.5.1" style="font-size:90%;">OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T6.5.5.5.5.m1.1"><semantics id="A2.T6.5.5.5.5.m1.1a"><mo id="A2.T6.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="A2.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.5.m1.1b"><ci id="A2.T6.5.5.5.5.m1.1.1.cmml" xref="A2.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.6.6.6.6" style="padding-bottom:1.0pt;padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="A2.T6.6.6.6.6.1" style="font-size:90%;">OF1 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T6.6.6.6.6.m1.1"><semantics id="A2.T6.6.6.6.6.m1.1a"><mo id="A2.T6.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="A2.T6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.6.m1.1b"><ci id="A2.T6.6.6.6.6.m1.1.1.cmml" xref="A2.T6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.6.6.7.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.7.1.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.7.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.7.2.1" style="font-size:90%;">42.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.7.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.7.3.1" style="font-size:90%;">10.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.7.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.7.4.1" style="font-size:90%;">58.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.7.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.7.5.1" style="font-size:90%;">79.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.7.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.7.6.1" style="font-size:90%;">60.68</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.8">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.8.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.8.1.1" style="font-size:90%;">60%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.8.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.6.8.2.1" style="font-size:90%;">43.28</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.8.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.8.3.1" style="font-size:90%;">10.12</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.8.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.8.4.1" style="font-size:90%;">59.56</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.8.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.8.5.1" style="font-size:90%;">80.33</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.8.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.6.8.6.1" style="font-size:90%;">60.80</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.9">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.9.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.9.1.1" style="font-size:90%;">70%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.9.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.9.2.1" style="font-size:90%;">43.25</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.9.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.9.3.1" style="font-size:90%;">9.72</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.9.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.6.9.4.1" style="font-size:90%;">59.95</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.9.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.9.5.1" style="font-size:90%;">81.24</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.9.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.9.6.1" style="font-size:90%;">59.68</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.10">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.10.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.10.1.1" style="font-size:90%;">80%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.10.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.10.2.1" style="font-size:90%;">42.68</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.10.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.6.10.3.1" style="font-size:90%;">9.44</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.10.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.10.4.1" style="font-size:90%;">59.76</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.10.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.6.6.10.5.1" style="font-size:90%;">81.64</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.10.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.10.6.1" style="font-size:90%;">57.53</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.11">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.11.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.11.1.1" style="font-size:90%;">85%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.11.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.11.2.1" style="font-size:90%;">41.99</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.11.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.11.3.1" style="font-size:90%;">9.57</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.11.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.11.4.1" style="font-size:90%;">59.58</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.11.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.11.5.1" style="font-size:90%;">80.92</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.11.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.11.6.1" style="font-size:90%;">54.06</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.12">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.12.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.1.1" style="font-size:90%;">90% (Ref.)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.12.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.2.1" style="font-size:90%;">40.51</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.12.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.3.1" style="font-size:90%;">9.72</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.12.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.4.1" style="font-size:90%;">58.57</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.12.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.5.1" style="font-size:90%;">80.34</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.12.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.12.6.1" style="font-size:90%;">50.06</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.13">
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.13.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.1.1" style="font-size:90%;">95%</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.13.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.2.1" style="font-size:90%;">37.68</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.13.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.3.1" style="font-size:90%;">10.57</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.13.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.4.1" style="font-size:90%;">55.87</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.13.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.5.1" style="font-size:90%;">79.63</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.13.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.13.6.1" style="font-size:90%;">45.00</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.6.6.14.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.1.1" style="font-size:90%;">98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.6.6.14.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.2.1" style="font-size:90%;">32.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.6.6.14.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.3.1" style="font-size:90%;">13.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.6.6.14.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.4.1" style="font-size:90%;">50.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.6.6.14.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.5.1" style="font-size:90%;">78.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.6.6.14.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="A2.T6.6.6.14.6.1" style="font-size:90%;">41.42</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the test-time masking policy used in the Opt-CWM model.  Specifically, it investigates the impact of varying the percentage of masked patches in the second frame (the masking ratio) during the inference phase of the model, while keeping other parameters (such as multi-masking iterations and multi-scale refinement) constant at MM=3 and MS=2.  The table shows the performance of the model (measured by Average Jaccard (AJ), Average Distance (AD), average percentage of points predicted correctly within various distance thresholds (< avg), Occlusion Accuracy (OA), and Occlusion F1-score (OF1)) across different masking ratios.  A reference masking ratio (90%) used in the main experiments is also included for comparison. The experiment was performed on the TAP-Vid DAVIS First benchmark using a 512-resolution RGB-conditioned next frame predictor.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation analysis of test-time masking policy on TAP-Vid DAVIS First. We evaluate a 512 resolution 𝚿RGBsuperscript𝚿RGB\boldsymbol{\Psi}^{\texttt{RGB}}bold_Ψ start_POSTSUPERSCRIPT RGB end_POSTSUPERSCRIPT across various masking ratios for the second frame using the MM-3 and MS-2 setting. The standard masking ratio for all results in this work is included as 90% (Ref.) in this table.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19953/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19953/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}