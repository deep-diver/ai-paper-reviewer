---
title: "SongGen: A Single Stage Auto-regressive Transformer for Text-to-Song Generation"
summary: "SongGen: Single-stage autoregressive transformer for controllable text-to-song generation, simplifying the process and improving control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Music Generation", "🏢 Beihang University",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13128 {{< /keyword >}}
{{< keyword icon="writer" >}} Zihan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13128" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13128" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13128/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-to-song models often use complex multistage processes, which make training and use harder. Also, there is a lack of opensource dataset to do research in this field. The paper aims to solve these issues by improving pipeline simplicity and data availablity. 



The paper introduces a single-stage, autoregressive transformer model that converts text and optional vocal references into songs. **SongGen offers control over musical elements and voice cloning**. The model supports mixed and dual-track output modes. Through token pattern explorations, the model improves output quality. The project includes a dataset, preprocessing pipeline, model weights, and code.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SongGen simplifies text-to-song generation with a single-stage transformer. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Mixed Pro enhances vocal clarity, while Dual-Track enables flexible post-production. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model, code, data, and pipeline are released to promote future research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important because it introduces **a novel, open-source, single-stage approach to text-to-song generation**, overcoming limitations of multi-stage methods. By releasing model weights, code, data, and a preprocessing pipeline, it **establishes a strong baseline for future research**, fostering innovation in AI music creation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/motivation.png)

