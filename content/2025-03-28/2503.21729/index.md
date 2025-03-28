---
title: "ReaRAG: Knowledge-guided Reasoning Enhances Factuality of Large Reasoning Models with Iterative Retrieval Augmented Generation"
summary: "ReaRAG enhances factuality in large reasoning models (LRMs) by integrating knowledge-guided reasoning with iterative retrieval augmented generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21729 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhicheng Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21729" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21729" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21729/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Reasoning Models (LRMs) demonstrate reasoning abilities but rely on parametric knowledge, limiting factual accuracy. RL-based LRMs with retrieval suffer from overthinking and lack robustness. To address this, a factuality-enhanced reasoning model that explores diverse queries without excessive iterations is needed. This model is expected to solve issues that other prompt based solutions have such as unreliable token generation.



To this end, **ReaRAG** leverages an LRM to generate thinking and select actions from a predefined action space (Search/Finish). Search queries are executed against a RAG engine, with results guiding later steps until a Finish action is chosen. A data framework with reasoning chain length upper bound is created to improve retrieval robustness. The experiment demonstrated substantial performance improvement.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ReaRAG enhances LRMs' factuality through knowledge-guided reasoning chains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ReaRAG combines strong reasoning with RAG, leveraging deliberation before acting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method achieves substantial performance improvements on multi-hop benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it introduces **ReaRAG, a framework enhancing factuality in LRMs for question answering**. The framework's knowledge-guided reasoning addresses overthinking in RL-based models and improves integration of reasoning and RAG. The result will open new directions for integrating reasoning into RAG.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21729/x1.png)

> 🔼 This figure illustrates the key difference between traditional Large Reasoning Models (LRMs) and the proposed ReaRAG model. LRMs generate answers based solely on their internal knowledge, which can limit factual accuracy, particularly for complex, multi-hop questions.  ReaRAG, on the other hand, employs an iterative retrieval-augmented generation (RAG) approach.  It starts with an LRM generating a reasoning chain, but it then uses a RAG engine to retrieve external knowledge based on queries generated within that reasoning chain. This process continues iteratively until a final answer is produced. The diagram visually represents this iterative process, showing how ReaRAG constructs its answer by incorporating external information, thus enhancing factual accuracy compared to the single-step approach of LRMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Unlike LRMs, ReaRAG iteratively constructs knowledge-guided reasoning chains for factual answers.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.5.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.5.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.5.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="6" id="S4.T1.4.4.5.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1.3.1">Multi-hop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.4.4.5.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1.4.1">Single-hop</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.4.4.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.2.1.1">MuSiQue</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.4.4.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.2.2.1">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T1.4.4.6.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.2.3.1">IIRC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.4.4.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.2.4.1">NQ</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><msub id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.m1.1.1.2a.cmml">ACC</mtext><mi id="S4.T1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T1.1.1.1.1.m1.1.1.2a.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2">ACC</mtext></ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.5.1">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><msub id="S4.T1.2.2.2.2.m1.1.1" xref="S4.T1.2.2.2.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T1.2.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.2.m1.1.1.2a.cmml">ACC</mtext><mi id="S4.T1.2.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.2.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.2.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T1.2.2.2.2.m1.1.1.2a.cmml" xref="S4.T1.2.2.2.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T1.2.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.2.m1.1.1.2">ACC</mtext></ci><ci id="S4.T1.2.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.6.1">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.3"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><msub id="S4.T1.3.3.3.3.m1.1.1" xref="S4.T1.3.3.3.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T1.3.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.3.m1.1.1.2a.cmml">ACC</mtext><mi id="S4.T1.3.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.3.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T1.3.3.3.3.m1.1.1.2a.cmml" xref="S4.T1.3.3.3.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T1.3.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.3.m1.1.1.2">ACC</mtext></ci><ci id="S4.T1.3.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.3.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.4.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.1">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.4"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><msub id="S4.T1.4.4.4.4.m1.1.1" xref="S4.T1.4.4.4.4.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T1.4.4.4.4.m1.1.1.2" xref="S4.T1.4.4.4.4.m1.1.1.2a.cmml">ACC</mtext><mi id="S4.T1.4.4.4.4.m1.1.1.3" xref="S4.T1.4.4.4.4.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.4.4.4.4.m1.1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S4.T1.4.4.4.4.m1.1.1.2a.cmml" xref="S4.T1.4.4.4.4.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T1.4.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.4.m1.1.1.2">ACC</mtext></ci><ci id="S4.T1.4.4.4.4.m1.1.1.3.cmml" xref="S4.T1.4.4.4.4.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.8.1">EM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.7.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.7.3.1" rowspan="2"><span class="ltx_text" id="S4.T1.4.4.7.3.1.1">In-context</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.7.3.2">GLM-4-9B(128k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.3">23.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.4">15.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.5">58.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.6">47.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.7">20.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.7.3.8">18.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.9">45.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7.3.10">26.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.8.4">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.8.4.1">GLM-4-32B(128k)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.2">33.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.3">17.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.4">65.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.5">50.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.6">25.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.8.4.7">16.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.8">52.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.9">24.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.9.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.9.5.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.4.9.5.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T1.4.4.9.5.1.1.1">
<span class="ltx_p" id="S4.T1.4.4.9.5.1.1.1.1">Vanilla</span>
<span class="ltx_p" id="S4.T1.4.4.9.5.1.1.1.2">RAG</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.9.5.2">GLM-4-9B(128k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.3">25.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.4">14.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.5">68.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.9.5.6.1">52.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.7">28.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.9.5.8">23.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.9">49.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9.5.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.9.5.10.1">32.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.10.6">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.10.6.1">GLM-4-32B(128k)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.2">29.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.3">17.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.4">67.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.10.6.5.1">52.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.6">28.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.10.6.7">17.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.10.6.8.1">53.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.9"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.10.6.9.1">39.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.11.7">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.11.7.1">QwQ-32B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.2">36.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.3">20.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.4">67.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.5">47.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.6">38.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.11.7.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.11.7.7.1">32.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.8">48.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.9">26.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.12.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.12.8.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.4.12.8.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T1.4.4.12.8.1.1.1">
<span class="ltx_p" id="S4.T1.4.4.12.8.1.1.1.1">Advanced</span>
<span class="ltx_p" id="S4.T1.4.4.12.8.1.1.1.2">RAG</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.4.12.8.2">Self-RAG(Llama2-7b)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.3">24.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.4">13.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.5">45.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.6">31.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.7">25.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.12.8.8">13.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.9">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.12.8.10">28.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.13.9">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.13.9.1">SearChain(GPT-4o)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.13.9.2.1">51.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.13.9.3.1">33.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.13.9.4.1">69.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.5">49.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.13.9.6.1">40.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.13.9.7">20.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.13.9.8.1">54.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.9">25.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.14.10">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.14.10.1">Search-o1(QwQ-32B)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.2">40.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.3">32.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.4">55.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.5">38.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.6">32.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.14.10.7">27.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.8">43.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.14.10.9">28.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.15.11">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.1"><span class="ltx_text" id="S4.T1.4.4.15.11.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T1.4.4.15.11.1.1.1">
<span class="ltx_p" id="S4.T1.4.4.15.11.1.1.1.1">Ours</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.2.1">ReaRAG-9B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.3.1">66.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.4.1">40.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.5.1">75.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.6.1">56.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.15.11.7.1">42.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.4.4.15.11.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.15.11.8.1">29.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.9">52.00</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.4.15.11.10">25.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of the ReaRAG-9B model's performance against various baseline models on four distinct question answering (QA) benchmarks: MuSiQue, HotpotQA, IIRC, and NQ.  The benchmarks are categorized into multi-hop and single-hop QA tasks to assess the model's reasoning capabilities under different complexity levels.  The table reports two key evaluation metrics: Exact Match (EM) and LLM-as-judge accuracy (ACCL), calculated using GPT-4.  EM measures the exactness of the generated answer against the ground truth, while ACCL represents the accuracy of the answer as judged by GPT-4.  The results demonstrate ReaRAG-9B's superior performance in multi-hop QA scenarios compared to the baselines, showcasing the effectiveness of its iterative retrieval and knowledge-guided reasoning mechanism.  However, in the single-hop NQ benchmark, ReaRAG-9B's performance is comparable to existing state-of-the-art methods, indicating that its strengths primarily lie in more complex reasoning tasks.  The table highlights the best and second-best performing models for each benchmark and metric, enabling a clear and detailed understanding of the model's strengths and weaknesses across different QA types.
> <details>
> <summary>read the caption</summary>
> Table 1:  Main experimental results compared to baselines on four benchmarks. Bold and underline indicates the best and second best results. We employ the traditional EM metric and the LLM-as-judge framework with GPT-4o to evaluate predictions for each baseline, denoted as ACCLsubscriptACC𝐿\text{ACC}_{L}ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT. Our model, ReaRAG-9B, achieves significant improvements across all baselines, except for the single-hop NQ benchmark, highlighting that strong reasoning is particularly beneficial for multi-hop QA.
> </details>





### In-depth insights


#### RAG:Factuality
**RAG's factuality enhancement** is a central theme, addressing the limitations of LRMs reliant on **parametric knowledge**.  The paper proposes ReaRAG to enhance factual accuracy through **knowledge-guided reasoning**. It mitigates issues like **overthinking**, which can hinder performance in QA tasks.  **Retrieval robustness** is also key. The iterative nature of ReaRAG allows for **error correction** and refinement during reasoning. The paper emphasizes the **integration of strong reasoning** with external knowledge.

#### ReaRAG:Knowledge
**ReaRAG: Knowledge-guided Reasoning Enhances Factuality**. It targets the limitations of LRMs which primarily rely on parametric knowledge, hindering factual accuracy. Recent RL-based LRMs are prone to overthinking & reasoning instability. The proposed ReaRAG model enhances factuality, exploring diverse queries efficiently. It uses a novel data construction framework with a bounded reasoning chain length. The method first generates deliberate thinking, selects actions(Search/Finish). Search queries RAG, observations guide steps. It enhances factuality and integrates robust reasoning. The results show strong reflection, error recognition, and trajectory refinement.

#### RL Overthinking
**RL overthinking** in reasoning models refers to a phenomenon where reinforcement learning agents, despite having strong reasoning capabilities, engage in excessive or redundant thinking steps, especially in tasks like multi-hop question answering. This can manifest as unnecessary searches, repetitive verification of already established facts, or exploring irrelevant information pathways, ultimately reducing the efficiency and effectiveness of the reasoning process. This excessive deliberation often stems from a lack of robustness in integrating external knowledge, causing the model to rely too heavily on parametric knowledge or explore too many potential solutions.Mitigation strategies involve fine-tuning models on datasets with controlled reasoning chain lengths, enabling reflective reasoning before action, and employing strategic mechanisms to trigger termination of reasoning at the opportune moment.

#### Data:Reason Chain
**Generating high-quality reasoning chains is crucial**. The authors likely explore methods to construct these chains, potentially using the LRM itself in an iterative process of thought, action, and observation. **Data filtering** is a critical step, ensuring only high-quality chains are used for fine-tuning. This involves comparing the final answer derived from the chain to the ground truth answer, using metrics like the F1 score. Chains with low F1 scores are discarded. The final chains are of high quality, and are used for the next stages in the project. **Automated methods are used to restrict maximum length of reasoning chains**, preventing infinite loops during inference. These automated chains equips the RAG to have enhanced factuality in reasoning.

