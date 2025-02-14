---
title: "The Hidden Life of Tokens: Reducing Hallucination of Large Vision-Language Models via Visual Information Steering"
summary: "VISTA steers LVLMs away from hallucinations by cleverly adjusting token rankings during inference, improving visual grounding and semantic coherence."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Rutgers University",]
showSummary: true
date: 2025-02-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.03628 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhuowei Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.03628" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.03628" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.03628/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large vision-language models (LVLMs) are powerful but prone to "hallucinations," generating text that's grammatically correct but factually inaccurate or unrelated to the image.  This is a significant problem, limiting their use in real-world applications. Existing solutions often require retraining or extra data, making them impractical. 

This paper introduces VISTA, a novel approach that doesn't need extra training.  It analyzes how LVLMs handle information during generation, pinpointing three key issues.  Based on these, VISTA uses two simple techniques to guide the generation process towards more accurate and visually grounded outputs.  **Experiments show that VISTA significantly reduces hallucinations across multiple LVLMs and various generation methods.** This is done with a training-free approach making it easy to apply to already existing systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LVLMs suffer from "gradual visual information loss" during generation, leading to hallucinations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VISTA, a training-free method, boosts genuine information by strategically adjusting token rankings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VISTA significantly reduces hallucinations across various LVLMs and decoding strategies. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it tackles the pervasive problem of hallucination in large vision-language models (LVLMs)**.  By offering a training-free, inference-time solution (VISTA), it directly addresses a major obstacle hindering LVLMs' real-world applicability.  The insights into LVLMs' internal dynamics and the proposed method are highly relevant to current research efforts focused on improving LVLMs' reliability and trustworthiness.  **VISTA's efficiency and broad applicability make it a significant contribution**, opening new avenues for research into more robust and reliable multimodal AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.03628/x3.png)

