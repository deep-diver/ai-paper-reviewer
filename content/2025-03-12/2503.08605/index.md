---
title: "Tuning-Free Multi-Event Long Video Generation via Synchronized Coupled Sampling"
summary: "SynCoS: Synchronized sampling generates high-quality & coherent long videos from text, without extra training!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 KAIST",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08605 {{< /keyword >}}
{{< keyword icon="writer" >}} Subin Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08605" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08605" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08605/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-video (T2V) diffusion models can generate high-quality short videos, but producing real-world long videos remains a challenge due to limited data and high costs. Existing tuning-free methods use multiple prompts for dynamic content changes, but struggle with content drift and semantic coherence. Thus, the paper aims to solve the issues of maintaining a global structure and addressing error accumulation, which existing methods suffer from.



To address these issues, the paper introduces Synchronized Coupled Sampling (**SynCoS**), a tuning-free inference framework that synchronizes denoising paths across the entire video. SynCoS combines reverse and optimization-based sampling to ensure seamless local transitions and global coherence. Key innovations include a grounded timestep, fixed baseline noise, and structured prompts. This approach leads to smoother transitions, superior long-range coherence, and improved performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SynCoS, a new inference framework for multi-event long video generation, extends T2V diffusion models without additional training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Synchronization of complementary sampling methods ensures smooth local transitions and global coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Structured prompts improve the coherence of dynamic, semantically consistent multi-event generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **SynCoS**, a novel tuning-free framework, that enhances the quality of generated videos. This is particularly valuable as it offers a practical solution for overcoming the constraints of existing T2V models. The work contributes to enhanced content generation and consistency with less manual tuning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08605/x3.png)

> 🔼 This figure showcases examples of long-form video generation (approximately 21 seconds at 24 frames per second) produced using the SynCoS model.  Each video demonstrates multiple events unfolding within a single, coherent narrative.  SynCoS is highlighted for its ability to generate high-quality, temporally consistent videos with seamless transitions between events, maintaining consistent visual style and semantic meaning throughout the entire sequence. The frame index is shown on each frame.
> <details>
> <summary>read the caption</summary>
> Figure 1: Multi-event long video generation results using our tuning-free inference framework, SynCoS. Each example is around 21 seconds of video at 24 fps (4×\times× longer than the base model ). Frame indices are displayed in each frame. SynCoS generates high-quality, long videos with multi-event dynamics while achieving both seamless transitions between frames and long-term semantic consistency throughout.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.9.9.9">
<tr class="ltx_tr" id="S4.SS2.9.9.9.10">
<td class="ltx_td ltx_border_tt" id="S4.SS2.9.9.9.10.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.SS2.9.9.9.10.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.SS2.9.9.9.10.3">Temporal Quality</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.SS2.9.9.9.10.4">Frame-wise Quality</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.SS2.9.9.9.10.5">Semantics</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.11">
<td class="ltx_td" id="S4.SS2.9.9.9.11.1"></td>
<td class="ltx_td" id="S4.SS2.9.9.9.11.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.3">Subject</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.4">Background</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.5">Motion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.6">Dynamic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.7">Num</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.8">Aesthetic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.9">Imaging</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.10">Glb Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.11.11">Loc Prompt</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.9">
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.9.10">Backbone</td>
<td class="ltx_td ltx_align_left" id="S4.SS2.9.9.9.9.11">Method</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.1.1.1.1.1">Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.1.1.1.1.1.m1.1"><semantics id="S4.SS2.1.1.1.1.1.m1.1a"><mo id="S4.SS2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.SS2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.1.1.1.1.1.m1.1b"><ci id="S4.SS2.1.1.1.1.1.m1.1.1.cmml" xref="S4.SS2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.2.2.2.2.2">Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.2.2.2.2.2.m1.1"><semantics id="S4.SS2.2.2.2.2.2.m1.1a"><mo id="S4.SS2.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.SS2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.2.2.2.2.2.m1.1b"><ci id="S4.SS2.2.2.2.2.2.m1.1.1.cmml" xref="S4.SS2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.3.3">Smoothness <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.3.3.3.3.3.m1.1"><semantics id="S4.SS2.3.3.3.3.3.m1.1a"><mo id="S4.SS2.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.SS2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.3.3.3.3.3.m1.1b"><ci id="S4.SS2.3.3.3.3.3.m1.1.1.cmml" xref="S4.SS2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.4.4.4.4.4">Degree <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.4.4.4.4.4.m1.1"><semantics id="S4.SS2.4.4.4.4.4.m1.1a"><mo id="S4.SS2.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.SS2.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.4.4.4.4.4.m1.1b"><ci id="S4.SS2.4.4.4.4.4.m1.1.1.cmml" xref="S4.SS2.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.5.5.5.5.5">Scenes <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.SS2.5.5.5.5.5.m1.1"><semantics id="S4.SS2.5.5.5.5.5.m1.1a"><mo id="S4.SS2.5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.SS2.5.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.5.5.5.5.5.m1.1b"><ci id="S4.SS2.5.5.5.5.5.m1.1.1.cmml" xref="S4.SS2.5.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.5.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.5.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.6.6.6.6.6">Quality <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.6.6.6.6.6.m1.1"><semantics id="S4.SS2.6.6.6.6.6.m1.1a"><mo id="S4.SS2.6.6.6.6.6.m1.1.1" stretchy="false" xref="S4.SS2.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.6.6.6.6.6.m1.1b"><ci id="S4.SS2.6.6.6.6.6.m1.1.1.cmml" xref="S4.SS2.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.7.7.7.7.7">Quality <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.7.7.7.7.7.m1.1"><semantics id="S4.SS2.7.7.7.7.7.m1.1a"><mo id="S4.SS2.7.7.7.7.7.m1.1.1" stretchy="false" xref="S4.SS2.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.7.7.7.7.7.m1.1b"><ci id="S4.SS2.7.7.7.7.7.m1.1.1.cmml" xref="S4.SS2.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.8.8.8.8.8">Fidelity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.8.8.8.8.8.m1.1"><semantics id="S4.SS2.8.8.8.8.8.m1.1a"><mo id="S4.SS2.8.8.8.8.8.m1.1.1" stretchy="false" xref="S4.SS2.8.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.8.8.8.8.8.m1.1b"><ci id="S4.SS2.8.8.8.8.8.m1.1.1.cmml" xref="S4.SS2.8.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.8.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.8.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.9.9">Fidelity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.9.9.9.9.9.m1.1"><semantics id="S4.SS2.9.9.9.9.9.m1.1a"><mo id="S4.SS2.9.9.9.9.9.m1.1.1" stretchy="false" xref="S4.SS2.9.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.9.9.9.9.9.m1.1b"><ci id="S4.SS2.9.9.9.9.9.m1.1.1.cmml" xref="S4.SS2.9.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.9.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.9.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.1" rowspan="3"><span class="ltx_text" id="S4.SS2.9.9.9.12.1.1">CogVideoX <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.9.9.9.12.2">Gen-L-Video <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.3">81.34%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.4">89.46%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.5">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.12.5.1">98.32</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.6">50.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.7">2.292</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.8">60.09%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.9">58.52%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.10">0.324</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.12.11">0.351</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.13">
<td class="ltx_td ltx_align_left" id="S4.SS2.9.9.9.13.1">FIFO-Diffusion <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.2">83.54%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.3">90.72%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.4">98.04%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.5">70.83%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.6">1.938</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.7">59.59%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.8">63.18%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.9">0.323</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.13.10">0.327</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.9.9.9.14.1"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.1.1">SynCoS (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.2">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.2.1">88.92</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.3">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.3.1">94.57</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.4">98.21%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.5">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.5.1">85.42</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.6"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.6.1">1.208</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.7">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.7.1">63.37</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.8">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.8.1">67.43</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.9"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.9.1">0.341</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.14.10"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.14.10.1">0.354</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.15.1" rowspan="3"><span class="ltx_text" id="S4.SS2.9.9.9.15.1.1">Open-Sora Plan <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.9.9.9.15.2">Gen-L-Video <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.3">85.15%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.4">92.63%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.5">98.93%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.6">43.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.7">2.458</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.8">61.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.9">57.19%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.10">0.319</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.9.9.9.15.11">0.337</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.16">
<td class="ltx_td ltx_align_left" id="S4.SS2.9.9.9.16.1">FIFO-Diffusion <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.2">89.14%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.3">94.34%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.4">98.19%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.5">27.08%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.6"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.16.6.1">1.125</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.7">60.26%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.8">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.16.8.1">61.23</span>%</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.9">0.327</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.9.9.9.16.10">0.331</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.9.9.9.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.1"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.1.1">SynCoS (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.2">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.2.1">90.19</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.3">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.3.1">94.78</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.4">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.4.1">99.06</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.5">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.5.1">58.33</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.6">1.646</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.7">
<span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.7.1">63.79</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.8">60.19%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.9"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.9.1">0.328</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.SS2.9.9.9.17.10"><span class="ltx_text ltx_font_bold" id="S4.SS2.9.9.9.17.10.1">0.345</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the SynCoS model against several baseline models for generating multi-event long videos.  The metrics used evaluate both temporal consistency (how well the video maintains a coherent narrative over time) and per-frame quality (how good each individual frame looks).  The metrics assessing temporal consistency include subject and background consistency, motion smoothness, and dynamic degree.  Per-frame quality is measured by the aesthetic quality, image quality, and semantic consistency of each frame.  Prompt fidelity, measured by how well the generated video matches the given prompts, is also assessed.  The results show that SynCoS consistently outperforms the baselines across all these metrics, indicating its superiority in generating high-quality, temporally coherent long videos.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparison. Experimental results of SynCoS with baselines on multi-event long video generations. Bold indicates the best results. SynCoS consistently outperforms baselines across temporal consistency, per-frame quality, and prompt fidelity.
> </details>





