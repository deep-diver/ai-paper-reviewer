---
title: "Summarization of Multimodal Presentations with Vision-Language Models: Study of the Effect of Modalities and Structure"
summary: "VLMs summarize presentations effectively using interleaved slides and transcripts, balancing modality and structure for optimal results."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Université Paris-Saclay",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10049 {{< /keyword >}}
{{< keyword icon="writer" >}} Théo Gigant et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10049" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10049" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10049/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Vision-Language Models (VLMs)** are increasingly used for tasks like document summarization, but their performance on multimodal presentations is limited. The challenges include processing long inputs, ineffective cross-modal interactions, and a modality gap. These issues hinder the creation of comprehensive summaries and highlight the need for better training data and model architectures.  



This paper addresses these challenges by exploring different input representations and analyzing their impact on summarization quality. The key contribution is demonstrating that **structuring input data, specifically by interleaving slides and transcripts, significantly enhances VLM performance**. The research offers practical strategies for efficient summarization, highlighting the importance of balancing visual and textual information for optimal results.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Interleaving slides and transcripts enhances VLM performance in summarizing presentations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Structuring input data is crucial for effective VLM summarization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Balancing visual and textual information improves summarization quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper offers insights into VLM-based document summarization. It highlights the importance of input data structure. It proposes strategies for effective summarization, opening avenues for future research in multimodal understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/input-settings.png)

