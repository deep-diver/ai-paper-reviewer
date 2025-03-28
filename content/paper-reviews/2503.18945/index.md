---
title: "Aether: Geometric-Aware Unified World Modeling"
summary: "AETHER: a unified framework enabling geometry-aware reasoning in world models, achieving zero-shot generalization from synthetic to real-world data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18945 {{< /keyword >}}
{{< keyword icon="writer" >}} Aether Team et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18945" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18945" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18945/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Integrating geometric understanding with generative models is key for human-like AI, but it's challenging.** Existing methods struggle with real-world data and lack unified approaches for reconstruction, prediction, and planning. There is a need for more scalable and generalizable solutions that can bridge the gap between synthetic training and real-world application.



This paper introduces AETHER, **a framework trained on synthetic 4D data, achieving zero-shot generalization to real-world tasks.** AETHER jointly optimizes 4D reconstruction, action-conditioned prediction, and visual planning. A robust pipeline annotates synthetic data. This enables accuracy comparable to SOTA while enabling planning. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AETHER introduces a novel framework for geometry-aware reasoning in world models by jointly optimizing 4D dynamic reconstruction, action-conditioned video prediction, and goal-conditioned visual planning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework demonstrates unprecedented synthetic-to-real generalization without real-world data during training, and achieves zero-shot generalization in action following and reconstruction tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A robust automatic data annotation pipeline is proposed to obtain accurate 4D geometry knowledge from synthetic data, enabling actionable planning capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
AETHER's synthetic data approach offers a scalable solution to bridge the gap between geometric reasoning and generative modeling, enabling robust zero-shot transfer to real-world tasks. This can inspire new research in physically-plausible world modeling for AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18945/x2.png)

