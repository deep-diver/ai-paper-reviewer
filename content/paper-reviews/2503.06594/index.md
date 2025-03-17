---
title: "Beyond Decoder-only: Large Language Models Can be Good Encoders for Machine Translation"
summary: "LLMs as MT encoders enhance efficiency & generalization!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Machine Translation", "🏢 NLP Lab, Northeastern University, Shenyang, China",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06594 {{< /keyword >}}
{{< keyword icon="writer" >}} Yingfeng Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06594" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06594" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06594/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the rising computational costs of neural machine translation (NMT) due to large language models (LLMs). Traditional encoder-decoder architectures have been overshadowed by single Transformer decoders in NLP. The research explores efficient translation models by integrating LLMs into NMT encoding, retaining the original NMT decoder to create a universal and efficient model. Methods to adapt LLMs for better NMT decoder compatibility are also developed. The paper introduces a new dataset for assessing machine translation generalization across tasks. 



The study presents the LaMaTE model, which combines LLMs as NMT encoders with adaptations for improved decoder compatibility. Evaluations on WMT and a new dataset show that the method matches or exceeds translation quality baselines, while achieving 2.4~6.5x inference speedups and a 75% reduction in KV cache memory. The new benchmark, ComMT, is introduced for assessing machine translation generalization across tasks. This approach demonstrates strong generalization across translation-related tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can be effectively used as encoders in NMT models, improving translation quality and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The LaMaTE model achieves significant speedups and memory reduction compared to traditional LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new benchmark, ComMT, is introduced to evaluate the generalization capabilities of MT systems across various tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers aiming to enhance machine translation efficiency while retaining quality. By combining LLMs with NMT, it presents a balanced approach that addresses computational costs and scalability, offering new directions for future research. The insights on generalization across tasks are valuable for developing more versatile translation systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06594/x1.png)