#### Limited Actions
The research paper recognizes a significant limitation in its current implementation: the **restricted action space of the ReaRAG model**, primarily confined to 'search' and 'finish' actions. This constraint inherently limits the model's ability to engage with diverse problem-solving scenarios. By design, it is prevented from using external tools such as code interpreters or real-time data retrieval from the web, which are essential for dynamic tasks. **Expanding the action space** is crucial to make the model more adaptable and versatile across a broader range of tasks. This would enable ReaRAG to tackle more complex problems by dynamically using various resources beyond its current capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21729/x2.png)

> 🔼 Figure 2 illustrates the ReaRAG model, a factuality-enhanced reasoning model.  The figure details the model's development process, beginning with an automated data construction approach (Algorithm 1) to create a dataset with knowledge-guided reasoning chains. This dataset is then used to fine-tune the ReaRAG model.  The core of ReaRAG iteratively solves complex queries by leveraging the Thought-Action-Observation paradigm, where the model generates a thought, performs an action (either searching for external knowledge or concluding with a final answer), observes the outcome, and repeats this iterative reasoning process until a final answer is reached. Algorithm 2 provides pseudocode for the inference stage.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our approach to develop a factuality-enhanced reasoning model ReaRAG. To equip ReaRAG with knowledge-guided reasoning ability, we propose an automated data construction approach (Algorithm 1). Next, we fine-tune ReaRAG on the constructed dataset to conduct reasoning iteratively, following the Thought-Action-Observation Paradigm to solve complex queries. Pseudocode for the inference stage is provided in Algorithm 2.
> </details>