> 🔼 Figure 1 provides a visual overview of the Aether model, showcasing its core functionalities trained exclusively on synthetic data.  It demonstrates the model's ability to perform 4D reconstruction (using data from MovieGen [48] and Veo 2 [62]), action-conditioned 4D prediction (with input from a university classroom), and goal-conditioned visual planning (with data from an office environment). Notably, these capabilities are shown applied to real-world data never seen during the training process, highlighting the model's impressive generalization abilities. The image is best viewed at a larger scale for better detail.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of Aether, trained entirely on synthetic data. The figure highlights its three key capabilities: 4D reconstruction, action-conditioned 4D prediction, and visual planning, all demonstrated on unseen real-world data. The 4D reconstruction examples are derived from MovieGen [48] and Veo 2 [62] generated videos, while the action-conditioned prediction uses an observation image from a university classroom. The visual planning example utilizes observation and goal images from an office building. Better viewed when zoomed in. Additional visualizations can be found in our website.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.6.7.1.1" rowspan="2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.7.1.1.1" style="font-size:80%;">     </span><span class="ltx_text" id="S4.T1.6.7.1.1.2" style="font-size:80%;">Method</span><span class="ltx_text" id="S4.T1.6.7.1.1.3" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.6.7.1.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.7.1.2.1" style="font-size:80%;">     Sintel </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.7.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.6.7.1.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.7.1.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.6.7.1.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.7.1.3.1" style="font-size:80%;">     BONN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.7.1.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T1.6.7.1.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.7.1.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.6.7.1.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.7.1.4.1" style="font-size:80%;">     KITTI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.7.1.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T1.6.7.1.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.7.1.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:80%;">     Abs Rel </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S4.T1.1.1.1.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">     </span><math alttext="\delta&lt;1.25~{}\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mrow id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml"><mi id="S4.T1.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T1.2.2.2.m1.1.1.2.cmml">δ</mi><mo id="S4.T1.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T1.2.2.2.m1.1.1.3.cmml">&lt;</mo><mn id="S4.T1.2.2.2.m1.1.1.4" mathsize="80%" xref="S4.T1.2.2.2.m1.1.1.4.cmml">1.25</mn><mo id="S4.T1.2.2.2.m1.1.1.5" lspace="0.548em" mathsize="80%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.5.cmml">↑</mo><mi id="S4.T1.2.2.2.m1.1.1.6" xref="S4.T1.2.2.2.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"><and id="S4.T1.2.2.2.m1.1.1a.cmml" xref="S4.T1.2.2.2.m1.1.1"></and><apply id="S4.T1.2.2.2.m1.1.1b.cmml" xref="S4.T1.2.2.2.m1.1.1"><lt id="S4.T1.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.m1.1.1.3"></lt><ci id="S4.T1.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2">𝛿</ci><cn id="S4.T1.2.2.2.m1.1.1.4.cmml" type="float" xref="S4.T1.2.2.2.m1.1.1.4">1.25</cn></apply><apply id="S4.T1.2.2.2.m1.1.1c.cmml" xref="S4.T1.2.2.2.m1.1.1"><ci id="S4.T1.2.2.2.m1.1.1.5.cmml" xref="S4.T1.2.2.2.m1.1.1.5">↑</ci><share href="https://arxiv.org/html/2503.18945v1#S4.T1.2.2.2.m1.1.1.4.cmml" id="S4.T1.2.2.2.m1.1.1d.cmml" xref="S4.T1.2.2.2.m1.1.1"></share><csymbol cd="latexml" id="S4.T1.2.2.2.m1.1.1.6.cmml" xref="S4.T1.2.2.2.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\delta&lt;1.25~{}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">italic_δ &lt; 1.25 ↑</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:80%;">     Abs Rel </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:80%;">     </span><math alttext="\delta&lt;1.25~{}\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mrow id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml"><mi id="S4.T1.4.4.4.m1.1.1.2" mathsize="80%" xref="S4.T1.4.4.4.m1.1.1.2.cmml">δ</mi><mo id="S4.T1.4.4.4.m1.1.1.3" mathsize="80%" xref="S4.T1.4.4.4.m1.1.1.3.cmml">&lt;</mo><mn id="S4.T1.4.4.4.m1.1.1.4" mathsize="80%" xref="S4.T1.4.4.4.m1.1.1.4.cmml">1.25</mn><mo id="S4.T1.4.4.4.m1.1.1.5" lspace="0.548em" mathsize="80%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.5.cmml">↑</mo><mi id="S4.T1.4.4.4.m1.1.1.6" xref="S4.T1.4.4.4.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"><and id="S4.T1.4.4.4.m1.1.1a.cmml" xref="S4.T1.4.4.4.m1.1.1"></and><apply id="S4.T1.4.4.4.m1.1.1b.cmml" xref="S4.T1.4.4.4.m1.1.1"><lt id="S4.T1.4.4.4.m1.1.1.3.cmml" xref="S4.T1.4.4.4.m1.1.1.3"></lt><ci id="S4.T1.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2">𝛿</ci><cn id="S4.T1.4.4.4.m1.1.1.4.cmml" type="float" xref="S4.T1.4.4.4.m1.1.1.4">1.25</cn></apply><apply id="S4.T1.4.4.4.m1.1.1c.cmml" xref="S4.T1.4.4.4.m1.1.1"><ci id="S4.T1.4.4.4.m1.1.1.5.cmml" xref="S4.T1.4.4.4.m1.1.1.5">↑</ci><share href="https://arxiv.org/html/2503.18945v1#S4.T1.4.4.4.m1.1.1.4.cmml" id="S4.T1.4.4.4.m1.1.1d.cmml" xref="S4.T1.4.4.4.m1.1.1"></share><csymbol cd="latexml" id="S4.T1.4.4.4.m1.1.1.6.cmml" xref="S4.T1.4.4.4.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\delta&lt;1.25~{}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">italic_δ &lt; 1.25 ↑</annotation></semantics></math><span class="ltx_text" id="S4.T1.4.4.4.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:80%;">     Abs Rel </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S4.T1.5.5.5.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:80%;">     </span><math alttext="\delta&lt;1.25~{}\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mrow id="S4.T1.6.6.6.m1.1.1" xref="S4.T1.6.6.6.m1.1.1.cmml"><mi id="S4.T1.6.6.6.m1.1.1.2" mathsize="80%" xref="S4.T1.6.6.6.m1.1.1.2.cmml">δ</mi><mo id="S4.T1.6.6.6.m1.1.1.3" mathsize="80%" xref="S4.T1.6.6.6.m1.1.1.3.cmml">&lt;</mo><mn id="S4.T1.6.6.6.m1.1.1.4" mathsize="80%" xref="S4.T1.6.6.6.m1.1.1.4.cmml">1.25</mn><mo id="S4.T1.6.6.6.m1.1.1.5" lspace="0.548em" mathsize="80%" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.5.cmml">↑</mo><mi id="S4.T1.6.6.6.m1.1.1.6" xref="S4.T1.6.6.6.m1.1.1.6.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><apply id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1"><and id="S4.T1.6.6.6.m1.1.1a.cmml" xref="S4.T1.6.6.6.m1.1.1"></and><apply id="S4.T1.6.6.6.m1.1.1b.cmml" xref="S4.T1.6.6.6.m1.1.1"><lt id="S4.T1.6.6.6.m1.1.1.3.cmml" xref="S4.T1.6.6.6.m1.1.1.3"></lt><ci id="S4.T1.6.6.6.m1.1.1.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2">𝛿</ci><cn id="S4.T1.6.6.6.m1.1.1.4.cmml" type="float" xref="S4.T1.6.6.6.m1.1.1.4">1.25</cn></apply><apply id="S4.T1.6.6.6.m1.1.1c.cmml" xref="S4.T1.6.6.6.m1.1.1"><ci id="S4.T1.6.6.6.m1.1.1.5.cmml" xref="S4.T1.6.6.6.m1.1.1.5">↑</ci><share href="https://arxiv.org/html/2503.18945v1#S4.T1.6.6.6.m1.1.1.4.cmml" id="S4.T1.6.6.6.m1.1.1d.cmml" xref="S4.T1.6.6.6.m1.1.1"></share><csymbol cd="latexml" id="S4.T1.6.6.6.m1.1.1.6.cmml" xref="S4.T1.6.6.6.m1.1.1.6">absent</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\delta&lt;1.25~{}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">italic_δ &lt; 1.25 ↑</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.6.2" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.6.8.2.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.8.2.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_italic" id="S4.T1.6.8.2.1.2" style="font-size:80%;">Reconstruction Methods. Alignment: per-sequence scale</span><span class="ltx_text" id="S4.T1.6.8.2.1.3" style="font-size:80%;"></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.9.3.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.9.3.1.1" style="font-size:80%;">     DUSt3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.9.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S4.T1.6.9.3.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.9.3.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.2.1" style="font-size:80%;">     0.656</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.3.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.3.1" style="font-size:80%;">     45.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.4.1" style="font-size:80%;">     0.155</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.3.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.5.1" style="font-size:80%;">     83.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.6.1" style="font-size:80%;">     0.144</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.9.3.7.1" style="font-size:80%;">     81.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.10.4.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.10.4.1.1" style="font-size:80%;">     MASt3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.10.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T1.6.10.4.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.10.4.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.2.1" style="font-size:80%;">     0.641</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.4.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.3.1" style="font-size:80%;">     43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.4.1" style="font-size:80%;">     0.252</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.4.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.5.1" style="font-size:80%;">     70.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.6.1" style="font-size:80%;">     0.183</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.10.4.7.1" style="font-size:80%;">     74.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.11.5.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.11.5.1.1" style="font-size:80%;">     MonST3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.11.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a><span class="ltx_text" id="S4.T1.6.11.5.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.11.5.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.5.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.11.5.2.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.11.5.2.2" style="font-size:80%;">0.378</span><span class="ltx_text" id="S4.T1.6.11.5.2.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.11.5.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.11.5.3.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.11.5.3.2" style="font-size:80%;">55.8</span><span class="ltx_text" id="S4.T1.6.11.5.3.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.5.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.11.5.4.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.11.5.4.2" style="font-size:80%;">0.067</span><span class="ltx_text" id="S4.T1.6.11.5.4.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.11.5.5" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.11.5.5.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.11.5.5.2" style="font-size:80%;">96.3</span><span class="ltx_text" id="S4.T1.6.11.5.5.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.5.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.11.5.6.1" style="font-size:80%;">     0.168</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.5.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.11.5.7.1" style="font-size:80%;">     74.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.12.6.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.12.6.1.1" style="font-size:80%;">     Spann3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.12.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.T1.6.12.6.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.12.6.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.6.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.2.1" style="font-size:80%;">     0.622</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.12.6.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.3.1" style="font-size:80%;">     42.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.6.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.4.1" style="font-size:80%;">     0.144</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.12.6.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.5.1" style="font-size:80%;">     81.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.6.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.6.1" style="font-size:80%;">     0.198</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.6.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.12.6.7.1" style="font-size:80%;">     73.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.13.7.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.13.7.1.1" style="font-size:80%;">     CUT3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.13.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S4.T1.6.13.7.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.13.7.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.13.7.2.1" style="font-size:80%;">     0.421</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.7.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.13.7.3.1" style="font-size:80%;">     47.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.13.7.4.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.13.7.4.2" style="font-size:80%;">0.078</span><span class="ltx_text" id="S4.T1.6.13.7.4.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.7.5" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.13.7.5.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.13.7.5.2" style="font-size:80%;">93.7</span><span class="ltx_text" id="S4.T1.6.13.7.5.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.6" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.13.7.6.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.13.7.6.2" style="font-size:80%;">0.118</span><span class="ltx_text" id="S4.T1.6.13.7.6.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.7" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.13.7.7.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.13.7.7.2" style="font-size:80%;">88.1</span><span class="ltx_text" id="S4.T1.6.13.7.7.3" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.14.8.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.14.8.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.6.14.8.1.2" style="font-size:80%;">Aether<span class="ltx_text ltx_font_upright" id="S4.T1.6.14.8.1.2.1"> (Ours)</span></span><span class="ltx_text" id="S4.T1.6.14.8.1.3" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.14.8.2.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.2.2" style="font-size:80%;">0.324</span><span class="ltx_text" id="S4.T1.6.14.8.2.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.14.8.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.14.8.3.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.14.8.3.2" style="font-size:80%;">50.2</span><span class="ltx_text" id="S4.T1.6.14.8.3.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.14.8.4.1" style="font-size:80%;">     0.273</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.14.8.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.14.8.5.1" style="font-size:80%;">     59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.6" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.14.8.6.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.6.2" style="font-size:80%;">0.056</span><span class="ltx_text" id="S4.T1.6.14.8.6.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.7" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.14.8.7.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.7.2" style="font-size:80%;">97.8</span><span class="ltx_text" id="S4.T1.6.14.8.7.3" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.15.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.6.15.9.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.15.9.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_italic" id="S4.T1.6.15.9.1.2" style="font-size:80%;">Diffusion-Based Methods. Alignment: per-sequence scale&amp;shift</span><span class="ltx_text" id="S4.T1.6.15.9.1.3" style="font-size:80%;"></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.16.10.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.16.10.1.1" style="font-size:80%;">     ChronoDepth </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.16.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T1.6.16.10.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.16.10.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.10.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.16.10.2.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.16.10.2.2" style="font-size:80%;">0.429</span><span class="ltx_text" id="S4.T1.6.16.10.2.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.16.10.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.16.10.3.1" style="font-size:80%;">     38.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.10.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.16.10.4.1" style="font-size:80%;">     0.318</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.16.10.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.16.10.5.1" style="font-size:80%;">     51.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.10.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.16.10.6.1" style="font-size:80%;">     0.252</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.16.10.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.16.10.7.1" style="font-size:80%;">     54.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.17.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.17.11.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.17.11.1.1" style="font-size:80%;">     DepthCrafter </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.17.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S4.T1.6.17.11.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.17.11.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.11.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.17.11.2.1" style="font-size:80%;">     0.590</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.17.11.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.17.11.3.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.17.11.3.2" style="font-size:80%;">55.5</span><span class="ltx_text" id="S4.T1.6.17.11.3.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.11.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.17.11.4.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.17.11.4.2" style="font-size:80%;">0.253</span><span class="ltx_text" id="S4.T1.6.17.11.4.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.17.11.5" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.17.11.5.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.17.11.5.2" style="font-size:80%;">56.3</span><span class="ltx_text" id="S4.T1.6.17.11.5.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.11.6" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.17.11.6.1" style="font-size:80%;">     0.124</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.11.7" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.17.11.7.1" style="font-size:80%;">     86.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.18.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.18.12.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.18.12.1.1" style="font-size:80%;">     DA-V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.18.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S4.T1.6.18.12.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.6.18.12.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.12.2" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.18.12.2.1" style="font-size:80%;">     1.252</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.18.12.3" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.18.12.3.1" style="font-size:80%;">     43.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.12.4" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.18.12.4.1" style="font-size:80%;">     0.457</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.18.12.5" style="padding:-0.2pt 15.5pt;"><span class="ltx_text" id="S4.T1.6.18.12.5.1" style="font-size:80%;">     31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.12.6" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.18.12.6.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.18.12.6.2" style="font-size:80%;">0.094</span><span class="ltx_text" id="S4.T1.6.18.12.6.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.12.7" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.18.12.7.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.18.12.7.2" style="font-size:80%;">93.0</span><span class="ltx_text" id="S4.T1.6.18.12.7.3" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.6.19.13.1" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.6.19.13.1.2" style="font-size:80%;">Aether<span class="ltx_text ltx_font_upright" id="S4.T1.6.19.13.1.2.1"> (Ours)</span></span><span class="ltx_text" id="S4.T1.6.19.13.1.3" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.19.13.2" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.2.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.19.13.2.2" style="font-size:80%;">0.314</span><span class="ltx_text" id="S4.T1.6.19.13.2.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.19.13.3" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.3.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.19.13.3.2" style="font-size:80%;">60.4</span><span class="ltx_text" id="S4.T1.6.19.13.3.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.19.13.4" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.4.1" style="font-size:80%;">     </span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.19.13.4.2" style="font-size:80%;">0.308</span><span class="ltx_text" id="S4.T1.6.19.13.4.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.19.13.5" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.5.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.19.13.5.2" style="font-size:80%;">60.2</span><span class="ltx_text" id="S4.T1.6.19.13.5.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.19.13.6" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.6.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.19.13.6.2" style="font-size:80%;">0.054</span><span class="ltx_text" id="S4.T1.6.19.13.6.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.19.13.7" style="padding:-0.2pt 15.5pt;">
<span class="ltx_text" id="S4.T1.6.19.13.7.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S4.T1.6.19.13.7.2" style="font-size:80%;">97.7</span><span class="ltx_text" id="S4.T1.6.19.13.7.3" style="font-size:80%;"></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative evaluation of video depth estimation methods. The table compares several reconstruction-based and diffusion-based methods on three benchmark datasets (Sintel, BONN, and KITTI).  Performance is measured using two key metrics: Absolute Relative Error (Abs Rel), which quantifies the average difference between predicted and ground truth depths, and the percentage of predicted depths within a 1.25 factor of the ground truth depths (δ < 1.25). Methods marked with 'GA' require global alignment, indicating an additional processing step to align the predicted depths with the ground truth.  The table showcases the performance of AETHER in comparison to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Video depth Evaluation. Methods requiring global alignment are marked “GA”.
> </details>