### In-depth insights


#### SynCoS Overview
SynCoS, or Synchronized Coupled Sampling, presents a tuning-free inference framework for multi-event long video generation. **It tackles the challenge of maintaining both local smoothness and global coherence** in extended video sequences by synchronizing denoising paths across the entire video. The process has three stages: **DDIM-based temporal co-denoising**, which ensures smooth transitions between adjacent frames; **refinement via CSD-based optimization**, which enforces long-range consistency; and **reversion to the previous timestep**.  SynCoS mitigates content and style drift while preserving semantic consistency. **The synchronization mechanism relies on a grounded timestep and a fixed baseline noise** to align denoising trajectories. This approach, coupled with a structured prompt, allows SynCoS to generate temporally consistent and high-fidelity videos without additional training.

#### Multi-Event Coherence
Multi-event coherence in video generation signifies maintaining semantic consistency across extended durations with evolving dynamics. Challenges arise from content drift and ensuring seamless transitions between diverse events. Existing methods often prioritize local smoothness, sacrificing long-range consistency. **Synchronizing denoising paths** emerges as a crucial approach to tackle this issue, aligning information across frames. **Coupling reverse and optimization-based sampling** allows for both smooth local transitions and global coherence. Key to this approach is **grounded timesteps and fixed baseline noise**, which ensures fully coupled sampling, leading to improved video quality. Effectively handling evolving content while retaining a global narrative is vital for achieving realistic and coherent long videos.

#### Grounded Timesteps
The paper introduces a novel approach called "Grounded Timesteps", which addresses the critical issue of timestep inconsistency across different stages of the video generation process. When applying diffusion models, the **structure needs to be kept**. The timestep is the guide, but when stages operate on different temporal references, the generative trajectories become misaligned. **SynCoS** anchors the second-stage timestep to the first-stage sampling schedule. Since it uses the DDIM timesteps, the timestep progresses from t=1000 to t=0, following designated sampling steps. By this, it ensures that all stages operate within a **unified temporal reference.** It can establish a coherent structure and later focus on finer details throughout denoising. 

#### Structured Prompts
The research paper employs **structured prompts** to enhance the coherence and controllability of generated long videos. These prompts consist of a **global description** to maintain overall consistency and **local specifications** to introduce variations in each chunk. This approach aims to balance the desire for fine-grained control of content dynamics in specific segments with the need to preserve semantic coherence and stylistic uniformity across longer sequences. **Structured prompting**, as a technique, offers a way to guide the generation process more effectively, reducing inconsistencies and improving the overall quality and plausibility of the synthesized video content, by mitigating issues such as object drift and semantic incoherence, commonly seen in long video synthesis. The use of LLMs to assist with prompt construction indicates an attempt to automate and streamline the creation of effective prompts.