> 🔼 This figure analyzes token ranking patterns during the image caption generation process of Large Vision-Language Models (LVLMs).  It uses data from 500 randomly selected images from the MS COCO dataset. The left panel shows the average token ranking across the last five layers of the LVLMs, illustrating how token rankings change over time (early, mid, and late generation stages).  The right panel displays the average token ranking across all time steps for each layer, highlighting the 'early excitation' phenomenon where semantically meaningful tokens reach peak activation earlier in the network layers than the final layer.
> <details>
> <summary>read the caption</summary>
> Figure 1: Analysis of token logits ranking patterns across 500 randomly selected images from MSCOCO dataset. Higher ranking indicates higher generation probability. Left: Average token ranking from the last five layers, showing temporal progression across early, mid, and late generation stages. Right: Layer-wise evolution of token rankings averaged across all time steps, demonstrating early-excitation phenomenon.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.8.8.9.1.1" rowspan="2"><span class="ltx_text" id="S3.T1.8.8.9.1.1.1">Decoding</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.8.8.9.1.2" rowspan="2"><span class="ltx_text" id="S3.T1.8.8.9.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.8.8.9.1.3">LLAVA-1.5 <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib25" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.8.8.9.1.4">MiniGPT-4 <cite class="ltx_cite ltx_citemacro_citep">(Zhu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib44" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.8.8.9.1.5">Shikra <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib3" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T1.8.8.9.1.6">InstructBLIP <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib7" title="">2023</a>)</cite>
</th>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1">CHAIR<math alttext="{}_{\text{S}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mmultiscripts id="S3.T1.1.1.1.1.m1.1.1"><mo id="S3.T1.1.1.1.1.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.1.1.1.1.m1.1.1a"></mprescripts><mtext id="S3.T1.1.1.1.1.m1.1.1.3">S</mtext><mrow id="S3.T1.1.1.1.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1b">{}_{\text{S}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1c">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.2.2.2.2">CHAIR<math alttext="{}_{\text{I}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mmultiscripts id="S3.T1.2.2.2.2.m1.1.1"><mo id="S3.T1.2.2.2.2.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.2.2.2.2.m1.1.1a"></mprescripts><mtext id="S3.T1.2.2.2.2.m1.1.1.3">I</mtext><mrow id="S3.T1.2.2.2.2.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1b">{}_{\text{I}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1c">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.3.3.3.3">CHAIR<math alttext="{}_{\text{S}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mmultiscripts id="S3.T1.3.3.3.3.m1.1.1"><mo id="S3.T1.3.3.3.3.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.3.3.3.3.m1.1.1a"></mprescripts><mtext id="S3.T1.3.3.3.3.m1.1.1.3">S</mtext><mrow id="S3.T1.3.3.3.3.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1b">{}_{\text{S}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1c">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.4.4.4.4">CHAIR<math alttext="{}_{\text{I}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mmultiscripts id="S3.T1.4.4.4.4.m1.1.1"><mo id="S3.T1.4.4.4.4.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.4.4.4.4.m1.1.1a"></mprescripts><mtext id="S3.T1.4.4.4.4.m1.1.1.3">I</mtext><mrow id="S3.T1.4.4.4.4.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1b">{}_{\text{I}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1c">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.5.5.5">CHAIR<math alttext="{}_{\text{S}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mmultiscripts id="S3.T1.5.5.5.5.m1.1.1"><mo id="S3.T1.5.5.5.5.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.5.5.5.5.m1.1.1a"></mprescripts><mtext id="S3.T1.5.5.5.5.m1.1.1.3">S</mtext><mrow id="S3.T1.5.5.5.5.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1b">{}_{\text{S}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1c">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.6.6.6.6">CHAIR<math alttext="{}_{\text{I}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.m1.1a"><mmultiscripts id="S3.T1.6.6.6.6.m1.1.1"><mo id="S3.T1.6.6.6.6.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.6.6.6.6.m1.1.1a"></mprescripts><mtext id="S3.T1.6.6.6.6.m1.1.1.3">I</mtext><mrow id="S3.T1.6.6.6.6.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.m1.1b">{}_{\text{I}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.m1.1c">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.7.7.7.7">CHAIR<math alttext="{}_{\text{S}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.m1.1a"><mmultiscripts id="S3.T1.7.7.7.7.m1.1.1"><mo id="S3.T1.7.7.7.7.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.7.7.7.7.m1.1.1a"></mprescripts><mtext id="S3.T1.7.7.7.7.m1.1.1.3">S</mtext><mrow id="S3.T1.7.7.7.7.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.m1.1b">{}_{\text{S}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.m1.1c">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.8.8.8.8">CHAIR<math alttext="{}_{\text{I}}\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.m1.1a"><mmultiscripts id="S3.T1.8.8.8.8.m1.1.1"><mo id="S3.T1.8.8.8.8.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S3.T1.8.8.8.8.m1.1.1a"></mprescripts><mtext id="S3.T1.8.8.8.8.m1.1.1.3">I</mtext><mrow id="S3.T1.8.8.8.8.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.m1.1b">{}_{\text{I}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.m1.1c">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT ↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.8.8.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.8.8.10.1.1" rowspan="5"><span class="ltx_text" id="S3.T1.8.8.10.1.1.1">Greedy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.8.8.10.1.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.3">46.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.4">12.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.5">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.6">10.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.7">56.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.8">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.10.1.9.1">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.1.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.10.1.10.1">10.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.11.2.1">DoLa  <cite class="ltx_cite ltx_citemacro_citep">(Chuang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.2">45.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.3">11.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.6">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.7">15.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.11.2.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.12.3.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.2">47.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.3">13.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.8">45.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3.9">12.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.13.4.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.2.1">22.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.3.1">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.4.1">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.5.1">10.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.6.1">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.13.4.7.1">11.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.13.4.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.14.5.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T1.8.8.14.5.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.2.1" style="background-color:#E6E6E6;">20.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.3.1" style="background-color:#E6E6E6;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.4.1" style="background-color:#E6E6E6;">19.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.5.1" style="background-color:#E6E6E6;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.6.1" style="background-color:#E6E6E6;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.7.1" style="background-color:#E6E6E6;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.8.1" style="background-color:#E6E6E6;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.14.5.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.14.5.9.1" style="background-color:#E6E6E6;">8.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.8.8.15.6.1" rowspan="5"><span class="ltx_text" id="S3.T1.8.8.15.6.1.1">Beam Search</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.8.8.15.6.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.3">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.4">12.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.5">33.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.6">11.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.7">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.8">14.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.15.6.9.1">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.15.6.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.15.6.10.1">10.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.16.7.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.2">49.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.3">12.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.8">49.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.16.7.9">13.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.17.8.1">OPERA <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib13" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.2">45.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.3">12.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.17.8.4.1">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.17.8.5.1">9.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.17.8.6.1">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.7">12.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.8">50.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.17.8.9">13.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.18.9.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.18.9.2.1">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.18.9.3.1">6.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.4">31.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.5">11.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.6">41.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.18.9.7.1">10.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.18.9.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.19.10.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T1.8.8.19.10.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.2.1" style="background-color:#E6E6E6;">17.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.3.1" style="background-color:#E6E6E6;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.4.1" style="background-color:#E6E6E6;">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.5.1" style="background-color:#E6E6E6;">6.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.6.1" style="background-color:#E6E6E6;">32.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.7.1" style="background-color:#E6E6E6;">9.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.8.1" style="background-color:#E6E6E6;">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.19.10.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.19.10.9.1" style="background-color:#E6E6E6;">7.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.20.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.8.8.20.11.1" rowspan="5"><span class="ltx_text" id="S3.T1.8.8.20.11.1.1">Nucleus Sampling</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.8.8.20.11.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.3">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.4">15.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.5">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.6">11.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.7">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.8">15.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.20.11.9.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.20.11.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.20.11.10.1">13.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.21.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.21.12.1">DoLa  <cite class="ltx_cite ltx_citemacro_citep">(Chuang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.2">47.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.3">14.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.6">56.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.7">16.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.21.12.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.22.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.22.13.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.2">60.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.3">16.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.8">57.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.22.13.9">16.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.23.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.23.14.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.2.1">30.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.3.1">10.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.4.1">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.5.1">13.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.6.1">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.8.8.23.14.7.1">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.23.14.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.24.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.8.8.24.15.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T1.8.8.24.15.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.2.1" style="background-color:#E6E6E6;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.3.1" style="background-color:#E6E6E6;">8.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.4.1" style="background-color:#E6E6E6;">18.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.5.1" style="background-color:#E6E6E6;">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.6.1" style="background-color:#E6E6E6;">31.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.7.1" style="background-color:#E6E6E6;">9.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.8.1" style="background-color:#E6E6E6;">29.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.24.15.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.24.15.9.1" style="background-color:#E6E6E6;">9.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of VISTA's performance against several state-of-the-art training-free hallucination reduction methods on the CHAIR benchmark.  The results are broken down by model architecture (LLaVA-1.5, MiniGPT-4, Shikra, InstructBLIP), decoding strategy (greedy, beam search, nucleus sampling), and evaluation metric (CHAIRs and CHAIR₁).  The maximum number of generated tokens was limited to 512.  The table highlights VISTA's consistent improvement across various models and decoding strategies, showcasing its effectiveness in reducing hallucination without requiring additional training or external supervision.  Results not available due to limitations in the released implementations are indicated with a hyphen.
> <details>
> <summary>read the caption</summary>
> Table 1: CHAIR hallucination evaluation results. We compare VISTA to state-of-the-art training-free methods that do not rely on external supervision. Maximum new token is set to 512. Best and second best results are bolded and underlined, respectively. “-” indicates the result is not supported by released implementation.
> </details>





### In-depth insights


#### Token Dynamics
Analyzing token dynamics in large vision-language models (LVLMs) offers crucial insights into their internal mechanisms and limitations.  **Tracking token rankings throughout the generation process reveals key patterns**:  a gradual loss of visual information where visually grounded tokens become less prominent, an early excitation of semantically meaningful tokens reaching peak activation before the final layer, and the presence of hidden genuine information, where visually relevant tokens maintain high rank despite not being selected for output.  Understanding these dynamics is essential to address the challenge of hallucination, **as the observed patterns directly relate to the tendency of LVLMs to prioritize language priors over visual context**. By analyzing token dynamics, researchers can uncover the interplay of visual and linguistic information in LVLMs, ultimately informing the development of methods to improve their reliability and reduce the occurrence of visually ungrounded outputs.

#### VISTA Framework
The VISTA framework, as described in the research paper, is a novel, training-free method designed to reduce hallucination in Large Vision-Language Models (LVLMs) during inference.  It cleverly leverages insights into the dynamics of token logits ranking throughout the generation process, identifying patterns of gradual visual information loss and early excitation of semantically meaningful tokens. **VISTA's core innovation lies in its two-pronged approach:**  first, it introduces a Visual Steering Vector (VSV) to reinforce visual information in activation space, counteracting the observed information loss.  Second, it utilizes a Self-Logits Augmentation (SLA) method, leveraging the early layer activation of important tokens to promote their decoding.  **The strength of VISTA is its training-free nature and broad applicability.**  It does not require model modifications or additional training data and can be integrated with various decoding strategies (greedy, beam search, nucleus sampling).  By combining VSV and SLA synergistically, VISTA effectively mitigates hallucination while promoting genuine, visually-grounded information, resulting in more reliable and accurate LVLMs output.  **The method's efficiency and flexibility make it a practical solution for improving existing LVLMs without significant computational overhead.**

#### Hallucination Study
A hypothetical "Hallucination Study" section in a vision-language model research paper would likely delve into the phenomenon of model hallucinations, exploring their causes, characteristics, and potential mitigation strategies.  The study might involve a detailed analysis of the model's internal workings during generation, possibly using techniques like **logit analysis** to track the probability scores of different tokens.  It could investigate the relative contributions of visual and textual information to the generation process, identifying scenarios where **language biases overwhelm visual cues**, leading to hallucinatory outputs. The research may also explore the influence of various decoding strategies (greedy, beam search, nucleus sampling) on the frequency and nature of hallucinations.  **Quantitative metrics** such as precision, recall, and F1-score would likely be employed to evaluate the severity of hallucinations across different tasks.  Furthermore, the study might propose and evaluate new methods for mitigating hallucinations, such as **training-free inference-time interventions** that adjust the model's internal activations or logits.  The evaluation could compare the effectiveness of the proposed method(s) against existing techniques.  Finally, the "Hallucination Study" section should provide a conclusive discussion summarizing the key findings, their implications for the development of more reliable vision-language models, and directions for future research.

#### Ablation Analysis
Ablation studies systematically evaluate the contribution of individual components within a complex system.  In the context of a research paper, an ablation analysis section would dissect a proposed method, removing or altering parts to understand their impact on overall performance.  **This helps isolate the key components driving the success of the method.**  A well-executed ablation study will show not only what works well but also why it works. For example, if a model uses several techniques, removing each one individually will reveal whether it is essential for improving the results or if another component could be removed instead.  **The results highlight the relative importance of each component**, guiding future design choices and refinement of the proposed approach.  **A well-designed ablation study strengthens the paper's findings** by demonstrating the robustness and necessity of the employed techniques, rather than simply reporting overall performance.  The clarity and detail in presenting ablation study results significantly contribute to the paper’s overall credibility and impact.

#### Future Work
Future work in this area could explore several promising avenues.  **Expanding VISTA's applicability to a broader range of LVLMs and decoding strategies** is crucial to establish its generalizability and robustness.  Investigating the potential for **integrating VISTA with other hallucination reduction techniques** could lead to synergistic improvements.  A deeper understanding of the interplay between VSV and SLA, perhaps through **more detailed ablation studies**, could lead to even more effective methods.  Finally, **exploring the use of VISTA in interactive scenarios** such as visual dialogue or question answering would greatly enhance its practical value and would necessitate further research into the dynamics of multi-turn interactions.  The impact of different visual encoders on VISTA's performance should also be examined.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.03628/x4.png)

> 🔼 This figure visualizes the changes in token rankings over time and across different layers of a Large Vision-Language Model (LVLM) during the text generation process.  The heatmaps show the ranking of tokens (words) based on their probability of being generated at each step.  Specifically, it tracks three types of tokens:  1) **Hidden Genuine Tokens:** Words that are visually present in the image but missing from the generated caption. 2) **Decoded Genuine Tokens:** Words correctly included in the caption that are visually grounded in the image. 3) **Hallucinated Tokens:** Words present in the generated caption that lack visual grounding in the image. The heatmaps reveal two key phenomena:  1) **Gradual Visual Information Loss:**  As generation proceeds, genuine tokens (both decoded and hidden) decrease in ranking, while hallucinated tokens rise in ranking. 2) **Early Excitation:** Semantically meaningful tokens reach their peak activation earlier in the network's layers than the final layer, suggesting a shift towards syntactic elements in the final layer's decisions.  Darker colors represent higher probability (i.e., higher ranking) for the tokens.
> <details>
> <summary>read the caption</summary>
> Figure 2: Token ranking heatmaps for a representative image, demonstrating the evolution of token rankings across model layers (vertical axis) and generation steps (horizontal axis). Darker colors indicate higher ranking. The visualization reveals both gradual visual information loss and early excitation phenomena.
> </details>



![](https://arxiv.org/html/2502.03628/x5.png)

> 🔼 VISTA, a training-free method for reducing hallucination in large vision-language models (LVLMs), is presented in this figure. It consists of two modules: Visual Steering Vector (VSV) and Self-Logits Augmentation (SLA). VSV leverages visual information from the image to counteract the loss of visual information during text generation. It does so by injecting a visual steering vector into the residual stream at each layer. Meanwhile, SLA uses the early excitation pattern of semantically meaningful tokens to guide decoding by incorporating early-layer logits into the final layer's logits.  The figure shows the flow of information through both modules. Note that while three separate forward passes are illustrated, they are not necessary in the actual implementation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architectural overview of VISTA. VISTA introduces two complementary mechanisms: VSV extracts and reinforces visual grounding information (Vssubscript𝑉𝑠V_{s}italic_V start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT) at inference, and SLA leverages early-layer semantic information to guide token generation. Note: While three separate forward passes are shown for illustration purpose, they can be avoided in implementation.
> </details>



![](https://arxiv.org/html/2502.03628/x6.png)

> 🔼 Figure 4 presents a detailed performance comparison of different Large Vision Language Models (LVLMs) on the MMHal-Bench benchmark.  MMHal-Bench is a comprehensive evaluation suite focusing on eight distinct question categories designed to assess various aspects of visual-language reasoning and holistic understanding.  The categories are: Attributes (ATTR), Adversarial Objects (ADV), Comparisons (COMP), Counting (COUNT), Spatial Relations (SPAT), Environmental Inference (ENV), Holistic Descriptions (HOL), and Others (OTHER).  The figure visually represents the performance of each model within each of these categories, showing their relative strengths and weaknesses in different aspects of visual-language understanding.  Performance scores are computed using GPT-4, a large language model serving as an evaluation oracle.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance comparison on MMHal-Bench across different question categories: attributes (ATTR), adversarial objects (ADV), comparisons (COMP), counting (COUNT), spatial relations (SPAT), environmental inference (ENV), holistic descriptions (HOL), and others (OTHER). Scores are computed using GPT-4 evaluation protocol.
> </details>



![](https://arxiv.org/html/2502.03628/x7.png)

> 🔼 This figure displays a comparison of token rankings across different stages of text generation for both a standard greedy decoding method and the proposed VISTA method, using the LLAVA-1.5 model.  The x-axis represents the generation stages (Early, Mid, Late), and the y-axis shows the average token rank.  Different colored lines represent different token types: Hidden Genuine Tokens (tokens present in the image but not generated), Decoded Genuine Tokens (tokens present in the image and generated), and Hallucinated Tokens (tokens not present in the image but generated). The graph visually demonstrates that VISTA effectively improves the ranking of genuine tokens (both hidden and decoded) while simultaneously reducing the ranking of hallucinated tokens.
> <details>
> <summary>read the caption</summary>
> Figure 5: Cross-stage token ranking comparison between greedy and VISTA on LLAVA-1.5. VISTA effectively promotes the ranking of genuine tokens while depressing hallucination tokens.
> </details>



![](https://arxiv.org/html/2502.03628/x8.png)

> 🔼 This figure visualizes the ablation study results on the Shikra model, analyzing the effects of varying VSV (Visual Steering Vector) strength (lambda) and SLA (Self-Logits Augmentation) mixing ratio (gamma) on the model's performance. Each cell in the matrix represents a combination of lambda and gamma values. The color intensity indicates performance, with brighter colors signifying better results.  Three matrices are shown: one for CHAIRs, CHAIR1, and F1 score. The red boxes highlight the parameter combinations used in the main experiments of the paper. The F1 score matrix is included to assess the overall generation quality, supplementing the hallucination metrics (CHAIRs and CHAIR1).
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation matrices for VSV strength (λ𝜆\lambdaitalic_λ) and SLA mixing ratio (γ𝛾\gammaitalic_γ) on Shikra. Brighter color signifies the better performance. Red boxes highlight the parameter combinations we used. F1 score is included to demonstrate the overall generation quality.
> </details>



![](https://arxiv.org/html/2502.03628/x9.png)

> 🔼 This figure shows the average token ranking across different generation stages (early, mid, late) for three token categories in the Shikra model: hidden genuine tokens, decoded genuine tokens, and hallucinated tokens.  The graph visually represents how the ranking of each token category changes over time during the text generation process.  It demonstrates trends related to concepts like gradual visual information loss and the early excitation of semantically meaningful tokens.
> <details>
> <summary>read the caption</summary>
> Figure 7: Cross-stage token ranking on Shikra.
> </details>



![](https://arxiv.org/html/2502.03628/x10.png)

> 🔼 This figure shows the average token ranking across different layers of the Shikra model.  It displays how the ranking of hidden genuine tokens (tokens present in the image but not in the generated caption), decoded genuine tokens (tokens present in both the image and the caption), and hallucinated tokens (tokens present in the caption but not in the image) changes as the model processes information through its layers.  The x-axis represents the layer number, and the y-axis represents the average token rank.
> <details>
> <summary>read the caption</summary>
> Figure 8: Layer-wise token rankings on Shikra.
> </details>



![](https://arxiv.org/html/2502.03628/x11.png)

> 🔼 This figure displays a comparison of average token rankings across different generation stages (early, mid, late) for three categories of tokens: hidden genuine tokens (correct tokens not generated), decoded genuine tokens (correct tokens generated), and hallucinated tokens (incorrect tokens generated).  The comparison is made between a baseline greedy decoding method and the proposed VISTA method (using greedy decoding). The results show that VISTA significantly improves the rankings of genuine tokens, particularly hidden genuine tokens that are not generated but still relevant to the image, while suppressing the rankings of hallucinated tokens.  This demonstrates VISTA's ability to enhance the generation of accurate tokens based on visual information while mitigating the generation of incorrect ones.
> <details>
> <summary>read the caption</summary>
> Figure 9: Cross-stage token ranking comparison between greedy and VISTA (greedy-based) on Shikra. VISTA effectively promotes the ranking of genuine tokens while depressing hallucination tokens.
> </details>



![](https://arxiv.org/html/2502.03628/x12.png)

> 🔼 This figure presents a comparison of performance across four large vision-language models (LLaVA-1.5, MiniGPT-4, Shikra, and InstructBLIP) on the MMHal-Bench benchmark, utilizing beam search as the decoding strategy. The MMHal-Bench benchmark assesses eight different aspects of model capabilities: object attributes (ATTR), adversarial objects (ADV), comparisons (COMP), counting (COUNT), spatial relations (SPAT), environmental inferences (ENV), holistic descriptions (HOL), and other miscellaneous tasks (OTHER).  The radar charts visually compare the performance of each model against the baseline (vanilla) performance, with VISTA showing improvements across various aspects.
> <details>
> <summary>read the caption</summary>
> Figure 10: Performance comparison on MMHal-Bench using beam search.
> </details>



![](https://arxiv.org/html/2502.03628/x13.png)

> 🔼 This figure presents a comparison of model performance on the MMHal-Bench benchmark, specifically focusing on the nucleus sampling decoding method.  It illustrates the relative strengths and weaknesses of different large vision-language models (LVLMs) in handling various aspects of visual and linguistic understanding, as measured by MMHal-Bench's eight distinct question categories.  The visualization likely uses radar charts or a similar technique to compare models across multiple dimensions of performance, highlighting which models excel in certain areas and where they struggle.
> <details>
> <summary>read the caption</summary>
> Figure 11: Performance comparison on MMHal-Bench using nucleus sampling.
> </details>



![](https://arxiv.org/html/2502.03628/x14.png)

> 🔼 This figure presents ablation study results on the MiniGPT-4 model, specifically focusing on the impact of two key parameters: Visual Steering Vector (VSV) strength (λ) and Self-Logits Augmentation (SLA) mixing ratio (γ).  The ablation matrices visualize how changes in these parameters affect three metrics: CHAIRs (sentence-level caption hallucination), CHAIR₁ (instance-level caption hallucination), and F1 (overall generation quality). Brighter colors in the matrices indicate better performance across all three metrics.  Red boxes highlight the specific parameter combinations (λ and γ values) that yielded the best results as reported in Table 1 of the paper. This helps readers understand the optimal balance between the two parameters for achieving the best performance in reducing hallucination without negatively impacting overall generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 12: Ablation matrices for VSV strength (λ𝜆\lambdaitalic_λ) and SLA mixing ratio (γ𝛾\gammaitalic_γ) on MiniGPT-4. Brighter color signifies the better performance, and red boxes highlight the parameter combinations used in Table 1. F1 score is included to indicate the overall generation quality.
> </details>



![](https://arxiv.org/html/2502.03628/x15.png)

> 🔼 This ablation study analyzes the effect of varying the visual steering vector (VSV) strength (λ) and self-logits augmentation (SLA) mixing ratio (γ) on the LLAVA-1.5 model.  The figure shows three matrices: one for CHAIRs, one for CHAIR₁, and one for F1 score.  Each matrix displays the performance of the model across different combinations of λ and γ.  Brighter colors indicate better performance. The red boxes highlight the specific parameter settings (λ and γ) used in the main experiments (Table 1) of the paper. The F1 score matrix provides a measure of the overall generation quality, balancing the effects of hallucination reduction and overall caption generation quality.  The study aims to find optimal values for λ and γ that strike a balance between reducing hallucinations and maintaining good caption quality.
> <details>
> <summary>read the caption</summary>
> Figure 13: Ablation matrices for VSV strength (λ𝜆\lambdaitalic_λ) and SLA mixing ratio (γ𝛾\gammaitalic_γ) on LLAVA-1.5. Brighter color signifies the better performance, and red boxes highlight the parameter combinations used in Table 1. F1 score is included to indicate the overall generation quality.
> </details>



![](https://arxiv.org/html/2502.03628/x16.png)

> 🔼 This figure presents ablation study results on the InstructBLIP model, showing the impact of varying the visual steering vector (VSV) strength (λ) and self-logits augmentation (SLA) mixing ratio (γ) on the model's performance.  The ablation matrices visualize the effects of these hyperparameters on three key metrics: CHAIRs (sentence-level hallucination), CHAIR₁ (instance-level hallucination), and F1 (overall generation quality). Brighter colors in the matrices indicate better performance. Red boxes highlight the specific parameter combinations (λ and γ) used in the main experiments of the paper (as detailed in Table 1). The F1 score provides a comprehensive measure of overall generation quality, balancing hallucination reduction with the generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 14: Ablation matrices for VSV strength (λ𝜆\lambdaitalic_λ) and SLA mixing ratio (γ𝛾\gammaitalic_γ) on InstructBLIP. Brighter color signifies the better performance, and red boxes highlight the parameter combinations used in Table 1. F1 score is included to indicate the overall generation quality.
> </details>



![](https://arxiv.org/html/2502.03628/x17.png)

> 🔼 This figure presents a qualitative case study showcasing the effectiveness of VISTA on LLAVA-1.5.  It displays examples of image captioning outputs generated by the vanilla LLAVA-1.5 model and VISTA enhanced LLAVA-1.5. The examples illustrate how VISTA improves the accuracy and detail of the generated captions, reducing hallucinations (incorrect details in captions not present in images) and including missing genuine information (details present in images but not captured in vanilla captions).  Each example includes the image, the vanilla caption, and VISTA caption.
> <details>
> <summary>read the caption</summary>
> Figure 15: Case study for LLAVA-1.5.
> </details>



![](https://arxiv.org/html/2502.03628/x18.png)

> 🔼 This figure showcases comparative examples of image captioning results between the vanilla MiniGPT-4 model and the VISTA-enhanced model.  Each pair of images presents the same input image, followed by a caption generated by the vanilla model and then a caption from VISTA. Differences between the two captions are highlighted to illustrate how VISTA reduces hallucination and improves the accuracy and completeness of the generated descriptions, focusing on object properties and relations.  Specifically, hallucinated elements in the vanilla captions are shown in red, while elements correctly added or corrected by VISTA are in blue.
> <details>
> <summary>read the caption</summary>
> Figure 16: Case study for MiniGPT-4.
> </details>



![](https://arxiv.org/html/2502.03628/x19.png)

> 🔼 This figure showcases a qualitative comparison between the vanilla Shikra model and the VISTA-enhanced Shikra model's performance on two image captioning examples.  The first example shows two girls sitting at a table enjoying donuts. The vanilla model's caption is generic and misses details such as the girls' glasses and the placement of a chair near the table. The VISTA model provides a more precise and detailed caption that includes the previously missed details.  The second example presents a picture of a man in a suit and tie, standing in a room with distinct features like paintings and books. Again, the vanilla model produces a less descriptive caption compared to the VISTA-enhanced model.  The VISTA caption provides more specific details about the man's appearance, the room's layout, and the additional items visible in the scene. This demonstrates VISTA's ability to enhance the Shikra model's image captioning abilities by including visually grounded details in the captions while reducing hallucinated or irrelevant details.
> <details>
> <summary>read the caption</summary>
> Figure 17: Case study for Shikra.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.8.8.9.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.8.8.9.1.1.1">Decoding</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.8.8.9.1.2" rowspan="2"><span class="ltx_text" id="S3.T2.8.8.9.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T2.8.8.9.1.3">LLAVA-1.5 <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib25" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T2.8.8.9.1.4">MiniGPT-4 <cite class="ltx_cite ltx_citemacro_citep">(Zhu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib44" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T2.8.8.9.1.5">Shikra <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib3" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.T2.8.8.9.1.6">InstructBLIP <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib7" title="">2023</a>)</cite>
</th>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1">Avg. Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.2.2.2.2">Avg. F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.3">Avg. Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.4.4.4.4">Avg. F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.5.5.5">Avg. Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.6.6.6.6">Avg. F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S3.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><ci id="S3.T2.6.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.7.7.7.7">Avg. Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.7.m1.1a"><mo id="S3.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.m1.1b"><ci id="S3.T2.7.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.8.8.8.8">Avg. F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.8.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.8.m1.1a"><mo id="S3.T2.8.8.8.8.m1.1.1" stretchy="false" xref="S3.T2.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.8.m1.1b"><ci id="S3.T2.8.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.8.8.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.8.10.1.1" rowspan="5"><span class="ltx_text" id="S3.T2.8.8.10.1.1.1">Greedy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.8.10.1.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.3">84.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.4">85.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.10.1.5.1">76.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.6">76.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.7">81.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.10.1.8.1">82.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.9">84.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1.10">84.64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.11.2.1">DoLa <cite class="ltx_cite ltx_citemacro_citep">(Chuang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.2">84.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.3">85.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.6">81.13</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.7">81.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.12.3.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.2">84.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.3">85.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.12.3.8.1">84.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.12.3.9.1">85.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.13.4.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.13.4.2.1">85.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.13.4.3.1">86.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.4">75.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.13.4.5.1">77.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.13.4.6.1">81.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.7">80.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.14.5.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T2.8.8.14.5.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.2.1" style="background-color:#E6E6E6;">86.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.3.1" style="background-color:#E6E6E6;">86.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.4.1" style="background-color:#E6E6E6;">77.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.5.1" style="background-color:#E6E6E6;">77.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.6.1" style="background-color:#E6E6E6;">82.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.7.1" style="background-color:#E6E6E6;">82.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.8.1" style="background-color:#E6E6E6;">84.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.5.9.1" style="background-color:#E6E6E6;">84.95</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.8.15.6.1" rowspan="5"><span class="ltx_text" id="S3.T2.8.8.15.6.1.1">Beam Search</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.8.15.6.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.3">85.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.4">84.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.5">73.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.6">72.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.7">81.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.8">82.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.9">84.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.15.6.10">83.71</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.16.7.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.16.7.2.1">85.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.3">85.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.8">84.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7.9">84.43</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.17.8.1">OPERA <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib13" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.2">85.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.3">85.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.4.1">74.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.5.1">75.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.6.1">82.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.7.1">82.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.8.1">85.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.17.8.9.1">85.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.18.9.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.18.9.2.1">86.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.18.9.3.1">85.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.4">73.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.5">74.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.6">81.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.7">81.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.19.10.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T2.8.8.19.10.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T2.8.8.19.10.2.1" style="background-color:#E6E6E6;">85.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.3.1" style="background-color:#E6E6E6;">85.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.4.1" style="background-color:#E6E6E6;">75.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.5.1" style="background-color:#E6E6E6;">77.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.6.1" style="background-color:#E6E6E6;">82.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.7.1" style="background-color:#E6E6E6;">82.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.8.1" style="background-color:#E6E6E6;">85.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.10.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.10.9.1" style="background-color:#E6E6E6;">85.74</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.20.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T2.8.8.20.11.1" rowspan="5"><span class="ltx_text" id="S3.T2.8.8.20.11.1.1">Nucleus Sampling</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.8.20.11.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.3">81.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.4">82.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.5">60.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.6">62.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.7">78.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.8">80.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.9">78.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.20.11.10">79.74</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.21.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.21.12.1">DoLa <cite class="ltx_cite ltx_citemacro_citep">(Chuang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.2">81.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.3">82.44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.21.12.6.1">79.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.21.12.7.1">80.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.12.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.22.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.22.13.1">VCD <cite class="ltx_cite ltx_citemacro_citep">(Leng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib17" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.2">81.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.3">82.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.7">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.22.13.8.1">79.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.13.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.22.13.9.1">80.43</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.23.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.8.8.23.14.1">PAI <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03628v1#bib.bib30" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.23.14.2.1">81.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.23.14.3.1">83.16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.23.14.4.1">61.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.23.14.5.1">63.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.6">79.25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.7">79.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.23.14.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.24.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.8.8.24.15.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.1.1" style="background-color:#E6E6E6;">VISTA<span class="ltx_text ltx_font_medium" id="S3.T2.8.8.24.15.1.1.1"> (ours)</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.2.1" style="background-color:#E6E6E6;">85.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.3.1" style="background-color:#E6E6E6;">85.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.4.1" style="background-color:#E6E6E6;">66.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.5.1" style="background-color:#E6E6E6;">68.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.6.1" style="background-color:#E6E6E6;">81.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.7.1" style="background-color:#E6E6E6;">81.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.8" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.8.1" style="background-color:#E6E6E6;">83.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.24.15.9" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.24.15.9.1" style="background-color:#E6E6E6;">83.27</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of the POPE benchmark across four different Large Vision-Language Models (LLaVA-1.5, MiniGPT-4, Shikra, and InstructBLIP).  The POPE benchmark assesses object hallucination in image captioning by evaluating the model's ability to accurately identify objects in images through visual question answering. The evaluation is conducted using three different sets of objects: random, frequently appearing, and adversarially selected. The table displays the average accuracy and F1 scores across these object sets for each model under various decoding strategies (greedy, beam search, and nucleus sampling). Best and second-best results are highlighted for easy comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation results on POPE benchmark across four LVLMs. Results show averaged accuracy and F1 scores computed across random, popular, and adversarial object splits. Best and second best results are bolded and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.1.1.1.1.1"><span class="ltx_text" id="S3.T3.1.1.1.1.1.1">Decoding</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.1.1.1.1.2"><span class="ltx_text" id="S3.T3.1.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1.3">LLAVA-1.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1.4">MiniGPT-4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1.5">Shikra</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1.6">InstructBLIP</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.2.1.1" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.2.1.1.1">Greedy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.2.1.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.1.3">1752.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.1.4">969.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.1.5">1101.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.2.1.6">1355.25</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.1.1">VISTA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.2.1">1771.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.3.1">1041.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.4.1">1256.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.5.1">1364.05</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.4.3.1" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.4.3.1.1">Beam</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.4.3.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3.3">1749.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3.4">869.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3.5">1223.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.4.3.6">1357.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.1.1">VISTA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.2.1">1763.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.3.1">1062.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.4.1">1323.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.5.4.5.1">1366.57</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T3.1.1.6.5.1" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.6.5.1.1">Nucleus</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.6.5.2">Vanilla</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.5.3">1625.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.5.4">845.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.5.5">1069.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.6.5.6">1397.71</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.1.1.7.6.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.6.1.1">VISTA</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.6.2.1">1738.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.6.3.1">1069.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.6.4.1">1254.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.7.6.5.1">1447.36</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive evaluation of four large vision-language models (LLaVA-1.5, MiniGPT-4, Shikra, and InstructBLIP) across a range of perceptual, reasoning, and knowledge-based tasks, as measured by the Multimodal Machine Evaluation (MME) benchmark.  The table shows the overall performance scores achieved by each model under three different decoding strategies (greedy, beam search, and nucleus sampling).  Higher scores reflect better overall performance across all task categories, indicating superior general capabilities in multimodal understanding and reasoning.
> <details>
> <summary>read the caption</summary>
> Table 3: Overall performance scores on MME full evaluation set. Higher scores indicate better general capability across perception, reasoning, and knowledge-based tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.19.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.9.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T4.9.1.1.1.1"><math alttext="\gamma" class="ltx_Math" display="inline" id="S3.T4.9.1.1.1.1.m1.1"><semantics id="S3.T4.9.1.1.1.1.m1.1a"><mi id="S3.T4.9.1.1.1.1.m1.1.1" xref="S3.T4.9.1.1.1.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="S3.T4.9.1.1.1.1.m1.1b"><ci id="S3.T4.9.1.1.1.1.m1.1.1.cmml" xref="S3.T4.9.1.1.1.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.9.1.1.1.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="S3.T4.9.1.1.1.1.m1.1d">italic_γ</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T4.9.1.1.2">31-31</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T4.9.1.1.3">30-31</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T4.9.1.1.4">29-31</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T4.9.1.1.5">28-31</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T4.9.1.1.6">27-31</th>
</tr>
<tr class="ltx_tr" id="S3.T4.19.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.10.2.2.1">C<math alttext="{}_{\text{S}}" class="ltx_Math" display="inline" id="S3.T4.10.2.2.1.m1.1"><semantics id="S3.T4.10.2.2.1.m1.1a"><msub id="S3.T4.10.2.2.1.m1.1.1" xref="S3.T4.10.2.2.1.m1.1.1.cmml"><mi id="S3.T4.10.2.2.1.m1.1.1a" xref="S3.T4.10.2.2.1.m1.1.1.cmml"></mi><mtext id="S3.T4.10.2.2.1.m1.1.1.1" xref="S3.T4.10.2.2.1.m1.1.1.1a.cmml">S</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.10.2.2.1.m1.1b"><apply id="S3.T4.10.2.2.1.m1.1.1.cmml" xref="S3.T4.10.2.2.1.m1.1.1"><ci id="S3.T4.10.2.2.1.m1.1.1.1a.cmml" xref="S3.T4.10.2.2.1.m1.1.1.1"><mtext id="S3.T4.10.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.10.2.2.1.m1.1.1.1">S</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.10.2.2.1.m1.1c">{}_{\text{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.10.2.2.1.m1.1d">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.11.3.3.2">C<math alttext="{}_{\text{I}}" class="ltx_Math" display="inline" id="S3.T4.11.3.3.2.m1.1"><semantics id="S3.T4.11.3.3.2.m1.1a"><msub id="S3.T4.11.3.3.2.m1.1.1" xref="S3.T4.11.3.3.2.m1.1.1.cmml"><mi id="S3.T4.11.3.3.2.m1.1.1a" xref="S3.T4.11.3.3.2.m1.1.1.cmml"></mi><mtext id="S3.T4.11.3.3.2.m1.1.1.1" xref="S3.T4.11.3.3.2.m1.1.1.1a.cmml">I</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.11.3.3.2.m1.1b"><apply id="S3.T4.11.3.3.2.m1.1.1.cmml" xref="S3.T4.11.3.3.2.m1.1.1"><ci id="S3.T4.11.3.3.2.m1.1.1.1a.cmml" xref="S3.T4.11.3.3.2.m1.1.1.1"><mtext id="S3.T4.11.3.3.2.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.11.3.3.2.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.11.3.3.2.m1.1c">{}_{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.11.3.3.2.m1.1d">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.11">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.12.4.4.3">C<math alttext="{}_{\text{S}}" class="ltx_Math" display="inline" id="S3.T4.12.4.4.3.m1.1"><semantics id="S3.T4.12.4.4.3.m1.1a"><msub id="S3.T4.12.4.4.3.m1.1.1" xref="S3.T4.12.4.4.3.m1.1.1.cmml"><mi id="S3.T4.12.4.4.3.m1.1.1a" xref="S3.T4.12.4.4.3.m1.1.1.cmml"></mi><mtext id="S3.T4.12.4.4.3.m1.1.1.1" xref="S3.T4.12.4.4.3.m1.1.1.1a.cmml">S</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.12.4.4.3.m1.1b"><apply id="S3.T4.12.4.4.3.m1.1.1.cmml" xref="S3.T4.12.4.4.3.m1.1.1"><ci id="S3.T4.12.4.4.3.m1.1.1.1a.cmml" xref="S3.T4.12.4.4.3.m1.1.1.1"><mtext id="S3.T4.12.4.4.3.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.12.4.4.3.m1.1.1.1">S</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.12.4.4.3.m1.1c">{}_{\text{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.12.4.4.3.m1.1d">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.13.5.5.4">C<math alttext="{}_{\text{I}}" class="ltx_Math" display="inline" id="S3.T4.13.5.5.4.m1.1"><semantics id="S3.T4.13.5.5.4.m1.1a"><msub id="S3.T4.13.5.5.4.m1.1.1" xref="S3.T4.13.5.5.4.m1.1.1.cmml"><mi id="S3.T4.13.5.5.4.m1.1.1a" xref="S3.T4.13.5.5.4.m1.1.1.cmml"></mi><mtext id="S3.T4.13.5.5.4.m1.1.1.1" xref="S3.T4.13.5.5.4.m1.1.1.1a.cmml">I</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.13.5.5.4.m1.1b"><apply id="S3.T4.13.5.5.4.m1.1.1.cmml" xref="S3.T4.13.5.5.4.m1.1.1"><ci id="S3.T4.13.5.5.4.m1.1.1.1a.cmml" xref="S3.T4.13.5.5.4.m1.1.1.1"><mtext id="S3.T4.13.5.5.4.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.13.5.5.4.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.13.5.5.4.m1.1c">{}_{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.13.5.5.4.m1.1d">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.12">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.14.6.6.5">C<math alttext="{}_{\text{S}}" class="ltx_Math" display="inline" id="S3.T4.14.6.6.5.m1.1"><semantics id="S3.T4.14.6.6.5.m1.1a"><msub id="S3.T4.14.6.6.5.m1.1.1" xref="S3.T4.14.6.6.5.m1.1.1.cmml"><mi id="S3.T4.14.6.6.5.m1.1.1a" xref="S3.T4.14.6.6.5.m1.1.1.cmml"></mi><mtext id="S3.T4.14.6.6.5.m1.1.1.1" xref="S3.T4.14.6.6.5.m1.1.1.1a.cmml">S</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.14.6.6.5.m1.1b"><apply id="S3.T4.14.6.6.5.m1.1.1.cmml" xref="S3.T4.14.6.6.5.m1.1.1"><ci id="S3.T4.14.6.6.5.m1.1.1.1a.cmml" xref="S3.T4.14.6.6.5.m1.1.1.1"><mtext id="S3.T4.14.6.6.5.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.14.6.6.5.m1.1.1.1">S</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.14.6.6.5.m1.1c">{}_{\text{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.14.6.6.5.m1.1d">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.15.7.7.6">C<math alttext="{}_{\text{I}}" class="ltx_Math" display="inline" id="S3.T4.15.7.7.6.m1.1"><semantics id="S3.T4.15.7.7.6.m1.1a"><msub id="S3.T4.15.7.7.6.m1.1.1" xref="S3.T4.15.7.7.6.m1.1.1.cmml"><mi id="S3.T4.15.7.7.6.m1.1.1a" xref="S3.T4.15.7.7.6.m1.1.1.cmml"></mi><mtext id="S3.T4.15.7.7.6.m1.1.1.1" xref="S3.T4.15.7.7.6.m1.1.1.1a.cmml">I</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.15.7.7.6.m1.1b"><apply id="S3.T4.15.7.7.6.m1.1.1.cmml" xref="S3.T4.15.7.7.6.m1.1.1"><ci id="S3.T4.15.7.7.6.m1.1.1.1a.cmml" xref="S3.T4.15.7.7.6.m1.1.1.1"><mtext id="S3.T4.15.7.7.6.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.15.7.7.6.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.15.7.7.6.m1.1c">{}_{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.15.7.7.6.m1.1d">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.13">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.16.8.8.7">C<math alttext="{}_{\text{S}}" class="ltx_Math" display="inline" id="S3.T4.16.8.8.7.m1.1"><semantics id="S3.T4.16.8.8.7.m1.1a"><msub id="S3.T4.16.8.8.7.m1.1.1" xref="S3.T4.16.8.8.7.m1.1.1.cmml"><mi id="S3.T4.16.8.8.7.m1.1.1a" xref="S3.T4.16.8.8.7.m1.1.1.cmml"></mi><mtext id="S3.T4.16.8.8.7.m1.1.1.1" xref="S3.T4.16.8.8.7.m1.1.1.1a.cmml">S</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.16.8.8.7.m1.1b"><apply id="S3.T4.16.8.8.7.m1.1.1.cmml" xref="S3.T4.16.8.8.7.m1.1.1"><ci id="S3.T4.16.8.8.7.m1.1.1.1a.cmml" xref="S3.T4.16.8.8.7.m1.1.1.1"><mtext id="S3.T4.16.8.8.7.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.16.8.8.7.m1.1.1.1">S</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.16.8.8.7.m1.1c">{}_{\text{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.16.8.8.7.m1.1d">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.17.9.9.8">C<math alttext="{}_{\text{I}}" class="ltx_Math" display="inline" id="S3.T4.17.9.9.8.m1.1"><semantics id="S3.T4.17.9.9.8.m1.1a"><msub id="S3.T4.17.9.9.8.m1.1.1" xref="S3.T4.17.9.9.8.m1.1.1.cmml"><mi id="S3.T4.17.9.9.8.m1.1.1a" xref="S3.T4.17.9.9.8.m1.1.1.cmml"></mi><mtext id="S3.T4.17.9.9.8.m1.1.1.1" xref="S3.T4.17.9.9.8.m1.1.1.1a.cmml">I</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.17.9.9.8.m1.1b"><apply id="S3.T4.17.9.9.8.m1.1.1.cmml" xref="S3.T4.17.9.9.8.m1.1.1"><ci id="S3.T4.17.9.9.8.m1.1.1.1a.cmml" xref="S3.T4.17.9.9.8.m1.1.1.1"><mtext id="S3.T4.17.9.9.8.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.17.9.9.8.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.17.9.9.8.m1.1c">{}_{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.17.9.9.8.m1.1d">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.14">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.18.10.10.9">C<math alttext="{}_{\text{S}}" class="ltx_Math" display="inline" id="S3.T4.18.10.10.9.m1.1"><semantics id="S3.T4.18.10.10.9.m1.1a"><msub id="S3.T4.18.10.10.9.m1.1.1" xref="S3.T4.18.10.10.9.m1.1.1.cmml"><mi id="S3.T4.18.10.10.9.m1.1.1a" xref="S3.T4.18.10.10.9.m1.1.1.cmml"></mi><mtext id="S3.T4.18.10.10.9.m1.1.1.1" xref="S3.T4.18.10.10.9.m1.1.1.1a.cmml">S</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.18.10.10.9.m1.1b"><apply id="S3.T4.18.10.10.9.m1.1.1.cmml" xref="S3.T4.18.10.10.9.m1.1.1"><ci id="S3.T4.18.10.10.9.m1.1.1.1a.cmml" xref="S3.T4.18.10.10.9.m1.1.1.1"><mtext id="S3.T4.18.10.10.9.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.18.10.10.9.m1.1.1.1">S</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.18.10.10.9.m1.1c">{}_{\text{S}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.18.10.10.9.m1.1d">start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.10">C<math alttext="{}_{\text{I}}" class="ltx_Math" display="inline" id="S3.T4.19.11.11.10.m1.1"><semantics id="S3.T4.19.11.11.10.m1.1a"><msub id="S3.T4.19.11.11.10.m1.1.1" xref="S3.T4.19.11.11.10.m1.1.1.cmml"><mi id="S3.T4.19.11.11.10.m1.1.1a" xref="S3.T4.19.11.11.10.m1.1.1.cmml"></mi><mtext id="S3.T4.19.11.11.10.m1.1.1.1" xref="S3.T4.19.11.11.10.m1.1.1.1a.cmml">I</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.19.11.11.10.m1.1b"><apply id="S3.T4.19.11.11.10.m1.1.1.cmml" xref="S3.T4.19.11.11.10.m1.1.1"><ci id="S3.T4.19.11.11.10.m1.1.1.1a.cmml" xref="S3.T4.19.11.11.10.m1.1.1.1"><mtext id="S3.T4.19.11.11.10.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.19.11.11.10.m1.1.1.1">I</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.19.11.11.10.m1.1c">{}_{\text{I}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.19.11.11.10.m1.1d">start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.19.11.11.15">F1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.19.11.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.19.11.12.1.1">0.1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.2">48.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.3">13.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.4">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.5">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.6">12.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.7">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.8">46.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.9">12.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.10">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.11">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.12">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.13">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.14">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.15">11.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.19.11.12.1.16">77.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.19.11.13.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.19.11.13.2.1">0.2</th>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.2">56.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.3">16.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.4">75.3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.5">49.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.6">14.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.7">76.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.8">47.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.9">12.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.10">77.3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.11">46.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.12">12.1</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.13">77.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.14">43.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.15">11.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.13.2.16">77.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.19.11.14.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.19.11.14.3.1">0.3</th>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.2">62.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.3">18.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.4">72.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.5">55.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.6">15.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.7">75.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.8">49.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.9">14.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.10">76.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.11">45.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.12">12.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.13">77.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.14" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T4.19.11.14.3.14.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T4.19.11.14.3.14.1.1">42.8</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.15" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T4.19.11.14.3.15.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T4.19.11.14.3.15.1.1">11.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.11.14.3.16" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T4.19.11.14.3.16.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T4.19.11.14.3.16.1.1">78.4</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.19.11.15.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.19.11.15.4.1">0.4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.2">61.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.3">18.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.4">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.5">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.6">15.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.7">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.8">52.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.9">14.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.10">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.11">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.12">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.13">77.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.14">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.15">12.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.19.11.15.4.16">77.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study result on the impact of different window sizes in the Self-Logits Augmentation (SLA) module on the model's performance.  The window size (w) determines how many layers before the final layer are used to compute the augmentation logits.  The experiment varies the window size (w) from 27 to 31 layers before the last layer (31).  The table shows the results of CHAIRS and CHAIRI metrics which evaluate the level of hallucination in the generated captions. The F1 score, representing the overall performance, is also included.  This analysis helps to understand the optimal window size for balancing the benefits of including information from earlier layers against potential noise or irrelevant information.
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of window size on SLA performance. Layer ranges (X-31) indicate the span of layers used for logit augmentation, where X varies from 27 to 31. CSS{}_{\text{S}}start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT and CII{}_{\text{I}}start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT denote CHAIRSS{}_{\text{S}}start_FLOATSUBSCRIPT S end_FLOATSUBSCRIPT and CHAIRII{}_{\text{I}}start_FLOATSUBSCRIPT I end_FLOATSUBSCRIPT metrics, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T5.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T5.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T5.10.10.11.1.1">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T5.10.10.11.1.2">Greedy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.10.10.11.1.3">VCD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.10.10.11.1.4">PAI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.10.10.11.1.5">
<span class="ltx_text ltx_font_bold" id="S3.T5.10.10.11.1.5.1">VISTA</span> (ours)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.1.1.1.1">Latency (ms/token) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T5.1.1.1.1.m1.1"><semantics id="S3.T5.1.1.1.1.m1.1a"><mo id="S3.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T5.1.1.1.1.m1.1b"><ci id="S3.T5.1.1.1.1.m1.1.1.cmml" xref="S3.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.2.2.2.2">28.54 (<math alttext="\times 1.0" class="ltx_Math" display="inline" id="S3.T5.2.2.2.2.m1.1"><semantics id="S3.T5.2.2.2.2.m1.1a"><mrow id="S3.T5.2.2.2.2.m1.1.1" xref="S3.T5.2.2.2.2.m1.1.1.cmml"><mi id="S3.T5.2.2.2.2.m1.1.1.2" xref="S3.T5.2.2.2.2.m1.1.1.2.cmml"></mi><mo id="S3.T5.2.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.2.2.2.2.m1.1.1.1.cmml">×</mo><mn id="S3.T5.2.2.2.2.m1.1.1.3" xref="S3.T5.2.2.2.2.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.2.2.2.2.m1.1b"><apply id="S3.T5.2.2.2.2.m1.1.1.cmml" xref="S3.T5.2.2.2.2.m1.1.1"><times id="S3.T5.2.2.2.2.m1.1.1.1.cmml" xref="S3.T5.2.2.2.2.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.2.2.2.2.m1.1.1.2.cmml" xref="S3.T5.2.2.2.2.m1.1.1.2">absent</csymbol><cn id="S3.T5.2.2.2.2.m1.1.1.3.cmml" type="float" xref="S3.T5.2.2.2.2.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.2.2.2.2.m1.1c">\times 1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T5.2.2.2.2.m1.1d">× 1.0</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.3.3.3.3">58.34 (<math alttext="\times 2.04" class="ltx_Math" display="inline" id="S3.T5.3.3.3.3.m1.1"><semantics id="S3.T5.3.3.3.3.m1.1a"><mrow id="S3.T5.3.3.3.3.m1.1.1" xref="S3.T5.3.3.3.3.m1.1.1.cmml"><mi id="S3.T5.3.3.3.3.m1.1.1.2" xref="S3.T5.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.3.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.3.3.3.3.m1.1.1.1.cmml">×</mo><mn id="S3.T5.3.3.3.3.m1.1.1.3" xref="S3.T5.3.3.3.3.m1.1.1.3.cmml">2.04</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.3.3.3.3.m1.1b"><apply id="S3.T5.3.3.3.3.m1.1.1.cmml" xref="S3.T5.3.3.3.3.m1.1.1"><times id="S3.T5.3.3.3.3.m1.1.1.1.cmml" xref="S3.T5.3.3.3.3.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.3.3.3.3.m1.1.1.2.cmml" xref="S3.T5.3.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.3.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T5.3.3.3.3.m1.1.1.3">2.04</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.3.3.3.3.m1.1c">\times 2.04</annotation><annotation encoding="application/x-llamapun" id="S3.T5.3.3.3.3.m1.1d">× 2.04</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.4.4.4.4">57.78 (<math alttext="\times 2.02" class="ltx_Math" display="inline" id="S3.T5.4.4.4.4.m1.1"><semantics id="S3.T5.4.4.4.4.m1.1a"><mrow id="S3.T5.4.4.4.4.m1.1.1" xref="S3.T5.4.4.4.4.m1.1.1.cmml"><mi id="S3.T5.4.4.4.4.m1.1.1.2" xref="S3.T5.4.4.4.4.m1.1.1.2.cmml"></mi><mo id="S3.T5.4.4.4.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.4.4.4.4.m1.1.1.1.cmml">×</mo><mn id="S3.T5.4.4.4.4.m1.1.1.3" xref="S3.T5.4.4.4.4.m1.1.1.3.cmml">2.02</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.4.4.4.4.m1.1b"><apply id="S3.T5.4.4.4.4.m1.1.1.cmml" xref="S3.T5.4.4.4.4.m1.1.1"><times id="S3.T5.4.4.4.4.m1.1.1.1.cmml" xref="S3.T5.4.4.4.4.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.4.4.4.4.m1.1.1.2.cmml" xref="S3.T5.4.4.4.4.m1.1.1.2">absent</csymbol><cn id="S3.T5.4.4.4.4.m1.1.1.3.cmml" type="float" xref="S3.T5.4.4.4.4.m1.1.1.3">2.02</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.4.4.4.4.m1.1c">\times 2.02</annotation><annotation encoding="application/x-llamapun" id="S3.T5.4.4.4.4.m1.1d">× 2.02</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T5.5.5.5.5.1">36.32 (<math alttext="\times 1.27" class="ltx_Math" display="inline" id="S3.T5.5.5.5.5.1.m1.1"><semantics id="S3.T5.5.5.5.5.1.m1.1a"><mrow id="S3.T5.5.5.5.5.1.m1.1.1" xref="S3.T5.5.5.5.5.1.m1.1.1.cmml"><mi id="S3.T5.5.5.5.5.1.m1.1.1.2" xref="S3.T5.5.5.5.5.1.m1.1.1.2.cmml"></mi><mo id="S3.T5.5.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.5.5.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S3.T5.5.5.5.5.1.m1.1.1.3" xref="S3.T5.5.5.5.5.1.m1.1.1.3.cmml">1.27</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.5.5.5.5.1.m1.1b"><apply id="S3.T5.5.5.5.5.1.m1.1.1.cmml" xref="S3.T5.5.5.5.5.1.m1.1.1"><times id="S3.T5.5.5.5.5.1.m1.1.1.1.cmml" xref="S3.T5.5.5.5.5.1.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.5.5.5.5.1.m1.1.1.2.cmml" xref="S3.T5.5.5.5.5.1.m1.1.1.2">absent</csymbol><cn id="S3.T5.5.5.5.5.1.m1.1.1.3.cmml" type="float" xref="S3.T5.5.5.5.5.1.m1.1.1.3">1.27</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.5.5.5.5.1.m1.1c">\times 1.27</annotation><annotation encoding="application/x-llamapun" id="S3.T5.5.5.5.5.1.m1.1d">× 1.27</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T5.6.6.6.1">Throughput (token/s) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T5.6.6.6.1.m1.1"><semantics id="S3.T5.6.6.6.1.m1.1a"><mo id="S3.T5.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T5.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T5.6.6.6.1.m1.1b"><ci id="S3.T5.6.6.6.1.m1.1.1.cmml" xref="S3.T5.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.6.6.6.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T5.7.7.7.2">35.04 (<math alttext="\times 1.0" class="ltx_Math" display="inline" id="S3.T5.7.7.7.2.m1.1"><semantics id="S3.T5.7.7.7.2.m1.1a"><mrow id="S3.T5.7.7.7.2.m1.1.1" xref="S3.T5.7.7.7.2.m1.1.1.cmml"><mi id="S3.T5.7.7.7.2.m1.1.1.2" xref="S3.T5.7.7.7.2.m1.1.1.2.cmml"></mi><mo id="S3.T5.7.7.7.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.7.7.7.2.m1.1.1.1.cmml">×</mo><mn id="S3.T5.7.7.7.2.m1.1.1.3" xref="S3.T5.7.7.7.2.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.7.7.7.2.m1.1b"><apply id="S3.T5.7.7.7.2.m1.1.1.cmml" xref="S3.T5.7.7.7.2.m1.1.1"><times id="S3.T5.7.7.7.2.m1.1.1.1.cmml" xref="S3.T5.7.7.7.2.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.7.7.7.2.m1.1.1.2.cmml" xref="S3.T5.7.7.7.2.m1.1.1.2">absent</csymbol><cn id="S3.T5.7.7.7.2.m1.1.1.3.cmml" type="float" xref="S3.T5.7.7.7.2.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.7.7.7.2.m1.1c">\times 1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T5.7.7.7.2.m1.1d">× 1.0</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.8.8.8.3">17.14 (<math alttext="\times 0.49" class="ltx_Math" display="inline" id="S3.T5.8.8.8.3.m1.1"><semantics id="S3.T5.8.8.8.3.m1.1a"><mrow id="S3.T5.8.8.8.3.m1.1.1" xref="S3.T5.8.8.8.3.m1.1.1.cmml"><mi id="S3.T5.8.8.8.3.m1.1.1.2" xref="S3.T5.8.8.8.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.8.8.8.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.8.8.8.3.m1.1.1.1.cmml">×</mo><mn id="S3.T5.8.8.8.3.m1.1.1.3" xref="S3.T5.8.8.8.3.m1.1.1.3.cmml">0.49</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.8.8.8.3.m1.1b"><apply id="S3.T5.8.8.8.3.m1.1.1.cmml" xref="S3.T5.8.8.8.3.m1.1.1"><times id="S3.T5.8.8.8.3.m1.1.1.1.cmml" xref="S3.T5.8.8.8.3.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.8.8.8.3.m1.1.1.2.cmml" xref="S3.T5.8.8.8.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.8.8.8.3.m1.1.1.3.cmml" type="float" xref="S3.T5.8.8.8.3.m1.1.1.3">0.49</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.8.8.8.3.m1.1c">\times 0.49</annotation><annotation encoding="application/x-llamapun" id="S3.T5.8.8.8.3.m1.1d">× 0.49</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.9.9.9.4">17.31 (<math alttext="\times 0.49" class="ltx_Math" display="inline" id="S3.T5.9.9.9.4.m1.1"><semantics id="S3.T5.9.9.9.4.m1.1a"><mrow id="S3.T5.9.9.9.4.m1.1.1" xref="S3.T5.9.9.9.4.m1.1.1.cmml"><mi id="S3.T5.9.9.9.4.m1.1.1.2" xref="S3.T5.9.9.9.4.m1.1.1.2.cmml"></mi><mo id="S3.T5.9.9.9.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.9.9.9.4.m1.1.1.1.cmml">×</mo><mn id="S3.T5.9.9.9.4.m1.1.1.3" xref="S3.T5.9.9.9.4.m1.1.1.3.cmml">0.49</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.9.9.9.4.m1.1b"><apply id="S3.T5.9.9.9.4.m1.1.1.cmml" xref="S3.T5.9.9.9.4.m1.1.1"><times id="S3.T5.9.9.9.4.m1.1.1.1.cmml" xref="S3.T5.9.9.9.4.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.9.9.9.4.m1.1.1.2.cmml" xref="S3.T5.9.9.9.4.m1.1.1.2">absent</csymbol><cn id="S3.T5.9.9.9.4.m1.1.1.3.cmml" type="float" xref="S3.T5.9.9.9.4.m1.1.1.3">0.49</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.9.9.9.4.m1.1c">\times 0.49</annotation><annotation encoding="application/x-llamapun" id="S3.T5.9.9.9.4.m1.1d">× 0.49</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.10.10.10.5"><span class="ltx_text ltx_font_bold" id="S3.T5.10.10.10.5.1">27.53 (<math alttext="\times 0.79" class="ltx_Math" display="inline" id="S3.T5.10.10.10.5.1.m1.1"><semantics id="S3.T5.10.10.10.5.1.m1.1a"><mrow id="S3.T5.10.10.10.5.1.m1.1.1" xref="S3.T5.10.10.10.5.1.m1.1.1.cmml"><mi id="S3.T5.10.10.10.5.1.m1.1.1.2" xref="S3.T5.10.10.10.5.1.m1.1.1.2.cmml"></mi><mo id="S3.T5.10.10.10.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T5.10.10.10.5.1.m1.1.1.1.cmml">×</mo><mn id="S3.T5.10.10.10.5.1.m1.1.1.3" xref="S3.T5.10.10.10.5.1.m1.1.1.3.cmml">0.79</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.10.10.10.5.1.m1.1b"><apply id="S3.T5.10.10.10.5.1.m1.1.1.cmml" xref="S3.T5.10.10.10.5.1.m1.1.1"><times id="S3.T5.10.10.10.5.1.m1.1.1.1.cmml" xref="S3.T5.10.10.10.5.1.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T5.10.10.10.5.1.m1.1.1.2.cmml" xref="S3.T5.10.10.10.5.1.m1.1.1.2">absent</csymbol><cn id="S3.T5.10.10.10.5.1.m1.1.1.3.cmml" type="float" xref="S3.T5.10.10.10.5.1.m1.1.1.3">0.79</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.10.10.10.5.1.m1.1c">\times 0.79</annotation><annotation encoding="application/x-llamapun" id="S3.T5.10.10.10.5.1.m1.1d">× 0.79</annotation></semantics></math>)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the throughput (tokens per second) and latency (milliseconds per token) for different decoding methods when applied to the LLAVA-1.5 large vision-language model.  The greedy decoding strategy serves as the baseline against which other methods are measured.  The table shows how efficiently each method processes tokens during the text generation process.
> <details>
> <summary>read the caption</summary>
> Table 5: Measure of throughput and latency on LLAVA-1.5. Greedy decoding strategy is applied and listed as baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A0.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A0.T6.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A0.T6.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.1.1.1.1">
<span class="ltx_p" id="A0.T6.1.1.1.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.1.1.1.1.1.1" style="font-size:80%;">GPT-4o Prompt</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T6.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A0.T6.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.2.1.1.1">
<span class="ltx_p" id="A0.T6.1.2.1.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.2.1.1.1.1.1" style="font-size:80%;">You are a vision-language evaluator. Given an image and an AI-generated description, perform the following tasks:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.3.2.1.1">
<span class="ltx_p" id="A0.T6.1.3.2.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.3.2.1.1.1.1" style="font-size:80%;">1. List clearly visible contents in the image that are not mentioned in the description.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.4.3.1.1">
<span class="ltx_p" id="A0.T6.1.4.3.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.4.3.1.1.1.1" style="font-size:80%;">2. List hallucinated contents in the description that are not present in the image.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.5.4.1.1">
<span class="ltx_p" id="A0.T6.1.5.4.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.5.4.1.1.1.1" style="font-size:80%;">3. List contents accurately described in the description that match the image.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.6.5.1.1">
<span class="ltx_p" id="A0.T6.1.6.5.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.6.5.1.1.1.1" style="font-size:80%;">For each task, include objects, object properties (e.g., color, count, position), and relationships between objects. You must answer each content with a single word, separating different contents by commas. If no contents apply, write ”None”. Make sure there is no overlapping words between three tasks.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.7.6.1.1">
<span class="ltx_p" id="A0.T6.1.7.6.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.7.6.1.1.1.1" style="font-size:80%;">Answer 1: [Missing contents]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A0.T6.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.8.7.1.1">
<span class="ltx_p" id="A0.T6.1.8.7.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.8.7.1.1.1.1" style="font-size:80%;">Answer 2: [Hallucinated contents]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T6.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A0.T6.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A0.T6.1.9.8.1.1">
<span class="ltx_p" id="A0.T6.1.9.8.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A0.T6.1.9.8.1.1.1.1" style="font-size:80%;">Answer 3: [Accurate contents]</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt given to GPT-40 to distinguish between genuine and hallucinated words in image captions. The prompt instructs GPT-40 to analyze an image and its AI-generated caption, identifying words that accurately describe the image, words describing visible content missing from the caption, and hallucinated words present in the caption but absent from the image.  It specifies that the output should be concise, using single words separated by commas for each category and noting 'None' if no applicable words exist in a category. 
> <details>
> <summary>read the caption</summary>
> Table 6: The prompt used for GPT-4o to identify genuine and hallucinated words.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.03628/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03628/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}