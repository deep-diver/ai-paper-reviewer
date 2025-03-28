---
title: "Video-T1: Test-Time Scaling for Video Generation"
summary: "Video-T1 enhances video generation through test-time scaling, improving quality and consistency by viewing generation as a search for optimal video trajectories."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18942 {{< /keyword >}}
{{< keyword icon="writer" >}} Fangfu Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18942" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18942" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18942/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating high-quality videos remains challenging due to the need for temporal coherence and capturing complex dynamics. Scaling video generation methods in training is costly and resource-intensive. To address this, the paper investigates test-time scaling (TTS) in video generation, asking how much it can improve generation quality for challenging text prompts. This explores enhancing video generation without retraining or enlarging models. 



This paper introduces Video-T1, a framework that reinterprets TTS as a search problem for better video trajectories. It uses test-time verifiers and heuristic algorithms to guide the search. A linear search strategy increases noise candidates, while Tree-of-Frames (ToF) efficiently expands and prunes video branches. Experiments show that increasing test-time compute significantly improves video quality, offering a way to achieve superior results in computer vision.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Test-Time Scaling (TTS) can significantly improve video generation quality without retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Framing video generation as a search problem allows for better exploration of potential solutions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Tree-of-Frames (ToF) approach efficiently balances computational cost and video quality in TTS. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces **Video-T1**, a novel test-time scaling framework that significantly enhances video generation quality by treating it as a search problem. It is important for showing how to achieve improved performance without expensive retraining, paving the way for more efficient video generation techniques and further exploration in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18942/x2.png)