#### Architecture Agnostic
The term "architecture-agnostic" in the context of video generation models emphasizes the **flexibility and adaptability of a method across different underlying neural network structures**. Unlike methods tightly coupled to specific architectures like U-Nets or Diffusion Transformers, an architecture-agnostic approach can be implemented on various models, ensuring broader applicability and easier integration with future architectural advancements. This is valuable because it allows the method to **benefit from improvements in the base models without requiring retraining or significant modifications**. The SynCoS method uses this framework by leveraging certain modules. For example, SynCoS is compatible with any T2V diffusion model, supporting various diffusion objectives (v-prediction, e-prediction). In addition, unlike prior works restricted to U-Net or DiT, SynCoS remains flexible across architectures. This allows improvements in temporal consistency and video quality across diverse diffusion backbones. **This adaptability can be particularly advantageous in the rapidly evolving field of AI**, where new architectures and training paradigms frequently emerge. Therefore, architecture-agnostic methods are more likely to remain relevant and effective over time.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08605/x4.png)

> 🔼 Figure 2 presents a qualitative comparison of SynCoS with other methods on the CogVideoX-2B model.  The generated videos are five times longer (30 seconds) than those produced by the base model.  The comparison highlights SynCoS's ability to maintain consistent content and style throughout the video, unlike other methods that experience overlapping artifacts or style drift.  SynCoS also faithfully follows each frame's designated prompt and creates seamless transitions between frames.
> <details>
> <summary>read the caption</summary>
> Figure 2: Qualitative comparisons on CogVideoX-2B [55]. All examples are 5 times longer in duration compared to the underlying base model, generating a 30-second video. Unlike Gen-L-Video [50] and FIFO-Diffusion [21], which often struggle with overlapping artifacts and style drift, our method, SynCoS, ensures consistency in both content and style throughout the entire video. Additionally, SynCoS generates long videos where each frame faithfully follows its designated prompt while ensuring seamless transitions between frames.
> </details>