> 🔼 This figure illustrates three different machine translation model architectures.  (a) shows a standard Neural Machine Translation (NMT) model, using a separate encoder to process the source language sequence (x) and a decoder to generate the target language sequence (y). (b) depicts a Large Language Model (LLM) approach, where both x and y, along with an optional prompt (c), are fed into a single decoder network. (c) presents the LaMaTE architecture, which combines LLMs and NMT.  LaMaTE uses an LLM as its encoder. The LLM's output then passes through an adaptor before being input to the NMT decoder, which produces the translated output (y).
> <details>
> <summary>read the caption</summary>
> Figure 1: Architectures of machine translation models. In standard NMT models, an encoder is used to encode the source-language sequence x, and a decoder is used to generate the target-language sequence y from left to right. In LLMs, the decoder-only architecture is adopted. Both x and y, along with the prompt c, are represented as a single sequence, which is processed by a large decoding network. In the LaMaTE model, an LLM serves as the encoder. The output of the LLM is transformed into the input to the NMT decoder through an adaptor. The NMT decoder then generates the target-language sequence as usual.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.14">
<tr class="ltx_tr" id="S6.T4.14.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.15.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.16">
<td class="ltx_td ltx_align_left" id="S6.T4.14.16.1"><span class="ltx_text ltx_font_bold" id="S6.T4.14.16.1.1">Aspect</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.14.16.2"><span class="ltx_text ltx_font_bold" id="S6.T4.14.16.2.1">Models</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.14.16.3"><span class="ltx_text ltx_font_bold" id="S6.T4.14.16.3.1">COMET</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.14.16.4"><span class="ltx_text ltx_font_bold" id="S6.T4.14.16.4.1">BLEU</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.17.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2">
<td class="ltx_td ltx_align_left" id="S6.T4.2.2.3">-</td>
<td class="ltx_td ltx_align_left" id="S6.T4.2.2.4">LaMaTE (Ours)</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.1.1"><math alttext="82.32" class="ltx_Math" display="inline" id="S6.T4.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.m1.1a"><mn id="S6.T4.1.1.1.m1.1.1" xref="S6.T4.1.1.1.m1.1.1.cmml">82.32</mn><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.m1.1b"><cn id="S6.T4.1.1.1.m1.1.1.cmml" type="float" xref="S6.T4.1.1.1.m1.1.1">82.32</cn></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.m1.1c">82.32</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.m1.1d">82.32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.2.2.2"><math alttext="33.85" class="ltx_Math" display="inline" id="S6.T4.2.2.2.m1.1"><semantics id="S6.T4.2.2.2.m1.1a"><mn id="S6.T4.2.2.2.m1.1.1" xref="S6.T4.2.2.2.m1.1.1.cmml">33.85</mn><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.m1.1b"><cn id="S6.T4.2.2.2.m1.1.1.cmml" type="float" xref="S6.T4.2.2.2.m1.1.1">33.85</cn></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.m1.1c">33.85</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.m1.1d">33.85</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.18.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.4">
<td class="ltx_td ltx_align_left" id="S6.T4.4.4.3"><span class="ltx_text" id="S6.T4.4.4.3.1">Training Method</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.4.4.4">W/o S2</td>
<td class="ltx_td ltx_align_left" id="S6.T4.3.3.1"><math alttext="80.07_{(-2.25)}" class="ltx_Math" display="inline" id="S6.T4.3.3.1.m1.1"><semantics id="S6.T4.3.3.1.m1.1a"><msub id="S6.T4.3.3.1.m1.1.2" xref="S6.T4.3.3.1.m1.1.2.cmml"><mn id="S6.T4.3.3.1.m1.1.2.2" xref="S6.T4.3.3.1.m1.1.2.2.cmml">80.07</mn><mrow id="S6.T4.3.3.1.m1.1.1.1.1" xref="S6.T4.3.3.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.3.3.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.3.3.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.3.3.1.m1.1.1.1.1.1" xref="S6.T4.3.3.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.3.3.1.m1.1.1.1.1.1a" xref="S6.T4.3.3.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.3.3.1.m1.1.1.1.1.1.2" xref="S6.T4.3.3.1.m1.1.1.1.1.1.2.cmml">2.25</mn></mrow><mo id="S6.T4.3.3.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.3.3.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.1.m1.1b"><apply id="S6.T4.3.3.1.m1.1.2.cmml" xref="S6.T4.3.3.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.3.3.1.m1.1.2.1.cmml" xref="S6.T4.3.3.1.m1.1.2">subscript</csymbol><cn id="S6.T4.3.3.1.m1.1.2.2.cmml" type="float" xref="S6.T4.3.3.1.m1.1.2.2">80.07</cn><apply id="S6.T4.3.3.1.m1.1.1.1.1.1.cmml" xref="S6.T4.3.3.1.m1.1.1.1.1"><minus id="S6.T4.3.3.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.3.3.1.m1.1.1.1.1"></minus><cn id="S6.T4.3.3.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.3.3.1.m1.1.1.1.1.1.2">2.25</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.1.m1.1c">80.07_{(-2.25)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.1.m1.1d">80.07 start_POSTSUBSCRIPT ( - 2.25 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.4.4.2"><math alttext="29.67_{(-4.18)}" class="ltx_Math" display="inline" id="S6.T4.4.4.2.m1.1"><semantics id="S6.T4.4.4.2.m1.1a"><msub id="S6.T4.4.4.2.m1.1.2" xref="S6.T4.4.4.2.m1.1.2.cmml"><mn id="S6.T4.4.4.2.m1.1.2.2" xref="S6.T4.4.4.2.m1.1.2.2.cmml">29.67</mn><mrow id="S6.T4.4.4.2.m1.1.1.1.1" xref="S6.T4.4.4.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.4.4.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.4.4.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.4.4.2.m1.1.1.1.1.1" xref="S6.T4.4.4.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.4.4.2.m1.1.1.1.1.1a" xref="S6.T4.4.4.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.4.4.2.m1.1.1.1.1.1.2" xref="S6.T4.4.4.2.m1.1.1.1.1.1.2.cmml">4.18</mn></mrow><mo id="S6.T4.4.4.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.4.4.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.4.4.2.m1.1b"><apply id="S6.T4.4.4.2.m1.1.2.cmml" xref="S6.T4.4.4.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.4.4.2.m1.1.2.1.cmml" xref="S6.T4.4.4.2.m1.1.2">subscript</csymbol><cn id="S6.T4.4.4.2.m1.1.2.2.cmml" type="float" xref="S6.T4.4.4.2.m1.1.2.2">29.67</cn><apply id="S6.T4.4.4.2.m1.1.1.1.1.1.cmml" xref="S6.T4.4.4.2.m1.1.1.1.1"><minus id="S6.T4.4.4.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.4.4.2.m1.1.1.1.1"></minus><cn id="S6.T4.4.4.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.4.4.2.m1.1.1.1.1.1.2">4.18</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.4.4.2.m1.1c">29.67_{(-4.18)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.4.4.2.m1.1d">29.67 start_POSTSUBSCRIPT ( - 4.18 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.6">
<td class="ltx_td ltx_align_left" id="S6.T4.6.6.3">W/ S2 &amp; Frozen LLM</td>
<td class="ltx_td ltx_align_left" id="S6.T4.5.5.1"><math alttext="82.16_{(-0.16)}" class="ltx_Math" display="inline" id="S6.T4.5.5.1.m1.1"><semantics id="S6.T4.5.5.1.m1.1a"><msub id="S6.T4.5.5.1.m1.1.2" xref="S6.T4.5.5.1.m1.1.2.cmml"><mn id="S6.T4.5.5.1.m1.1.2.2" xref="S6.T4.5.5.1.m1.1.2.2.cmml">82.16</mn><mrow id="S6.T4.5.5.1.m1.1.1.1.1" xref="S6.T4.5.5.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.5.5.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.5.5.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.5.5.1.m1.1.1.1.1.1" xref="S6.T4.5.5.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.5.5.1.m1.1.1.1.1.1a" xref="S6.T4.5.5.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.5.5.1.m1.1.1.1.1.1.2" xref="S6.T4.5.5.1.m1.1.1.1.1.1.2.cmml">0.16</mn></mrow><mo id="S6.T4.5.5.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.5.5.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.5.5.1.m1.1b"><apply id="S6.T4.5.5.1.m1.1.2.cmml" xref="S6.T4.5.5.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.5.5.1.m1.1.2.1.cmml" xref="S6.T4.5.5.1.m1.1.2">subscript</csymbol><cn id="S6.T4.5.5.1.m1.1.2.2.cmml" type="float" xref="S6.T4.5.5.1.m1.1.2.2">82.16</cn><apply id="S6.T4.5.5.1.m1.1.1.1.1.1.cmml" xref="S6.T4.5.5.1.m1.1.1.1.1"><minus id="S6.T4.5.5.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.5.5.1.m1.1.1.1.1"></minus><cn id="S6.T4.5.5.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.5.5.1.m1.1.1.1.1.1.2">0.16</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.5.1.m1.1c">82.16_{(-0.16)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.5.1.m1.1d">82.16 start_POSTSUBSCRIPT ( - 0.16 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.6.6.2"><math alttext="33.73_{(-0.12)}" class="ltx_Math" display="inline" id="S6.T4.6.6.2.m1.1"><semantics id="S6.T4.6.6.2.m1.1a"><msub id="S6.T4.6.6.2.m1.1.2" xref="S6.T4.6.6.2.m1.1.2.cmml"><mn id="S6.T4.6.6.2.m1.1.2.2" xref="S6.T4.6.6.2.m1.1.2.2.cmml">33.73</mn><mrow id="S6.T4.6.6.2.m1.1.1.1.1" xref="S6.T4.6.6.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.6.6.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.6.6.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.6.6.2.m1.1.1.1.1.1" xref="S6.T4.6.6.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.6.6.2.m1.1.1.1.1.1a" xref="S6.T4.6.6.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.6.6.2.m1.1.1.1.1.1.2" xref="S6.T4.6.6.2.m1.1.1.1.1.1.2.cmml">0.12</mn></mrow><mo id="S6.T4.6.6.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.6.6.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.6.6.2.m1.1b"><apply id="S6.T4.6.6.2.m1.1.2.cmml" xref="S6.T4.6.6.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.6.6.2.m1.1.2.1.cmml" xref="S6.T4.6.6.2.m1.1.2">subscript</csymbol><cn id="S6.T4.6.6.2.m1.1.2.2.cmml" type="float" xref="S6.T4.6.6.2.m1.1.2.2">33.73</cn><apply id="S6.T4.6.6.2.m1.1.1.1.1.1.cmml" xref="S6.T4.6.6.2.m1.1.1.1.1"><minus id="S6.T4.6.6.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.6.6.2.m1.1.1.1.1"></minus><cn id="S6.T4.6.6.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.6.6.2.m1.1.1.1.1.1.2">0.12</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.6.6.2.m1.1c">33.73_{(-0.12)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.6.6.2.m1.1d">33.73 start_POSTSUBSCRIPT ( - 0.12 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.19.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.8.8">
<td class="ltx_td ltx_align_left" id="S6.T4.8.8.3"><span class="ltx_text" id="S6.T4.8.8.3.1">Adaptor Design</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.8.8.4">W/o Layer Fusion</td>
<td class="ltx_td ltx_align_left" id="S6.T4.7.7.1"><math alttext="82.08_{(-0.24)}" class="ltx_Math" display="inline" id="S6.T4.7.7.1.m1.1"><semantics id="S6.T4.7.7.1.m1.1a"><msub id="S6.T4.7.7.1.m1.1.2" xref="S6.T4.7.7.1.m1.1.2.cmml"><mn id="S6.T4.7.7.1.m1.1.2.2" xref="S6.T4.7.7.1.m1.1.2.2.cmml">82.08</mn><mrow id="S6.T4.7.7.1.m1.1.1.1.1" xref="S6.T4.7.7.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.7.7.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.7.7.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.7.7.1.m1.1.1.1.1.1" xref="S6.T4.7.7.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.7.7.1.m1.1.1.1.1.1a" xref="S6.T4.7.7.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.7.7.1.m1.1.1.1.1.1.2" xref="S6.T4.7.7.1.m1.1.1.1.1.1.2.cmml">0.24</mn></mrow><mo id="S6.T4.7.7.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.7.7.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.7.7.1.m1.1b"><apply id="S6.T4.7.7.1.m1.1.2.cmml" xref="S6.T4.7.7.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.7.7.1.m1.1.2.1.cmml" xref="S6.T4.7.7.1.m1.1.2">subscript</csymbol><cn id="S6.T4.7.7.1.m1.1.2.2.cmml" type="float" xref="S6.T4.7.7.1.m1.1.2.2">82.08</cn><apply id="S6.T4.7.7.1.m1.1.1.1.1.1.cmml" xref="S6.T4.7.7.1.m1.1.1.1.1"><minus id="S6.T4.7.7.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.7.7.1.m1.1.1.1.1"></minus><cn id="S6.T4.7.7.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.7.7.1.m1.1.1.1.1.1.2">0.24</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.7.7.1.m1.1c">82.08_{(-0.24)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.7.7.1.m1.1d">82.08 start_POSTSUBSCRIPT ( - 0.24 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.8.8.2"><math alttext="33.14_{(-0.71)}" class="ltx_Math" display="inline" id="S6.T4.8.8.2.m1.1"><semantics id="S6.T4.8.8.2.m1.1a"><msub id="S6.T4.8.8.2.m1.1.2" xref="S6.T4.8.8.2.m1.1.2.cmml"><mn id="S6.T4.8.8.2.m1.1.2.2" xref="S6.T4.8.8.2.m1.1.2.2.cmml">33.14</mn><mrow id="S6.T4.8.8.2.m1.1.1.1.1" xref="S6.T4.8.8.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.8.8.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.8.8.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.8.8.2.m1.1.1.1.1.1" xref="S6.T4.8.8.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.8.8.2.m1.1.1.1.1.1a" xref="S6.T4.8.8.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.8.8.2.m1.1.1.1.1.1.2" xref="S6.T4.8.8.2.m1.1.1.1.1.1.2.cmml">0.71</mn></mrow><mo id="S6.T4.8.8.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.8.8.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.8.8.2.m1.1b"><apply id="S6.T4.8.8.2.m1.1.2.cmml" xref="S6.T4.8.8.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.8.8.2.m1.1.2.1.cmml" xref="S6.T4.8.8.2.m1.1.2">subscript</csymbol><cn id="S6.T4.8.8.2.m1.1.2.2.cmml" type="float" xref="S6.T4.8.8.2.m1.1.2.2">33.14</cn><apply id="S6.T4.8.8.2.m1.1.1.1.1.1.cmml" xref="S6.T4.8.8.2.m1.1.1.1.1"><minus id="S6.T4.8.8.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.8.8.2.m1.1.1.1.1"></minus><cn id="S6.T4.8.8.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.8.8.2.m1.1.1.1.1.1.2">0.71</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.8.8.2.m1.1c">33.14_{(-0.71)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.8.8.2.m1.1d">33.14 start_POSTSUBSCRIPT ( - 0.71 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.10">
<td class="ltx_td ltx_align_left" id="S6.T4.10.10.3">W/o EncStack</td>
<td class="ltx_td ltx_align_left" id="S6.T4.9.9.1"><math alttext="82.02_{(-0.30)}" class="ltx_Math" display="inline" id="S6.T4.9.9.1.m1.1"><semantics id="S6.T4.9.9.1.m1.1a"><msub id="S6.T4.9.9.1.m1.1.2" xref="S6.T4.9.9.1.m1.1.2.cmml"><mn id="S6.T4.9.9.1.m1.1.2.2" xref="S6.T4.9.9.1.m1.1.2.2.cmml">82.02</mn><mrow id="S6.T4.9.9.1.m1.1.1.1.1" xref="S6.T4.9.9.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.9.9.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.9.9.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.9.9.1.m1.1.1.1.1.1" xref="S6.T4.9.9.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.9.9.1.m1.1.1.1.1.1a" xref="S6.T4.9.9.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.9.9.1.m1.1.1.1.1.1.2" xref="S6.T4.9.9.1.m1.1.1.1.1.1.2.cmml">0.30</mn></mrow><mo id="S6.T4.9.9.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.9.9.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.9.9.1.m1.1b"><apply id="S6.T4.9.9.1.m1.1.2.cmml" xref="S6.T4.9.9.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.9.9.1.m1.1.2.1.cmml" xref="S6.T4.9.9.1.m1.1.2">subscript</csymbol><cn id="S6.T4.9.9.1.m1.1.2.2.cmml" type="float" xref="S6.T4.9.9.1.m1.1.2.2">82.02</cn><apply id="S6.T4.9.9.1.m1.1.1.1.1.1.cmml" xref="S6.T4.9.9.1.m1.1.1.1.1"><minus id="S6.T4.9.9.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.9.9.1.m1.1.1.1.1"></minus><cn id="S6.T4.9.9.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.9.9.1.m1.1.1.1.1.1.2">0.30</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.9.9.1.m1.1c">82.02_{(-0.30)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.9.9.1.m1.1d">82.02 start_POSTSUBSCRIPT ( - 0.30 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.10.10.2"><math alttext="33.32_{(-0.53)}" class="ltx_Math" display="inline" id="S6.T4.10.10.2.m1.1"><semantics id="S6.T4.10.10.2.m1.1a"><msub id="S6.T4.10.10.2.m1.1.2" xref="S6.T4.10.10.2.m1.1.2.cmml"><mn id="S6.T4.10.10.2.m1.1.2.2" xref="S6.T4.10.10.2.m1.1.2.2.cmml">33.32</mn><mrow id="S6.T4.10.10.2.m1.1.1.1.1" xref="S6.T4.10.10.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.10.10.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.10.10.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.10.10.2.m1.1.1.1.1.1" xref="S6.T4.10.10.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.10.10.2.m1.1.1.1.1.1a" xref="S6.T4.10.10.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.10.10.2.m1.1.1.1.1.1.2" xref="S6.T4.10.10.2.m1.1.1.1.1.1.2.cmml">0.53</mn></mrow><mo id="S6.T4.10.10.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.10.10.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.10.10.2.m1.1b"><apply id="S6.T4.10.10.2.m1.1.2.cmml" xref="S6.T4.10.10.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.10.10.2.m1.1.2.1.cmml" xref="S6.T4.10.10.2.m1.1.2">subscript</csymbol><cn id="S6.T4.10.10.2.m1.1.2.2.cmml" type="float" xref="S6.T4.10.10.2.m1.1.2.2">33.32</cn><apply id="S6.T4.10.10.2.m1.1.1.1.1.1.cmml" xref="S6.T4.10.10.2.m1.1.1.1.1"><minus id="S6.T4.10.10.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.10.10.2.m1.1.1.1.1"></minus><cn id="S6.T4.10.10.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.10.10.2.m1.1.1.1.1.1.2">0.53</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.10.10.2.m1.1c">33.32_{(-0.53)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.10.10.2.m1.1d">33.32 start_POSTSUBSCRIPT ( - 0.53 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.20.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.12.12">
<td class="ltx_td ltx_align_left" id="S6.T4.12.12.3"><span class="ltx_text" id="S6.T4.12.12.3.1">Decoder Variant</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.12.12.4">Concat Decoder</td>
<td class="ltx_td ltx_align_left" id="S6.T4.11.11.1"><math alttext="81.52_{(-0.80)}" class="ltx_Math" display="inline" id="S6.T4.11.11.1.m1.1"><semantics id="S6.T4.11.11.1.m1.1a"><msub id="S6.T4.11.11.1.m1.1.2" xref="S6.T4.11.11.1.m1.1.2.cmml"><mn id="S6.T4.11.11.1.m1.1.2.2" xref="S6.T4.11.11.1.m1.1.2.2.cmml">81.52</mn><mrow id="S6.T4.11.11.1.m1.1.1.1.1" xref="S6.T4.11.11.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.11.11.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.11.11.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.11.11.1.m1.1.1.1.1.1" xref="S6.T4.11.11.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.11.11.1.m1.1.1.1.1.1a" xref="S6.T4.11.11.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.11.11.1.m1.1.1.1.1.1.2" xref="S6.T4.11.11.1.m1.1.1.1.1.1.2.cmml">0.80</mn></mrow><mo id="S6.T4.11.11.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.11.11.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.11.11.1.m1.1b"><apply id="S6.T4.11.11.1.m1.1.2.cmml" xref="S6.T4.11.11.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.11.11.1.m1.1.2.1.cmml" xref="S6.T4.11.11.1.m1.1.2">subscript</csymbol><cn id="S6.T4.11.11.1.m1.1.2.2.cmml" type="float" xref="S6.T4.11.11.1.m1.1.2.2">81.52</cn><apply id="S6.T4.11.11.1.m1.1.1.1.1.1.cmml" xref="S6.T4.11.11.1.m1.1.1.1.1"><minus id="S6.T4.11.11.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.11.11.1.m1.1.1.1.1"></minus><cn id="S6.T4.11.11.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.11.11.1.m1.1.1.1.1.1.2">0.80</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.11.11.1.m1.1c">81.52_{(-0.80)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.11.11.1.m1.1d">81.52 start_POSTSUBSCRIPT ( - 0.80 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.12.12.2"><math alttext="31.51_{(-2.34)}" class="ltx_Math" display="inline" id="S6.T4.12.12.2.m1.1"><semantics id="S6.T4.12.12.2.m1.1a"><msub id="S6.T4.12.12.2.m1.1.2" xref="S6.T4.12.12.2.m1.1.2.cmml"><mn id="S6.T4.12.12.2.m1.1.2.2" xref="S6.T4.12.12.2.m1.1.2.2.cmml">31.51</mn><mrow id="S6.T4.12.12.2.m1.1.1.1.1" xref="S6.T4.12.12.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.12.12.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.12.12.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.12.12.2.m1.1.1.1.1.1" xref="S6.T4.12.12.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.12.12.2.m1.1.1.1.1.1a" xref="S6.T4.12.12.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.12.12.2.m1.1.1.1.1.1.2" xref="S6.T4.12.12.2.m1.1.1.1.1.1.2.cmml">2.34</mn></mrow><mo id="S6.T4.12.12.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.12.12.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.12.12.2.m1.1b"><apply id="S6.T4.12.12.2.m1.1.2.cmml" xref="S6.T4.12.12.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.12.12.2.m1.1.2.1.cmml" xref="S6.T4.12.12.2.m1.1.2">subscript</csymbol><cn id="S6.T4.12.12.2.m1.1.2.2.cmml" type="float" xref="S6.T4.12.12.2.m1.1.2.2">31.51</cn><apply id="S6.T4.12.12.2.m1.1.1.1.1.1.cmml" xref="S6.T4.12.12.2.m1.1.1.1.1"><minus id="S6.T4.12.12.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.12.12.2.m1.1.1.1.1"></minus><cn id="S6.T4.12.12.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.12.12.2.m1.1.1.1.1.1.2">2.34</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.12.12.2.m1.1c">31.51_{(-2.34)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.12.12.2.m1.1d">31.51 start_POSTSUBSCRIPT ( - 2.34 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.14">
<td class="ltx_td ltx_align_left" id="S6.T4.14.14.3">Prefix Decoder</td>
<td class="ltx_td ltx_align_left" id="S6.T4.13.13.1"><math alttext="81.66_{(-0.66)}" class="ltx_Math" display="inline" id="S6.T4.13.13.1.m1.1"><semantics id="S6.T4.13.13.1.m1.1a"><msub id="S6.T4.13.13.1.m1.1.2" xref="S6.T4.13.13.1.m1.1.2.cmml"><mn id="S6.T4.13.13.1.m1.1.2.2" xref="S6.T4.13.13.1.m1.1.2.2.cmml">81.66</mn><mrow id="S6.T4.13.13.1.m1.1.1.1.1" xref="S6.T4.13.13.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.13.13.1.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.13.13.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.13.13.1.m1.1.1.1.1.1" xref="S6.T4.13.13.1.m1.1.1.1.1.1.cmml"><mo id="S6.T4.13.13.1.m1.1.1.1.1.1a" xref="S6.T4.13.13.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.13.13.1.m1.1.1.1.1.1.2" xref="S6.T4.13.13.1.m1.1.1.1.1.1.2.cmml">0.66</mn></mrow><mo id="S6.T4.13.13.1.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.13.13.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.13.13.1.m1.1b"><apply id="S6.T4.13.13.1.m1.1.2.cmml" xref="S6.T4.13.13.1.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.13.13.1.m1.1.2.1.cmml" xref="S6.T4.13.13.1.m1.1.2">subscript</csymbol><cn id="S6.T4.13.13.1.m1.1.2.2.cmml" type="float" xref="S6.T4.13.13.1.m1.1.2.2">81.66</cn><apply id="S6.T4.13.13.1.m1.1.1.1.1.1.cmml" xref="S6.T4.13.13.1.m1.1.1.1.1"><minus id="S6.T4.13.13.1.m1.1.1.1.1.1.1.cmml" xref="S6.T4.13.13.1.m1.1.1.1.1"></minus><cn id="S6.T4.13.13.1.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.13.13.1.m1.1.1.1.1.1.2">0.66</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.13.13.1.m1.1c">81.66_{(-0.66)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.13.13.1.m1.1d">81.66 start_POSTSUBSCRIPT ( - 0.66 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S6.T4.14.14.2"><math alttext="32.38_{(-1.47)}" class="ltx_Math" display="inline" id="S6.T4.14.14.2.m1.1"><semantics id="S6.T4.14.14.2.m1.1a"><msub id="S6.T4.14.14.2.m1.1.2" xref="S6.T4.14.14.2.m1.1.2.cmml"><mn id="S6.T4.14.14.2.m1.1.2.2" xref="S6.T4.14.14.2.m1.1.2.2.cmml">32.38</mn><mrow id="S6.T4.14.14.2.m1.1.1.1.1" xref="S6.T4.14.14.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.14.14.2.m1.1.1.1.1.2" stretchy="false" xref="S6.T4.14.14.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S6.T4.14.14.2.m1.1.1.1.1.1" xref="S6.T4.14.14.2.m1.1.1.1.1.1.cmml"><mo id="S6.T4.14.14.2.m1.1.1.1.1.1a" xref="S6.T4.14.14.2.m1.1.1.1.1.1.cmml">−</mo><mn id="S6.T4.14.14.2.m1.1.1.1.1.1.2" xref="S6.T4.14.14.2.m1.1.1.1.1.1.2.cmml">1.47</mn></mrow><mo id="S6.T4.14.14.2.m1.1.1.1.1.3" stretchy="false" xref="S6.T4.14.14.2.m1.1.1.1.1.1.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T4.14.14.2.m1.1b"><apply id="S6.T4.14.14.2.m1.1.2.cmml" xref="S6.T4.14.14.2.m1.1.2"><csymbol cd="ambiguous" id="S6.T4.14.14.2.m1.1.2.1.cmml" xref="S6.T4.14.14.2.m1.1.2">subscript</csymbol><cn id="S6.T4.14.14.2.m1.1.2.2.cmml" type="float" xref="S6.T4.14.14.2.m1.1.2.2">32.38</cn><apply id="S6.T4.14.14.2.m1.1.1.1.1.1.cmml" xref="S6.T4.14.14.2.m1.1.1.1.1"><minus id="S6.T4.14.14.2.m1.1.1.1.1.1.1.cmml" xref="S6.T4.14.14.2.m1.1.1.1.1"></minus><cn id="S6.T4.14.14.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S6.T4.14.14.2.m1.1.1.1.1.1.2">1.47</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.14.14.2.m1.1c">32.38_{(-1.47)}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.14.14.2.m1.1d">32.38 start_POSTSUBSCRIPT ( - 1.47 ) end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.14.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="4" id="S6.T4.14.21.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents statistics for the ComMT (Comprehensive Machine Translation) test set.  It shows the number of examples available for each language pair and task within the ComMT benchmark. The table highlights that, due to the challenge of collecting original data across many different languages and tasks, not every combination of language direction and task has a corresponding dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics for the ComMT Test Set. We ensure that the source language of the test set is original, so not all language directions and tasks have corresponding data due to the difficulty in collecting certain datasets.
> </details>





### In-depth insights


#### LLM Encoders
**LLMs as encoders** in machine translation present a paradigm shift, leveraging their robust language understanding. **LaMaTE**, for example, uses an LLM to encode the source language, adapting its output for a traditional NMT decoder. This approach offers efficiency, **reducing computational costs** compared to end-to-end LLM translation. It combines the strengths of both paradigms: the LLM's contextual awareness and the NMT decoder's generation capabilities, leading to potentially improved translation quality and efficiency.

#### LaMaTE Model
The LaMaTE model innovatively **repurposes large language models (LLMs) as encoders within a traditional NMT framework**. It leverages the **strengths of LLMs in understanding source language nuances** while retaining the **efficiency of NMT decoders for target language generation**. A crucial component is the **adaptor**, which bridges the gap between the LLM's output and the NMT decoder's input, incorporating fusion, dimensionality reduction, and potentially bidirectional representation learning. The model employs a **two-stage training** strategy, initially freezing the LLM and training the adaptor and decoder, followed by fine-tuning all components. This helps to strike a balance between efficient training and effectively utilizing the LLM's knowledge.

#### ComMT Dataset
The 'ComMT Dataset' is a **key contribution**; the research constructs a comprehensive benchmark for machine translation, addressing the limitations of existing datasets. The dataset focuses on **generalization** across diverse tasks, moving beyond single-task contexts. It incorporates various translation-related tasks such as general translation, document-level translation, domain-specific translation, terminology-constrained translation and automatic post-editing. The dataset's multilingual nature, supporting German, Czech, Russian, and Chinese, enhances its practical relevance. Careful attention is paid to data quality and diversity, using manual annotation and filtering techniques to avoid translationese issues. By providing a **high-quality, diverse dataset**, the researchers aim to promote the development of more robust and adaptable machine translation systems. This should encourage researchers to prioritize generalization capabilities in MT models.

#### Decoding Speedup
Decoding speedup is a crucial area in machine translation, especially when dealing with large language models (LLMs). The efficiency of translating text directly affects the practicality of deploying these models in real-world applications. LLMs, despite their power, can be computationally intensive, making the decoding phase a bottleneck. **Optimizing this phase is key to reducing latency and improving user experience.** Techniques such as model compression (quantization, pruning) and algorithmic improvements (speculative decoding) are typical approaches. However, the paper explores a different angle, focusing on architectural modifications to enhance speed without sacrificing translation quality. It explores efficient encoding and decoding architectures, such as LaMaTE, achieving 2.4x to 6.5x faster decoding speeds, highlighting the advantages of decoupling encoding and decoding for better performance. **This work emphasizes the importance of efficient model design**.

#### Cross Attention
**Cross-attention** is a key mechanism that allows the decoder to focus on relevant parts of the input sequence during translation. It guides the decoder by creating connections to source tokens, improving **alignment**. By using **cross-attention**, the network selectively attends to certain source words at each decoding step. Retaining **cross-attention** is particularly beneficial for translation tasks. It enables a more nuanced understanding of the source context.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06594/x2.png)

> 🔼 This figure shows the architecture of three different decoder models used in machine translation: a standard neural machine translation (NMT) encoder, a standard NMT decoder, and a large language model (LLM) decoder.  The NMT encoder processes the input sequence bidirectionally using self-attention and feed-forward neural networks. The NMT decoder generates the target sequence unidirectionally, also using self-attention, but incorporating cross-attention with the encoder's output for better context. The LLM decoder is a decoder-only model that processes both source and target sequences as a single sequence, leveraging causal self-attention.  Layer normalization and residual connections are omitted for clarity.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture of the NMT Encoder, NMT Decoder, and LLM Decoder. We omit the layer normalization and residual connections for simplicity.
> </details>



![](https://arxiv.org/html/2503.06594/x3.png)

> 🔼 The figure illustrates the LaMaTE model architecture, which uses a large language model (LLM) as the encoder and a neural machine translation (NMT) decoder.  A key component is the adaptor, which sits between the LLM and the NMT decoder. This adaptor has three parts: a fusion layer that combines the LLM's hidden states from multiple layers, a multilayer perceptron (MLP) that reduces the dimensionality of the combined representation, and a stack of encoder layers (EncStack) that creates bidirectional representations.  The model is trained in two stages: the first stage trains only the adaptor and decoder, and the second stage trains all model parameters, including the LLM.
> <details>
> <summary>read the caption</summary>
> Figure 3: The architecture of LaMaTE, where the Adaptor consists of three components: Fusion combines the representations of layer groups 𝐠ksubscript𝐠𝑘\mathbf{g}_{k}bold_g start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT, MLP reduces the representations’s dimensionality, and EncStack learns bidirectional representations. The training process consists of two stages: the first stage trains the Adaptor and Decoder, and the second stage trains all model parameters.
> </details>



![](https://arxiv.org/html/2503.06594/x4.png)

> 🔼 Figure 4 presents the ComMT dataset, a comprehensive benchmark for evaluating machine translation models' capabilities across various tasks.  It is not limited to simple sentence-level translation; ComMT includes tasks like document-level translation, which tests coherence and context maintenance in longer texts, and domain-specific translation, assessing performance within specific terminology and styles (medical, legal, IT, colloquial, literature).  Additionally, it evaluates performance on constrained translation (where specific terminology must be used) and automatic post-editing (correcting machine-generated translations). The table within Figure 4 details the amount of training data available for each of these tasks across multiple languages (German, Czech, Russian, and Chinese).
> <details>
> <summary>read the caption</summary>
> Figure 4: Our comprehensive translation dataset, ComMT, includes diverse translation-related tasks. The table presents the training set statistics for ComMT.
> </details>



![](https://arxiv.org/html/2503.06594/x5.png)

> 🔼 This figure compares the performance of the Llama3-8B model fine-tuned on three different datasets: WMT17-20, TowerBlock, and ComMT.  The model's performance is then evaluated on the WMT23 test set using BLEU scores. This allows for a comparison of how well the model generalizes across different datasets and task types.  The x-axis represents the dataset used for fine-tuning (WMT17-20, TowerBlock, or ComMT), and the y-axis shows the BLEU score achieved on the WMT23 test set.  The figure includes separate bars for English-to-other-language translation (En→X) and other-language-to-English translation (X→En), illustrating performance differences in each direction. This visualization helps assess the model's ability to transfer knowledge from various training data sources and its adaptability for various translation scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of performance across three datasets—WMT17-20, TowerBlock, and ComMT—fine-tuned on Llama3-8B and evaluated on the WMT23 test set.
> </details>



![](https://arxiv.org/html/2503.06594/x6.png)

> 🔼 This figure displays the results of evaluating the translation capabilities of five different large language models (LLMs) in both zero-shot (no prior training on the translation task) and three-shot (three examples provided during inference) settings.  The models were tested on eight different translation directions involving English and four other languages (German, Czech, Russian, and Chinese). The y-axis represents the BLEU score, a common metric for evaluating machine translation quality, and shows the performance for each translation direction and model type (zero-shot vs three-shot). The x-axis shows the five different language models: XGLM-7.5B, BLOOM-7B, Falcon-7B, Qwen2-7B, and Llama-3-8B.  The figure illustrates how providing a few examples (three-shot) significantly improves the translation quality for most of the LLMs tested, and highlights Llama-3-8B's consistently superior performance across all settings.
> <details>
> <summary>read the caption</summary>
> Figure 6: Evaluation of LLM translation capabilities in 0-shot and 3-shot settings using the WMT23 test set.
> </details>



![](https://arxiv.org/html/2503.06594/x7.png)

> 🔼 Figure 7 presents a comparison of four different machine translation models across three metrics that evaluate translation quality. Specifically, it compares the Llama3-8B and TowerInstruct-7B (both decoder-only models) against mT5-large and LaMaTE (both encoder-decoder models). The three metrics used are off-target rate (OTR), which measures how often a model generates translations in an unintended language; unaligned source words (USW), which is the proportion of words in the source language that are not properly translated in the target language; and unaligned target words (UTW), which is the number of words that appear in the target language translation but do not have a proper equivalent in the source language.  The figure helps demonstrate how different model architectures can affect the overall quality and alignment of the machine translations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of decoder-only (Llama3-8B and TowerInstruct-7B) and encoder-decoder (mT5-large and LaMaTE) models on off-target rate (OTR), unaligned source words (USW), and unaligned target words (UTW).
> </details>



![](https://arxiv.org/html/2503.06594/x8.png)

> 🔼 Figure 8 presents a comparison of the efficiency of LaMaTE against Llama3-8B.  The left chart shows the speedup ratio achieved by LaMaTE in decoding, considering varying source sequence lengths and batch sizes.  This illustrates how LaMaTE's decoding speed improves as the complexity of the input increases. The right chart visualizes the theoretical reduction in KV cache memory usage achieved by LaMaTE compared to Llama3-8B. This demonstrates LaMaTE's improved memory efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison of efficiency: The left chart displays the decoding speedup ratio of LaMaTE versus Llama3-8B under varying source sequence lengths and batch sizes, and the right chart shows the theoretical KV cache size factor for each model.
> </details>



![](https://arxiv.org/html/2503.06594/x9.png)

> 🔼 This figure analyzes how the depth of the EncStack (encoder stack within the adaptor) and the decoder affects both the model's performance and efficiency.  The left panel shows the impact of increasing the number of EncStack layers, while keeping the decoder's depth fixed. The right panel reverses this, showing the effect of increasing the number of decoder layers, with the EncStack's depth fixed.  The figure plots translation quality (COMET score) and decoding speed against the number of layers for both the EncStack and decoder. This allows for a direct comparison of how changes in depth for each component influence the model's translation capabilities and inference speed, enabling a discussion on optimal architectural choices regarding depth for balancing performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 9: The impact of EncStack and decoder depth on model performance and efficiency.
> </details>



![](https://arxiv.org/html/2503.06594/x10.png)

> 🔼 This figure compares two different neural network architectures commonly used in machine translation: the encoder-decoder model and the decoder-only model. The encoder-decoder model consists of two main components: an encoder that processes the input sequence and a decoder that generates the output sequence based on the encoder's output.  The decoder-only model, on the other hand, uses only a decoder to process both the input and output sequences. This figure visually depicts the key structural differences between these two architectures.
> <details>
> <summary>read the caption</summary>
> Figure 10: The Encoder-Decoder and Decoder-only architecture.
> </details>



![](https://arxiv.org/html/2503.06594/x11.png)

> 🔼 This figure illustrates three decoder architectures used in machine translation. The standard 'Cross Decoder' utilizes cross-attention to integrate source information. The 'Concat Decoder' omits cross-attention and integrates source information directly into the self-attention mechanism, while the 'Prefix Decoder' integrates source information early via fusion methods before self-attention.
> <details>
> <summary>read the caption</summary>
> Figure 11: Three variants of decoders: Cross Decoder is the standard decoder, while Concat Decoder and Prefix Decoder remove the cross-attention sublayer, integrating source information through self-attention and early fusion methods, respectively.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.1">
<tr class="ltx_tr" id="A3.T7.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.1.1">
<span class="ltx_p" id="A3.T7.1.2.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.2.1.1.1.1">Hyperparameter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.2.1">
<span class="ltx_p" id="A3.T7.1.2.2.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.2.2.1.1.1">Stage1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.3.1">
<span class="ltx_p" id="A3.T7.1.2.3.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.2.3.1.1.1">Stage2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.1.1">
<span class="ltx_p" id="A3.T7.1.3.1.1.1" style="width:113.8pt;">Learning Rate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.2.1">
<span class="ltx_p" id="A3.T7.1.3.2.1.1" style="width:56.9pt;">5e-4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.3.1">
<span class="ltx_p" id="A3.T7.1.3.3.1.1" style="width:56.9pt;">2e-5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.1" style="width:113.8pt;">Adam <math alttext="\beta" class="ltx_Math" display="inline" id="A3.T7.1.1.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.1.1.m1.1a"><mi id="A3.T7.1.1.1.1.1.m1.1.1" xref="A3.T7.1.1.1.1.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.1.1.m1.1b"><ci id="A3.T7.1.1.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.1.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.1.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.1.1.m1.1d">italic_β</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.2.1.1" style="width:56.9pt;">(0.9, 0.999)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.1">
<span class="ltx_p" id="A3.T7.1.1.3.1.1" style="width:56.9pt;">(0.9, 0.999)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.1.1">
<span class="ltx_p" id="A3.T7.1.4.1.1.1" style="width:113.8pt;">LR Scheduler</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.2.1">
<span class="ltx_p" id="A3.T7.1.4.2.1.1" style="width:56.9pt;">inverse_sqrt</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.3.1">
<span class="ltx_p" id="A3.T7.1.4.3.1.1" style="width:56.9pt;">cosine</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.1.1">
<span class="ltx_p" id="A3.T7.1.5.1.1.1" style="width:113.8pt;">Number of Epochs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.2.1">
<span class="ltx_p" id="A3.T7.1.5.2.1.1" style="width:56.9pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.3.1">
<span class="ltx_p" id="A3.T7.1.5.3.1.1" style="width:56.9pt;">1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.1.1">
<span class="ltx_p" id="A3.T7.1.6.1.1.1" style="width:113.8pt;">Global Batch Size</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.2.1">
<span class="ltx_p" id="A3.T7.1.6.2.1.1" style="width:56.9pt;">2,560</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.3.1">
<span class="ltx_p" id="A3.T7.1.6.3.1.1" style="width:56.9pt;">384</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.1.1">
<span class="ltx_p" id="A3.T7.1.7.1.1.1" style="width:113.8pt;">Train Steps</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.2.1">
<span class="ltx_p" id="A3.T7.1.7.2.1.1" style="width:56.9pt;">30,000</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.3.1">
<span class="ltx_p" id="A3.T7.1.7.3.1.1" style="width:56.9pt;">1,200</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.1.1">
<span class="ltx_p" id="A3.T7.1.8.1.1.1" style="width:113.8pt;">Warmup Ratio</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.2.1">
<span class="ltx_p" id="A3.T7.1.8.2.1.1" style="width:56.9pt;">0.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.3.1">
<span class="ltx_p" id="A3.T7.1.8.3.1.1" style="width:56.9pt;">0.01</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.1.1">
<span class="ltx_p" id="A3.T7.1.9.1.1.1" style="width:113.8pt;">Weight Decay</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.2.1">
<span class="ltx_p" id="A3.T7.1.9.2.1.1" style="width:56.9pt;">0.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.3.1">
<span class="ltx_p" id="A3.T7.1.9.3.1.1" style="width:56.9pt;">0.01</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.10.1.1">
<span class="ltx_p" id="A3.T7.1.10.1.1.1" style="width:113.8pt;">Decoding Method</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="A3.T7.1.10.2">beam search</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A3.T7.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.11.1.1">
<span class="ltx_p" id="A3.T7.1.11.1.1.1" style="width:113.8pt;">Beam Size</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_b" colspan="2" id="A3.T7.1.11.2">5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Comprehensive Machine Translation (ComMT) benchmark evaluation.  It shows the performance of various machine translation models, including decoder-only and encoder-decoder architectures, across five different translation tasks.  The performance is measured using COMET and BLEU scores.  Bold numbers highlight the best scores for each task and language pair, while underlined numbers show the second best scores. Note that some models could not utilize additional inputs (such as prompts or terminology constraints) for specific tasks; for those models, only source sequence inputs were used.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance on ComMT test set. Bold numbers represent the highest scores in each category, while underlined numbers indicate the second highest scores. Models marked with '*' cannot handle additional inputs for the terminology-constrained translation and automatic post-editing tasks, we only use the source sequence as input.
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A4.T14.12">
<tr class="ltx_tr" id="A4.T14.12.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.13.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.13.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.13.1.1.1.1"><span class="ltx_text" id="A4.T14.12.13.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.13.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t ltx_colspan ltx_colspan_11" id="A4.T14.12.13.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.13.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">General Translation</span></span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.13.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.13.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.13.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">En2Cs</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.13.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.13.1.1.1.1.1.1.2.5" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.13.1.1.1.1.1.1.2.6" style="padding:0.5pt 1.0pt;">De2En</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.13.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">BLEU</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">79.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">33.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">88.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">36.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">83.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">29.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">79.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">34.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">81.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.13.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">35.42</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">70.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">14.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">83.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">23.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">79.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">19.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">80.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">30.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">79.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">26.43</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">82.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">34.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">87.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">32.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">83.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">26.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">84.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">41.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">84.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">41.24</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">83.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">35.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">78.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">17.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">85.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">29.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">85.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">42.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">85.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">44.33</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">70.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">15.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">68.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">14.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">64.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">12.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">81.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">37.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">81.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">27.85</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">77.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">29.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">85.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">35.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">79.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">25.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">80.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">38.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">81.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">33.33</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">78.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">31.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">86.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">38.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">80.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">26.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">82.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">40.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">82.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">36.99</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">78.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">30.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">84.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">30.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">81.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">24.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">83.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">36.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">82.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">37.12</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">73.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">18.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">81.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">24.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">80.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">23.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">81.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">39.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">80.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">32.84</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">78.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">29.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">77.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">22.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">80.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">22.67</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">67.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">18.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">74.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">33.20</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">82.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">37.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">85.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">29.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">83.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">27.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">83.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">40.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">83.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">40.62</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.13.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">LaMaTE-s1</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">77.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">29.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">85.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">33.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">79.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">24.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">80.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">39.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">82.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.13.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">33.39</span></span>
<span class="ltx_tr" id="A4.T14.12.13.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE-s2</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">80.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">37.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">86.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">35.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">82.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">26.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">84.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">45.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">83.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.13.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">41.41</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.2.2.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.2.2.2.2.2.2" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.2.2.2.2.2.2.2"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.2.2.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.2.3.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.2.2.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.2.2.2.2.2.2.2.2.2.2.5" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Avg. En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.1.1.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">Avg. X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.2.2.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.3.6.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.3.7.1" style="background-color:#E6E6E6;">BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.3.8.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.2.2.2.2.2.2.2.2.2.3.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.3.9.1" style="background-color:#E6E6E6;">BLEU</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">80.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">31.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">77.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;">22.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.4.6.1" style="background-color:#E6E6E6;">82.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.4.7.1" style="background-color:#E6E6E6;">33.54</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.4.8.1" style="background-color:#E6E6E6;">79.83</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.2.2.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.4.9.1" style="background-color:#E6E6E6;">29.72</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">82.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">31.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">79.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;">22.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.5.6.1" style="background-color:#E6E6E6;">84.28</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.5.7.1" style="background-color:#E6E6E6;">31.33</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.5.8.1" style="background-color:#E6E6E6;">82.18</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.5.9.1" style="background-color:#E6E6E6;">31.66</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">76.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">23.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">75.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;">16.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.6.6.1" style="background-color:#E6E6E6;">78.45</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.6.7.1" style="background-color:#E6E6E6;">22.03</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.6.8.1" style="background-color:#E6E6E6;">77.23</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.6.9.1" style="background-color:#E6E6E6;">22.05</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">81.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">29.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">77.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;">21.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.7.6.1" style="background-color:#E6E6E6;">84.37</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.7.7.1" style="background-color:#E6E6E6;">33.49</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.7.8.1" style="background-color:#E6E6E6;">81.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.7.9.1" style="background-color:#E6E6E6;">30.73</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">83.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">34.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">80.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;">23.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.8.6.1" style="background-color:#E6E6E6;">83.33</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.8.7.1" style="background-color:#E6E6E6;">31.22</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.8.8.1" style="background-color:#E6E6E6;">82.90</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.8.9.1" style="background-color:#E6E6E6;">34.29</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">77.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">21.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">76.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;">18.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.9.6.1" style="background-color:#E6E6E6;">71.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.9.7.1" style="background-color:#E6E6E6;">20.15</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.9.8.1" style="background-color:#E6E6E6;">78.54</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.9.9.1" style="background-color:#E6E6E6;">22.52</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">78.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">29.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">76.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;">21.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.10.6.1" style="background-color:#E6E6E6;">80.62</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.10.7.1" style="background-color:#E6E6E6;">32.33</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.10.8.1" style="background-color:#E6E6E6;">78.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.10.9.1" style="background-color:#E6E6E6;">27.83</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">79.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">30.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">76.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;">22.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.11.6.1" style="background-color:#E6E6E6;">82.01</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.11.7.1" style="background-color:#E6E6E6;">34.16</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.11.8.1" style="background-color:#E6E6E6;">79.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.11.9.1" style="background-color:#E6E6E6;">29.94</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">80.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">27.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">77.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;">19.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.12.6.1" style="background-color:#E6E6E6;">82.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.12.7.1" style="background-color:#E6E6E6;">30.45</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.12.8.1" style="background-color:#E6E6E6;">80.44</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.12.9.1" style="background-color:#E6E6E6;">28.23</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">80.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">30.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">75.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;">19.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.13.6.1" style="background-color:#E6E6E6;">79.38</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.13.7.1" style="background-color:#E6E6E6;">26.42</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.13.8.1" style="background-color:#E6E6E6;">78.67</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.13.9.1" style="background-color:#E6E6E6;">27.35</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">70.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">21.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">68.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;">15.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.14.6.1" style="background-color:#E6E6E6;">75.99</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.14.7.1" style="background-color:#E6E6E6;">23.12</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.14.8.1" style="background-color:#E6E6E6;">71.13</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.14.9.1" style="background-color:#E6E6E6;">23.27</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">81.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">31.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">76.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;">20.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.15.6.1" style="background-color:#E6E6E6;">84.03</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.15.7.1" style="background-color:#E6E6E6;">33.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.15.8.1" style="background-color:#E6E6E6;">80.80</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.15.9.1" style="background-color:#E6E6E6;">31.07</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.2.2.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE-s1</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">79.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">29.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">76.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;">20.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.16.6.1" style="background-color:#E6E6E6;">80.78</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.16.7.1" style="background-color:#E6E6E6;">31.74</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.16.8.1" style="background-color:#E6E6E6;">79.36</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.2.2.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.16.9.1" style="background-color:#E6E6E6;">27.60</span></span></span>
<span class="ltx_tr" id="A4.T14.2.2.2.2.2.2.2.2.2.17">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.1" style="padding:0.5pt 1.0pt;">LaMaTE-s2</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.2" style="padding:0.5pt 1.0pt;">80.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.3" style="padding:0.5pt 1.0pt;">30.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.4" style="padding:0.5pt 1.0pt;">78.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.5" style="padding:0.5pt 1.0pt;">22.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.17.6.1" style="background-color:#E6E6E6;">83.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.17.7.1" style="background-color:#E6E6E6;">36.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.17.8.1" style="background-color:#E6E6E6;">81.20</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T14.2.2.2.2.2.2.2.2.2.17.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.2.2.2.2.2.2.2.2.2.17.9.1" style="background-color:#E6E6E6;">31.24</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.14" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.14.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.14.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.14.1.1.1.1"><span class="ltx_text" id="A4.T14.12.14.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.14.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_12" id="A4.T14.12.14.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.14.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Domain Translation(COMET)</span></span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.14.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_7" id="A4.T14.12.14.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">Medical</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.14.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">Law</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.14.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">IT</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">Cs2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">En2Cs</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.14.1.1.1.1.1.1.3.12" style="padding:0.5pt 1.0pt;">En2Cs</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">87.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">86.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">84.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">88.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">84.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">85.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">88.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">86.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">89.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">86.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.14.1.1.1.1.1.1.4.12" style="padding:0.5pt 1.0pt;">92.09</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">87.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">86.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">84.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">88.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">84.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">85.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">87.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">85.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">88.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">86.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.5.12" style="padding:0.5pt 1.0pt;">92.35</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">84.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">82.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">81.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">80.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">81.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">84.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">85.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">83.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">88.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">78.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.6.12" style="padding:0.5pt 1.0pt;">84.08</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">87.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">85.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">84.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">88.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">84.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">86.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">87.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">86.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">89.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">87.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.7.12" style="padding:0.5pt 1.0pt;">92.97</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">87.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">86.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">85.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">87.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">85.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">87.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">87.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">86.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">82.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">85.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.8.12" style="padding:0.5pt 1.0pt;">84.86</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">85.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">80.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">82.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">64.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">83.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">85.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">84.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">75.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">70.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">66.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.9.12" style="padding:0.5pt 1.0pt;">75.52</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">86.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">85.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">83.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">86.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">82.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">85.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">86.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">84.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">86.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">84.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.10.12" style="padding:0.5pt 1.0pt;">91.49</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">87.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">86.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">83.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">86.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">83.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">85.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">87.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">87.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">91.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">83.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.11.12" style="padding:0.5pt 1.0pt;">92.73</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">87.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">87.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">84.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">87.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">84.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">86.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">88.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">88.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">91.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">83.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.12.12" style="padding:0.5pt 1.0pt;">93.25</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">85.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">83.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">83.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">84.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">82.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">83.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">86.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">79.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">82.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">84.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.13.12" style="padding:0.5pt 1.0pt;">88.48</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">73.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">84.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">74.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">85.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">74.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">75.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">66.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">83.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">81.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">84.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.14.12" style="padding:0.5pt 1.0pt;">86.25</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.14.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">86.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">85.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">83.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">88.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">84.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">87.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">88.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">85.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">88.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">88.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.14.1.1.1.1.1.1.15.12" style="padding:0.5pt 1.0pt;">92.84</span></span>
<span class="ltx_tr" id="A4.T14.12.14.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">87.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">86.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">84.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">88.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">84.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">88.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">87.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">87.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">91.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">89.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.14.1.1.1.1.1.1.16.12" style="padding:0.5pt 1.0pt;">93.86</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.4.4.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.4.4.2.2.2.2" style="width:400.0pt;height:271pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.4.4.2.2.2.2.2"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.4.4.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.3.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_6" id="A4.T14.4.4.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">Colloquial</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_4" id="A4.T14.4.4.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">Literature</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.3.4.1" style="background-color:#E6E6E6;">Avg. COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.3.5.1" style="background-color:#E6E6E6;">Avg. COMET</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.5" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.6" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.7" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.8" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.9" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.10" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.11" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.12" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.4.4.2.2.2.2.2.2.2.2.13" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.3.3.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.4.4.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">87.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">81.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">82.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;">78.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;">80.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;">85.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;">63.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;">65.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.10" style="padding:0.5pt 1.0pt;">59.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.11" style="padding:0.5pt 1.0pt;">65.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.4.12.1" style="background-color:#E6E6E6;">84.32</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.4.4.2.2.2.2.2.2.2.4.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.4.13.1" style="background-color:#E6E6E6;">78.44</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">88.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">82.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">85.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;">84.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;">83.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;">86.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;">74.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;">72.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.10" style="padding:0.5pt 1.0pt;">72.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.11" style="padding:0.5pt 1.0pt;">76.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.5.12.1" style="background-color:#E6E6E6;">85.76</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.5.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.5.13.1" style="background-color:#E6E6E6;">82.09</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">82.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">69.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">74.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;">66.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;">79.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;">82.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;">67.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;">57.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.10" style="padding:0.5pt 1.0pt;">62.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.11" style="padding:0.5pt 1.0pt;">72.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.6.12.1" style="background-color:#E6E6E6;">79.30</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.6.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.6.13.1" style="background-color:#E6E6E6;">75.76</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">89.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">83.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">86.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;">84.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;">83.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;">87.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;">74.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;">72.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.10" style="padding:0.5pt 1.0pt;">68.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.11" style="padding:0.5pt 1.0pt;">77.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.7.12.1" style="background-color:#E6E6E6;">86.28</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.7.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.7.13.1" style="background-color:#E6E6E6;">81.86</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">88.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">81.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">86.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;">82.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;">82.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;">86.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;">75.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;">73.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.10" style="padding:0.5pt 1.0pt;">75.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.11" style="padding:0.5pt 1.0pt;">79.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.8.12.1" style="background-color:#E6E6E6;">84.57</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.8.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.8.13.1" style="background-color:#E6E6E6;">82.72</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">85.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">71.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">81.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;">59.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;">80.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;">82.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;">73.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;">69.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.10" style="padding:0.5pt 1.0pt;">71.30</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.11" style="padding:0.5pt 1.0pt;">73.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.9.12.1" style="background-color:#E6E6E6;">73.20</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.9.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.9.13.1" style="background-color:#E6E6E6;">79.79</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">87.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">78.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">83.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;">80.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;">80.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;">86.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;">71.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;">69.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.10" style="padding:0.5pt 1.0pt;">68.30</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.11" style="padding:0.5pt 1.0pt;">75.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.10.12.1" style="background-color:#E6E6E6;">84.17</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.10.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.10.13.1" style="background-color:#E6E6E6;">79.94</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">87.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">78.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">83.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;">77.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;">79.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;">84.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;">62.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;">64.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.10" style="padding:0.5pt 1.0pt;">51.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.11" style="padding:0.5pt 1.0pt;">71.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.11.12.1" style="background-color:#E6E6E6;">84.20</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.11.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.11.13.1" style="background-color:#E6E6E6;">77.05</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">88.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">79.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">84.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;">79.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;">80.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;">86.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;">63.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;">66.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.10" style="padding:0.5pt 1.0pt;">48.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.11" style="padding:0.5pt 1.0pt;">75.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.12.12.1" style="background-color:#E6E6E6;">85.23</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.12.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.12.13.1" style="background-color:#E6E6E6;">77.76</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">86.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">75.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">85.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;">80.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;">78.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;">79.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;">75.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;">72.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.10" style="padding:0.5pt 1.0pt;">70.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.11" style="padding:0.5pt 1.0pt;">76.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.13.12.1" style="background-color:#E6E6E6;">81.68</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.13.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.13.13.1" style="background-color:#E6E6E6;">80.73</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">61.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">73.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">62.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;">81.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;">57.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;">58.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;">70.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;">69.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.10" style="padding:0.5pt 1.0pt;">72.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.11" style="padding:0.5pt 1.0pt;">60.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.14.12.1" style="background-color:#E6E6E6;">77.76</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.14.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.14.13.1" style="background-color:#E6E6E6;">68.32</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.4.4.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">89.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">85.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">86.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;">85.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;">81.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;">84.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;">77.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;">75.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.10" style="padding:0.5pt 1.0pt;">72.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.11" style="padding:0.5pt 1.0pt;">79.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.15.12.1" style="background-color:#E6E6E6;">86.63</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.4.4.2.2.2.2.2.2.2.15.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.15.13.1" style="background-color:#E6E6E6;">82.57</span></span></span>
<span class="ltx_tr" id="A4.T14.4.4.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">88.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">83.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">85.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;">82.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;">82.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;">87.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;">75.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;">72.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.10" style="padding:0.5pt 1.0pt;">74.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.11" style="padding:0.5pt 1.0pt;">78.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.16.12.1" style="background-color:#E6E6E6;">87.12</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.4.4.2.2.2.2.2.2.2.16.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.4.4.2.2.2.2.2.2.2.16.13.1" style="background-color:#E6E6E6;">82.25</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.15" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.15.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.15.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.15.1.1.1.1"><span class="ltx_text" id="A4.T14.12.15.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.15.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_12" id="A4.T14.12.15.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.15.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Domain Translation(BLEU)</span></span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.15.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_7" id="A4.T14.12.15.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">Medical</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.15.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">Law</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.15.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">IT</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">Cs2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">En2Cs</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.15.1.1.1.1.1.1.3.12" style="padding:0.5pt 1.0pt;">En2Cs</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">42.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">33.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">44.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">33.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">31.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">36.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">46.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">48.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">50.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">35.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.15.1.1.1.1.1.1.4.12" style="padding:0.5pt 1.0pt;">33.94</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">41.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">30.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">41.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">28.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">33.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">36.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">42.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">36.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">35.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">33.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.5.12" style="padding:0.5pt 1.0pt;">31.69</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">32.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">22.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">29.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">18.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">23.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">31.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">37.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">30.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">37.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">20.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.6.12" style="padding:0.5pt 1.0pt;">20.5</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">41.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">30.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">41.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">28.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">32.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">39.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">43.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">42.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">42.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">35.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.7.12" style="padding:0.5pt 1.0pt;">34.20</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">43.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">33.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">46.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">32.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">36.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">42.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">43.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">41.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">19.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">33.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.8.12" style="padding:0.5pt 1.0pt;">19.03</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">35.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">23.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">32.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">13.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">27.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">36.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">31.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">25.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">18.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">19.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.9.12" style="padding:0.5pt 1.0pt;">15.14</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">38.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">27.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">36.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">27.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">28.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">34.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">38.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">39.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">39.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">34.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.10.12" style="padding:0.5pt 1.0pt;">33.81</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">43.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">34.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">42.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">31.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">33.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">38.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">43.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">49.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">52.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">34.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.11.12" style="padding:0.5pt 1.0pt;">38.86</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">44.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">35.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">43.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">32.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">35.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">39.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">46.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">51.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">54.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">33.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.12.12" style="padding:0.5pt 1.0pt;">40.33</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">37.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">25.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">37.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">24.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">29.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">30.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">39.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">30.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">26.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">31.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.13.12" style="padding:0.5pt 1.0pt;">23.74</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">27.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">28.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">28.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">26.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">22.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">18.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">22.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">35.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">29.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">32.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.14.12" style="padding:0.5pt 1.0pt;">25.40</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.15.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">41.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">30.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">42.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">36.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">36.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">45.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">49.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">41.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">39.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">40.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.15.1.1.1.1.1.1.15.12" style="padding:0.5pt 1.0pt;">36.77</span></span>
<span class="ltx_tr" id="A4.T14.12.15.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">41.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">32.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">42.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">37.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">32.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">48.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">45.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">47.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">50.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">42.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.15.1.1.1.1.1.1.16.12" style="padding:0.5pt 1.0pt;">45.64</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.6.6.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.6.6.2.2.2.2" style="width:400.0pt;height:271pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.6.6.2.2.2.2.2"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.6.6.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.3.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_6" id="A4.T14.6.6.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">Colloquial</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_4" id="A4.T14.6.6.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">Literature</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.3.4.1" style="background-color:#E6E6E6;">Avg. BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.3.5.1" style="background-color:#E6E6E6;">Avg. BLEU</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.5" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.6" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.7" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.8" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.9" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.10" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.11" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.12" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.6.6.2.2.2.2.2.2.2.2.13" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.5.5.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.6.6.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">48.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">42.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">32.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;">20.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;">20.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;">33.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;">14.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;">20.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.10" style="padding:0.5pt 1.0pt;">5.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.11" style="padding:0.5pt 1.0pt;">11.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.4.12.1" style="background-color:#E6E6E6;">34.69</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.6.6.2.2.2.2.2.2.2.4.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.4.13.1" style="background-color:#E6E6E6;">30.62</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">49.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">38.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">37.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;">26.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;">22.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;">32.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;">22.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;">24.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.10" style="padding:0.5pt 1.0pt;">12.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.11" style="padding:0.5pt 1.0pt;">13.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.5.12.1" style="background-color:#E6E6E6;">31.27</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.5.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.5.13.1" style="background-color:#E6E6E6;">32.61</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">32.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">20.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">19.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;">8.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;">15.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;">24.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;">14.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;">7.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.10" style="padding:0.5pt 1.0pt;">3.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.11" style="padding:0.5pt 1.0pt;">10.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.6.12.1" style="background-color:#E6E6E6;">22.27</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.6.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.6.13.1" style="background-color:#E6E6E6;">21.70</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">50.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">42.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">40.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;">28.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;">21.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;">35.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;">23.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;">25.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.10" style="padding:0.5pt 1.0pt;">10.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.11" style="padding:0.5pt 1.0pt;">16.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.7.12.1" style="background-color:#E6E6E6;">34.22</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.7.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.7.13.1" style="background-color:#E6E6E6;">33.12</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">53.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">42.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">39.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;">26.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;">22.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;">34.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;">24.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;">27.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.10" style="padding:0.5pt 1.0pt;">15.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.11" style="padding:0.5pt 1.0pt;">18.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.8.12.1" style="background-color:#E6E6E6;">31.22</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.8.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.8.13.1" style="background-color:#E6E6E6;">35.28</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">43.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">28.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">27.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;">12.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;">20.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;">30.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;">20.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;">18.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.10" style="padding:0.5pt 1.0pt;">9.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.11" style="padding:0.5pt 1.0pt;">13.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.9.12.1" style="background-color:#E6E6E6;">21.53</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.9.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.9.13.1" style="background-color:#E6E6E6;">26.61</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">49.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">36.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">32.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;">24.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;">21.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;">31.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;">19.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;">20.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.10" style="padding:0.5pt 1.0pt;">9.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.11" style="padding:0.5pt 1.0pt;">13.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.10.12.1" style="background-color:#E6E6E6;">31.08</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.10.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.10.13.1" style="background-color:#E6E6E6;">29.43</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">50.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">41.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">32.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;">23.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;">21.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;">33.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;">11.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;">16.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.10" style="padding:0.5pt 1.0pt;">4.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.11" style="padding:0.5pt 1.0pt;">11.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.11.12.1" style="background-color:#E6E6E6;">35.50</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.11.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.11.13.1" style="background-color:#E6E6E6;">30.02</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">54.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">43.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">34.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;">24.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;">21.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;">33.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;">13.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;">18.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.10" style="padding:0.5pt 1.0pt;">4.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.11" style="padding:0.5pt 1.0pt;">13.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.12.12.1" style="background-color:#E6E6E6;">36.58</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.12.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.12.13.1" style="background-color:#E6E6E6;">31.54</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">46.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">28.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">36.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;">23.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;">18.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;">25.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;">24.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;">25.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.10" style="padding:0.5pt 1.0pt;">11.30</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.11" style="padding:0.5pt 1.0pt;">14.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.13.12.1" style="background-color:#E6E6E6;">26.01</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.13.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.13.13.1" style="background-color:#E6E6E6;">30.56</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">22.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">32.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">16.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;">25.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;">9.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;">11.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;">21.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;">24.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.10" style="padding:0.5pt 1.0pt;">11.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.11" style="padding:0.5pt 1.0pt;">7.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.14.12.1" style="background-color:#E6E6E6;">24.82</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.14.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.14.13.1" style="background-color:#E6E6E6;">20.55</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.6.6.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">55.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">49.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">41.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;">31.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;">22.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;">28.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;">30.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;">36.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.10" style="padding:0.5pt 1.0pt;">16.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.11" style="padding:0.5pt 1.0pt;">21.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.15.12.1" style="background-color:#E6E6E6;">36.59</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.6.6.2.2.2.2.2.2.2.15.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.15.13.1" style="background-color:#E6E6E6;">37.25</span></span></span>
<span class="ltx_tr" id="A4.T14.6.6.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">53.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">48.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">36.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;">29.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;">24.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;">38.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;">25.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;">26.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.10" style="padding:0.5pt 1.0pt;">16.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.11" style="padding:0.5pt 1.0pt;">21.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.16.12.1" style="background-color:#E6E6E6;">40.45</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.6.6.2.2.2.2.2.2.2.16.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.6.6.2.2.2.2.2.2.2.16.13.1" style="background-color:#E6E6E6;">34.52</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.16" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.16.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.16.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.16.1.1.1.1"><span class="ltx_text" id="A4.T14.12.16.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.16.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_11" id="A4.T14.12.16.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.16.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Doc-level Translation</span></span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.16.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.16.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.16.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.16.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.16.1.1.1.1.1.1.2.5" style="padding:0.5pt 1.0pt;">Zh2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_2" id="A4.T14.12.16.1.1.1.1.1.1.2.6" style="padding:0.5pt 1.0pt;">En2Zh</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.16.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">d-BLEU</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">74.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">11.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">73.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">14.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">78.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">7.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">68.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">11.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">70.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.16.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">18.58</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">83.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">25.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">81.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">20.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">85.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">14.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">76.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">20.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">80.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">16.26</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">74.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">9.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">68.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">9.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">71.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">5.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">68.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">8.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">80.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">22.46</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">86.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">39.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">85.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">28.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">89.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">25.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">76.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">28.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">82.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">33.04</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">85.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">37.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">83.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">25.61</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">80.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">18.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">82.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">38.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">81.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">22.22</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">84.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">30.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">72.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">17.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">45.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">4.82</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">78.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">23.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">79.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">20.90</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">79.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">17.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">71.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">10.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">78.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">7.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">74.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">18.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">80.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">22.73</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">74.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">10.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">71.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">9.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">74.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">3.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">69.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">16.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">74.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">11.18</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">76.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">14.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">71.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">11.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">74.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">4.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">69.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">17.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">75.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">13.37</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">34.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">81.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">19.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">75.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">15.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">81.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">29.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">76.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">31.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">83.67</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">83.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">33.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">82.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">24.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">84.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">19.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">81.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">36.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">70.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">15.48</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.16.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">84.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">35.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">81.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">26.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">85.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">21.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">80.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">40.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">86.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.16.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">38.08</span></span>
<span class="ltx_tr" id="A4.T14.12.16.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">83.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">32.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">82.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">27.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">87.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">22.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">82.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">39.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">83.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.16.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">37.56</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.8.8.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.8.8.2.2.2.2" style="width:400.0pt;height:271pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.8.8.2.2.2.2.2"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.8.8.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.2.3.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.8.8.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">En2Cs</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.8.8.2.2.2.2.2.2.2.2.5" style="padding:0.5pt 1.0pt;">Cs2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Avg. En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.7.7.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_2" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">Avg. X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.8.8.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;">d-COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;">d-BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.3.6.1" style="background-color:#E6E6E6;">d-COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.3.7.1" style="background-color:#E6E6E6;">d-BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.3.8.1" style="background-color:#E6E6E6;">d-COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.8.8.2.2.2.2.2.2.2.3.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.3.9.1" style="background-color:#E6E6E6;">d-BLEU</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">78.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">10.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">74.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;">9.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.4.6.1" style="background-color:#E6E6E6;">74.97</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.4.7.1" style="background-color:#E6E6E6;">12.73</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.4.8.1" style="background-color:#E6E6E6;">72.23</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.8.8.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.4.9.1" style="background-color:#E6E6E6;">10.71</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">84.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">12.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">82.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;">17.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.5.6.1" style="background-color:#E6E6E6;">83.08</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.5.7.1" style="background-color:#E6E6E6;">15.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.5.8.1" style="background-color:#E6E6E6;">80.98</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.5.9.1" style="background-color:#E6E6E6;">21.42</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">68.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">3.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">74.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;">6.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.6.6.1" style="background-color:#E6E6E6;">72.23</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.6.7.1" style="background-color:#E6E6E6;">10.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.6.8.1" style="background-color:#E6E6E6;">72.48</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.6.9.1" style="background-color:#E6E6E6;">7.90</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">88.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">24.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">88.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;">41.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.7.6.1" style="background-color:#E6E6E6;">86.27</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.7.7.1" style="background-color:#E6E6E6;">28.03</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.7.8.1" style="background-color:#E6E6E6;">83.68</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.7.9.1" style="background-color:#E6E6E6;">36.35</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">66.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">8.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">87.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;">36.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.8.6.1" style="background-color:#E6E6E6;">78.05</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.8.7.1" style="background-color:#E6E6E6;">18.66</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.8.8.1" style="background-color:#E6E6E6;">85.17</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.8.9.1" style="background-color:#E6E6E6;">37.77</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">62.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">7.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">85.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;">24.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.9.6.1" style="background-color:#E6E6E6;">65.25</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.9.7.1" style="background-color:#E6E6E6;">12.76</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.9.8.1" style="background-color:#E6E6E6;">82.94</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.9.9.1" style="background-color:#E6E6E6;">26.16</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">77.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">7.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">80.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;">15.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.10.6.1" style="background-color:#E6E6E6;">77.25</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.10.7.1" style="background-color:#E6E6E6;">11.99</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.10.8.1" style="background-color:#E6E6E6;">78.13</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.10.9.1" style="background-color:#E6E6E6;">16.87</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">77.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">7.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">75.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;">9.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.11.6.1" style="background-color:#E6E6E6;">74.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.11.7.1" style="background-color:#E6E6E6;">8.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.11.8.1" style="background-color:#E6E6E6;">73.49</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.11.9.1" style="background-color:#E6E6E6;">12.14</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">78.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">10.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">76.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;">12.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.12.6.1" style="background-color:#E6E6E6;">75.01</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.12.7.1" style="background-color:#E6E6E6;">10.10</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.12.8.1" style="background-color:#E6E6E6;">74.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.12.9.1" style="background-color:#E6E6E6;">14.68</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">13.67</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">77.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">36.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;">85.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.13.6.1" style="background-color:#E6E6E6;">19.99</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.13.7.1" style="background-color:#E6E6E6;">79.66</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.13.8.1" style="background-color:#E6E6E6;">33.55</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.13.9.1" style="background-color:#E6E6E6;">81.21</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">83.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">18.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">85.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;">34.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.14.6.1" style="background-color:#E6E6E6;">80.20</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.14.7.1" style="background-color:#E6E6E6;">19.47</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.14.8.1" style="background-color:#E6E6E6;">83.38</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.14.9.1" style="background-color:#E6E6E6;">34.97</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.8.8.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">83.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">19.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">84.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;">35.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.15.6.1" style="background-color:#E6E6E6;">84.08</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.15.7.1" style="background-color:#E6E6E6;">26.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.15.8.1" style="background-color:#E6E6E6;">83.49</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.8.8.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.15.9.1" style="background-color:#E6E6E6;">37.07</span></span></span>
<span class="ltx_tr" id="A4.T14.8.8.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">86.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">22.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">85.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;">34.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.16.6.1" style="background-color:#E6E6E6;">84.82</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.16.7.1" style="background-color:#E6E6E6;">27.62</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.16.8.1" style="background-color:#E6E6E6;">83.85</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.8.8.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.8.8.2.2.2.2.2.2.2.16.9.1" style="background-color:#E6E6E6;">35.76</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.17.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.17.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.17.1.1.1.1"><span class="ltx_text" id="A4.T14.12.17.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.17.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_13" id="A4.T14.12.17.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.17.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Terminology-constrained Translation</span></span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.17.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.17.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.17.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.17.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">En2Ru</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.17.1.1.1.1.1.1.2.5" style="padding:0.5pt 1.0pt;">Zh2En</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">TSR</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">TSR</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">TSR</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.12" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.17.1.1.1.1.1.1.3.13" style="padding:0.5pt 1.0pt;">TSR</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">79.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">21.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">36.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">89.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">48.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">77.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">89.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">30.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">57.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">65.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.12" style="padding:0.5pt 1.0pt;">8.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.17.1.1.1.1.1.1.4.13" style="padding:0.5pt 1.0pt;">8.91</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">79.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">21.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">36.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">88.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">40.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">69.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">88.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">24.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">55.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">73.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.12" style="padding:0.5pt 1.0pt;">12.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.5.13" style="padding:0.5pt 1.0pt;">24.08</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">77.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">18.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">32.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">83.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">29.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">58.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">81.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">17.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">40.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">66.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.12" style="padding:0.5pt 1.0pt;">7.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.6.13" style="padding:0.5pt 1.0pt;">12.55</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">80.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">31.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">67.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">83.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">39.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">85.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">86.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">27.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">70.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">71.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.12" style="padding:0.5pt 1.0pt;">13.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.7.13" style="padding:0.5pt 1.0pt;">71.18</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">81.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">31.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">66.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">88.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">46.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">87.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">89.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">30.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">73.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">73.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.12" style="padding:0.5pt 1.0pt;">15.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.8.13" style="padding:0.5pt 1.0pt;">78.84</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">81.33</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">29.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">70.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">81.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">33.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">84.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">66.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">12.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">51.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">70.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.12" style="padding:0.5pt 1.0pt;">12.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.9.13" style="padding:0.5pt 1.0pt;">74.29</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">mT5-large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">81.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">33.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">76.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">87.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">42.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">88.30</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">87.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">25.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">66.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">71.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.12" style="padding:0.5pt 1.0pt;">12.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.10.13" style="padding:0.5pt 1.0pt;">76.15</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">78.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">21.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">35.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">89.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">47.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">77.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">87.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">27.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">55.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">55.58</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.12" style="padding:0.5pt 1.0pt;">6.16</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.11.13" style="padding:0.5pt 1.0pt;">8.53</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">79.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">21.75</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">36.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">89.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">47.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">76.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">88.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">27.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">55.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">54.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.12" style="padding:0.5pt 1.0pt;">5.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.12.13" style="padding:0.5pt 1.0pt;">8.80</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">81.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">34.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">77.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">85.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">38.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">88.30</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">86.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">22.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">71.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">73.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.12" style="padding:0.5pt 1.0pt;">13.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.13.13" style="padding:0.5pt 1.0pt;">76.49</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">64.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">20.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">84.67</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">85.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">40.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">95.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">84.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">24.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">80.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">57.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.12" style="padding:0.5pt 1.0pt;">7.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.14.13" style="padding:0.5pt 1.0pt;">83.35</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.17.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">82.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">37.28</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">87.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">89.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">49.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">94.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">89.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">31.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">84.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">74.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.12" style="padding:0.5pt 1.0pt;">17.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.17.1.1.1.1.1.1.15.13" style="padding:0.5pt 1.0pt;">82.18</span></span>
<span class="ltx_tr" id="A4.T14.12.17.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">81.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">33.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">71.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">90.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">52.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">90.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">89.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">32.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">72.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">72.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.12" style="padding:0.5pt 1.0pt;">13.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.17.1.1.1.1.1.1.16.13" style="padding:0.5pt 1.0pt;">75.05</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.10.10.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.10.10.2.2.2.2" style="width:400.0pt;height:271pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.10.10.2.2.2.2.2"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.10.10.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.2.3.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.10.10.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.10.10.2.2.2.2.2.2.2.2.5" style="padding:0.5pt 1.0pt;">En2Cs</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Avg. En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.9.9.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">Avg. X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.10.10.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;">TSR</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.6" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.7" style="padding:0.5pt 1.0pt;">TSR</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.8.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.9.1" style="background-color:#E6E6E6;">BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.10.1" style="background-color:#E6E6E6;">TSR</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.11.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.12.1" style="background-color:#E6E6E6;">BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.10.10.2.2.2.2.2.2.2.3.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.3.13.1" style="background-color:#E6E6E6;">TSR</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">85.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">40.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">64.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;">85.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;">31.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;">39.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.8.1" style="background-color:#E6E6E6;">87.79</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.9.1" style="background-color:#E6E6E6;">37.67</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.10.1" style="background-color:#E6E6E6;">60.02</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.11.1" style="background-color:#E6E6E6;">72.63</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.12.1" style="background-color:#E6E6E6;">14.96</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.10.10.2.2.2.2.2.2.2.4.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.4.13.1" style="background-color:#E6E6E6;">22.47</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">85.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">38.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">62.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;">85.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;">27.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;">37.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.8.1" style="background-color:#E6E6E6;">87.30</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.9.1" style="background-color:#E6E6E6;">32.91</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.10.1" style="background-color:#E6E6E6;">56.17</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.11.1" style="background-color:#E6E6E6;">76.39</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.12.1" style="background-color:#E6E6E6;">16.87</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.5.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.5.13.1" style="background-color:#E6E6E6;">30.23</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">83.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">32.19</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">50.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;">80.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;">19.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;">26.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.8.1" style="background-color:#E6E6E6;">82.33</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.9.1" style="background-color:#E6E6E6;">24.51</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.10.1" style="background-color:#E6E6E6;">43.80</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.11.1" style="background-color:#E6E6E6;">72.24</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.12.1" style="background-color:#E6E6E6;">12.61</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.6.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.6.13.1" style="background-color:#E6E6E6;">22.40</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">87.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">46.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">88.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;">88.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;">44.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;">71.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.8.1" style="background-color:#E6E6E6;">86.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.9.1" style="background-color:#E6E6E6;">39.73</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.10.1" style="background-color:#E6E6E6;">79.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.11.1" style="background-color:#E6E6E6;">76.47</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.12.1" style="background-color:#E6E6E6;">22.56</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.7.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.7.13.1" style="background-color:#E6E6E6;">69.22</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">87.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">48.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">90.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;">85.67</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;">35.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;">74.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.8.1" style="background-color:#E6E6E6;">87.83</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.9.1" style="background-color:#E6E6E6;">40.42</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.10.1" style="background-color:#E6E6E6;">81.40</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.11.1" style="background-color:#E6E6E6;">77.32</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.12.1" style="background-color:#E6E6E6;">23.26</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.8.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.8.13.1" style="background-color:#E6E6E6;">72.56</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">85.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">42.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">92.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;">77.95</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;">27.96</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;">58.11</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.8.1" style="background-color:#E6E6E6;">77.86</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.9.1" style="background-color:#E6E6E6;">29.26</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.10.1" style="background-color:#E6E6E6;">71.58</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.11.1" style="background-color:#E6E6E6;">76.15</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.12.1" style="background-color:#E6E6E6;">20.90</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.9.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.9.13.1" style="background-color:#E6E6E6;">72.29</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">86.40</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">40.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">85.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;">86.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;">41.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;">69.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.8.1" style="background-color:#E6E6E6;">87.12</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.9.1" style="background-color:#E6E6E6;">37.60</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.10.1" style="background-color:#E6E6E6;">77.60</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.11.1" style="background-color:#E6E6E6;">76.47</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.12.1" style="background-color:#E6E6E6;">23.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.10.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.10.13.1" style="background-color:#E6E6E6;">76.25</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">84.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">38.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">60.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;">86.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;">35.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;">43.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.8.1" style="background-color:#E6E6E6;">86.86</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.9.1" style="background-color:#E6E6E6;">37.37</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.10.1" style="background-color:#E6E6E6;">59.03</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.11.1" style="background-color:#E6E6E6;">67.19</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.12.1" style="background-color:#E6E6E6;">13.71</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.11.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.11.13.1" style="background-color:#E6E6E6;">22.08</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">85.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">39.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">61.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;">86.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;">35.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;">44.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.8.1" style="background-color:#E6E6E6;">87.51</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.9.1" style="background-color:#E6E6E6;">37.74</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.10.1" style="background-color:#E6E6E6;">59.62</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.11.1" style="background-color:#E6E6E6;">66.86</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.12.1" style="background-color:#E6E6E6;">13.86</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.12.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.12.13.1" style="background-color:#E6E6E6;">22.68</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">85.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">40.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">90.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;">86.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;">40.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;">75.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.8.1" style="background-color:#E6E6E6;">86.05</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.9.1" style="background-color:#E6E6E6;">35.57</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.10.1" style="background-color:#E6E6E6;">81.60</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.11.1" style="background-color:#E6E6E6;">77.57</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.12.1" style="background-color:#E6E6E6;">24.11</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.13.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.13.13.1" style="background-color:#E6E6E6;">76.79</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">72.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">32.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">95.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;">82.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;">39.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;">84.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.8.1" style="background-color:#E6E6E6;">81.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.9.1" style="background-color:#E6E6E6;">34.50</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.10.1" style="background-color:#E6E6E6;">88.90</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.11.1" style="background-color:#E6E6E6;">61.29</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.12.1" style="background-color:#E6E6E6;">14.32</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.14.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.14.13.1" style="background-color:#E6E6E6;">84.01</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.10.10.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">89.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">56.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">96.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;">88.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;">47.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;">86.45</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.8.1" style="background-color:#E6E6E6;">89.46</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.9.1" style="background-color:#E6E6E6;">46.36</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.10.1" style="background-color:#E6E6E6;">90.37</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.11.1" style="background-color:#E6E6E6;">78.55</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.12.1" style="background-color:#E6E6E6;">27.17</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.10.10.2.2.2.2.2.2.2.15.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.15.13.1" style="background-color:#E6E6E6;">84.67</span></span></span>
<span class="ltx_tr" id="A4.T14.10.10.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">89.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">58.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">87.68</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;">88.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;">41.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;">61.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.8.1" style="background-color:#E6E6E6;">89.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.9.1" style="background-color:#E6E6E6;">46.04</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.10.1" style="background-color:#E6E6E6;">78.23</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.11" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.11.1" style="background-color:#E6E6E6;">77.27</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.12" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.12.1" style="background-color:#E6E6E6;">23.47</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.10.10.2.2.2.2.2.2.2.16.13" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.10.10.2.2.2.2.2.2.2.16.13.1" style="background-color:#E6E6E6;">73.05</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.18" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.18.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.18.1.1.1" style="width:400.0pt;height:289pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.18.1.1.1.1"><span class="ltx_text" id="A4.T14.12.18.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.18.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_13" id="A4.T14.12.18.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A4.T14.12.18.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Automatic Post-edition</span></span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.2.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.18.1.1.1.1.1.1.2.1.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.18.1.1.1.1.1.1.2.2" style="padding:0.5pt 1.0pt;">De2En</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.18.1.1.1.1.1.1.2.3" style="padding:0.5pt 1.0pt;">En2De</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.18.1.1.1.1.1.1.2.4" style="padding:0.5pt 1.0pt;">Ru2En</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t ltx_colspan ltx_colspan_3" id="A4.T14.12.18.1.1.1.1.1.1.2.5" style="padding:0.5pt 1.0pt;">En2Ru</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.4" style="padding:0.5pt 1.0pt;">HTER</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.5" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.6" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.7" style="padding:0.5pt 1.0pt;">HTER</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.8" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.9" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.10" style="padding:0.5pt 1.0pt;">HTER</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.11" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.12" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.18.1.1.1.1.1.1.3.13" style="padding:0.5pt 1.0pt;">HTER</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.2" style="padding:0.5pt 1.0pt;">89.18</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.3" style="padding:0.5pt 1.0pt;">52.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.4" style="padding:0.5pt 1.0pt;">38.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.5" style="padding:0.5pt 1.0pt;">85.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.6" style="padding:0.5pt 1.0pt;">51.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.7" style="padding:0.5pt 1.0pt;">38.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.8" style="padding:0.5pt 1.0pt;">85.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.9" style="padding:0.5pt 1.0pt;">48.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.10" style="padding:0.5pt 1.0pt;">42.47</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.11" style="padding:0.5pt 1.0pt;">85.92</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.12" style="padding:0.5pt 1.0pt;">40.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.18.1.1.1.1.1.1.4.13" style="padding:0.5pt 1.0pt;">53.89</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.2" style="padding:0.5pt 1.0pt;">88.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.3" style="padding:0.5pt 1.0pt;">45.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.4" style="padding:0.5pt 1.0pt;">44.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.5" style="padding:0.5pt 1.0pt;">84.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.6" style="padding:0.5pt 1.0pt;">42.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.7" style="padding:0.5pt 1.0pt;">46.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.8" style="padding:0.5pt 1.0pt;">86.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.9" style="padding:0.5pt 1.0pt;">47.01</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.10" style="padding:0.5pt 1.0pt;">42.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.11" style="padding:0.5pt 1.0pt;">85.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.12" style="padding:0.5pt 1.0pt;">35.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.5.13" style="padding:0.5pt 1.0pt;">58.49</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.2" style="padding:0.5pt 1.0pt;">85.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.3" style="padding:0.5pt 1.0pt;">42.44</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.4" style="padding:0.5pt 1.0pt;">51.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.5" style="padding:0.5pt 1.0pt;">75.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.6" style="padding:0.5pt 1.0pt;">24.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.7" style="padding:0.5pt 1.0pt;">68.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.8" style="padding:0.5pt 1.0pt;">78.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.9" style="padding:0.5pt 1.0pt;">30.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.10" style="padding:0.5pt 1.0pt;">59.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.11" style="padding:0.5pt 1.0pt;">77.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.12" style="padding:0.5pt 1.0pt;">21.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.6.13" style="padding:0.5pt 1.0pt;">75.29</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.2" style="padding:0.5pt 1.0pt;">89.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.3" style="padding:0.5pt 1.0pt;">75.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.4" style="padding:0.5pt 1.0pt;">22.83</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.5" style="padding:0.5pt 1.0pt;">84.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.6" style="padding:0.5pt 1.0pt;">63.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.7" style="padding:0.5pt 1.0pt;">29.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.8" style="padding:0.5pt 1.0pt;">90.93</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.9" style="padding:0.5pt 1.0pt;">75.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.10" style="padding:0.5pt 1.0pt;">19.22</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.11" style="padding:0.5pt 1.0pt;">88.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.12" style="padding:0.5pt 1.0pt;">54.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.7.13" style="padding:0.5pt 1.0pt;">40.16</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.2" style="padding:0.5pt 1.0pt;">88.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.3" style="padding:0.5pt 1.0pt;">80.62</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.4" style="padding:0.5pt 1.0pt;">17.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.5" style="padding:0.5pt 1.0pt;">85.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.6" style="padding:0.5pt 1.0pt;">71.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.7" style="padding:0.5pt 1.0pt;">20.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.8" style="padding:0.5pt 1.0pt;">91.64</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.9" style="padding:0.5pt 1.0pt;">81.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.10" style="padding:0.5pt 1.0pt;">14.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.11" style="padding:0.5pt 1.0pt;">91.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.12" style="padding:0.5pt 1.0pt;">75.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.8.13" style="padding:0.5pt 1.0pt;">19.14</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.2" style="padding:0.5pt 1.0pt;">84.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.3" style="padding:0.5pt 1.0pt;">39.59</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.4" style="padding:0.5pt 1.0pt;">63.14</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.5" style="padding:0.5pt 1.0pt;">74.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.6" style="padding:0.5pt 1.0pt;">29.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.7" style="padding:0.5pt 1.0pt;">76.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.8" style="padding:0.5pt 1.0pt;">78.77</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.9" style="padding:0.5pt 1.0pt;">28.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.10" style="padding:0.5pt 1.0pt;">92.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.11" style="padding:0.5pt 1.0pt;">51.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.12" style="padding:0.5pt 1.0pt;">7.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.9.13" style="padding:0.5pt 1.0pt;">218.99</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.10.1" style="padding:0.5pt 1.0pt;">mT5-large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.2" style="padding:0.5pt 1.0pt;">88.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.3" style="padding:0.5pt 1.0pt;">73.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.4" style="padding:0.5pt 1.0pt;">21.57</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.5" style="padding:0.5pt 1.0pt;">85.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.6" style="padding:0.5pt 1.0pt;">70.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.7" style="padding:0.5pt 1.0pt;">22.17</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.8" style="padding:0.5pt 1.0pt;">89.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.9" style="padding:0.5pt 1.0pt;">70.37</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.10" style="padding:0.5pt 1.0pt;">26.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.11" style="padding:0.5pt 1.0pt;">81.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.12" style="padding:0.5pt 1.0pt;">35.31</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.10.13" style="padding:0.5pt 1.0pt;">86.20</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.2" style="padding:0.5pt 1.0pt;">89.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.3" style="padding:0.5pt 1.0pt;">52.67</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.4" style="padding:0.5pt 1.0pt;">36.74</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.5" style="padding:0.5pt 1.0pt;">84.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.6" style="padding:0.5pt 1.0pt;">50.25</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.7" style="padding:0.5pt 1.0pt;">39.38</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.8" style="padding:0.5pt 1.0pt;">85.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.9" style="padding:0.5pt 1.0pt;">51.81</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.10" style="padding:0.5pt 1.0pt;">37.90</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.11" style="padding:0.5pt 1.0pt;">84.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.12" style="padding:0.5pt 1.0pt;">43.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.11.13" style="padding:0.5pt 1.0pt;">49.92</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.2" style="padding:0.5pt 1.0pt;">89.60</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.3" style="padding:0.5pt 1.0pt;">53.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.4" style="padding:0.5pt 1.0pt;">36.43</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.5" style="padding:0.5pt 1.0pt;">84.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.6" style="padding:0.5pt 1.0pt;">50.39</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.7" style="padding:0.5pt 1.0pt;">39.55</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.8" style="padding:0.5pt 1.0pt;">86.10</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.9" style="padding:0.5pt 1.0pt;">53.23</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.10" style="padding:0.5pt 1.0pt;">36.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.11" style="padding:0.5pt 1.0pt;">85.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.12" style="padding:0.5pt 1.0pt;">39.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.12.13" style="padding:0.5pt 1.0pt;">52.69</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.2" style="padding:0.5pt 1.0pt;">88.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.3" style="padding:0.5pt 1.0pt;">61.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.4" style="padding:0.5pt 1.0pt;">33.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.5" style="padding:0.5pt 1.0pt;">84.06</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.6" style="padding:0.5pt 1.0pt;">59.78</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.7" style="padding:0.5pt 1.0pt;">32.26</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.8" style="padding:0.5pt 1.0pt;">86.97</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.9" style="padding:0.5pt 1.0pt;">66.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.10" style="padding:0.5pt 1.0pt;">29.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.11" style="padding:0.5pt 1.0pt;">88.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.12" style="padding:0.5pt 1.0pt;">62.54</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.13.13" style="padding:0.5pt 1.0pt;">32.92</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.2" style="padding:0.5pt 1.0pt;">61.70</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.3" style="padding:0.5pt 1.0pt;">23.09</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.4" style="padding:0.5pt 1.0pt;">94.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.5" style="padding:0.5pt 1.0pt;">78.79</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.6" style="padding:0.5pt 1.0pt;">36.02</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.7" style="padding:0.5pt 1.0pt;">59.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.8" style="padding:0.5pt 1.0pt;">55.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.9" style="padding:0.5pt 1.0pt;">17.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.10" style="padding:0.5pt 1.0pt;">112.49</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.11" style="padding:0.5pt 1.0pt;">79.42</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.12" style="padding:0.5pt 1.0pt;">20.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.14.13" style="padding:0.5pt 1.0pt;">95.40</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.18.1.1.1.1.1.1.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.2" style="padding:0.5pt 1.0pt;">90.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.3" style="padding:0.5pt 1.0pt;">78.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.4" style="padding:0.5pt 1.0pt;">19.53</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.5" style="padding:0.5pt 1.0pt;">86.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.6" style="padding:0.5pt 1.0pt;">66.46</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.7" style="padding:0.5pt 1.0pt;">26.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.8" style="padding:0.5pt 1.0pt;">90.34</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.9" style="padding:0.5pt 1.0pt;">75.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.10" style="padding:0.5pt 1.0pt;">20.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.11" style="padding:0.5pt 1.0pt;">91.36</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.12" style="padding:0.5pt 1.0pt;">69.48</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.18.1.1.1.1.1.1.15.13" style="padding:0.5pt 1.0pt;">25.77</span></span>
<span class="ltx_tr" id="A4.T14.12.18.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.2" style="padding:0.5pt 1.0pt;">90.50</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.3" style="padding:0.5pt 1.0pt;">76.86</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.4" style="padding:0.5pt 1.0pt;">21.03</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.5" style="padding:0.5pt 1.0pt;">86.07</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.6" style="padding:0.5pt 1.0pt;">64.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.7" style="padding:0.5pt 1.0pt;">25.80</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.8" style="padding:0.5pt 1.0pt;">91.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.9" style="padding:0.5pt 1.0pt;">75.13</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.10" style="padding:0.5pt 1.0pt;">19.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.11" style="padding:0.5pt 1.0pt;">90.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.12" style="padding:0.5pt 1.0pt;">68.24</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.18.1.1.1.1.1.1.16.13" style="padding:0.5pt 1.0pt;">26.72</span></span>
</span></span></span>
</span></span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2" style="background-color:#E6E6E6;padding:0.5pt 1.0pt;"><span class="ltx_text ltx_inline-block" id="A4.T14.12.12.2.2" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T14.12.12.2.2.2.2" style="width:400.0pt;height:271pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T14.12.12.2.2.2.2.2"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T14.12.12.2.2.2.2.2.2.2">
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.2.3" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.2.3.1">Model</span></span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.12.12.2.2.2.2.2.2.2.2.4" style="padding:0.5pt 1.0pt;">En2Zh</span>
<span class="ltx_td ltx_nopad_l ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1" style="background-color:#E6E6E6;">Avg. En <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1"><semantics id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1a"><mo id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1b"><ci id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.11.11.1.1.1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> X</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_colspan ltx_colspan_3" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1" style="background-color:#E6E6E6;">Avg. X <math alttext="\to" class="ltx_Math" display="inline" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1"><semantics id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1a"><mo id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1b"><ci id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1.1.cmml" xref="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="A4.T14.12.12.2.2.2.2.2.2.2.2.2.1.m1.1d">→</annotation></semantics></math> En</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.3.1" style="padding:0.5pt 1.0pt;"></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.2" style="padding:0.5pt 1.0pt;">COMET</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.3" style="padding:0.5pt 1.0pt;">BLEU</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.4" style="padding:0.5pt 1.0pt;">HTER</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.5.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.6.1" style="background-color:#E6E6E6;">BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.7.1" style="background-color:#E6E6E6;">HTER</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.8.1" style="background-color:#E6E6E6;">COMET</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.9.1" style="background-color:#E6E6E6;">BLEU</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T14.12.12.2.2.2.2.2.2.2.3.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.3.10.1" style="background-color:#E6E6E6;">HTER</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.4">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.1" style="padding:0.5pt 1.0pt;">NLLB-3.3B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.2" style="padding:0.5pt 1.0pt;">75.87</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.3" style="padding:0.5pt 1.0pt;">34.04</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.4" style="padding:0.5pt 1.0pt;">99.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.5.1" style="background-color:#E6E6E6;">82.59</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.6.1" style="background-color:#E6E6E6;">42.03</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.7.1" style="background-color:#E6E6E6;">64.12</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.8.1" style="background-color:#E6E6E6;">87.36</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.9.1" style="background-color:#E6E6E6;">50.81</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_t" id="A4.T14.12.12.2.2.2.2.2.2.2.4.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.4.10.1" style="background-color:#E6E6E6;">40.71</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.5">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.5.1" style="padding:0.5pt 1.0pt;">ALMA-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.2" style="padding:0.5pt 1.0pt;">79.05</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.3" style="padding:0.5pt 1.0pt;">28.71</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.4" style="padding:0.5pt 1.0pt;">90.65</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.5.1" style="background-color:#E6E6E6;">83.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.6.1" style="background-color:#E6E6E6;">35.52</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.7.1" style="background-color:#E6E6E6;">65.33</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.8.1" style="background-color:#E6E6E6;">87.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.9.1" style="background-color:#E6E6E6;">46.29</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.5.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.5.10.1" style="background-color:#E6E6E6;">43.52</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.6">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.6.1" style="padding:0.5pt 1.0pt;">BigTranslate</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.2" style="padding:0.5pt 1.0pt;">73.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.3" style="padding:0.5pt 1.0pt;">23.21</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.4" style="padding:0.5pt 1.0pt;">103.89</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.5.1" style="background-color:#E6E6E6;">75.61</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.6.1" style="background-color:#E6E6E6;">23.10</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.7.1" style="background-color:#E6E6E6;">82.63</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.8.1" style="background-color:#E6E6E6;">82.07</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.9.1" style="background-color:#E6E6E6;">36.53</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.6.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.6.10.1" style="background-color:#E6E6E6;">55.45</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.7.1" style="padding:0.5pt 1.0pt;">Aya-23-8B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.2" style="padding:0.5pt 1.0pt;">82.84</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.3" style="padding:0.5pt 1.0pt;">63.29</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.4" style="padding:0.5pt 1.0pt;">84.56</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.5.1" style="background-color:#E6E6E6;">85.35</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.6.1" style="background-color:#E6E6E6;">60.35</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.7.1" style="background-color:#E6E6E6;">51.42</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.8.1" style="background-color:#E6E6E6;">90.01</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.9.1" style="background-color:#E6E6E6;">75.49</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.7.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.7.10.1" style="background-color:#E6E6E6;">21.03</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.8.1" style="padding:0.5pt 1.0pt;">TowerInstruct-7B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.2" style="padding:0.5pt 1.0pt;">85.73</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.3" style="padding:0.5pt 1.0pt;">74.12</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.4" style="padding:0.5pt 1.0pt;">53.72</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.5.1" style="background-color:#E6E6E6;">87.50</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.6.1" style="background-color:#E6E6E6;">73.76</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.7.1" style="background-color:#E6E6E6;">31.24</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.8.1" style="background-color:#E6E6E6;">90.31</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.9.1" style="background-color:#E6E6E6;">81.06</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.8.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.8.10.1" style="background-color:#E6E6E6;">15.74</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.9">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.9.1" style="padding:0.5pt 1.0pt;">Bayling-13B</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.2" style="padding:0.5pt 1.0pt;">72.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.3" style="padding:0.5pt 1.0pt;">38.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.4" style="padding:0.5pt 1.0pt;">160.32</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.5.1" style="background-color:#E6E6E6;">65.97</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.6.1" style="background-color:#E6E6E6;">25.25</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.7.1" style="background-color:#E6E6E6;">151.96</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.8.1" style="background-color:#E6E6E6;">81.83</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.9.1" style="background-color:#E6E6E6;">34.08</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.9.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.9.10.1" style="background-color:#E6E6E6;">77.64</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.10">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.10.1" style="padding:0.5pt 1.0pt;">mT5-Large</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.2" style="padding:0.5pt 1.0pt;">82.15</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.3" style="padding:0.5pt 1.0pt;">54.63</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.4" style="padding:0.5pt 1.0pt;">90.52</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.5.1" style="background-color:#E6E6E6;">82.97</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.6.1" style="background-color:#E6E6E6;">53.36</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.7.1" style="background-color:#E6E6E6;">66.30</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.8.1" style="background-color:#E6E6E6;">88.80</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.9.1" style="background-color:#E6E6E6;">72.17</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.10.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.10.10.1" style="background-color:#E6E6E6;">23.90</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.11">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.11.1" style="padding:0.5pt 1.0pt;">NMT-8-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.2" style="padding:0.5pt 1.0pt;">75.99</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.3" style="padding:0.5pt 1.0pt;">34.69</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.4" style="padding:0.5pt 1.0pt;">99.98</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.5.1" style="background-color:#E6E6E6;">81.73</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.6.1" style="background-color:#E6E6E6;">42.80</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.7.1" style="background-color:#E6E6E6;">63.09</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.8.1" style="background-color:#E6E6E6;">87.26</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.9.1" style="background-color:#E6E6E6;">52.24</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.11.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.11.10.1" style="background-color:#E6E6E6;">37.32</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.12">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.12.1" style="padding:0.5pt 1.0pt;">NMT-40-8</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.2" style="padding:0.5pt 1.0pt;">77.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.3" style="padding:0.5pt 1.0pt;">34.85</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.4" style="padding:0.5pt 1.0pt;">100.00</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.5.1" style="background-color:#E6E6E6;">82.36</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.6.1" style="background-color:#E6E6E6;">41.74</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.7.1" style="background-color:#E6E6E6;">64.08</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.8.1" style="background-color:#E6E6E6;">87.85</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.9.1" style="background-color:#E6E6E6;">53.39</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.12.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.12.10.1" style="background-color:#E6E6E6;">36.44</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.13">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.13.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Base, 3-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.2" style="padding:0.5pt 1.0pt;">81.94</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.3" style="padding:0.5pt 1.0pt;">54.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.4" style="padding:0.5pt 1.0pt;">74.88</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.5.1" style="background-color:#E6E6E6;">84.95</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.6.1" style="background-color:#E6E6E6;">58.99</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.7.1" style="background-color:#E6E6E6;">46.68</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.8.1" style="background-color:#E6E6E6;">87.56</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.9.1" style="background-color:#E6E6E6;">63.86</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.13.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.13.10.1" style="background-color:#E6E6E6;">31.17</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.14">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.14.1" style="padding:0.5pt 1.0pt;">Llama3-8B-Inst, 0-shot</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.2" style="padding:0.5pt 1.0pt;">74.51</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.3" style="padding:0.5pt 1.0pt;">36.41</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.4" style="padding:0.5pt 1.0pt;">145.27</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.5.1" style="background-color:#E6E6E6;">77.57</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.6.1" style="background-color:#E6E6E6;">31.10</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.7.1" style="background-color:#E6E6E6;">100.20</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.8.1" style="background-color:#E6E6E6;">58.53</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.9.1" style="background-color:#E6E6E6;">20.30</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.14.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.14.10.1" style="background-color:#E6E6E6;">103.49</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.15">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T14.12.12.2.2.2.2.2.2.2.15.1" style="padding:0.5pt 1.0pt;">Llama3-8B-SFT</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.2" style="padding:0.5pt 1.0pt;">82.91</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.3" style="padding:0.5pt 1.0pt;">55.08</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.4" style="padding:0.5pt 1.0pt;">77.20</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.5.1" style="background-color:#E6E6E6;">86.94</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.6.1" style="background-color:#E6E6E6;">63.67</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.7.1" style="background-color:#E6E6E6;">42.99</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.8.1" style="background-color:#E6E6E6;">90.21</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.9.1" style="background-color:#E6E6E6;">76.60</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T14.12.12.2.2.2.2.2.2.2.15.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.15.10.1" style="background-color:#E6E6E6;">20.14</span></span></span>
<span class="ltx_tr" id="A4.T14.12.12.2.2.2.2.2.2.2.16">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.1" style="padding:0.5pt 1.0pt;">LaMaTE</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.2" style="padding:0.5pt 1.0pt;">82.35</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.3" style="padding:0.5pt 1.0pt;">53.76</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.4" style="padding:0.5pt 1.0pt;">86.66</span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.5" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.5.1" style="background-color:#E6E6E6;">86.43</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.6" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.6.1" style="background-color:#E6E6E6;">62.21</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.7" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.7.1" style="background-color:#E6E6E6;">46.39</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.8" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.8.1" style="background-color:#E6E6E6;">90.77</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.9" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.9.1" style="background-color:#E6E6E6;">76.00</span></span>
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T14.12.12.2.2.2.2.2.2.2.16.10" style="padding:0.5pt 1.0pt;"><span class="ltx_text" id="A4.T14.12.12.2.2.2.2.2.2.2.16.10.1" style="background-color:#E6E6E6;">20.45</span></span></span>
</span></span></span>
</span></span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents BLEU scores on the FLORES-200 devtest set for various machine translation models.  The models were trained using data from OPUS-100, which includes 99 languages. The languages are categorized into four resource levels based on the amount of training data available: high-resource (HRL), medium-resource (MRL), low-resource (LRL), and very low-resource (XRL). The numbers in parentheses after each resource level indicate the number of languages in that category.
> <details>
> <summary>read the caption</summary>
> Table 3: BLEU performance evaluated on the FLORES-200 devtest set, with models trained on OPUS-100 data (99 languages). HRL, MRL, LRL, and XRL represent high, medium, low, and very low-resource languages, respectively. The bracketed numbers indicate the count of languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A4.T15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T15.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column" colspan="3" id="A4.T15.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></th>
</tr>
<tr class="ltx_tr" id="A4.T15.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="A4.T15.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.2.2.1.1">
<span class="ltx_p" id="A4.T15.1.2.2.1.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.1.2.2.1.1.1.1">Data Set</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="A4.T15.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.2.2.2.1">
<span class="ltx_p" id="A4.T15.1.2.2.2.1.1" style="width:91.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.1.2.2.2.1.1.1">Language</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="A4.T15.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.2.2.3.1">
<span class="ltx_p" id="A4.T15.1.2.2.3.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.1.2.2.3.1.1.1">Task</span></span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="A4.T15.1.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column" colspan="3" id="A4.T15.1.3.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T15.1.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.4.1.1.1">
<span class="ltx_p" id="A4.T15.1.4.1.1.1.1" style="width:170.7pt;">WMT 14-23-news<span class="ltx_note ltx_role_footnote" id="footnote7"><sup class="ltx_note_mark">7</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">7</sup><span class="ltx_tag ltx_tag_note">7</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.statmt.org/wmt21/translation-task.html" title="">https://www.statmt.org/wmt21/translation-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.4.1.2.1">
<span class="ltx_p" id="A4.T15.1.4.1.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.4.1.3.1">
<span class="ltx_p" id="A4.T15.1.4.1.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.5.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.5.2.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.6.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.6.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.6.3.1.1">
<span class="ltx_p" id="A4.T15.1.6.3.1.1.1" style="width:170.7pt;">WMT 16-21-ape<span class="ltx_note ltx_role_footnote" id="footnote8"><sup class="ltx_note_mark">8</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">8</sup><span class="ltx_tag ltx_tag_note">8</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.statmt.org/wmt21/ape-task.html" title="">https://www.statmt.org/wmt21/ape-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.6.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.6.3.2.1">
<span class="ltx_p" id="A4.T15.1.6.3.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.6.3.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.6.3.3.1">
<span class="ltx_p" id="A4.T15.1.6.3.3.1.1" style="width:156.5pt;">APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.7.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.7.4.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.8.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.8.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.8.5.1.1">
<span class="ltx_p" id="A4.T15.1.8.5.1.1.1" style="width:170.7pt;">WMT 20,22-chat<span class="ltx_note ltx_role_footnote" id="footnote9"><sup class="ltx_note_mark">9</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">9</sup><span class="ltx_tag ltx_tag_note">9</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.statmt.org/wmt20/chat-task.html" title="">https://www.statmt.org/wmt20/chat-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.8.5.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.8.5.2.1">
<span class="ltx_p" id="A4.T15.1.8.5.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.8.5.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.8.5.3.1">
<span class="ltx_p" id="A4.T15.1.8.5.3.1.1" style="width:156.5pt;">DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.9.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.9.6.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.10.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.10.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.10.7.1.1">
<span class="ltx_p" id="A4.T15.1.10.7.1.1.1" style="width:170.7pt;">WMT 14, 18-22-medical<span class="ltx_note ltx_role_footnote" id="footnote10"><sup class="ltx_note_mark">10</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">10</sup><span class="ltx_tag ltx_tag_note">10</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.statmt.org/wmt21/biomedical-translation-task.html" title="">https://www.statmt.org/wmt21/biomedical-translation-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.10.7.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.10.7.2.1">
<span class="ltx_p" id="A4.T15.1.10.7.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.10.7.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.10.7.3.1">
<span class="ltx_p" id="A4.T15.1.10.7.3.1.1" style="width:156.5pt;">DT(medical)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.11.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.11.8.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.12.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.12.9.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.12.9.1.1">
<span class="ltx_p" id="A4.T15.1.12.9.1.1.1" style="width:170.7pt;">WMT 16-it<span class="ltx_note ltx_role_footnote" id="footnote11"><sup class="ltx_note_mark">11</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">11</sup><span class="ltx_tag ltx_tag_note">11</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://statmt.org/wmt16/it-translation-task.html" title="">https://statmt.org/wmt16/it-translation-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.12.9.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.12.9.2.1">
<span class="ltx_p" id="A4.T15.1.12.9.2.1.1" style="width:91.0pt;">Cs, De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.12.9.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.12.9.3.1">
<span class="ltx_p" id="A4.T15.1.12.9.3.1.1" style="width:156.5pt;">DT(it)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.13.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.13.10.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.14.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.14.11.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.14.11.1.1">
<span class="ltx_p" id="A4.T15.1.14.11.1.1.1" style="width:170.7pt;">WMT 20-robustness<span class="ltx_note ltx_role_footnote" id="footnote12"><sup class="ltx_note_mark">12</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">12</sup><span class="ltx_tag ltx_tag_note">12</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://statmt.org/wmt20/robustness.html" title="">https://statmt.org/wmt20/robustness.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.14.11.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.14.11.2.1">
<span class="ltx_p" id="A4.T15.1.14.11.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.14.11.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.14.11.3.1">
<span class="ltx_p" id="A4.T15.1.14.11.3.1.1" style="width:156.5pt;">DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.15.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.15.12.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.16.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.16.13.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.16.13.1.1">
<span class="ltx_p" id="A4.T15.1.16.13.1.1.1" style="width:170.7pt;">WMT 21, 23-terminology<span class="ltx_note ltx_role_footnote" id="footnote13"><sup class="ltx_note_mark">13</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">13</sup><span class="ltx_tag ltx_tag_note">13</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://statmt.org/wmt21/terminology-task.html" title="">https://statmt.org/wmt21/terminology-task.html</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.16.13.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.16.13.2.1">
<span class="ltx_p" id="A4.T15.1.16.13.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.16.13.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.16.13.3.1">
<span class="ltx_p" id="A4.T15.1.16.13.3.1.1" style="width:156.5pt;">TCT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.17.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.17.14.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.18.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.18.15.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.18.15.1.1">
<span class="ltx_p" id="A4.T15.1.18.15.1.1.1" style="width:170.7pt;">WMT 23-literary</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.18.15.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.18.15.2.1">
<span class="ltx_p" id="A4.T15.1.18.15.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.18.15.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.18.15.3.1">
<span class="ltx_p" id="A4.T15.1.18.15.3.1.1" style="width:156.5pt;">DLT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.19.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.19.16.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.20.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.20.17.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.20.17.1.1">
<span class="ltx_p" id="A4.T15.1.20.17.1.1.1" style="width:170.7pt;">IWSLT 14-17<span class="ltx_note ltx_role_footnote" id="footnote14"><sup class="ltx_note_mark">14</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">14</sup><span class="ltx_tag ltx_tag_note">14</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://wit3.fbk.eu/2014-01" title="">https://wit3.fbk.eu/2014-01</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.20.17.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.20.17.2.1">
<span class="ltx_p" id="A4.T15.1.20.17.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.20.17.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.20.17.3.1">
<span class="ltx_p" id="A4.T15.1.20.17.3.1.1" style="width:156.5pt;">DLT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.21.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.21.18.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.22.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.22.19.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.22.19.1.1">
<span class="ltx_p" id="A4.T15.1.22.19.1.1.1" style="width:170.7pt;">IWSLT 16<span class="ltx_note ltx_role_footnote" id="footnote15"><sup class="ltx_note_mark">15</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">15</sup><span class="ltx_tag ltx_tag_note">15</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://wit3.fbk.eu/2016-02" title="">https://wit3.fbk.eu/2016-02</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.22.19.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.22.19.2.1">
<span class="ltx_p" id="A4.T15.1.22.19.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.22.19.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.22.19.3.1">
<span class="ltx_p" id="A4.T15.1.22.19.3.1.1" style="width:156.5pt;">APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.23.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.23.20.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.24.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.24.21.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.24.21.1.1">
<span class="ltx_p" id="A4.T15.1.24.21.1.1.1" style="width:170.7pt;">IWSLT23_OPUS_OpenSubtitles <span class="ltx_note ltx_role_footnote" id="footnote16"><sup class="ltx_note_mark">16</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">16</sup><span class="ltx_tag ltx_tag_note">16</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://iwslt.org/2024/subtitling" title="">https://iwslt.org/2024/subtitling</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.24.21.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.24.21.2.1">
<span class="ltx_p" id="A4.T15.1.24.21.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.24.21.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.24.21.3.1">
<span class="ltx_p" id="A4.T15.1.24.21.3.1.1" style="width:156.5pt;">GT, DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.25.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.25.22.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.26.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.26.23.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.26.23.1.1">
<span class="ltx_p" id="A4.T15.1.26.23.1.1.1" style="width:170.7pt;">news-commentary-v18 <span class="ltx_note ltx_role_footnote" id="footnote17"><sup class="ltx_note_mark">17</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">17</sup><span class="ltx_tag ltx_tag_note">17</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://data.statmt.org/news-commentary/v18.1/training/" title="">https://data.statmt.org/news-commentary/v18.1/training/</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.26.23.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.26.23.2.1">
<span class="ltx_p" id="A4.T15.1.26.23.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.26.23.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.26.23.3.1">
<span class="ltx_p" id="A4.T15.1.26.23.3.1.1" style="width:156.5pt;">DCL</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.27.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.27.24.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.28.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.28.25.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.28.25.1.1">
<span class="ltx_p" id="A4.T15.1.28.25.1.1.1" style="width:170.7pt;">GlobalVoices <span class="ltx_note ltx_role_footnote" id="footnote18"><sup class="ltx_note_mark">18</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">18</sup><span class="ltx_tag ltx_tag_note">18</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://opus.nlpl.eu/GlobalVoices/corpus/version/GlobalVoices" title="">https://opus.nlpl.eu/GlobalVoices/corpus/version/GlobalVoices</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.28.25.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.28.25.2.1">
<span class="ltx_p" id="A4.T15.1.28.25.2.1.1" style="width:91.0pt;">Cs, De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.28.25.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.28.25.3.1">
<span class="ltx_p" id="A4.T15.1.28.25.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.29.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.29.26.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.30.27">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.30.27.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.30.27.1.1">
<span class="ltx_p" id="A4.T15.1.30.27.1.1.1" style="width:170.7pt;">DiscoMT<span class="ltx_note ltx_role_footnote" id="footnote19"><sup class="ltx_note_mark">19</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">19</sup><span class="ltx_tag ltx_tag_note">19</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.idiap.ch/webarchives/sites/www.idiap.ch/workshop/DiscoMT/" title="">https://www.idiap.ch/webarchives/sites/www.idiap.ch/workshop/DiscoMT/</a>.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.30.27.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.30.27.2.1">
<span class="ltx_p" id="A4.T15.1.30.27.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.30.27.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.30.27.3.1">
<span class="ltx_p" id="A4.T15.1.30.27.3.1.1" style="width:156.5pt;">DCL</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.31.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.31.28.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.32.29">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.32.29.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.32.29.1.1">
<span class="ltx_p" id="A4.T15.1.32.29.1.1.1" style="width:170.7pt;">frmt <cite class="ltx_cite ltx_citemacro_citep">(Riley et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib70" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.32.29.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.32.29.2.1">
<span class="ltx_p" id="A4.T15.1.32.29.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.32.29.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.32.29.3.1">
<span class="ltx_p" id="A4.T15.1.32.29.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.33.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.33.30.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.34.31">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.34.31.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.34.31.1.1">
<span class="ltx_p" id="A4.T15.1.34.31.1.1.1" style="width:170.7pt;">PAWS-X <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib93" title="">2019</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.34.31.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.34.31.2.1">
<span class="ltx_p" id="A4.T15.1.34.31.2.1.1" style="width:91.0pt;">De, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.34.31.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.34.31.3.1">
<span class="ltx_p" id="A4.T15.1.34.31.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.35.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.35.32.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.36.33">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.36.33.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.36.33.1.1">
<span class="ltx_p" id="A4.T15.1.36.33.1.1.1" style="width:170.7pt;">XNLI-15way <cite class="ltx_cite ltx_citemacro_citep">(Conneau et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib14" title="">2018</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.36.33.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.36.33.2.1">
<span class="ltx_p" id="A4.T15.1.36.33.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.36.33.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.36.33.3.1">
<span class="ltx_p" id="A4.T15.1.36.33.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.37.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.37.34.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.38.35">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.38.35.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.38.35.1.1">
<span class="ltx_p" id="A4.T15.1.38.35.1.1.1" style="width:170.7pt;">NTREX128 <cite class="ltx_cite ltx_citemacro_citep">(Federmann et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib23" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.38.35.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.38.35.2.1">
<span class="ltx_p" id="A4.T15.1.38.35.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.38.35.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.38.35.3.1">
<span class="ltx_p" id="A4.T15.1.38.35.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.39.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.39.36.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.40.37">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.40.37.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.40.37.1.1">
<span class="ltx_p" id="A4.T15.1.40.37.1.1.1" style="width:170.7pt;">CommonMT <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib29" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.40.37.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.40.37.2.1">
<span class="ltx_p" id="A4.T15.1.40.37.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.40.37.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.40.37.3.1">
<span class="ltx_p" id="A4.T15.1.40.37.3.1.1" style="width:156.5pt;">GT, APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.41.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.41.38.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.42.39">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.42.39.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.42.39.1.1">
<span class="ltx_p" id="A4.T15.1.42.39.1.1.1" style="width:170.7pt;">BMELD <cite class="ltx_cite ltx_citemacro_citep">(Liang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib48" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.42.39.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.42.39.2.1">
<span class="ltx_p" id="A4.T15.1.42.39.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.42.39.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.42.39.3.1">
<span class="ltx_p" id="A4.T15.1.42.39.3.1.1" style="width:156.5pt;">DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.43.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.43.40.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.44.41">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.44.41.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.44.41.1.1">
<span class="ltx_p" id="A4.T15.1.44.41.1.1.1" style="width:170.7pt;">par3 <cite class="ltx_cite ltx_citemacro_citep">(Karpinska et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib39" title="">2022b</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.44.41.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.44.41.2.1">
<span class="ltx_p" id="A4.T15.1.44.41.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.44.41.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.44.41.3.1">
<span class="ltx_p" id="A4.T15.1.44.41.3.1.1" style="width:156.5pt;">DLT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.45.42">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.45.42.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.46.43">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.46.43.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.46.43.1.1">
<span class="ltx_p" id="A4.T15.1.46.43.1.1.1" style="width:170.7pt;">BWB <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib32" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.46.43.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.46.43.2.1">
<span class="ltx_p" id="A4.T15.1.46.43.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.46.43.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.46.43.3.1">
<span class="ltx_p" id="A4.T15.1.46.43.3.1.1" style="width:156.5pt;">DLT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.47.44">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.47.44.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.48.45">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.48.45.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.48.45.1.1">
<span class="ltx_p" id="A4.T15.1.48.45.1.1.1" style="width:170.7pt;">UM-corpus <cite class="ltx_cite ltx_citemacro_citep">(Tian et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib78" title="">2014</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.48.45.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.48.45.2.1">
<span class="ltx_p" id="A4.T15.1.48.45.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.48.45.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.48.45.3.1">
<span class="ltx_p" id="A4.T15.1.48.45.3.1.1" style="width:156.5pt;">GT, DT(law, literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.49.46">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.49.46.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.50.47">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.50.47.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.50.47.1.1">
<span class="ltx_p" id="A4.T15.1.50.47.1.1.1" style="width:170.7pt;">mZPRT <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib87" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.50.47.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.50.47.2.1">
<span class="ltx_p" id="A4.T15.1.50.47.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.50.47.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.50.47.3.1">
<span class="ltx_p" id="A4.T15.1.50.47.3.1.1" style="width:156.5pt;">DLT, DT(colloquial, literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.51.48">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.51.48.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.52.49">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.52.49.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.52.49.1.1">
<span class="ltx_p" id="A4.T15.1.52.49.1.1.1" style="width:170.7pt;">tico19 <cite class="ltx_cite ltx_citemacro_citep">(Anastasopoulos et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib5" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.52.49.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.52.49.2.1">
<span class="ltx_p" id="A4.T15.1.52.49.2.1.1" style="width:91.0pt;">Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.52.49.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.52.49.3.1">
<span class="ltx_p" id="A4.T15.1.52.49.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.53.50">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.53.50.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.54.51">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.54.51.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.54.51.1.1">
<span class="ltx_p" id="A4.T15.1.54.51.1.1.1" style="width:170.7pt;">FGraDA <cite class="ltx_cite ltx_citemacro_citep">(Zhu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib104" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.54.51.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.54.51.2.1">
<span class="ltx_p" id="A4.T15.1.54.51.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.54.51.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.54.51.3.1">
<span class="ltx_p" id="A4.T15.1.54.51.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.55.52">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.55.52.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.56.53">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.56.53.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.56.53.1.1">
<span class="ltx_p" id="A4.T15.1.56.53.1.1.1" style="width:170.7pt;">NLLB <cite class="ltx_cite ltx_citemacro_citep">(Costa-jussà et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib15" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.56.53.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.56.53.2.1">
<span class="ltx_p" id="A4.T15.1.56.53.2.1.1" style="width:91.0pt;">Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.56.53.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.56.53.3.1">
<span class="ltx_p" id="A4.T15.1.56.53.3.1.1" style="width:156.5pt;">GT, DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.57.54">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.57.54.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.58.55">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.58.55.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.58.55.1.1">
<span class="ltx_p" id="A4.T15.1.58.55.1.1.1" style="width:170.7pt;">MULTI30k <cite class="ltx_cite ltx_citemacro_citep">(Elliott et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib21" title="">2016</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.58.55.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.58.55.2.1">
<span class="ltx_p" id="A4.T15.1.58.55.2.1.1" style="width:91.0pt;">Cs, De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.58.55.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.58.55.3.1">
<span class="ltx_p" id="A4.T15.1.58.55.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.59.56">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.59.56.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.60.57">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.60.57.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.60.57.1.1">
<span class="ltx_p" id="A4.T15.1.60.57.1.1.1" style="width:170.7pt;">FLORES-200 <cite class="ltx_cite ltx_citemacro_citep">(Costa-jussà et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib15" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.60.57.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.60.57.2.1">
<span class="ltx_p" id="A4.T15.1.60.57.2.1.1" style="width:91.0pt;">Cs, De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.60.57.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.60.57.3.1">
<span class="ltx_p" id="A4.T15.1.60.57.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.61.58">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.61.58.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.62.59">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.62.59.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.62.59.1.1">
<span class="ltx_p" id="A4.T15.1.62.59.1.1.1" style="width:170.7pt;">localization-xml-mt</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.62.59.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.62.59.2.1">
<span class="ltx_p" id="A4.T15.1.62.59.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="A4.T15.1.62.59.2.1.1.1">De, Ru, Zh</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.62.59.3" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.62.59.3.1">
<span class="ltx_p" id="A4.T15.1.62.59.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="A4.T15.1.62.59.3.1.1.1">DT(it)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.63.60">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.63.60.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.63.60.1.1">
<span class="ltx_p" id="A4.T15.1.63.60.1.1.1" style="width:170.7pt;"><cite class="ltx_cite ltx_citemacro_citep">(Hashimoto et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib28" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.64.61">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.64.61.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.65.62">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.65.62.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.65.62.1.1">
<span class="ltx_p" id="A4.T15.1.65.62.1.1.1" style="width:170.7pt;">DEMETR <cite class="ltx_cite ltx_citemacro_citep">(Karpinska et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib38" title="">2022a</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.65.62.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.65.62.2.1">
<span class="ltx_p" id="A4.T15.1.65.62.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.65.62.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.65.62.3.1">
<span class="ltx_p" id="A4.T15.1.65.62.3.1.1" style="width:156.5pt;">APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.66.63">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.66.63.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.67.64">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.67.64.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.67.64.1.1">
<span class="ltx_p" id="A4.T15.1.67.64.1.1.1" style="width:170.7pt;">mlqe-pe <cite class="ltx_cite ltx_citemacro_citep">(Fomicheva et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib24" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.67.64.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.67.64.2.1">
<span class="ltx_p" id="A4.T15.1.67.64.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.67.64.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.67.64.3.1">
<span class="ltx_p" id="A4.T15.1.67.64.3.1.1" style="width:156.5pt;">APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.68.65">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.68.65.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.69.66">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.69.66.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.69.66.1.1">
<span class="ltx_p" id="A4.T15.1.69.66.1.1.1" style="width:170.7pt;">XQUAD <cite class="ltx_cite ltx_citemacro_citep">(Artetxe et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib6" title="">2019</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.69.66.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.69.66.2.1">
<span class="ltx_p" id="A4.T15.1.69.66.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.69.66.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.69.66.3.1">
<span class="ltx_p" id="A4.T15.1.69.66.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.70.67">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.70.67.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.71.68">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.71.68.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.71.68.1.1">
<span class="ltx_p" id="A4.T15.1.71.68.1.1.1" style="width:170.7pt;">p2p-data <cite class="ltx_cite ltx_citemacro_citep">(Jin et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib35" title="">2023b</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.71.68.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.71.68.2.1">
<span class="ltx_p" id="A4.T15.1.71.68.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.71.68.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.71.68.3.1">
<span class="ltx_p" id="A4.T15.1.71.68.3.1.1" style="width:156.5pt;">DLT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.72.69">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.72.69.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.73.70">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.73.70.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.73.70.1.1">
<span class="ltx_p" id="A4.T15.1.73.70.1.1.1" style="width:170.7pt;">NEJM <cite class="ltx_cite ltx_citemacro_citep">(Liu &amp; Huang, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib51" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.73.70.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.73.70.2.1">
<span class="ltx_p" id="A4.T15.1.73.70.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.73.70.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.73.70.3.1">
<span class="ltx_p" id="A4.T15.1.73.70.3.1.1" style="width:156.5pt;">DT(medical)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.74.71">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.74.71.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.75.72">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.75.72.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.75.72.1.1">
<span class="ltx_p" id="A4.T15.1.75.72.1.1.1" style="width:170.7pt;">DGT-TM <cite class="ltx_cite ltx_citemacro_citep">(Steinberger et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib75" title="">2013</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.75.72.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.75.72.2.1">
<span class="ltx_p" id="A4.T15.1.75.72.2.1.1" style="width:91.0pt;">Cs, De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.75.72.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.75.72.3.1">
<span class="ltx_p" id="A4.T15.1.75.72.3.1.1" style="width:156.5pt;">DT(law)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.76.73">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.76.73.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.77.74">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.77.74.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.77.74.1.1">
<span class="ltx_p" id="A4.T15.1.77.74.1.1.1" style="width:170.7pt;">health_term <cite class="ltx_cite ltx_citemacro_citep">(Xu &amp; Carpuat, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib88" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.77.74.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.77.74.2.1">
<span class="ltx_p" id="A4.T15.1.77.74.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.77.74.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.77.74.3.1">
<span class="ltx_p" id="A4.T15.1.77.74.3.1.1" style="width:156.5pt;">TCT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.78.75">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.78.75.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.79.76">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.79.76.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.79.76.1.1">
<span class="ltx_p" id="A4.T15.1.79.76.1.1.1" style="width:170.7pt;">XCOPA <cite class="ltx_cite ltx_citemacro_citep">(Ponti et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib63" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.79.76.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.79.76.2.1">
<span class="ltx_p" id="A4.T15.1.79.76.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.79.76.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.79.76.3.1">
<span class="ltx_p" id="A4.T15.1.79.76.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.80.77">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.80.77.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.81.78">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.81.78.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.81.78.1.1">
<span class="ltx_p" id="A4.T15.1.81.78.1.1.1" style="width:170.7pt;">MINTAKA <cite class="ltx_cite ltx_citemacro_citep">(Sen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib72" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.81.78.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.81.78.2.1">
<span class="ltx_p" id="A4.T15.1.81.78.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.81.78.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.81.78.3.1">
<span class="ltx_p" id="A4.T15.1.81.78.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.82.79">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.82.79.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.83.80">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.83.80.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.83.80.1.1">
<span class="ltx_p" id="A4.T15.1.83.80.1.1.1" style="width:170.7pt;">MGSM <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib73" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.83.80.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.83.80.2.1">
<span class="ltx_p" id="A4.T15.1.83.80.2.1.1" style="width:91.0pt;">De, Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.83.80.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.83.80.3.1">
<span class="ltx_p" id="A4.T15.1.83.80.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.84.81">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.84.81.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.85.82">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.85.82.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.85.82.1.1">
<span class="ltx_p" id="A4.T15.1.85.82.1.1.1" style="width:170.7pt;">MSLT <cite class="ltx_cite ltx_citemacro_citep">(Federmann &amp; Lewis, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib22" title="">2017</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.85.82.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.85.82.2.1">
<span class="ltx_p" id="A4.T15.1.85.82.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.85.82.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.85.82.3.1">
<span class="ltx_p" id="A4.T15.1.85.82.3.1.1" style="width:156.5pt;">DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.86.83">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.86.83.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.87.84">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.87.84.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.87.84.1.1">
<span class="ltx_p" id="A4.T15.1.87.84.1.1.1" style="width:170.7pt;">Perseus <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib100" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.87.84.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.87.84.2.1">
<span class="ltx_p" id="A4.T15.1.87.84.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.87.84.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.87.84.3.1">
<span class="ltx_p" id="A4.T15.1.87.84.3.1.1" style="width:156.5pt;">GT, DLT, DT(it, medical)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.88.85">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.88.85.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.89.86">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.89.86.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.89.86.1.1">
<span class="ltx_p" id="A4.T15.1.89.86.1.1.1" style="width:170.7pt;">BiPaR <cite class="ltx_cite ltx_citemacro_citep">(Jing et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib36" title="">2019</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.89.86.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.89.86.2.1">
<span class="ltx_p" id="A4.T15.1.89.86.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.89.86.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.89.86.3.1">
<span class="ltx_p" id="A4.T15.1.89.86.3.1.1" style="width:156.5pt;">DLT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.90.87">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.90.87.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.91.88">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.91.88.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.91.88.1.1">
<span class="ltx_p" id="A4.T15.1.91.88.1.1.1" style="width:170.7pt;">XStoryCloze <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib49" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.91.88.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.91.88.2.1">
<span class="ltx_p" id="A4.T15.1.91.88.2.1.1" style="width:91.0pt;">Ru, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.91.88.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.91.88.3.1">
<span class="ltx_p" id="A4.T15.1.91.88.3.1.1" style="width:156.5pt;">GT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.92.89">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.92.89.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.93.90">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.93.90.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.93.90.1.1">
<span class="ltx_p" id="A4.T15.1.93.90.1.1.1" style="width:170.7pt;">RELX <cite class="ltx_cite ltx_citemacro_citep">(Köksal &amp; Özgür, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib43" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.93.90.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.93.90.2.1">
<span class="ltx_p" id="A4.T15.1.93.90.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.93.90.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.93.90.3.1">
<span class="ltx_p" id="A4.T15.1.93.90.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.94.91">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.94.91.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.95.92">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.95.92.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.95.92.1.1">
<span class="ltx_p" id="A4.T15.1.95.92.1.1.1" style="width:170.7pt;">PETCI <cite class="ltx_cite ltx_citemacro_citep">(Tang, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib77" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.95.92.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.95.92.2.1">
<span class="ltx_p" id="A4.T15.1.95.92.2.1.1" style="width:91.0pt;">Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.95.92.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.95.92.3.1">
<span class="ltx_p" id="A4.T15.1.95.92.3.1.1" style="width:156.5pt;">GT, ICL</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.96.93">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.96.93.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.97.94">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.97.94.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.97.94.1.1">
<span class="ltx_p" id="A4.T15.1.97.94.1.1.1" style="width:170.7pt;">QALD-9-Plus <cite class="ltx_cite ltx_citemacro_citep">(Perevalov et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib62" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.97.94.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.97.94.2.1">
<span class="ltx_p" id="A4.T15.1.97.94.2.1.1" style="width:91.0pt;">De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.97.94.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.97.94.3.1">
<span class="ltx_p" id="A4.T15.1.97.94.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.98.95">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.98.95.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.99.96">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.99.96.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.99.96.1.1">
<span class="ltx_p" id="A4.T15.1.99.96.1.1.1" style="width:170.7pt;">SubEdits <cite class="ltx_cite ltx_citemacro_citep">(Chollampatt et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib13" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.99.96.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.99.96.2.1">
<span class="ltx_p" id="A4.T15.1.99.96.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.99.96.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.99.96.3.1">
<span class="ltx_p" id="A4.T15.1.99.96.3.1.1" style="width:156.5pt;">APE</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.100.97">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.100.97.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.101.98">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.101.98.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.101.98.1.1">
<span class="ltx_p" id="A4.T15.1.101.98.1.1.1" style="width:170.7pt;">hallucinations-in-nmt</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.101.98.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.101.98.2.1">
<span class="ltx_p" id="A4.T15.1.101.98.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="A4.T15.1.101.98.2.1.1.1">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.101.98.3" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.101.98.3.1">
<span class="ltx_p" id="A4.T15.1.101.98.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="A4.T15.1.101.98.3.1.1.1">APE</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.102.99">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.102.99.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.102.99.1.1">
<span class="ltx_p" id="A4.T15.1.102.99.1.1.1" style="width:170.7pt;"><cite class="ltx_cite ltx_citemacro_citep">(Guerreiro et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib26" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.103.100">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.103.100.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.104.101">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.104.101.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.104.101.1.1">
<span class="ltx_p" id="A4.T15.1.104.101.1.1.1" style="width:170.7pt;">good-translation-wrong-in-context</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.104.101.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.104.101.2.1">
<span class="ltx_p" id="A4.T15.1.104.101.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="A4.T15.1.104.101.2.1.1.1">Ru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.104.101.3" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.104.101.3.1">
<span class="ltx_p" id="A4.T15.1.104.101.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="A4.T15.1.104.101.3.1.1.1">GT, ICL, DT(colloquial)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.105.102">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.105.102.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.105.102.1.1">
<span class="ltx_p" id="A4.T15.1.105.102.1.1.1" style="width:170.7pt;"><cite class="ltx_cite ltx_citemacro_citep">(Voita et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib81" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.106.103">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.106.103.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.107.104">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.107.104.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.107.104.1.1">
<span class="ltx_p" id="A4.T15.1.107.104.1.1.1" style="width:170.7pt;">CoCoA-MT <cite class="ltx_cite ltx_citemacro_citep">(Nădejde et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib60" title="">2022</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.107.104.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.107.104.2.1">
<span class="ltx_p" id="A4.T15.1.107.104.2.1.1" style="width:91.0pt;">De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.107.104.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.107.104.3.1">
<span class="ltx_p" id="A4.T15.1.107.104.3.1.1" style="width:156.5pt;">GT, DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.108.105">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.108.105.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.109.106">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.109.106.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.109.106.1.1">
<span class="ltx_p" id="A4.T15.1.109.106.1.1.1" style="width:170.7pt;">unfaithful<cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib98" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.109.106.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.109.106.2.1">
<span class="ltx_p" id="A4.T15.1.109.106.2.1.1" style="width:91.0pt;">De, Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.109.106.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.109.106.3.1">
<span class="ltx_p" id="A4.T15.1.109.106.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.110.107">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.110.107.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.111.108">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.111.108.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.111.108.1.1">
<span class="ltx_p" id="A4.T15.1.111.108.1.1.1" style="width:170.7pt;">ContraPro <cite class="ltx_cite ltx_citemacro_citep">(Müller et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib58" title="">2018</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.111.108.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.111.108.2.1">
<span class="ltx_p" id="A4.T15.1.111.108.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.111.108.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.111.108.3.1">
<span class="ltx_p" id="A4.T15.1.111.108.3.1.1" style="width:156.5pt;">GT, APE, DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.112.109">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.112.109.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.113.110">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.113.110.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.113.110.1.1">
<span class="ltx_p" id="A4.T15.1.113.110.1.1.1" style="width:170.7pt;">LiteraryTranslation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.113.110.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.113.110.2.1">
<span class="ltx_p" id="A4.T15.1.113.110.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="A4.T15.1.113.110.2.1.1.1">Cs, De, Ru, Zh</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.113.110.3" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.113.110.3.1">
<span class="ltx_p" id="A4.T15.1.113.110.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="A4.T15.1.113.110.3.1.1.1">DLT, DT(literature)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.114.111">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.114.111.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.114.111.1.1">
<span class="ltx_p" id="A4.T15.1.114.111.1.1.1" style="width:170.7pt;"><cite class="ltx_cite ltx_citemacro_citep">(Karpinska &amp; Iyyer, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib37" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.115.112">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.115.112.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.116.113">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.116.113.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.116.113.1.1">
<span class="ltx_p" id="A4.T15.1.116.113.1.1.1" style="width:170.7pt;">ctxpro <cite class="ltx_cite ltx_citemacro_citep">(Wicks &amp; Post, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib83" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.116.113.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.116.113.2.1">
<span class="ltx_p" id="A4.T15.1.116.113.2.1.1" style="width:91.0pt;">De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.116.113.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.116.113.3.1">
<span class="ltx_p" id="A4.T15.1.116.113.3.1.1" style="width:156.5pt;">GT, ICL, DT(colloquial)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.117.114">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.117.114.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.118.115">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.118.115.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.118.115.1.1">
<span class="ltx_p" id="A4.T15.1.118.115.1.1.1" style="width:170.7pt;">DeCOCO <cite class="ltx_cite ltx_citemacro_citep">(Hitschler et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib30" title="">2016</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.118.115.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.118.115.2.1">
<span class="ltx_p" id="A4.T15.1.118.115.2.1.1" style="width:91.0pt;">De</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.118.115.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.118.115.3.1">
<span class="ltx_p" id="A4.T15.1.118.115.3.1.1" style="width:156.5pt;">GT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.119.116">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.119.116.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.120.117">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.120.117.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.120.117.1.1">
<span class="ltx_p" id="A4.T15.1.120.117.1.1.1" style="width:170.7pt;">IdiomsInCtx-MT <cite class="ltx_cite ltx_citemacro_citep">(Stap et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib74" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.120.117.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.120.117.2.1">
<span class="ltx_p" id="A4.T15.1.120.117.2.1.1" style="width:91.0pt;">De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.120.117.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.120.117.3.1">
<span class="ltx_p" id="A4.T15.1.120.117.3.1.1" style="width:156.5pt;">GT, ICL</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.121.118">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.121.118.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.122.119">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.122.119.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.122.119.1.1">
<span class="ltx_p" id="A4.T15.1.122.119.1.1.1" style="width:170.7pt;">Books <span class="ltx_note ltx_role_footnote" id="footnote20"><sup class="ltx_note_mark">20</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">20</sup><span class="ltx_tag ltx_tag_note">20</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://opus.nlpl.eu/Books/corpus/version/Books" title="">https://opus.nlpl.eu/Books/corpus/version/Books</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.122.119.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.122.119.2.1">
<span class="ltx_p" id="A4.T15.1.122.119.2.1.1" style="width:91.0pt;">De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.122.119.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.122.119.3.1">
<span class="ltx_p" id="A4.T15.1.122.119.3.1.1" style="width:156.5pt;">DLT, DT(literature)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.123.120">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.123.120.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.124.121">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.124.121.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.124.121.1.1">
<span class="ltx_p" id="A4.T15.1.124.121.1.1.1" style="width:170.7pt;">EUbookshop <span class="ltx_note ltx_role_footnote" id="footnote21"><sup class="ltx_note_mark">21</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">21</sup><span class="ltx_tag ltx_tag_note">21</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://opus.nlpl.eu/EUbookshop/corpus/version/EUbookshop" title="">https://opus.nlpl.eu/EUbookshop/corpus/version/EUbookshop</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.124.121.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.124.121.2.1">
<span class="ltx_p" id="A4.T15.1.124.121.2.1.1" style="width:91.0pt;">Cs, De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.124.121.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.124.121.3.1">
<span class="ltx_p" id="A4.T15.1.124.121.3.1.1" style="width:156.5pt;">DLT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.125.122">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" colspan="3" id="A4.T15.1.125.122.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.126.123">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.126.123.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.126.123.1.1">
<span class="ltx_p" id="A4.T15.1.126.123.1.1.1" style="width:170.7pt;">TED2020 <cite class="ltx_cite ltx_citemacro_citep">(Reimers &amp; Gurevych, <a class="ltx_ref" href="https://arxiv.org/html/2503.06594v1#bib.bib69" title="">2020</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.126.123.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.126.123.2.1">
<span class="ltx_p" id="A4.T15.1.126.123.2.1.1" style="width:91.0pt;">Cs, De, Ru</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T15.1.126.123.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T15.1.126.123.3.1">
<span class="ltx_p" id="A4.T15.1.126.123.3.1.1" style="width:156.5pt;">DLT</span>
</span>
</td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="A4.T15.1.127.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column" colspan="3" id="A4.T15.1.127.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the LaMaTE model.  The studies evaluate the impact of different training methods (two-stage training vs. single-stage, with and without frozen LLM parameters), adaptor designs (with and without layer fusion, with and without EncStack), and decoder variants (standard cross-attention decoder vs. concatenation decoder vs. prefix decoder) on the model's performance.  The COMET and BLEU scores are reported for each ablation study, and the numbers in parentheses show the performance differences compared to the complete LaMaTE model, allowing easy comparison and visualization of the impact of each component.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies on training methods, adaptor design, and decoder variants. The numbers in the bottom right represent the performance gap relative to the complete model (LaMaTE).
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A4.T16.17">
<tr class="ltx_tr" id="A4.T16.2.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.2.2.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.2.2.2.2">
<span class="ltx_para" id="A4.T16.2.2.2.2.p2">
<span class="ltx_p" id="A4.T16.2.2.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.1.1.1.1.p1">
<span class="ltx_p" id="A4.T16.1.1.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.1.1.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.1.1.1.1.p1.1.1.1" style="width:400.0pt;height:117.5pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.1.1.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_center ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.2.1.1" style="background-color:#E6E6E6;">General translation</span></span></span>
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.4.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#00FFFF;">English</span>: I know that advertising is how they make their money, but all that garbage seems counterproductive if it drives people away.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.6.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.1.1.1.1.p1.1.1.1.1.1.1.6.1.1.1.1" style="color:#FF0000;">Chinese</span>: 我知道广告是为他们创收的一种方式，而如果大量的广告让观众反感离开，似乎会适得其反。</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.4.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.4.4.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.4.4.2.2">
<span class="ltx_para" id="A4.T16.4.4.2.2.p2">
<span class="ltx_p" id="A4.T16.4.4.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.3.3.1.1.p1">
<span class="ltx_p" id="A4.T16.3.3.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.3.3.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.3.3.1.1.p1.1.1.1" style="width:400.0pt;height:408.1pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.3.3.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_center ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.2.1.1" style="background-color:#E6E6E6;">Doc-level translation</span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.4.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#00FFFF;">English</span>: The outliers tend to be those who die young, so that typical (median) life expectancy is higher than average life expectancy. This means that raising the average HLE can be achieved by raising the HLE of those at the bottom of the health distribution to that of the typical (median) person. This not only makes targeting inequality more attractive, but does not require path-breaking medical innovations to achieve longer lifespans – just the achievement of typical outcomes for more people. With this in mind, it is urgent to close the sizeable rich-poor life-expectancy gap – around 15 years – in the United States. As a metric for economic and social progress, targeting HLE implicitly acknowledges that aging is malleable (if it wasn’t, it wouldn’t be a viable target). It turns out that a range of behaviors and policies, as well as the environment we inhabit, influence how we age and how long we live. It is estimated that our genetics account for only one-quarter of the factors contributing to how we age. Given this malleability, it is crucial that governments focus on HLE for the maximum number of people. Such a focus would also help governments confront one of the biggest challenges of the future: societal aging. Given that every country in the world is expected to experience societal aging, focusing on how well we age becomes paramount. This age malleability requires drawing a distinction between chronological and biological measures of age and focusing on the latter.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.6.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.6.1.1.1.1" style="color:#FF0000;">Chinese</span>: 反常之处便是那些年纪轻轻便死去的人，他们让典型（中位）寿命预期长于平均寿命预期。这意味着提高平均健康寿命预期可以通过将位于健康分布底层的人变成典型（中位）健康寿命预期的人来实现。这不仅让针对不平等性问题变得更有吸引力，也不必一定需要突破性的医学创新才能实现生命周期的延长——而只需要让更多人实现典型结果。基于此，现在迫切需要缩小美国庞大的贫富寿命预期差距——大约在15年左右。作为一个经济和社会进步的指标，健康寿命预期间接承认衰老具有可塑性（若非如此的话，这就不是一个可行的目标）。一系列行为和政策，以及我们所居住的环境，都影响着我们如何变老和如何延长我们的寿命。据估计，我们的器官大约占我们衰老的四分之一因素。考虑到这一可塑性，政府必须关注最大数量人口的见刊寿命预期。关注这一点也有助于政府面对未来最巨大的挑战之一：社会老龄化。世界上每一个国家都会经历社会老龄化，关注我们以多么优秀的方式衰老变得至关重要。这一年龄可塑性需要区分年龄的时间和生物指标，专注于后者。</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.3.3.1.1.p1.1.1.1.1.1.1.7.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.6.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.6.6.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.6.6.2.2">
<span class="ltx_para" id="A4.T16.6.6.2.2.p2">
<span class="ltx_p" id="A4.T16.6.6.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.5.5.1.1.p1">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.5.5.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.5.5.1.1.p1.1.1.1" style="width:400.0pt;height:145.5pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_center ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.2.1.1" style="background-color:#E6E6E6;">Domain translation</span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#FF8000;">Domain</span>: Medical</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.5.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.6.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.6.1.1.1.1" style="color:#00FFFF;">English</span>: The median age of the 30 patients was 56.5 (28-80) years old, among them, 25 patients were primary plasma cell leukemia, and 5 patients were secondary plasma cell leukemia.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.7">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.7.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.5.5.1.1.p1.1.1.1.1.1.1.7.1.1.1.1" style="color:#FF0000;">Chinese</span>: 30例PCL患者中位年龄56.5（28-80）岁，25例为原发性浆细胞白血病，5例为继发性浆细胞白血病。</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.8.8.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.8.8.2.2">
<span class="ltx_para" id="A4.T16.8.8.2.2.p2">
<span class="ltx_p" id="A4.T16.8.8.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.7.7.1.1.p1">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.7.7.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.7.7.1.1.p1.1.1.1" style="width:400.0pt;height:144.1pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.2.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.2.1.1.1.1" style="color:#FF8000;">Domain</span>: Law</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.3.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#00FFFF;">English</span>: Article 8 Small and medium-sized enterprises shall observe the laws and regulations of the State on labor safety, occupational health, social security, protection of resources and environment, quality, taxation and finance, etc. and shall operate and manage according to law, and may not infringe upon the legitimate rights and interests of the employees or damage the public interests.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.7.7.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#FF0000;">Chinese</span>: 第八条 中小企业必须遵守国家劳动安全、职业卫生、社会保障、资源环保、质量、财政税收、金融等方面的法律、法规，依法经营管理，不得侵害职工合法权益，不得损害社会公共利益。</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.11.11.3"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.11.11.3.3">
<span class="ltx_para" id="A4.T16.11.11.3.3.p3">
<span class="ltx_p" id="A4.T16.11.11.3.3.p3.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.9.9.1.1.p1">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.9.9.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.9.9.1.1.p1.1.1.1" style="width:400.0pt;height:98.7pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.2.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.2.1.1.1.1" style="color:#FF8000;">Domain</span>: IT</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.3.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#00FFFF;">English</span>: If you are using a Customer Portal and want to allow self-registration, follow these steps:</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.9.9.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#FF0000;">Chinese</span>: 如果您正使用客户入口网站并希望允许自助注册,请按以下步骤操作:</span>
</span></span></span>
</span></span></span>
</span></span></span>
</span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.10.10.2.2.p2">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1"><span class="ltx_text ltx_inline-block" id="A4.T16.10.10.2.2.p2.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.10.10.2.2.p2.1.1.1" style="width:400.0pt;height:91pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1.1.1.1"><span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.2.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.2.1.1.1.1" style="color:#FF8000;">Domain</span>: Colloquial</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.3.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.4.1.1.1.1" style="color:#00FFFF;">English</span>: Believe me, I’m gonna take care of you and he’s gonna be OK.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.10.10.2.2.p2.1.1.1.1.1.1.5.1.1.1.1" style="color:#FF0000;">Chinese</span>: 相信我,我会照顾好你们,他会没事的.</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.13.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.13.13.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.13.13.2.2">
<span class="ltx_para" id="A4.T16.13.13.2.2.p2">
<span class="ltx_p" id="A4.T16.13.13.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.12.12.1.1.p1">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.12.12.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.12.12.1.1.p1.1.1.1" style="width:400.0pt;height:132.1pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.2.1.1.1" style="width:385.5pt;"><span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.2.1.1.1.1" style="color:#FF8000;">Domain</span>: Literature</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1.1.1" style="width:385.5pt;"><span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.3.1.1.1.3" style="color:#FF0000;">Chinese</span>.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:385.5pt;"><span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#00FFFF;">English</span>: The President required the name of that citizen. The accused explained that the citizen was his first witness. He also referred with confidence to the citizen’s letter, which had been taken from him at the Barrier, but which he did not doubt would be found among the papers then before the President.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:385.5pt;"><span class="ltx_text" id="A4.T16.12.12.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#FF0000;">Chinese</span>: 庭长问那公民是谁。被告说那公民便是他的第一个证人。他还很有把握地提起那人的信，那是在城门口从他身上取走的，他相信可以在庭长的卷宗中找到。</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.15.15" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.15.15.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.15.15.2.2">
<span class="ltx_para" id="A4.T16.15.15.2.2.p2">
<span class="ltx_p" id="A4.T16.15.15.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.14.14.1.1.p1">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.14.14.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.14.14.1.1.p1.1.1.1" style="width:400.0pt;height:144pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_center ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.2.1.1" style="background-color:#E6E6E6;">Terminology-constrained translation</span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#0000FF;">Prompt</span>: Translate the following text from <span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1.1.1.2" style="color:#00FFFF;">English</span> into <span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.4.1.1.1.3" style="color:#FF0000;">Chinese</span> using the provided terminology pairs, ensuring the specified terms are accurately translated as indicated.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#FF8000;">Terminology pairs</span>: "National Football League" = "国家橄榄球联盟"</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.6.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.6.1.1.1.1" style="color:#00FFFF;">English</span>: Tim’s younger brother, Tod Leiweke, is currently the chief operating officer of the National Football League since 2015.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.7">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.7.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.14.14.1.1.p1.1.1.1.1.1.1.7.1.1.1.1" style="color:#FF0000;">Chinese</span>: 蒂姆的弟弟托德·莱维克自 2015 年以来担任国家橄榄球联盟的首席运营官。</span>
</span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.17.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.17.17.2"><span class="ltx_inline-logical-block ltx_align_top" id="A4.T16.17.17.2.2">
<span class="ltx_para" id="A4.T16.17.17.2.2.p2">
<span class="ltx_p" id="A4.T16.17.17.2.2.p2.1" style="width:384.1pt;"></span>
</span>
<span class="ltx_para ltx_noindent" id="A4.T16.16.16.1.1.p1">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1"><span class="ltx_text ltx_inline-block" id="A4.T16.16.16.1.1.p1.1.1" style="width:433.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="A4.T16.16.16.1.1.p1.1.1.1" style="width:400.0pt;height:157.4pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1.1.1.1"><span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_align_center ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.2.1.1" style="background-color:#E6E6E6;">Automatic post-edition</span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.3.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1.1.1.1" style="color:#0000FF;">Prompt</span>: Improve the following machine-generated translation from <span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1.1.1.2" style="color:#00FFFF;">English</span> to <span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.4.1.1.1.3" style="color:#FF0000;">Chinese</span>. Correct errors and generate a more accurate translation.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.5.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.5.1.1.1.1" style="color:#00FFFF;">English</span>: unfazed, Matteo hires an assassin to bomb the resort to create chaos and mayhem.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.6.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.6.1.1.1.1" style="color:#FF0000;">Chinese</span>: 马特奥不慌不忙地雇用了一名刺客来轰炸制造混乱和混乱的手段.</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.7">
<span class="ltx_td ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.7.1.1.1" style="width:384.1pt;"><span class="ltx_text" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.7.1.1.1.1" style="color:#FF8000;">Improved translation</span>: 马特奥不慌不忙地雇用了一名刺客来轰炸度假村，从而引起混乱。</span>
</span></span></span>
<span class="ltx_tr" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T16.16.16.1.1.p1.1.1.1.1.1.1.8.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></span></span>
</span></span></span>
</span></span></span></span>
</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the architectural elements of different machine translation models, specifically focusing on the encoder-decoder and decoder-only architectures. It details the connection types, fusion methods (how encoder and decoder outputs are combined), the presence of source and causal masks, and whether parameter sharing is utilized in the models.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparision of different architecture by analyzing their structural elements.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06594/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06594/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}