> 🔼 This figure illustrates the various ways Vision-Language Models (VLMs) can handle input data from multimodal presentations.  It shows that a VLM can accept input in several forms:  a raw multimodal presentation record (containing audio and video),  a transcript of the presentation's speech, individual slides extracted from the presentation, an unstructured combination of slides and a transcript, and finally, a structured multimodal representation where slides and transcript segments are interleaved according to their timing in the presentation.  Each of these different input formats may affect the cost and performance of the summarization process.
> <details>
> <summary>read the caption</summary>
> Figure 1. VLMs are able to process a multimodal presentation in various unimodal and multimodal representations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T1.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.6.6.7">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.6.6.8"><span class="ltx_text" id="S4.T1.6.6.8.1" style="font-size:50%;">#Params</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.6.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.6.9.1">
<span class="ltx_p" id="S4.T1.6.6.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T1.6.6.9.1.1.1" style="font-size:50%;">Visual</span></span>
<span class="ltx_p" id="S4.T1.6.6.9.1.2"><span class="ltx_text" id="S4.T1.6.6.9.1.2.1" style="font-size:50%;">token</span></span>
<span class="ltx_p" id="S4.T1.6.6.9.1.3"><span class="ltx_text" id="S4.T1.6.6.9.1.3.1" style="font-size:50%;">budget</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1"><math alttext="R_{1}\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><msub id="S4.T1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.2.cmml"><mi id="S4.T1.1.1.1.m1.1.1.2.2" xref="S4.T1.1.1.1.m1.1.1.2.2.cmml">R</mi><mn id="S4.T1.1.1.1.m1.1.1.2.3" xref="S4.T1.1.1.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S4.T1.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><ci id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1">↑</ci><apply id="S4.T1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.1.1.1.m1.1.1.2.1.cmml" xref="S4.T1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T1.1.1.1.m1.1.1.2.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2.2">𝑅</ci><cn id="S4.T1.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.1.1.1.m1.1.1.2.3">1</cn></apply><csymbol cd="latexml" id="S4.T1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">R_{1}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2"><math alttext="R_{2}\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mrow id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml"><msub id="S4.T1.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.m1.1.1.2.cmml"><mi id="S4.T1.2.2.2.m1.1.1.2.2" xref="S4.T1.2.2.2.m1.1.1.2.2.cmml">R</mi><mn id="S4.T1.2.2.2.m1.1.1.2.3" xref="S4.T1.2.2.2.m1.1.1.2.3.cmml">2</mn></msub><mo id="S4.T1.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"><ci id="S4.T1.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1.1">↑</ci><apply id="S4.T1.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.2.2.2.m1.1.1.2.1.cmml" xref="S4.T1.2.2.2.m1.1.1.2">subscript</csymbol><ci id="S4.T1.2.2.2.m1.1.1.2.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2.2">𝑅</ci><cn id="S4.T1.2.2.2.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.2.2.2.m1.1.1.2.3">2</cn></apply><csymbol cd="latexml" id="S4.T1.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">R_{2}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">italic_R start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3"><math alttext="G\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mrow id="S4.T1.3.3.3.m1.1.1" xref="S4.T1.3.3.3.m1.1.1.cmml"><mi id="S4.T1.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.m1.1.1.2.cmml">G</mi><mo id="S4.T1.3.3.3.m1.1.1.1" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1"><ci id="S4.T1.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1.1">↑</ci><ci id="S4.T1.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.m1.1.1.2">𝐺</ci><csymbol cd="latexml" id="S4.T1.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">G\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">italic_G ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4"><math alttext="IbR_{\texttt{\tiny{transcript}}}\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mrow id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml"><mrow id="S4.T1.4.4.4.m1.1.1.2" xref="S4.T1.4.4.4.m1.1.1.2.cmml"><mi id="S4.T1.4.4.4.m1.1.1.2.2" xref="S4.T1.4.4.4.m1.1.1.2.2.cmml">I</mi><mo id="S4.T1.4.4.4.m1.1.1.2.1" xref="S4.T1.4.4.4.m1.1.1.2.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.m1.1.1.2.3" xref="S4.T1.4.4.4.m1.1.1.2.3.cmml">b</mi><mo id="S4.T1.4.4.4.m1.1.1.2.1a" xref="S4.T1.4.4.4.m1.1.1.2.1.cmml">⁢</mo><msub id="S4.T1.4.4.4.m1.1.1.2.4" xref="S4.T1.4.4.4.m1.1.1.2.4.cmml"><mi id="S4.T1.4.4.4.m1.1.1.2.4.2" xref="S4.T1.4.4.4.m1.1.1.2.4.2.cmml">R</mi><mtext class="ltx_mathvariant_monospace" id="S4.T1.4.4.4.m1.1.1.2.4.3" mathsize="71%" xref="S4.T1.4.4.4.m1.1.1.2.4.3a.cmml">transcript</mtext></msub></mrow><mo id="S4.T1.4.4.4.m1.1.1.1" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.4.4.4.m1.1.1.3" xref="S4.T1.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"><ci id="S4.T1.4.4.4.m1.1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1.1">↑</ci><apply id="S4.T1.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2"><times id="S4.T1.4.4.4.m1.1.1.2.1.cmml" xref="S4.T1.4.4.4.m1.1.1.2.1"></times><ci id="S4.T1.4.4.4.m1.1.1.2.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2.2">𝐼</ci><ci id="S4.T1.4.4.4.m1.1.1.2.3.cmml" xref="S4.T1.4.4.4.m1.1.1.2.3">𝑏</ci><apply id="S4.T1.4.4.4.m1.1.1.2.4.cmml" xref="S4.T1.4.4.4.m1.1.1.2.4"><csymbol cd="ambiguous" id="S4.T1.4.4.4.m1.1.1.2.4.1.cmml" xref="S4.T1.4.4.4.m1.1.1.2.4">subscript</csymbol><ci id="S4.T1.4.4.4.m1.1.1.2.4.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2.4.2">𝑅</ci><ci id="S4.T1.4.4.4.m1.1.1.2.4.3a.cmml" xref="S4.T1.4.4.4.m1.1.1.2.4.3"><mtext class="ltx_mathvariant_monospace" id="S4.T1.4.4.4.m1.1.1.2.4.3.cmml" mathsize="50%" xref="S4.T1.4.4.4.m1.1.1.2.4.3">transcript</mtext></ci></apply></apply><csymbol cd="latexml" id="S4.T1.4.4.4.m1.1.1.3.cmml" xref="S4.T1.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">IbR_{\texttt{\tiny{transcript}}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">italic_I italic_b italic_R start_POSTSUBSCRIPT transcript end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5"><math alttext="IbR_{\texttt{\tiny{ocr}}}\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mrow id="S4.T1.5.5.5.m1.1.1" xref="S4.T1.5.5.5.m1.1.1.cmml"><mrow id="S4.T1.5.5.5.m1.1.1.2" xref="S4.T1.5.5.5.m1.1.1.2.cmml"><mi id="S4.T1.5.5.5.m1.1.1.2.2" xref="S4.T1.5.5.5.m1.1.1.2.2.cmml">I</mi><mo id="S4.T1.5.5.5.m1.1.1.2.1" xref="S4.T1.5.5.5.m1.1.1.2.1.cmml">⁢</mo><mi id="S4.T1.5.5.5.m1.1.1.2.3" xref="S4.T1.5.5.5.m1.1.1.2.3.cmml">b</mi><mo id="S4.T1.5.5.5.m1.1.1.2.1a" xref="S4.T1.5.5.5.m1.1.1.2.1.cmml">⁢</mo><msub id="S4.T1.5.5.5.m1.1.1.2.4" xref="S4.T1.5.5.5.m1.1.1.2.4.cmml"><mi id="S4.T1.5.5.5.m1.1.1.2.4.2" xref="S4.T1.5.5.5.m1.1.1.2.4.2.cmml">R</mi><mtext class="ltx_mathvariant_monospace" id="S4.T1.5.5.5.m1.1.1.2.4.3" mathsize="71%" xref="S4.T1.5.5.5.m1.1.1.2.4.3a.cmml">ocr</mtext></msub></mrow><mo id="S4.T1.5.5.5.m1.1.1.1" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.5.5.5.m1.1.1.3" xref="S4.T1.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1"><ci id="S4.T1.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1.1">↑</ci><apply id="S4.T1.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2"><times id="S4.T1.5.5.5.m1.1.1.2.1.cmml" xref="S4.T1.5.5.5.m1.1.1.2.1"></times><ci id="S4.T1.5.5.5.m1.1.1.2.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2.2">𝐼</ci><ci id="S4.T1.5.5.5.m1.1.1.2.3.cmml" xref="S4.T1.5.5.5.m1.1.1.2.3">𝑏</ci><apply id="S4.T1.5.5.5.m1.1.1.2.4.cmml" xref="S4.T1.5.5.5.m1.1.1.2.4"><csymbol cd="ambiguous" id="S4.T1.5.5.5.m1.1.1.2.4.1.cmml" xref="S4.T1.5.5.5.m1.1.1.2.4">subscript</csymbol><ci id="S4.T1.5.5.5.m1.1.1.2.4.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2.4.2">𝑅</ci><ci id="S4.T1.5.5.5.m1.1.1.2.4.3a.cmml" xref="S4.T1.5.5.5.m1.1.1.2.4.3"><mtext class="ltx_mathvariant_monospace" id="S4.T1.5.5.5.m1.1.1.2.4.3.cmml" mathsize="50%" xref="S4.T1.5.5.5.m1.1.1.2.4.3">ocr</mtext></ci></apply></apply><csymbol cd="latexml" id="S4.T1.5.5.5.m1.1.1.3.cmml" xref="S4.T1.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">IbR_{\texttt{\tiny{ocr}}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">italic_I italic_b italic_R start_POSTSUBSCRIPT ocr end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6"><math alttext="IbR_{\texttt{\tiny{overall}}}\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mrow id="S4.T1.6.6.6.m1.1.1" xref="S4.T1.6.6.6.m1.1.1.cmml"><mrow id="S4.T1.6.6.6.m1.1.1.2" xref="S4.T1.6.6.6.m1.1.1.2.cmml"><mi id="S4.T1.6.6.6.m1.1.1.2.2" xref="S4.T1.6.6.6.m1.1.1.2.2.cmml">I</mi><mo id="S4.T1.6.6.6.m1.1.1.2.1" xref="S4.T1.6.6.6.m1.1.1.2.1.cmml">⁢</mo><mi id="S4.T1.6.6.6.m1.1.1.2.3" xref="S4.T1.6.6.6.m1.1.1.2.3.cmml">b</mi><mo id="S4.T1.6.6.6.m1.1.1.2.1a" xref="S4.T1.6.6.6.m1.1.1.2.1.cmml">⁢</mo><msub id="S4.T1.6.6.6.m1.1.1.2.4" xref="S4.T1.6.6.6.m1.1.1.2.4.cmml"><mi id="S4.T1.6.6.6.m1.1.1.2.4.2" xref="S4.T1.6.6.6.m1.1.1.2.4.2.cmml">R</mi><mtext class="ltx_mathvariant_monospace" id="S4.T1.6.6.6.m1.1.1.2.4.3" mathsize="71%" xref="S4.T1.6.6.6.m1.1.1.2.4.3a.cmml">overall</mtext></msub></mrow><mo id="S4.T1.6.6.6.m1.1.1.1" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.6.6.6.m1.1.1.3" xref="S4.T1.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><apply id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1"><ci id="S4.T1.6.6.6.m1.1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1.1">↑</ci><apply id="S4.T1.6.6.6.m1.1.1.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2"><times id="S4.T1.6.6.6.m1.1.1.2.1.cmml" xref="S4.T1.6.6.6.m1.1.1.2.1"></times><ci id="S4.T1.6.6.6.m1.1.1.2.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2.2">𝐼</ci><ci id="S4.T1.6.6.6.m1.1.1.2.3.cmml" xref="S4.T1.6.6.6.m1.1.1.2.3">𝑏</ci><apply id="S4.T1.6.6.6.m1.1.1.2.4.cmml" xref="S4.T1.6.6.6.m1.1.1.2.4"><csymbol cd="ambiguous" id="S4.T1.6.6.6.m1.1.1.2.4.1.cmml" xref="S4.T1.6.6.6.m1.1.1.2.4">subscript</csymbol><ci id="S4.T1.6.6.6.m1.1.1.2.4.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2.4.2">𝑅</ci><ci id="S4.T1.6.6.6.m1.1.1.2.4.3a.cmml" xref="S4.T1.6.6.6.m1.1.1.2.4.3"><mtext class="ltx_mathvariant_monospace" id="S4.T1.6.6.6.m1.1.1.2.4.3.cmml" mathsize="50%" xref="S4.T1.6.6.6.m1.1.1.2.4.3">overall</mtext></ci></apply></apply><csymbol cd="latexml" id="S4.T1.6.6.6.m1.1.1.3.cmml" xref="S4.T1.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">IbR_{\texttt{\tiny{overall}}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">italic_I italic_b italic_R start_POSTSUBSCRIPT overall end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.9.1.1">Idefics-2 <cite class="ltx_cite ltx_citemacro_citep">(Laurençon et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.10049v1#bib.bib22" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.9.1.2">8B</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.9.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.9.1.3.1">
<span class="ltx_p" id="S4.T1.8.9.1.3.1.1" style="width:19.9pt;">64</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.4">4.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.5">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.6">36.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.7">1.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.8">0.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.9.1.9">1.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.7.1">Idefics-3<math alttext="{}^{\texttt{q}}" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><msup id="S4.T1.7.7.1.m1.1.1" xref="S4.T1.7.7.1.m1.1.1.cmml"><mi id="S4.T1.7.7.1.m1.1.1a" xref="S4.T1.7.7.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_monospace" id="S4.T1.7.7.1.m1.1.1.1" xref="S4.T1.7.7.1.m1.1.1.1a.cmml">q</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><apply id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1"><ci id="S4.T1.7.7.1.m1.1.1.1a.cmml" xref="S4.T1.7.7.1.m1.1.1.1"><mtext class="ltx_mathvariant_monospace" id="S4.T1.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T1.7.7.1.m1.1.1.1">q</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">{}^{\texttt{q}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">start_FLOATSUPERSCRIPT q end_FLOATSUPERSCRIPT</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_citep">(Laurençon et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.10049v1#bib.bib21" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.7.2">8B</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.7.7.3.1">
<span class="ltx_p" id="S4.T1.7.7.3.1.1" style="width:19.9pt;">169</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.4">12.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.5">1.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.6">48.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7">21.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.8">7.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9">16.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.8.8.1">Phi-3.5-vision<math alttext="{}^{\texttt{q}\dagger}" class="ltx_Math" display="inline" id="S4.T1.8.8.1.m1.2"><semantics id="S4.T1.8.8.1.m1.2a"><msup id="S4.T1.8.8.1.m1.2.2" xref="S4.T1.8.8.1.m1.2.2.cmml"><mi id="S4.T1.8.8.1.m1.2.2a" xref="S4.T1.8.8.1.m1.2.2.cmml"></mi><mrow id="S4.T1.8.8.1.m1.2.2.2.4" xref="S4.T1.8.8.1.m1.2.2.2.3.cmml"><mtext class="ltx_mathvariant_monospace" id="S4.T1.8.8.1.m1.1.1.1.1" xref="S4.T1.8.8.1.m1.1.1.1.1a.cmml">q</mtext><mo id="S4.T1.8.8.1.m1.2.2.2.4.1" lspace="0.222em" xref="S4.T1.8.8.1.m1.2.2.2.3.cmml">⁣</mo><mo id="S4.T1.8.8.1.m1.2.2.2.2" xref="S4.T1.8.8.1.m1.2.2.2.2.cmml">†</mo></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.1.m1.2b"><apply id="S4.T1.8.8.1.m1.2.2.cmml" xref="S4.T1.8.8.1.m1.2.2"><list id="S4.T1.8.8.1.m1.2.2.2.3.cmml" xref="S4.T1.8.8.1.m1.2.2.2.4"><ci id="S4.T1.8.8.1.m1.1.1.1.1a.cmml" xref="S4.T1.8.8.1.m1.1.1.1.1"><mtext class="ltx_mathvariant_monospace" id="S4.T1.8.8.1.m1.1.1.1.1.cmml" mathsize="70%" xref="S4.T1.8.8.1.m1.1.1.1.1">q</mtext></ci><ci id="S4.T1.8.8.1.m1.2.2.2.2.cmml" xref="S4.T1.8.8.1.m1.2.2.2.2">†</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.1.m1.2c">{}^{\texttt{q}\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.1.m1.2d">start_FLOATSUPERSCRIPT q † end_FLOATSUPERSCRIPT</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_citep">(Abdin et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.10049v1#bib.bib2" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.8.8.2">4B</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.8.3.1">
<span class="ltx_p" id="S4.T1.8.8.3.1.1" style="width:19.9pt;">144</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.4">17.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.5">2.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.6">51.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.7">29.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8">8.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9">20.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.10.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S4.T1.8.10.2.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_citep">(Wang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.10049v1#bib.bib42" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S4.T1.8.10.2.2">2B</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_b" id="S4.T1.8.10.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.10.2.3.1">
<span class="ltx_p" id="S4.T1.8.10.2.3.1.1" style="width:19.9pt;">512</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.4.1">27.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.5.1">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.6.1">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.7.1">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.8"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.8.1">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.8.10.2.9"><span class="ltx_text ltx_font_bold" id="S4.T1.8.10.2.9.1">33.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of several open-weight Vision-Language Models (VLMs) on the TIB benchmark dataset for multimodal summarization.  It shows the results for different models, including the number of parameters, the visual token budget used, and various evaluation metrics such as ROUGE-1, ROUGE-2, GRUEN, and Importance-Based Relevance (IbR) scores broken down by modality (transcript, OCR, and overall).  These metrics assess different aspects of summarization quality, including the overlap of n-grams between the generated and reference summaries, the linguistic quality of the generated summaries, and how well the model captures the important information from each input modality.
> <details>
> <summary>read the caption</summary>
> Table 1. Results of open-weight VLMs on TIB-bench
> </details>





### In-depth insights


#### VLM for Summaries
Vision-Language Models (VLMs) offer a promising avenue for summarizing multimodal presentations by processing visual and textual information. The effectiveness of VLMs hinges on how the input data is represented. **Interleaving slides with transcripts** tends to yield better performance than simply concatenating all slides followed by the transcript. This structured approach provides crucial context and temporal alignment. VLMs can extract key points, correct errors (spell check), and incorporate speaker/venue information. However, challenges remain, including how to handle inconsistencies between modalities, and the potential for VLMs to be overly influenced by text or specific visual elements. Current models have domain specific and overfit. Future research should focus on creating training datasets with diverse cross-modal interactions, including conflicting or complementary information.

#### Multimodal Domain
While 'Multimodal Domain' wasn't explicitly a heading, the research **investigated various modalities in VLMs**, such as text, images, and video. The study highlights the **benefit of combining modalities** to enhance summarization. Presenting information via interleaved slides and transcripts yielded higher scores, which emphasized structure. The models leveraged **visual information** to correct errors and also for comprehensive summaries.  The **challenge of conflict and redundancy between modalities** was observed in text-heavy visual streams. This also emphasized a need for more diverse cross-modality interactions, that enable robust and reliable multimodal systems.

#### Structure Impact
The structure's impact on multimodal summarization with VLMs centers on how organizing input modalities affects performance. **Interleaving slides and transcript** proves superior to simple concatenation. This structured approach likely aids VLMs in understanding temporal relationships and context, **enhancing cross-modal reasoning**.  The arrangement influences token processing, affecting computation. Ablation studies, using placeholder slides, confirm that the **structural organization itself contributes significantly** to improved summarization quality, going beyond mere computational aspects. The study also indicates that with sufficient budget for Visual Token is provided, the **structure might be less important**

#### Dataset Filtering
**Dataset filtering is crucial** for ensuring high-quality benchmarks. The study leveraged the TIB dataset, initially comprising 9103 records. They employed a LLM-as-a-judge method, filtering the top quality abstracts. The filtering process involved using SmolLM2 to score abstracts and retaining only those with a score of 9. Addressing the issue of non-slide key frames, they utilized SigLip for zero-shot classification. This meticulous approach enhanced benchmark reliability. The study discarded non-slide key frames and presentations with fewer than 3 slides, resulting in a benchmark of 822 presentations. This refined dataset provides a solid foundation for analyzing VLMs in multimodal settings.

#### Modality Conflict
The research paper highlights the challenges posed by modality conflicts in multimodal presentations, noting that information can be split across modalities with limited redundancy, requiring VLMs to **cross-reference** them effectively. **Mismatched or conflicting information** presented visually versus verbally, stemming from errors or last-minute changes, can further complicate matters. The authors suggest that VLMs' training data often lacks such conflicting scenarios, hindering their ability to resolve these discrepancies. Furthermore, the concept of **stronger vs. weaker modalities** is explored, where trusting one modality over another becomes crucial in conflict resolution, but is difficult since presentation can have errors in both modalities. Finally, it discusses how modern VLMs can leverage entropy associated with modalities in relevant situations to resolve those conflicts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/venn_coverage.png)

> 🔼 This figure shows a Venn diagram illustrating the quantitative relationship between the number of tokens in the speech transcript, the number of tokens extracted from the slides via OCR, and the overlap between these two sources.  The numerical values represent the average token counts obtained from the TIB dataset after preprocessing. The overlap region indicates tokens that are present in both the transcript and the OCR data, highlighting the extent to which the speech and the slides convey redundant information. This is useful for understanding data redundancy and potential areas of improved efficiency in multimodal summarization.
> <details>
> <summary>read the caption</summary>
> Figure 2. Average token count in speech transcript and OCR, and their overlap
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/slides_vs_video.png)

> 🔼 Figure 3 illustrates the performance of a single-modality input (video, slides, or transcript) on a summarization task using the Qwen2-VL model.  The x-axis represents the visual token budget per frame, reflecting the amount of visual information provided to the model. The y-axis displays the ROUGE-1 score, a common metric for evaluating the quality of generated summaries.  The graph compares the performance of different input types across various visual token budget levels, revealing the relative effectiveness of each modality for summarization at different computational costs.
> <details>
> <summary>read the caption</summary>
> Figure 3. Unimodal performance at different token budgets
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/register_tokens.png)

> 🔼 This figure demonstrates the impact of adding structural information to the model's input on the Rouge score, a metric that measures the quality of generated summaries.  The experiment compares the performance of summarization using only the transcript versus using the transcript combined with slides, with the slides and transcript tokens interleaved according to their temporal order in the presentation. The results show that the addition of structured multimodal input (interleaved slides and transcript) significantly improves the Rouge score compared to using only the transcript.  The improvement showcases that incorporating the temporal relationship between visual and textual information enhances summarization performance.
> <details>
> <summary>read the caption</summary>
> Figure 4. The addition of structure improves the Rouge score compared to the transcript alone
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/visual_tokens.png)

> 🔼 This figure displays the relationship between Rouge scores (a common metric for evaluating the quality of text summarization) and varying visual token budgets for different input representations to a vision-language model (VLM).  The different input representations include using only the transcript, only slides, a combination of both, and structured/unstructured versions of the combined modalities. The graph shows how the effectiveness of the model changes as more visual information (represented by the visual token budget) is provided. It demonstrates the trade-off between the quantity of visual data and the improvement in summarization quality, considering various input types and the impact of structured text and image combinations.
> <details>
> <summary>read the caption</summary>
> Figure 5. Rouge score with different visual token budgets
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/model_scaling.png)