![](https://arxiv.org/html/2503.08605/x5.png)

> 🔼 This figure visualizes the feature trajectories of video frames generated by different sampling methods (Gen-L-Video, CSD, and SynCoS) using t-SNE.  Each point represents a frame's CLIP features at a specific timestep during the denoising process.  Color intensity indicates the timestep, with faded colors representing earlier timesteps (near the beginning of the denoising process, t≈1000) and vivid colors representing later timesteps (near the end of the process, t≈0).  The visualization helps to show how the feature trajectories evolve over time and how the different sampling methods affect the consistency and coherence of the generated video.  Specifically, it demonstrates the divergence of Gen-L-Video's trajectories, the collapse of CSD's trajectories, and the consistent and coherent trajectories of SynCoS.
> <details>
> <summary>read the caption</summary>
> Figure 3: t-SNE visualization of CLIP [37] features for the predicted video frames 𝐱^0|tsubscript^𝐱conditional0𝑡\hat{\mathbf{x}}_{0|t}over^ start_ARG bold_x end_ARG start_POSTSUBSCRIPT 0 | italic_t end_POSTSUBSCRIPT, at each timestep using different samplings. Faded colors indicate earlier timesteps (t≈1000𝑡1000t\approx 1000italic_t ≈ 1000), while vivid colors indicate later, small timesteps (t≈0𝑡0t\approx 0italic_t ≈ 0), illustrating feature trajectory evolution over time (top to bottom).
> </details>



![](https://arxiv.org/html/2503.08605/x7.png)

> 🔼 Figure 4 presents a qualitative comparison of three different long video generation sampling methods: Gen-L-Video, CSD, and the proposed SynCoS method.  Gen-L-Video struggles to maintain global consistency in the video, resulting in jarring transitions and sudden shifts in appearance, such as a man unexpectedly transforming into a woman.  CSD, while preserving the general appearance of the subject, exhibits a failure to properly adhere to the detailed instructions (local prompts) provided, leading to low quality video frames plagued with significant noise and artifacts. In contrast, SynCoS demonstrates a superior balance between maintaining overall consistency and accuracy of the local prompts.  It produces high-quality, coherent video with excellent fidelity to the intended content and smooth transitions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison of sampling methods motivating SynCoS. Gen-L-Video [50] fails to maintain global coherence, resulting in abrupt appearance changes (e.g., a man morphing into a woman). CSD [22] retains a similar appearance of a man but shows poor adherence to local prompts, suffering from low frame quality with severe noise-like artifacts. In contrast, our method achieves a balance, ensuring high-quality generation, strong prompt fidelity, and temporal coherence.
> </details>



![](https://arxiv.org/html/2503.08605/x8.png)

> 🔼 This figure illustrates the SynCoS method, a three-stage iterative process for generating long, multi-event videos.  Stage 1 uses DDIM for local temporal coherence by dividing the video into chunks, denoising each, and fusing them. Stage 2 refines the result globally, ensuring consistency across all video chunks (both nearby and distant ones).  Stage 3 reverts the refined result to the previous timestep, improving accuracy.  The combination of these three stages produces smooth transitions, maintains long-term coherence, and achieves high fidelity to the prompts, enabling high-quality, multi-event long videos.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Overall illustration of our proposed method, Synchronized Coupled Sampling (SynCoS), a tuning-free inference framework for multi-event long video generation. SynCoS performs one-step denoising in three iterative stages, repeated from t=1000𝑡1000t=1000italic_t = 1000 to t=0𝑡0t=0italic_t = 0. In the first stage, SynCoS performs temporal co-denoising with DDIM, dividing the long video into overlapping short chunks, denoising each chunk, and applying fusion for local smoothness. In the second stage, SynCoS refines the locally fused output, enforcing global coherence by synchronizing information across both short- and long-distance chunks. Finally, in the third stage, it reverts the locally and globally refined output to the previous timestep. Through these three synchronized stages of local and global denoising, SynCoS ensures smooth transitions, global semantic coherence, and high prompt fidelity, enabling multi-event long video generation.
> </details>



![](https://arxiv.org/html/2503.08605/x11.png)

> 🔼 Figure 6 presents a qualitative comparison of long video generation results using three different methods: Gen-L-Video, FIFO-Diffusion, and the authors' proposed SynCoS approach.  All videos are four times longer than those generated by the base Open-Sora Plan model, resulting in 20-second videos. The figure visually demonstrates that Gen-L-Video suffers from abrupt and jarring appearance changes within the video, lacking temporal coherence. FIFO-Diffusion, while maintaining some consistency, introduces noticeable noise-like artifacts, degrading the visual quality.  In contrast, SynCoS produces high-quality videos with smooth transitions and consistent visual style that accurately reflect the input prompt from beginning to end.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparisons on Open-Sora Plan [23]. All examples are 4 times longer in duration compared to the underlying base model, generating a 20-second video. Gen-L-Video [50] suffers from abrupt appearance changes, while FIFO-Diffusion [21] introduces noticeable noise-like artifacts. In contrast, our proposed method, SynCoS, generates high-quality, temporally coherent videos that faithfully follow the prompt throughout the sequence.
> </details>



![](https://arxiv.org/html/2503.08605/x12.png)

> 🔼 Figure 7 presents an ablation study on the SynCoS model, demonstrating the importance of two key components: grounded timesteps and fixed baseline noise.  The top row shows results where the grounded timestep is absent. This leads to inconsistencies in the generated video's structure, such as a volcano that inconsistently changes between having one and two peaks across frames. This demonstrates that the grounded timestep is crucial for maintaining a consistent temporal reference throughout the video generation process.  The bottom row shows results with the fixed baseline noise removed. This results in a failure to adhere to local prompts. For instance, the video may not show the expected volcanic eruption or any smoke, showing that the fixed baseline noise is essential for ensuring the model faithfully follows the prompt's specifications across all stages of the video generation process.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative ablation study. Without a grounded timestep, structural inconsistencies arise (e.g., the volcano alternates between one and two peaks). Without a fixed baseline noise, it fails to follow local prompts faithfully (e.g., missing eruptions or absent smoke).
> </details>



![](https://arxiv.org/html/2503.08605/x19.png)

> 🔼 Figure 8 illustrates the process of generating structured prompts for long video generation.  A scenario (a long description of an event) is provided by the user, along with the desired number of short prompts. The figure details the steps involved in converting this long scenario into multiple short, action-focused prompts and a single global prompt. The global prompt encompasses the overall scene description and shared properties, while the local prompts each focus on a specific action, creating a structured input for the video generation model to improve coherence and consistency.
> <details>
> <summary>read the caption</summary>
> Figure 8: Instruction for generating structured prompt. This instruction follows the guidelines to create individual local prompts and a shared global prompt based on a scenario and the number of prompts the user gives.
> </details>



![](https://arxiv.org/html/2503.08605/x22.png)

> 🔼 Figure 9 shows the results of an ablation study on the three stages of the SynCoS model.  The ablation study systematically removes one stage at a time to understand its contribution to the overall performance. The images in the figure visually demonstrate the impact of removing each stage on the generated video quality. Specifically, removing the first stage (local temporal co-denoising with DDIM) leads to inconsistent transitions; removing the second stage (global temporal co-denoising with CSD) results in a loss of global coherence, causing a blurry and unstable video; and removing the third stage (DDIM-based temporal co-denoising) produces unnatural transitions.  The examples in the second box are all three times longer than videos generated by the base model, which further highlights the crucial role of all three stages in successful long video generation.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Qualitative visualization of the ablation study on the three coupled stages of SynCoS. All examples in the second box are 3 times longer in duration compared to the underlying base model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.F7.5.5.5">
<tr class="ltx_tr" id="S5.F7.5.5.5.6">
<td class="ltx_td ltx_border_tt" id="S5.F7.5.5.5.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.F7.5.5.5.6.2"><span class="ltx_text" id="S5.F7.5.5.5.6.2.1" style="font-size:90%;">Temporal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F7.5.5.5.6.3"><span class="ltx_text" id="S5.F7.5.5.5.6.3.1" style="font-size:90%;">Frame</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F7.5.5.5.6.4"><span class="ltx_text" id="S5.F7.5.5.5.6.4.1" style="font-size:90%;">Semantics</span></td>
</tr>
<tr class="ltx_tr" id="S5.F7.4.4.4.4">
<td class="ltx_td" id="S5.F7.4.4.4.4.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.1.1.1.1.1">
<span class="ltx_text" id="S5.F7.1.1.1.1.1.1" style="font-size:90%;">SC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.F7.1.1.1.1.1.m1.1"><semantics id="S5.F7.1.1.1.1.1.m1.1a"><mo id="S5.F7.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.F7.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.F7.1.1.1.1.1.m1.1b"><ci id="S5.F7.1.1.1.1.1.m1.1.1.cmml" xref="S5.F7.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F7.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.F7.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.2.2.2.2.2">
<span class="ltx_text" id="S5.F7.2.2.2.2.2.1" style="font-size:90%;">BC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.F7.2.2.2.2.2.m1.1"><semantics id="S5.F7.2.2.2.2.2.m1.1a"><mo id="S5.F7.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S5.F7.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.F7.2.2.2.2.2.m1.1b"><ci id="S5.F7.2.2.2.2.2.m1.1.1.cmml" xref="S5.F7.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F7.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.F7.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.3.3.3.3.3">
<span class="ltx_text" id="S5.F7.3.3.3.3.3.1" style="font-size:90%;">AQ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.F7.3.3.3.3.3.m1.1"><semantics id="S5.F7.3.3.3.3.3.m1.1a"><mo id="S5.F7.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S5.F7.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.F7.3.3.3.3.3.m1.1b"><ci id="S5.F7.3.3.3.3.3.m1.1.1.cmml" xref="S5.F7.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F7.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.F7.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.4.4.4.4.4">
<span class="ltx_text" id="S5.F7.4.4.4.4.4.1" style="font-size:90%;">PF </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.F7.4.4.4.4.4.m1.1"><semantics id="S5.F7.4.4.4.4.4.m1.1a"><mo id="S5.F7.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S5.F7.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.F7.4.4.4.4.4.m1.1b"><ci id="S5.F7.4.4.4.4.4.m1.1.1.cmml" xref="S5.F7.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.F7.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.F7.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.F7.5.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F7.5.5.5.7.1"><span class="ltx_text" id="S5.F7.5.5.5.7.1.1" style="font-size:90%;">SynCoS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.7.2"><span class="ltx_text" id="S5.F7.5.5.5.7.2.1" style="font-size:90%;">0.864</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.7.3"><span class="ltx_text" id="S5.F7.5.5.5.7.3.1" style="font-size:90%;">0.927</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.7.4"><span class="ltx_text" id="S5.F7.5.5.5.7.4.1" style="font-size:90%;">0.643</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.7.5"><span class="ltx_text" id="S5.F7.5.5.5.7.5.1" style="font-size:90%;">0.381</span></td>
</tr>
<tr class="ltx_tr" id="S5.F7.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F7.5.5.5.5.1">
<span class="ltx_text" id="S5.F7.5.5.5.5.1.1" style="font-size:90%;">SynCoS w/o </span><math alttext="t_{\text{min}}" class="ltx_Math" display="inline" id="S5.F7.5.5.5.5.1.m1.1"><semantics id="S5.F7.5.5.5.5.1.m1.1a"><msub id="S5.F7.5.5.5.5.1.m1.1.1" xref="S5.F7.5.5.5.5.1.m1.1.1.cmml"><mi id="S5.F7.5.5.5.5.1.m1.1.1.2" mathsize="90%" xref="S5.F7.5.5.5.5.1.m1.1.1.2.cmml">t</mi><mtext id="S5.F7.5.5.5.5.1.m1.1.1.3" mathsize="90%" xref="S5.F7.5.5.5.5.1.m1.1.1.3a.cmml">min</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.F7.5.5.5.5.1.m1.1b"><apply id="S5.F7.5.5.5.5.1.m1.1.1.cmml" xref="S5.F7.5.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.F7.5.5.5.5.1.m1.1.1.1.cmml" xref="S5.F7.5.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.F7.5.5.5.5.1.m1.1.1.2.cmml" xref="S5.F7.5.5.5.5.1.m1.1.1.2">𝑡</ci><ci id="S5.F7.5.5.5.5.1.m1.1.1.3a.cmml" xref="S5.F7.5.5.5.5.1.m1.1.1.3"><mtext id="S5.F7.5.5.5.5.1.m1.1.1.3.cmml" mathsize="63%" xref="S5.F7.5.5.5.5.1.m1.1.1.3">min</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.F7.5.5.5.5.1.m1.1c">t_{\text{min}}</annotation><annotation encoding="application/x-llamapun" id="S5.F7.5.5.5.5.1.m1.1d">italic_t start_POSTSUBSCRIPT min end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.5.2"><span class="ltx_text" id="S5.F7.5.5.5.5.2.1" style="font-size:90%;">0.724</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.5.3"><span class="ltx_text" id="S5.F7.5.5.5.5.3.1" style="font-size:90%;">0.854</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.5.4"><span class="ltx_text" id="S5.F7.5.5.5.5.4.1" style="font-size:90%;">0.632</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F7.5.5.5.5.5"><span class="ltx_text" id="S5.F7.5.5.5.5.5.1" style="font-size:90%;">0.373</span></td>
</tr>
<tr class="ltx_tr" id="S5.F7.5.5.5.8">
<td class="ltx_td ltx_align_left" id="S5.F7.5.5.5.8.1"><span class="ltx_text" id="S5.F7.5.5.5.8.1.1" style="font-size:90%;">SynCoS w/o grounded timestep</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.8.2"><span class="ltx_text" id="S5.F7.5.5.5.8.2.1" style="font-size:90%;">0.803</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.8.3"><span class="ltx_text" id="S5.F7.5.5.5.8.3.1" style="font-size:90%;">0.899</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.8.4"><span class="ltx_text" id="S5.F7.5.5.5.8.4.1" style="font-size:90%;">0.638</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.8.5"><span class="ltx_text" id="S5.F7.5.5.5.8.5.1" style="font-size:90%;">0.364</span></td>
</tr>
<tr class="ltx_tr" id="S5.F7.5.5.5.9">
<td class="ltx_td ltx_align_left" id="S5.F7.5.5.5.9.1"><span class="ltx_text" id="S5.F7.5.5.5.9.1.1" style="font-size:90%;">SynCoS w/o fixed baseline noise</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.9.2"><span class="ltx_text" id="S5.F7.5.5.5.9.2.1" style="font-size:90%;">0.817</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.9.3"><span class="ltx_text" id="S5.F7.5.5.5.9.3.1" style="font-size:90%;">0.904</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.9.4"><span class="ltx_text" id="S5.F7.5.5.5.9.4.1" style="font-size:90%;">0.643</span></td>
<td class="ltx_td ltx_align_center" id="S5.F7.5.5.5.9.5"><span class="ltx_text" id="S5.F7.5.5.5.9.5.1" style="font-size:90%;">0.382</span></td>
</tr>
<tr class="ltx_tr" id="S5.F7.5.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.F7.5.5.5.10.1"><span class="ltx_text" id="S5.F7.5.5.5.10.1.1" style="font-size:90%;">SynCoS w/o structured prompt</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F7.5.5.5.10.2"><span class="ltx_text" id="S5.F7.5.5.5.10.2.1" style="font-size:90%;">0.837</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F7.5.5.5.10.3"><span class="ltx_text" id="S5.F7.5.5.5.10.3.1" style="font-size:90%;">0.903</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F7.5.5.5.10.4"><span class="ltx_text" id="S5.F7.5.5.5.10.4.1" style="font-size:90%;">0.663</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F7.5.5.5.10.5"><span class="ltx_text" id="S5.F7.5.5.5.10.5.1" style="font-size:90%;">0.362</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the ablation study conducted on the SynCoS model.  It shows the impact of removing each of the three coupled stages (temporal co-denoising with DDIM, refinement with CSD, and resuming temporal co-denoising) on the overall performance. The metrics used are Subject Consistency (SC), Background Consistency (BC), Aesthetic Quality (AQ), and Prompt Fidelity (PF).  Higher scores indicate better performance.  The study reveals the contribution of each stage to the model's ability to generate temporally consistent and high-quality multi-event videos.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative ablation study. *Abbreviations: subject consistency (SC), background consistency (BC), aesthetic quality (AQ), and prompt fidelity (PF).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.SS2.9.9.9">
<tr class="ltx_tr" id="A1.SS2.9.9.9.10">
<td class="ltx_td ltx_border_tt" id="A1.SS2.9.9.9.10.1"></td>
<td class="ltx_td ltx_border_tt" id="A1.SS2.9.9.9.10.2"></td>
<td class="ltx_td ltx_border_tt" id="A1.SS2.9.9.9.10.3"></td>
<td class="ltx_td ltx_border_tt" id="A1.SS2.9.9.9.10.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="A1.SS2.9.9.9.10.5"><span class="ltx_text" id="A1.SS2.9.9.9.10.5.1" style="font-size:144%;">Temporal Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.SS2.9.9.9.10.6"><span class="ltx_text" id="A1.SS2.9.9.9.10.6.1" style="font-size:144%;">Frame-wise Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.SS2.9.9.9.10.7"><span class="ltx_text" id="A1.SS2.9.9.9.10.7.1" style="font-size:144%;">Semantics</span></td>
</tr>
<tr class="ltx_tr" id="A1.SS2.9.9.9.11">
<td class="ltx_td" id="A1.SS2.9.9.9.11.1"></td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.SS2.9.9.9.11.2"><span class="ltx_text" id="A1.SS2.9.9.9.11.2.1" style="font-size:144%;">Stage</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.3"><span class="ltx_text" id="A1.SS2.9.9.9.11.3.1" style="font-size:144%;">Subject</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.4"><span class="ltx_text" id="A1.SS2.9.9.9.11.4.1" style="font-size:144%;">Background</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.5"><span class="ltx_text" id="A1.SS2.9.9.9.11.5.1" style="font-size:144%;">Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.6"><span class="ltx_text" id="A1.SS2.9.9.9.11.6.1" style="font-size:144%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.7"><span class="ltx_text" id="A1.SS2.9.9.9.11.7.1" style="font-size:144%;">Num</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.8"><span class="ltx_text" id="A1.SS2.9.9.9.11.8.1" style="font-size:144%;">Aesthetic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.9"><span class="ltx_text" id="A1.SS2.9.9.9.11.9.1" style="font-size:144%;">Imaging</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.10"><span class="ltx_text" id="A1.SS2.9.9.9.11.10.1" style="font-size:144%;">Glb Prompt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.11.11"><span class="ltx_text" id="A1.SS2.9.9.9.11.11.1" style="font-size:144%;">Loc Prompt</span></td>
</tr>
<tr class="ltx_tr" id="A1.SS2.9.9.9.9">
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.9.10"><span class="ltx_text" id="A1.SS2.9.9.9.9.10.1" style="font-size:144%;">Backbone</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.9.11"><span class="ltx_text" id="A1.SS2.9.9.9.9.11.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.9.12"><span class="ltx_text" id="A1.SS2.9.9.9.9.12.1" style="font-size:144%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.9.13"><span class="ltx_text" id="A1.SS2.9.9.9.9.13.1" style="font-size:144%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.1.1.1.1.1">
<span class="ltx_text" id="A1.SS2.1.1.1.1.1.1" style="font-size:144%;">Consistency </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.1.1.1.1.1.m1.1"><semantics id="A1.SS2.1.1.1.1.1.m1.1a"><mo id="A1.SS2.1.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.1.1.1.1.1.m1.1b"><ci id="A1.SS2.1.1.1.1.1.m1.1.1.cmml" xref="A1.SS2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.2.2.2.2.2">
<span class="ltx_text" id="A1.SS2.2.2.2.2.2.1" style="font-size:144%;">Consistency </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.2.2.2.2.2.m1.1"><semantics id="A1.SS2.2.2.2.2.2.m1.1a"><mo id="A1.SS2.2.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.2.2.2.2.2.m1.1b"><ci id="A1.SS2.2.2.2.2.2.m1.1.1.cmml" xref="A1.SS2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.3.3.3.3.3">
<span class="ltx_text" id="A1.SS2.3.3.3.3.3.1" style="font-size:144%;">Smoothness </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.3.3.3.3.3.m1.1"><semantics id="A1.SS2.3.3.3.3.3.m1.1a"><mo id="A1.SS2.3.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.3.3.3.3.3.m1.1b"><ci id="A1.SS2.3.3.3.3.3.m1.1.1.cmml" xref="A1.SS2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.4.4.4.4.4">
<span class="ltx_text" id="A1.SS2.4.4.4.4.4.1" style="font-size:144%;">Degree </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.4.4.4.4.4.m1.1"><semantics id="A1.SS2.4.4.4.4.4.m1.1a"><mo id="A1.SS2.4.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.4.4.4.4.4.m1.1b"><ci id="A1.SS2.4.4.4.4.4.m1.1.1.cmml" xref="A1.SS2.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.5.5.5.5.5">
<span class="ltx_text" id="A1.SS2.5.5.5.5.5.1" style="font-size:144%;">Scenes </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.SS2.5.5.5.5.5.m1.1"><semantics id="A1.SS2.5.5.5.5.5.m1.1a"><mo id="A1.SS2.5.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.5.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.5.5.5.5.5.m1.1b"><ci id="A1.SS2.5.5.5.5.5.m1.1.1.cmml" xref="A1.SS2.5.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.5.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.5.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.6.6.6.6.6">
<span class="ltx_text" id="A1.SS2.6.6.6.6.6.1" style="font-size:144%;">Quality </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.6.6.6.6.6.m1.1"><semantics id="A1.SS2.6.6.6.6.6.m1.1a"><mo id="A1.SS2.6.6.6.6.6.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.6.6.6.6.6.m1.1b"><ci id="A1.SS2.6.6.6.6.6.m1.1.1.cmml" xref="A1.SS2.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.7.7.7.7.7">
<span class="ltx_text" id="A1.SS2.7.7.7.7.7.1" style="font-size:144%;">Quality </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.7.7.7.7.7.m1.1"><semantics id="A1.SS2.7.7.7.7.7.m1.1a"><mo id="A1.SS2.7.7.7.7.7.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.7.7.7.7.7.m1.1b"><ci id="A1.SS2.7.7.7.7.7.m1.1.1.cmml" xref="A1.SS2.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.8.8.8.8.8">
<span class="ltx_text" id="A1.SS2.8.8.8.8.8.1" style="font-size:144%;">Fidelity </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.8.8.8.8.8.m1.1"><semantics id="A1.SS2.8.8.8.8.8.m1.1a"><mo id="A1.SS2.8.8.8.8.8.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.8.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.8.8.8.8.8.m1.1b"><ci id="A1.SS2.8.8.8.8.8.m1.1.1.cmml" xref="A1.SS2.8.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.8.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.8.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.9.9">
<span class="ltx_text" id="A1.SS2.9.9.9.9.9.1" style="font-size:144%;">Fidelity </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.SS2.9.9.9.9.9.m1.1"><semantics id="A1.SS2.9.9.9.9.9.m1.1a"><mo id="A1.SS2.9.9.9.9.9.m1.1.1" mathsize="144%" stretchy="false" xref="A1.SS2.9.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.SS2.9.9.9.9.9.m1.1b"><ci id="A1.SS2.9.9.9.9.9.m1.1.1.cmml" xref="A1.SS2.9.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.SS2.9.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.SS2.9.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.SS2.9.9.9.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.12.1" rowspan="3"><span class="ltx_text" id="A1.SS2.9.9.9.12.1.1" style="font-size:144%;">M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.2"><span class="ltx_text" id="A1.SS2.9.9.9.12.2.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.3"><span class="ltx_text" id="A1.SS2.9.9.9.12.3.1" style="font-size:144%;color:#F03E3E;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.4"><span class="ltx_text" id="A1.SS2.9.9.9.12.4.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.5"><span class="ltx_text" id="A1.SS2.9.9.9.12.5.1" style="font-size:144%;">80.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.6"><span class="ltx_text" id="A1.SS2.9.9.9.12.6.1" style="font-size:144%;">91.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.7">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.12.7.1" style="font-size:144%;">98.55</span><span class="ltx_text" id="A1.SS2.9.9.9.12.7.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.8"><span class="ltx_text" id="A1.SS2.9.9.9.12.8.1" style="font-size:144%;">97.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.9"><span class="ltx_text" id="A1.SS2.9.9.9.12.9.1" style="font-size:144%;">1.229</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.10"><span class="ltx_text" id="A1.SS2.9.9.9.12.10.1" style="font-size:144%;">53.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.11"><span class="ltx_text" id="A1.SS2.9.9.9.12.11.1" style="font-size:144%;">58.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.12"><span class="ltx_text" id="A1.SS2.9.9.9.12.12.1" style="font-size:144%;">0.318</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.SS2.9.9.9.12.13"><span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.12.13.1" style="font-size:144%;">0.348</span></td>
</tr>
<tr class="ltx_tr" id="A1.SS2.9.9.9.13">
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.1"><span class="ltx_text" id="A1.SS2.9.9.9.13.1.1" style="font-size:144%;color:#F03E3E;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.2"><span class="ltx_text" id="A1.SS2.9.9.9.13.2.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.3"><span class="ltx_text" id="A1.SS2.9.9.9.13.3.1" style="font-size:144%;color:#F03E3E;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.4"><span class="ltx_text" id="A1.SS2.9.9.9.13.4.1" style="font-size:144%;">78.88%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.5"><span class="ltx_text" id="A1.SS2.9.9.9.13.5.1" style="font-size:144%;">91.63%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.6"><span class="ltx_text" id="A1.SS2.9.9.9.13.6.1" style="font-size:144%;">97.70%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.7"><span class="ltx_text" id="A1.SS2.9.9.9.13.7.1" style="font-size:144%;">14.58%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.8"><span class="ltx_text" id="A1.SS2.9.9.9.13.8.1" style="font-size:144%;">21.33</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.9"><span class="ltx_text" id="A1.SS2.9.9.9.13.9.1" style="font-size:144%;">45.56%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.10"><span class="ltx_text" id="A1.SS2.9.9.9.13.10.1" style="font-size:144%;">42.27%</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.11"><span class="ltx_text" id="A1.SS2.9.9.9.13.11.1" style="font-size:144%;">0.305</span></td>
<td class="ltx_td ltx_align_center" id="A1.SS2.9.9.9.13.12"><span class="ltx_text" id="A1.SS2.9.9.9.13.12.1" style="font-size:144%;">0.300</span></td>
</tr>
<tr class="ltx_tr" id="A1.SS2.9.9.9.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.1"><span class="ltx_text" id="A1.SS2.9.9.9.14.1.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.2"><span class="ltx_text" id="A1.SS2.9.9.9.14.2.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.3"><span class="ltx_text" id="A1.SS2.9.9.9.14.3.1" style="font-size:144%;color:#37B24D;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.4">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.4.1" style="font-size:144%;">82.70</span><span class="ltx_text" id="A1.SS2.9.9.9.14.4.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.5">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.5.1" style="font-size:144%;">91.85</span><span class="ltx_text" id="A1.SS2.9.9.9.14.5.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.6"><span class="ltx_text" id="A1.SS2.9.9.9.14.6.1" style="font-size:144%;">98.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.7">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.7.1" style="font-size:144%;">100.00</span><span class="ltx_text" id="A1.SS2.9.9.9.14.7.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.8"><span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.8.1" style="font-size:144%;">1.042</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.9">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.9.1" style="font-size:144%;">54.56</span><span class="ltx_text" id="A1.SS2.9.9.9.14.9.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.10">
<span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.10.1" style="font-size:144%;">65.53</span><span class="ltx_text" id="A1.SS2.9.9.9.14.10.2" style="font-size:144%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.11"><span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.11.1" style="font-size:144%;">0.325</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.SS2.9.9.9.14.12"><span class="ltx_text ltx_font_bold" id="A1.SS2.9.9.9.14.12.1" style="font-size:144%;">0.348</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the SynCoS model's three coupled stages. By systematically removing one stage at a time during the one-timestep denoising process, the study demonstrates the individual contribution of each stage to the overall coherence and quality of the generated long videos.  The results highlight the importance of all three stages working together to produce coherent long video generation with multiple events, showcasing the effectiveness of SynCoS's unique approach.
> <details>
> <summary>read the caption</summary>
> Table 3:  Quantitative ablations study of the three coupled stages in SynCoS, omitting each stage during one-timestep denoising, demonstrates the importance of all three stages for coherent long video generation with multiple events.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T4.6.1">
<tr class="ltx_tr" id="A2.T4.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.6.1.1.1">
<span class="ltx_text" id="A2.T4.6.1.1.1.1" style="font-size:144%;">Gen-L-Video </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T4.6.1.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="A2.T4.6.1.1.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.6.1.1.2">
<span class="ltx_text" id="A2.T4.6.1.1.2.1" style="font-size:144%;">FIFO </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T4.6.1.1.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="A2.T4.6.1.1.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.6.1.1.3"><span class="ltx_text" id="A2.T4.6.1.1.3.1" style="font-size:144%;">SynCoS (Ours)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.6.1.2.1"><span class="ltx_text" id="A2.T4.6.1.2.1.1" style="font-size:144%;">21 min.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.6.1.2.2"><span class="ltx_text" id="A2.T4.6.1.2.2.1" style="font-size:144%;">21 min.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.6.1.2.3"><span class="ltx_text" id="A2.T4.6.1.2.3.1" style="font-size:144%;">55 min.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the computation time required to generate long videos using three different methods: Gen-L-Video, FIFO-Diffusion, and SynCoS (the proposed method).  The comparison is based on the CogVideoX-2B model and shows the time taken to generate videos four times longer than those produced by the base model. This allows for assessment of the efficiency of each method in generating extended-length videos.
> <details>
> <summary>read the caption</summary>
> Table 4: Measurements and comparisons of computation time on CogVideoX-2B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T5.4.4">
<tr class="ltx_tr" id="A4.T5.4.4.5">
<td class="ltx_td ltx_border_tt" id="A4.T5.4.4.5.1"></td>
<td class="ltx_td ltx_border_tt" id="A4.T5.4.4.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T5.4.4.5.3"><span class="ltx_text" id="A4.T5.4.4.5.3.1" style="font-size:90%;">Temporal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.4.5.4"><span class="ltx_text" id="A4.T5.4.4.5.4.1" style="font-size:90%;">Frame</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.4.5.5"><span class="ltx_text" id="A4.T5.4.4.5.5.1" style="font-size:90%;">Semantics</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.5"><span class="ltx_text" id="A4.T5.4.4.4.5.1" style="font-size:90%;">Backbone</span></td>
<td class="ltx_td ltx_align_left" id="A4.T5.4.4.4.6"><span class="ltx_text" id="A4.T5.4.4.4.6.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.1.1.1.1">
<span class="ltx_text" id="A4.T5.1.1.1.1.1" style="font-size:90%;">SC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.1.1.1.1.m1.1"><semantics id="A4.T5.1.1.1.1.m1.1a"><mo id="A4.T5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="A4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.1.1.1.1.m1.1b"><ci id="A4.T5.1.1.1.1.m1.1.1.cmml" xref="A4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.2.2">
<span class="ltx_text" id="A4.T5.2.2.2.2.1" style="font-size:90%;">BC </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.2.2.2.2.m1.1"><semantics id="A4.T5.2.2.2.2.m1.1a"><mo id="A4.T5.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="A4.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.2.2.2.2.m1.1b"><ci id="A4.T5.2.2.2.2.m1.1.1.cmml" xref="A4.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.3.3.3.3">
<span class="ltx_text" id="A4.T5.3.3.3.3.1" style="font-size:90%;">AQ </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.3.3.3.3.m1.1"><semantics id="A4.T5.3.3.3.3.m1.1a"><mo id="A4.T5.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="A4.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.3.3.3.3.m1.1b"><ci id="A4.T5.3.3.3.3.m1.1.1.cmml" xref="A4.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.4.4">
<span class="ltx_text" id="A4.T5.4.4.4.4.1" style="font-size:90%;">PF </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.4.4.4.4.m1.1"><semantics id="A4.T5.4.4.4.4.m1.1a"><mo id="A4.T5.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="A4.T5.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.4.4.4.4.m1.1b"><ci id="A4.T5.4.4.4.4.m1.1.1.cmml" xref="A4.T5.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.6.1" rowspan="2"><span class="ltx_text" id="A4.T5.4.4.6.1.1" style="font-size:90%;">VideoCrafter2 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.4.4.6.2">
<span class="ltx_text" id="A4.T5.4.4.6.2.1" style="font-size:90%;">Video-Infinity </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A4.T5.4.4.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="A4.T5.4.4.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.6.3"><span class="ltx_text" id="A4.T5.4.4.6.3.1" style="font-size:90%;">0.879</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.6.4"><span class="ltx_text" id="A4.T5.4.4.6.4.1" style="font-size:90%;">0.943</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.6.5"><span class="ltx_text" id="A4.T5.4.4.6.5.1" style="font-size:90%;">0.645</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.6.6"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.6.6.1" style="font-size:90%;">0.365</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.4.4.7.1"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.7.1.1" style="font-size:90%;">SynCoS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.7.2"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.7.2.1" style="font-size:90%;">0.911</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.7.3"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.7.3.1" style="font-size:90%;">0.947</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.7.4"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.7.4.1" style="font-size:90%;">0.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.7.5"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.7.5.1" style="font-size:90%;">0.365</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.4.4.8.1" rowspan="2"><span class="ltx_text" id="A4.T5.4.4.8.1.1" style="font-size:90%;">CogVideoX-2B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.4.4.8.2">
<span class="ltx_text" id="A4.T5.4.4.8.2.1" style="font-size:90%;">DitCtrl </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A4.T5.4.4.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08605v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="A4.T5.4.4.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.8.3"><span class="ltx_text" id="A4.T5.4.4.8.3.1" style="font-size:90%;">0.821</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.8.4"><span class="ltx_text" id="A4.T5.4.4.8.4.1" style="font-size:90%;">0.916</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.8.5"><span class="ltx_text" id="A4.T5.4.4.8.5.1" style="font-size:90%;">0.635</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.4.4.8.6"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.8.6.1" style="font-size:90%;">0.394</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T5.4.4.9.1"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.9.1.1" style="font-size:90%;">SynCoS</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.4.4.9.2"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.9.2.1" style="font-size:90%;">0.864</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.4.4.9.3"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.9.3.1" style="font-size:90%;">0.927</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.4.4.9.4"><span class="ltx_text ltx_font_bold" id="A4.T5.4.4.9.4.1" style="font-size:90%;">0.643</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.4.4.9.5"><span class="ltx_text" id="A4.T5.4.4.9.5.1" style="font-size:90%;">0.381</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of SynCoS against architecture-specific baselines for multi-event long video generation.  It evaluates the performance of different methods across four key metrics: Subject Consistency (SC), Background Consistency (BC), Aesthetic Quality (AQ), and Prompt Fidelity (PF).  Higher scores indicate better performance in each metric.  The table helps demonstrate SynCoS's robustness across various architectures by showing its consistent superiority over other methods.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative comparison with architecture-specific baselines. *Abbreviations: subject consistency (SC), background consistency (BC), aesthetic quality (AQ), and prompt fidelity (PF).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08605/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08605/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}