> 🔼 This figure demonstrates the impact of Test-Time Scaling (TTS) on video generation quality.  The top row showcases videos generated without TTS, while the bottom row shows videos generated using TTS.  The differences highlight how TTS leads to videos that are more faithful to the text prompt and exhibit improved visual coherence and overall quality. Specific examples include clearer image generation, more accurate object representation, and better adherence to the described actions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Video-T1: We present the generative effects and performance improvements of video generation under Test-Time Scaling (TTS) settings. The videos generated with TTS are of higher quality and more consistent with the prompt than those generated without TTS.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.7.1.1.1" style="font-size:80%;">Methods</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.6.7.1.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.7.1.2.1">
<span class="ltx_p" id="S4.T1.6.7.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.7.1.2.1.1.1" style="font-size:80%;">Linear Search</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.7.1.3" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.7.1.3.1">
<span class="ltx_p" id="S4.T1.6.7.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.7.1.3.1.1.1" style="font-size:80%;">ToF Search</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1" style="font-size:80%;">Pyramid-Flow(FLUX)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S4.T1.1.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1"><math alttext="5.22\times 10^{7}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml"><mn id="S4.T1.1.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.2.cmml">5.22</mn><mo id="S4.T1.1.1.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.1.m1.1.1.3.cmml"><mn id="S4.T1.1.1.1.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.1.1.1.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.3.3.cmml">7</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1"><times id="S4.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.1"></times><cn id="S4.T1.1.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.1.1.1.1.1.m1.1.1.2">5.22</cn><apply id="S4.T1.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.1.1.1.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.1.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.1.1.1.1.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">5.22\times 10^{7}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">5.22 × 10 start_POSTSUPERSCRIPT 7 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T1.2.2.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.2.2.2.1">
<span class="ltx_p" id="S4.T1.2.2.2.1.1"><math alttext="1.62\times 10^{7}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.1.m1.1"><semantics id="S4.T1.2.2.2.1.1.m1.1a"><mrow id="S4.T1.2.2.2.1.1.m1.1.1" xref="S4.T1.2.2.2.1.1.m1.1.1.cmml"><mn id="S4.T1.2.2.2.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.2.cmml">1.62</mn><mo id="S4.T1.2.2.2.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.2.2.2.1.1.m1.1.1.3" xref="S4.T1.2.2.2.1.1.m1.1.1.3.cmml"><mn id="S4.T1.2.2.2.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.2.2.2.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.3.3.cmml">7</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.1.m1.1b"><apply id="S4.T1.2.2.2.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1"><times id="S4.T1.2.2.2.1.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.1"></times><cn id="S4.T1.2.2.2.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.2.2.2.1.1.m1.1.1.2">1.62</cn><apply id="S4.T1.2.2.2.1.1.m1.1.1.3.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.2.2.2.1.1.m1.1.1.3.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.2.2.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.2.2.2.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.2.2.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.2.2.2.1.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.1.m1.1c">1.62\times 10^{7}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.1.m1.1d">1.62 × 10 start_POSTSUPERSCRIPT 7 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.3.1" style="font-size:80%;">Pyramid-Flow(SD3)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T1.3.3.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.3.1.1">
<span class="ltx_p" id="S4.T1.3.3.1.1.1"><math alttext="3.66\times 10^{7}" class="ltx_Math" display="inline" id="S4.T1.3.3.1.1.1.m1.1"><semantics id="S4.T1.3.3.1.1.1.m1.1a"><mrow id="S4.T1.3.3.1.1.1.m1.1.1" xref="S4.T1.3.3.1.1.1.m1.1.1.cmml"><mn id="S4.T1.3.3.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.3.3.1.1.1.m1.1.1.2.cmml">3.66</mn><mo id="S4.T1.3.3.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.3.3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.3.3.1.1.1.m1.1.1.3" xref="S4.T1.3.3.1.1.1.m1.1.1.3.cmml"><mn id="S4.T1.3.3.1.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.3.3.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.3.3.1.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.3.3.1.1.1.m1.1.1.3.3.cmml">7</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.1.1.1.m1.1b"><apply id="S4.T1.3.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.3.1.1.1.m1.1.1"><times id="S4.T1.3.3.1.1.1.m1.1.1.1.cmml" xref="S4.T1.3.3.1.1.1.m1.1.1.1"></times><cn id="S4.T1.3.3.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.3.3.1.1.1.m1.1.1.2">3.66</cn><apply id="S4.T1.3.3.1.1.1.m1.1.1.3.cmml" xref="S4.T1.3.3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.3.3.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.3.3.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.3.3.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.3.3.1.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.3.3.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.3.3.1.1.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.1.1.1.m1.1c">3.66\times 10^{7}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.1.1.1.m1.1d">3.66 × 10 start_POSTSUPERSCRIPT 7 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T1.4.4.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.4.2.1">
<span class="ltx_p" id="S4.T1.4.4.2.1.1"><math alttext="1.13\times 10^{7}" class="ltx_Math" display="inline" id="S4.T1.4.4.2.1.1.m1.1"><semantics id="S4.T1.4.4.2.1.1.m1.1a"><mrow id="S4.T1.4.4.2.1.1.m1.1.1" xref="S4.T1.4.4.2.1.1.m1.1.1.cmml"><mn id="S4.T1.4.4.2.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.4.4.2.1.1.m1.1.1.2.cmml">1.13</mn><mo id="S4.T1.4.4.2.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.4.4.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.4.4.2.1.1.m1.1.1.3" xref="S4.T1.4.4.2.1.1.m1.1.1.3.cmml"><mn id="S4.T1.4.4.2.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.4.4.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.4.4.2.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.4.4.2.1.1.m1.1.1.3.3.cmml">7</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.2.1.1.m1.1b"><apply id="S4.T1.4.4.2.1.1.m1.1.1.cmml" xref="S4.T1.4.4.2.1.1.m1.1.1"><times id="S4.T1.4.4.2.1.1.m1.1.1.1.cmml" xref="S4.T1.4.4.2.1.1.m1.1.1.1"></times><cn id="S4.T1.4.4.2.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.4.4.2.1.1.m1.1.1.2">1.13</cn><apply id="S4.T1.4.4.2.1.1.m1.1.1.3.cmml" xref="S4.T1.4.4.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.4.4.2.1.1.m1.1.1.3.1.cmml" xref="S4.T1.4.4.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.4.4.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.4.4.2.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.4.4.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.4.4.2.1.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.2.1.1.m1.1c">1.13\times 10^{7}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.2.1.1.m1.1d">1.13 × 10 start_POSTSUPERSCRIPT 7 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.3.1" style="font-size:80%;">NOVA</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r" id="S4.T1.5.5.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.5.5.1.1">
<span class="ltx_p" id="S4.T1.5.5.1.1.1"><math alttext="4.02\times 10^{6}" class="ltx_Math" display="inline" id="S4.T1.5.5.1.1.1.m1.1"><semantics id="S4.T1.5.5.1.1.1.m1.1a"><mrow id="S4.T1.5.5.1.1.1.m1.1.1" xref="S4.T1.5.5.1.1.1.m1.1.1.cmml"><mn id="S4.T1.5.5.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.5.5.1.1.1.m1.1.1.2.cmml">4.02</mn><mo id="S4.T1.5.5.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.5.5.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.5.5.1.1.1.m1.1.1.3" xref="S4.T1.5.5.1.1.1.m1.1.1.3.cmml"><mn id="S4.T1.5.5.1.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.5.5.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.5.5.1.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.5.5.1.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.1.1.1.m1.1b"><apply id="S4.T1.5.5.1.1.1.m1.1.1.cmml" xref="S4.T1.5.5.1.1.1.m1.1.1"><times id="S4.T1.5.5.1.1.1.m1.1.1.1.cmml" xref="S4.T1.5.5.1.1.1.m1.1.1.1"></times><cn id="S4.T1.5.5.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.5.5.1.1.1.m1.1.1.2">4.02</cn><apply id="S4.T1.5.5.1.1.1.m1.1.1.3.cmml" xref="S4.T1.5.5.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.5.5.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.5.5.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.5.5.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.5.5.1.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.5.5.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.5.5.1.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.1.1.1.m1.1c">4.02\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.1.1.1.m1.1d">4.02 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T1.6.6.2" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.6.2.1">
<span class="ltx_p" id="S4.T1.6.6.2.1.1"><math alttext="1.41\times 10^{6}" class="ltx_Math" display="inline" id="S4.T1.6.6.2.1.1.m1.1"><semantics id="S4.T1.6.6.2.1.1.m1.1a"><mrow id="S4.T1.6.6.2.1.1.m1.1.1" xref="S4.T1.6.6.2.1.1.m1.1.1.cmml"><mn id="S4.T1.6.6.2.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.6.6.2.1.1.m1.1.1.2.cmml">1.41</mn><mo id="S4.T1.6.6.2.1.1.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S4.T1.6.6.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T1.6.6.2.1.1.m1.1.1.3" xref="S4.T1.6.6.2.1.1.m1.1.1.3.cmml"><mn id="S4.T1.6.6.2.1.1.m1.1.1.3.2" mathsize="80%" xref="S4.T1.6.6.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T1.6.6.2.1.1.m1.1.1.3.3" mathsize="80%" xref="S4.T1.6.6.2.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.2.1.1.m1.1b"><apply id="S4.T1.6.6.2.1.1.m1.1.1.cmml" xref="S4.T1.6.6.2.1.1.m1.1.1"><times id="S4.T1.6.6.2.1.1.m1.1.1.1.cmml" xref="S4.T1.6.6.2.1.1.m1.1.1.1"></times><cn id="S4.T1.6.6.2.1.1.m1.1.1.2.cmml" type="float" xref="S4.T1.6.6.2.1.1.m1.1.1.2">1.41</cn><apply id="S4.T1.6.6.2.1.1.m1.1.1.3.cmml" xref="S4.T1.6.6.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.6.6.2.1.1.m1.1.1.3.1.cmml" xref="S4.T1.6.6.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T1.6.6.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.6.6.2.1.1.m1.1.1.3.2">10</cn><cn id="S4.T1.6.6.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.6.6.2.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.2.1.1.m1.1c">1.41\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.2.1.1.m1.1d">1.41 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the computational cost, measured in GFLOPs (floating-point operations), for inference-time scaling using two different search methods: Linear Search and Tree-of-Frames (ToF) Search.  It shows the GFLOPs required for each method across three different video generation models: Pyramid-Flow (FLUX), Pyramid-Flow (SD3), and NOVA. This allows for a quantitative assessment of the efficiency gains achieved by the ToF Search method compared to the more straightforward Linear Search method.
> <details>
> <summary>read the caption</summary>
> Table 1: Inference-time scaling cost comparison on GFLOPs.
> </details>