![](https://arxiv.org/html/2503.21729/x3.png)

> 🔼 This figure compares the number of reasoning steps taken by ReaRAG and Search-o1 to achieve a perfect ACCL score (accuracy using LLM as judge) across various multi-hop question answering tasks.  The x-axis represents the chain length (number of reasoning steps), and the y-axis shows the number of instances at each chain length. The bars are grouped for each model (ReaRAG and Search-o1) and dataset. The average chain length is shown for each model. The key finding is that Search-o1 consistently needs more reasoning steps than ReaRAG, demonstrating the overthinking tendency often observed in reinforcement learning (RL)-based models on complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of chain length between ReaRAG and Search-o1 across multi-hop QA tasks. We measure the reasoning steps needed for both models to achieve a full ACCLsubscriptACC𝐿\text{ACC}_{L}ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT score. Search-o1 consistently requires more steps than ReaRAG, highlighting the tendency of RL-based models to overthink in multi-hop QA tasks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.1.1.1.1" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Multi-hop</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Single-hop</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.2.2.1.1">MQ</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.2.2.2.1">HoPo</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.2.2.3.1">IIRC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.2.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.2.2.4.1">NQ</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_t" id="S4.T2.1.3.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">Invalid rate (%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.3.3.2" style="padding-left:1.5pt;padding-right:1.5pt;">19.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;">28.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.3.3.4" style="padding-left:1.5pt;padding-right:1.5pt;">23.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.3.3.5" style="padding-left:1.5pt;padding-right:1.5pt;">25.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the percentage of instances where the QwQ-32B model failed to generate the necessary special tokens required by the Search-o1 method for retrieving information.  These failures resulted in a breakdown of the retrieval process within Search-o1, highlighting a key weakness of that approach. The table shows the invalid generation rates for special tokens broken down by dataset: MuSiQue, HotpotQA, IIRC, and NQ.  Higher percentages indicate a greater frequency of retrieval failures due to token generation issues.  This directly impacts the performance of Search-o1, since it relies on these tokens for effective retrieval.
> <details>
> <summary>read the caption</summary>
> Table 2:  Invalid generation rates of special tokens in QwQ-32B, leading to retrieval failures in Search-o1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.5.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="A1.T3.4.5.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="6" id="A1.T3.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.4.5.1.2.1">Multi-hop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T3.4.5.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.4.5.1.3.1">Single-hop</span></th>
</tr>
<tr class="ltx_tr" id="A1.T3.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T3.4.6.2.1"><span class="ltx_text ltx_font_bold" id="A1.T3.4.6.2.1.1">MuSiQue</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T3.4.6.2.2"><span class="ltx_text ltx_font_bold" id="A1.T3.4.6.2.2.1">HotpotQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="A1.T3.4.6.2.3"><span class="ltx_text ltx_font_bold" id="A1.T3.4.6.2.3.1">IIRC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T3.4.6.2.4"><span class="ltx_text ltx_font_bold" id="A1.T3.4.6.2.4.1">NQ</span></th>
</tr>
<tr class="ltx_tr" id="A1.T3.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.1"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T3.1.1.1.m1.1"><semantics id="A1.T3.1.1.1.m1.1a"><msub id="A1.T3.1.1.1.m1.1.1" xref="A1.T3.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T3.1.1.1.m1.1.1.2" xref="A1.T3.1.1.1.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T3.1.1.1.m1.1.1.3" xref="A1.T3.1.1.1.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.m1.1b"><apply id="A1.T3.1.1.1.m1.1.1.cmml" xref="A1.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.1.1.1.m1.1.1.1.cmml" xref="A1.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T3.1.1.1.m1.1.1.2a.cmml" xref="A1.T3.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T3.1.1.1.m1.1.1.2.cmml" xref="A1.T3.1.1.1.m1.1.1.2">ACC</mtext></ci><ci id="A1.T3.1.1.1.m1.1.1.3.cmml" xref="A1.T3.1.1.1.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.4.5"><span class="ltx_text ltx_font_bold" id="A1.T3.4.4.5.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.2.2.2"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T3.2.2.2.m1.1"><semantics id="A1.T3.2.2.2.m1.1a"><msub id="A1.T3.2.2.2.m1.1.1" xref="A1.T3.2.2.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T3.2.2.2.m1.1.1.2" xref="A1.T3.2.2.2.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T3.2.2.2.m1.1.1.3" xref="A1.T3.2.2.2.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.2.m1.1b"><apply id="A1.T3.2.2.2.m1.1.1.cmml" xref="A1.T3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.2.2.2.m1.1.1.1.cmml" xref="A1.T3.2.2.2.m1.1.1">subscript</csymbol><ci id="A1.T3.2.2.2.m1.1.1.2a.cmml" xref="A1.T3.2.2.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T3.2.2.2.m1.1.1.2.cmml" xref="A1.T3.2.2.2.m1.1.1.2">ACC</mtext></ci><ci id="A1.T3.2.2.2.m1.1.1.3.cmml" xref="A1.T3.2.2.2.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.2.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.2.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.4.6"><span class="ltx_text ltx_font_bold" id="A1.T3.4.4.6.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.3.3.3"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T3.3.3.3.m1.1"><semantics id="A1.T3.3.3.3.m1.1a"><msub id="A1.T3.3.3.3.m1.1.1" xref="A1.T3.3.3.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T3.3.3.3.m1.1.1.2" xref="A1.T3.3.3.3.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T3.3.3.3.m1.1.1.3" xref="A1.T3.3.3.3.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.3.m1.1b"><apply id="A1.T3.3.3.3.m1.1.1.cmml" xref="A1.T3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.3.3.3.m1.1.1.1.cmml" xref="A1.T3.3.3.3.m1.1.1">subscript</csymbol><ci id="A1.T3.3.3.3.m1.1.1.2a.cmml" xref="A1.T3.3.3.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T3.3.3.3.m1.1.1.2.cmml" xref="A1.T3.3.3.3.m1.1.1.2">ACC</mtext></ci><ci id="A1.T3.3.3.3.m1.1.1.3.cmml" xref="A1.T3.3.3.3.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.3.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.3.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T3.4.4.7"><span class="ltx_text ltx_font_bold" id="A1.T3.4.4.7.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.4.4"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T3.4.4.4.m1.1"><semantics id="A1.T3.4.4.4.m1.1a"><msub id="A1.T3.4.4.4.m1.1.1" xref="A1.T3.4.4.4.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T3.4.4.4.m1.1.1.2" xref="A1.T3.4.4.4.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T3.4.4.4.m1.1.1.3" xref="A1.T3.4.4.4.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T3.4.4.4.m1.1b"><apply id="A1.T3.4.4.4.m1.1.1.cmml" xref="A1.T3.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="A1.T3.4.4.4.m1.1.1.1.cmml" xref="A1.T3.4.4.4.m1.1.1">subscript</csymbol><ci id="A1.T3.4.4.4.m1.1.1.2a.cmml" xref="A1.T3.4.4.4.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T3.4.4.4.m1.1.1.2.cmml" xref="A1.T3.4.4.4.m1.1.1.2">ACC</mtext></ci><ci id="A1.T3.4.4.4.m1.1.1.3.cmml" xref="A1.T3.4.4.4.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.4.4.4.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.4.4.4.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.4.8"><span class="ltx_text ltx_font_bold" id="A1.T3.4.4.8.1">EM</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.4.7.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.4.7.1.1">GLM-4-9B(128k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.2">3.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.4">29.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.5">23.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.6">17.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.7.1.7"><span class="ltx_text ltx_font_bold" id="A1.T3.4.7.1.7.1">15.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.8">27.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.7.1.9">16.00</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.8.2">
<td class="ltx_td ltx_align_left" id="A1.T3.4.8.2.1">GLM-4-32B(128k)</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.2">6.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.3">1.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.4"><span class="ltx_text ltx_font_bold" id="A1.T3.4.8.2.4.1">40.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.5"><span class="ltx_text ltx_font_bold" id="A1.T3.4.8.2.5.1">28.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.6">17.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.4.8.2.7">11.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.8"><span class="ltx_text ltx_font_bold" id="A1.T3.4.8.2.8.1">44.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.2.9"><span class="ltx_text ltx_font_bold" id="A1.T3.4.8.2.9.1">25.00</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.9.3">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T3.4.9.3.1">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.2"><span class="ltx_text ltx_font_bold" id="A1.T3.4.9.3.2.1">11.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.3"><span class="ltx_text ltx_font_bold" id="A1.T3.4.9.3.3.1">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.4">35.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.5">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.6"><span class="ltx_text ltx_font_bold" id="A1.T3.4.9.3.6.1">21.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.4.9.3.7">14.50</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.8">37.50</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.4.9.3.9">12.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance of several large language models (LLMs) on both single-hop and multi-hop question answering benchmarks, without allowing the models to access external knowledge. The results demonstrate that while LLMs exhibit strong performance on single-hop questions, their accuracy drastically decreases when faced with multi-hop questions. This highlights a critical limitation of solely relying on parametric knowledge (the knowledge encoded within the model's weights) for complex, multi-step reasoning tasks.  The table provides quantitative evidence supporting the argument that accessing and effectively using external knowledge is crucial for enhancing the performance of LLMs in multi-hop question answering.
> <details>
> <summary>read the caption</summary>
> Table 3:  Closed-book performance of language models on multi-hop and single-hop benchmarks. These models perform better on single-hop benchmarks but score significantly lower on multi-hop benchmarks, highlighting the limitations of relying solely on parametric knowledge for these benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.5.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="A1.T4.4.5.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="6" id="A1.T4.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.4.5.1.2.1">Multi-hop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T4.4.5.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.4.5.1.3.1">Single-hop</span></th>
</tr>
<tr class="ltx_tr" id="A1.T4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T4.4.6.2.1"><span class="ltx_text ltx_font_bold" id="A1.T4.4.6.2.1.1">MuSiQue</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T4.4.6.2.2"><span class="ltx_text ltx_font_bold" id="A1.T4.4.6.2.2.1">HotpotQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="A1.T4.4.6.2.3"><span class="ltx_text ltx_font_bold" id="A1.T4.4.6.2.3.1">IIRC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T4.4.6.2.4"><span class="ltx_text ltx_font_bold" id="A1.T4.4.6.2.4.1">NQ</span></th>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><msub id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T4.1.1.1.m1.1.1.2" xref="A1.T4.1.1.1.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T4.1.1.1.m1.1.1.3" xref="A1.T4.1.1.1.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><apply id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T4.1.1.1.m1.1.1.2a.cmml" xref="A1.T4.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T4.1.1.1.m1.1.1.2.cmml" xref="A1.T4.1.1.1.m1.1.1.2">ACC</mtext></ci><ci id="A1.T4.1.1.1.m1.1.1.3.cmml" xref="A1.T4.1.1.1.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.4.5"><span class="ltx_text ltx_font_bold" id="A1.T4.4.4.5.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.2.2.2"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T4.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.m1.1a"><msub id="A1.T4.2.2.2.m1.1.1" xref="A1.T4.2.2.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T4.2.2.2.m1.1.1.2" xref="A1.T4.2.2.2.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T4.2.2.2.m1.1.1.3" xref="A1.T4.2.2.2.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.m1.1b"><apply id="A1.T4.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.2.2.2.m1.1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1">subscript</csymbol><ci id="A1.T4.2.2.2.m1.1.1.2a.cmml" xref="A1.T4.2.2.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T4.2.2.2.m1.1.1.2.cmml" xref="A1.T4.2.2.2.m1.1.1.2">ACC</mtext></ci><ci id="A1.T4.2.2.2.m1.1.1.3.cmml" xref="A1.T4.2.2.2.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.4.6"><span class="ltx_text ltx_font_bold" id="A1.T4.4.4.6.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.3.3.3"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T4.3.3.3.m1.1"><semantics id="A1.T4.3.3.3.m1.1a"><msub id="A1.T4.3.3.3.m1.1.1" xref="A1.T4.3.3.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T4.3.3.3.m1.1.1.2" xref="A1.T4.3.3.3.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T4.3.3.3.m1.1.1.3" xref="A1.T4.3.3.3.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.m1.1b"><apply id="A1.T4.3.3.3.m1.1.1.cmml" xref="A1.T4.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.3.3.3.m1.1.1.1.cmml" xref="A1.T4.3.3.3.m1.1.1">subscript</csymbol><ci id="A1.T4.3.3.3.m1.1.1.2a.cmml" xref="A1.T4.3.3.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T4.3.3.3.m1.1.1.2.cmml" xref="A1.T4.3.3.3.m1.1.1.2">ACC</mtext></ci><ci id="A1.T4.3.3.3.m1.1.1.3.cmml" xref="A1.T4.3.3.3.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T4.4.4.7"><span class="ltx_text ltx_font_bold" id="A1.T4.4.4.7.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.4.4"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="A1.T4.4.4.4.m1.1"><semantics id="A1.T4.4.4.4.m1.1a"><msub id="A1.T4.4.4.4.m1.1.1" xref="A1.T4.4.4.4.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="A1.T4.4.4.4.m1.1.1.2" xref="A1.T4.4.4.4.m1.1.1.2a.cmml">ACC</mtext><mi id="A1.T4.4.4.4.m1.1.1.3" xref="A1.T4.4.4.4.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.4.m1.1b"><apply id="A1.T4.4.4.4.m1.1.1.cmml" xref="A1.T4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.4.4.4.m1.1.1.1.cmml" xref="A1.T4.4.4.4.m1.1.1">subscript</csymbol><ci id="A1.T4.4.4.4.m1.1.1.2a.cmml" xref="A1.T4.4.4.4.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="A1.T4.4.4.4.m1.1.1.2.cmml" xref="A1.T4.4.4.4.m1.1.1.2">ACC</mtext></ci><ci id="A1.T4.4.4.4.m1.1.1.3.cmml" xref="A1.T4.4.4.4.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.4.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.4.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.4.8"><span class="ltx_text ltx_font_bold" id="A1.T4.4.4.8.1">EM</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.4.7.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.4.7.1.1" style="padding-bottom:-2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.7.1.1.1">ReaRAG-9B</span></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.2" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.3" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.4" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.5" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.6" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T4.4.7.1.7" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.8" style="padding-bottom:-2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T4.4.7.1.9" style="padding-bottom:-2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.8.2">
<td class="ltx_td ltx_align_left" id="A1.T4.4.8.2.1">   - <span class="ltx_text ltx_font_italic" id="A1.T4.4.8.2.1.1">w/o reasoning</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.2">60.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.3"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.2.3.1">43.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.4">68.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.5">50.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.6">31.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.2.7">21.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.8">45.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.2.9">24.00</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.9.3">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T4.4.9.3.1">   - <span class="ltx_text ltx_font_italic" id="A1.T4.4.9.3.1.1">w/ reasoning</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.2"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.2.1">66.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.3">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.4"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.4.1">75.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.5"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.5.1">56.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.6"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.6.1">42.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T4.4.9.3.7"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.7.1">29.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.8"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.8.1">52.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.4.9.3.9"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.3.9.1">25.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of ReaRAG-9B's performance with and without strong reasoning capabilities.  The 'w/ reasoning' model leverages the model's inherent strong reasoning abilities during the fine-tuning process, while the 'w/o reasoning' model does not. The results across four multi-hop question answering benchmarks (MuSiQue, HotpotQA, IIRC, and NQ) demonstrate that incorporating strong reasoning significantly improves the model's accuracy, as measured by the ACCL and EM metrics.  This highlights the effectiveness of the fine-tuning process used to integrate robust reasoning into the ReaRAG-9B model.
> <details>
> <summary>read the caption</summary>
> Table 4:  Performance comparison of models with and without strong reasoning capabilities. w/ reasoning consistently outperforms w/o reasoning across all benchmarks, demonstrating the effectiveness of our fine-tuning process, which enables ReaRAG-9B to inherit the strong reasoning abilities of LRM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T5.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.1.1.1"># Case Study 1: Where was the author of Hannibal and Scipio educated at?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.2.1.1.1">
<span class="ltx_p" id="A3.T5.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.1.1.1.1">Ground truth:</span> Exeter College</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T5.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.3.2.1.1.1.1">Search-o1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.4.3.1.1">
<span class="ltx_p" id="A3.T5.1.4.3.1.1.1" style="width:411.9pt;">Alright, I’ve got this question: <span class="ltx_text ltx_font_italic" id="A3.T5.1.4.3.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.5.4.1.1">
<span class="ltx_p" id="A3.T5.1.5.4.1.1.1" style="width:411.9pt;">So, I’ll do a search for "Hannibal and Scipio book."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.6.5.1.1">
<span class="ltx_p" id="A3.T5.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.6.5.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Hannibal and Scipio book<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.6.5.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.7.6.1.1">
<span class="ltx_p" id="A3.T5.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.7.6.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span><span class="ltx_text ltx_font_bold" id="A3.T5.1.7.6.1.1.1.2">No helpful information found.</span><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.7.6.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.8.7.1.1">
<span class="ltx_p" id="A3.T5.1.8.7.1.1.1" style="width:411.9pt;">Hmm, that didn’t turn up anything. Maybe the book has a different title. Let me think differently.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.9.8.1.1">
<span class="ltx_p" id="A3.T5.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.9.8.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here. Search-o1 reasoning diverges and hence unable to find related information.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.10.9.1.1">
<span class="ltx_p" id="A3.T5.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.10.9.1.1.1.1" style="background-color:#D3D3D3;">Only search queries and results are listed below for simplicity.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.11.10.1.1">
<span class="ltx_p" id="A3.T5.1.11.10.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.11.10.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Punic Wars book<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.11.10.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.12.11.1.1">
<span class="ltx_p" id="A3.T5.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.12.11.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.12.11.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.13.12.1.1">
<span class="ltx_p" id="A3.T5.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.13.12.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Hannibal vs. Scipio book<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.13.12.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.14.13.1.1">
<span class="ltx_p" id="A3.T5.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.14.13.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.14.13.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.15.14.1.1">
<span class="ltx_p" id="A3.T5.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.15.14.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Adrian Goldsworthy books<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.15.14.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.16.15.1.1">
<span class="ltx_p" id="A3.T5.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.16.15.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.**Thoughts**After carefully reviewing the three web pages provided, it is evident that none of them <span class="ltx_text ltx_font_italic" id="A3.T5.1.16.15.1.1.1.2" style="background-color:#D3D3D3;">… Simplified here.</span><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.16.15.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.17.16.1.1">
<span class="ltx_p" id="A3.T5.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.17.16.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Robert F. Pennell education<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.17.16.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.18.17.1.1">
<span class="ltx_p" id="A3.T5.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T5.1.18.17.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.<span class="ltx_text ltx_font_typewriter" id="A3.T5.1.18.17.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.19.18.1.1">
<span class="ltx_p" id="A3.T5.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.19.18.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here. Search-o1 tries many unrelated search queries, demonstrating divergent reasoning.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.20.19.1.1">
<span class="ltx_p" id="A3.T5.1.20.19.1.1.1" style="width:411.9pt;">I’ve reached the maximum number of searches. Based on the information I have, I need to make an educated guess.<span class="ltx_text ltx_font_italic" id="A3.T5.1.20.19.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here. Maximum searches reaches</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.21.20.1.1">
<span class="ltx_p" id="A3.T5.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.21.20.1.1.1.1" style="background-color:#D3D3D3;">Search-o1 tries to make a guess when there is not enough information to answer the multi-hop question.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.22.21.1.1">
<span class="ltx_p" id="A3.T5.1.22.21.1.1.1" style="width:411.9pt;">Considering that Oxford and Cambridge are traditional centers for classical studies in the UK, I’ll go with Oxford.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.23.22.1.1">
<span class="ltx_p" id="A3.T5.1.23.22.1.1.1" style="width:411.9pt;">Therefore, my answer is:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.24.23.1.1">
<span class="ltx_p" id="A3.T5.1.24.23.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="A3.T5.1.24.23.1.1.1.1" style="border-color: #000000;">Oxford</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.25.24" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.25.24.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T5.1.25.24.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.25.24.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T5.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.26.25.1.1">
<span class="ltx_p" id="A3.T5.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.26.25.1.1.1.1">Thought 1:</span> So I need to find out where the author of "Hannibal" and "Scipio" was educated. First, I need to know who the author is.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.27.26.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.27.26.1.1">
<span class="ltx_p" id="A3.T5.1.27.26.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.27.26.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T5.1.27.26.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who is the author of Hannibal and Scipio?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.28.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.28.27.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.28.27.1.1">
<span class="ltx_p" id="A3.T5.1.28.27.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.28.27.1.1.1.1">Observation 1:</span> The author of "Hannibal and Scipio" is Thomas Nabbes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.29.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.29.28.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.29.28.1.1">
<span class="ltx_p" id="A3.T5.1.29.28.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T5.1.29.28.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T5.1.29.28.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.29.28.1.1.2.1">Thought 2:</span> Okay, now that I know the author is Thomas Nabbes, I need to find out where he was educated.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.30.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.30.29.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.30.29.1.1">
<span class="ltx_p" id="A3.T5.1.30.29.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.30.29.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T5.1.30.29.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Where was Thomas Nabbes educated?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.31.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.31.30.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.31.30.1.1">
<span class="ltx_p" id="A3.T5.1.31.30.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.31.30.1.1.1.1">Observation 2:</span> Thomas Nabbes was educated at Exeter College, Oxford.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.32.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.32.31.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.32.31.1.1">
<span class="ltx_p" id="A3.T5.1.32.31.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T5.1.32.31.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T5.1.32.31.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.32.31.1.1.2.1">Thought 3:</span> Great, so Thomas Nabbes studied at Exeter College in Oxford. I should make sure that this the correct information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.33.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.33.32.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.33.32.1.1">
<span class="ltx_p" id="A3.T5.1.33.32.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.33.32.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T5.1.33.32.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Confirm the educational background of Thomas Nabbes'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.34.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.34.33.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.34.33.1.1">
<span class="ltx_p" id="A3.T5.1.34.33.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.34.33.1.1.1.1">Observation 3:</span> Thomas Nabbes was educated at Exeter College, Oxford in 1621. He left the university without taking a degree.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.35.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.35.34.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.35.34.1.1">
<span class="ltx_p" id="A3.T5.1.35.34.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T5.1.35.34.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T5.1.35.34.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.35.34.1.1.2.1">Thought 4:</span> So, he studied at Exeter College in Oxford, but didn’t finish his degree. That’s interesting. I think this is the information I need.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.36.35">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T5.1.36.35.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.36.35.1.1">
<span class="ltx_p" id="A3.T5.1.36.35.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.36.35.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T5.1.36.35.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Thomas Nabbes was educated at Exeter College, Oxford.'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.37.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T5.1.37.36.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.37.36.1.1">
<span class="ltx_p" id="A3.T5.1.37.36.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T5.1.37.36.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T5.1.37.36.1.1.1.2">Final Answer:</span> Exeter College, Oxford</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Search-01 and ReaRAG on a multi-hop question answering task.  Search-01 uses a Reason-in-Documents module that retrieves information based on the generated search query. However, if the search query is not well-formulated, the retrieved information might be insufficient to answer the multi-hop question, leading to failure.  In contrast, ReaRAG employs iterative reasoning and knowledge-guided retrieval, enabling it to overcome this limitation and arrive at the correct answer.
> <details>
> <summary>read the caption</summary>
> Table 5: We compare the generations of Search-o1 and ReaRAG. During the initial searches, the Reason-in-Documents module of Search-o1 returns “No helpful information found” because it attempts to answer the multi-hop question using information retrieved based on the search query rather than the original question. Hence, the retrieved content lacks the full answer, misleading Search-o1’s reasoning. Ultimately, it reaches its search limits and fails to provide the correct answer. In contrast, ReaRAG demonstrates logical reasoning and correctly answers the query.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T6.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1.1.1"># Case Study 2: What record label did the person who is part of The Bruce Lee Band start?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.1.1">
<span class="ltx_p" id="A3.T6.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.2.1.1.1.1.1">Ground truth:</span> Asian Man Records</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T6.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.3.2.1.1.1.1">Search-o1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.4.3.1.1">
<span class="ltx_p" id="A3.T6.1.4.3.1.1.1" style="width:411.9pt;">Alright, so I need to find out what record label the person who is part of The Bruce Lee Band <span class="ltx_text ltx_font_italic" id="A3.T6.1.4.3.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.5.4.1.1">
<span class="ltx_p" id="A3.T6.1.5.4.1.1.1" style="width:411.9pt;">So, I’ll do a search for "The Bruce Lee Band."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.6.5.1.1">
<span class="ltx_p" id="A3.T6.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.6.5.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>The Bruce Lee Band<span class="ltx_text ltx_font_typewriter" id="A3.T6.1.6.5.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.7.6.1.1">
<span class="ltx_p" id="A3.T6.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.7.6.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span><span class="ltx_text ltx_font_bold" id="A3.T6.1.7.6.1.1.1.2">No helpful information found.</span><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.7.6.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.8.7.1.1">
<span class="ltx_p" id="A3.T6.1.8.7.1.1.1" style="width:411.9pt;">Hmm, that’s strange. Maybe the band name is different or not well-known. Perhaps I should try searching for "Bruce Lee tribute band" or something like that.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.9.8.1.1">
<span class="ltx_p" id="A3.T6.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T6.1.9.8.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here. Search-o1 tries different searches, but Reason-in-Documents returns “No helpful information”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.10.9.1.1">
<span class="ltx_p" id="A3.T6.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T6.1.10.9.1.1.1.1" style="background-color:#D3D3D3;">Only search queries and search results are listed here for simplicity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.11.10.1.1">
<span class="ltx_p" id="A3.T6.1.11.10.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.11.10.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Bruce Lee tribute band<span class="ltx_text ltx_font_typewriter" id="A3.T6.1.11.10.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.12.11.1.1">
<span class="ltx_p" id="A3.T6.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.12.11.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span><span class="ltx_text ltx_font_bold" id="A3.T6.1.12.11.1.1.1.2">No helpful information found.</span><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.12.11.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.13.12.1.1">
<span class="ltx_p" id="A3.T6.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.13.12.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Bruce Lee band<span class="ltx_text ltx_font_typewriter" id="A3.T6.1.13.12.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.14.13.1.1">
<span class="ltx_p" id="A3.T6.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.14.13.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span><span class="ltx_text ltx_font_bold" id="A3.T6.1.14.13.1.1.1.2">No helpful information found.</span><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.14.13.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.15.14.1.1">
<span class="ltx_p" id="A3.T6.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T6.1.15.14.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.16.15.1.1">
<span class="ltx_p" id="A3.T6.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.16.15.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>The Bruce Lee Band members<span class="ltx_text ltx_font_typewriter" id="A3.T6.1.16.15.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.17.16.1.1">
<span class="ltx_p" id="A3.T6.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.17.16.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span><span class="ltx_text" id="A3.T6.1.17.16.1.1.1.2" style="color:#FF0000;">Less Than Records</span>, started by a member of Less Than Jake, who is part of The Bruce Lee Band.**Explanation**Based on the information from Web Page 1, The Bruce Lee Band features Less Than Jake as part of its backing band. Less Than Jake is known for starting their own record label, <span class="ltx_text" id="A3.T6.1.17.16.1.1.1.3" style="color:#FF0000;">Less Than Records.</span> <span class="ltx_text ltx_font_italic" id="A3.T6.1.17.16.1.1.1.4" style="background-color:#D3D3D3;">… Simplified here. Search-o1 fabricates the name "Less Than Records"</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.18.17.1.1">
<span class="ltx_p" id="A3.T6.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.18.17.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Less Than Jake record label<span class="ltx_text ltx_font_typewriter" id="A3.T6.1.18.17.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.19.18.1.1">
<span class="ltx_p" id="A3.T6.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.19.18.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.**Explanation**After reviewing the three web pages provided for the search query "Less Than Jake record label," none of them contained specific information about which member of Less Than Jake started <span class="ltx_text" id="A3.T6.1.19.18.1.1.1.2" style="color:#FF0000;">Less Than Records</span>. <span class="ltx_text ltx_font_italic" id="A3.T6.1.19.18.1.1.1.3" style="background-color:#D3D3D3;">… Simplified here.</span><span class="ltx_text ltx_font_typewriter" id="A3.T6.1.19.18.1.1.1.4" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.20.19.1.1">
<span class="ltx_p" id="A3.T6.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T6.1.20.19.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span><span class="ltx_text" id="A3.T6.1.20.19.1.1.1.2" style="color:#FF0000;">Less Than Records</span> was started by a member of Less Than Jake, who is also part of The Bruce Lee Band.Therefore, the record label started by the person who is part of The Bruce Lee Band is <span class="ltx_text" id="A3.T6.1.20.19.1.1.1.3" style="color:#FF0000;">Less Than Records</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.21.20.1.1">
<span class="ltx_p" id="A3.T6.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.21.20.1.1.1.1">Final Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.22.21.1.1">
<span class="ltx_p" id="A3.T6.1.22.21.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="A3.T6.1.22.21.1.1.1.1" style="border-color: #000000;">Less Than Records</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.23.22" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.23.22.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T6.1.23.22.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.23.22.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.24.23.1.1">
<span class="ltx_p" id="A3.T6.1.24.23.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.24.23.1.1.1.1">Thought 1:</span> I need to find out which record label the person who is part of The Bruce Lee Band started. First, I should figure out who is part of The Bruce Lee Band.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.25.24.1.1">
<span class="ltx_p" id="A3.T6.1.25.24.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.25.24.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T6.1.25.24.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who is part of The Bruce Lee Band?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.26.25.1.1">
<span class="ltx_p" id="A3.T6.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.26.25.1.1.1.1">Observation 1:</span> Mike Park and his backing band, which has included Less Than Jake and the Rx Bandits, are part of The Bruce Lee Band.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.27.26.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.27.26.1.1">
<span class="ltx_p" id="A3.T6.1.27.26.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T6.1.27.26.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T6.1.27.26.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.27.26.1.1.2.1">Thought 2:</span> So, Mike Park is involved with The Bruce Lee Band. I need to find out if he started a record label.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.28.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.28.27.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.28.27.1.1">
<span class="ltx_p" id="A3.T6.1.28.27.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.28.27.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T6.1.28.27.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Did Mike Park start a record label?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.29.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.29.28.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.29.28.1.1">
<span class="ltx_p" id="A3.T6.1.29.28.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.29.28.1.1.1.1">Observation 2:</span> Yes, Mike Park started a record label.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.30.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.30.29.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.30.29.1.1">
<span class="ltx_p" id="A3.T6.1.30.29.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T6.1.30.29.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T6.1.30.29.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.30.29.1.1.2.1">Thought 3:</span> Great, now I need to find out the name of the record label he started.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.31.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.31.30.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.31.30.1.1">
<span class="ltx_p" id="A3.T6.1.31.30.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.31.30.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T6.1.31.30.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'What record label did Mike Park start?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.32.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.32.31.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.32.31.1.1">
<span class="ltx_p" id="A3.T6.1.32.31.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.32.31.1.1.1.1">Observation 3:</span> Mike Park started the record label Asian Man Records.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.33.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.33.32.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.33.32.1.1">
<span class="ltx_p" id="A3.T6.1.33.32.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T6.1.33.32.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T6.1.33.32.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.33.32.1.1.2.1">Thought 4:</span> So, Asian Man Records is the label Mike Park started. But I should make sure that this is correct and see if there’s any other relevant information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.34.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.34.33.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.34.33.1.1">
<span class="ltx_p" id="A3.T6.1.34.33.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.34.33.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T6.1.34.33.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Confirm if Asian Man Records was started by Mike Park.'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.35.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.35.34.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.35.34.1.1">
<span class="ltx_p" id="A3.T6.1.35.34.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.35.34.1.1.1.1">Observation 4:</span> Yes, Asian Man Records was started by Mike Park.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.36.35">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.36.35.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.36.35.1.1">
<span class="ltx_p" id="A3.T6.1.36.35.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T6.1.36.35.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T6.1.36.35.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.36.35.1.1.2.1">Thought 5:</span> Alright, I have confirmed that Mike Park started Asian Man Records. Since he is part of The Bruce Lee Band, this should be the answer.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.37.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T6.1.37.36.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.37.36.1.1">
<span class="ltx_p" id="A3.T6.1.37.36.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.37.36.1.1.1.1">Action 5:</span> <span class="ltx_text" id="A3.T6.1.37.36.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Asian Man Records'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.38.37">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T6.1.38.37.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.38.37.1.1">
<span class="ltx_p" id="A3.T6.1.38.37.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T6.1.38.37.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T6.1.38.37.1.1.1.2">Final Answer:</span> Asian Man Records</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Search-01 and ReaRAG on a multi-hop question answering task.  Search-01 uses a Reason-in-Documents module that attempts to generate answers from retrieved documents. However, in this example, the module hallucinates a non-existent record label ('Less Than Records'), which leads to an inaccurate answer. ReaRAG, in contrast, uses knowledge-guided reasoning to accurately answer the question by iteratively refining its search queries and integrating external knowledge.
> <details>
> <summary>read the caption</summary>
> Table 6: We compare the generations of Search-o1 and ReaRAG. Search-o1’s Reason-in-Documents module fabricates non-existent information ('Less Than Records', highlighted in red), compromising factual accuracy and leading to a hallucinated response. In contrast, ReaRAG successfully conduct knowledge-guided reasoning to generate a factual answer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T7.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1.1.1"># Case Study 3: In what county is William W. Blair’s birthplace located?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.1.1.1">
<span class="ltx_p" id="A3.T7.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.2.1.1.1.1.1">Ground truth:</span> Orleans County</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T7.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.3.2.1.1.1.1">Search-o1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.3.1.1">
<span class="ltx_p" id="A3.T7.1.4.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.1.4.3.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span>
Maybe I can search for "Holley, New York county" to find out which county it’s part of.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.4.1.1">
<span class="ltx_p" id="A3.T7.1.5.4.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.5.4.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Holley, New York county<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.5.4.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.6.5.1.1">
<span class="ltx_p" id="A3.T7.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.6.5.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Holley is located in <span class="ltx_text" id="A3.T7.1.6.5.1.1.1.2" style="color:#8FFF42;">Orleans County, New York.<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.6.5.1.1.1.2.1" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.7.6.1.1">
<span class="ltx_p" id="A3.T7.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.1.7.6.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span>
But wait, let me <span class="ltx_text" id="A3.T7.1.7.6.1.1.1.2" style="color:#FF0000;">double-check</span> to make sure that Holley is indeed in Orleans County. Sometimes place names can be ambiguous, and there might be multiple Holleys in different counties or states.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.8.7.1.1">
<span class="ltx_p" id="A3.T7.1.8.7.1.1.1" style="width:411.9pt;">Let me search for "Holley, New York county" again to confirm.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.9.8.1.1">
<span class="ltx_p" id="A3.T7.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.9.8.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Holley, New York county<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.9.8.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.10.9.1.1">
<span class="ltx_p" id="A3.T7.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.10.9.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>You have searched this query. Please refer to previous results.<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.10.9.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.11.10.1.1">
<span class="ltx_p" id="A3.T7.1.11.10.1.1.1" style="width:411.9pt;">Alright, since the previous search already indicated that Holley is in Orleans County, New York, and no other information contradicts that, I can <span class="ltx_text" id="A3.T7.1.11.10.1.1.1.1" style="color:#FF0000;">confidently say that William W. Blair was born in Orleans County.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.12.11.1.1">
<span class="ltx_p" id="A3.T7.1.12.11.1.1.1" style="width:411.9pt;">However, to be thorough, perhaps I should <span class="ltx_text" id="A3.T7.1.12.11.1.1.1.1" style="color:#FF0000;">verify if there are any other places</span> named Holley in New York or elsewhere that might be confused with the one where William W. Blair was born.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.13.12.1.1">
<span class="ltx_p" id="A3.T7.1.13.12.1.1.1" style="width:411.9pt;">Let me search for "Holley, New York" to see if there’s only one such place.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.14.13.1.1">
<span class="ltx_p" id="A3.T7.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.14.13.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Holley, New York<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.14.13.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.15.14.1.1">
<span class="ltx_p" id="A3.T7.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.15.14.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Holley is a village <span class="ltx_text ltx_font_italic" id="A3.T7.1.15.14.1.1.1.2" style="background-color:#D3D3D3;">… Simplified here.</span> <span class="ltx_text ltx_font_typewriter" id="A3.T7.1.15.14.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.16.15.1.1">
<span class="ltx_p" id="A3.T7.1.16.15.1.1.1" style="width:411.9pt;">But just to cover all bases, <span class="ltx_text" id="A3.T7.1.16.15.1.1.1.1" style="color:#FF0000;">maybe there’s another Holley in New York state</span> that I should consider. Let me search for "New York state places named Holley" to see if there are multiple locations with that name.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.17.16.1.1">
<span class="ltx_p" id="A3.T7.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.17.16.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>New York state places named Holley<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.17.16.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.18.17.1.1">
<span class="ltx_p" id="A3.T7.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.18.17.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Holley is a village <span class="ltx_text ltx_font_italic" id="A3.T7.1.18.17.1.1.1.2" style="background-color:#D3D3D3;">… Simplified here.</span><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.18.17.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.19.18.1.1">
<span class="ltx_p" id="A3.T7.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.1.19.18.1.1.1.1" style="background-color:#D3D3D3;">Search-o1 continues to execute excessive and unnecessary searches. Only search queries are listed here for simplicity.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.20.19.1.1">
<span class="ltx_p" id="A3.T7.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.20.19.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>William W. Blair historian<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.20.19.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.21.20.1.1">
<span class="ltx_p" id="A3.T7.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.21.20.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>William W. Blair Latter Day Saints<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.21.20.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.22.21.1.1">
<span class="ltx_p" id="A3.T7.1.22.21.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.22.21.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>William W. Blair birth certificate Orleans County<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.22.21.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.23.22.1.1">
<span class="ltx_p" id="A3.T7.1.23.22.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.1.23.22.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>William W. Blair biography<span class="ltx_text ltx_font_typewriter" id="A3.T7.1.23.22.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.24.23.1.1">
<span class="ltx_p" id="A3.T7.1.24.23.1.1.1" style="width:411.9pt;">Perfect, so this biography confirms that he was born in Holley, Orleans County, New York. This aligns with all the previous information I’ve found.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.25.24.1.1">
<span class="ltx_p" id="A3.T7.1.25.24.1.1.1" style="width:411.9pt;">Therefore, I can confidently say that William W. Blair’s birthplace is located in Orleans County.
<span class="ltx_text ltx_font_italic" id="A3.T7.1.25.24.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.26.25.1.1">
<span class="ltx_p" id="A3.T7.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.26.25.1.1.1.1">Final Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.27.26.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.27.26.1.1">
<span class="ltx_p" id="A3.T7.1.27.26.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="A3.T7.1.27.26.1.1.1.1" style="border-color: #000000;">Orleans County</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.28.27" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.28.27.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.28.27.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T7.1.28.27.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.28.27.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.29.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T7.1.29.28.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.29.28.1.1">
<span class="ltx_p" id="A3.T7.1.29.28.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.29.28.1.1.1.1">Thought 1:</span> I need to find out in which county William W. Blair was born. First, I should figure out where he was born, meaning his birthplace city or town.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.30.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.30.29.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.30.29.1.1">
<span class="ltx_p" id="A3.T7.1.30.29.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.30.29.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T7.1.30.29.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Where was William W. Blair born? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.31.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.31.30.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.31.30.1.1">
<span class="ltx_p" id="A3.T7.1.31.30.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.31.30.1.1.1.1">Observation 1:</span> William W. Blair was born in Holley, New York.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.32.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.32.31.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.32.31.1.1">
<span class="ltx_p" id="A3.T7.1.32.31.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T7.1.32.31.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T7.1.32.31.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.32.31.1.1.2.1">Thought 2:</span> Okay, so now I know that his birthplace is Holley, New York. Next, I need to determine which county Holley is located in.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.33.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.33.32.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.33.32.1.1">
<span class="ltx_p" id="A3.T7.1.33.32.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.33.32.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T7.1.33.32.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Which county is Holley, New York in?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.34.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.34.33.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.34.33.1.1">
<span class="ltx_p" id="A3.T7.1.34.33.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.34.33.1.1.1.1">Observation 2:</span> Holley, New York is in Orleans County.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.35.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.35.34.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.35.34.1.1">
<span class="ltx_p" id="A3.T7.1.35.34.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T7.1.35.34.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T7.1.35.34.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.35.34.1.1.2.1">Thought 3:</span> So, if Holley is in Orleans County, then that should be the answer. But I should double-check if there’s any ambiguity or if there are multiple places named Holley in New York.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.36.35">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.36.35.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.36.35.1.1">
<span class="ltx_p" id="A3.T7.1.36.35.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.36.35.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T7.1.36.35.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Are there multiple Holleys in New York State?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.37.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.37.36.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.37.36.1.1">
<span class="ltx_p" id="A3.T7.1.37.36.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.37.36.1.1.1.1">Observation 3:</span> Based on the provided context, there is only one Holley mentioned, which is in Orleans County, New York. The context does not provide information about other Holleys in New York State. Therefore, based on the given context, I cannot confirm whether there are multiple Holleys in New York State.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.38.37">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.38.37.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.38.37.1.1">
<span class="ltx_p" id="A3.T7.1.38.37.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T7.1.38.37.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T7.1.38.37.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.38.37.1.1.2.1">Thought 4:</span> Given that, and considering the information I have, I think it’s safe to conclude that William W. Blair’s birthplace, Holley, is in Orleans County, New York.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.39.38">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T7.1.39.38.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.39.38.1.1">
<span class="ltx_p" id="A3.T7.1.39.38.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.39.38.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T7.1.39.38.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Orleans County'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.40.39">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T7.1.40.39.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.40.39.1.1">
<span class="ltx_p" id="A3.T7.1.40.39.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T7.1.40.39.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T7.1.40.39.1.1.1.2">Final Answer:</span> Orleans County</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Search-01 and ReaRAG on a multi-hop question answering task.  Search-01 exhibits overthinking, making many more queries than necessary, even after obtaining the correct answer in earlier steps.  The table highlights these redundant queries in red.  Conversely, ReaRAG efficiently finds the correct answer with far fewer queries. The green highlights show where Search-01 already had the information needed to answer the question, but continued to search needlessly. The comparison demonstrates ReaRAG's superior efficiency and reduced computational cost.
> <details>
> <summary>read the caption</summary>
> Table 7: We compare the generations of Search-o1 and ReaRAG. Words highlighted in red indicate instances where Search-o1 overthinks and performs excessive verification. Words highlighted in green show that the correct answer was already found in earlier steps. ReaRAG finds the correct answer in just two searches, whereas Search-o1 requires eleven, generating overly redundant queries that introduce unnecessary computations to multi-hop QA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T8.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1.1.1"># Case Study 4: Where is Ulrich Walter’s employer headquartered?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.1.1.1">
<span class="ltx_p" id="A3.T8.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.1.1.1.1.1">Ground truth:</span> Cologne</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T8.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.1.1.1">Search-o1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.3.1.1">
<span class="ltx_p" id="A3.T8.1.4.3.1.1.1" style="width:411.9pt;">Alright, I have this question: "Where is Ulrich Walter’s employer <span class="ltx_text ltx_font_italic" id="A3.T8.1.4.3.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.5.4.1.1">
<span class="ltx_p" id="A3.T8.1.5.4.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.5.4.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Who is Ulrich Walter?<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.5.4.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.6.5.1.1">
<span class="ltx_p" id="A3.T8.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.6.5.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Ulrich Walter is a German astronaut who was selected in 1987 to join the German astronaut team and trained at the German Aerospace Center (DLR). His employer, the German Aerospace Center, is headquartered in Cologne, Germany.<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.6.5.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.7.6.1.1">
<span class="ltx_p" id="A3.T8.1.7.6.1.1.1" style="width:411.9pt;">Hmm, according to this search result, Ulrich Walter is a German astronaut who was selected in 1987 and trained at the German Aerospace Center (DLR). It also says that his employer, the DLR, is headquartered in Cologne, Germany.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.8.7.1.1">
<span class="ltx_p" id="A3.T8.1.8.7.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.8.7.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span>
<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.8.7.1.1.1.2" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Headquarters of German Aerospace Center<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.8.7.1.1.1.3" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.9.8.1.1">
<span class="ltx_p" id="A3.T8.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.9.8.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>The German Aerospace Center (DLR) is headquartered in <span class="ltx_text" id="A3.T8.1.9.8.1.1.1.2" style="color:#8FFF42;">Cologne, Germany</span>.<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.9.8.1.1.1.3" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.10.9.1.1">
<span class="ltx_p" id="A3.T8.1.10.9.1.1.1" style="width:411.9pt;">So, according to this, the DLR is headquartered in Cologne, Germany.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.11.10.1.1">
<span class="ltx_p" id="A3.T8.1.11.10.1.1.1" style="width:411.9pt;">But just to be thorough, <span class="ltx_text" id="A3.T8.1.11.10.1.1.1.1" style="color:#FF0000;">let me see if there is any other information</span> about Ulrich Walter’s employer.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.12.11.1.1">
<span class="ltx_p" id="A3.T8.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.12.11.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Ulrich Walter workplace<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.12.11.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.13.12.1.1">
<span class="ltx_p" id="A3.T8.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.13.12.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Ulrich Walter’s employer is the German Aerospace Center (DLR), headquartered in Cologne, Germany.<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.13.12.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.14.13.1.1">
<span class="ltx_p" id="A3.T8.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.14.13.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.15.14.1.1">
<span class="ltx_p" id="A3.T8.1.15.14.1.1.1" style="width:411.9pt;">I should probably <span class="ltx_text" id="A3.T8.1.15.14.1.1.1.1" style="color:#FF0000;">confirm if Ulrich Walter is still active</span> or if he has retired. <span class="ltx_text ltx_font_italic" id="A3.T8.1.15.14.1.1.1.2" style="background-color:#D3D3D3;">… Simplified here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.16.15.1.1">
<span class="ltx_p" id="A3.T8.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.16.15.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Ulrich Walter retirement<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.16.15.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.17.16.1.1">
<span class="ltx_p" id="A3.T8.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.17.16.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>No helpful information found.<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.17.16.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;<span class="ltx_text ltx_font_serif ltx_font_italic" id="A3.T8.1.17.16.1.1.1.2.1" style="color:#000000;background-color:#D3D3D3;">… Simplified here.</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.18.17.1.1">
<span class="ltx_p" id="A3.T8.1.18.17.1.1.1" style="width:411.9pt;">Alternatively, <span class="ltx_text" id="A3.T8.1.18.17.1.1.1.1" style="color:#FF0000;">perhaps he has taken up an academic position at a university.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.19.18.1.1">
<span class="ltx_p" id="A3.T8.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.19.18.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Ulrich Walter university affiliation<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.19.18.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.20.19.1.1">
<span class="ltx_p" id="A3.T8.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.20.19.1.1.1.1" style="color:#0000FF;">&lt;|begin_search_result|&gt;</span>Ulrich Walter’s employer, the German Aerospace Center (DLR), is headquartered in Cologne, Germany.<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.20.19.1.1.1.2" style="color:#0000FF;">&lt;|end_search_result|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.21.20.1.1">
<span class="ltx_p" id="A3.T8.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.21.20.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span>Maybe I should <span class="ltx_text" id="A3.T8.1.21.20.1.1.1.2" style="color:#FF0000;">look for his professional profile or LinkedIn page </span>to see his current employer.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.22.21.1.1">
<span class="ltx_p" id="A3.T8.1.22.21.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T8.1.22.21.1.1.1.1" style="color:#008080;">&lt;|begin_search_query|&gt;</span>Ulrich Walter LinkedIn<span class="ltx_text ltx_font_typewriter" id="A3.T8.1.22.21.1.1.1.2" style="color:#008080;">&lt;|end_search_query|&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.23.22.1.1">
<span class="ltx_p" id="A3.T8.1.23.22.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.23.22.1.1.1.1" style="background-color:#D3D3D3;">… Simplified here.</span> the answer to the question "Where is Ulrich Walter’s employer headquartered?" is Cologne, Germany.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.24.23.1.1">
<span class="ltx_p" id="A3.T8.1.24.23.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.24.23.1.1.1.1">Final Answer</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.25.24.1.1">
<span class="ltx_p" id="A3.T8.1.25.24.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="A3.T8.1.25.24.1.1.1.1" style="border-color: #000000;">Cologne, Germany</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.26.25" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.26.25.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T8.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.26.25.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T8.1.27.26.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.27.26.1.1">
<span class="ltx_p" id="A3.T8.1.27.26.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.27.26.1.1.1.1">Thought 1:</span> I need to find out where Ulrich Walter’s employer is headquartered. First, I should figure out who Ulrich Walter is and where he works.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.28.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.28.27.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.28.27.1.1">
<span class="ltx_p" id="A3.T8.1.28.27.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.28.27.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T8.1.28.27.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who is Ulrich Walter and where does he work?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.29.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.29.28.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.29.28.1.1">
<span class="ltx_p" id="A3.T8.1.29.28.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.29.28.1.1.1.1">Observation 1:</span> Ulrich Walter is a German astronaut who worked at the German Aerospace Center.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.30.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.30.29.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.30.29.1.1">
<span class="ltx_p" id="A3.T8.1.30.29.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T8.1.30.29.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T8.1.30.29.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T8.1.30.29.1.1.2.1">Thought 2:</span> So, Ulrich Walter works at the German Aerospace Center. Now, I need to find out where this center is headquartered.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.31.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.31.30.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.31.30.1.1">
<span class="ltx_p" id="A3.T8.1.31.30.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.31.30.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T8.1.31.30.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Where is the German Aerospace Center headquartered?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.32.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.32.31.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.32.31.1.1">
<span class="ltx_p" id="A3.T8.1.32.31.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.32.31.1.1.1.1">Observation 2:</span> The German Aerospace Center (DLR) is headquartered in Cologne, Germany.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.33.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.33.32.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.33.32.1.1">
<span class="ltx_p" id="A3.T8.1.33.32.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T8.1.33.32.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T8.1.33.32.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T8.1.33.32.1.1.2.1">Thought 3:</span> Alright, so if DLR is headquartered in Cologne, Germany, then that should be the answer. But maybe I should double-check if Ulrich Walter works there still or if there’s any update.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.34.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.34.33.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.34.33.1.1">
<span class="ltx_p" id="A3.T8.1.34.33.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.34.33.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T8.1.34.33.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Is Ulrich Walter still working at DLR?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.35.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.35.34.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.35.34.1.1">
<span class="ltx_p" id="A3.T8.1.35.34.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.35.34.1.1.1.1">Observation 3:</span> I cannot provide real-time information or updates on whether Ulrich Walter is still working at the German Aerospace Center (DLR) since my training data only goes up until 2023. To get the most current information on Ulrich Walter’s employment status, you would need to check the latest sources or contact the German Aerospace Center directly.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.36.35">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.36.35.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.36.35.1.1">
<span class="ltx_p" id="A3.T8.1.36.35.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T8.1.36.35.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T8.1.36.35.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T8.1.36.35.1.1.2.1">Thought 4:</span> Given that, I should probably proceed with the information I have, which is that Ulrich Walter works at DLR, which is headquartered in Cologne, Germany.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.37.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T8.1.37.36.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.37.36.1.1">
<span class="ltx_p" id="A3.T8.1.37.36.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.37.36.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T8.1.37.36.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Cologne, Germany'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.38.37">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T8.1.38.37.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.38.37.1.1">
<span class="ltx_p" id="A3.T8.1.38.37.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T8.1.38.37.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T8.1.38.37.1.1.1.2">Final Answer:</span> Cologne, Germany</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a detailed comparison of the reasoning processes employed by Search-01 and ReaRAG to answer a multi-hop question.  The table highlights Search-01's tendency towards overthinking, as evidenced by its eight search queries, many of which are redundant because the correct answer was already discovered in previous steps (highlighted in green). In contrast, ReaRAG demonstrates efficiency and conciseness by reaching the correct answer in only three searches. The excessive search queries of Search-01 are highlighted in red, underscoring the problem of unnecessary computation in multi-hop question answering.  The comparison illustrates ReaRAG's superior ability to efficiently integrate external knowledge into the reasoning process.
> <details>
> <summary>read the caption</summary>
> Table 8: We compare the generations of Search-o1 and ReaRAG. Words highlighted in red indicate instances where Search-o1 overthinks and performs excessive verification. Words highlighted in green show that the correct answer was already found in earlier steps. As shown above, ReaRAG arrives at the correct answer in just three searches, while Search-o1 requires eight, producing excessive queries that are redundant in multi-hop QA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T9.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T9.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T9.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.1.1.1.1.1"># Case Study 5: Who is the grandmother of Philippe, Duke of Orléans?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T9.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T9.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.2.1.1.1">
<span class="ltx_p" id="A3.T9.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.2.1.1.1.1.1">Ground truth:</span> Marie de’ Medici</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T9.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T9.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.3.2.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T9.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.4.3.1.1">
<span class="ltx_p" id="A3.T9.1.4.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.4.3.1.1.1.1">Thought 1:</span> So I need to find out who the grandmother of Philippe, Duke of Orléans, is. I don’t know much about French royalty, so I’ll need to look this up.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.5.4.1.1">
<span class="ltx_p" id="A3.T9.1.5.4.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.5.4.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T9.1.5.4.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who is the grandmother of Philippe, Duke of Orléans?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.6.5.1.1">
<span class="ltx_p" id="A3.T9.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.6.5.1.1.1.1">Observation 1:</span> The grandmother of Philippe, Duke of Orléans (Philippe I) is Anne of Austria. <span class="ltx_text ltx_font_italic" id="A3.T9.1.6.5.1.1.1.2" style="background-color:#D3D3D3;">Wrong answer!</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.7.6.1.1">
<span class="ltx_p" id="A3.T9.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.7.6.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T9.1.7.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.7.6.1.1.2.1">Thought 2:</span> Wait, let me make sure about this. I have found that his grandmother is Anne of Austria, but I should verify this information from multiple sources to ensure accuracy.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.8.7.1.1">
<span class="ltx_p" id="A3.T9.1.8.7.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.8.7.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T9.1.8.7.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Philippe, Duke of Orléans family tree'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.9.8.1.1">
<span class="ltx_p" id="A3.T9.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.9.8.1.1.1.1">Observation 2:</span> Philippe, Duke of Orléans, was the younger son of Louis XIII of France and Anne of Austria. His older brother was Louis XIV, famously known as the "Sun King." Philippe became Duke of Orléans upon the death of his uncle Gaston in 1660. In 1661, he also received the dukedoms of Valois and Chartres.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.10.9.1.1">
<span class="ltx_p" id="A3.T9.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.10.9.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T9.1.10.9.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.10.9.1.1.2.1">Thought 3:</span> So, according to this, his grandmother is Anne of Austria. But let me see if there’s any confusion here. Philippe’s parents were Louis XIII and Anne of Austria, <span class="ltx_text ltx_font_bold" id="A3.T9.1.10.9.1.1.2.2">so she would be his mother, not grandmother</span>. Wait, that doesn’t make sense. Maybe I need to clarify the generational relationships. <span class="ltx_text ltx_font_italic" id="A3.T9.1.10.9.1.1.2.3" style="background-color:#D3D3D3;">ReaRAG notices the mistakes.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.11.10.1.1">
<span class="ltx_p" id="A3.T9.1.11.10.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.11.10.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T9.1.11.10.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Genealogy of the House of Orléans '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.12.11.1.1">
<span class="ltx_p" id="A3.T9.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.12.11.1.1.1.1">Observation 3:</span> The House of Orléans is a cadet branch of the House of Bourbon, which is one of the most prominent royal houses in European history. The Orléans branch originated with Philippe I, Duke of Orléans, who was the younger son of Louis XIII of France and Anne of Austria. Philippe I was the brother of Louis XIV, the "Sun King." The genealogy of the House of Orléans can be traced through various descendants of Philippe I, including: 1. Philippe II, Duke of Orléans, who was the father of Louise Élisabeth d’Orléans mentioned in Document 351. Philippe II was also known as Philippe I’s grandson, as he was the son of Philippe I’s son, Louis XIV. 2. Louis Philippe, Duke of Orléans, who became King of the French after the July Revolution of 1830. He was the father of François d’Orléans, Prince of Joinville, mentioned in Document 393. These are just a few examples of the descendants of Philippe I, Duke of Orléans, and the House of Orléans continues to have living members today.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.13.12.1.1">
<span class="ltx_p" id="A3.T9.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.13.12.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T9.1.13.12.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.13.12.1.1.2.1">Thought 4:</span> Hmm, I think I’m getting confused here. Philippe I, Duke of Orléans, was the son of Louis XIII and Anne of Austria. So, Anne of Austria would be his mother, not his grandmother. His grandmother would be the mother of his parents, which would be Louis XIII’s mother. Let me check who that was. <span class="ltx_text ltx_font_italic" id="A3.T9.1.13.12.1.1.2.2" style="background-color:#D3D3D3;">ReaRAG realigns its reasoning direction.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.14.13.1.1">
<span class="ltx_p" id="A3.T9.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.14.13.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T9.1.14.13.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who was the mother of Louis XIII of France? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.15.14.1.1">
<span class="ltx_p" id="A3.T9.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.15.14.1.1.1.1">Observation 4:</span> The mother of Louis XIII of France was Marie de’ Medici.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.16.15.1.1">
<span class="ltx_p" id="A3.T9.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.16.15.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T9.1.16.15.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.16.15.1.1.2.1">Thought 5:</span> So, if Marie de’ Medici was the mother of Louis XIII, and Anne of Austria was his wife and the mother of Philippe I, then Anne of Austria would be Philippe I’s mother, not grandmother. So, his grandmother would be Marie de’ Medici. That makes more sense. But to be thorough, I should confirm the relationships again. Louis XIII married Anne of Austria, and they had children, including Philippe I and Louis XIV. So, Anne of Austria is Philippe I’s mother, and Marie de’ Medici is his grandmother. I think that’s correct, but I’ll double-check with another search.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.17.16.1.1">
<span class="ltx_p" id="A3.T9.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.17.16.1.1.1.1">Action 5:</span> <span class="ltx_text" id="A3.T9.1.17.16.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Philippe, Duke of Orléans family tree '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.18.17.1.1">
<span class="ltx_p" id="A3.T9.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.18.17.1.1.1.1">Observation 5:</span> Philippe, Duke of Orléans (1640-1701) was the younger son of Louis XIII of France and Anne of Austria. His older brother was Louis XIV, the famous "Sun King." Philippe was styled Duke of Anjou from birth and became Duke of Orléans upon the death of his uncle Gaston in 1660. He also received the dukedoms of Valois and Chartres in 1661. Philippe had several children, including Louise Élisabeth d’Orléans, who was one of his seven daughters. Louise Élisabeth was known as Élisabeth and was a "princesse du sang" as a member of the reigning House of Bourbon.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.19.18.1.1">
<span class="ltx_p" id="A3.T9.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.19.18.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T9.1.19.18.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.19.18.1.1.2.1">Thought 6:</span> Okay, so this confirms that Anne of Austria was Philippe I’s mother. Therefore, his grandmother would be Marie de’ Medici, who was Louis XIII’s mother. I think that’s the correct answer. But just to be absolutely sure, let’s look up the genealogy again. Louis XIII was the son of Henry IV and Marie de’ Medici, so Marie de’ Medici would be his mother, and Anne of Austria would be his wife and Philippe I’s mother. I think that’s consistent across all the information I’ve found. So, the grandmother of Philippe, Duke of Orléans, is Marie de’ Medici. I’ll go ahead and provide that as the answer.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T9.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.20.19.1.1">
<span class="ltx_p" id="A3.T9.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.20.19.1.1.1.1">Action 6:</span> <span class="ltx_text" id="A3.T9.1.20.19.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Marie de’ Medici'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T9.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T9.1.21.20.1.1">
<span class="ltx_p" id="A3.T9.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T9.1.21.20.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T9.1.21.20.1.1.1.2">Final Answer:</span> Marie de’ Medici</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 ReaRAG initially makes a mistake, incorrectly identifying Anne of Austria as Philippe's grandmother.  However, it quickly detects this error, reviews its previous reasoning steps, and corrects its approach.  Through iterative refinement of its reasoning process, ReaRAG ultimately reaches the correct answer, showcasing its capacity for adaptive and self-correcting reasoning.
> <details>
> <summary>read the caption</summary>
> Table 9: In the first reasoning step, ReaRAG makes an incorrect deduction, mistakenly identifying Anne of Austria as Philippe’s grandmother instead of his mother. However, it quickly recognizes the error, then verifies its previous reasoning steps, and recalibrates its logic. By refining its approach, ReaRAG ultimately arrives at the correct answer, demonstrating its adaptive reasoning ability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T10.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T10.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T10.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.1.1.1.1.1.1"># Case Study 6: who is the younger brother of The episode guest stars of The Hard Easy</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T10.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T10.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.2.1.1.1">
<span class="ltx_p" id="A3.T10.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.2.1.1.1.1.1">Ground truth:</span> Bill Murray</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T10.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T10.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.3.2.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T10.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.4.3.1.1">
<span class="ltx_p" id="A3.T10.1.4.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.4.3.1.1.1.1">Thought 1:</span> I need to find out who the younger brother is of the episode guest stars of "The Hard Easy." First, I should figure out what "The Hard Easy" is. It sounds like a TV show or a movie.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.5.4.1.1">
<span class="ltx_p" id="A3.T10.1.5.4.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.5.4.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T10.1.5.4.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'What is The Hard Easy?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.6.5.1.1">
<span class="ltx_p" id="A3.T10.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.6.5.1.1.1.1">Observation 1:</span> The Hard Easy is a 2006 American action crime drama film directed by Ari Ryan and written by Jon Lindstrom and Tom Schanley. It stars Henry Thomas, Vera Farmiga, David Boreanaz, Bruce Dern, Peter Weller, Gary Busey, and Nick Lachey. The film was released straight-to-DVD in the United States on May 22, 2007.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.7.6.1.1">
<span class="ltx_p" id="A3.T10.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.7.6.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.7.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.7.6.1.1.2.1">Thought 2:</span> So, "The Hard Easy" is a 2006 film with several guest stars. I need to identify the guest stars and then find out who the younger brother of one of them is. But the question seems a bit unclear. Maybe it’s asking for the younger brother of one of the guest stars in a specific episode, but since it’s a film, not a TV series, perhaps there are multiple episodes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.8.7.1.1">
<span class="ltx_p" id="A3.T10.1.8.7.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.8.7.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T10.1.8.7.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Are there multiple episodes of The Hard Easy?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.9.8.1.1">
<span class="ltx_p" id="A3.T10.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.9.8.1.1.1.1">Observation 2:</span> No, there is only one episode of "The Hard Easy" as part of the "Adventure Time" series.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.10.9.1.1">
<span class="ltx_p" id="A3.T10.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.10.9.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.10.9.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.10.9.1.1.2.1">Thought 3:</span> Wait, now I’m getting confused. Earlier, I thought "The Hard Easy" was a 2006 film, but now it’s saying it’s an episode of "Adventure Time." Maybe there’s some confusion here. I need to clarify what "The Hard Easy" refers to.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.11.10.1.1">
<span class="ltx_p" id="A3.T10.1.11.10.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T10.1.11.10.1.1.1.1" style="background-color:#D3D3D3;">ReaRAG actively performs searches to resolve the confusion.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.12.11.1.1">
<span class="ltx_p" id="A3.T10.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.12.11.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T10.1.12.11.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Is The Hard Easy a film or an episode? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.13.12.1.1">
<span class="ltx_p" id="A3.T10.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.13.12.1.1.1.1">Observation 3:</span> The Hard Easy is both a film and an episode. The film version was released straight-to-DVD in 2007, while the episode is part of the animated television series "Adventure Time" and aired on Cartoon Network in 2012.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.14.13.1.1">
<span class="ltx_p" id="A3.T10.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.14.13.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.14.13.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.14.13.1.1.2.1">Thought 4:</span> Okay, so there’s a 2006 film called "The Hard Easy" and an episode with the same name in the "Adventure Time" series. The question might be referring to the episode in "Adventure Time." I need to find out the guest stars of that episode and then find out who the younger brother of one of them is.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.15.14.1.1">
<span class="ltx_p" id="A3.T10.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.15.14.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T10.1.15.14.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who are the guest stars in the Adventure Time episode "The Hard Easy"? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.16.15.1.1">
<span class="ltx_p" id="A3.T10.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.16.15.1.1.1.1">Observation 4:</span> The guest stars in the Adventure Time episode "The Hard Easy" are Brian Doyle-Murray as Prince Huge and Jonathan Katz as the Mudscamp elder.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.17.16.1.1">
<span class="ltx_p" id="A3.T10.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.17.16.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.17.16.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.17.16.1.1.2.1">Thought 5:</span> So, the guest stars are Brian Doyle-Murray and Jonathan Katz. Now, I need to find out who the younger brother of one of them is. But I don’t know their family relationships off the top of my head. I’ll need to look that up.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.18.17.1.1">
<span class="ltx_p" id="A3.T10.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.18.17.1.1.1.1">Action 5:</span> <span class="ltx_text" id="A3.T10.1.18.17.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who is the younger brother of Brian Doyle-Murray? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.19.18.1.1">
<span class="ltx_p" id="A3.T10.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.19.18.1.1.1.1">Observation 5:</span> The younger brother of Brian Doyle-Murray is Bill Murray.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.20.19.1.1">
<span class="ltx_p" id="A3.T10.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.20.19.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.20.19.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.20.19.1.1.2.1">Thought 6:</span> Wait, that can’t be right. Bill Murray is a famous actor, but I don’t think he’s the younger brother of Brian Doyle-Murray. Maybe I need to check their relationship again.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.21.20.1.1">
<span class="ltx_p" id="A3.T10.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T10.1.21.20.1.1.1.1" style="background-color:#D3D3D3;">ReaRAG encounters conflicts with its parametric knowledge.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.22.21.1.1">
<span class="ltx_p" id="A3.T10.1.22.21.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.22.21.1.1.1.1">Action 6:</span> <span class="ltx_text" id="A3.T10.1.22.21.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Are Bill Murray and Brian Doyle-Murray brothers? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.23.22.1.1">
<span class="ltx_p" id="A3.T10.1.23.22.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.23.22.1.1.1.1">Observation 6:</span> Yes, Bill Murray and Brian Doyle-Murray are brothers.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.24.23.1.1">
<span class="ltx_p" id="A3.T10.1.24.23.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.24.23.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T10.1.24.23.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T10.1.24.23.1.1.2.1">Thought 7:</span> So, if the question is asking for the younger brother of one of the guest stars in the Adventure Time episode "The Hard Easy," and the guest stars are Brian Doyle-Murray and Jonathan Katz, and the younger brother of Brian Doyle-Murray is Bill Murray, then the answer should be Bill Murray.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T10.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.25.24.1.1">
<span class="ltx_p" id="A3.T10.1.25.24.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T10.1.25.24.1.1.1.1">Action 7:</span> <span class="ltx_text" id="A3.T10.1.25.24.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Bill Murray'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T10.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T10.1.26.25.1.1">
<span class="ltx_p" id="A3.T10.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T10.1.26.25.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T10.1.26.25.1.1.1.2">Final Answer:</span> Bill Murray</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a case study demonstrating ReaRAG's ability to handle ambiguity and knowledge conflicts in multi-hop questions.  The example question is complex and initially leads to uncertainty. ReaRAG actively uses search to refine its understanding, identifying and resolving contradictions in information retrieved from different sources.  Despite facing conflicting data, ReaRAG's iterative reasoning process and error correction mechanisms enable it to arrive at the correct answer, highlighting the system's robustness and reflective capabilities.
> <details>
> <summary>read the caption</summary>
> Table 10: During the first three iterations, ReaRAG attempts to resolve ambiguity in the original multi-hop question, actively conducting searches to eliminate confusion. Additionally, at the sixth iteration, it encounters knowledge conflicts. Despite these challenges, ReaRAG successfully derives the correct answer, showcasing its robust reasoning abilities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T11.1.1.1" style="background-color:#D3D3D3;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T11.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.1.1.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T11.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.1.1.1.1.1"># Case Study 7: This singer of A Rather Blustery Day also voiced what hedgehog?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T11.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T11.1.2.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.2.1.1.1">
<span class="ltx_p" id="A3.T11.1.2.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.2.1.1.1.1.1">Ground truth:</span> Sonic</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.3.2" style="background-color:#D3D3D3;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T11.1.3.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.3.2.1.1" style="background-color:#D3D3D3;">
<span class="ltx_p" id="A3.T11.1.3.2.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.3.2.1.1.1.1">ReaRAG-9B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A3.T11.1.4.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.4.3.1.1">
<span class="ltx_p" id="A3.T11.1.4.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.4.3.1.1.1.1">Thought 1:</span> I need to find out which singer performed "A Rather Blustery Day" and then find out what hedgehog they voiced.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.5.4.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.5.4.1.1">
<span class="ltx_p" id="A3.T11.1.5.4.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.5.4.1.1.1.1">Action 1:</span> <span class="ltx_text" id="A3.T11.1.5.4.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who sang "A Rather Blustery Day"?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.6.5.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.6.5.1.1">
<span class="ltx_p" id="A3.T11.1.6.5.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.6.5.1.1.1.1">Observation 1:</span> Jim Cummings sang "A Rather Blustery Day".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.7.6.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.7.6.1.1">
<span class="ltx_p" id="A3.T11.1.7.6.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.7.6.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.7.6.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.7.6.1.1.2.1">Thought 2:</span> Now that I know Jim Cummings sang that song, I need to find out what hedgehog he voiced.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.8.7.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.8.7.1.1">
<span class="ltx_p" id="A3.T11.1.8.7.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.8.7.1.1.1.1">Action 2:</span> <span class="ltx_text" id="A3.T11.1.8.7.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'What hedgehog did Jim Cummings voice?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.9.8.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.9.8.1.1">
<span class="ltx_p" id="A3.T11.1.9.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.9.8.1.1.1.1">Observation 2:</span> Jim Cummings voiced Dr. Robotnik from "Sonic the Hedgehog".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.10.9.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.10.9.1.1">
<span class="ltx_p" id="A3.T11.1.10.9.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.10.9.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.10.9.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.10.9.1.1.2.1">Thought 3:</span> Wait, but Dr. Robotnik is a robot, not a hedgehog. Maybe I need to check again.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.11.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.11.10.1.1">
<span class="ltx_p" id="A3.T11.1.11.10.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.11.10.1.1.1.1">Action 3:</span> <span class="ltx_text" id="A3.T11.1.11.10.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'What characters did Jim Cummings voice in Sonic the Hedgehog? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.12.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.12.11.1.1">
<span class="ltx_p" id="A3.T11.1.12.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.12.11.1.1.1.1">Observation 3:</span> Jim Cummings voiced Dr. Robotnik in the "Sonic the Hedgehog" series.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.13.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.13.12.1.1">
<span class="ltx_p" id="A3.T11.1.13.12.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.13.12.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.13.12.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.13.12.1.1.2.1">Thought 4:</span> It seems like there might be confusion here. Dr. Robotnik is a robot, but the question mentions a hedgehog. Maybe the hedgehog is a different character.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.14.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.14.13.1.1">
<span class="ltx_p" id="A3.T11.1.14.13.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T11.1.14.13.1.1.1.1" style="background-color:#D3D3D3;">The original question is confusing, but ReaRAG manages to resolve it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.15.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.15.14.1.1">
<span class="ltx_p" id="A3.T11.1.15.14.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.15.14.1.1.1.1">Action 4:</span> <span class="ltx_text" id="A3.T11.1.15.14.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'List of characters voiced by Jim Cummings in Sonic the Hedgehog. '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.16.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.16.15.1.1">
<span class="ltx_p" id="A3.T11.1.16.15.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.16.15.1.1.1.1">Observation 4:</span> Jim Cummings is known for voicing Dr. Robotnik in the "Sonic the Hedgehog" series.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.17.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.17.16.1.1">
<span class="ltx_p" id="A3.T11.1.17.16.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.17.16.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.17.16.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.17.16.1.1.2.1">Thought 5:</span> Maybe I need to look for other hedgehog characters that Jim Cummings has voiced.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.18.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.18.17.1.1">
<span class="ltx_p" id="A3.T11.1.18.17.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.18.17.1.1.1.1">Action 5:</span> <span class="ltx_text" id="A3.T11.1.18.17.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Hedgehog characters voiced by Jim Cummings. '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.19.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.19.18.1.1">
<span class="ltx_p" id="A3.T11.1.19.18.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.19.18.1.1.1.1">Observation 5:</span> Jim Cummings is known for voicing Dr. Robotnik from "Sonic the Hedgehog".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.20.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.20.19.1.1">
<span class="ltx_p" id="A3.T11.1.20.19.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.20.19.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.20.19.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.20.19.1.1.2.1">Thought 6:</span> Perhaps the hedgehog in question is Sonic himself, who is a hedgehog, but I already know that Sonic is voiced by Roger Craig Smith, not Jim Cummings.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.21.20.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.21.20.1.1">
<span class="ltx_p" id="A3.T11.1.21.20.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_italic" id="A3.T11.1.21.20.1.1.1.1" style="background-color:#D3D3D3;">ReaRAG encounters knowledge conflicts but mitigates them through verification.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.22.21.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.22.21.1.1">
<span class="ltx_p" id="A3.T11.1.22.21.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.22.21.1.1.1.1">Action 6:</span> <span class="ltx_text" id="A3.T11.1.22.21.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who voices Sonic in the Sonic the Hedgehog series?'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.23.22.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.23.22.1.1">
<span class="ltx_p" id="A3.T11.1.23.22.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.23.22.1.1.1.1">Observation 6:</span> Jim Cummings voices Sonic the Hedgehog in the Sonic the Hedgehog series.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.24.23.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.24.23.1.1">
<span class="ltx_p" id="A3.T11.1.24.23.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.24.23.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.24.23.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.24.23.1.1.2.1">Thought 7:</span> Wait, that contradicts what I thought earlier. I might be confusing the voice actors.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.25.24.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.25.24.1.1">
<span class="ltx_p" id="A3.T11.1.25.24.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.25.24.1.1.1.1">Action 7:</span> <span class="ltx_text" id="A3.T11.1.25.24.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Voice actor for Sonic the Hedgehog. '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.26.25.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.26.25.1.1">
<span class="ltx_p" id="A3.T11.1.26.25.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.26.25.1.1.1.1">Observation 7:</span> Jim Cummings</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.27.26.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.27.26.1.1">
<span class="ltx_p" id="A3.T11.1.27.26.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.27.26.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.27.26.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.27.26.1.1.2.1">Thought 8:</span> This is getting confusing. I need to verify the voice actor for Sonic the Hedgehog.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.28.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.28.27.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.28.27.1.1">
<span class="ltx_p" id="A3.T11.1.28.27.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.28.27.1.1.1.1">Action 8:</span> <span class="ltx_text" id="A3.T11.1.28.27.1.1.1.2" style="color:#008000;">{'function': 'search', 'parameters': {'query': 'Who voices Sonic in the Sonic the Hedgehog games and cartoons? '}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.29.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.29.28.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.29.28.1.1">
<span class="ltx_p" id="A3.T11.1.29.28.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.29.28.1.1.1.1">Observation 8:</span> Jim Cummings voices Sonic the Hedgehog in the Sonic the Hedgehog games and cartoons.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.30.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.30.29.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.30.29.1.1">
<span class="ltx_p" id="A3.T11.1.30.29.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.30.29.1.1.1.1">\hdashline</span></span>
<span class="ltx_p" id="A3.T11.1.30.29.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.30.29.1.1.2.1">Thought 9:</span> So, Jim Cummings voices Sonic the Hedgehog, who is a hedgehog. Therefore, the answer should be Sonic the Hedgehog.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.31.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A3.T11.1.31.30.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.31.30.1.1">
<span class="ltx_p" id="A3.T11.1.31.30.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T11.1.31.30.1.1.1.1">Action 9:</span> <span class="ltx_text" id="A3.T11.1.31.30.1.1.1.2" style="color:#008000;">{'function': 'finish', 'parameters': {'answer': 'Sonic the Hedgehog'}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.32.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A3.T11.1.32.31.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T11.1.32.31.1.1">
<span class="ltx_p" id="A3.T11.1.32.31.1.1.1" style="width:411.9pt;"><span class="ltx_ERROR undefined" id="A3.T11.1.32.31.1.1.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="A3.T11.1.32.31.1.1.1.2">Final Answer:</span> Sonic the Hedgehog</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents a case study that demonstrates ReaRAG's ability to handle ambiguous questions and conflicting information. ReaRAG's reasoning process is shown step-by-step, highlighting its capacity to identify and resolve inconsistencies between retrieved knowledge and its internal knowledge base. Despite facing challenges, ReaRAG maintains its robustness and accuracy throughout the reasoning process, ultimately reaching the correct conclusion.
> <details>
> <summary>read the caption</summary>
> Table 11: This example illustrates how ReaRAG successfully resolves ambiguity in the original question and addresses conflicts between retrieved knowledge and its parametric knowledge. Despite these challenges, ReaRAG effectively mitigates them and remains robust throughout the reasoning process.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21729/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21729/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}