> 🔼 This figure illustrates how the performance of different sized language models (2B and 7B parameters) on the summarization task varies based on the amount of visual information provided (visual token budget).  It examines the Rouge-1 score, a common metric for evaluating the quality of generated summaries, across various visual token budgets and for different model sizes. The graph visually represents the impact of increasing visual token budget on summarization performance for each model size, highlighting the interplay between model capacity and visual input.
> <details>
> <summary>read the caption</summary>
> Figure 6. Rouge score with varying visual token budgets for different model sizes
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/average_length.png)

> 🔼 Figure 7 illustrates the trade-off between the input length and the ROUGE-1 score, a metric for evaluating the quality of generated summaries.  The x-axis shows the average input token length, encompassing various combinations of unimodal (slides only) and multimodal (slides and transcripts) inputs.  The y-axis represents the ROUGE-1 score. Different marker shapes and sizes denote specific input configurations; larger markers indicate higher visual token budgets (more visual information used). The figure highlights the Pareto frontier of input-length-optimal representations.  This means that within certain ranges of input length, some representations offer the best ROUGE-1 scores relative to the input token length.  For shorter input lengths, using slides alone is the most efficient.  For longer input lengths, using the structured multimodal representation (interleaved slides and transcripts) is optimal.
> <details>
> <summary>read the caption</summary>
> Figure 7.  Slides-only and structured multimodal representations constitute input-length-optimal representations for different input lengths. Bigger icons depict higher visual token budget.
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_extractive_coverage.png)