### In-depth insights


#### TTS for Video
Test-Time Scaling (TTS) for video generation presents a promising avenue for enhancing video quality without the intensive costs associated with retraining or scaling model size. The core idea involves **reinterpreting video generation as a search problem**, navigating the latent space of Gaussian noise to identify trajectories that yield high-quality, text-aligned videos. This involves techniques such as random linear search and Tree-of-Frames (ToF) search, which adaptively expands and prunes video branches to balance computational cost and generation quality. The process utilizes **test-time verifiers** to assess the quality of intermediate results and guide the search process. By scaling the search space during inference, the method aims to uncover a broader range of potential solutions, leading to significant improvements in the quality and human preference alignment of generated videos. This offers a path to **achieve superior results by leveraging inference-time computation effectively**.

#### Searching Trajectory
**Searching trajectory** can be conceptualized as finding an optimal path in a high-dimensional space to generate desired outputs. It involves navigating through possible solutions, improving the results at each step. In video generation, this means that starting from random noise, trajectories are denoised to the target video according to text prompts. The key to successful trajectory searching includes a strong evaluator and search methods. **Test-Time Scaling (TTS)** amplifies this process by increasing computational budget. This enables more samples and diverse trajectories to be explored, making it more likely to find a better result. Heuristic search algorithms, that use feedback from the verifier can efficiently explore the space, improving the qualities of videos.