### In-depth insights


#### Geometric-Aware
**Geometric-awareness** in AI signifies endowing models with an understanding of spatial relationships, shapes, and structures. This is crucial for tasks requiring spatial reasoning, like 3D reconstruction, navigation, and physical interaction. A geometrically-aware model can better interpret scenes, predict object behavior, and plan actions within an environment. This understanding can be achieved through various techniques, including incorporating geometric priors into the model architecture, training on data with explicit geometric annotations (e.g., depth maps, camera poses), and using losses that encourage geometric consistency. **The benefit is improved generalization, robustness to noise, and the ability to handle novel viewpoints and object configurations**. Over all its about representing and processing spatial information effectively which is a corner stone for the development of intelligent systems that can seamlessly interact with world.

#### Synthetic 4D Data
Synthetic 4D data is a crucial element for training models that aim to understand and interact with the world. The **lack of real-world 4D datasets**, which capture dynamic 3D scenes over time, makes synthetic data a valuable substitute. High-quality synthetic data allows researchers to generate **precisely annotated** sequences, providing ground truth information for depth, segmentation, and object tracking. Furthermore, using synthetic environments enables the **creation of diverse scenarios** and the **precise control** over scene properties such as lighting and camera movement. The synthetic data generation also facilitates **generating corner cases and failures** which enhances the robustness of the trained model. However, the **domain gap** between synthetic and real-world data remains a challenge, necessitating techniques such as domain adaptation and data augmentation to bridge this gap and ensure effective model generalization. Synthetic data provides means to develop and evaluate novel algorithms and techniques.