> 🔼 This figure shows the extractive coverage (the extent of vocabulary overlap between the generated summary and the source text) and extractive density (average length of extractive fragments from the source in the summary) for different input settings.  Part (a) shows the results for unimodal (single modality, such as just transcript or just images) and multimodal (combining modalities, such as transcript and images) inputs.  The bars represent the average extractive coverage and density for each input type and modality, making it easy to compare how well summaries generated from different input combinations retain information from each of the source modalities.
> <details>
> <summary>read the caption</summary>
> (a) Unimodal or multimodal input
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_extractive_coverage_struct.png)

> 🔼 This figure compares the extractive coverage and density of summaries generated using structured versus unstructured multimodal inputs.  'Structured' refers to a representation where visual (slide) and textual (transcript) data are interleaved, reflecting their temporal alignment in the original presentation. 'Unstructured' signifies a concatenation of all slides followed by the entire transcript, lacking explicit structural information.  The comparison highlights how the organization of multimodal data affects the model's ability to extract and utilize information relevant to the original sources (speech transcript and slide OCR text).
> <details>
> <summary>read the caption</summary>
> (b) Structured or unstructured input
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_extractive_density.png)

> 🔼 This figure shows the extractive coverage of the generated summaries, comparing how much of the vocabulary from the different input modalities (slides' OCR text, transcript, and the combination of both) is present in the generated summaries.  It's a measure of how much of the original information sources are directly reflected in the summaries. The figure helps to understand if the summarization model is accurately incorporating the information from the different input modalities.
> <details>
> <summary>read the caption</summary>
> Figure 8. Extractive coverage of the predicted summaries with reference to input modality
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_extractive_density_strcut.png)