#### Tree-of-Frames
The Tree-of-Frames (ToF) approach addresses computational inefficiencies in test-time scaling for video generation. **Unlike methods that process all frames simultaneously, ToF operates autoregressively, building a tree-like structure where video frames are nodes.**  This allows for adaptive expansion and pruning of video branches using feedback from test-time verifiers. ToF seeks to balance computation with generation quality. It starts with an initial frame and generates subsequent frames based on verifier feedback, which guides the search process. This includes image-level alignment (ensuring initial frame quality), hierarchical prompting (dynamically adjusting prompts for different stages of video creation), and heuristic pruning (eliminating unpromising branches to reduce computational cost). **By structuring the generation process as a tree search, ToF can efficiently explore the space of possible video trajectories, achieving performance comparable to less efficient methods with significantly reduced computational overhead.**

#### Multi-Verifiers
**Multi-verifier systems** in video generation can potentially enhance performance significantly by mitigating biases inherent in single verifiers. These systems leverage a **mixture of different evaluation models**, allowing for a more robust assessment of generated video quality. By ensembling multiple verifiers, the system can **better identify and select the highest-quality videos** from a set of candidates, resulting in improved overall performance and a more reliable evaluation process. This approach can lead to **more consistent and trustworthy results** in video generation tasks.

#### Improve VBench
While the paper doesn't explicitly detail improvements to the VBench benchmark itself, the research intrinsically contributes to its enhanced utility. **By demonstrating the effectiveness of Test-Time Scaling (TTS) in video generation, the study provides insights into evaluating video models more comprehensively.** The consistent performance gains achieved through TTS, as measured by VBench across various models and dimensions, validate VBench's ability to capture nuanced improvements in video quality and text alignment. **The use of multiple verifiers within the TTS framework highlights the need for multi-faceted evaluation metrics, a concept directly applicable to refining VBench.** The observation that different verifiers emphasize different aspects of video quality suggests that VBench could benefit from a more granular weighting of its sub-dimensions. **Moreover, the failure cases identified in the experiments underscore the importance of VBench's capacity to discern subtle yet critical aspects of video generation, such as realistic hand movements.** Overall, the research implicitly strengthens VBench by validating its role in assessing video generation models and indicating areas for further development, such as incorporating diverse evaluation metrics and increasing sensitivity to fine-grained details.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18942/x3.png)

> 🔼 This figure displays the results of applying test-time scaling (TTS) to video generation.  The bar chart shows the total score improvement across different video generation models (Pyramid-Flow (SD3), Pyramid-Flow (Flux), CogVideoX-2B, CogVideoX-5B, and OpenSora v1.2) as the number of samples in the search space increases.  The light colored bars represent the model performance *without* TTS, and the dark colored bars show the *improvement* in total score achieved *with* TTS. This visually demonstrates the consistent performance gains obtained by increasing the computation during the testing phase, enhancing the quality of the generated videos.
> <details>
> <summary>read the caption</summary>
> Figure 2: Results of Test-Time Scaling for Video Generation. As the number of samples in the search space increases by scaling test-time computation (TTS), the models’ performance exhibits consistent improvement (In the bar chart, light colors correspond to the results without TTS, while dark colors represent the improvement after TTS.).
> </details>