#### Zero-Shot Transfer
Zero-shot transfer is a compelling area in machine learning, aiming to apply a model trained on one dataset to a completely unseen target domain **without any further training**.  This ability is particularly valuable when target domain data is scarce or expensive to acquire.  Effective zero-shot transfer often hinges on **shared underlying structures or representations** between the source and target domains.  For instance, if a model learns robust geometric principles from synthetic data, it might generalize surprisingly well to real-world images despite the visual differences. Success depends on several factors, including the **similarity of feature distributions**, the **robustness of the learned representations**, and the **absence of negative transfer**, where knowledge from the source domain actually hinders performance in the target domain. Geometric awareness and robust, disentangled representations are key.

#### Multi-Task Synergy
Multi-task synergy, in the context of AI models, suggests a **mutually beneficial relationship** where training a model on multiple tasks simultaneously improves performance on each individual task. This occurs through **shared learning of underlying representations** and features that are relevant across tasks, leading to better generalization and efficiency. A key benefit is **improved generalization**, allowing models to perform better on unseen data or novel situations. Further, multi-task learning can act as a form of **regularization**, preventing overfitting by constraining the model to learn more robust and general features. Successfully implementing requires **careful selection of tasks** that complement each other, as well as balancing the influence of each task during training to prevent negative transfer, where one task hinders performance on another. The end result is a world model that is more capable and robust.

#### Actionable World
The concept of an "Actionable World" signifies a paradigm shift in AI, moving beyond passive observation to active engagement with the environment. This involves endowing AI agents with the capacity to not only perceive and understand their surroundings but also to **reason about actions**, **predict their consequences**, and **strategically plan** to achieve specific goals. Key to this is the development of world models that incorporate both geometric and semantic understanding, allowing agents to simulate the effects of their actions in a virtual environment before executing them in the real world. The ability to **learn from interaction** and adapt to changing circumstances is also crucial. This entails designing AI systems that can refine their understanding of the world based on the feedback they receive from their actions, continuously improving their ability to predict and control their environment. Furthermore, an actionable world requires AI agents to have access to a repertoire of actions, ranging from simple motor commands to high-level strategic decisions. These actions must be grounded in the agent's perception of the world and aligned with its goals. The ultimate aim is to create AI systems that can seamlessly navigate and manipulate their environment, solving complex problems and achieving ambitious objectives in a safe and reliable manner. This necessitates addressing challenges related to **uncertainty**, **robustness**, and **scalability**, ensuring that AI agents can operate effectively in a wide range of real-world scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18945/x3.png)

> 🔼 Figure 2 presents visualization results from the automatic camera annotation pipeline.  The pipeline processes synthetic RGB-D videos to generate accurate camera pose annotations.  The images show examples of various scenes (indoor/outdoor, static/dynamic) and demonstrate the pipeline's ability to accurately annotate camera parameters and dynamic masks, even in challenging conditions.  Zooming in is recommended for a clearer view of the details.
> <details>
> <summary>read the caption</summary>
> Figure 2: Some visualization results of data annotated through our pipeline. Better viewed when zoomed in.
> </details>