> 🔼 This figure shows the extractive coverage of the generated summaries, comparing unimodal (text only, slides only, images only) and multimodal inputs.  Extractive coverage measures the overlap between the vocabulary of the generated summary and the original source text (transcript, OCR from slides, or both). The chart visualizes the average coverage for each input modality, revealing how effectively different models use the various modalities to generate summaries that reflect the source material.
> <details>
> <summary>read the caption</summary>
> (a) Unimodal or multimodal input
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_relevance_score.png)

> 🔼 This figure shows the extractive coverage and density of the generated summaries when using structured (interleaved slides and transcript) versus unstructured (slides followed by transcript) input.  It compares the vocabulary overlap between the generated summary and either the text extracted from slides (OCR), the speech transcript, or both (Overall). The analysis helps understand how the organization of multimodal input affects the summary's extractiveness, revealing whether a structured approach leads to summaries that are more closely aligned with the individual modalities.
> <details>
> <summary>read the caption</summary>
> (b) Structured or unstructured input
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/vlmsumm_relevance_score_struct.png)

> 🔼 Figure 9 shows the average length of contiguous text fragments extracted from the source (speech transcript or OCR text from slides) that appear in the generated summaries.  It compares this 'extractive density' across different input modalities (unimodal or multimodal) and for structured versus unstructured input representations. Higher values indicate that longer stretches of the original source text are preserved in the summaries.
> <details>
> <summary>read the caption</summary>
> Figure 9. Extractive density of the predicted summaries with reference to input modality
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/relevance_extractiveness.png)

> 🔼 This figure shows the extractive coverage of the generated summaries in unimodal and multimodal settings. Extractive coverage measures the overlap between the vocabulary of the generated summary and the vocabulary of the input source (speech transcript, image OCR, or both).  Panel (a) presents results for various unimodal and multimodal inputs (text only, images only, text and images). The results are shown separately for the transcript, OCR and combined (overall) input modalities.  The figure demonstrates how the inclusion of additional modalities affects the extractive coverage of the summary, revealing whether generated summaries tend to extract more information from a specific modality or a combination of modalities.
> <details>
> <summary>read the caption</summary>
> (a) Unimodal or multimodal input
> </details>