> 🔼 Figure 1 illustrates the difference between traditional multi-stage text-to-song generation methods and the proposed SongGen approach. Traditional methods involve separate stages for generating music scores, vocals, and accompaniment, leading to complex and inflexible pipelines. In contrast, SongGen uses a single-stage auto-regressive transformer to directly generate both mixed-mode (vocals and accompaniment combined) and dual-track mode (vocals and accompaniment separated) song outputs, simplifying the generation process and enhancing controllability.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Traditional methods often rely on multi-stage processes, making pipelines inflexible and complex. SongGen simplifies this with a single-stage auto-regressive transformer that supports both mixed mode and dual-track mode song generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.10.10.10">
<tr class="ltx_tr" id="S4.T1.10.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S4.T1.10.10.10.10.11">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.1">FAD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2.2">KL <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3.3">CLAP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4.4">PER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.5.5.5.5.5">SECS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.6.6.6.6">OVL.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.7.7.7.7">REL.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.8.8.8.8.8">VQ.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.9.9.9.9.9">HAM. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.10.10">SS. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.10.m1.1a"><mo id="S4.T1.10.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.10.m1.1b"><ci id="S4.T1.10.10.10.10.10.m1.1.1.cmml" xref="S4.T1.10.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S4.T1.10.10.10.11.1">Ground Truth</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.11.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.7"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.11.7.1">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.8"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.11.8.1">4.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.9"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.11.9.1">4.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.10"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.11.10.1">4.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.11.11"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.11.11.1">4.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.12">
<td class="ltx_td ltx_align_left" colspan="2" id="S4.T1.10.10.10.12.1">Suno</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.12.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.12.7.1">4.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.8">3.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.12.9.1">4.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.12.10.1">4.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.12.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.13">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S4.T1.10.10.10.13.1">Stable Audio Open <cite class="ltx_cite ltx_citemacro_citep">(Evans et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.13128v1#bib.bib15" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.2">4.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.3">1.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.4">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.13.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.7">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.8">2.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.9">1.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.13.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.14">
<td class="ltx_td ltx_align_left" colspan="2" id="S4.T1.10.10.10.14.1">MusicGen <cite class="ltx_cite ltx_citemacro_citep">(Copet et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.13128v1#bib.bib10" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.2">5.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.3">0.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.4">0.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.14.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.7">3.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.8">2.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.10">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.14.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.15">
<td class="ltx_td ltx_align_left" colspan="2" id="S4.T1.10.10.10.15.1">Parler-tts* <cite class="ltx_cite ltx_citemacro_citep">(Lyth &amp; King, <a class="ltx_ref" href="https://arxiv.org/html/2502.13128v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.2">4.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.3">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.4">0.19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.5">58.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.15.6">64.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.7">2.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.8">2.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.9">2.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.10">2.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.15.11">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.10.10.10.16.1" rowspan="2"><span class="ltx_text" id="S4.T1.10.10.10.16.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.10.10.10.16.1.1.1" style="width:6.9pt;height:27.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.2pt;transform:translate(-10.14pt,-10.14pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T1.10.10.10.16.1.1.1.1">Mixed</span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.10.10.10.16.2">Mixed</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.3">1.74</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.5"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.16.5.1">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.6">51.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.10.10.10.16.7">73.69</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.8">3.58</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.9">3.70</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.10">3.55</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.11">3.39</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.10.16.12">3.92</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.17">
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.10.17.1"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.17.1.1">Mixed pro (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.2"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.17.2.1">1.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.3"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.17.3.1">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.4"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.17.4.1">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.17.5.1">40.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.17.6"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.17.6.1">73.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.7" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.10.10.10.17.7.1" style="background-color:#FFFF99;">3.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.8">3.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.9">4.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.10" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.10.10.10.17.10.1" style="background-color:#FFFF99;">4.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.17.11" style="background-color:#FFFF99;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.17.11.1" style="background-color:#FFFF99;">4.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.10.10.10.18.1" rowspan="5"><span class="ltx_text" id="S4.T1.10.10.10.18.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.10.10.10.18.1.1.1" style="width:6.9pt;height:46.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:46.6pt;transform:translate(-19.81pt,-19.81pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T1.10.10.10.18.1.1.1.1">Dual-track</span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.10.10.10.18.2">Parallel (standard)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.3">2.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.4">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.5">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.6">48.40</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.18.7">72.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.8">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.9">3.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.10">3.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.11">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.18.12">3.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.19">
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.10.19.1">Parallel (V-A)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.2">2.54</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.3">0.73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.4">0.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.5">46.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.19.6">72.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.7">3.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.8">3.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.9">3.48</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.10">3.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.19.11">3.47</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.20">
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.10.20.1">Parallel (A-V)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.2">2.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.3">0.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.4">0.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.5">47.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.10.10.10.20.6">72.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.7">3.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.8">3.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.9">3.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.10">3.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.20.11">3.51</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.10.10.10.21.1">Interleaving (V-A)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.2">1.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.3">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.4">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.5">41.82</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.21.6">73.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.7">3.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.8">3.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.9">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.10">3.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.21.11">3.88</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.10.10.10.22.1"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.22.1.1">Interleaving (A-V) (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.22.2.1">1.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.3"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.22.3.1">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.4"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.22.4.1">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.5"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.22.5.1">39.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.10.10.10.22.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.22.6.1">73.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.7">3.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.8" style="background-color:#FFFF99;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.10.10.22.8.1" style="background-color:#FFFF99;">3.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.9" style="background-color:#FFFF99;"><span class="ltx_text" id="S4.T1.10.10.10.22.9.1" style="background-color:#FFFF99;">4.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.10">3.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.10.22.11">3.93</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of SongGen's text-to-song generation capabilities, comparing its performance against various baselines using both objective and subjective metrics. Objective metrics include FAD (Frechet Audio Distance), KL (Kullback-Leibler Divergence), CLAP (CLAP Score), PER (Phoneme Error Rate), and VQ (Vocal Quality), assessing aspects like audio fidelity, lyric accuracy, and vocal clarity. Subjective metrics involve MOS (Mean Opinion Score) ratings across five key aspects: overall quality, relevance to the text description, vocal quality, vocal-accompaniment harmony, and speaker similarity. The results show SongGen outperforming the baselines, demonstrating its ability to generate high-quality, text-relevant songs with clear vocals and effective vocal-accompaniment harmony, despite being trained on a relatively smaller dataset compared to some commercial products.  The table highlights the best-performing models and variants within SongGen's mixed and dual-track modes, indicating the effectiveness of different design choices. The asterisk (*) indicates that Parler-tts was fine-tuned using the author's training data.
> <details>
> <summary>read the caption</summary>
> Table 1: Objective and Subjective evaluation of Text-to-Song generation. * denotes that we finetune Parlet-tts using our training data. The overall first and second results are marked with bold and underline, respectively. The top subjective results in both of our generation modes are highlighted in yellow.
> </details>





### In-depth insights


#### Single-stage ASR
While the paper doesn't explicitly have a "Single-stage ASR" heading, we can interpret this in the context of the presented SongGen model as contrasting with multi-stage approaches.  In the landscape of text-to-song generation, a single-stage ASR (Auto-regressive) model offers significant advantages in terms of **simplifying the training and inference pipeline**. Traditional systems often decompose the task into multiple stages (e.g., text-to-vocal followed by vocal-to-accompaniment), leading to **increased complexity and potential error propagation**. A single-stage approach, like SongGen, aims to directly map text input to song output, potentially enabling **more unified control over musical attributes and a streamlined end-to-end learning process**. The key is effectively capturing the complex relationships between lyrics, instrumentation, and vocal performance within a single model architecture.  The main challenge of the single-stage is how to balance generating high-quality vocals and clear lyrics since the model may prioritize easily predictable accompaniment. The authors mentioned introducing auxiliary vocal token to solve the problem.

#### Token Patterns
Analyzing token patterns is crucial in sequence generation tasks. Different patterns can significantly impact the model's ability to capture complex relationships within the data. **Mixed token** approaches might simplify the generation process but could lead to challenges in disentangling different data modalities, such as vocals and accompaniment in music. Conversely, **dual-track** or interleaved patterns, while potentially more complex to implement, could offer better control and separation, enabling more nuanced and expressive results. Careful consideration of the order and structure within these patterns is essential. For example, placing certain tokens before others might provide necessary context or influence the generation process in specific ways. Experimentation is key to determining optimal arrangements. Token patterns directly shape the model's ability to extract meaningful data representations, ultimately impacting the coherence, quality, and style of the generated outputs.

#### Data Pipeline
A robust data pipeline appears crucial for the success of this endeavor, given the inherent challenges in text-to-song generation. **Data scarcity** is a major hurdle. Therefore, I expect the authors will need to invest significant effort in creating an automated system for **data collection, cleaning, and pre-processing**. The pipeline probably incorporates steps like **audio segmentation**, to isolate vocals from instrumentals, and **lyric alignment**, to synchronize lyrics with the audio. Given the unreliability of automated speech recognition (ASR) systems on sung vocals, I anticipate a multi-ASR system with discrepancy analysis to produce more accurate transcriptions. Finally, I presume the pipeline will include robust data augmentation techniques to expand the dataset size and improve the model's generalization capabilities, especially considering the inherent limitations of current datasets.

#### Vocal clarity
**Vocal clarity** is crucial in text-to-song generation, yet challenging due to overlaps with accompaniment, leading models to prioritize the latter. This paper introduces an auxiliary vocal token prediction target to enhance vocal learning, significantly improving vocal clarity in mixed-token outputs. Techniques to maintain alignment of vocals and accompaniment are also examined. Results from these methods highlight the importance of explicit focus on vocal features to produce natural-sounding, intelligible vocals within a cohesive song structure. The proposed approach helps the model overcome biases towards the more stable and predictable accompaniment, ultimately achieving a more balanced and perceptually pleasing final output. The results showcase the effectiveness of targeted strategies in addressing specific challenges in music generation.

#### Cross-attention
Cross-attention mechanisms are pivotal for integrating diverse modalities in a unified model like SongGen. They enable the model to selectively focus on relevant information from different input sources, such as lyrics, descriptive text, and reference voice clips, when generating music. By learning to attend to specific parts of the lyrics or text descriptions during vocal and accompaniment synthesis, SongGen can create more coherent and contextually relevant songs. **This selective attention allows for fine-grained control over musical attributes, ensuring that the generated audio aligns with the intended style, mood, and instrumentation.** Effectively implemented cross-attention can significantly improve the quality and controllability of text-to-song generation by dynamically adapting the generation process based on the input conditions. The success hinges on appropriate projection layers to transform the embeddings and effective techniques to focus on relevant inter-modal relationships.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/framework1.png)

> 🔼 SongGen uses an auto-regressive transformer decoder to generate audio tokens.  These tokens incorporate user input (lyrics, description text, and optional reference audio) via cross-attention. The decoder outputs a sequence of these tokens, which are then processed by a neural audio codec to synthesize the final song. Different token patterns are used to control the generation process for flexibility.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of SongGen: An auto-regressive transformer decoder generates audio tokens with diverse patterns, incorporating user-defined controls via cross-attention. The final song is synthesized from these tokens through the audio codec decoder.
> </details>



![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/pattern2.png)

> 🔼 Figure 3 illustrates various token patterns used in SongGen for different generation modes.  It focuses on how the model handles vocals and accompaniment.  The 'codebook-delay' pattern from MusicGen is used in all modes.  Panel (a) shows the 'Mixed Pro' approach, where mixed audio tokens are directly decoded with an auxiliary vocal token prediction target added to improve vocal quality. Panels (b) and (c) display dual-track mode strategies.  Panel (b), the 'Parallel' method, concatenates vocal and accompaniment tokens along the codebook dimension with variations in the ordering of the tracks. Panel (c), 'Interleaving', interleaves vocal and accompaniment tokens in time, also showing variations in track ordering.  This figure visually explains the different strategies SongGen uses to generate either a mixed audio track or separate vocal and accompaniment tracks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of token patterns for different generation modes. The codebook-delay pattern (from MusicGen) is applied to every audio token. (a) Mixed Pro: Directly decoding mixed tokens, with an auxiliary vocal token prediction target to enhance vocal learning. Dual-track mode: (b) Parallel: Vocal and accompaniment tokens are concatenated along the codebook dimension, with three track order variants. (c) Interleaving: Tokens from both tracks are interleaved along the temporal dimension, with two track order variants.
> </details>



![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/vibrato.png)

> 🔼 Figure 4 presents mel-spectrograms of a song generated by the SongGen model.  The spectrograms visually demonstrate the model's ability to generate songs incorporating a variety of expressive vocal techniques, showcasing the model's capabilities beyond simple audio generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Mel-spectrogram visualization of our generated song featuring various singing techniques.
> </details>



![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/attan.png)

> 🔼 Figure 5 visualizes the attention weights within the transformer decoder of the SongGen model for both mixed and dual-track modes.  Subfigures (a) and (b) display the self-attention patterns in layers 18 and 8 respectively for the 'mixed pro' generation mode, showcasing a diagonal pattern indicating the model's ability to capture repetitive structures common in music. (c) shows layer 21 for the same mode, presenting a checkerboard pattern suggesting different focus on intra- and inter-track relations. (d), (e), and (f) show the same self-attention visualizations but for the 'Interleaving (A-V)' dual-track mode, revealing a similar diagonal pattern in higher layers and a distinct checkerboard pattern in lower layers. This difference highlights how different layers in the model focus on capturing various relationships between vocal and accompaniment tracks in different modes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of decoder attention.
> </details>



![](https://arxiv.org/html/2502.13128/extracted/6197501/Figure/codec.png)

> 🔼 This figure shows the training loss curves for three different audio codecs: X-Codec, Encodec, and DAC.  The X-axis represents the training step, and the Y-axis represents the loss.  The plot visually compares the convergence speed and final loss values achieved by each codec during the training process of the SongGen model. This helps to illustrate the impact of the choice of audio codec on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training loss curves of different audio codecs
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.5.5">
<tr class="ltx_tr" id="S4.T2.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.5.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.1">FAD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2.2">OVL.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3.3">REL.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.4.4">VQ.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.5.5">HAM. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.5.5.6.1">mixed pro</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6.2">1.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6.3">3.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6.4">3.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6.5">3.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6.6">3.87</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.5.5.5.7.1">inter.(A-V)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.2">2.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.3">3.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.4">3.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.5">3.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.6">3.83</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of SongGen's text-to-song generation model when the reference voice input is removed. It compares two modes: 'mixed pro' and 'interleaving (A-V)', evaluating their performance across multiple metrics including FAD (Frechet Audio Distance), OVL (Overall Quality), REL (Relevance), VQ (Vocal Quality), HAM (Harmony), and SS (Speaker Similarity). The results showcase SongGen's ability to generate songs even without a voice reference, although with some performance reduction.
> <details>
> <summary>read the caption</summary>
> Table 2: Text-to-Song results without voice input.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.5.5.5">
<tr class="ltx_tr" id="S4.T3.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.5.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.1">FAD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2.2">KL <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3.3">CLAP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4.4">PER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.5.5">SECS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.5.5.6.1">w/o HQFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6.2">2.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6.3">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6.4">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6.5">43.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6.6">72.83</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5.7">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.5.7.1">w/o CL</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7.2">2.35</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7.3">0.73</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7.4">0.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7.5">55.71</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7.6">72.81</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.1.1">ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.2.1">1.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.3.1">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.4.1">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.5.1">40.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.5.5.8.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.8.6.1">73.78</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of different training schemes on the SongGen model's performance. It compares the model's performance under three training schemes:  (1) without high-quality fine-tuning (HQFT), (2) without curriculum learning (CL), and (3) with both HQFT and CL (the proposed method).  The evaluation metrics include Frechet Audio Distance (FAD), Kullback-Leibler Divergence (KL), CLAP score, Phoneme Error Rate (PER), and Speaker Embedding Cosine Similarity (SECS) to comprehensively assess the quality of generated songs.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation results on training scheme. HQFT is short for High-Quality Finetuning and CL stands for curriculum learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.3.3">
<tr class="ltx_tr" id="S4.T4.3.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3.4">Tokenizer</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3.5">
<span class="ltx_text" id="S4.T4.3.3.3.3.5.1"></span> <span class="ltx_text" id="S4.T4.3.3.3.3.5.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.3.3.3.3.5.2.1">
<span class="ltx_tr" id="S4.T4.3.3.3.3.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.3.5.2.1.1.1">w/ Lyrics</span></span>
<span class="ltx_tr" id="S4.T4.3.3.3.3.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.3.5.2.1.2.1">Encoder</span></span>
</span></span><span class="ltx_text" id="S4.T4.3.3.3.3.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3.6">
<span class="ltx_text" id="S4.T4.3.3.3.3.6.1"></span> <span class="ltx_text" id="S4.T4.3.3.3.3.6.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.3.3.3.3.6.2.1">
<span class="ltx_tr" id="S4.T4.3.3.3.3.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.3.6.2.1.1.1">prepend</span></span>
<span class="ltx_tr" id="S4.T4.3.3.3.3.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.3.6.2.1.2.1">/ cross</span></span>
</span></span><span class="ltx_text" id="S4.T4.3.3.3.3.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1.1">FAD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.2.2">PER <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3.3">SECS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.1">VoiceBPE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.3">prepend</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.4">3.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.5">62.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.4.6">69.09</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.5">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.1">VoiceBPE</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.3">prepend</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.4">3.56</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.5">56.21</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5.6">70.70</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.6">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.1">VoiceBPE</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.3">cross</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.4">1.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.5">61.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6.6">72.59</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.7">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.1">T5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.3">cross</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.4">1.88</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.5">55.27</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7.6">73.67</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.1">VoiceBPE</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.3">cross</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.8.4.1">1.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.5"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.8.5.1">43.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.3.3.8.6"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.8.6.1">73.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results of different lyric integration methods used in the SongGen model. It compares the performance using various tokenizers (VoiceBPE, T5), lyric encoder inclusion (with or without), and integration approaches (prepending lyrics or cross-attention).  The results are evaluated using FAD, PER, and SECS metrics to determine the impact of each method on the generated song quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation results on different lyric integration methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T5.5.5.5">
<tr class="ltx_tr" id="A4.T5.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T5.5.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.1.1.1.1.1">FAD <math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T5.1.1.1.1.1.m1.1"><semantics id="A4.T5.1.1.1.1.1.m1.1a"><mo id="A4.T5.1.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T5.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T5.1.1.1.1.1.m1.1b"><ci id="A4.T5.1.1.1.1.1.m1.1.1.cmml" xref="A4.T5.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.2.2.2.2.2">KL <math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T5.2.2.2.2.2.m1.1"><semantics id="A4.T5.2.2.2.2.2.m1.1a"><mo id="A4.T5.2.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T5.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T5.2.2.2.2.2.m1.1b"><ci id="A4.T5.2.2.2.2.2.m1.1.1.cmml" xref="A4.T5.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.3.3.3.3.3">CLAP <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.3.3.3.3.3.m1.1"><semantics id="A4.T5.3.3.3.3.3.m1.1a"><mo id="A4.T5.3.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T5.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.3.3.3.3.3.m1.1b"><ci id="A4.T5.3.3.3.3.3.m1.1.1.cmml" xref="A4.T5.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.4.4.4.4">PER <math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T5.4.4.4.4.4.m1.1"><semantics id="A4.T5.4.4.4.4.4.m1.1a"><mo id="A4.T5.4.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T5.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T5.4.4.4.4.4.m1.1b"><ci id="A4.T5.4.4.4.4.4.m1.1.1.cmml" xref="A4.T5.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.5.5.5.5.5">SECS <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T5.5.5.5.5.5.m1.1"><semantics id="A4.T5.5.5.5.5.5.m1.1a"><mo id="A4.T5.5.5.5.5.5.m1.1.1" stretchy="false" xref="A4.T5.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T5.5.5.5.5.5.m1.1b"><ci id="A4.T5.5.5.5.5.5.m1.1.1.cmml" xref="A4.T5.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T5.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.5.5.5.6.1">Encodec</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.5.5.5.6.2">10.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.5.5.5.6.3">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.5.5.5.6.4">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.5.5.5.6.5">60.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.5.5.5.6.6">71.36</td>
</tr>
<tr class="ltx_tr" id="A4.T5.5.5.5.7">
<td class="ltx_td ltx_align_left" id="A4.T5.5.5.5.7.1">DAC</td>
<td class="ltx_td ltx_align_center" id="A4.T5.5.5.5.7.2">4.36</td>
<td class="ltx_td ltx_align_center" id="A4.T5.5.5.5.7.3">0.86</td>
<td class="ltx_td ltx_align_center" id="A4.T5.5.5.5.7.4">0.24</td>
<td class="ltx_td ltx_align_center" id="A4.T5.5.5.5.7.5">68.64</td>
<td class="ltx_td ltx_align_center" id="A4.T5.5.5.5.7.6">71.66</td>
</tr>
<tr class="ltx_tr" id="A4.T5.5.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.1">X-Codec (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.2"><span class="ltx_text ltx_font_bold" id="A4.T5.5.5.5.8.2.1">1.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.3"><span class="ltx_text ltx_font_bold" id="A4.T5.5.5.5.8.3.1">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.4"><span class="ltx_text ltx_font_bold" id="A4.T5.5.5.5.8.4.1">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.5"><span class="ltx_text ltx_font_bold" id="A4.T5.5.5.5.8.5.1">43.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.5.5.5.8.6"><span class="ltx_text ltx_font_bold" id="A4.T5.5.5.5.8.6.1">73.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results comparing three different neural audio codecs: X-Codec, Encodec, and DAC.  The comparison focuses on the impact of the codec choice on several key metrics including Frechet Audio Distance (FAD), Kullback-Leibler Divergence (KL), CLAP Score, Phoneme Error Rate (PER), and Speaker Embedding Cosine Similarity (SECS).  The results demonstrate X-Codec's superior performance across all metrics, highlighting the importance of incorporating both acoustic and semantic information into the audio token for the song generation task.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation results of different neural audio codecs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13128/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13128/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}