![](https://arxiv.org/html/2503.18945/x4.png)

> 🔼 This figure illustrates the four-stage pipeline used for automatically annotating camera parameters (both intrinsic and extrinsic) from synthetic RGB-D videos.  Stage 1, Object-Level Dynamic Masking, utilizes semantic segmentation to identify and separate dynamic regions from static ones, crucial for accurate camera estimation. This is followed by Video Slicing (Stage 2), which segments long videos into shorter, temporally consistent clips to improve efficiency and robustness. Stage 3, Coarse Camera Estimation, employs DroidCalib to provide an initial estimation of camera parameters. Finally, Stage 4, Tracking-Based Camera Refinement with Bundle Adjustment, refines the initial estimate using CoTracker3 for long-term correspondence and bundle adjustment techniques to minimize reprojection errors.  The resulting output is a fully annotated dataset with precise camera parameters for each frame.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our robust automatic camera annotation pipeline.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.9.10.1.1" rowspan="2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.10.1.1.1" style="font-size:80%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.9.10.1.2" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.10.1.2.1" style="font-size:80%;">Sintel </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.10.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T2.9.10.1.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.9.10.1.3" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.10.1.3.1" style="font-size:80%;">TUM-dynamics </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.10.1.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T2.9.10.1.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.9.10.1.4" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.10.1.4.1" style="font-size:80%;">ScanNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.10.1.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S4.T2.9.10.1.4.3.2" style="font-size:80%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:80%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">RPE trans </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.3" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:80%;">RPE rot </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:80%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:80%;">RPE trans </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.6.6" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.6.6.6.1" style="font-size:80%;">RPE rot </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.7.7.7.1" style="font-size:80%;">ATE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.8.8.8.1" style="font-size:80%;">RPE trans </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m1.1b"><ci id="S4.T2.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.9" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.9.9.1" style="font-size:80%;">RPE rot </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.m1.1"><semantics id="S4.T2.9.9.9.m1.1a"><mo id="S4.T2.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.m1.1b"><ci id="S4.T2.9.9.9.m1.1.1.cmml" xref="S4.T2.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.11.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T2.9.11.2.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text ltx_font_italic" id="S4.T2.9.11.2.1.1" style="font-size:80%;">Optimization-based Methods</span><span class="ltx_text" id="S4.T2.9.11.2.1.2" style="font-size:80%;"></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.12.3.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.12.3.1.1" style="font-size:80%;">Particle-SfM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.12.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T2.9.12.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.12.3.2.1" style="font-size:80%;">0.129</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.3.3.1" style="font-size:80%;">0.031</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.12.3.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.3.4.1" style="font-size:80%;">0.535</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.12.3.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.8.1" style="font-size:80%;">0.136</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.9.1" style="font-size:80%;">0.023</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.12.3.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.12.3.10.1" style="font-size:80%;">0.836</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.13.4.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.13.4.1.1" style="font-size:80%;">Robust-CVD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.13.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T2.9.13.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.2.1" style="font-size:80%;">0.360</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.3.1" style="font-size:80%;">0.154</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.13.4.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.4.1" style="font-size:80%;">3.443</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.5.1" style="font-size:80%;">0.153</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.6.1" style="font-size:80%;">0.026</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.13.4.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.7.1" style="font-size:80%;">3.528</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.8.1" style="font-size:80%;">0.227</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.9.1" style="font-size:80%;">0.064</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.13.4.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.13.4.10.1" style="font-size:80%;">7.374</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.14.5.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.14.5.1.1" style="font-size:80%;">CasualSAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.14.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S4.T2.9.14.5.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.14.5.2.1" style="font-size:80%;">0.141</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.14.5.3.1" style="font-size:80%;">0.035</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.14.5.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.14.5.4.1" style="font-size:80%;">0.615</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.14.5.5.1" style="font-size:80%;">0.071</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.14.5.6.1" style="font-size:80%;">0.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.14.5.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.14.5.7.1" style="font-size:80%;">1.712</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.14.5.8.1" style="font-size:80%;">0.158</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.14.5.9.1" style="font-size:80%;">0.034</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.14.5.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.14.5.10.1" style="font-size:80%;">1.618</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.15.6.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.15.6.1.1" style="font-size:80%;">DUSt3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.15.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S4.T2.9.15.6.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.2.1" style="font-size:80%;">0.417</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.3.1" style="font-size:80%;">0.250</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.15.6.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.4.1" style="font-size:80%;">5.796</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.5.1" style="font-size:80%;">0.083</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.6.1" style="font-size:80%;">0.017</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.15.6.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.7.1" style="font-size:80%;">3.567</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.8.1" style="font-size:80%;">0.081</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.9.1" style="font-size:80%;">0.028</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.15.6.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.15.6.10.1" style="font-size:80%;">0.784</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.16.7.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.16.7.1.1" style="font-size:80%;">MASt3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.16.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T2.9.16.7.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.16.7.2.1" style="font-size:80%;">0.185</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.16.7.3.1" style="font-size:80%;">0.060</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.16.7.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.16.7.4.1" style="font-size:80%;">1.496</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.16.7.5.1" style="font-size:80%;">0.038</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.16.7.6.1" style="font-size:80%;">0.012</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.16.7.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.16.7.7.1" style="font-size:80%;">0.448</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.16.7.8.1" style="font-size:80%;">0.078</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.16.7.9.1" style="font-size:80%;">0.020</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.16.7.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.16.7.10.1" style="font-size:80%;">0.475</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.17.8.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.17.8.1.1" style="font-size:80%;">MonST3R-GA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.17.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a><span class="ltx_text" id="S4.T2.9.17.8.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.17.8.2.1" style="font-size:80%;">0.111</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.17.8.3.1" style="font-size:80%;">0.044</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.17.8.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.17.8.4.1" style="font-size:80%;">0.896</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.17.8.5.1" style="font-size:80%;">0.098</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.17.8.6.1" style="font-size:80%;">0.019</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.17.8.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.17.8.7.1" style="font-size:80%;">0.935</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.17.8.8.1" style="font-size:80%;">0.077</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.17.8.9.1" style="font-size:80%;">0.018</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.17.8.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.17.8.10.1" style="font-size:80%;">0.529</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.18.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T2.9.18.9.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text ltx_font_italic" id="S4.T2.9.18.9.1.1" style="font-size:80%;">Feed-forward Methods</span><span class="ltx_text" id="S4.T2.9.18.9.1.2" style="font-size:80%;"></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.19.10.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.19.10.1.1" style="font-size:80%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.19.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S4.T2.9.19.10.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.2.1" style="font-size:80%;">0.290</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.3.1" style="font-size:80%;">0.132</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.19.10.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.4.1" style="font-size:80%;">7.869</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.5.1" style="font-size:80%;">0.140</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.6.1" style="font-size:80%;">0.106</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.19.10.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.7.1" style="font-size:80%;">3.286</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.8.1" style="font-size:80%;">0.246</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.9.1" style="font-size:80%;">0.108</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.19.10.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.19.10.10.1" style="font-size:80%;">8.210</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.20.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.20.11.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.20.11.1.1" style="font-size:80%;">Spann3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.20.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.T2.9.20.11.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.20.11.2.1" style="font-size:80%;">0.329</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.20.11.3.1" style="font-size:80%;">0.110</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.20.11.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.20.11.4.1" style="font-size:80%;">4.471</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.20.11.5.1" style="font-size:80%;">0.056</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.20.11.6.1" style="font-size:80%;">0.021</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.20.11.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.20.11.7.1" style="font-size:80%;">0.591</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.20.11.8.1" style="font-size:80%;">0.096</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.20.11.9.1" style="font-size:80%;">0.023</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.20.11.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.20.11.10.1" style="font-size:80%;">0.661</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.21.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.21.12.1" style="padding:-0.2pt 8.1pt;">
<span class="ltx_text" id="S4.T2.9.21.12.1.1" style="font-size:80%;">CUT3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.9.21.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18945v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S4.T2.9.21.12.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.21.12.2.1" style="font-size:80%;">0.213</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.21.12.3.1" style="font-size:80%;">0.066</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.21.12.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.21.12.4.1" style="font-size:80%;">0.621</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.21.12.5.1" style="font-size:80%;">0.046</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.21.12.6.1" style="font-size:80%;">0.015</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.21.12.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.21.12.7.1" style="font-size:80%;">0.473</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.21.12.8.1" style="font-size:80%;">0.099</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.21.12.9.1" style="font-size:80%;">0.022</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.21.12.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.21.12.10.1" style="font-size:80%;">0.600</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.22.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.9.22.13.1" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.9.22.13.1.1" style="font-size:80%;">Aether<span class="ltx_text ltx_font_upright" id="S4.T2.9.22.13.1.1.1"> (Ours)</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.2" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.22.13.2.1" style="font-size:80%;">0.189</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.3" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.22.13.3.1" style="font-size:80%;">0.054</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.9.22.13.4" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.9.22.13.4.1" style="font-size:80%;">0.694</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.5" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.22.13.5.1" style="font-size:80%;">0.092</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.6" style="padding:-0.2pt 8.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.22.13.6.1" style="font-size:80%;">0.012</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.9.22.13.7" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.22.13.7.1" style="font-size:80%;">1.106</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.8" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.22.13.8.1" style="font-size:80%;">0.176</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.9" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.22.13.9.1" style="font-size:80%;">0.028</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.22.13.10" style="padding:-0.2pt 8.1pt;"><span class="ltx_text" id="S4.T2.9.22.13.10.1" style="font-size:80%;">1.204</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of camera pose estimation methods across three datasets: Sintel, TUM-dynamics, and ScanNet.  The datasets vary in terms of scene dynamics and complexity, providing a comprehensive assessment.  For each dataset, the table displays several key metrics including Absolute Translation Error (ATE), which measures the overall accuracy of camera position estimation; and Relative Pose Errors (RPE), both translational (RPE trans) and rotational (RPE rot), reflecting the consistency of pose estimation over time.  The results allow for a comparison of different methods' performance in different scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation on Camera Pose Estimation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.8.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.8.1.1.1" style="padding:-0.2pt 2.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.2" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.2.1" style="font-size:80%;">subject consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.3.1" style="font-size:80%;">b.g. consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.4.1" style="font-size:80%;">motion smoothness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.5" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.5.1" style="font-size:80%;">dynamic degree</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.6" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.6.1" style="font-size:80%;">aesthetic quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.8.1.1.7" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.7.1" style="font-size:80%;">imaging quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.1.1.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.1.1.8.1" style="font-size:80%;">weighted average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.8.2.2.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.1.1" style="font-size:80%;">CogVideoX</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.2" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.2.1" style="font-size:80%;">89.36/84.61/87.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.3.1" style="font-size:80%;">92.72/91.43/92.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.4.1" style="font-size:80%;">98.24/96.93/97.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.5" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.5.1" style="font-size:80%;">88.75/95.00/90.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.6" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.2.2.6.1" style="font-size:80%;">54.49</span><span class="ltx_text" id="S4.T3.8.2.2.6.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.2.2.6.3" style="font-size:80%;">53.58</span><span class="ltx_text" id="S4.T3.8.2.2.6.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.2.2.6.5" style="font-size:80%;">54.18</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.2.2.7" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.7.1" style="font-size:80%;">55.38/52.29/54.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.2.2.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.2.2.8.1" style="font-size:80%;">79.01/77.52/78.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.8.3.3.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.8.3.3.1.1" style="font-size:80%;">Aether</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.2" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.2.1" style="font-size:80%;">91.50</span><span class="ltx_text" id="S4.T3.8.3.3.2.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.2.3" style="font-size:80%;">87.55</span><span class="ltx_text" id="S4.T3.8.3.3.2.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.2.5" style="font-size:80%;">90.18</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.3" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.3.1" style="font-size:80%;">94.29</span><span class="ltx_text" id="S4.T3.8.3.3.3.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.3.3" style="font-size:80%;">93.62</span><span class="ltx_text" id="S4.T3.8.3.3.3.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.3.5" style="font-size:80%;">94.07</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.4" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.4.1" style="font-size:80%;">98.54</span><span class="ltx_text" id="S4.T3.8.3.3.4.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.4.3" style="font-size:80%;">98.19</span><span class="ltx_text" id="S4.T3.8.3.3.4.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.4.5" style="font-size:80%;">98.42</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.5" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.5.1" style="font-size:80%;">96.25</span><span class="ltx_text" id="S4.T3.8.3.3.5.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.5.3" style="font-size:80%;">100.00</span><span class="ltx_text" id="S4.T3.8.3.3.5.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.5.5" style="font-size:80%;">97.50</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.6" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T3.8.3.3.6.1" style="font-size:80%;">54.36/52.58/53.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.8.3.3.7" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.7.1" style="font-size:80%;">55.08</span><span class="ltx_text" id="S4.T3.8.3.3.7.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.7.3" style="font-size:80%;">54.88</span><span class="ltx_text" id="S4.T3.8.3.3.7.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.7.5" style="font-size:80%;">55.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.3.3.8" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.8.1" style="font-size:80%;">80.34</span><span class="ltx_text" id="S4.T3.8.3.3.8.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.8.3" style="font-size:80%;">79.42</span><span class="ltx_text" id="S4.T3.8.3.3.8.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T3.8.3.3.8.5" style="font-size:80%;">80.04</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of video prediction performance between two models, CogVideoX and Aether, evaluated using VBench metrics.  The comparison considers three scenarios: in-domain, out-domain, and overall performance, reflecting the models' ability to generalize to unseen data.  VBench assesses multiple aspects of video quality, including subject consistency, background consistency, motion smoothness, dynamic degree, aesthetic quality, and imaging quality. The best performance for each metric in each scenario is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: VBench [30] Metrics of Video Prediction without Action Conditions. Comparison between CogVideoX and Aether (Ours) on in-domain/out-domain/overall performance on the validation set. For each group, the better performance is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.8.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.8.1.1.1" style="padding:-0.2pt 2.3pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.2" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.2.1" style="font-size:80%;">subject consistency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.3.1" style="font-size:80%;">b.g. consistency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.4.1" style="font-size:80%;">motion smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.5" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.5.1" style="font-size:80%;">dynamic degree</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.6" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.6.1" style="font-size:80%;">aesthetic quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.8.1.1.7" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.7.1" style="font-size:80%;">imaging quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.1.1.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.1.1.8.1" style="font-size:80%;">weighted average</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.8.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.8.2.1.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.2.1.1.1" style="font-size:80%;">CogVideoX</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.2" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.2.1.2.1" style="font-size:80%;">91.56</span><span class="ltx_text" id="S4.T4.8.2.1.2.2" style="font-size:80%;">/88.23/90.51</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.2.1.3.1" style="font-size:80%;">92.98/92.29/92.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.2.1.4.1" style="font-size:80%;">98.44/97.81/98.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.5" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text" id="S4.T4.8.2.1.5.1" style="font-size:80%;">83.87/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.2.1.5.2" style="font-size:80%;">93.02</span><span class="ltx_text" id="S4.T4.8.2.1.5.3" style="font-size:80%;">/86.76</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.6" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.2.1.6.1" style="font-size:80%;">56.19</span><span class="ltx_text" id="S4.T4.8.2.1.6.2" style="font-size:80%;">/57.43/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.2.1.6.3" style="font-size:80%;">56.58</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.8.2.1.7" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.2.1.7.1" style="font-size:80%;">56.48</span><span class="ltx_text" id="S4.T4.8.2.1.7.2" style="font-size:80%;">/61.60/58.10</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.2.1.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S4.T4.8.2.1.8.1" style="font-size:80%;">79.56/80.70/79.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.8.3.2.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.8.3.2.1.1" style="font-size:80%;">Aether</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.2" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text" id="S4.T4.8.3.2.2.1" style="font-size:80%;">90.73/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.2.2" style="font-size:80%;">93.27</span><span class="ltx_text" id="S4.T4.8.3.2.2.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.2.4" style="font-size:80%;">91.54</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.3" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.3.1" style="font-size:80%;">93.61</span><span class="ltx_text" id="S4.T4.8.3.2.3.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.3.3" style="font-size:80%;">95.03</span><span class="ltx_text" id="S4.T4.8.3.2.3.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.3.5" style="font-size:80%;">94.06</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.4" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.4.1" style="font-size:80%;">98.53</span><span class="ltx_text" id="S4.T4.8.3.2.4.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.4.3" style="font-size:80%;">98.62</span><span class="ltx_text" id="S4.T4.8.3.2.4.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.4.5" style="font-size:80%;">98.56</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.5" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.5.1" style="font-size:80%;">100.00</span><span class="ltx_text" id="S4.T4.8.3.2.5.2" style="font-size:80%;">/83.72/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.5.3" style="font-size:80%;">94.85</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.6" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text" id="S4.T4.8.3.2.6.1" style="font-size:80%;">55.04/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.6.2" style="font-size:80%;">56.50</span><span class="ltx_text" id="S4.T4.8.3.2.6.3" style="font-size:80%;">/55.50</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.8.3.2.7" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text" id="S4.T4.8.3.2.7.1" style="font-size:80%;">53.89/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.7.2" style="font-size:80%;">63.23</span><span class="ltx_text" id="S4.T4.8.3.2.7.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.7.4" style="font-size:80%;">56.84</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.3.2.8" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.8.1" style="font-size:80%;">80.33</span><span class="ltx_text" id="S4.T4.8.3.2.8.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.8.3" style="font-size:80%;">81.55</span><span class="ltx_text" id="S4.T4.8.3.2.8.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S4.T4.8.3.2.8.5" style="font-size:80%;">80.71</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of action-conditioned video prediction performance between the CogVideoX model and the Aether model.  The comparison is conducted across six key metrics from the VBench evaluation protocol: subject consistency, background consistency, motion smoothness, dynamic degree, aesthetic quality, and imaging quality. Results are shown for both in-domain and out-domain validation sets, and an overall average.  The metrics assess various aspects of the generated videos, including the consistency of subjects and background elements, the smoothness and naturalness of motion, the level of dynamic activity, and the overall visual and aesthetic quality.  The table highlights the better performance (CogVideoX or Aether) for each metric in bold font. This allows for a comprehensive evaluation of the two models' performance on this specific video generation task.
> <details>
> <summary>read the caption</summary>
> Table 4: VBench [30] Metrics of Action-Conditioned Video Prediction. Comparison between CogVideoX and Aether (Ours) on in-domain/out-domain/overall performance on the validation set. For each metric group, the better performance is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.4.4.5" style="padding:-0.2pt 16.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.1.1.1.1" style="font-size:80%;">     PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T5.1.1.1.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.2.2" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.2.2.2.1" style="font-size:80%;">     SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T5.2.2.2.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.3.3.3.1" style="font-size:80%;">     MS-SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S5.T5.3.3.3.2" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.4.4.4" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.4.4.1" style="font-size:80%;">     LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S5.T5.4.4.4.2" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.4.5.1.1" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.5.1.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_smallcaps" id="S5.T5.4.5.1.1.2" style="font-size:80%;">Aether</span><span class="ltx_text" id="S5.T5.4.5.1.1.3" style="font-size:80%;">-no-depth</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.5.1.2" style="padding:-0.2pt 16.5pt;"><span class="ltx_text" id="S5.T5.4.5.1.2.1" style="font-size:80%;">     19.13/18.67/18.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.5.1.3" style="padding:-0.2pt 16.5pt;"><span class="ltx_text" id="S5.T5.4.5.1.3.1" style="font-size:80%;">     0.5630/0.4830/0.5353</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.5.1.4" style="padding:-0.2pt 16.5pt;"><span class="ltx_text" id="S5.T5.4.5.1.4.1" style="font-size:80%;">     0.5467/0.5204/0.5376</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.5.1.5" style="padding:-0.2pt 16.5pt;"><span class="ltx_text" id="S5.T5.4.5.1.5.1" style="font-size:80%;">     0.3116/0.2995/0.3074</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T5.4.6.2.1" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.6.2.1.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_smallcaps" id="S5.T5.4.6.2.1.2" style="font-size:80%;">Aether</span><span class="ltx_text" id="S5.T5.4.6.2.1.3" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.6.2.2" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.6.2.2.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.2.2" style="font-size:80%;">19.87</span><span class="ltx_text" id="S5.T5.4.6.2.2.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.2.4" style="font-size:80%;">19.37</span><span class="ltx_text" id="S5.T5.4.6.2.2.5" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.2.6" style="font-size:80%;">19.70</span><span class="ltx_text" id="S5.T5.4.6.2.2.7" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.6.2.3" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.6.2.3.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.3.2" style="font-size:80%;">0.5803</span><span class="ltx_text" id="S5.T5.4.6.2.3.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.3.4" style="font-size:80%;">0.5058</span><span class="ltx_text" id="S5.T5.4.6.2.3.5" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.3.6" style="font-size:80%;">0.5545</span><span class="ltx_text" id="S5.T5.4.6.2.3.7" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.6.2.4" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.6.2.4.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.4.2" style="font-size:80%;">0.5830</span><span class="ltx_text" id="S5.T5.4.6.2.4.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.4.4" style="font-size:80%;">0.5627</span><span class="ltx_text" id="S5.T5.4.6.2.4.5" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.4.6" style="font-size:80%;">0.5760</span><span class="ltx_text" id="S5.T5.4.6.2.4.7" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.6.2.5" style="padding:-0.2pt 16.5pt;">
<span class="ltx_text" id="S5.T5.4.6.2.5.1" style="font-size:80%;">     </span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.5.2" style="font-size:80%;">0.2691</span><span class="ltx_text" id="S5.T5.4.6.2.5.3" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.5.4" style="font-size:80%;">0.2599</span><span class="ltx_text" id="S5.T5.4.6.2.5.5" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T5.4.6.2.5.6" style="font-size:80%;">0.2659</span><span class="ltx_text" id="S5.T5.4.6.2.5.7" style="font-size:80%;"></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two models, Aether and Aether-no-depth, on the task of action-conditioned navigation.  The comparison is broken down by three categories: in-domain performance (data similar to the training data), out-of-domain performance (data different from the training data), and overall performance across both domains. Pixel-wise metrics (PSNR, SSIM, MS-SSIM, and LPIPS) are used to evaluate the quality of the generated navigation videos.  The best performing model in each category is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 5: Pixel-wise Metrics of Action-Conditioned Navigation. Comparison of performance between Aether-no-depth and Aether on in-domain/out-domain/overall performance. For each metric group, the better performance is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.7.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T6.7.1.1.1" style="padding:-0.2pt 2.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.2" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.2.1" style="font-size:80%;">subject consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.3.1" style="font-size:80%;">b.g. consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.4.1" style="font-size:80%;">motion smoothness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.5" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.5.1" style="font-size:80%;">dynamic degree</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.6" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.6.1" style="font-size:80%;">aesthetic quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.7.1.1.7" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.7.1" style="font-size:80%;">imaging quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.7.1.1.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.1.1.8.1" style="font-size:80%;">weighted average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.7.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.7.2.2.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.1.1" style="font-size:80%;">Aether-no-depth</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.2" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.2.1" style="font-size:80%;">88.68/89.61/88.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.3" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.3.1" style="font-size:80%;">93.62/93.92/93.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.4" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.4.1" style="font-size:80%;">98.37/98.31/98.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.5" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.2.2.5.1" style="font-size:80%;">97.06</span><span class="ltx_text" id="S5.T6.7.2.2.5.2" style="font-size:80%;">/91.67/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.2.2.5.3" style="font-size:80%;">96.15</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.6" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.6.1" style="font-size:80%;">54.12/56.26/54.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.7.2.2.7" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.7.1" style="font-size:80%;">51.77/58.46/54.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.2.2.8" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.2.2.8.1" style="font-size:80%;">79.11/80.43/79.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T6.7.3.3.1" style="padding:-0.2pt 2.3pt;"><span class="ltx_text" id="S5.T6.7.3.3.1.1" style="font-size:80%;">Aether (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.2" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.2.1" style="font-size:80%;">89.69</span><span class="ltx_text" id="S5.T6.7.3.3.2.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.2.3" style="font-size:80%;">91.61</span><span class="ltx_text" id="S5.T6.7.3.3.2.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.2.5" style="font-size:80%;">90.36</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.3" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.3.1" style="font-size:80%;">93.88</span><span class="ltx_text" id="S5.T6.7.3.3.3.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.3.3" style="font-size:80%;">94.58</span><span class="ltx_text" id="S5.T6.7.3.3.3.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.3.5" style="font-size:80%;">94.13</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.4" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.4.1" style="font-size:80%;">98.50</span><span class="ltx_text" id="S5.T6.7.3.3.4.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.4.3" style="font-size:80%;">98.40</span><span class="ltx_text" id="S5.T6.7.3.3.4.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.4.5" style="font-size:80%;">98.46</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.5" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.5.1" style="font-size:80%;">97.06</span><span class="ltx_text" id="S5.T6.7.3.3.5.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.5.3" style="font-size:80%;">91.67</span><span class="ltx_text" id="S5.T6.7.3.3.5.4" style="font-size:80%;">/95.19</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.6" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.6.1" style="font-size:80%;">55.83</span><span class="ltx_text" id="S5.T6.7.3.3.6.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.6.3" style="font-size:80%;">56.87</span><span class="ltx_text" id="S5.T6.7.3.3.6.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.6.5" style="font-size:80%;">56.19</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.7.3.3.7" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.7.1" style="font-size:80%;">54.71</span><span class="ltx_text" id="S5.T6.7.3.3.7.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.7.3" style="font-size:80%;">61.13</span><span class="ltx_text" id="S5.T6.7.3.3.7.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.7.5" style="font-size:80%;">56.93</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.7.3.3.8" style="padding:-0.2pt 2.3pt;">
<span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.8.1" style="font-size:80%;">80.21</span><span class="ltx_text" id="S5.T6.7.3.3.8.2" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.8.3" style="font-size:80%;">81.53</span><span class="ltx_text" id="S5.T6.7.3.3.8.4" style="font-size:80%;">/</span><span class="ltx_text ltx_font_bold" id="S5.T6.7.3.3.8.5" style="font-size:80%;">80.67</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of two models, Aether and Aether-no-depth, on the task of action-free visual path planning. The models are evaluated across several metrics, including subject consistency, background consistency, motion smoothness, dynamic degree, aesthetic quality, and imaging quality, both for in-domain and out-of-domain data, as well as overall performance.  The metrics assess the quality of the generated video sequences, focusing on the coherence of the subjects and background, smoothness of motion, level of dynamism, visual appeal, and technical aspects of the image quality. The best performing model for each metric is highlighted in bold, enabling easy identification of superior performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Quantitative Results of Action-Free Visual Path Planning. Comparison of performance between Aether and Aether-no-depth on in-domain/out-domain/overall performance. For each metric group, the better performance is highlighted in bold.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18945/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18945/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}