![](https://arxiv.org/html/2504.10049/extracted/6358140/figures/relevance_extractiveness-dens.png)

> 🔼 This figure presents a comparison of extractive coverage and density for different input methods (structured vs. unstructured) in the context of multimodal summarization.  Extractive coverage represents the proportion of vocabulary from the original source (speech transcripts and OCR-extracted text from slides) that is included in the generated summary. Extractive density refers to the average length of the extractive fragments from the source text present in the summary.  The figure shows that a structured input (interleaving slides and transcript) leads to higher extractive coverage and density compared to an unstructured input (all slides followed by the transcript).
> <details>
> <summary>read the caption</summary>
> (b) Structured or unstructured input
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.1.1">
<span class="ltx_p" id="S5.T2.4.1.1.1.1.1" style="width:65.0pt;">Visual token</span>
<span class="ltx_p" id="S5.T2.4.1.1.1.1.2">budget</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.2.1">
<span class="ltx_p" id="S5.T2.4.1.1.2.1.1" style="width:65.0pt;">Average visual</span>
<span class="ltx_p" id="S5.T2.4.1.1.2.1.2">tokens per</span>
<span class="ltx_p" id="S5.T2.4.1.1.2.1.3">slide</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.3.1">
<span class="ltx_p" id="S5.T2.4.1.1.3.1.1" style="width:65.0pt;">Total tokens</span>
<span class="ltx_p" id="S5.T2.4.1.1.3.1.2">(slides)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.4.1">
<span class="ltx_p" id="S5.T2.4.1.1.4.1.1" style="width:65.0pt;">Total tokens</span>
<span class="ltx_p" id="S5.T2.4.1.1.4.1.2">(video@0.1fps)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.1.1.5.1">
<span class="ltx_p" id="S5.T2.4.1.1.5.1.1" style="width:65.0pt;">Total tokens</span>
<span class="ltx_p" id="S5.T2.4.1.1.5.1.2">(video@1fps)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.2.1.1">
<span class="ltx_p" id="S5.T2.4.2.2.1.1.1" style="width:65.0pt;">2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.2.2.1">
<span class="ltx_p" id="S5.T2.4.2.2.2.1.1" style="width:65.0pt;">1.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.2.3.1">
<span class="ltx_p" id="S5.T2.4.2.2.3.1.1" style="width:65.0pt;">0.1k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.2.4.1">
<span class="ltx_p" id="S5.T2.4.2.2.4.1.1" style="width:65.0pt;">0.1k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.4.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.2.2.5.1">
<span class="ltx_p" id="S5.T2.4.2.2.5.1.1" style="width:65.0pt;">1k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.3.1.1">
<span class="ltx_p" id="S5.T2.4.3.3.1.1.1" style="width:65.0pt;">8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.3.2.1">
<span class="ltx_p" id="S5.T2.4.3.3.2.1.1" style="width:65.0pt;">6.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.3.3.1">
<span class="ltx_p" id="S5.T2.4.3.3.3.1.1" style="width:65.0pt;">0.2k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.3.4.1">
<span class="ltx_p" id="S5.T2.4.3.3.4.1.1" style="width:65.0pt;">0.6k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.3.3.5.1">
<span class="ltx_p" id="S5.T2.4.3.3.5.1.1" style="width:65.0pt;">6k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.4.1.1">
<span class="ltx_p" id="S5.T2.4.4.4.1.1.1" style="width:65.0pt;">64</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.4.2.1">
<span class="ltx_p" id="S5.T2.4.4.4.2.1.1" style="width:65.0pt;">50.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.4.3.1">
<span class="ltx_p" id="S5.T2.4.4.4.3.1.1" style="width:65.0pt;">1k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.4.4.1">
<span class="ltx_p" id="S5.T2.4.4.4.4.1.1" style="width:65.0pt;">3k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.4.4.5.1">
<span class="ltx_p" id="S5.T2.4.4.4.5.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.4.4.4.5.1.1.1">31k</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.5.1.1">
<span class="ltx_p" id="S5.T2.4.5.5.1.1.1" style="width:65.0pt;">128</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.5.2.1">
<span class="ltx_p" id="S5.T2.4.5.5.2.1.1" style="width:65.0pt;">119.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.5.3.1">
<span class="ltx_p" id="S5.T2.4.5.5.3.1.1" style="width:65.0pt;">4k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.5.4.1">
<span class="ltx_p" id="S5.T2.4.5.5.4.1.1" style="width:65.0pt;">13k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.4.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.5.5.5.1">
<span class="ltx_p" id="S5.T2.4.5.5.5.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.4.5.5.5.1.1.1">134k</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T2.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.6.1.1">
<span class="ltx_p" id="S5.T2.4.6.6.1.1.1" style="width:65.0pt;">512</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T2.4.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.6.2.1">
<span class="ltx_p" id="S5.T2.4.6.6.2.1.1" style="width:65.0pt;">182.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T2.4.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.6.3.1">
<span class="ltx_p" id="S5.T2.4.6.6.3.1.1" style="width:65.0pt;">6k</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T2.4.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.6.4.1">
<span class="ltx_p" id="S5.T2.4.6.6.4.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.4.6.6.4.1.1.1">53k</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T2.4.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.4.6.6.5.1">
<span class="ltx_p" id="S5.T2.4.6.6.5.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.4.6.6.5.1.1.1">538k</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of visual tokens used by the model for different visual token budget settings, along with the resulting total input lengths for slides and videos sampled at 0.1 and 1 frame per second.  The 'visual token budget' column shows the maximum number of visual tokens allocated per image. The 'Average visual tokens per slide' column shows the average number of visual tokens actually used per slide. The next three columns display the total input length in tokens for slides, video sampled at 0.1 fps (frames per second), and video sampled at 1 fps respectively.  Input lengths exceeding the model's context window limit are italicized, indicating cases where the model could not handle the entire input.
> <details>
> <summary>read the caption</summary>
> Table 2. Measured average number of visual tokens for different visual token budgets, and resulting input length for slides and video sampled at 0.1 or 1 fps. Settings where the input length exceeds the model context size are italicized.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.8.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.8.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.1.1.1.1">
<span class="ltx_p" id="S5.T3.8.1.1.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.1.1.1.1.1.1" style="font-size:50%;">Summary with transcript input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.8.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.1.1.2.1">
<span class="ltx_p" id="S5.T3.8.1.1.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.1.1.2.1.1.1" style="font-size:50%;">Summary with slides input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.8.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.1.1.3.1">
<span class="ltx_p" id="S5.T3.8.1.1.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.1.1.3.1.1.1" style="font-size:50%;">Summary with multimodal input</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.8.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.2.2.1.1">
<span class="ltx_p" id="S5.T3.8.2.2.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.1" style="font-size:50%;">The presentation by Stuart Halloway is about </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.2" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.3" style="font-size:50%;">, a programming language for problem solvers. The speaker introduces the topic of </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.4" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.5" style="font-size:50%;"> and its importance in software development. He discusses the characteristics of </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.6" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.7" style="font-size:50%;">, such as being knowledgeable, flexible, powerful, and smart. He also mentions the challenges of working with transient data structures and the need for persistent data structures. Halloway explains how </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.8" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.9" style="font-size:50%;"> uses persistent data structures to solve these challenges and how it provides direct access to the platform. He also discusses the benefits of using </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.10" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.11" style="font-size:50%;">, such as being able to build systems quickly and having a powerful set of persistent data structures. The presentation ends with a summary of the benefits of using </span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.12" style="font-size:50%;background-color:#FFFF00;">closure</span><span class="ltx_text" id="S5.T3.8.2.2.1.1.1.13" style="font-size:50%;"> and a call to action for attendees to learn more about the language.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.8.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.2.2.2.1">
<span class="ltx_p" id="S5.T3.8.2.2.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.1" style="font-size:50%;">The presentation is about </span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.2" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.3" style="font-size:50%;">, a language designed for problem solvers. The speaker, Stuart Halloway, introduces </span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.4" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.5" style="font-size:50%;"> and its features, such as its ability to handle transience and persistence, and its use in various programming contexts. The presentation includes slides that explain the language’s syntax and features, as well as examples of how it can be used to solve problems. The slides also show how </span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.6" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.2.1.1.7" style="font-size:50%;"> can be used to implement interfaces and work with collections, directories, files, XML, JSON, and ResultSets. The presentation ends with a question and answer session and a list of resources for further learning.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.8.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.8.2.2.3.1">
<span class="ltx_p" id="S5.T3.8.2.2.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.1" style="font-size:50%;">The presentation by Stuart Halloway is about </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.2" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.3" style="font-size:50%;">, a programming language for problem solvers. The main focus of the presentation is to explain the benefits of using </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.4" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.5" style="font-size:50%;"> for software development, particularly in terms of flexibility, power, and knowledge. Halloway discusses the importance of having knowledge in software development and how </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.6" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.7" style="font-size:50%;"> provides a way to build systems that are knowledgeable and powerful. He also emphasizes the importance of having flexible software systems that can adapt to changing requirements. The presentation includes slides that explain the different types of data structures in </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.8" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.9" style="font-size:50%;">, such as vectors, maps, sets, and lists, and how they can be used to build powerful and flexible software systems. Halloway also discusses the benefits of using </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.10" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.11" style="font-size:50%;"> for developing large-scale systems, such as the ability to build systems that are composable and can be easily modified and extended. The presentation also includes a demonstration of </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.12" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.13" style="font-size:50%;"> in action, using a code example to show how it can be used to build a simple program. Overall, the presentation provides a comprehensive overview of </span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.14" style="font-size:50%;background-color:#FFFF00;">Clojure</span><span class="ltx_text" id="S5.T3.8.2.2.3.1.1.15" style="font-size:50%;"> and its benefits for software development.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents three summaries of the presentation 'Clojure: a language for problem solvers,' each generated using a different input modality: transcript only, slides only, and both transcript and slides (multimodal).  The purpose is to illustrate how the inclusion of visual information (slides) improves the quality of the generated summary, specifically highlighting the spell-checking capabilities of the multimodal approach, as evidenced by the more accurate spelling of words like 'closure' in that summary. The table showcases the strengths and weaknesses of each input modality in terms of producing a comprehensive and accurate summary.
> <details>
> <summary>read the caption</summary>
> Table 3. Summaries generated from the presentation ”Clojure: a language for problem solvers”, display the spell-checking abilities of the additional modalities
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.6.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.1.1.1.1">
<span class="ltx_p" id="S5.T4.6.1.1.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.1.1.1.1.1.1" style="font-size:50%;">Summary with transcript input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.1.1.2.1">
<span class="ltx_p" id="S5.T4.6.1.1.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.1.1.2.1.1.1" style="font-size:50%;">Summary with slides input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.6.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.1.1.3.1">
<span class="ltx_p" id="S5.T4.6.1.1.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.1.1.3.1.1.1" style="font-size:50%;">Summary with multimodal input</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T4.6.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.2.2.1.1">
<span class="ltx_p" id="S5.T4.6.2.2.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.2.2.1.1.1.1" style="font-size:50%;">The speaker is introducing the topic of keyword arguments in Ruby programming. They explain that keyword arguments are a feature in Ruby that allows for more flexible and functional programming. They provide examples of how keyword arguments can be used to pass arguments to functions and how they can be used to make functions more flexible. The speaker also discusses the benefits of using keyword arguments over positional arguments, such as making functions more clear and flexible.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T4.6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.2.2.2.1">
<span class="ltx_p" id="S5.T4.6.2.2.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.2.2.2.1.1.1" style="font-size:50%;">The presentation is about </span><span class="ltx_text" id="S5.T4.6.2.2.2.1.1.2" style="font-size:50%;background-color:#FFFF00;">RubyConf Cincinnati 2016, featuring a talk by Guyren G Howe titled ”Keyword Args - the ikller Ruby feature you aren’t using.”</span><span class="ltx_text" id="S5.T4.6.2.2.2.1.1.3" style="font-size:50%;"> The speaker discusses the use of keyword arguments in Ruby, highlighting their benefits such as making code more intuitive, clearer, more flexible, and more functional. The presentation includes slides that explain the different types of keyword arguments, such as positional, required, and optional arguments, and how they can be used to make code more expressive. The speaker also demonstrates how keyword arguments can be used to create more flexible and functional code. The presentation concludes with a discussion on dependency injection and context funneling, which are other Ruby features that are not commonly used.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T4.6.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.6.2.2.3.1">
<span class="ltx_p" id="S5.T4.6.2.2.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T4.6.2.2.3.1.1.1" style="font-size:50%;">The presentation by </span><span class="ltx_text" id="S5.T4.6.2.2.3.1.1.2" style="font-size:50%;background-color:#FFFF00;">Guyren G Howe at RubyConf Cincinnati 2016</span><span class="ltx_text" id="S5.T4.6.2.2.3.1.1.3" style="font-size:50%;"> focuses on keyword arguments in Ruby programming. The speaker explains that keyword arguments are a feature in Ruby that allows for more flexible and functional programming. They are particularly useful for passing positional arguments, optional arguments, and keyword arguments to functions. The speaker provides examples of how keyword arguments can make code more clear, more flexible, and more functional. He also discusses the benefits of using keyword arguments over positional arguments, such as the ability to pass in optional arguments and the ability to override default values. The presentation concludes with a summary of the key points and a call to action for attendees to consider using keyword arguments in their Ruby code.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of summaries generated for the presentation titled 'Keyword Args — the killer Ruby feature you aren’t using.'  Three different summarization approaches are compared: one using only the presentation transcript, one using only the slides extracted from the video, and a multimodal approach combining both transcript and slides.  The comparison highlights how leveraging the visual information from the slides significantly enriches the summary, often by providing additional context and details not present in the transcript alone.  The differences illustrate the benefits of multimodal summarization in capturing the full meaning conveyed in the presentation.
> <details>
> <summary>read the caption</summary>
> Table 4. Summaries generated from the presentation ”Keyword Args — the killer Ruby feature you aren’t using”, illustrating the additional context when leveraging the slides
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.10.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.10.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.1.1.1.1">
<span class="ltx_p" id="S5.T5.10.1.1.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.1.1.1.1.1.1" style="font-size:50%;">Summary with transcript input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.10.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.1.1.2.1">
<span class="ltx_p" id="S5.T5.10.1.1.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.1.1.2.1.1.1" style="font-size:50%;">Summary with slides input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.10.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.1.1.3.1">
<span class="ltx_p" id="S5.T5.10.1.1.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.1.1.3.1.1.1" style="font-size:50%;">Summary with multimodal input</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T5.10.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.2.2.1.1">
<span class="ltx_p" id="S5.T5.10.2.2.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.2.2.1.1.1.1" style="font-size:50%;background-color:#FFFF00;">Fletcher Foti</span><span class="ltx_text" id="S5.T5.10.2.2.1.1.1.2" style="font-size:50%;"> is a PhD in city planning who is now a chief data scientist at Synthesity. He is presenting on UrbanSim, a simulation tool that simulates the connected metropolis. He explains that UrbanSim is an agent-based simulation of regional real estate markets, and that it captures individual households, individual jobs, and the decisions that individual households make. He also mentions that UrbanSim is an open-source project that is BSD licensed.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T5.10.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.2.2.2.1">
<span class="ltx_p" id="S5.T5.10.2.2.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.2.2.2.1.1.1" style="font-size:50%;">The presentation is titled ”What is UrbanSim?” and is part of the FOSS4G PDX 2014 conference. The speaker, </span><span class="ltx_text" id="S5.T5.10.2.2.2.1.1.2" style="font-size:50%;background-color:#FFFF00;">Paul Waddell</span><span class="ltx_text" id="S5.T5.10.2.2.2.1.1.3" style="font-size:50%;">, is a professor at the University of California, Berkeley. The presentation covers the purpose of UrbanSim, which is an agent-based simulation of regional real estate markets. The simulation is written in Java in 2000 and Python in 2006. The code is implemented to use Pandas this year. The presentation also discusses the regional task, which includes reducing greenhouse gas emissions, housing the region’s population at all income levels, and embodying local visions. The speaker also mentions the Open Source Stack, which includes tools like Pandas, Python, and Scikit.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T5.10.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.10.2.2.3.1">
<span class="ltx_p" id="S5.T5.10.2.2.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T5.10.2.2.3.1.1.1" style="font-size:50%;">The presentation by </span><span class="ltx_text" id="S5.T5.10.2.2.3.1.1.2" style="font-size:50%;background-color:#FFFF00;">Fletcher Foti</span><span class="ltx_text" id="S5.T5.10.2.2.3.1.1.3" style="font-size:50%;"> focused on UrbanSim, a statistical model used for simulating the connected metropolis. The speaker explained that UrbanSim is used to forecast change in population, employment, and the built environment over a 30-year planning horizon for a given metropolitan region. The model is agent-based, simulating individual households, jobs, and land use decisions. The speaker also highlighted the open-source nature of the project, with UrbanSim being written in Java in 2000 and Python in 2006. The model was re-implemented in 2013 on new scientific Python tools, specifically Pandas. The speaker also discussed the open-source stack, which includes Python, Pandas, and other libraries. The presentation included a demo of the Urban Data Science Toolkit, which includes tools for network analysis, data visualization, and web mapping. The speaker also mentioned the Sync City project, which is a large-scale transportation model required by federal law.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a qualitative comparison of summaries generated by a Vision-Language Model (VLM) using different input modalities (transcript only, slides only, and both transcript and slides) for the presentation 'UrbanSim2: Simulating the Connected Metropolis'.  The key aspect highlighted is that while the slides mention 'Paul Waddell' as the speaker, the actual speaker, as stated in the presentation's transcript, is 'Fletcher Foti'. The table shows how each modality influences the accuracy and completeness of the summary, demonstrating whether the VLM correctly identifies the speaker and incorporates details present in different modalities.
> <details>
> <summary>read the caption</summary>
> Table 5. Summaries generated from the presentation ”UrbanSim2: Simulating the Connected Metropolis”, illustrating the additional context when leveraging the transcript: the slides mention Paul Waddell but the speaker is Fletcher Foti as said in the presentation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.6.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.1.1.1.1">
<span class="ltx_p" id="S5.T6.6.1.1.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.1.1.1.1.1.1" style="font-size:50%;">Summary with transcript input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.1.1.2.1">
<span class="ltx_p" id="S5.T6.6.1.1.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.1.1.2.1.1.1" style="font-size:50%;">Summary with slides input</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.6.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.1.1.3.1">
<span class="ltx_p" id="S5.T6.6.1.1.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.1.1.3.1.1.1" style="font-size:50%;">Summary with multimodal input</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T6.6.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.2.2.1.1">
<span class="ltx_p" id="S5.T6.6.2.2.1.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.2.2.1.1.1.1" style="font-size:50%;">The talk was about the last year’s journey to bring together the GenoOS framework and the Pinephone. The speaker, Norman Feske, from GenoDepps, the developer behind the GenoOS framework, gave a presentation on the topic.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T6.6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.2.2.2.1">
<span class="ltx_p" id="S5.T6.6.2.2.2.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.2.2.2.1.1.1" style="font-size:50%;">The presentation is titled ”Genode meets the Pinephone” and is given by Norman Feske. The presentation covers the motivation behind the development of Genode, which is a microkernel-based operating system. The presentation also discusses the corporate motives of the developers and the sentiments shared by members of civil society. The development story of Genode is presented, including the boot steps, device access, and cascaded authorities. The presentation also covers the development of Genode on the Pinephone, including the device tree, device drivers, and the Pinephone as a development platform. The presentation ends with a preview of the Genode OS on the Pinephone and a list of goals for 2022.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T6.6.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.6.2.2.3.1">
<span class="ltx_p" id="S5.T6.6.2.2.3.1.1" style="width:130.1pt;"><span class="ltx_text" id="S5.T6.6.2.2.3.1.1.1" style="font-size:50%;">The presentation by Norman Feske at FOSDEM 2022 focuses on the development of GenoOS, a microkernel-based operating system for smartphones. The presentation covers the motivation behind the project, the development process, and the current status of the project. </span><span class="ltx_text" id="S5.T6.6.2.2.3.1.1.2" style="font-size:50%;background-color:#FFFF00;">Key points include:
- The project aims to combine the GenoOS framework with the PinePhone, a smartphone that uses a custom microkernel.
- The development process involves booting the device, creating a custom Linux kernel, and porting the kernel to the PinePhone.
- The development team has made progress in porting the kernel and has successfully run a small application on the PinePhone.
- The team is working on improving performance and adding new features, such as persistent storage and mobile data connectivity.
- The presentation also includes a demonstration of running a small application on the PinePhone and a preview of the Sculpt OS on the PinePhone.
- The team plans to continue working on the project in 2022, with a focus on video telephony, persistent storage, mobile data connectivity, power management, and performance improvements.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases three summaries of the presentation 'Genode meets the Pinephone.'  Each summary was generated using a different input modality: transcript only, slides only, and multimodal (both transcript and slides). The key observation is that the multimodal input, without explicit prompting, unexpectedly generated a bulleted list format for the summary, a stylistic choice not present in the summaries generated with only the transcript or slides.  This highlights the influence of multimodal input on the stylistic choices made by the summarization model.
> <details>
> <summary>read the caption</summary>
> Table 6. Summaries generated from the presentation ”Genode meets the Pinephone”, exemplifying the unprompted use of bullet point lists with the multimodal input
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10049/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10049/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}