![](https://arxiv.org/html/2503.18942/x4.png)

> 🔼 This figure illustrates the pipeline of Test-Time Scaling (TTS) for video generation.  The top part depicts the Random Linear Search method, where Gaussian noise is sampled, fed into a video generator for step-by-step denoising, and the resulting video is evaluated by verifiers. The highest-scoring video is chosen. The bottom half shows the Tree-of-Frames (ToF) Search method which involves three stages. Stage 1: Initial image-level alignment, influencing subsequent frames. Stage 2: Dynamic prompt is applied, focusing on motion stability and physical plausibility within the test verifiers. The resulting feedback guides the search process. Stage 3: Final evaluation of video quality, selecting the video with the highest text-prompt alignment.
> <details>
> <summary>read the caption</summary>
> Figure 3: Pipeline of Tes-Time Scaling for Video Generation. Top: Random Linear Search for TTS video generation is to randomly sample Gaussian noises, prompt the video generator to generate sequential of video clips through step-by-step denoising in a linear manner, and select the highest score form the test verifiers. Bottom: Tree of Frames (ToF) Search for TTS video generation is to divide the video generation process into three stages: (a) the first stage performs image-level alignment that influences the later frames; (b) the second stage is to apply dynamic prompt in test verifiers 𝒱𝒱\mathcal{V}caligraphic_V to focus on motion stability, physical plausibility to provide feedback that guides heuristic searching process; (c) the last stage assesses the overall quality of the video and select the video with highest alignment with text prompts.
> </details>



![](https://arxiv.org/html/2503.18942/x5.png)

> 🔼 This figure showcases the results of applying a random linear search method for test-time scaling (TTS) on six different video generation models.  The models are categorized into autoregressive (top row) and diffusion-based (bottom row) models, and are presented in ascending order of their parameter size. Each model's performance is evaluated using four different verifiers (represented by distinct colored lines). The gray dashed line signifies the performance baseline set by VBench, a ground-truth verifier that serves as a point of comparison. The starting point of each colored line indicates the quality of videos generated without TTS (test-time scaling). The subsequent points illustrate the performance improvement as the TTS computation budget (and therefore the number of samples explored) increases.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance of random linear search on different video models and verifiers. The top row displays results for autoregressive models, while the bottom row shows diffusion-based models. The initial points of the curves represent the random video sample results without TTS. The models are arranged in order of increasing parameter count from left to right; different colored curves represent the performance trends under various verifiers, and the gray dashed line corresponds to the baseline established by VBench, which serves as a ground-truth verifier.
> </details>



![](https://arxiv.org/html/2503.18942/x6.png)

> 🔼 Figure 5 compares the performance of two test-time scaling (TTS) search algorithms: random linear search and Tree-of-Frames (ToF) search.  The graph plots the total VBench score (a metric for video quality) against the amount of computational resources used (NFE).  The red curve shows the performance of random linear search, where increasing computation leads to incremental improvements in video quality but at a diminishing rate of return.  The blue curve illustrates the performance of ToF search, which demonstrates significantly better efficiency.  The dashed blue line represents a geometric series decay approximation fitted to the ToF search curve. This highlights that the ToF search converges to a maximum quality score more efficiently, indicating better resource utilization.  The convergence suggests that beyond a certain computational budget, additional resources offer minimal quality improvement.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between random linear search and ToF search. The red curve represents random linear search. The blue curve represents ToF search, with the dashed line being the predicted curve from a geometric series decay approximation. Curve fitting reveals that similar subsequent trends tend to converge to an upper limit.
> </details>



![](https://arxiv.org/html/2503.18942/x7.png)

> 🔼 This figure displays a bar chart visualizing the percentage improvement in video generation quality achieved by Test-Time Scaling (TTS) across various model complexities and benchmark dimensions.  Each bar represents a specific model (e.g., NOVA, Pyramid-Flow) and benchmark dimension (e.g., scene, object class, motion), showing the percentage increase in the VBench score after applying TTS. The various colors within each bar indicate the use of different verifiers. The figure highlights how TTS enhances performance differently across various video generation models and benchmark dimensions, providing insights into the effectiveness of TTS in different scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative TTS performance improvement ratio on different complexities of prompts across different video generation models across diverse benchmark dimensions of Vbench.
> </details>



![](https://arxiv.org/html/2503.18942/extracted/6305288/assets/failure.jpg)

> 🔼 Figure 7 presents a comparison of performance between a smaller video generation model (Pyramid-Flow) and a significantly larger model (HunyuanVideo) when using test-time scaling (TTS).  The figure shows that with increased computational resources allocated during inference (via TTS), the smaller Pyramid-Flow model achieves results comparable to or even surpassing those of the much larger 13B parameter HunyuanVideo model across multiple evaluation metrics. The gray dashed lines in each subplot represent the baseline performance of the HunyuanVideo model on that specific dimension, providing a clear visual comparison to the performance of the smaller model when utilizing TTS.
> <details>
> <summary>read the caption</summary>
> Figure 7: Using TTS, the small model (Pyramid-Flow) achieves scores that are close to, or even exceed, those of the 13B large model (HunyuanVideo) in many dimensions. The gray dashed horizontal line in the figures indicates HunyuanVideo’s score in that dimension.
> </details>



![](https://arxiv.org/html/2503.18942/x8.png)

> 🔼 Figure 8 shows examples where the test-time scaling (TTS) method does not improve video generation quality.  The figure displays several video frames generated from the prompt “A person is clapping.”  Even with increased inference-time computation, the model struggles to generate realistic hand movements. This illustrates that model limitations can constrain the effectiveness of the TTS method, particularly for complex actions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases on prompt “A person is clapping”.
> </details>



![](https://arxiv.org/html/2503.18942/x9.png)

> 🔼 This figure illustrates the hierarchical verification process within the Tree-of-Frames (ToF) search algorithm during test-time scaling (TTS).  The example shows a video generation task prompted by the text 'a bear climbing a tree.' The ToF approach breaks down the video generation into three stages: (1) generation of the initial frame, (2) generation of intermediate frames, and (3) generation of the final frame.  At each stage, a verifier assesses the generated frames against the corresponding portion of the prompt. The verifier output, either 'Yes' (successful) or 'No' (unsuccessful), guides the progress of the search process. The flow demonstrates that the ToF method provides feedback in a step-wise manner during the video generation, refining the output to align with the prompt by verifying each stage sequentially.
> <details>
> <summary>read the caption</summary>
> Figure 9: Verifications during TTS process.
> </details>



![](https://arxiv.org/html/2503.18942/x10.png)

> 🔼 Figure 10 presents the results of applying test-time scaling (TTS) to improve the 'Appearance Style' aspect of video generation.  It shows how different video generation models perform across various evaluation metrics (verifiers) as the amount of computation allocated at test time increases.  The graphs illustrate the consistent improvement in appearance quality achieved by increasing the computational budget, highlighting the effectiveness of TTS for enhancing this specific visual attribute.
> <details>
> <summary>read the caption</summary>
> Figure 10: TTS performance on Appearance Style across diverse verifiers.
> </details>



![](https://arxiv.org/html/2503.18942/x11.png)

> 🔼 This figure displays the results of test-time scaling (TTS) on the aesthetic quality of videos generated by six different video generation models.  Each model is evaluated using four different verifiers (VBench, VideoLLaMa3, VisionReward, and VideoScore), which assess the videos' quality from different perspectives.  The x-axis represents the increasing computational cost (measured in NFE, number of function evaluations) during inference as the TTS is applied. The y-axis shows the corresponding aesthetic quality scores. The graphs illustrate how the aesthetic quality of the videos improves consistently as more computational resources are allocated during the test phase (increased NFE).  The different verifiers show varying degrees of improvement, highlighting the diverse aspects of video quality assessment.
> <details>
> <summary>read the caption</summary>
> Figure 11: TTS performance on Aesthetic Quality across diverse verifiers.
> </details>



![](https://arxiv.org/html/2503.18942/x12.png)

> 🔼 Figure 12 presents the results of applying Test-Time Scaling (TTS) to enhance color generation in videos. It displays the performance of different video generation models (NOVA, OpenSora v1.2, Pyramid-Flow (SD3), Pyramid-Flow (Flux), CogVideoX-2B, and CogVideoX-5B) across various verifiers (VBench, VideoLLaMa3, VisionReward, and VideoScore). The x-axis represents the computational cost (NFE), and the y-axis shows the performance score on the 'Color' dimension of the VBench benchmark. Each line represents a different video generation model, with different colors representing the different verifiers used to evaluate model performance. The figure demonstrates how increasing test-time computation generally improves the quality of color generation across various models and verifiers.
> <details>
> <summary>read the caption</summary>
> Figure 12: TTS performance on Color across diverse verifiers.
> </details>



![](https://arxiv.org/html/2503.18942/x13.png)

> 🔼 This figure shows the results of applying Test-Time Scaling (TTS) to video generation using the Pyramid-Flow model. Each set of images represents a short video clip, with each row representing a different number of samples used during the TTS process.  As the number of samples increases (from top to bottom), the quality and coherence of the generated videos improves. This demonstrates the effectiveness of TTS in enhancing the quality of video generation.
> <details>
> <summary>read the caption</summary>
> Figure 13: More visual results during TTS process on Pyramid-Flow. From left to right, each row of frames are extracted from a video sequence. From top to bottom, each row represents the output video results of TTS with an increasing number of samples.
> </details>



![](https://arxiv.org/html/2503.18942/x14.png)

> 🔼 This figure showcases several video sequences generated using the Pyramid-Flow model with the Test-Time Scaling (TTS) technique.  Each row presents a different number of samples used during the TTS process, illustrating how increased computation at inference time enhances the video generation.  The videos in the figure demonstrate improvements in the overall quality, especially in handling complex movements and human motion, which are often challenging aspects of video generation. The results illustrate how TTS helps to effectively address common issues encountered when generating videos, resulting in smoother and more realistic movement.
> <details>
> <summary>read the caption</summary>
> Figure 14: More visual results during TTS process on Pyramid-Flow. The TTS method can effectively alleviate common issues in video generation, such as those related to human motion and complex movements.
> </details>



![](https://arxiv.org/html/2503.18942/x15.png)

> 🔼 This figure displays several example videos generated using the CogVideoX-5B model with the Test-Time Scaling (TTS) method.  Each set of images shows a sequence of frames from a single video, progressing from left to right.  Multiple rows show the same video generated with increasing computational resources allocated at inference time. The differences in quality and consistency demonstrate the impact of TTS on the overall video generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 15: More visual results during TTS process on CogVideoX-5B.
> </details>



![](https://arxiv.org/html/2503.18942/x16.png)

> 🔼 This figure showcases additional visual results obtained from employing the Test-Time Scaling (TTS) method on the CogVideoX-5B model.  The images demonstrate the enhanced video generation quality achieved through TTS by displaying multiple frames extracted from videos generated with increasing computational budget. Each row represents a separate video and shows the progression of generation quality as more computational resources are used during inference.
> <details>
> <summary>read the caption</summary>
> Figure 16: More visual results during TTS process on CogVideoX-5B.
> </details>



![](https://arxiv.org/html/2503.18942/x17.png)

> 🔼 This figure showcases the improved multi-object spatial perception achieved by applying Test-Time Scaling (TTS) to the CogVideoX-2B model.  It presents several example video generations, each showing an increase in the quality and accuracy of the scene's spatial arrangement as the computational resources allocated to TTS are increased.  The images illustrate that with more compute at inference time, the model more accurately represents the relationships between objects specified in the text prompt (e.g., an apple correctly positioned on a sandwich). This demonstrates the effectiveness of TTS in refining detailed aspects of video generation, beyond just overall visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 17: More visual results during TTS process on CogVideoX-2B. The TTS method can help to enhance multi-object spatial perception.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18942/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18942/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}