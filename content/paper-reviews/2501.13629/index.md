---
title: "Sigma: Differential Rescaling of Query, Key and Value for Efficient Language Models"
summary: "SIGMA, a novel large language model, achieves **up to 33.36% faster inference speeds** by using DiffQKV attention, which differentially optimizes query, key, and value components in the attention mech..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Microsoft Research",]
showSummary: true
date: 2025-01-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13629 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenghao Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13629" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13629" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13629/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are computationally expensive, particularly during inference.  Existing methods for improving efficiency often focus on uniform compression of key and value components, neglecting the varying impacts of each component on the model.  This paper introduces limitations of the existing LLMs. 

The paper proposes SIGMA, a new LLM architecture employing 

**DiffQKV attention**, which differentially optimizes query, key, and value components based on their impact on performance and efficiency. This approach achieves **significant inference speed improvements** and is demonstrated through rigorous theoretical analysis and experimental results on the newly introduced AIMICIUS benchmark.  Results show SIGMA significantly outperforming existing models in the system domain, indicating its potential for real-world applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DiffQKV attention significantly improves inference speed by differentially optimizing query, key, and value components. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SIGMA outperforms GPT-4 on AIMICIUS, a new benchmark for evaluating LLMs in the system domain. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study provides a comprehensive analysis of the impact of various QKV configurations on LLM performance and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on **large language models (LLMs)** and **system optimization**. It introduces a novel attention mechanism that significantly improves inference efficiency, directly addressing a major bottleneck in LLM deployment.  The proposed benchmark, AIMICIUS, provides a valuable tool for evaluating LLMs in the system domain, a field that is gaining importance as AI becomes more integral to various systems. The findings open new avenues for research in efficient LLM architecture and system-specific LLM development.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13629/x1.png)

> 🔼 Figure 1 illustrates four different attention mechanisms: Multi-Head Attention (MHA), Multi-Query Attention (MQA), Grouped-Query Attention (GQA), and the proposed DiffQKV attention.  The figure uses diagrams to highlight the key differences in how queries (Q), keys (K), and values (V) are handled in each method.  Specifically, it shows that DiffQKV employs (1) differentially compressed KV: a more aggressive compression of K's number of heads and dimensions compared to V to reduce K cache size, with optional selective V cache fetching for further compression, and (2) augmented Q: a higher dimension for Q heads than K or V heads to improve representation capability.  The visual comparison allows readers to quickly grasp the architectural innovations introduced by DiffQKV and understand how it improves efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our proposed method for differential rescaling of QKV, compared alongside Multi-Head Attention (MHA), Multi-Query Attention (MQA), and Grouped Query Attention (GQA). Specifically, our method involves: (1) differentially compressed KV: applying more aggressive compression on the number of K heads and their dimensions than on the V components, which more significantly reduces the size of K cache. We can also optionally adopt selective V cache fetching for V compression; (2) augmented Q: adopting a higher dimension for the Q head compared to the KV heads.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.20.18">
<tr class="ltx_tr" id="S2.T1.20.18.19">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.20.18.19.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.19.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.20.18.19.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.19.2.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T1.20.18.19.3"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.19.3.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T1.20.18.19.4"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.19.4.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.20.18.19.5"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.19.5.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.18.20">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.1">Hella.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.2">ObQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.3">Wino.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.4">ARC.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.5">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.6">SciQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.7">Bool.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.8">Logi.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.20.18.20.9">LAMB.</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S2.T1.4.2.2.2.1">MHA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.3.1.1.1.m1.1"><semantics id="S2.T1.3.1.1.1.m1.1a"><msubsup id="S2.T1.3.1.1.1.m1.1.1" xref="S2.T1.3.1.1.1.m1.1.1.cmml"><mi id="S2.T1.3.1.1.1.m1.1.1.2.2" xref="S2.T1.3.1.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.3.1.1.1.m1.1.1.2.3" xref="S2.T1.3.1.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.3.1.1.1.m1.1.1.3" xref="S2.T1.3.1.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.3.1.1.1.m1.1b"><apply id="S2.T1.3.1.1.1.m1.1.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.3.1.1.1.m1.1.1.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.3.1.1.1.m1.1.1.2.cmml" xref="S2.T1.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.3.1.1.1.m1.1.1.2.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.3.1.1.1.m1.1.1.2.2.cmml" xref="S2.T1.3.1.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.3.1.1.1.m1.1.1.2.3.cmml" xref="S2.T1.3.1.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.3.1.1.1.m1.1.1.3.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.1.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.4.2.2.2.m2.1"><semantics id="S2.T1.4.2.2.2.m2.1a"><msubsup id="S2.T1.4.2.2.2.m2.1.1" xref="S2.T1.4.2.2.2.m2.1.1.cmml"><mi id="S2.T1.4.2.2.2.m2.1.1.2.2" xref="S2.T1.4.2.2.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T1.4.2.2.2.m2.1.1.2.3" xref="S2.T1.4.2.2.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T1.4.2.2.2.m2.1.1.3" xref="S2.T1.4.2.2.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.4.2.2.2.m2.1b"><apply id="S2.T1.4.2.2.2.m2.1.1.cmml" xref="S2.T1.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.4.2.2.2.m2.1.1.1.cmml" xref="S2.T1.4.2.2.2.m2.1.1">superscript</csymbol><apply id="S2.T1.4.2.2.2.m2.1.1.2.cmml" xref="S2.T1.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.4.2.2.2.m2.1.1.2.1.cmml" xref="S2.T1.4.2.2.2.m2.1.1">subscript</csymbol><ci id="S2.T1.4.2.2.2.m2.1.1.2.2.cmml" xref="S2.T1.4.2.2.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T1.4.2.2.2.m2.1.1.2.3.cmml" xref="S2.T1.4.2.2.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.4.2.2.2.m2.1.1.3.cmml" xref="S2.T1.4.2.2.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.2.2.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.2.2.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=32)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.4.2.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.4.2.2.3.1">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.4">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.5">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.6">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.7">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.8">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.9">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.10">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.11">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.12">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.4.4" style="background-color:#F3F3F4;">
<td class="ltx_td ltx_align_left" id="S2.T1.5.3.3.1"><span class="ltx_text" id="S2.T1.5.3.3.1.1" style="background-color:#F3F3F4;">-50% V Heads (<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.5.3.3.1.1.m1.1"><semantics id="S2.T1.5.3.3.1.1.m1.1a"><msubsup id="S2.T1.5.3.3.1.1.m1.1.1" xref="S2.T1.5.3.3.1.1.m1.1.1.cmml"><mi id="S2.T1.5.3.3.1.1.m1.1.1.2.2" mathbackground="#F3F3F4" xref="S2.T1.5.3.3.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.5.3.3.1.1.m1.1.1.2.3" mathbackground="#F3F3F4" xref="S2.T1.5.3.3.1.1.m1.1.1.2.3.cmml">v</mi><mi id="S2.T1.5.3.3.1.1.m1.1.1.3" mathbackground="#F3F3F4" xref="S2.T1.5.3.3.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.5.3.3.1.1.m1.1b"><apply id="S2.T1.5.3.3.1.1.m1.1.1.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.5.3.3.1.1.m1.1.1.1.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.5.3.3.1.1.m1.1.1.2.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.5.3.3.1.1.m1.1.1.2.1.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.5.3.3.1.1.m1.1.1.2.2.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.5.3.3.1.1.m1.1.1.2.3.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.5.3.3.1.1.m1.1.1.3.cmml" xref="S2.T1.5.3.3.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.3.3.1.1.m1.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.3.3.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.6.4.4.2"><span class="ltx_text ltx_font_bold" id="S2.T1.6.4.4.2.1" style="background-color:#F3F3F4;">51.74<span class="ltx_text ltx_font_medium" id="S2.T1.6.4.4.2.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.6.4.4.2.1.1.m1.1"><semantics id="S2.T1.6.4.4.2.1.1.m1.1a"><mo id="S2.T1.6.4.4.2.1.1.m1.1.1" mathbackground="#F3F3F4" stretchy="false" xref="S2.T1.6.4.4.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.6.4.4.2.1.1.m1.1b"><ci id="S2.T1.6.4.4.2.1.1.m1.1.1.cmml" xref="S2.T1.6.4.4.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.4.4.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.4.4.2.1.1.m1.1d">↓</annotation></semantics></math>0.66)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.3"><span class="ltx_text" id="S2.T1.6.4.4.3.1" style="background-color:#F3F3F4;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.4"><span class="ltx_text" id="S2.T1.6.4.4.4.1" style="background-color:#F3F3F4;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.5"><span class="ltx_text" id="S2.T1.6.4.4.5.1" style="background-color:#F3F3F4;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.6"><span class="ltx_text" id="S2.T1.6.4.4.6.1" style="background-color:#F3F3F4;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.7"><span class="ltx_text" id="S2.T1.6.4.4.7.1" style="background-color:#F3F3F4;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.8"><span class="ltx_text" id="S2.T1.6.4.4.8.1" style="background-color:#F3F3F4;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.9"><span class="ltx_text" id="S2.T1.6.4.4.9.1" style="background-color:#F3F3F4;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.10"><span class="ltx_text" id="S2.T1.6.4.4.10.1" style="background-color:#F3F3F4;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.4.4.11"><span class="ltx_text" id="S2.T1.6.4.4.11.1" style="background-color:#F3F3F4;">37.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.6.6" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T1.7.5.5.1"><span class="ltx_text" id="S2.T1.7.5.5.1.1" style="background-color:#E7E7E8;">-50% K Heads (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.7.5.5.1.1.m1.1"><semantics id="S2.T1.7.5.5.1.1.m1.1a"><msubsup id="S2.T1.7.5.5.1.1.m1.1.1" xref="S2.T1.7.5.5.1.1.m1.1.1.cmml"><mi id="S2.T1.7.5.5.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T1.7.5.5.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.7.5.5.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T1.7.5.5.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.7.5.5.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T1.7.5.5.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.7.5.5.1.1.m1.1b"><apply id="S2.T1.7.5.5.1.1.m1.1.1.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.7.5.5.1.1.m1.1.1.1.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.7.5.5.1.1.m1.1.1.2.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.7.5.5.1.1.m1.1.1.2.1.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.7.5.5.1.1.m1.1.1.2.2.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.7.5.5.1.1.m1.1.1.2.3.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.7.5.5.1.1.m1.1.1.3.cmml" xref="S2.T1.7.5.5.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.5.5.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.5.5.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.8.6.6.2"><span class="ltx_text ltx_font_bold" id="S2.T1.8.6.6.2.1" style="background-color:#E7E7E8;">52.83<span class="ltx_text ltx_font_medium" id="S2.T1.8.6.6.2.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.8.6.6.2.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.8.6.6.2.1.1.1.m1.1"><semantics id="S2.T1.8.6.6.2.1.1.1.m1.1a"><mo id="S2.T1.8.6.6.2.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T1.8.6.6.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.8.6.6.2.1.1.1.m1.1b"><ci id="S2.T1.8.6.6.2.1.1.1.m1.1.1.cmml" xref="S2.T1.8.6.6.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.6.6.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.6.6.2.1.1.1.m1.1d">↑</annotation></semantics></math>0.43</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.3"><span class="ltx_text" id="S2.T1.8.6.6.3.1" style="background-color:#E7E7E8;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.4"><span class="ltx_text" id="S2.T1.8.6.6.4.1" style="background-color:#E7E7E8;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.5"><span class="ltx_text" id="S2.T1.8.6.6.5.1" style="background-color:#E7E7E8;">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.6"><span class="ltx_text" id="S2.T1.8.6.6.6.1" style="background-color:#E7E7E8;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.7"><span class="ltx_text" id="S2.T1.8.6.6.7.1" style="background-color:#E7E7E8;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.8"><span class="ltx_text" id="S2.T1.8.6.6.8.1" style="background-color:#E7E7E8;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.9"><span class="ltx_text" id="S2.T1.8.6.6.9.1" style="background-color:#E7E7E8;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.10"><span class="ltx_text" id="S2.T1.8.6.6.10.1" style="background-color:#E7E7E8;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.6.6.11"><span class="ltx_text" id="S2.T1.8.6.6.11.1" style="background-color:#E7E7E8;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.10.8.8.2">
<span class="ltx_text ltx_font_bold" id="S2.T1.10.8.8.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.9.7.7.1.m1.1"><semantics id="S2.T1.9.7.7.1.m1.1a"><msubsup id="S2.T1.9.7.7.1.m1.1.1" xref="S2.T1.9.7.7.1.m1.1.1.cmml"><mi id="S2.T1.9.7.7.1.m1.1.1.2.2" xref="S2.T1.9.7.7.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.9.7.7.1.m1.1.1.2.3" xref="S2.T1.9.7.7.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.9.7.7.1.m1.1.1.3" xref="S2.T1.9.7.7.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.9.7.7.1.m1.1b"><apply id="S2.T1.9.7.7.1.m1.1.1.cmml" xref="S2.T1.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.9.7.7.1.m1.1.1.1.cmml" xref="S2.T1.9.7.7.1.m1.1.1">superscript</csymbol><apply id="S2.T1.9.7.7.1.m1.1.1.2.cmml" xref="S2.T1.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.9.7.7.1.m1.1.1.2.1.cmml" xref="S2.T1.9.7.7.1.m1.1.1">subscript</csymbol><ci id="S2.T1.9.7.7.1.m1.1.1.2.2.cmml" xref="S2.T1.9.7.7.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.9.7.7.1.m1.1.1.2.3.cmml" xref="S2.T1.9.7.7.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.9.7.7.1.m1.1.1.3.cmml" xref="S2.T1.9.7.7.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.9.7.7.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.9.7.7.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.10.8.8.2.m2.1"><semantics id="S2.T1.10.8.8.2.m2.1a"><msubsup id="S2.T1.10.8.8.2.m2.1.1" xref="S2.T1.10.8.8.2.m2.1.1.cmml"><mi id="S2.T1.10.8.8.2.m2.1.1.2.2" xref="S2.T1.10.8.8.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T1.10.8.8.2.m2.1.1.2.3" xref="S2.T1.10.8.8.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T1.10.8.8.2.m2.1.1.3" xref="S2.T1.10.8.8.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.10.8.8.2.m2.1b"><apply id="S2.T1.10.8.8.2.m2.1.1.cmml" xref="S2.T1.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.10.8.8.2.m2.1.1.1.cmml" xref="S2.T1.10.8.8.2.m2.1.1">superscript</csymbol><apply id="S2.T1.10.8.8.2.m2.1.1.2.cmml" xref="S2.T1.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.10.8.8.2.m2.1.1.2.1.cmml" xref="S2.T1.10.8.8.2.m2.1.1">subscript</csymbol><ci id="S2.T1.10.8.8.2.m2.1.1.2.2.cmml" xref="S2.T1.10.8.8.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T1.10.8.8.2.m2.1.1.2.3.cmml" xref="S2.T1.10.8.8.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.10.8.8.2.m2.1.1.3.cmml" xref="S2.T1.10.8.8.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.10.8.8.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.10.8.8.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.10.8.8.3"><span class="ltx_text ltx_font_bold" id="S2.T1.10.8.8.3.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.4">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.5">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.6">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.7">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.8">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.9">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.10">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.11">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.8.8.12">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.12.10.10" style="background-color:#F3F3F4;">
<td class="ltx_td ltx_align_left" id="S2.T1.11.9.9.1"><span class="ltx_text" id="S2.T1.11.9.9.1.1" style="background-color:#F3F3F4;">-75% V Heads (<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.11.9.9.1.1.m1.1"><semantics id="S2.T1.11.9.9.1.1.m1.1a"><msubsup id="S2.T1.11.9.9.1.1.m1.1.1" xref="S2.T1.11.9.9.1.1.m1.1.1.cmml"><mi id="S2.T1.11.9.9.1.1.m1.1.1.2.2" mathbackground="#F3F3F4" xref="S2.T1.11.9.9.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.11.9.9.1.1.m1.1.1.2.3" mathbackground="#F3F3F4" xref="S2.T1.11.9.9.1.1.m1.1.1.2.3.cmml">v</mi><mi id="S2.T1.11.9.9.1.1.m1.1.1.3" mathbackground="#F3F3F4" xref="S2.T1.11.9.9.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.11.9.9.1.1.m1.1b"><apply id="S2.T1.11.9.9.1.1.m1.1.1.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.11.9.9.1.1.m1.1.1.1.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.11.9.9.1.1.m1.1.1.2.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.11.9.9.1.1.m1.1.1.2.1.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.11.9.9.1.1.m1.1.1.2.2.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.11.9.9.1.1.m1.1.1.2.3.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.11.9.9.1.1.m1.1.1.3.cmml" xref="S2.T1.11.9.9.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.11.9.9.1.1.m1.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.11.9.9.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.12.10.10.2"><span class="ltx_text ltx_font_bold" id="S2.T1.12.10.10.2.1" style="background-color:#F3F3F4;">51.76<span class="ltx_text ltx_font_medium" id="S2.T1.12.10.10.2.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.12.10.10.2.1.1.m1.1"><semantics id="S2.T1.12.10.10.2.1.1.m1.1a"><mo id="S2.T1.12.10.10.2.1.1.m1.1.1" mathbackground="#F3F3F4" stretchy="false" xref="S2.T1.12.10.10.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.12.10.10.2.1.1.m1.1b"><ci id="S2.T1.12.10.10.2.1.1.m1.1.1.cmml" xref="S2.T1.12.10.10.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.12.10.10.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.12.10.10.2.1.1.m1.1d">↓</annotation></semantics></math>0.38)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.3"><span class="ltx_text" id="S2.T1.12.10.10.3.1" style="background-color:#F3F3F4;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.4"><span class="ltx_text" id="S2.T1.12.10.10.4.1" style="background-color:#F3F3F4;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.5"><span class="ltx_text" id="S2.T1.12.10.10.5.1" style="background-color:#F3F3F4;">55.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.6"><span class="ltx_text" id="S2.T1.12.10.10.6.1" style="background-color:#F3F3F4;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.7"><span class="ltx_text" id="S2.T1.12.10.10.7.1" style="background-color:#F3F3F4;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.8"><span class="ltx_text" id="S2.T1.12.10.10.8.1" style="background-color:#F3F3F4;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.9"><span class="ltx_text" id="S2.T1.12.10.10.9.1" style="background-color:#F3F3F4;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.10"><span class="ltx_text" id="S2.T1.12.10.10.10.1" style="background-color:#F3F3F4;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.12.10.10.11"><span class="ltx_text" id="S2.T1.12.10.10.11.1" style="background-color:#F3F3F4;">35.3</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.14.12.12" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T1.13.11.11.1"><span class="ltx_text" id="S2.T1.13.11.11.1.1" style="background-color:#E7E7E8;">-75% K Heads (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.13.11.11.1.1.m1.1"><semantics id="S2.T1.13.11.11.1.1.m1.1a"><msubsup id="S2.T1.13.11.11.1.1.m1.1.1" xref="S2.T1.13.11.11.1.1.m1.1.1.cmml"><mi id="S2.T1.13.11.11.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T1.13.11.11.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.13.11.11.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T1.13.11.11.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.13.11.11.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T1.13.11.11.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.13.11.11.1.1.m1.1b"><apply id="S2.T1.13.11.11.1.1.m1.1.1.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.13.11.11.1.1.m1.1.1.1.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.13.11.11.1.1.m1.1.1.2.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.13.11.11.1.1.m1.1.1.2.1.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.13.11.11.1.1.m1.1.1.2.2.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.13.11.11.1.1.m1.1.1.2.3.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.13.11.11.1.1.m1.1.1.3.cmml" xref="S2.T1.13.11.11.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.13.11.11.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.13.11.11.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.14.12.12.2"><span class="ltx_text ltx_font_bold" id="S2.T1.14.12.12.2.1" style="background-color:#E7E7E8;">51.97<span class="ltx_text ltx_font_medium" id="S2.T1.14.12.12.2.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.14.12.12.2.1.1.1"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.14.12.12.2.1.1.1.m1.1"><semantics id="S2.T1.14.12.12.2.1.1.1.m1.1a"><mo id="S2.T1.14.12.12.2.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T1.14.12.12.2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.14.12.12.2.1.1.1.m1.1b"><ci id="S2.T1.14.12.12.2.1.1.1.m1.1.1.cmml" xref="S2.T1.14.12.12.2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.14.12.12.2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.14.12.12.2.1.1.1.m1.1d">↓</annotation></semantics></math>0.17</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.3"><span class="ltx_text" id="S2.T1.14.12.12.3.1" style="background-color:#E7E7E8;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.4"><span class="ltx_text" id="S2.T1.14.12.12.4.1" style="background-color:#E7E7E8;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.5"><span class="ltx_text" id="S2.T1.14.12.12.5.1" style="background-color:#E7E7E8;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.6"><span class="ltx_text" id="S2.T1.14.12.12.6.1" style="background-color:#E7E7E8;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.7"><span class="ltx_text" id="S2.T1.14.12.12.7.1" style="background-color:#E7E7E8;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.8"><span class="ltx_text" id="S2.T1.14.12.12.8.1" style="background-color:#E7E7E8;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.9"><span class="ltx_text" id="S2.T1.14.12.12.9.1" style="background-color:#E7E7E8;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.10"><span class="ltx_text" id="S2.T1.14.12.12.10.1" style="background-color:#E7E7E8;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.14.12.12.11"><span class="ltx_text" id="S2.T1.14.12.12.11.1" style="background-color:#E7E7E8;">36.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.16.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.16.14.14.2">
<span class="ltx_text ltx_font_bold" id="S2.T1.16.14.14.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.15.13.13.1.m1.1"><semantics id="S2.T1.15.13.13.1.m1.1a"><msubsup id="S2.T1.15.13.13.1.m1.1.1" xref="S2.T1.15.13.13.1.m1.1.1.cmml"><mi id="S2.T1.15.13.13.1.m1.1.1.2.2" xref="S2.T1.15.13.13.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.15.13.13.1.m1.1.1.2.3" xref="S2.T1.15.13.13.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.15.13.13.1.m1.1.1.3" xref="S2.T1.15.13.13.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.15.13.13.1.m1.1b"><apply id="S2.T1.15.13.13.1.m1.1.1.cmml" xref="S2.T1.15.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.15.13.13.1.m1.1.1.1.cmml" xref="S2.T1.15.13.13.1.m1.1.1">superscript</csymbol><apply id="S2.T1.15.13.13.1.m1.1.1.2.cmml" xref="S2.T1.15.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.15.13.13.1.m1.1.1.2.1.cmml" xref="S2.T1.15.13.13.1.m1.1.1">subscript</csymbol><ci id="S2.T1.15.13.13.1.m1.1.1.2.2.cmml" xref="S2.T1.15.13.13.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.15.13.13.1.m1.1.1.2.3.cmml" xref="S2.T1.15.13.13.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.15.13.13.1.m1.1.1.3.cmml" xref="S2.T1.15.13.13.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.15.13.13.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.15.13.13.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.16.14.14.2.m2.1"><semantics id="S2.T1.16.14.14.2.m2.1a"><msubsup id="S2.T1.16.14.14.2.m2.1.1" xref="S2.T1.16.14.14.2.m2.1.1.cmml"><mi id="S2.T1.16.14.14.2.m2.1.1.2.2" xref="S2.T1.16.14.14.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T1.16.14.14.2.m2.1.1.2.3" xref="S2.T1.16.14.14.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T1.16.14.14.2.m2.1.1.3" xref="S2.T1.16.14.14.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.16.14.14.2.m2.1b"><apply id="S2.T1.16.14.14.2.m2.1.1.cmml" xref="S2.T1.16.14.14.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.16.14.14.2.m2.1.1.1.cmml" xref="S2.T1.16.14.14.2.m2.1.1">superscript</csymbol><apply id="S2.T1.16.14.14.2.m2.1.1.2.cmml" xref="S2.T1.16.14.14.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T1.16.14.14.2.m2.1.1.2.1.cmml" xref="S2.T1.16.14.14.2.m2.1.1">subscript</csymbol><ci id="S2.T1.16.14.14.2.m2.1.1.2.2.cmml" xref="S2.T1.16.14.14.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T1.16.14.14.2.m2.1.1.2.3.cmml" xref="S2.T1.16.14.14.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.16.14.14.2.m2.1.1.3.cmml" xref="S2.T1.16.14.14.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.16.14.14.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.16.14.14.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.16.14.14.3"><span class="ltx_text ltx_font_bold" id="S2.T1.16.14.14.3.1">51.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.4">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.5">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.6">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.7">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.8">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.9">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.10">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.11">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.16.14.14.12">35.4</td>
</tr>
<tr class="ltx_tr" id="S2.T1.18.16.16" style="background-color:#F3F3F4;">
<td class="ltx_td ltx_align_left" id="S2.T1.17.15.15.1"><span class="ltx_text" id="S2.T1.17.15.15.1.1" style="background-color:#F3F3F4;">-75% V Heads (<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T1.17.15.15.1.1.m1.1"><semantics id="S2.T1.17.15.15.1.1.m1.1a"><msubsup id="S2.T1.17.15.15.1.1.m1.1.1" xref="S2.T1.17.15.15.1.1.m1.1.1.cmml"><mi id="S2.T1.17.15.15.1.1.m1.1.1.2.2" mathbackground="#F3F3F4" xref="S2.T1.17.15.15.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.17.15.15.1.1.m1.1.1.2.3" mathbackground="#F3F3F4" xref="S2.T1.17.15.15.1.1.m1.1.1.2.3.cmml">v</mi><mi id="S2.T1.17.15.15.1.1.m1.1.1.3" mathbackground="#F3F3F4" xref="S2.T1.17.15.15.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.17.15.15.1.1.m1.1b"><apply id="S2.T1.17.15.15.1.1.m1.1.1.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.17.15.15.1.1.m1.1.1.1.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.17.15.15.1.1.m1.1.1.2.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.17.15.15.1.1.m1.1.1.2.1.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.17.15.15.1.1.m1.1.1.2.2.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.17.15.15.1.1.m1.1.1.2.3.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1.2.3">𝑣</ci></apply><ci id="S2.T1.17.15.15.1.1.m1.1.1.3.cmml" xref="S2.T1.17.15.15.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.17.15.15.1.1.m1.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.17.15.15.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=1)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.18.16.16.2"><span class="ltx_text ltx_font_bold" id="S2.T1.18.16.16.2.1" style="background-color:#F3F3F4;">51.03<span class="ltx_text ltx_font_medium" id="S2.T1.18.16.16.2.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.18.16.16.2.1.1.m1.1"><semantics id="S2.T1.18.16.16.2.1.1.m1.1a"><mo id="S2.T1.18.16.16.2.1.1.m1.1.1" mathbackground="#F3F3F4" stretchy="false" xref="S2.T1.18.16.16.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.18.16.16.2.1.1.m1.1b"><ci id="S2.T1.18.16.16.2.1.1.m1.1.1.cmml" xref="S2.T1.18.16.16.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.18.16.16.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.18.16.16.2.1.1.m1.1d">↓</annotation></semantics></math>0.63)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.3"><span class="ltx_text" id="S2.T1.18.16.16.3.1" style="background-color:#F3F3F4;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.4"><span class="ltx_text" id="S2.T1.18.16.16.4.1" style="background-color:#F3F3F4;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.5"><span class="ltx_text" id="S2.T1.18.16.16.5.1" style="background-color:#F3F3F4;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.6"><span class="ltx_text" id="S2.T1.18.16.16.6.1" style="background-color:#F3F3F4;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.7"><span class="ltx_text" id="S2.T1.18.16.16.7.1" style="background-color:#F3F3F4;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.8"><span class="ltx_text" id="S2.T1.18.16.16.8.1" style="background-color:#F3F3F4;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.9"><span class="ltx_text" id="S2.T1.18.16.16.9.1" style="background-color:#F3F3F4;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.10"><span class="ltx_text" id="S2.T1.18.16.16.10.1" style="background-color:#F3F3F4;">28.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.18.16.16.11"><span class="ltx_text" id="S2.T1.18.16.16.11.1" style="background-color:#F3F3F4;">35.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.18.18" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.19.17.17.1"><span class="ltx_text" id="S2.T1.19.17.17.1.1" style="background-color:#E7E7E8;">-75% K Heads (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T1.19.17.17.1.1.m1.1"><semantics id="S2.T1.19.17.17.1.1.m1.1a"><msubsup id="S2.T1.19.17.17.1.1.m1.1.1" xref="S2.T1.19.17.17.1.1.m1.1.1.cmml"><mi id="S2.T1.19.17.17.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T1.19.17.17.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T1.19.17.17.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T1.19.17.17.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T1.19.17.17.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T1.19.17.17.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T1.19.17.17.1.1.m1.1b"><apply id="S2.T1.19.17.17.1.1.m1.1.1.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.19.17.17.1.1.m1.1.1.1.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1">superscript</csymbol><apply id="S2.T1.19.17.17.1.1.m1.1.1.2.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.19.17.17.1.1.m1.1.1.2.1.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.19.17.17.1.1.m1.1.1.2.2.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T1.19.17.17.1.1.m1.1.1.2.3.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T1.19.17.17.1.1.m1.1.1.3.cmml" xref="S2.T1.19.17.17.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.19.17.17.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.19.17.17.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.20.18.18.2"><span class="ltx_text ltx_font_bold" id="S2.T1.20.18.18.2.1" style="background-color:#E7E7E8;">51.67<span class="ltx_text ltx_font_medium" id="S2.T1.20.18.18.2.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.18.18.2.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.20.18.18.2.1.1.1.m1.1"><semantics id="S2.T1.20.18.18.2.1.1.1.m1.1a"><mo id="S2.T1.20.18.18.2.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T1.20.18.18.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.20.18.18.2.1.1.1.m1.1b"><ci id="S2.T1.20.18.18.2.1.1.1.m1.1.1.cmml" xref="S2.T1.20.18.18.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.20.18.18.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.20.18.18.2.1.1.1.m1.1d">↑</annotation></semantics></math>0.01</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.3"><span class="ltx_text" id="S2.T1.20.18.18.3.1" style="background-color:#E7E7E8;">53.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.4"><span class="ltx_text" id="S2.T1.20.18.18.4.1" style="background-color:#E7E7E8;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.5"><span class="ltx_text" id="S2.T1.20.18.18.5.1" style="background-color:#E7E7E8;">58.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.6"><span class="ltx_text" id="S2.T1.20.18.18.6.1" style="background-color:#E7E7E8;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.7"><span class="ltx_text" id="S2.T1.20.18.18.7.1" style="background-color:#E7E7E8;">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.8"><span class="ltx_text" id="S2.T1.20.18.18.8.1" style="background-color:#E7E7E8;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.9"><span class="ltx_text" id="S2.T1.20.18.18.9.1" style="background-color:#E7E7E8;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.10"><span class="ltx_text" id="S2.T1.20.18.18.10.1" style="background-color:#E7E7E8;">28.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.20.18.18.11"><span class="ltx_text" id="S2.T1.20.18.18.11.1" style="background-color:#E7E7E8;">35.5</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different models when reducing either the number of key heads (K) or value heads (V) by the same percentage.  The number of query heads (Q) remains constant at 32 across all models. The results show that reducing the number of key heads has less of a negative impact on overall model performance compared to reducing the number of value heads.  This is likely because key heads primarily serve to calculate attention matrices which tend to be quite sparse, whereas value heads directly impact the attention output.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons of model performance when reducing the same number of K heads versus V heads. The number of Q heads is 32 for all models (nqh=32superscriptsubscript𝑛𝑞ℎ32n_{q}^{h}=32italic_n start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT = 32). The results show that compressing the number of K heads has a relatively smaller impact on the overall model performance.
> </details>





### In-depth insights


#### DiffQKV Attention
The proposed DiffQKV attention mechanism offers a novel approach to optimizing large language model (LLM) inference efficiency by **differentially rescaling the Query (Q), Key (K), and Value (V) components** within the attention mechanism.  Unlike traditional methods that treat Q, K, and V uniformly, DiffQKV leverages the varying impact of each component on both performance and efficiency.  This is achieved through two key techniques: **differentially compressed KV**, which compresses K more aggressively than V based on experimental observations of sensitivity, and **augmented Q**, which increases the dimensionality of the query component to compensate for the potential performance loss from KV compression.  The result is a significant improvement in inference speed, particularly in long-context scenarios, while maintaining comparable performance to state-of-the-art models in general domains. **Rigorous theoretical and empirical analyses support the effectiveness of DiffQKV**, demonstrating that it outperforms conventional methods by mitigating KV cache bottlenecks and achieving a more efficient balance between model capacity and computational costs.

#### SIGMA Architecture
The SIGMA architecture is **designed for efficiency**, particularly in handling long sequences. This is achieved through **differential rescaling of Query, Key, and Value (QKV) components** in the attention mechanism.  The core innovation lies in its **asymmetric treatment of K and V**, recognizing their differing impact on both performance and efficiency.  While aggressively compressing K, it uses less aggressive compression for V which is crucial as V directly affects final outputs.  The **augmented Q head** compensates for any performance drop from KV compression, maintaining representation capacity without sacrificing inference speed.  Further enhancements involve **selective V cache fetching** which loads only the most crucial vectors during inference, significantly lowering memory access and contributing to overall speed. These strategies work in concert to offer substantial inference speed improvements, especially in long-context scenarios, making it particularly suitable for system domain tasks which often involve lengthy sequences.

#### System Domain Focus
A 'System Domain Focus' in a research paper would likely explore the application of AI models to **optimize and manage AI systems themselves**. This could involve using AI to monitor system performance, automatically diagnose and resolve issues, allocate resources efficiently, or even to design and improve future AI systems. The focus would likely delve into the **unique challenges** of this domain, such as the need for high reliability, security, and explainability in AI systems which manage critical infrastructure.  Such a focus would also likely discuss the **data requirements** for training such models, which might include system logs, performance metrics, and configuration details.  A key aspect would be **benchmarking** these AI systems for system management to establish their effectiveness against existing methods.  The ultimate aim would be to demonstrate the potential for AI to not only improve AI model performance, but also to create a more sustainable and reliable development cycle for AI overall.  This approach represents a **meta-level application** of AI, with significant implications for the future of AI technology.

#### Efficiency Analysis
An efficiency analysis of a large language model (LLM) should thoroughly investigate the computational and memory aspects of its architecture.  This involves examining the attention mechanism, specifically analyzing the impact of different designs (e.g., multi-head, grouped-query, and the proposed differential rescaling) on inference speed and memory usage.  **Theoretical analysis**, using big O notation and mathematical models, can estimate the resource requirements of various operations.  **Empirical evaluations**, using benchmarks on diverse tasks and hardware, are crucial to validate the theoretical analysis and demonstrate real-world performance gains.  Such evaluation should include measuring key metrics like latency, throughput, and memory footprint, considering factors such as sequence length and batch size.  The analysis must also discuss the trade-offs between efficiency and model performance, comparing the proposed method with existing state-of-the-art approaches. Finally, a discussion on implementation details and their impact on efficiency is also necessary.  **Optimizations**, such as selective V-vector loading and efficient KV cache management, should be clearly explained and their effectiveness quantified.

#### Future Directions
Future research directions for efficient large language models (LLMs) should prioritize **reducing memory footprint and latency** without sacrificing performance.  This could involve exploring alternative attention mechanisms beyond DiffQKV, such as those utilizing sparse attention or more efficient matrix operations.  Another avenue is optimizing the pre-training process itself by employing novel data augmentation techniques or focusing on carefully curated datasets that improve generalization and reduce overfitting.  **Expanding the AIMICIUS benchmark** with a wider range of system domain tasks is crucial to comprehensively evaluate future LLMs, ensuring broader applicability and real-world relevance. Finally, **investigating novel architectures** that integrate techniques like model parallelism and quantization, while also exploring novel methods for efficient knowledge distillation from larger models, could lead to a new generation of resource-efficient and highly capable LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kernel_cost_split.png)

> 🔼 This figure shows the Kernel Execution Time (KET) for the split kernel of the FlexHeadFA attention mechanism. The KET is measured in nanoseconds (ns) and plotted against the prefix length, which represents the length of the input sequence.  Two models, SIGMA and STD, are compared. The split kernel is one part of the Flash Attention 2 algorithm, responsible for dividing the key and value matrices into smaller chunks for efficient computation. This plot illustrates how the time taken by the split kernel changes as the input sequence length increases, revealing potential performance differences between the SIGMA and STD models in their attention mechanism.
> <details>
> <summary>read the caption</summary>
> (a) KET of the split kernel.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kernel_cost_combine.png)

> 🔼 This figure shows the Kernel Execution Time (KET) for the combine kernel in the FlexHeadFA attention mechanism.  The combine kernel is responsible for assembling smaller output chunks into a complete output matrix during attention calculations. The graph likely plots KET (in nanoseconds) on the y-axis against prefix length (the length of the input sequence) on the x-axis. Separate lines probably represent the performance of the SIGMA model and the standard model (STD) for comparison. The purpose is to demonstrate the relative efficiency of SIGMA's attention mechanism, especially as the input sequence grows longer, with a focus on the combine kernel's contribution to the overall computation time. 
> <details>
> <summary>read the caption</summary>
> (b) KET of the combine kernel.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kernel_cost_tot.png)

> 🔼 The figure shows the total kernel execution time (KET) for both the standard model (STD) and SIGMA 1.5B.  The KET is the sum of the execution times for the 'split' and 'combine' kernels within the flash attention mechanism.  The x-axis represents the prefix length, indicating the length of the input sequence processed before the current token. The y-axis represents the total kernel execution time in nanoseconds.  The plot illustrates the impact of SIGMA's DiffQKV attention mechanism on inference speed, particularly at longer prefix lengths, where SIGMA shows significantly improved performance compared to the standard model.  The results are broken down to show the contribution of split and combine separately in order to demonstrate where the speed up comes from.
> <details>
> <summary>read the caption</summary>
> (c) Total KET.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_2k.png)

> 🔼 This figure compares the kernel execution time (KET) of the FlexHeadFA (Flexible Head Flash Attention) between the Standard model and the SIGMA model.  The KET is broken down into the split and combine kernels. The x-axis represents the prefix length, and the y-axis shows the KET in nanoseconds.  The figure shows how the efficiency of SIGMA improves, particularly as the prefix length increases. Different subplots focus on different components of the computation.
> <details>
> <summary>read the caption</summary>
> Figure 2: KET comparison of FlexHeadFA between Standard model(Std) and Sigma.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_4k.png)

> 🔼 The figure shows the CUDA Event Elapsed Time (CEET) results for different prefix lengths when the output length is fixed at 2k tokens. It compares the performance of SIGMA and the standard model (STD). The x-axis represents the prefix length, and the y-axis shows the CEET (in milliseconds). Different colored lines represent the CEET results for SIGMA (in blue) and STD (in red). The plot shows how the execution time of both models changes with the increasing prefix length.
> <details>
> <summary>read the caption</summary>
> (a) Output Length =2⁢kOutput Length 2𝑘\text{Output Length }=2kOutput Length = 2 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_8k.png)

> 🔼 This figure shows the Kernel Execution Time (KET) results for the combine kernel in the Flash Attention mechanism.  The x-axis represents the prefix length of the input sequence, and the y-axis represents the execution time of the combine kernel.  There are two lines in the graph, one for the standard model and one for the SIGMA model. The output length is fixed at 4k tokens. This figure demonstrates the efficiency gains of the SIGMA model over the standard model for the combine kernel operation when generating text with longer contexts, and shows that SIGMA's gains become increasingly pronounced as the prefix length increases.
> <details>
> <summary>read the caption</summary>
> (b) Output Length =4⁢kabsent4𝑘=4k= 4 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_16k.png)

> 🔼 The figure shows the result of Kernel Execution Time (KET) test for the combine kernel in the flash attention mechanism. The x-axis represents the prefix length, and the y-axis represents the execution time of the combine kernel in nanoseconds. Two models are compared: the standard model (STD) and SIGMA. The output length is fixed at 8k tokens.
> <details>
> <summary>read the caption</summary>
> (c) Output Length =8⁢kabsent8𝑘=8k= 8 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_32k.png)

> 🔼 This figure displays the Cuda Event Elapsed Time (CEET) results for various components of the attention mechanism (KV Cache, Attention Computation, and Augmented Q) in the SIGMA and Standard models. The output length is fixed at 16k tokens, while the prefix length varies.  The plot visually shows the time (in milliseconds) taken by each module for different prefix lengths, illustrating the performance difference between SIGMA (with DiffQKV attention) and the Standard model (with conventional grouped-query attention). The goal is to compare how the efficiency of these components changes in both models under different context lengths.
> <details>
> <summary>read the caption</summary>
> (d) Output Length =16⁢kabsent16𝑘=16k= 16 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_64k.png)

> 🔼 This figure displays the results from the Cuda Event Elapsed Time (CEET) test, specifically focusing on the scenario with an output length of 32,000 tokens.  The CEET measures the end-to-end time of the attention computation. The figure likely shows how the total time for attention computation changes as the prefix length varies. This would help demonstrate SIGMA's efficiency gain, particularly in longer sequences, where it surpasses other state-of-the-art models. The x-axis represents different prefix lengths, and the y-axis shows the corresponding CEET, allowing for a comparison between SIGMA and a standard model across various prefix lengths.
> <details>
> <summary>read the caption</summary>
> (e) Output Length =32⁢kabsent32𝑘=32k= 32 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_delta.png)

> 🔼 This figure displays the results of the Cuda Event Elapsed Time (CEET) test when the output length is 64k tokens.  The CEET test measures the time taken to perform specific operations within the model, providing insights into efficiency and performance at varying prefix lengths.  Different colored lines in the plot likely represent the performance of the model (SIGMA) compared to a baseline or standard model (STD) under different conditions. The x-axis represents the prefix length, and the y-axis displays the CEET in milliseconds.
> <details>
> <summary>read the caption</summary>
> (f) Output Length =64⁢kabsent64𝑘=64k= 64 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/augq_cost_redelta.png)

> 🔼 The figure shows the absolute improvement in CUDA Event Elapsed Time (CEET) of SIGMA compared to the standard model (STD).  The x-axis represents the prefix length, and the y-axis represents the absolute difference in milliseconds (ms) between the CEET of SIGMA and STD. Positive values indicate that SIGMA is faster than STD, while negative values indicate that SIGMA is slower.
> <details>
> <summary>read the caption</summary>
> (g) Sigma’s absolute CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_2k.png)

> 🔼 This figure shows the relative improvement in Cuda Event Elapsed Time (CEET) achieved by SIGMA compared to the standard model (STD).  It displays the percentage difference in computation time between SIGMA and STD across various prefix lengths and output lengths. A positive value indicates that SIGMA is faster, while a negative value means STD is faster.  The figure provides a visual representation of SIGMA's efficiency gains in handling long sequences, showing how its performance advantage grows with increasing context size.
> <details>
> <summary>read the caption</summary>
> (h) Sigma’s relative CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_4k.png)

> 🔼 This figure compares the computational cost of the augmented Q module in the SIGMA model against a standard model (Std). The experiment is conducted across a range of output sequence lengths, from 2k tokens to 64k tokens. For each output length, the figure displays the computational time taken by both models. The x-axis represents the length of the input sequence (prefix length), and the y-axis represents the computational cost in milliseconds (CEET, Cuda Event Elapsed Time). This visualization helps to analyze the impact of the augmented Q module on the overall efficiency of the SIGMA model.
> <details>
> <summary>read the caption</summary>
> Figure 3: CEET comparison of augmented Q between Standard model(Std) and Sigma. From (a) to (f), the output length increases progressively from 2k to 64k tokens.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_8k.png)

> 🔼 This figure shows the results of the Kernel Execution Time (KET) test.  Specifically, it displays a comparison of the time taken to execute the split kernel and combine kernel of the FlexHeadFA attention mechanism in the SIGMA model versus the standard model (STD).  The x-axis represents the length of the input prefix, and the y-axis shows the time in nanoseconds. This test is designed to isolate and measure the efficiency of different parts of the attention computation.  Multiple sub-figures are presented (a-c) showing the breakdown of the total kernel execution time into its component parts, allowing for a detailed analysis of the impact of SIGMA's architecture changes on efficiency at varying sequence lengths.
> <details>
> <summary>read the caption</summary>
> (a) Output Length =2⁢kabsent2𝑘=2k= 2 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_16k.png)

> 🔼 The figure shows the Kernel Execution Time (KET) results for the combine kernel in the context of FlexHeadFA, comparing the performance between the standard model and SIGMA. The x-axis represents the prefix length (in tokens), and the y-axis represents the KET (in nanoseconds).  The plot shows results for an output length of 4k tokens. This helps illustrate how the performance of the combine kernel changes with varying input sequence lengths for a specific output length. The goal is to assess the efficiency gains of SIGMA's DiffQKV attention over the standard model.
> <details>
> <summary>read the caption</summary>
> (b) Output Length =4⁢kabsent4𝑘=4k= 4 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_32k.png)

> 🔼 This figure shows the results of measuring CUDA Event Elapsed Time (CEET) for different components of the attention mechanism in the SIGMA and Standard models. The x-axis represents the prefix length, and the y-axis represents the CEET in milliseconds. The output length is fixed at 8k tokens. The figure illustrates the differences in performance between SIGMA and Standard models across various prefix lengths.
> <details>
> <summary>read the caption</summary>
> (c) Output Length =8⁢kabsent8𝑘=8k= 8 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_64k.png)

> 🔼 This figure presents the results of the Cuda Event Elapsed Time (CEET) test, specifically focusing on scenarios with an output length of 16k tokens. It displays how the total computation time varies across different prefix lengths (the amount of input text preceding the generated text).  The x-axis represents the prefix length, showing how computation time changes as more input is processed.  The y-axis shows the CEET in milliseconds. The results likely compare the performance of the SIGMA model against a baseline model, showcasing the efficiency gains of SIGMA in long-context scenarios.
> <details>
> <summary>read the caption</summary>
> (d) Output Length =16⁢kabsent16𝑘=16k= 16 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_delta.png)

> 🔼 This figure shows the results of measuring CUDA event elapsed time (CEET) for different components of the SIGMA model. Specifically, it focuses on the scenario where the output length is 32k tokens. The x-axis represents the prefix length, and the y-axis represents the measured CEET. Different lines represent different modules within the model, such as KV cache, attention computation, and augmented Q. By comparing the CEET values for SIGMA and a standard model across various prefix lengths, the figure helps to illustrate the efficiency gains achieved by SIGMA, particularly in long-context scenarios.
> <details>
> <summary>read the caption</summary>
> (e) Output Length =32⁢kabsent32𝑘=32k= 32 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/kvcache_cost_redelta.png)

> 🔼 This figure shows the results of the Cuda Event Elapsed Time (CEET) test with an output length of 64k tokens. The CEET test measures the total time elapsed for specific operations in the model. It is used to assess the efficiency of SIGMA and compare its performance against the standard model (STD). The x-axis represents the prefix length, and the y-axis represents the CEET in milliseconds. The figure displays the CEET for SIGMA and STD, allowing for a comparison of their efficiency across different prefix lengths. The results highlight the improvements in inference speed achieved by SIGMA, especially for longer sequences.
> <details>
> <summary>read the caption</summary>
> (f) Output Length =64⁢kabsent64𝑘=64k= 64 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_2k.png)

> 🔼 The figure shows the absolute improvement in Cuda Event Elapsed Time (CEET) achieved by SIGMA compared to the standard model (STD).  It illustrates how much faster SIGMA is than the standard model in terms of milliseconds (ms). The improvement is shown across varying prefix and output lengths, revealing how the advantage of SIGMA changes across different text lengths.
> <details>
> <summary>read the caption</summary>
> (g) Sigma’s absolute CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_4k.png)

> 🔼 This figure shows the relative improvement in Cuda Event Elapsed Time (CEET) of SIGMA compared to the standard model (STD).  The relative improvement is calculated as ((STD_CEET - SIGMA_CEET) / STD_CEET) * 100%.  The x-axis represents different prefix lengths, and each subplot represents a different output length.  The plot visually demonstrates how SIGMA's efficiency gains increase as both prefix and output lengths increase.  Specifically, it shows how much faster SIGMA is than STD in terms of time cost.
> <details>
> <summary>read the caption</summary>
> (h) Sigma’s relative CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_8k.png)

> 🔼 This figure compares the computational cost of loading and storing the key-value (KV) cache between the standard model (Std) and SIGMA, a novel language model introduced in the paper. The comparison is performed across varying output lengths, ranging from 2k to 64k tokens, and across different prefix lengths. The results are presented in a series of subplots, each showing the cost for a specific output length. This figure helps to illustrate the efficiency gains achieved by SIGMA through a reduction in the number of key heads, which directly impacts the size of the KV cache.
> <details>
> <summary>read the caption</summary>
> Figure 4: CEET comparison of KV cache between Standard model(Std) and Sigma. From (a) to (f), the output length increases progressively from 2k to 64k tokens.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_16k.png)

> 🔼 The figure shows the results of Kernel Execution Time (KET) measurements for the split and combine kernels of the FlexHeadFA attention mechanism.  It compares the performance of the SIGMA model (with reduced key heads) against a standard model (STD) with balanced key and value heads. The x-axis represents the prefix length, and the y-axis displays the KET in nanoseconds.  Separate graphs are presented for (a) the split kernel, (b) the combine kernel, and (c) the total KET which is sum of split and combine kernel.
> <details>
> <summary>read the caption</summary>
> (a) Output Length =2⁢kabsent2𝑘=2k= 2 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_32k.png)

> 🔼 The figure shows the result of Kernel Execution Time (KET) test, measuring the execution time of two kernels in the flash attention mechanism: the split kernel and the combine kernel. The test compares the performance between the standard model (STD) and SIGMA model, varying the prefix length while keeping the output length fixed at 4k tokens. The results illustrate the efficiency improvement of SIGMA over STD.
> <details>
> <summary>read the caption</summary>
> (b) Output Length =4⁢kabsent4𝑘=4k= 4 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_64k.png)

> 🔼 This figure shows the results of Kernel Execution Time (KET) test for the combine kernel in the DiffQKV attention mechanism. The x-axis represents the prefix length, and the y-axis represents the execution time in nanoseconds. There are two lines in the plot, one for SIGMA and another one for the standard model (STD).  The output length is fixed at 8k tokens. The plot displays the execution time of the combine kernel as the prefix length varies. It's used to evaluate the efficiency improvements brought by SIGMA, especially in long-sequence scenarios, by comparing the execution time with a standard model.
> <details>
> <summary>read the caption</summary>
> (c) Output Length =8⁢kabsent8𝑘=8k= 8 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_delta.png)

> 🔼 This figure is a part of the empirical analysis on efficiency. Specifically, it presents the Cuda Event Elapsed Time (CEET) results when the output length is 16k tokens. The x-axis represents the prefix length, and the y-axis represents the CEET in milliseconds.  The plot shows the CEET for both SIGMA and the standard model (STD) to illustrate the efficiency improvement achieved by SIGMA. The results show that SIGMA is significantly more efficient than the STD in terms of inference time, especially for longer prefixes and sequences.
> <details>
> <summary>read the caption</summary>
> (d) Output Length =16⁢kabsent16𝑘=16k= 16 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/attn_cost_redelta.png)

> 🔼 This figure presents the results of Cuda Event Elapsed Time (CEET) measurements for the 'Attention Computation' module in the SIGMA and STD models when the output length is 32k tokens.  The x-axis represents the prefix length, and the y-axis displays the CEET in milliseconds.  Separate lines show the results for the SIGMA and STD models, allowing comparison of their efficiency in processing different prefix lengths. The plot helps demonstrate the effect of the SIGMA model's architecture, particularly its DiffQKV attention mechanism, on reducing computational time as prefix and sequence length increases.
> <details>
> <summary>read the caption</summary>
> (e) Output Length =32⁢kabsent32𝑘=32k= 32 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_2k.png)

> 🔼 This figure shows the results of the Cuda Event Elapsed Time (CEET) test when the output length is 64k tokens.  The CEET test measures the total time taken for different operations within the attention mechanism (KV cache, attention computation, and augmented Q).  By showing results for different prefix lengths (the amount of input text preceding the generation task), the plot helps to analyze how these operations' time changes with both increasing input and output length.
> <details>
> <summary>read the caption</summary>
> (f) Output Length =64⁢kabsent64𝑘=64k= 64 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_4k.png)

> 🔼 The figure shows the absolute improvement in Cuda Event Elapsed Time (CEET) achieved by SIGMA compared to the standard model (STD).  The x-axis represents the prefix length, while the y-axis shows the absolute difference in CEET (in milliseconds).  Positive values indicate that SIGMA outperforms STD; and negative values indicate that STD outperforms SIGMA. The plot is further divided into subplots with different output lengths to illustrate how the performance gap changes as both the context and generated sequence length increase.
> <details>
> <summary>read the caption</summary>
> (g) Sigma’s absolute CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_8k.png)

> 🔼 This figure shows the relative improvement in Cuda Event Elapsed Time (CEET) of SIGMA compared to the standard model (STD).  CEET measures the end-to-end time of specific operations. The relative improvement is calculated as the percentage decrease in CEET from STD to SIGMA. The figure likely displays this relative improvement across various conditions, such as different prefix and output sequence lengths, to illustrate how the performance gain changes under various scenarios.
> <details>
> <summary>read the caption</summary>
> (h) Sigma’s relative CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_16k.png)

> 🔼 Figure 5 presents a comparison of the Cuda Event Elapsed Time (CEET) for the attention computation module between the Standard model (STD) and SIGMA across different output lengths.  The x-axis represents the prefix length, while the y-axis shows the CEET in milliseconds. The figure is composed of six subfigures (a) through (f), each corresponding to a different output length, ranging from 2k to 64k tokens. Each subfigure contains two lines, one for SIGMA and one for STD, illustrating their respective computation times for the attention module. The results demonstrate that SIGMA exhibits superior efficiency compared to the STD, especially as the output and prefix lengths increase, which shows the effectiveness of the proposed DiffQKV attention module.
> <details>
> <summary>read the caption</summary>
> Figure 5: CEET comparison of attention computation between Standard model(Std) and Sigma. From (a) to (f), the output length increases progressively from 2k to 64k tokens.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_32k.png)

> 🔼 This figure shows the comparison of CUDA Event Elapsed Time (CEET) between SIGMA and the standard model (STD).  The plots display the CEET for different prefix lengths (0k, 2k, 4k, 16k, 32k, 64k) when generating sequences of length 2k. This illustrates the relative performance of SIGMA in terms of inference speed across various sequence lengths and demonstrates the efficiency gains achieved by SIGMA, especially in longer sequences.
> <details>
> <summary>read the caption</summary>
> (a) Output Length =2⁢kabsent2𝑘=2k= 2 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_64k.png)

> 🔼 This figure shows the results of the Kernel Execution Time (KET) test for the combine kernel when the output sequence length is 4k tokens. The combine kernel combines output chunks generated during the flash attention calculation.  The x-axis represents the prefix length (input sequence length), and the y-axis represents the execution time of the combine kernel. Separate lines show the results for the standard model (STD) and the SIGMA model.
> <details>
> <summary>read the caption</summary>
> (b) Output Length =4⁢kabsent4𝑘=4k= 4 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_delta.png)

> 🔼 The figure shows the results of the CUDA Event Elapsed Time (CEET) test for the attention computation.  The CEET measures the total time spent on attention computation. The x-axis represents the prefix length, and the y-axis represents the CEET in milliseconds. The figure shows that the time spent on attention computation increases with the increase of the prefix length. This is expected as the attention mechanism needs to process more tokens as the prefix length increases. The figure also shows that the time spent on attention computation is longer when the output length is 8k compared to other output lengths. This is because the attention mechanism needs to compute attention scores between the query and key vectors for all the tokens, including those in the output sequence. The longer the output sequence, the more computations required, and thus the longer the computation time.
> <details>
> <summary>read the caption</summary>
> (c) Output Length =8⁢kabsent8𝑘=8k= 8 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/extracted/6151052/Figures/total_cost_redelta.png)

> 🔼 This figure shows the results of measuring CUDA event elapsed time (CEET).  Specifically, it displays the CEET for different prefix lengths when the output length is fixed at 16k tokens.  The results are relevant to the efficiency analysis of the SIGMA model and highlight the impact of varying prefix lengths on overall processing time.
> <details>
> <summary>read the caption</summary>
> (d) Output Length =16⁢kabsent16𝑘=16k= 16 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/x2.png)

> 🔼 This figure shows the results from the Cuda Event Elapsed Time (CEET) test, specifically focusing on the scenario where the output length is 32k tokens.  The test measures the time taken for different stages of the attention mechanism: KV Cache (loading and storing key and value vectors), Attention Computation (calculating attention scores and weighted sums), and Augmented Q (applying a modified query component). By comparing the time taken for these stages between the SIGMA and Standard models across varying prefix lengths, the figure illustrates the efficiency gains achieved by SIGMA, particularly in long-context scenarios.
> <details>
> <summary>read the caption</summary>
> (e) Output Length =32⁢kabsent32𝑘=32k= 32 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/x3.png)

> 🔼 This figure shows the results of measuring the total cost of CUDA events elapsed time (CEET) for different prefix and output lengths when the output length is set to 64k tokens. The x-axis represents the prefix length, and the y-axis shows the CEET in milliseconds. The plot contains two lines: one for the standard model (STD) and one for SIGMA. The figure illustrates the efficiency gains of SIGMA compared to the standard model, especially as the context length increases.
> <details>
> <summary>read the caption</summary>
> (f) Output Length =64⁢kabsent64𝑘=64k= 64 italic_k.
> </details>



![](https://arxiv.org/html/2501.13629/x4.png)

> 🔼 The figure shows the absolute improvement in CUDA Event Elapsed Time (CEET) of SIGMA compared to the standard model (STD).  The improvement is calculated by subtracting the CEET of STD from that of SIGMA for different combinations of prefix and output lengths.  Positive values indicate that SIGMA is faster; negative values indicate that SIGMA is slower.  The x-axis represents the prefix length, and the y-axis shows the difference in CEET.
> <details>
> <summary>read the caption</summary>
> (g) Sigma’s absolute CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/x5.png)

> 🔼 This figure shows the relative improvement in CUDA Event Elapsed Time (CEET) achieved by SIGMA compared to the standard model (STD).  The relative improvement is calculated as ((STD CEET - SIGMA CEET) / STD CEET) * 100.  The figure likely displays this relative improvement across various experimental conditions, such as different sequence lengths of the input and output texts. It helps to visualize the efficiency gains of SIGMA, particularly in scenarios with longer sequences, where the improvements are expected to be more substantial.  The y-axis represents the relative improvement in percentage, and the x-axis likely represents the different experimental conditions.
> <details>
> <summary>read the caption</summary>
> (h) Sigma’s relative CEET improvment vs Std.
> </details>



![](https://arxiv.org/html/2501.13629/x6.png)

> 🔼 Figure 6 presents a comparison of the total computational cost (measured using CUDA Event Elapsed Time, or CEET) between the standard model (Std) and the SIGMA model for varying output lengths.  The x-axis represents the prefix length, and the y-axis displays the total CEET.  Subplots (a) through (f) show results for output lengths increasing from 2k to 64k tokens. A gray dashed line in each plot indicates the point where the computational costs of both models are equal. As the output length increases, this intersection point shifts left, indicating that SIGMA's efficiency advantage increases significantly for longer outputs.  For an output length of 64k tokens, SIGMA demonstrates a cost reduction of up to 33% when compared to the standard model. This illustrates the substantial efficiency gains of the SIGMA model, particularly in long-context scenarios, and validates the theoretical analysis presented earlier in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of total CEET cost between Standard model(Std) and Sigma. From (a) to (f), the output length increases progressively from 2k to 64k tokens. The gray dashed line indicates where the inference costs of both models are equal. As the output length increases, this intersection point moves progressively earlier. When generating 64k tokens, Sigma achieves up to a 33% reduction in inference cost compared to Std.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.11.9">
<tr class="ltx_tr" id="S2.T2.11.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.11.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.10.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.11.9.10.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.10.2.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T2.11.9.10.3"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.10.3.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T2.11.9.10.4"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.10.4.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.11.9.10.5"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.10.5.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.11.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.1">Hella.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.2">ObQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.3">Wino.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.4">ARC.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.5">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.6">SciQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.7">Bool.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.8">Logi.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.11.9.11.9">LAMB.</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S2.T2.4.2.2.2.1">MHA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T2.3.1.1.1.m1.1"><semantics id="S2.T2.3.1.1.1.m1.1a"><msubsup id="S2.T2.3.1.1.1.m1.1.1" xref="S2.T2.3.1.1.1.m1.1.1.cmml"><mi id="S2.T2.3.1.1.1.m1.1.1.2.2" xref="S2.T2.3.1.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T2.3.1.1.1.m1.1.1.2.3" xref="S2.T2.3.1.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T2.3.1.1.1.m1.1.1.3" xref="S2.T2.3.1.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.3.1.1.1.m1.1b"><apply id="S2.T2.3.1.1.1.m1.1.1.cmml" xref="S2.T2.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.3.1.1.1.m1.1.1.1.cmml" xref="S2.T2.3.1.1.1.m1.1.1">superscript</csymbol><apply id="S2.T2.3.1.1.1.m1.1.1.2.cmml" xref="S2.T2.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.3.1.1.1.m1.1.1.2.1.cmml" xref="S2.T2.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T2.3.1.1.1.m1.1.1.2.2.cmml" xref="S2.T2.3.1.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T2.3.1.1.1.m1.1.1.2.3.cmml" xref="S2.T2.3.1.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T2.3.1.1.1.m1.1.1.3.cmml" xref="S2.T2.3.1.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.1.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T2.4.2.2.2.m2.1"><semantics id="S2.T2.4.2.2.2.m2.1a"><msubsup id="S2.T2.4.2.2.2.m2.1.1" xref="S2.T2.4.2.2.2.m2.1.1.cmml"><mi id="S2.T2.4.2.2.2.m2.1.1.2.2" xref="S2.T2.4.2.2.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T2.4.2.2.2.m2.1.1.2.3" xref="S2.T2.4.2.2.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T2.4.2.2.2.m2.1.1.3" xref="S2.T2.4.2.2.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.4.2.2.2.m2.1b"><apply id="S2.T2.4.2.2.2.m2.1.1.cmml" xref="S2.T2.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.4.2.2.2.m2.1.1.1.cmml" xref="S2.T2.4.2.2.2.m2.1.1">superscript</csymbol><apply id="S2.T2.4.2.2.2.m2.1.1.2.cmml" xref="S2.T2.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.4.2.2.2.m2.1.1.2.1.cmml" xref="S2.T2.4.2.2.2.m2.1.1">subscript</csymbol><ci id="S2.T2.4.2.2.2.m2.1.1.2.2.cmml" xref="S2.T2.4.2.2.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T2.4.2.2.2.m2.1.1.2.3.cmml" xref="S2.T2.4.2.2.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T2.4.2.2.2.m2.1.1.3.cmml" xref="S2.T2.4.2.2.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.2.2.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.2.2.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=32)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.4.2.2.3"><span class="ltx_text ltx_font_bold" id="S2.T2.4.2.2.3.1">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.4">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.5">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.6">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.7">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.8">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.9">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.10">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.11">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.4.2.2.12">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.3.3" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left" id="S2.T2.5.3.3.2">
<em class="ltx_emph ltx_font_italic" id="S2.T2.5.3.3.2.1" style="background-color:#EDEDEE;">w/</em><span class="ltx_text" id="S2.T2.5.3.3.2.2" style="background-color:#EDEDEE;"> Half K Dim.</span>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.5.3.3.1"><span class="ltx_text ltx_font_bold" id="S2.T2.5.3.3.1.1" style="background-color:#EDEDEE;">52.56<span class="ltx_text ltx_font_medium" id="S2.T2.5.3.3.1.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.5.3.3.1.1.1.m1.1"><semantics id="S2.T2.5.3.3.1.1.1.m1.1a"><mo id="S2.T2.5.3.3.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T2.5.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.5.3.3.1.1.1.m1.1b"><ci id="S2.T2.5.3.3.1.1.1.m1.1.1.cmml" xref="S2.T2.5.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>0.16)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.3"><span class="ltx_text" id="S2.T2.5.3.3.3.1" style="background-color:#EDEDEE;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.4"><span class="ltx_text" id="S2.T2.5.3.3.4.1" style="background-color:#EDEDEE;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.5"><span class="ltx_text" id="S2.T2.5.3.3.5.1" style="background-color:#EDEDEE;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.6"><span class="ltx_text" id="S2.T2.5.3.3.6.1" style="background-color:#EDEDEE;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.7"><span class="ltx_text" id="S2.T2.5.3.3.7.1" style="background-color:#EDEDEE;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.8"><span class="ltx_text" id="S2.T2.5.3.3.8.1" style="background-color:#EDEDEE;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.9"><span class="ltx_text" id="S2.T2.5.3.3.9.1" style="background-color:#EDEDEE;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.10"><span class="ltx_text" id="S2.T2.5.3.3.10.1" style="background-color:#EDEDEE;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.3.3.11"><span class="ltx_text" id="S2.T2.5.3.3.11.1" style="background-color:#EDEDEE;">36.8</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.7.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.7.5.5.2">
<span class="ltx_text ltx_font_bold" id="S2.T2.7.5.5.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T2.6.4.4.1.m1.1"><semantics id="S2.T2.6.4.4.1.m1.1a"><msubsup id="S2.T2.6.4.4.1.m1.1.1" xref="S2.T2.6.4.4.1.m1.1.1.cmml"><mi id="S2.T2.6.4.4.1.m1.1.1.2.2" xref="S2.T2.6.4.4.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T2.6.4.4.1.m1.1.1.2.3" xref="S2.T2.6.4.4.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T2.6.4.4.1.m1.1.1.3" xref="S2.T2.6.4.4.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.6.4.4.1.m1.1b"><apply id="S2.T2.6.4.4.1.m1.1.1.cmml" xref="S2.T2.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.6.4.4.1.m1.1.1.1.cmml" xref="S2.T2.6.4.4.1.m1.1.1">superscript</csymbol><apply id="S2.T2.6.4.4.1.m1.1.1.2.cmml" xref="S2.T2.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.6.4.4.1.m1.1.1.2.1.cmml" xref="S2.T2.6.4.4.1.m1.1.1">subscript</csymbol><ci id="S2.T2.6.4.4.1.m1.1.1.2.2.cmml" xref="S2.T2.6.4.4.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T2.6.4.4.1.m1.1.1.2.3.cmml" xref="S2.T2.6.4.4.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T2.6.4.4.1.m1.1.1.3.cmml" xref="S2.T2.6.4.4.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.6.4.4.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.6.4.4.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T2.7.5.5.2.m2.1"><semantics id="S2.T2.7.5.5.2.m2.1a"><msubsup id="S2.T2.7.5.5.2.m2.1.1" xref="S2.T2.7.5.5.2.m2.1.1.cmml"><mi id="S2.T2.7.5.5.2.m2.1.1.2.2" xref="S2.T2.7.5.5.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T2.7.5.5.2.m2.1.1.2.3" xref="S2.T2.7.5.5.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T2.7.5.5.2.m2.1.1.3" xref="S2.T2.7.5.5.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.7.5.5.2.m2.1b"><apply id="S2.T2.7.5.5.2.m2.1.1.cmml" xref="S2.T2.7.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.7.5.5.2.m2.1.1.1.cmml" xref="S2.T2.7.5.5.2.m2.1.1">superscript</csymbol><apply id="S2.T2.7.5.5.2.m2.1.1.2.cmml" xref="S2.T2.7.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.7.5.5.2.m2.1.1.2.1.cmml" xref="S2.T2.7.5.5.2.m2.1.1">subscript</csymbol><ci id="S2.T2.7.5.5.2.m2.1.1.2.2.cmml" xref="S2.T2.7.5.5.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T2.7.5.5.2.m2.1.1.2.3.cmml" xref="S2.T2.7.5.5.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T2.7.5.5.2.m2.1.1.3.cmml" xref="S2.T2.7.5.5.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.7.5.5.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.7.5.5.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.7.5.5.3"><span class="ltx_text ltx_font_bold" id="S2.T2.7.5.5.3.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.4">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.5">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.6">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.7">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.8">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.9">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.10">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.11">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.5.5.12">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T2.8.6.6" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left" id="S2.T2.8.6.6.2">
<em class="ltx_emph ltx_font_italic" id="S2.T2.8.6.6.2.1" style="background-color:#EDEDEE;">w/</em><span class="ltx_text" id="S2.T2.8.6.6.2.2" style="background-color:#EDEDEE;"> Half K Dim.</span>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.8.6.6.1"><span class="ltx_text ltx_font_bold" id="S2.T2.8.6.6.1.1" style="background-color:#EDEDEE;">52.06<span class="ltx_text ltx_font_medium" id="S2.T2.8.6.6.1.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T2.8.6.6.1.1.1.m1.1"><semantics id="S2.T2.8.6.6.1.1.1.m1.1a"><mo id="S2.T2.8.6.6.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T2.8.6.6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T2.8.6.6.1.1.1.m1.1b"><ci id="S2.T2.8.6.6.1.1.1.m1.1.1.cmml" xref="S2.T2.8.6.6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.8.6.6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.8.6.6.1.1.1.m1.1d">↓</annotation></semantics></math>0.08)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.3"><span class="ltx_text" id="S2.T2.8.6.6.3.1" style="background-color:#EDEDEE;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.4"><span class="ltx_text" id="S2.T2.8.6.6.4.1" style="background-color:#EDEDEE;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.5"><span class="ltx_text" id="S2.T2.8.6.6.5.1" style="background-color:#EDEDEE;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.6"><span class="ltx_text" id="S2.T2.8.6.6.6.1" style="background-color:#EDEDEE;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.7"><span class="ltx_text" id="S2.T2.8.6.6.7.1" style="background-color:#EDEDEE;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.8"><span class="ltx_text" id="S2.T2.8.6.6.8.1" style="background-color:#EDEDEE;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.9"><span class="ltx_text" id="S2.T2.8.6.6.9.1" style="background-color:#EDEDEE;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.10"><span class="ltx_text" id="S2.T2.8.6.6.10.1" style="background-color:#EDEDEE;">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.6.6.11"><span class="ltx_text" id="S2.T2.8.6.6.11.1" style="background-color:#EDEDEE;">36.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.10.8.8.2">
<span class="ltx_text ltx_font_bold" id="S2.T2.10.8.8.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T2.9.7.7.1.m1.1"><semantics id="S2.T2.9.7.7.1.m1.1a"><msubsup id="S2.T2.9.7.7.1.m1.1.1" xref="S2.T2.9.7.7.1.m1.1.1.cmml"><mi id="S2.T2.9.7.7.1.m1.1.1.2.2" xref="S2.T2.9.7.7.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T2.9.7.7.1.m1.1.1.2.3" xref="S2.T2.9.7.7.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T2.9.7.7.1.m1.1.1.3" xref="S2.T2.9.7.7.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.9.7.7.1.m1.1b"><apply id="S2.T2.9.7.7.1.m1.1.1.cmml" xref="S2.T2.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.9.7.7.1.m1.1.1.1.cmml" xref="S2.T2.9.7.7.1.m1.1.1">superscript</csymbol><apply id="S2.T2.9.7.7.1.m1.1.1.2.cmml" xref="S2.T2.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.9.7.7.1.m1.1.1.2.1.cmml" xref="S2.T2.9.7.7.1.m1.1.1">subscript</csymbol><ci id="S2.T2.9.7.7.1.m1.1.1.2.2.cmml" xref="S2.T2.9.7.7.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T2.9.7.7.1.m1.1.1.2.3.cmml" xref="S2.T2.9.7.7.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T2.9.7.7.1.m1.1.1.3.cmml" xref="S2.T2.9.7.7.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.9.7.7.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.9.7.7.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T2.10.8.8.2.m2.1"><semantics id="S2.T2.10.8.8.2.m2.1a"><msubsup id="S2.T2.10.8.8.2.m2.1.1" xref="S2.T2.10.8.8.2.m2.1.1.cmml"><mi id="S2.T2.10.8.8.2.m2.1.1.2.2" xref="S2.T2.10.8.8.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T2.10.8.8.2.m2.1.1.2.3" xref="S2.T2.10.8.8.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T2.10.8.8.2.m2.1.1.3" xref="S2.T2.10.8.8.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T2.10.8.8.2.m2.1b"><apply id="S2.T2.10.8.8.2.m2.1.1.cmml" xref="S2.T2.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.10.8.8.2.m2.1.1.1.cmml" xref="S2.T2.10.8.8.2.m2.1.1">superscript</csymbol><apply id="S2.T2.10.8.8.2.m2.1.1.2.cmml" xref="S2.T2.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.10.8.8.2.m2.1.1.2.1.cmml" xref="S2.T2.10.8.8.2.m2.1.1">subscript</csymbol><ci id="S2.T2.10.8.8.2.m2.1.1.2.2.cmml" xref="S2.T2.10.8.8.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T2.10.8.8.2.m2.1.1.2.3.cmml" xref="S2.T2.10.8.8.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T2.10.8.8.2.m2.1.1.3.cmml" xref="S2.T2.10.8.8.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.10.8.8.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.10.8.8.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.10.8.8.3"><span class="ltx_text ltx_font_bold" id="S2.T2.10.8.8.3.1">51.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.4">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.5">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.6">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.7">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.8">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.9">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.10">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.11">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.8.8.12">35.4</td>
</tr>
<tr class="ltx_tr" id="S2.T2.11.9.9" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.11.9.9.2">
<em class="ltx_emph ltx_font_italic" id="S2.T2.11.9.9.2.1" style="background-color:#EDEDEE;">w/</em><span class="ltx_text" id="S2.T2.11.9.9.2.2" style="background-color:#EDEDEE;"> Half K Dim.</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.11.9.9.1"><span class="ltx_text ltx_font_bold" id="S2.T2.11.9.9.1.1" style="background-color:#EDEDEE;">51.92<span class="ltx_text ltx_font_medium" id="S2.T2.11.9.9.1.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.11.9.9.1.1.1.m1.1"><semantics id="S2.T2.11.9.9.1.1.1.m1.1a"><mo id="S2.T2.11.9.9.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T2.11.9.9.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.11.9.9.1.1.1.m1.1b"><ci id="S2.T2.11.9.9.1.1.1.m1.1.1.cmml" xref="S2.T2.11.9.9.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.11.9.9.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.11.9.9.1.1.1.m1.1d">↑</annotation></semantics></math>0.26)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.3"><span class="ltx_text" id="S2.T2.11.9.9.3.1" style="background-color:#EDEDEE;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.4"><span class="ltx_text" id="S2.T2.11.9.9.4.1" style="background-color:#EDEDEE;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.5"><span class="ltx_text" id="S2.T2.11.9.9.5.1" style="background-color:#EDEDEE;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.6"><span class="ltx_text" id="S2.T2.11.9.9.6.1" style="background-color:#EDEDEE;">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.7"><span class="ltx_text" id="S2.T2.11.9.9.7.1" style="background-color:#EDEDEE;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.8"><span class="ltx_text" id="S2.T2.11.9.9.8.1" style="background-color:#EDEDEE;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.9"><span class="ltx_text" id="S2.T2.11.9.9.9.1" style="background-color:#EDEDEE;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.10"><span class="ltx_text" id="S2.T2.11.9.9.10.1" style="background-color:#EDEDEE;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.11.9.9.11"><span class="ltx_text" id="S2.T2.11.9.9.11.1" style="background-color:#EDEDEE;">34.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study investigating the impact of halving the Key (K) head dimension on the model's performance.  It explores the trade-off between inference efficiency (achieved by reducing the size of the Key-Value (KV) cache) and the potential compromise in accuracy. The study maintains a consistent number of Query (Q) heads (32) across all model variations to isolate the effect of the K head dimension change. The results demonstrate that reducing the K head dimension significantly improves inference speed without substantially affecting overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: The ablation studies of halving the K head dimension. The results indicate that this adjustment, while largely improving the inference efficiency by reducing the size of KV cache, does not significantly compromise performance. The number of Q heads is 32 for all models (nqh=32superscriptsubscript𝑛𝑞ℎ32n_{q}^{h}=32italic_n start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT = 32).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T3.11.9">
<tr class="ltx_tr" id="S2.T3.11.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T3.11.9.10.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.10.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T3.11.9.10.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.10.2.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T3.11.9.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.10.3.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T3.11.9.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.10.4.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T3.11.9.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.10.5.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.11.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">Hella.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">ObQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">Wino.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.4" style="padding-left:5.0pt;padding-right:5.0pt;">ARC.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.5" style="padding-left:5.0pt;padding-right:5.0pt;">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.6" style="padding-left:5.0pt;padding-right:5.0pt;">SciQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.7" style="padding-left:5.0pt;padding-right:5.0pt;">Bool.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.8" style="padding-left:5.0pt;padding-right:5.0pt;">Logi.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.11.9.11.9" style="padding-left:5.0pt;padding-right:5.0pt;">LAMB.</td>
</tr>
<tr class="ltx_tr" id="S2.T3.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.4.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T3.4.2.2.2.1">MHA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T3.3.1.1.1.m1.1"><semantics id="S2.T3.3.1.1.1.m1.1a"><msubsup id="S2.T3.3.1.1.1.m1.1.1" xref="S2.T3.3.1.1.1.m1.1.1.cmml"><mi id="S2.T3.3.1.1.1.m1.1.1.2.2" xref="S2.T3.3.1.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T3.3.1.1.1.m1.1.1.2.3" xref="S2.T3.3.1.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T3.3.1.1.1.m1.1.1.3" xref="S2.T3.3.1.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.3.1.1.1.m1.1b"><apply id="S2.T3.3.1.1.1.m1.1.1.cmml" xref="S2.T3.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.3.1.1.1.m1.1.1.1.cmml" xref="S2.T3.3.1.1.1.m1.1.1">superscript</csymbol><apply id="S2.T3.3.1.1.1.m1.1.1.2.cmml" xref="S2.T3.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.3.1.1.1.m1.1.1.2.1.cmml" xref="S2.T3.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T3.3.1.1.1.m1.1.1.2.2.cmml" xref="S2.T3.3.1.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T3.3.1.1.1.m1.1.1.2.3.cmml" xref="S2.T3.3.1.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T3.3.1.1.1.m1.1.1.3.cmml" xref="S2.T3.3.1.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.3.1.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.3.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T3.4.2.2.2.m2.1"><semantics id="S2.T3.4.2.2.2.m2.1a"><msubsup id="S2.T3.4.2.2.2.m2.1.1" xref="S2.T3.4.2.2.2.m2.1.1.cmml"><mi id="S2.T3.4.2.2.2.m2.1.1.2.2" xref="S2.T3.4.2.2.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T3.4.2.2.2.m2.1.1.2.3" xref="S2.T3.4.2.2.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T3.4.2.2.2.m2.1.1.3" xref="S2.T3.4.2.2.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.4.2.2.2.m2.1b"><apply id="S2.T3.4.2.2.2.m2.1.1.cmml" xref="S2.T3.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.4.2.2.2.m2.1.1.1.cmml" xref="S2.T3.4.2.2.2.m2.1.1">superscript</csymbol><apply id="S2.T3.4.2.2.2.m2.1.1.2.cmml" xref="S2.T3.4.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.4.2.2.2.m2.1.1.2.1.cmml" xref="S2.T3.4.2.2.2.m2.1.1">subscript</csymbol><ci id="S2.T3.4.2.2.2.m2.1.1.2.2.cmml" xref="S2.T3.4.2.2.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T3.4.2.2.2.m2.1.1.2.3.cmml" xref="S2.T3.4.2.2.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T3.4.2.2.2.m2.1.1.3.cmml" xref="S2.T3.4.2.2.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.4.2.2.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.4.2.2.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=32)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.4.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.4.2.2.3.1">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.7" style="padding-left:5.0pt;padding-right:5.0pt;">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.8" style="padding-left:5.0pt;padding-right:5.0pt;">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.9" style="padding-left:5.0pt;padding-right:5.0pt;">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.10" style="padding-left:5.0pt;padding-right:5.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.11" style="padding-left:5.0pt;padding-right:5.0pt;">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.4.2.2.12" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T3.5.3.3" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left" id="S2.T3.5.3.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.2.1" style="background-color:#EDEDEE;">+ Sel.V-top100</span></td>
<td class="ltx_td ltx_align_left" id="S2.T3.5.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.5.3.3.1.1" style="background-color:#EDEDEE;">52.10<span class="ltx_text ltx_font_medium" id="S2.T3.5.3.3.1.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T3.5.3.3.1.1.1.m1.1"><semantics id="S2.T3.5.3.3.1.1.1.m1.1a"><mo id="S2.T3.5.3.3.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T3.5.3.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T3.5.3.3.1.1.1.m1.1b"><ci id="S2.T3.5.3.3.1.1.1.m1.1.1.cmml" xref="S2.T3.5.3.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.5.3.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.5.3.3.1.1.1.m1.1d">↓</annotation></semantics></math>0.30)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.3.1" style="background-color:#EDEDEE;">55.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.4.1" style="background-color:#EDEDEE;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.5.1" style="background-color:#EDEDEE;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.6.1" style="background-color:#EDEDEE;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.7.1" style="background-color:#EDEDEE;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.8.1" style="background-color:#EDEDEE;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.9.1" style="background-color:#EDEDEE;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.10.1" style="background-color:#EDEDEE;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.5.3.3.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.5.3.3.11.1" style="background-color:#EDEDEE;">36.9</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.7.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.7.5.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T3.7.5.5.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T3.6.4.4.1.m1.1"><semantics id="S2.T3.6.4.4.1.m1.1a"><msubsup id="S2.T3.6.4.4.1.m1.1.1" xref="S2.T3.6.4.4.1.m1.1.1.cmml"><mi id="S2.T3.6.4.4.1.m1.1.1.2.2" xref="S2.T3.6.4.4.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T3.6.4.4.1.m1.1.1.2.3" xref="S2.T3.6.4.4.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T3.6.4.4.1.m1.1.1.3" xref="S2.T3.6.4.4.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.6.4.4.1.m1.1b"><apply id="S2.T3.6.4.4.1.m1.1.1.cmml" xref="S2.T3.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.6.4.4.1.m1.1.1.1.cmml" xref="S2.T3.6.4.4.1.m1.1.1">superscript</csymbol><apply id="S2.T3.6.4.4.1.m1.1.1.2.cmml" xref="S2.T3.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.6.4.4.1.m1.1.1.2.1.cmml" xref="S2.T3.6.4.4.1.m1.1.1">subscript</csymbol><ci id="S2.T3.6.4.4.1.m1.1.1.2.2.cmml" xref="S2.T3.6.4.4.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T3.6.4.4.1.m1.1.1.2.3.cmml" xref="S2.T3.6.4.4.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T3.6.4.4.1.m1.1.1.3.cmml" xref="S2.T3.6.4.4.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.6.4.4.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.6.4.4.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T3.7.5.5.2.m2.1"><semantics id="S2.T3.7.5.5.2.m2.1a"><msubsup id="S2.T3.7.5.5.2.m2.1.1" xref="S2.T3.7.5.5.2.m2.1.1.cmml"><mi id="S2.T3.7.5.5.2.m2.1.1.2.2" xref="S2.T3.7.5.5.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T3.7.5.5.2.m2.1.1.2.3" xref="S2.T3.7.5.5.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T3.7.5.5.2.m2.1.1.3" xref="S2.T3.7.5.5.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.7.5.5.2.m2.1b"><apply id="S2.T3.7.5.5.2.m2.1.1.cmml" xref="S2.T3.7.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.7.5.5.2.m2.1.1.1.cmml" xref="S2.T3.7.5.5.2.m2.1.1">superscript</csymbol><apply id="S2.T3.7.5.5.2.m2.1.1.2.cmml" xref="S2.T3.7.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.7.5.5.2.m2.1.1.2.1.cmml" xref="S2.T3.7.5.5.2.m2.1.1">subscript</csymbol><ci id="S2.T3.7.5.5.2.m2.1.1.2.2.cmml" xref="S2.T3.7.5.5.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T3.7.5.5.2.m2.1.1.2.3.cmml" xref="S2.T3.7.5.5.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T3.7.5.5.2.m2.1.1.3.cmml" xref="S2.T3.7.5.5.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.7.5.5.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.7.5.5.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.7.5.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.7.5.5.3.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.4" style="padding-left:5.0pt;padding-right:5.0pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.6" style="padding-left:5.0pt;padding-right:5.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.7" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.8" style="padding-left:5.0pt;padding-right:5.0pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.9" style="padding-left:5.0pt;padding-right:5.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.10" style="padding-left:5.0pt;padding-right:5.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.11" style="padding-left:5.0pt;padding-right:5.0pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.7.5.5.12" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.6.6" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left" id="S2.T3.8.6.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.2.1" style="background-color:#EDEDEE;">+ Sel.V-top100</span></td>
<td class="ltx_td ltx_align_left" id="S2.T3.8.6.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.8.6.6.1.1" style="background-color:#EDEDEE;">52.08<span class="ltx_text ltx_font_medium" id="S2.T3.8.6.6.1.1.1"> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T3.8.6.6.1.1.1.m1.1"><semantics id="S2.T3.8.6.6.1.1.1.m1.1a"><mo id="S2.T3.8.6.6.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T3.8.6.6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T3.8.6.6.1.1.1.m1.1b"><ci id="S2.T3.8.6.6.1.1.1.m1.1.1.cmml" xref="S2.T3.8.6.6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.8.6.6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.8.6.6.1.1.1.m1.1d">↓</annotation></semantics></math>0.06)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.3.1" style="background-color:#EDEDEE;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.4.1" style="background-color:#EDEDEE;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.5.1" style="background-color:#EDEDEE;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.6.1" style="background-color:#EDEDEE;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.7.1" style="background-color:#EDEDEE;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.8.1" style="background-color:#EDEDEE;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.9.1" style="background-color:#EDEDEE;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.10.1" style="background-color:#EDEDEE;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T3.8.6.6.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.8.6.6.11.1" style="background-color:#EDEDEE;">36.7</span></td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.10.8.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T3.10.8.8.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T3.9.7.7.1.m1.1"><semantics id="S2.T3.9.7.7.1.m1.1a"><msubsup id="S2.T3.9.7.7.1.m1.1.1" xref="S2.T3.9.7.7.1.m1.1.1.cmml"><mi id="S2.T3.9.7.7.1.m1.1.1.2.2" xref="S2.T3.9.7.7.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T3.9.7.7.1.m1.1.1.2.3" xref="S2.T3.9.7.7.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T3.9.7.7.1.m1.1.1.3" xref="S2.T3.9.7.7.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.9.7.7.1.m1.1b"><apply id="S2.T3.9.7.7.1.m1.1.1.cmml" xref="S2.T3.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.9.7.7.1.m1.1.1.1.cmml" xref="S2.T3.9.7.7.1.m1.1.1">superscript</csymbol><apply id="S2.T3.9.7.7.1.m1.1.1.2.cmml" xref="S2.T3.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T3.9.7.7.1.m1.1.1.2.1.cmml" xref="S2.T3.9.7.7.1.m1.1.1">subscript</csymbol><ci id="S2.T3.9.7.7.1.m1.1.1.2.2.cmml" xref="S2.T3.9.7.7.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T3.9.7.7.1.m1.1.1.2.3.cmml" xref="S2.T3.9.7.7.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T3.9.7.7.1.m1.1.1.3.cmml" xref="S2.T3.9.7.7.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.9.7.7.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.9.7.7.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T3.10.8.8.2.m2.1"><semantics id="S2.T3.10.8.8.2.m2.1a"><msubsup id="S2.T3.10.8.8.2.m2.1.1" xref="S2.T3.10.8.8.2.m2.1.1.cmml"><mi id="S2.T3.10.8.8.2.m2.1.1.2.2" xref="S2.T3.10.8.8.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T3.10.8.8.2.m2.1.1.2.3" xref="S2.T3.10.8.8.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T3.10.8.8.2.m2.1.1.3" xref="S2.T3.10.8.8.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T3.10.8.8.2.m2.1b"><apply id="S2.T3.10.8.8.2.m2.1.1.cmml" xref="S2.T3.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.10.8.8.2.m2.1.1.1.cmml" xref="S2.T3.10.8.8.2.m2.1.1">superscript</csymbol><apply id="S2.T3.10.8.8.2.m2.1.1.2.cmml" xref="S2.T3.10.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T3.10.8.8.2.m2.1.1.2.1.cmml" xref="S2.T3.10.8.8.2.m2.1.1">subscript</csymbol><ci id="S2.T3.10.8.8.2.m2.1.1.2.2.cmml" xref="S2.T3.10.8.8.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T3.10.8.8.2.m2.1.1.2.3.cmml" xref="S2.T3.10.8.8.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T3.10.8.8.2.m2.1.1.3.cmml" xref="S2.T3.10.8.8.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.10.8.8.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.10.8.8.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.10.8.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.10.8.8.3.1">51.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.8" style="padding-left:5.0pt;padding-right:5.0pt;">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.9" style="padding-left:5.0pt;padding-right:5.0pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.10" style="padding-left:5.0pt;padding-right:5.0pt;">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.11" style="padding-left:5.0pt;padding-right:5.0pt;">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T3.10.8.8.12" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
</tr>
<tr class="ltx_tr" id="S2.T3.11.9.9" style="background-color:#EDEDEE;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T3.11.9.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.2.1" style="background-color:#EDEDEE;">+ Sel.V-top100</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T3.11.9.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T3.11.9.9.1.1" style="background-color:#EDEDEE;">51.67<span class="ltx_text ltx_font_medium" id="S2.T3.11.9.9.1.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T3.11.9.9.1.1.1.m1.1"><semantics id="S2.T3.11.9.9.1.1.1.m1.1a"><mo id="S2.T3.11.9.9.1.1.1.m1.1.1" mathbackground="#EDEDEE" stretchy="false" xref="S2.T3.11.9.9.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T3.11.9.9.1.1.1.m1.1b"><ci id="S2.T3.11.9.9.1.1.1.m1.1.1.cmml" xref="S2.T3.11.9.9.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.11.9.9.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T3.11.9.9.1.1.1.m1.1d">↑</annotation></semantics></math>0.01)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.3.1" style="background-color:#EDEDEE;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.4.1" style="background-color:#EDEDEE;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.5.1" style="background-color:#EDEDEE;">55.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.6.1" style="background-color:#EDEDEE;">37.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.7.1" style="background-color:#EDEDEE;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.8.1" style="background-color:#EDEDEE;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.9.1" style="background-color:#EDEDEE;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.10.1" style="background-color:#EDEDEE;">28.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T3.11.9.9.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T3.11.9.9.11.1" style="background-color:#EDEDEE;">35.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of selectively loading only the top V vectors (those with the highest attention scores) during approximate calculations within the attention mechanism.  The goal was to assess the trade-off between model performance and inference efficiency by reducing memory usage.  The number of query heads (Q) was held constant at 32 across all model variations in this experiment.
> <details>
> <summary>read the caption</summary>
> Table 3: The ablation studies of the model performance when only selectively loading the V vectors corresponding to the highest attention scores for approximate calculation. This operation significantly enhances inference efficiency by reducing memory usage. The number of Q heads is 32 for all models in the table (nqh=32superscriptsubscript𝑛𝑞ℎ32n_{q}^{h}=32italic_n start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT = 32).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T4.20.14">
<tr class="ltx_tr" id="S2.T4.20.14.15">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T4.20.14.15.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.15.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T4.20.14.15.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.15.2.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T4.20.14.15.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.15.3.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T4.20.14.15.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.15.4.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T4.20.14.15.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.15.5.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.20.14.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.1" style="padding-left:5.0pt;padding-right:5.0pt;">Hella.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.2" style="padding-left:5.0pt;padding-right:5.0pt;">ObQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.3" style="padding-left:5.0pt;padding-right:5.0pt;">Wino.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.4" style="padding-left:5.0pt;padding-right:5.0pt;">ARC.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.5" style="padding-left:5.0pt;padding-right:5.0pt;">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.6" style="padding-left:5.0pt;padding-right:5.0pt;">SciQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.7" style="padding-left:5.0pt;padding-right:5.0pt;">Bool.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.8" style="padding-left:5.0pt;padding-right:5.0pt;">Logi.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.16.9" style="padding-left:5.0pt;padding-right:5.0pt;">LAMB.</td>
</tr>
<tr class="ltx_tr" id="S2.T4.20.14.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.20.14.17.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.17.1.1">MHA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.20.14.17.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.17.2.1">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.3" style="padding-left:5.0pt;padding-right:5.0pt;">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.4" style="padding-left:5.0pt;padding-right:5.0pt;">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.5" style="padding-left:5.0pt;padding-right:5.0pt;">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.6" style="padding-left:5.0pt;padding-right:5.0pt;">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.7" style="padding-left:5.0pt;padding-right:5.0pt;">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.8" style="padding-left:5.0pt;padding-right:5.0pt;">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.9" style="padding-left:5.0pt;padding-right:5.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.10" style="padding-left:5.0pt;padding-right:5.0pt;">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.20.14.17.11" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T4.8.2.2" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T4.7.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.7.1.1.1.1" style="background-color:#E7E7E8;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T4.7.1.1.1.1.m1.1"><semantics id="S2.T4.7.1.1.1.1.m1.1a"><msubsup id="S2.T4.7.1.1.1.1.m1.1.1" xref="S2.T4.7.1.1.1.1.m1.1.1.cmml"><mi id="S2.T4.7.1.1.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T4.7.1.1.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T4.7.1.1.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T4.7.1.1.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T4.7.1.1.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T4.7.1.1.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.7.1.1.1.1.m1.1b"><apply id="S2.T4.7.1.1.1.1.m1.1.1.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.7.1.1.1.1.m1.1.1.1.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1">superscript</csymbol><apply id="S2.T4.7.1.1.1.1.m1.1.1.2.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.7.1.1.1.1.m1.1.1.2.1.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T4.7.1.1.1.1.m1.1.1.2.2.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T4.7.1.1.1.1.m1.1.1.2.3.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T4.7.1.1.1.1.m1.1.1.3.cmml" xref="S2.T4.7.1.1.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.7.1.1.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.7.1.1.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=5632)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T4.8.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.8.2.2.2.1" style="background-color:#E7E7E8;">53.03<span class="ltx_text ltx_font_medium" id="S2.T4.8.2.2.2.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.8.2.2.2.1.1.m1.1"><semantics id="S2.T4.8.2.2.2.1.1.m1.1a"><mo id="S2.T4.8.2.2.2.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T4.8.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.8.2.2.2.1.1.m1.1b"><ci id="S2.T4.8.2.2.2.1.1.m1.1.1.cmml" xref="S2.T4.8.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.8.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.8.2.2.2.1.1.m1.1d">↑</annotation></semantics></math>0.63)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.3.1" style="background-color:#E7E7E8;">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.4.1" style="background-color:#E7E7E8;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.5.1" style="background-color:#E7E7E8;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.6.1" style="background-color:#E7E7E8;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.7.1" style="background-color:#E7E7E8;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.8.1" style="background-color:#E7E7E8;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.9.1" style="background-color:#E7E7E8;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.10.1" style="background-color:#E7E7E8;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.8.2.2.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.8.2.2.11.1" style="background-color:#E7E7E8;">38.3</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.10.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.10.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T4.10.4.4.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T4.9.3.3.1.m1.1"><semantics id="S2.T4.9.3.3.1.m1.1a"><msubsup id="S2.T4.9.3.3.1.m1.1.1" xref="S2.T4.9.3.3.1.m1.1.1.cmml"><mi id="S2.T4.9.3.3.1.m1.1.1.2.2" xref="S2.T4.9.3.3.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T4.9.3.3.1.m1.1.1.2.3" xref="S2.T4.9.3.3.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T4.9.3.3.1.m1.1.1.3" xref="S2.T4.9.3.3.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.9.3.3.1.m1.1b"><apply id="S2.T4.9.3.3.1.m1.1.1.cmml" xref="S2.T4.9.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.9.3.3.1.m1.1.1.1.cmml" xref="S2.T4.9.3.3.1.m1.1.1">superscript</csymbol><apply id="S2.T4.9.3.3.1.m1.1.1.2.cmml" xref="S2.T4.9.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.9.3.3.1.m1.1.1.2.1.cmml" xref="S2.T4.9.3.3.1.m1.1.1">subscript</csymbol><ci id="S2.T4.9.3.3.1.m1.1.1.2.2.cmml" xref="S2.T4.9.3.3.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T4.9.3.3.1.m1.1.1.2.3.cmml" xref="S2.T4.9.3.3.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T4.9.3.3.1.m1.1.1.3.cmml" xref="S2.T4.9.3.3.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.9.3.3.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.9.3.3.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T4.10.4.4.2.m2.1"><semantics id="S2.T4.10.4.4.2.m2.1a"><msubsup id="S2.T4.10.4.4.2.m2.1.1" xref="S2.T4.10.4.4.2.m2.1.1.cmml"><mi id="S2.T4.10.4.4.2.m2.1.1.2.2" xref="S2.T4.10.4.4.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T4.10.4.4.2.m2.1.1.2.3" xref="S2.T4.10.4.4.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T4.10.4.4.2.m2.1.1.3" xref="S2.T4.10.4.4.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.10.4.4.2.m2.1b"><apply id="S2.T4.10.4.4.2.m2.1.1.cmml" xref="S2.T4.10.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T4.10.4.4.2.m2.1.1.1.cmml" xref="S2.T4.10.4.4.2.m2.1.1">superscript</csymbol><apply id="S2.T4.10.4.4.2.m2.1.1.2.cmml" xref="S2.T4.10.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T4.10.4.4.2.m2.1.1.2.1.cmml" xref="S2.T4.10.4.4.2.m2.1.1">subscript</csymbol><ci id="S2.T4.10.4.4.2.m2.1.1.2.2.cmml" xref="S2.T4.10.4.4.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T4.10.4.4.2.m2.1.1.2.3.cmml" xref="S2.T4.10.4.4.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T4.10.4.4.2.m2.1.1.3.cmml" xref="S2.T4.10.4.4.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.10.4.4.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.10.4.4.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.10.4.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.10.4.4.3.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.6" style="padding-left:5.0pt;padding-right:5.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.7" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.8" style="padding-left:5.0pt;padding-right:5.0pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.9" style="padding-left:5.0pt;padding-right:5.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.10" style="padding-left:5.0pt;padding-right:5.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.11" style="padding-left:5.0pt;padding-right:5.0pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.10.4.4.12" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T4.12.6.6" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_left" id="S2.T4.11.5.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.11.5.5.1.1" style="background-color:#F9F9F9;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T4.11.5.5.1.1.m1.1"><semantics id="S2.T4.11.5.5.1.1.m1.1a"><msubsup id="S2.T4.11.5.5.1.1.m1.1.1" xref="S2.T4.11.5.5.1.1.m1.1.1.cmml"><mi id="S2.T4.11.5.5.1.1.m1.1.1.2.2" mathbackground="#F9F9F9" xref="S2.T4.11.5.5.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T4.11.5.5.1.1.m1.1.1.2.3" mathbackground="#F9F9F9" xref="S2.T4.11.5.5.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T4.11.5.5.1.1.m1.1.1.3" mathbackground="#F9F9F9" xref="S2.T4.11.5.5.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.11.5.5.1.1.m1.1b"><apply id="S2.T4.11.5.5.1.1.m1.1.1.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.11.5.5.1.1.m1.1.1.1.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1">superscript</csymbol><apply id="S2.T4.11.5.5.1.1.m1.1.1.2.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.11.5.5.1.1.m1.1.1.2.1.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1">subscript</csymbol><ci id="S2.T4.11.5.5.1.1.m1.1.1.2.2.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T4.11.5.5.1.1.m1.1.1.2.3.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T4.11.5.5.1.1.m1.1.1.3.cmml" xref="S2.T4.11.5.5.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.11.5.5.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.11.5.5.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=3072)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T4.12.6.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.12.6.6.2.1" style="background-color:#F9F9F9;">53.38<span class="ltx_text ltx_font_medium" id="S2.T4.12.6.6.2.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T4.12.6.6.2.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.12.6.6.2.1.1.1.m1.1"><semantics id="S2.T4.12.6.6.2.1.1.1.m1.1a"><mo id="S2.T4.12.6.6.2.1.1.1.m1.1.1" mathbackground="#F9F9F9" stretchy="false" xref="S2.T4.12.6.6.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.12.6.6.2.1.1.1.m1.1b"><ci id="S2.T4.12.6.6.2.1.1.1.m1.1.1.cmml" xref="S2.T4.12.6.6.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.12.6.6.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.12.6.6.2.1.1.1.m1.1d">↑</annotation></semantics></math>1.24</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.3.1" style="background-color:#F9F9F9;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.4.1" style="background-color:#F9F9F9;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.5.1" style="background-color:#F9F9F9;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.6.1" style="background-color:#F9F9F9;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.7.1" style="background-color:#F9F9F9;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.8.1" style="background-color:#F9F9F9;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.9.1" style="background-color:#F9F9F9;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.10.1" style="background-color:#F9F9F9;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.12.6.6.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.12.6.6.11.1" style="background-color:#F9F9F9;">37.7</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.14.8.8" style="background-color:#F3F3F4;">
<td class="ltx_td ltx_align_left" id="S2.T4.13.7.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.13.7.7.1.1" style="background-color:#F3F3F4;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T4.13.7.7.1.1.m1.1"><semantics id="S2.T4.13.7.7.1.1.m1.1a"><msubsup id="S2.T4.13.7.7.1.1.m1.1.1" xref="S2.T4.13.7.7.1.1.m1.1.1.cmml"><mi id="S2.T4.13.7.7.1.1.m1.1.1.2.2" mathbackground="#F3F3F4" xref="S2.T4.13.7.7.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T4.13.7.7.1.1.m1.1.1.2.3" mathbackground="#F3F3F4" xref="S2.T4.13.7.7.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T4.13.7.7.1.1.m1.1.1.3" mathbackground="#F3F3F4" xref="S2.T4.13.7.7.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.13.7.7.1.1.m1.1b"><apply id="S2.T4.13.7.7.1.1.m1.1.1.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.13.7.7.1.1.m1.1.1.1.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1">superscript</csymbol><apply id="S2.T4.13.7.7.1.1.m1.1.1.2.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.13.7.7.1.1.m1.1.1.2.1.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1">subscript</csymbol><ci id="S2.T4.13.7.7.1.1.m1.1.1.2.2.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T4.13.7.7.1.1.m1.1.1.2.3.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T4.13.7.7.1.1.m1.1.1.3.cmml" xref="S2.T4.13.7.7.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.13.7.7.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.13.7.7.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4096)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T4.14.8.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.14.8.8.2.1" style="background-color:#F3F3F4;">52.93<span class="ltx_text ltx_font_medium" id="S2.T4.14.8.8.2.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.14.8.8.2.1.1.m1.1"><semantics id="S2.T4.14.8.8.2.1.1.m1.1a"><mo id="S2.T4.14.8.8.2.1.1.m1.1.1" mathbackground="#F3F3F4" stretchy="false" xref="S2.T4.14.8.8.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.14.8.8.2.1.1.m1.1b"><ci id="S2.T4.14.8.8.2.1.1.m1.1.1.cmml" xref="S2.T4.14.8.8.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.14.8.8.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.14.8.8.2.1.1.m1.1d">↑</annotation></semantics></math>0.79)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.3.1" style="background-color:#F3F3F4;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.4.1" style="background-color:#F3F3F4;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.5.1" style="background-color:#F3F3F4;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.6.1" style="background-color:#F3F3F4;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.7.1" style="background-color:#F3F3F4;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.8.1" style="background-color:#F3F3F4;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.9.1" style="background-color:#F3F3F4;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.10.1" style="background-color:#F3F3F4;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.14.8.8.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.14.8.8.11.1" style="background-color:#F3F3F4;">38.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.16.10.10" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T4.15.9.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.15.9.9.1.1" style="background-color:#E7E7E8;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T4.15.9.9.1.1.m1.1"><semantics id="S2.T4.15.9.9.1.1.m1.1a"><msubsup id="S2.T4.15.9.9.1.1.m1.1.1" xref="S2.T4.15.9.9.1.1.m1.1.1.cmml"><mi id="S2.T4.15.9.9.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T4.15.9.9.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T4.15.9.9.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T4.15.9.9.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T4.15.9.9.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T4.15.9.9.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.15.9.9.1.1.m1.1b"><apply id="S2.T4.15.9.9.1.1.m1.1.1.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.15.9.9.1.1.m1.1.1.1.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1">superscript</csymbol><apply id="S2.T4.15.9.9.1.1.m1.1.1.2.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.15.9.9.1.1.m1.1.1.2.1.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1">subscript</csymbol><ci id="S2.T4.15.9.9.1.1.m1.1.1.2.2.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T4.15.9.9.1.1.m1.1.1.2.3.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T4.15.9.9.1.1.m1.1.1.3.cmml" xref="S2.T4.15.9.9.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.15.9.9.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.15.9.9.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=5632)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T4.16.10.10.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.16.10.10.2.1" style="background-color:#E7E7E8;">53.07<span class="ltx_text ltx_font_medium" id="S2.T4.16.10.10.2.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.16.10.10.2.1.1.m1.1"><semantics id="S2.T4.16.10.10.2.1.1.m1.1a"><mo id="S2.T4.16.10.10.2.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T4.16.10.10.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.16.10.10.2.1.1.m1.1b"><ci id="S2.T4.16.10.10.2.1.1.m1.1.1.cmml" xref="S2.T4.16.10.10.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.16.10.10.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.16.10.10.2.1.1.m1.1d">↑</annotation></semantics></math>0.93)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.3.1" style="background-color:#E7E7E8;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.4.1" style="background-color:#E7E7E8;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.5.1" style="background-color:#E7E7E8;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.6.1" style="background-color:#E7E7E8;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.7.1" style="background-color:#E7E7E8;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.8.1" style="background-color:#E7E7E8;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.9.1" style="background-color:#E7E7E8;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.10.1" style="background-color:#E7E7E8;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T4.16.10.10.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.16.10.10.11.1" style="background-color:#E7E7E8;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="S2.T4.18.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.18.12.12.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T4.18.12.12.2.1">GQA</span> (<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T4.17.11.11.1.m1.1"><semantics id="S2.T4.17.11.11.1.m1.1a"><msubsup id="S2.T4.17.11.11.1.m1.1.1" xref="S2.T4.17.11.11.1.m1.1.1.cmml"><mi id="S2.T4.17.11.11.1.m1.1.1.2.2" xref="S2.T4.17.11.11.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T4.17.11.11.1.m1.1.1.2.3" xref="S2.T4.17.11.11.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T4.17.11.11.1.m1.1.1.3" xref="S2.T4.17.11.11.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.17.11.11.1.m1.1b"><apply id="S2.T4.17.11.11.1.m1.1.1.cmml" xref="S2.T4.17.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.17.11.11.1.m1.1.1.1.cmml" xref="S2.T4.17.11.11.1.m1.1.1">superscript</csymbol><apply id="S2.T4.17.11.11.1.m1.1.1.2.cmml" xref="S2.T4.17.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.17.11.11.1.m1.1.1.2.1.cmml" xref="S2.T4.17.11.11.1.m1.1.1">subscript</csymbol><ci id="S2.T4.17.11.11.1.m1.1.1.2.2.cmml" xref="S2.T4.17.11.11.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T4.17.11.11.1.m1.1.1.2.3.cmml" xref="S2.T4.17.11.11.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T4.17.11.11.1.m1.1.1.3.cmml" xref="S2.T4.17.11.11.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.17.11.11.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.17.11.11.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T4.18.12.12.2.m2.1"><semantics id="S2.T4.18.12.12.2.m2.1a"><msubsup id="S2.T4.18.12.12.2.m2.1.1" xref="S2.T4.18.12.12.2.m2.1.1.cmml"><mi id="S2.T4.18.12.12.2.m2.1.1.2.2" xref="S2.T4.18.12.12.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T4.18.12.12.2.m2.1.1.2.3" xref="S2.T4.18.12.12.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T4.18.12.12.2.m2.1.1.3" xref="S2.T4.18.12.12.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.18.12.12.2.m2.1b"><apply id="S2.T4.18.12.12.2.m2.1.1.cmml" xref="S2.T4.18.12.12.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T4.18.12.12.2.m2.1.1.1.cmml" xref="S2.T4.18.12.12.2.m2.1.1">superscript</csymbol><apply id="S2.T4.18.12.12.2.m2.1.1.2.cmml" xref="S2.T4.18.12.12.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T4.18.12.12.2.m2.1.1.2.1.cmml" xref="S2.T4.18.12.12.2.m2.1.1">subscript</csymbol><ci id="S2.T4.18.12.12.2.m2.1.1.2.2.cmml" xref="S2.T4.18.12.12.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T4.18.12.12.2.m2.1.1.2.3.cmml" xref="S2.T4.18.12.12.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T4.18.12.12.2.m2.1.1.3.cmml" xref="S2.T4.18.12.12.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.18.12.12.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.18.12.12.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T4.18.12.12.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.18.12.12.3.1">51.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.4" style="padding-left:5.0pt;padding-right:5.0pt;">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.5" style="padding-left:5.0pt;padding-right:5.0pt;">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.6" style="padding-left:5.0pt;padding-right:5.0pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.7" style="padding-left:5.0pt;padding-right:5.0pt;">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.8" style="padding-left:5.0pt;padding-right:5.0pt;">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.9" style="padding-left:5.0pt;padding-right:5.0pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.10" style="padding-left:5.0pt;padding-right:5.0pt;">61.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.11" style="padding-left:5.0pt;padding-right:5.0pt;">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.18.12.12.12" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
</tr>
<tr class="ltx_tr" id="S2.T4.20.14.14" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T4.19.13.13.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.19.13.13.1.1" style="background-color:#E7E7E8;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T4.19.13.13.1.1.m1.1"><semantics id="S2.T4.19.13.13.1.1.m1.1a"><msubsup id="S2.T4.19.13.13.1.1.m1.1.1" xref="S2.T4.19.13.13.1.1.m1.1.1.cmml"><mi id="S2.T4.19.13.13.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T4.19.13.13.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T4.19.13.13.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T4.19.13.13.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T4.19.13.13.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T4.19.13.13.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T4.19.13.13.1.1.m1.1b"><apply id="S2.T4.19.13.13.1.1.m1.1.1.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.19.13.13.1.1.m1.1.1.1.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1">superscript</csymbol><apply id="S2.T4.19.13.13.1.1.m1.1.1.2.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T4.19.13.13.1.1.m1.1.1.2.1.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1">subscript</csymbol><ci id="S2.T4.19.13.13.1.1.m1.1.1.2.2.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T4.19.13.13.1.1.m1.1.1.2.3.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T4.19.13.13.1.1.m1.1.1.3.cmml" xref="S2.T4.19.13.13.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.19.13.13.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T4.19.13.13.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=5632)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T4.20.14.14.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T4.20.14.14.2.1" style="background-color:#E7E7E8;">53.13<span class="ltx_text ltx_font_medium" id="S2.T4.20.14.14.2.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.20.14.14.2.1.1.m1.1"><semantics id="S2.T4.20.14.14.2.1.1.m1.1a"><mo id="S2.T4.20.14.14.2.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T4.20.14.14.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.20.14.14.2.1.1.m1.1b"><ci id="S2.T4.20.14.14.2.1.1.m1.1.1.cmml" xref="S2.T4.20.14.14.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.20.14.14.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.20.14.14.2.1.1.m1.1d">↑</annotation></semantics></math>1.47)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.3.1" style="background-color:#E7E7E8;">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.4.1" style="background-color:#E7E7E8;">40.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.5.1" style="background-color:#E7E7E8;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.6.1" style="background-color:#E7E7E8;">37.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.7.1" style="background-color:#E7E7E8;">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.8.1" style="background-color:#E7E7E8;">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.9.1" style="background-color:#E7E7E8;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.10.1" style="background-color:#E7E7E8;">27.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.20.14.14.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T4.20.14.14.11.1" style="background-color:#E7E7E8;">37.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents an ablation study comparing the performance of models with and without an augmented query (AugQ) component.  It investigates the impact of increasing the intermediate dimension of the query head (dqh) on overall model performance.  The study uses a consistent number of 32 query heads (nqh=32) across all model variations.  The baseline models have an intermediate query head dimension of 2048 (dqh=2048). The table compares various models with different augmented Q head dimensions to show the impact of increased model parameters only in the query part. The performance is measured on various downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons between the baseline model architectures and those incorporating augmented Q. dqhsuperscriptsubscript𝑑𝑞ℎd_{q}^{h}italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT refers to the intermediate Q head dimension. The number of Q heads is 32 for all models in the table (nqh=32superscriptsubscript𝑛𝑞ℎ32n_{q}^{h}=32italic_n start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT = 32). For the baseline without AugQ, the intermediate dimension of Q head is dqh=2048superscriptsubscript𝑑𝑞ℎ2048d_{q}^{h}=2048italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT = 2048.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T5.42.30">
<tr class="ltx_tr" id="S2.T5.42.30.31">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T5.42.30.31.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.31.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T5.42.30.31.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.31.2.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T5.42.30.31.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.31.3.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T5.42.30.31.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.31.4.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T5.42.30.31.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.31.5.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.42.30.32">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.1" style="padding-left:5.0pt;padding-right:5.0pt;">Hella.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.2" style="padding-left:5.0pt;padding-right:5.0pt;">ObQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.3" style="padding-left:5.0pt;padding-right:5.0pt;">Wino.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.4" style="padding-left:5.0pt;padding-right:5.0pt;">ARC.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.5" style="padding-left:5.0pt;padding-right:5.0pt;">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.6" style="padding-left:5.0pt;padding-right:5.0pt;">SciQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.7" style="padding-left:5.0pt;padding-right:5.0pt;">Bool.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.8" style="padding-left:5.0pt;padding-right:5.0pt;">Logi.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.32.9" style="padding-left:5.0pt;padding-right:5.0pt;">LAMB.</td>
</tr>
<tr class="ltx_tr" id="S2.T5.42.30.33">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.42.30.33.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.33.1.1">GQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.42.30.33.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.33.2.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.3" style="padding-left:5.0pt;padding-right:5.0pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.4" style="padding-left:5.0pt;padding-right:5.0pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.5" style="padding-left:5.0pt;padding-right:5.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.6" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.7" style="padding-left:5.0pt;padding-right:5.0pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.8" style="padding-left:5.0pt;padding-right:5.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.9" style="padding-left:5.0pt;padding-right:5.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.10" style="padding-left:5.0pt;padding-right:5.0pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.42.30.33.11" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T5.15.3.3" style="background-color:#F5F6F6;">
<td class="ltx_td ltx_align_left" id="S2.T5.14.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.14.2.2.2.2" style="background-color:#F5F6F6;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.13.1.1.1.1.m1.1"><semantics id="S2.T5.13.1.1.1.1.m1.1a"><mrow id="S2.T5.13.1.1.1.1.m1.1.1" xref="S2.T5.13.1.1.1.1.m1.1.1.cmml"><mi id="S2.T5.13.1.1.1.1.m1.1.1.2" mathbackground="#F5F6F6" mathvariant="normal" xref="S2.T5.13.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.13.1.1.1.1.m1.1.1.1" xref="S2.T5.13.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.13.1.1.1.1.m1.1.1.3" xref="S2.T5.13.1.1.1.1.m1.1.1.3.cmml"><mi id="S2.T5.13.1.1.1.1.m1.1.1.3.2" mathbackground="#F5F6F6" xref="S2.T5.13.1.1.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.13.1.1.1.1.m1.1.1.3.3" mathbackground="#F5F6F6" xref="S2.T5.13.1.1.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.13.1.1.1.1.m1.1b"><apply id="S2.T5.13.1.1.1.1.m1.1.1.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1"><times id="S2.T5.13.1.1.1.1.m1.1.1.1.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.1"></times><ci id="S2.T5.13.1.1.1.1.m1.1.1.2.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.13.1.1.1.1.m1.1.1.3.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.13.1.1.1.1.m1.1.1.3.1.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.13.1.1.1.1.m1.1.1.3.2.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.13.1.1.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.13.1.1.1.1.m1.1.1.3.3"><mtext id="S2.T5.13.1.1.1.1.m1.1.1.3.3.cmml" mathbackground="#F5F6F6" mathsize="70%" xref="S2.T5.13.1.1.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.13.1.1.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.13.1.1.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.14.2.2.2.2.m2.1"><semantics id="S2.T5.14.2.2.2.2.m2.1a"><mi id="S2.T5.14.2.2.2.2.m2.1.1" mathbackground="#F5F6F6" xref="S2.T5.14.2.2.2.2.m2.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.14.2.2.2.2.m2.1b"><ci id="S2.T5.14.2.2.2.2.m2.1.1.cmml" xref="S2.T5.14.2.2.2.2.m2.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.14.2.2.2.2.m2.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.14.2.2.2.2.m2.1d">italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T5.15.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.15.3.3.3.1" style="background-color:#F5F6F6;">53.26<span class="ltx_text ltx_font_medium" id="S2.T5.15.3.3.3.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.15.3.3.3.1.1.m1.1"><semantics id="S2.T5.15.3.3.3.1.1.m1.1a"><mo id="S2.T5.15.3.3.3.1.1.m1.1.1" mathbackground="#F5F6F6" stretchy="false" xref="S2.T5.15.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.15.3.3.3.1.1.m1.1b"><ci id="S2.T5.15.3.3.3.1.1.m1.1.1.cmml" xref="S2.T5.15.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.15.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.15.3.3.3.1.1.m1.1d">↑</annotation></semantics></math>1.12)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.4.1" style="background-color:#F5F6F6;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.5.1" style="background-color:#F5F6F6;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.6.1" style="background-color:#F5F6F6;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.7.1" style="background-color:#F5F6F6;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.8.1" style="background-color:#F5F6F6;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.9.1" style="background-color:#F5F6F6;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.10.1" style="background-color:#F5F6F6;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.11.1" style="background-color:#F5F6F6;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.15.3.3.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.15.3.3.12.1" style="background-color:#F5F6F6;">39.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.18.6.6" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T5.17.5.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.17.5.5.2.2" style="background-color:#E7E7E8;">+ AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T5.16.4.4.1.1.m1.1"><semantics id="S2.T5.16.4.4.1.1.m1.1a"><msubsup id="S2.T5.16.4.4.1.1.m1.1.1" xref="S2.T5.16.4.4.1.1.m1.1.1.cmml"><mi id="S2.T5.16.4.4.1.1.m1.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T5.16.4.4.1.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T5.16.4.4.1.1.m1.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T5.16.4.4.1.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T5.16.4.4.1.1.m1.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.16.4.4.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T5.16.4.4.1.1.m1.1b"><apply id="S2.T5.16.4.4.1.1.m1.1.1.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T5.16.4.4.1.1.m1.1.1.1.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1">superscript</csymbol><apply id="S2.T5.16.4.4.1.1.m1.1.1.2.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T5.16.4.4.1.1.m1.1.1.2.1.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1">subscript</csymbol><ci id="S2.T5.16.4.4.1.1.m1.1.1.2.2.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T5.16.4.4.1.1.m1.1.1.2.3.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T5.16.4.4.1.1.m1.1.1.3.cmml" xref="S2.T5.16.4.4.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.16.4.4.1.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.16.4.4.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.17.5.5.2.2.m2.1"><semantics id="S2.T5.17.5.5.2.2.m2.1a"><mi id="S2.T5.17.5.5.2.2.m2.1.1" mathbackground="#E7E7E8" xref="S2.T5.17.5.5.2.2.m2.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.17.5.5.2.2.m2.1b"><ci id="S2.T5.17.5.5.2.2.m2.1.1.cmml" xref="S2.T5.17.5.5.2.2.m2.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.17.5.5.2.2.m2.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.17.5.5.2.2.m2.1d">italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T5.18.6.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.18.6.6.3.1" style="background-color:#E7E7E8;">53.38<span class="ltx_text ltx_font_medium" id="S2.T5.18.6.6.3.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T5.18.6.6.3.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.18.6.6.3.1.1.1.m1.1"><semantics id="S2.T5.18.6.6.3.1.1.1.m1.1a"><mo id="S2.T5.18.6.6.3.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T5.18.6.6.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.18.6.6.3.1.1.1.m1.1b"><ci id="S2.T5.18.6.6.3.1.1.1.m1.1.1.cmml" xref="S2.T5.18.6.6.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.18.6.6.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.18.6.6.3.1.1.1.m1.1d">↑</annotation></semantics></math>1.24</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.4.1" style="background-color:#E7E7E8;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.5.1" style="background-color:#E7E7E8;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.6.1" style="background-color:#E7E7E8;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.7.1" style="background-color:#E7E7E8;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.8.1" style="background-color:#E7E7E8;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.9.1" style="background-color:#E7E7E8;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.10.1" style="background-color:#E7E7E8;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.11.1" style="background-color:#E7E7E8;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.18.6.6.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.18.6.6.12.1" style="background-color:#E7E7E8;">37.7</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.21.9.9" style="background-color:#F5F6F6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.20.8.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.20.8.8.2.2" style="background-color:#F5F6F6;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.19.7.7.1.1.m1.1"><semantics id="S2.T5.19.7.7.1.1.m1.1a"><mrow id="S2.T5.19.7.7.1.1.m1.1.1" xref="S2.T5.19.7.7.1.1.m1.1.1.cmml"><mi id="S2.T5.19.7.7.1.1.m1.1.1.2" mathbackground="#F5F6F6" mathvariant="normal" xref="S2.T5.19.7.7.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.19.7.7.1.1.m1.1.1.1" xref="S2.T5.19.7.7.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.19.7.7.1.1.m1.1.1.3" xref="S2.T5.19.7.7.1.1.m1.1.1.3.cmml"><mi id="S2.T5.19.7.7.1.1.m1.1.1.3.2" mathbackground="#F5F6F6" xref="S2.T5.19.7.7.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.19.7.7.1.1.m1.1.1.3.3" mathbackground="#F5F6F6" xref="S2.T5.19.7.7.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.19.7.7.1.1.m1.1b"><apply id="S2.T5.19.7.7.1.1.m1.1.1.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1"><times id="S2.T5.19.7.7.1.1.m1.1.1.1.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.1"></times><ci id="S2.T5.19.7.7.1.1.m1.1.1.2.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.19.7.7.1.1.m1.1.1.3.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.19.7.7.1.1.m1.1.1.3.1.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.19.7.7.1.1.m1.1.1.3.2.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.19.7.7.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.19.7.7.1.1.m1.1.1.3.3"><mtext id="S2.T5.19.7.7.1.1.m1.1.1.3.3.cmml" mathbackground="#F5F6F6" mathsize="70%" xref="S2.T5.19.7.7.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.19.7.7.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.19.7.7.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="2\delta" class="ltx_Math" display="inline" id="S2.T5.20.8.8.2.2.m2.1"><semantics id="S2.T5.20.8.8.2.2.m2.1a"><mrow id="S2.T5.20.8.8.2.2.m2.1.1" xref="S2.T5.20.8.8.2.2.m2.1.1.cmml"><mn id="S2.T5.20.8.8.2.2.m2.1.1.2" mathbackground="#F5F6F6" xref="S2.T5.20.8.8.2.2.m2.1.1.2.cmml">2</mn><mo id="S2.T5.20.8.8.2.2.m2.1.1.1" xref="S2.T5.20.8.8.2.2.m2.1.1.1.cmml">⁢</mo><mi id="S2.T5.20.8.8.2.2.m2.1.1.3" mathbackground="#F5F6F6" xref="S2.T5.20.8.8.2.2.m2.1.1.3.cmml">δ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.20.8.8.2.2.m2.1b"><apply id="S2.T5.20.8.8.2.2.m2.1.1.cmml" xref="S2.T5.20.8.8.2.2.m2.1.1"><times id="S2.T5.20.8.8.2.2.m2.1.1.1.cmml" xref="S2.T5.20.8.8.2.2.m2.1.1.1"></times><cn id="S2.T5.20.8.8.2.2.m2.1.1.2.cmml" type="integer" xref="S2.T5.20.8.8.2.2.m2.1.1.2">2</cn><ci id="S2.T5.20.8.8.2.2.m2.1.1.3.cmml" xref="S2.T5.20.8.8.2.2.m2.1.1.3">𝛿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.20.8.8.2.2.m2.1c">2\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.20.8.8.2.2.m2.1d">2 italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.21.9.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.21.9.9.3.1" style="background-color:#F5F6F6;">53.16<span class="ltx_text ltx_font_medium" id="S2.T5.21.9.9.3.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.21.9.9.3.1.1.m1.1"><semantics id="S2.T5.21.9.9.3.1.1.m1.1a"><mo id="S2.T5.21.9.9.3.1.1.m1.1.1" mathbackground="#F5F6F6" stretchy="false" xref="S2.T5.21.9.9.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.21.9.9.3.1.1.m1.1b"><ci id="S2.T5.21.9.9.3.1.1.m1.1.1.cmml" xref="S2.T5.21.9.9.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.21.9.9.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.21.9.9.3.1.1.m1.1d">↑</annotation></semantics></math>1.02)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.4.1" style="background-color:#F5F6F6;">59.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.5.1" style="background-color:#F5F6F6;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.6.1" style="background-color:#F5F6F6;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.7.1" style="background-color:#F5F6F6;">38.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.8.1" style="background-color:#F5F6F6;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.9.1" style="background-color:#F5F6F6;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.10.1" style="background-color:#F5F6F6;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.11.1" style="background-color:#F5F6F6;">24.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.21.9.9.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.21.9.9.12.1" style="background-color:#F5F6F6;">40.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.26.14.14" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T5.25.13.13.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.25.13.13.4.4" style="background-color:#E7E7E8;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.22.10.10.1.1.m1.1"><semantics id="S2.T5.22.10.10.1.1.m1.1a"><mrow id="S2.T5.22.10.10.1.1.m1.1.1" xref="S2.T5.22.10.10.1.1.m1.1.1.cmml"><mi id="S2.T5.22.10.10.1.1.m1.1.1.2" mathbackground="#E7E7E8" mathvariant="normal" xref="S2.T5.22.10.10.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.22.10.10.1.1.m1.1.1.1" xref="S2.T5.22.10.10.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.22.10.10.1.1.m1.1.1.3" xref="S2.T5.22.10.10.1.1.m1.1.1.3.cmml"><mi id="S2.T5.22.10.10.1.1.m1.1.1.3.2" mathbackground="#E7E7E8" xref="S2.T5.22.10.10.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.22.10.10.1.1.m1.1.1.3.3" mathbackground="#E7E7E8" xref="S2.T5.22.10.10.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.22.10.10.1.1.m1.1b"><apply id="S2.T5.22.10.10.1.1.m1.1.1.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1"><times id="S2.T5.22.10.10.1.1.m1.1.1.1.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.1"></times><ci id="S2.T5.22.10.10.1.1.m1.1.1.2.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.22.10.10.1.1.m1.1.1.3.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.22.10.10.1.1.m1.1.1.3.1.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.22.10.10.1.1.m1.1.1.3.2.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.22.10.10.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.22.10.10.1.1.m1.1.1.3.3"><mtext id="S2.T5.22.10.10.1.1.m1.1.1.3.3.cmml" mathbackground="#E7E7E8" mathsize="70%" xref="S2.T5.22.10.10.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.22.10.10.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.22.10.10.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.23.11.11.2.2.m2.1"><semantics id="S2.T5.23.11.11.2.2.m2.1a"><mi id="S2.T5.23.11.11.2.2.m2.1.1" mathbackground="#E7E7E8" xref="S2.T5.23.11.11.2.2.m2.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.23.11.11.2.2.m2.1b"><ci id="S2.T5.23.11.11.2.2.m2.1.1.cmml" xref="S2.T5.23.11.11.2.2.m2.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.23.11.11.2.2.m2.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.23.11.11.2.2.m2.1d">italic_δ</annotation></semantics></math>) &amp; AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T5.24.12.12.3.3.m3.1"><semantics id="S2.T5.24.12.12.3.3.m3.1a"><msubsup id="S2.T5.24.12.12.3.3.m3.1.1" xref="S2.T5.24.12.12.3.3.m3.1.1.cmml"><mi id="S2.T5.24.12.12.3.3.m3.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T5.24.12.12.3.3.m3.1.1.2.2.cmml">d</mi><mi id="S2.T5.24.12.12.3.3.m3.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T5.24.12.12.3.3.m3.1.1.2.3.cmml">q</mi><mi id="S2.T5.24.12.12.3.3.m3.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.24.12.12.3.3.m3.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T5.24.12.12.3.3.m3.1b"><apply id="S2.T5.24.12.12.3.3.m3.1.1.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.24.12.12.3.3.m3.1.1.1.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1">superscript</csymbol><apply id="S2.T5.24.12.12.3.3.m3.1.1.2.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.24.12.12.3.3.m3.1.1.2.1.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1">subscript</csymbol><ci id="S2.T5.24.12.12.3.3.m3.1.1.2.2.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1.2.2">𝑑</ci><ci id="S2.T5.24.12.12.3.3.m3.1.1.2.3.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1.2.3">𝑞</ci></apply><ci id="S2.T5.24.12.12.3.3.m3.1.1.3.cmml" xref="S2.T5.24.12.12.3.3.m3.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.24.12.12.3.3.m3.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.24.12.12.3.3.m3.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.25.13.13.4.4.m4.1"><semantics id="S2.T5.25.13.13.4.4.m4.1a"><mi id="S2.T5.25.13.13.4.4.m4.1.1" mathbackground="#E7E7E8" xref="S2.T5.25.13.13.4.4.m4.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.25.13.13.4.4.m4.1b"><ci id="S2.T5.25.13.13.4.4.m4.1.1.cmml" xref="S2.T5.25.13.13.4.4.m4.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.25.13.13.4.4.m4.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.25.13.13.4.4.m4.1d">italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T5.26.14.14.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.26.14.14.5.1" style="background-color:#E7E7E8;">54.55<span class="ltx_text ltx_font_medium" id="S2.T5.26.14.14.5.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T5.26.14.14.5.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.26.14.14.5.1.1.1.m1.1"><semantics id="S2.T5.26.14.14.5.1.1.1.m1.1a"><mo id="S2.T5.26.14.14.5.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T5.26.14.14.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.26.14.14.5.1.1.1.m1.1b"><ci id="S2.T5.26.14.14.5.1.1.1.m1.1.1.cmml" xref="S2.T5.26.14.14.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.26.14.14.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.26.14.14.5.1.1.1.m1.1d">↑</annotation></semantics></math>2.41</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.6.1" style="background-color:#E7E7E8;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.7.1" style="background-color:#E7E7E8;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.8.1" style="background-color:#E7E7E8;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.9.1" style="background-color:#E7E7E8;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.10.1" style="background-color:#E7E7E8;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.11.1" style="background-color:#E7E7E8;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.12.1" style="background-color:#E7E7E8;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.13.1" style="background-color:#E7E7E8;">28.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.26.14.14.14" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.26.14.14.14.1" style="background-color:#E7E7E8;">41.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.29.17.17" style="background-color:#F5F6F6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.28.16.16.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.28.16.16.2.2" style="background-color:#F5F6F6;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.27.15.15.1.1.m1.1"><semantics id="S2.T5.27.15.15.1.1.m1.1a"><mrow id="S2.T5.27.15.15.1.1.m1.1.1" xref="S2.T5.27.15.15.1.1.m1.1.1.cmml"><mi id="S2.T5.27.15.15.1.1.m1.1.1.2" mathbackground="#F5F6F6" mathvariant="normal" xref="S2.T5.27.15.15.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.27.15.15.1.1.m1.1.1.1" xref="S2.T5.27.15.15.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.27.15.15.1.1.m1.1.1.3" xref="S2.T5.27.15.15.1.1.m1.1.1.3.cmml"><mi id="S2.T5.27.15.15.1.1.m1.1.1.3.2" mathbackground="#F5F6F6" xref="S2.T5.27.15.15.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.27.15.15.1.1.m1.1.1.3.3" mathbackground="#F5F6F6" xref="S2.T5.27.15.15.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.27.15.15.1.1.m1.1b"><apply id="S2.T5.27.15.15.1.1.m1.1.1.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1"><times id="S2.T5.27.15.15.1.1.m1.1.1.1.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.1"></times><ci id="S2.T5.27.15.15.1.1.m1.1.1.2.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.27.15.15.1.1.m1.1.1.3.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.27.15.15.1.1.m1.1.1.3.1.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.27.15.15.1.1.m1.1.1.3.2.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.27.15.15.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.27.15.15.1.1.m1.1.1.3.3"><mtext id="S2.T5.27.15.15.1.1.m1.1.1.3.3.cmml" mathbackground="#F5F6F6" mathsize="70%" xref="S2.T5.27.15.15.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.27.15.15.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.27.15.15.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="3\delta" class="ltx_Math" display="inline" id="S2.T5.28.16.16.2.2.m2.1"><semantics id="S2.T5.28.16.16.2.2.m2.1a"><mrow id="S2.T5.28.16.16.2.2.m2.1.1" xref="S2.T5.28.16.16.2.2.m2.1.1.cmml"><mn id="S2.T5.28.16.16.2.2.m2.1.1.2" mathbackground="#F5F6F6" xref="S2.T5.28.16.16.2.2.m2.1.1.2.cmml">3</mn><mo id="S2.T5.28.16.16.2.2.m2.1.1.1" xref="S2.T5.28.16.16.2.2.m2.1.1.1.cmml">⁢</mo><mi id="S2.T5.28.16.16.2.2.m2.1.1.3" mathbackground="#F5F6F6" xref="S2.T5.28.16.16.2.2.m2.1.1.3.cmml">δ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.28.16.16.2.2.m2.1b"><apply id="S2.T5.28.16.16.2.2.m2.1.1.cmml" xref="S2.T5.28.16.16.2.2.m2.1.1"><times id="S2.T5.28.16.16.2.2.m2.1.1.1.cmml" xref="S2.T5.28.16.16.2.2.m2.1.1.1"></times><cn id="S2.T5.28.16.16.2.2.m2.1.1.2.cmml" type="integer" xref="S2.T5.28.16.16.2.2.m2.1.1.2">3</cn><ci id="S2.T5.28.16.16.2.2.m2.1.1.3.cmml" xref="S2.T5.28.16.16.2.2.m2.1.1.3">𝛿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.28.16.16.2.2.m2.1c">3\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.28.16.16.2.2.m2.1d">3 italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.29.17.17.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.29.17.17.3.1" style="background-color:#F5F6F6;">54.50<span class="ltx_text ltx_font_medium" id="S2.T5.29.17.17.3.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.29.17.17.3.1.1.m1.1"><semantics id="S2.T5.29.17.17.3.1.1.m1.1a"><mo id="S2.T5.29.17.17.3.1.1.m1.1.1" mathbackground="#F5F6F6" stretchy="false" xref="S2.T5.29.17.17.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.29.17.17.3.1.1.m1.1b"><ci id="S2.T5.29.17.17.3.1.1.m1.1.1.cmml" xref="S2.T5.29.17.17.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.29.17.17.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.29.17.17.3.1.1.m1.1d">↑</annotation></semantics></math>2.36)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.4.1" style="background-color:#F5F6F6;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.5.1" style="background-color:#F5F6F6;">42.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.6.1" style="background-color:#F5F6F6;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.7.1" style="background-color:#F5F6F6;">39.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.8.1" style="background-color:#F5F6F6;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.9.1" style="background-color:#F5F6F6;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.10.1" style="background-color:#F5F6F6;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.11.1" style="background-color:#F5F6F6;">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.29.17.17.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.29.17.17.12.1" style="background-color:#F5F6F6;">39.2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.34.22.22" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left" id="S2.T5.33.21.21.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.33.21.21.4.4" style="background-color:#E7E7E8;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.30.18.18.1.1.m1.1"><semantics id="S2.T5.30.18.18.1.1.m1.1a"><mrow id="S2.T5.30.18.18.1.1.m1.1.1" xref="S2.T5.30.18.18.1.1.m1.1.1.cmml"><mi id="S2.T5.30.18.18.1.1.m1.1.1.2" mathbackground="#E7E7E8" mathvariant="normal" xref="S2.T5.30.18.18.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.30.18.18.1.1.m1.1.1.1" xref="S2.T5.30.18.18.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.30.18.18.1.1.m1.1.1.3" xref="S2.T5.30.18.18.1.1.m1.1.1.3.cmml"><mi id="S2.T5.30.18.18.1.1.m1.1.1.3.2" mathbackground="#E7E7E8" xref="S2.T5.30.18.18.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.30.18.18.1.1.m1.1.1.3.3" mathbackground="#E7E7E8" xref="S2.T5.30.18.18.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.30.18.18.1.1.m1.1b"><apply id="S2.T5.30.18.18.1.1.m1.1.1.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1"><times id="S2.T5.30.18.18.1.1.m1.1.1.1.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.1"></times><ci id="S2.T5.30.18.18.1.1.m1.1.1.2.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.30.18.18.1.1.m1.1.1.3.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.30.18.18.1.1.m1.1.1.3.1.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.30.18.18.1.1.m1.1.1.3.2.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.30.18.18.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.30.18.18.1.1.m1.1.1.3.3"><mtext id="S2.T5.30.18.18.1.1.m1.1.1.3.3.cmml" mathbackground="#E7E7E8" mathsize="70%" xref="S2.T5.30.18.18.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.30.18.18.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.30.18.18.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="2\delta" class="ltx_Math" display="inline" id="S2.T5.31.19.19.2.2.m2.1"><semantics id="S2.T5.31.19.19.2.2.m2.1a"><mrow id="S2.T5.31.19.19.2.2.m2.1.1" xref="S2.T5.31.19.19.2.2.m2.1.1.cmml"><mn id="S2.T5.31.19.19.2.2.m2.1.1.2" mathbackground="#E7E7E8" xref="S2.T5.31.19.19.2.2.m2.1.1.2.cmml">2</mn><mo id="S2.T5.31.19.19.2.2.m2.1.1.1" xref="S2.T5.31.19.19.2.2.m2.1.1.1.cmml">⁢</mo><mi id="S2.T5.31.19.19.2.2.m2.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.31.19.19.2.2.m2.1.1.3.cmml">δ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.31.19.19.2.2.m2.1b"><apply id="S2.T5.31.19.19.2.2.m2.1.1.cmml" xref="S2.T5.31.19.19.2.2.m2.1.1"><times id="S2.T5.31.19.19.2.2.m2.1.1.1.cmml" xref="S2.T5.31.19.19.2.2.m2.1.1.1"></times><cn id="S2.T5.31.19.19.2.2.m2.1.1.2.cmml" type="integer" xref="S2.T5.31.19.19.2.2.m2.1.1.2">2</cn><ci id="S2.T5.31.19.19.2.2.m2.1.1.3.cmml" xref="S2.T5.31.19.19.2.2.m2.1.1.3">𝛿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.31.19.19.2.2.m2.1c">2\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.31.19.19.2.2.m2.1d">2 italic_δ</annotation></semantics></math>) &amp; AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T5.32.20.20.3.3.m3.1"><semantics id="S2.T5.32.20.20.3.3.m3.1a"><msubsup id="S2.T5.32.20.20.3.3.m3.1.1" xref="S2.T5.32.20.20.3.3.m3.1.1.cmml"><mi id="S2.T5.32.20.20.3.3.m3.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T5.32.20.20.3.3.m3.1.1.2.2.cmml">d</mi><mi id="S2.T5.32.20.20.3.3.m3.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T5.32.20.20.3.3.m3.1.1.2.3.cmml">q</mi><mi id="S2.T5.32.20.20.3.3.m3.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.32.20.20.3.3.m3.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T5.32.20.20.3.3.m3.1b"><apply id="S2.T5.32.20.20.3.3.m3.1.1.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.32.20.20.3.3.m3.1.1.1.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1">superscript</csymbol><apply id="S2.T5.32.20.20.3.3.m3.1.1.2.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.32.20.20.3.3.m3.1.1.2.1.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1">subscript</csymbol><ci id="S2.T5.32.20.20.3.3.m3.1.1.2.2.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1.2.2">𝑑</ci><ci id="S2.T5.32.20.20.3.3.m3.1.1.2.3.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1.2.3">𝑞</ci></apply><ci id="S2.T5.32.20.20.3.3.m3.1.1.3.cmml" xref="S2.T5.32.20.20.3.3.m3.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.32.20.20.3.3.m3.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.32.20.20.3.3.m3.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.33.21.21.4.4.m4.1"><semantics id="S2.T5.33.21.21.4.4.m4.1a"><mi id="S2.T5.33.21.21.4.4.m4.1.1" mathbackground="#E7E7E8" xref="S2.T5.33.21.21.4.4.m4.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.33.21.21.4.4.m4.1b"><ci id="S2.T5.33.21.21.4.4.m4.1.1.cmml" xref="S2.T5.33.21.21.4.4.m4.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.33.21.21.4.4.m4.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.33.21.21.4.4.m4.1d">italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left" id="S2.T5.34.22.22.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.34.22.22.5.1" style="background-color:#E7E7E8;">54.67<span class="ltx_text ltx_font_medium" id="S2.T5.34.22.22.5.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T5.34.22.22.5.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.34.22.22.5.1.1.1.m1.1"><semantics id="S2.T5.34.22.22.5.1.1.1.m1.1a"><mo id="S2.T5.34.22.22.5.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T5.34.22.22.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.34.22.22.5.1.1.1.m1.1b"><ci id="S2.T5.34.22.22.5.1.1.1.m1.1.1.cmml" xref="S2.T5.34.22.22.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.34.22.22.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.34.22.22.5.1.1.1.m1.1d">↑</annotation></semantics></math>2.53</span>)</span></span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.6.1" style="background-color:#E7E7E8;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.7.1" style="background-color:#E7E7E8;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.8.1" style="background-color:#E7E7E8;">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.9.1" style="background-color:#E7E7E8;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.10.1" style="background-color:#E7E7E8;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.11.1" style="background-color:#E7E7E8;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.12.1" style="background-color:#E7E7E8;">59.6</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.13.1" style="background-color:#E7E7E8;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.34.22.22.14" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.34.22.22.14.1" style="background-color:#E7E7E8;">43.8</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.37.25.25" style="background-color:#F5F6F6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.36.24.24.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.36.24.24.2.2" style="background-color:#F5F6F6;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.35.23.23.1.1.m1.1"><semantics id="S2.T5.35.23.23.1.1.m1.1a"><mrow id="S2.T5.35.23.23.1.1.m1.1.1" xref="S2.T5.35.23.23.1.1.m1.1.1.cmml"><mi id="S2.T5.35.23.23.1.1.m1.1.1.2" mathbackground="#F5F6F6" mathvariant="normal" xref="S2.T5.35.23.23.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.35.23.23.1.1.m1.1.1.1" xref="S2.T5.35.23.23.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.35.23.23.1.1.m1.1.1.3" xref="S2.T5.35.23.23.1.1.m1.1.1.3.cmml"><mi id="S2.T5.35.23.23.1.1.m1.1.1.3.2" mathbackground="#F5F6F6" xref="S2.T5.35.23.23.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.35.23.23.1.1.m1.1.1.3.3" mathbackground="#F5F6F6" xref="S2.T5.35.23.23.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.35.23.23.1.1.m1.1b"><apply id="S2.T5.35.23.23.1.1.m1.1.1.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1"><times id="S2.T5.35.23.23.1.1.m1.1.1.1.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.1"></times><ci id="S2.T5.35.23.23.1.1.m1.1.1.2.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.35.23.23.1.1.m1.1.1.3.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.35.23.23.1.1.m1.1.1.3.1.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.35.23.23.1.1.m1.1.1.3.2.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.35.23.23.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.35.23.23.1.1.m1.1.1.3.3"><mtext id="S2.T5.35.23.23.1.1.m1.1.1.3.3.cmml" mathbackground="#F5F6F6" mathsize="70%" xref="S2.T5.35.23.23.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.35.23.23.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.35.23.23.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="5\delta" class="ltx_Math" display="inline" id="S2.T5.36.24.24.2.2.m2.1"><semantics id="S2.T5.36.24.24.2.2.m2.1a"><mrow id="S2.T5.36.24.24.2.2.m2.1.1" xref="S2.T5.36.24.24.2.2.m2.1.1.cmml"><mn id="S2.T5.36.24.24.2.2.m2.1.1.2" mathbackground="#F5F6F6" xref="S2.T5.36.24.24.2.2.m2.1.1.2.cmml">5</mn><mo id="S2.T5.36.24.24.2.2.m2.1.1.1" xref="S2.T5.36.24.24.2.2.m2.1.1.1.cmml">⁢</mo><mi id="S2.T5.36.24.24.2.2.m2.1.1.3" mathbackground="#F5F6F6" xref="S2.T5.36.24.24.2.2.m2.1.1.3.cmml">δ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.36.24.24.2.2.m2.1b"><apply id="S2.T5.36.24.24.2.2.m2.1.1.cmml" xref="S2.T5.36.24.24.2.2.m2.1.1"><times id="S2.T5.36.24.24.2.2.m2.1.1.1.cmml" xref="S2.T5.36.24.24.2.2.m2.1.1.1"></times><cn id="S2.T5.36.24.24.2.2.m2.1.1.2.cmml" type="integer" xref="S2.T5.36.24.24.2.2.m2.1.1.2">5</cn><ci id="S2.T5.36.24.24.2.2.m2.1.1.3.cmml" xref="S2.T5.36.24.24.2.2.m2.1.1.3">𝛿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.36.24.24.2.2.m2.1c">5\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.36.24.24.2.2.m2.1d">5 italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T5.37.25.25.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.37.25.25.3.1" style="background-color:#F5F6F6;">55.08<span class="ltx_text ltx_font_medium" id="S2.T5.37.25.25.3.1.1"> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.37.25.25.3.1.1.m1.1"><semantics id="S2.T5.37.25.25.3.1.1.m1.1a"><mo id="S2.T5.37.25.25.3.1.1.m1.1.1" mathbackground="#F5F6F6" stretchy="false" xref="S2.T5.37.25.25.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.37.25.25.3.1.1.m1.1b"><ci id="S2.T5.37.25.25.3.1.1.m1.1.1.cmml" xref="S2.T5.37.25.25.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.37.25.25.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.37.25.25.3.1.1.m1.1d">↑</annotation></semantics></math>2.94)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.4.1" style="background-color:#F5F6F6;">62.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.5.1" style="background-color:#F5F6F6;">41.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.6.1" style="background-color:#F5F6F6;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.7.1" style="background-color:#F5F6F6;">41.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.8.1" style="background-color:#F5F6F6;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.9.1" style="background-color:#F5F6F6;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.10.1" style="background-color:#F5F6F6;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.11.1" style="background-color:#F5F6F6;">26.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.37.25.25.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.37.25.25.12.1" style="background-color:#F5F6F6;">42.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.42.30.30" style="background-color:#E7E7E8;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T5.41.29.29.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.41.29.29.4.4" style="background-color:#E7E7E8;">+ AugF (<math alttext="\Delta d_{\text{F}}" class="ltx_Math" display="inline" id="S2.T5.38.26.26.1.1.m1.1"><semantics id="S2.T5.38.26.26.1.1.m1.1a"><mrow id="S2.T5.38.26.26.1.1.m1.1.1" xref="S2.T5.38.26.26.1.1.m1.1.1.cmml"><mi id="S2.T5.38.26.26.1.1.m1.1.1.2" mathbackground="#E7E7E8" mathvariant="normal" xref="S2.T5.38.26.26.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S2.T5.38.26.26.1.1.m1.1.1.1" xref="S2.T5.38.26.26.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S2.T5.38.26.26.1.1.m1.1.1.3" xref="S2.T5.38.26.26.1.1.m1.1.1.3.cmml"><mi id="S2.T5.38.26.26.1.1.m1.1.1.3.2" mathbackground="#E7E7E8" xref="S2.T5.38.26.26.1.1.m1.1.1.3.2.cmml">d</mi><mtext id="S2.T5.38.26.26.1.1.m1.1.1.3.3" mathbackground="#E7E7E8" xref="S2.T5.38.26.26.1.1.m1.1.1.3.3a.cmml">F</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.38.26.26.1.1.m1.1b"><apply id="S2.T5.38.26.26.1.1.m1.1.1.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1"><times id="S2.T5.38.26.26.1.1.m1.1.1.1.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.1"></times><ci id="S2.T5.38.26.26.1.1.m1.1.1.2.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.2">Δ</ci><apply id="S2.T5.38.26.26.1.1.m1.1.1.3.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.38.26.26.1.1.m1.1.1.3.1.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.3">subscript</csymbol><ci id="S2.T5.38.26.26.1.1.m1.1.1.3.2.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.3.2">𝑑</ci><ci id="S2.T5.38.26.26.1.1.m1.1.1.3.3a.cmml" xref="S2.T5.38.26.26.1.1.m1.1.1.3.3"><mtext id="S2.T5.38.26.26.1.1.m1.1.1.3.3.cmml" mathbackground="#E7E7E8" mathsize="70%" xref="S2.T5.38.26.26.1.1.m1.1.1.3.3">F</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.38.26.26.1.1.m1.1c">\Delta d_{\text{F}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.38.26.26.1.1.m1.1d">roman_Δ italic_d start_POSTSUBSCRIPT F end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="3\delta" class="ltx_Math" display="inline" id="S2.T5.39.27.27.2.2.m2.1"><semantics id="S2.T5.39.27.27.2.2.m2.1a"><mrow id="S2.T5.39.27.27.2.2.m2.1.1" xref="S2.T5.39.27.27.2.2.m2.1.1.cmml"><mn id="S2.T5.39.27.27.2.2.m2.1.1.2" mathbackground="#E7E7E8" xref="S2.T5.39.27.27.2.2.m2.1.1.2.cmml">3</mn><mo id="S2.T5.39.27.27.2.2.m2.1.1.1" xref="S2.T5.39.27.27.2.2.m2.1.1.1.cmml">⁢</mo><mi id="S2.T5.39.27.27.2.2.m2.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.39.27.27.2.2.m2.1.1.3.cmml">δ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.39.27.27.2.2.m2.1b"><apply id="S2.T5.39.27.27.2.2.m2.1.1.cmml" xref="S2.T5.39.27.27.2.2.m2.1.1"><times id="S2.T5.39.27.27.2.2.m2.1.1.1.cmml" xref="S2.T5.39.27.27.2.2.m2.1.1.1"></times><cn id="S2.T5.39.27.27.2.2.m2.1.1.2.cmml" type="integer" xref="S2.T5.39.27.27.2.2.m2.1.1.2">3</cn><ci id="S2.T5.39.27.27.2.2.m2.1.1.3.cmml" xref="S2.T5.39.27.27.2.2.m2.1.1.3">𝛿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.39.27.27.2.2.m2.1c">3\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.39.27.27.2.2.m2.1d">3 italic_δ</annotation></semantics></math>) &amp; AugQ (<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T5.40.28.28.3.3.m3.1"><semantics id="S2.T5.40.28.28.3.3.m3.1a"><msubsup id="S2.T5.40.28.28.3.3.m3.1.1" xref="S2.T5.40.28.28.3.3.m3.1.1.cmml"><mi id="S2.T5.40.28.28.3.3.m3.1.1.2.2" mathbackground="#E7E7E8" xref="S2.T5.40.28.28.3.3.m3.1.1.2.2.cmml">d</mi><mi id="S2.T5.40.28.28.3.3.m3.1.1.2.3" mathbackground="#E7E7E8" xref="S2.T5.40.28.28.3.3.m3.1.1.2.3.cmml">q</mi><mi id="S2.T5.40.28.28.3.3.m3.1.1.3" mathbackground="#E7E7E8" xref="S2.T5.40.28.28.3.3.m3.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T5.40.28.28.3.3.m3.1b"><apply id="S2.T5.40.28.28.3.3.m3.1.1.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.40.28.28.3.3.m3.1.1.1.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1">superscript</csymbol><apply id="S2.T5.40.28.28.3.3.m3.1.1.2.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1"><csymbol cd="ambiguous" id="S2.T5.40.28.28.3.3.m3.1.1.2.1.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1">subscript</csymbol><ci id="S2.T5.40.28.28.3.3.m3.1.1.2.2.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1.2.2">𝑑</ci><ci id="S2.T5.40.28.28.3.3.m3.1.1.2.3.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1.2.3">𝑞</ci></apply><ci id="S2.T5.40.28.28.3.3.m3.1.1.3.cmml" xref="S2.T5.40.28.28.3.3.m3.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.40.28.28.3.3.m3.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.40.28.28.3.3.m3.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="\delta" class="ltx_Math" display="inline" id="S2.T5.41.29.29.4.4.m4.1"><semantics id="S2.T5.41.29.29.4.4.m4.1a"><mi id="S2.T5.41.29.29.4.4.m4.1.1" mathbackground="#E7E7E8" xref="S2.T5.41.29.29.4.4.m4.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.41.29.29.4.4.m4.1b"><ci id="S2.T5.41.29.29.4.4.m4.1.1.cmml" xref="S2.T5.41.29.29.4.4.m4.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.41.29.29.4.4.m4.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T5.41.29.29.4.4.m4.1d">italic_δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T5.42.30.30.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T5.42.30.30.5.1" style="background-color:#E7E7E8;">55.09<span class="ltx_text ltx_font_medium" id="S2.T5.42.30.30.5.1.1"> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T5.42.30.30.5.1.1.1"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.42.30.30.5.1.1.1.m1.1"><semantics id="S2.T5.42.30.30.5.1.1.1.m1.1a"><mo id="S2.T5.42.30.30.5.1.1.1.m1.1.1" mathbackground="#E7E7E8" stretchy="false" xref="S2.T5.42.30.30.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.42.30.30.5.1.1.1.m1.1b"><ci id="S2.T5.42.30.30.5.1.1.1.m1.1.1.cmml" xref="S2.T5.42.30.30.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.42.30.30.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.42.30.30.5.1.1.1.m1.1d">↑</annotation></semantics></math>2.95</span>)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.6.1" style="background-color:#E7E7E8;">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.7.1" style="background-color:#E7E7E8;">39.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.8.1" style="background-color:#E7E7E8;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.9.1" style="background-color:#E7E7E8;">40.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.10.1" style="background-color:#E7E7E8;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.11.1" style="background-color:#E7E7E8;">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.12.1" style="background-color:#E7E7E8;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.13.1" style="background-color:#E7E7E8;">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.42.30.30.14" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T5.42.30.30.14.1" style="background-color:#E7E7E8;">41.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies on the SIGMA model, investigating the impact of incorporating an augmented query (Q) component and enlarging the feed-forward network (FFN) module on model performance. The baseline model used is Grouped-Query Attention (GQA) with an FFN dimension of 5632 and an equal number of key and value heads (both set to 16).  The experiments systematically vary the size of the augmented Q component (denoted as dq<sup>h</sup>) and the FFN module's enlarged dimension (denoted as ΔdF).  The table shows how these modifications affect overall model performance as measured on various tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparisons of the model performance when incorporating the augmented Q component (AugQ) with different sizes and enlarging the FFN module (AugF). The baseline method is GQA, with the FFN dimension being 5632 and nkhsuperscriptsubscript𝑛𝑘ℎn_{k}^{h}italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT=nvhsuperscriptsubscript𝑛𝑣ℎn_{v}^{h}italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT=16. Δ⁢dFΔsubscript𝑑𝐹\Delta d_{F}roman_Δ italic_d start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT denotes the enlarged dimension for the FFN module, while dqhsuperscriptsubscript𝑑𝑞ℎd_{q}^{h}italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT represents the intermediate Q head dimension (δ𝛿\deltaitalic_δ=3072307230723072).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T6.10.6">
<tr class="ltx_tr" id="S2.T6.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S2.T6.6.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S2.T6.6.2.2.2.1">Model Config</span>(<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T6.5.1.1.1.m1.1"><semantics id="S2.T6.5.1.1.1.m1.1a"><msubsup id="S2.T6.5.1.1.1.m1.1.1" xref="S2.T6.5.1.1.1.m1.1.1.cmml"><mi id="S2.T6.5.1.1.1.m1.1.1.2.2" xref="S2.T6.5.1.1.1.m1.1.1.2.2.cmml">n</mi><mi id="S2.T6.5.1.1.1.m1.1.1.2.3" xref="S2.T6.5.1.1.1.m1.1.1.2.3.cmml">k</mi><mi id="S2.T6.5.1.1.1.m1.1.1.3" xref="S2.T6.5.1.1.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T6.5.1.1.1.m1.1b"><apply id="S2.T6.5.1.1.1.m1.1.1.cmml" xref="S2.T6.5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.5.1.1.1.m1.1.1.1.cmml" xref="S2.T6.5.1.1.1.m1.1.1">superscript</csymbol><apply id="S2.T6.5.1.1.1.m1.1.1.2.cmml" xref="S2.T6.5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.5.1.1.1.m1.1.1.2.1.cmml" xref="S2.T6.5.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T6.5.1.1.1.m1.1.1.2.2.cmml" xref="S2.T6.5.1.1.1.m1.1.1.2.2">𝑛</ci><ci id="S2.T6.5.1.1.1.m1.1.1.2.3.cmml" xref="S2.T6.5.1.1.1.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T6.5.1.1.1.m1.1.1.3.cmml" xref="S2.T6.5.1.1.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.5.1.1.1.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T6.5.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=<math alttext="n_{v}^{h}" class="ltx_Math" display="inline" id="S2.T6.6.2.2.2.m2.1"><semantics id="S2.T6.6.2.2.2.m2.1a"><msubsup id="S2.T6.6.2.2.2.m2.1.1" xref="S2.T6.6.2.2.2.m2.1.1.cmml"><mi id="S2.T6.6.2.2.2.m2.1.1.2.2" xref="S2.T6.6.2.2.2.m2.1.1.2.2.cmml">n</mi><mi id="S2.T6.6.2.2.2.m2.1.1.2.3" xref="S2.T6.6.2.2.2.m2.1.1.2.3.cmml">v</mi><mi id="S2.T6.6.2.2.2.m2.1.1.3" xref="S2.T6.6.2.2.2.m2.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T6.6.2.2.2.m2.1b"><apply id="S2.T6.6.2.2.2.m2.1.1.cmml" xref="S2.T6.6.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T6.6.2.2.2.m2.1.1.1.cmml" xref="S2.T6.6.2.2.2.m2.1.1">superscript</csymbol><apply id="S2.T6.6.2.2.2.m2.1.1.2.cmml" xref="S2.T6.6.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T6.6.2.2.2.m2.1.1.2.1.cmml" xref="S2.T6.6.2.2.2.m2.1.1">subscript</csymbol><ci id="S2.T6.6.2.2.2.m2.1.1.2.2.cmml" xref="S2.T6.6.2.2.2.m2.1.1.2.2">𝑛</ci><ci id="S2.T6.6.2.2.2.m2.1.1.2.3.cmml" xref="S2.T6.6.2.2.2.m2.1.1.2.3">𝑣</ci></apply><ci id="S2.T6.6.2.2.2.m2.1.1.3.cmml" xref="S2.T6.6.2.2.2.m2.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.6.2.2.2.m2.1c">n_{v}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T6.6.2.2.2.m2.1d">italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=16)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T6.6.2.2.3" rowspan="3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.6.2.2.3.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T6.6.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.6.2.2.4.1">Commonsense &amp; Comprehension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T6.6.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.6.2.2.5.1">Continued</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T6.6.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.6.2.2.6.1">LM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.7.1.1">AugQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.7.2.1">-75% K Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.7.3.1">Half K Dim</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.4" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.4.1">Hella.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.5" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.5.1">ObQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.6" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.6.1">Wino.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.7" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.7.1">ARC.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.8" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.8.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.9" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.9.1">SciQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.10" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.10.1">Bool.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.11" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.11.1">Logi.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.7.12" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S2.T6.10.6.7.12.1">LAMB.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.6">
<td class="ltx_td ltx_align_center" id="S2.T6.7.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">(<math alttext="d_{q}^{h}" class="ltx_Math" display="inline" id="S2.T6.7.3.3.1.m1.1"><semantics id="S2.T6.7.3.3.1.m1.1a"><msubsup id="S2.T6.7.3.3.1.m1.1.1" xref="S2.T6.7.3.3.1.m1.1.1.cmml"><mi id="S2.T6.7.3.3.1.m1.1.1.2.2" xref="S2.T6.7.3.3.1.m1.1.1.2.2.cmml">d</mi><mi id="S2.T6.7.3.3.1.m1.1.1.2.3" xref="S2.T6.7.3.3.1.m1.1.1.2.3.cmml">q</mi><mi id="S2.T6.7.3.3.1.m1.1.1.3" xref="S2.T6.7.3.3.1.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T6.7.3.3.1.m1.1b"><apply id="S2.T6.7.3.3.1.m1.1.1.cmml" xref="S2.T6.7.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.7.3.3.1.m1.1.1.1.cmml" xref="S2.T6.7.3.3.1.m1.1.1">superscript</csymbol><apply id="S2.T6.7.3.3.1.m1.1.1.2.cmml" xref="S2.T6.7.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.7.3.3.1.m1.1.1.2.1.cmml" xref="S2.T6.7.3.3.1.m1.1.1">subscript</csymbol><ci id="S2.T6.7.3.3.1.m1.1.1.2.2.cmml" xref="S2.T6.7.3.3.1.m1.1.1.2.2">𝑑</ci><ci id="S2.T6.7.3.3.1.m1.1.1.2.3.cmml" xref="S2.T6.7.3.3.1.m1.1.1.2.3">𝑞</ci></apply><ci id="S2.T6.7.3.3.1.m1.1.1.3.cmml" xref="S2.T6.7.3.3.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.7.3.3.1.m1.1c">d_{q}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T6.7.3.3.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=3072)</td>
<td class="ltx_td ltx_align_center" id="S2.T6.8.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">(<math alttext="n_{k}^{h}" class="ltx_Math" display="inline" id="S2.T6.8.4.4.2.m1.1"><semantics id="S2.T6.8.4.4.2.m1.1a"><msubsup id="S2.T6.8.4.4.2.m1.1.1" xref="S2.T6.8.4.4.2.m1.1.1.cmml"><mi id="S2.T6.8.4.4.2.m1.1.1.2.2" xref="S2.T6.8.4.4.2.m1.1.1.2.2.cmml">n</mi><mi id="S2.T6.8.4.4.2.m1.1.1.2.3" xref="S2.T6.8.4.4.2.m1.1.1.2.3.cmml">k</mi><mi id="S2.T6.8.4.4.2.m1.1.1.3" xref="S2.T6.8.4.4.2.m1.1.1.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T6.8.4.4.2.m1.1b"><apply id="S2.T6.8.4.4.2.m1.1.1.cmml" xref="S2.T6.8.4.4.2.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.8.4.4.2.m1.1.1.1.cmml" xref="S2.T6.8.4.4.2.m1.1.1">superscript</csymbol><apply id="S2.T6.8.4.4.2.m1.1.1.2.cmml" xref="S2.T6.8.4.4.2.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.8.4.4.2.m1.1.1.2.1.cmml" xref="S2.T6.8.4.4.2.m1.1.1">subscript</csymbol><ci id="S2.T6.8.4.4.2.m1.1.1.2.2.cmml" xref="S2.T6.8.4.4.2.m1.1.1.2.2">𝑛</ci><ci id="S2.T6.8.4.4.2.m1.1.1.2.3.cmml" xref="S2.T6.8.4.4.2.m1.1.1.2.3">𝑘</ci></apply><ci id="S2.T6.8.4.4.2.m1.1.1.3.cmml" xref="S2.T6.8.4.4.2.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.8.4.4.2.m1.1c">n_{k}^{h}</annotation><annotation encoding="application/x-llamapun" id="S2.T6.8.4.4.2.m1.1d">italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT</annotation></semantics></math>=4)</td>
<td class="ltx_td ltx_align_center" id="S2.T6.10.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;">(<math alttext="d^{h}_{k}" class="ltx_Math" display="inline" id="S2.T6.9.5.5.3.m1.1"><semantics id="S2.T6.9.5.5.3.m1.1a"><msubsup id="S2.T6.9.5.5.3.m1.1.1" xref="S2.T6.9.5.5.3.m1.1.1.cmml"><mi id="S2.T6.9.5.5.3.m1.1.1.2.2" xref="S2.T6.9.5.5.3.m1.1.1.2.2.cmml">d</mi><mi id="S2.T6.9.5.5.3.m1.1.1.3" xref="S2.T6.9.5.5.3.m1.1.1.3.cmml">k</mi><mi id="S2.T6.9.5.5.3.m1.1.1.2.3" xref="S2.T6.9.5.5.3.m1.1.1.2.3.cmml">h</mi></msubsup><annotation-xml encoding="MathML-Content" id="S2.T6.9.5.5.3.m1.1b"><apply id="S2.T6.9.5.5.3.m1.1.1.cmml" xref="S2.T6.9.5.5.3.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.9.5.5.3.m1.1.1.1.cmml" xref="S2.T6.9.5.5.3.m1.1.1">subscript</csymbol><apply id="S2.T6.9.5.5.3.m1.1.1.2.cmml" xref="S2.T6.9.5.5.3.m1.1.1"><csymbol cd="ambiguous" id="S2.T6.9.5.5.3.m1.1.1.2.1.cmml" xref="S2.T6.9.5.5.3.m1.1.1">superscript</csymbol><ci id="S2.T6.9.5.5.3.m1.1.1.2.2.cmml" xref="S2.T6.9.5.5.3.m1.1.1.2.2">𝑑</ci><ci id="S2.T6.9.5.5.3.m1.1.1.2.3.cmml" xref="S2.T6.9.5.5.3.m1.1.1.2.3">ℎ</ci></apply><ci id="S2.T6.9.5.5.3.m1.1.1.3.cmml" xref="S2.T6.9.5.5.3.m1.1.1.3">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.9.5.5.3.m1.1c">d^{h}_{k}</annotation><annotation encoding="application/x-llamapun" id="S2.T6.9.5.5.3.m1.1d">italic_d start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT</annotation></semantics></math>=<math alttext="d^{h}_{v}/2" class="ltx_Math" display="inline" id="S2.T6.10.6.6.4.m2.1"><semantics id="S2.T6.10.6.6.4.m2.1a"><mrow id="S2.T6.10.6.6.4.m2.1.1" xref="S2.T6.10.6.6.4.m2.1.1.cmml"><msubsup id="S2.T6.10.6.6.4.m2.1.1.2" xref="S2.T6.10.6.6.4.m2.1.1.2.cmml"><mi id="S2.T6.10.6.6.4.m2.1.1.2.2.2" xref="S2.T6.10.6.6.4.m2.1.1.2.2.2.cmml">d</mi><mi id="S2.T6.10.6.6.4.m2.1.1.2.3" xref="S2.T6.10.6.6.4.m2.1.1.2.3.cmml">v</mi><mi id="S2.T6.10.6.6.4.m2.1.1.2.2.3" xref="S2.T6.10.6.6.4.m2.1.1.2.2.3.cmml">h</mi></msubsup><mo id="S2.T6.10.6.6.4.m2.1.1.1" xref="S2.T6.10.6.6.4.m2.1.1.1.cmml">/</mo><mn id="S2.T6.10.6.6.4.m2.1.1.3" xref="S2.T6.10.6.6.4.m2.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T6.10.6.6.4.m2.1b"><apply id="S2.T6.10.6.6.4.m2.1.1.cmml" xref="S2.T6.10.6.6.4.m2.1.1"><divide id="S2.T6.10.6.6.4.m2.1.1.1.cmml" xref="S2.T6.10.6.6.4.m2.1.1.1"></divide><apply id="S2.T6.10.6.6.4.m2.1.1.2.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2"><csymbol cd="ambiguous" id="S2.T6.10.6.6.4.m2.1.1.2.1.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2">subscript</csymbol><apply id="S2.T6.10.6.6.4.m2.1.1.2.2.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2"><csymbol cd="ambiguous" id="S2.T6.10.6.6.4.m2.1.1.2.2.1.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2">superscript</csymbol><ci id="S2.T6.10.6.6.4.m2.1.1.2.2.2.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2.2.2">𝑑</ci><ci id="S2.T6.10.6.6.4.m2.1.1.2.2.3.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2.2.3">ℎ</ci></apply><ci id="S2.T6.10.6.6.4.m2.1.1.2.3.cmml" xref="S2.T6.10.6.6.4.m2.1.1.2.3">𝑣</ci></apply><cn id="S2.T6.10.6.6.4.m2.1.1.3.cmml" type="integer" xref="S2.T6.10.6.6.4.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.10.6.6.4.m2.1c">d^{h}_{v}/2</annotation><annotation encoding="application/x-llamapun" id="S2.T6.10.6.6.4.m2.1d">italic_d start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT / 2</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.8.4.1">52.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.8" style="padding-left:5.0pt;padding-right:5.0pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.9" style="padding-left:5.0pt;padding-right:5.0pt;">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.10" style="padding-left:5.0pt;padding-right:5.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.11" style="padding-left:5.0pt;padding-right:5.0pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.12" style="padding-left:5.0pt;padding-right:5.0pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.8.13" style="padding-left:5.0pt;padding-right:5.0pt;">36.8</td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.9.4.1">52.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;">38.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;">57.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.8" style="padding-left:5.0pt;padding-right:5.0pt;">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.9" style="padding-left:5.0pt;padding-right:5.0pt;">72.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.10" style="padding-left:5.0pt;padding-right:5.0pt;">83.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.11" style="padding-left:5.0pt;padding-right:5.0pt;">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.12" style="padding-left:5.0pt;padding-right:5.0pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.9.13" style="padding-left:5.0pt;padding-right:5.0pt;">38.8</td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.1" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.10.4.1">52.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.6" style="padding-left:5.0pt;padding-right:5.0pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.7" style="padding-left:5.0pt;padding-right:5.0pt;">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.8" style="padding-left:5.0pt;padding-right:5.0pt;">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.9" style="padding-left:5.0pt;padding-right:5.0pt;">73.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.10" style="padding-left:5.0pt;padding-right:5.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.11" style="padding-left:5.0pt;padding-right:5.0pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.12" style="padding-left:5.0pt;padding-right:5.0pt;">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.10.13" style="padding-left:5.0pt;padding-right:5.0pt;">37.4</td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.11.4.1">51.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.5" style="padding-left:5.0pt;padding-right:5.0pt;">54.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.6" style="padding-left:5.0pt;padding-right:5.0pt;">37.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.7" style="padding-left:5.0pt;padding-right:5.0pt;">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.8" style="padding-left:5.0pt;padding-right:5.0pt;">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.9" style="padding-left:5.0pt;padding-right:5.0pt;">72.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.10" style="padding-left:5.0pt;padding-right:5.0pt;">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.11" style="padding-left:5.0pt;padding-right:5.0pt;">60.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.12" style="padding-left:5.0pt;padding-right:5.0pt;">26.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.10.6.11.13" style="padding-left:5.0pt;padding-right:5.0pt;">35.1</td>
</tr>
<tr class="ltx_tr" id="S2.T6.10.6.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.1" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.2" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T6.10.6.12.4.1">52.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.6" style="padding-left:5.0pt;padding-right:5.0pt;">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.7" style="padding-left:5.0pt;padding-right:5.0pt;">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.8" style="padding-left:5.0pt;padding-right:5.0pt;">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.9" style="padding-left:5.0pt;padding-right:5.0pt;">74.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.10" style="padding-left:5.0pt;padding-right:5.0pt;">84.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.11" style="padding-left:5.0pt;padding-right:5.0pt;">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.12" style="padding-left:5.0pt;padding-right:5.0pt;">26.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T6.10.6.12.13" style="padding-left:5.0pt;padding-right:5.0pt;">37.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents an ablation study on three different optimization strategies applied to the self-attention mechanism of a language model.  The strategies are: augmenting the query (Q) component by increasing its dimensionality; reducing the number of key (K) heads; and reducing the dimensionality of the key heads. The table shows the model's performance across various metrics, depending on which combinations of these three strategies are used. A checkmark (✓) indicates that a strategy was used, while an X (✗) indicates it wasn't.  The baseline model configuration (when none of the three strategies are applied) uses the same number of key and value heads (16), with no augmentation of the query component.
> <details>
> <summary>read the caption</summary>
> Table 6: Combinations of three strategies for optimizing the self-attention architecture: augmented Q, compressing the number of K heads, and compressing K head dimension. ✓ and ✗ represent whether the corresponding strategy is used or not respectively. If the strategy is not used, the standard model setting is adopted (i.e. nkhsuperscriptsubscript𝑛𝑘ℎn_{k}^{h}italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT=nvhsuperscriptsubscript𝑛𝑣ℎn_{v}^{h}italic_n start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT=16, and Q is not augmented).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T7.3">
<tr class="ltx_tr" id="S2.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T7.1.1.1.1">Parameter <math alttext="\backslash" class="ltx_Math" display="inline" id="S2.T7.1.1.1.1.m1.1"><semantics id="S2.T7.1.1.1.1.m1.1a"><mo id="S2.T7.1.1.1.1.m1.1.1" xref="S2.T7.1.1.1.1.m1.1.1.cmml">\</mo><annotation-xml encoding="MathML-Content" id="S2.T7.1.1.1.1.m1.1b"><ci id="S2.T7.1.1.1.1.m1.1.1.cmml" xref="S2.T7.1.1.1.1.m1.1.1">\</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.1.1.1.1.m1.1c">\backslash</annotation><annotation encoding="application/x-llamapun" id="S2.T7.1.1.1.1.m1.1d">\</annotation></semantics></math> Scale</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T7.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T7.1.1.2.1">1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T7.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T7.1.1.3.1">10B</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T7.3.4.1">Layers</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.4.2">26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.4.3">32</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.5.1">Hidden Dimension</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.5.2">2,048</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.5.3">4,096</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.6.1">FFN Dimension</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.6.2">6,144</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.6.3">14,336</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.7.1">Aug Q Dimension</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.7.2">3,072</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.7.3">6,144</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.8.1">Attention Heads</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.8.2">32</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.8.3">32</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.9.1">Key Heads</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.9.2">4</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.9.3">4</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.10.1">Value Heads</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.10.2">16</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.10.3">16</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.11.1">Peak Learning Rate</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.11.2">4.0e-4</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.11.3">1.5e-4</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.12.1">Activation Function</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.12.2">SwiGLU</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.12.3">SwiGLU</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T7.3.13.1">Vocabulary Size</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.13.2">128,256</td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.13.3">128,256</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S2.T7.3.3.3">Positional Embeddings</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.2.2.1">ROPE (<math alttext="\theta=" class="ltx_Math" display="inline" id="S2.T7.2.2.1.m1.1"><semantics id="S2.T7.2.2.1.m1.1a"><mrow id="S2.T7.2.2.1.m1.1.1" xref="S2.T7.2.2.1.m1.1.1.cmml"><mi id="S2.T7.2.2.1.m1.1.1.2" xref="S2.T7.2.2.1.m1.1.1.2.cmml">θ</mi><mo id="S2.T7.2.2.1.m1.1.1.1" xref="S2.T7.2.2.1.m1.1.1.1.cmml">=</mo><mi id="S2.T7.2.2.1.m1.1.1.3" xref="S2.T7.2.2.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T7.2.2.1.m1.1b"><apply id="S2.T7.2.2.1.m1.1.1.cmml" xref="S2.T7.2.2.1.m1.1.1"><eq id="S2.T7.2.2.1.m1.1.1.1.cmml" xref="S2.T7.2.2.1.m1.1.1.1"></eq><ci id="S2.T7.2.2.1.m1.1.1.2.cmml" xref="S2.T7.2.2.1.m1.1.1.2">𝜃</ci><csymbol cd="latexml" id="S2.T7.2.2.1.m1.1.1.3.cmml" xref="S2.T7.2.2.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.2.2.1.m1.1c">\theta=</annotation><annotation encoding="application/x-llamapun" id="S2.T7.2.2.1.m1.1d">italic_θ =</annotation></semantics></math>50,000)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.2">ROPE (<math alttext="\theta=" class="ltx_Math" display="inline" id="S2.T7.3.3.2.m1.1"><semantics id="S2.T7.3.3.2.m1.1a"><mrow id="S2.T7.3.3.2.m1.1.1" xref="S2.T7.3.3.2.m1.1.1.cmml"><mi id="S2.T7.3.3.2.m1.1.1.2" xref="S2.T7.3.3.2.m1.1.1.2.cmml">θ</mi><mo id="S2.T7.3.3.2.m1.1.1.1" xref="S2.T7.3.3.2.m1.1.1.1.cmml">=</mo><mi id="S2.T7.3.3.2.m1.1.1.3" xref="S2.T7.3.3.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T7.3.3.2.m1.1b"><apply id="S2.T7.3.3.2.m1.1.1.cmml" xref="S2.T7.3.3.2.m1.1.1"><eq id="S2.T7.3.3.2.m1.1.1.1.cmml" xref="S2.T7.3.3.2.m1.1.1.1"></eq><ci id="S2.T7.3.3.2.m1.1.1.2.cmml" xref="S2.T7.3.3.2.m1.1.1.2">𝜃</ci><csymbol cd="latexml" id="S2.T7.3.3.2.m1.1.1.3.cmml" xref="S2.T7.3.3.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.3.3.2.m1.1c">\theta=</annotation><annotation encoding="application/x-llamapun" id="S2.T7.3.3.2.m1.1d">italic_θ =</annotation></semantics></math>500,000)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the key architectural configurations and hyperparameters of the two SIGMA models: SIGMA 1.5B and SIGMA 10B.  It provides a comprehensive overview of the models' specifications, including the number of layers, hidden dimension, FFN (Feed-Forward Network) dimension, augmented Q dimension, attention heads, key heads, value heads, peak learning rate, activation function, and vocabulary size. This information is crucial for understanding the design choices and the resulting performance of each model.
> <details>
> <summary>read the caption</summary>
> Table 7: Key configurations and hyperparameters of Sigma 1.5B and 10B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T8.5">
<tr class="ltx_tr" id="S3.T8.5.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T8.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.1.1.1">Prefix</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T8.5.1.2"><span class="ltx_text ltx_font_smallcaps" id="S3.T8.5.1.2.1">Std</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T8.5.1.3">
<span class="ltx_text ltx_font_smallcaps" id="S3.T8.5.1.3.1">Sigma</span><span class="ltx_text ltx_font_bold" id="S3.T8.5.1.3.2"> 1.5B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T8.5.1.4"><span class="ltx_text ltx_font_bold" id="S3.T8.5.1.4.1">Relative Improvement</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.5.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.2.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.1.1">Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.2"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.2.1">Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.3"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.3.1">Combine</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.5.2.4"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.4.1">Total Cost</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.5"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.5.1">Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.6"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.6.1">Combine</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.5.2.7"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.7.1">Total Cost</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.8"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.8.1">Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.9"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.9.1">Combine</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.2.10"><span class="ltx_text ltx_font_bold" id="S3.T8.5.2.10.1">Total Cost</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.5.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.5.3.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.3.1.1">2k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.2">2.53E+6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.3">1.88E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.5.3.4">4.41E+6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.5">2.50E+6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.6">1.85E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.5.3.7">4.34E+6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.8">1.17%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.9">1.68%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.5.3.10">1.39%</td>
</tr>
<tr class="ltx_tr" id="S3.T8.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.4.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.4.1.1">4k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.2">4.68E+6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.3">1.91E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.4.4">6.59E+6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.5">3.49E+6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.6">1.91E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.4.7">5.40E+6</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.8">25.33%</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.9">0.08%</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.4.10">18.02%</td>
</tr>
<tr class="ltx_tr" id="S3.T8.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.5.1.1">16k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.2">1.52E+7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.3">1.94E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.5.4">1.72E+7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.5">1.12E+7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.6">1.94E+6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T8.5.5.7">1.31E+7</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.8">26.30%</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.9">0.25%</td>
<td class="ltx_td ltx_align_center" id="S3.T8.5.5.10">23.35%</td>
</tr>
<tr class="ltx_tr" id="S3.T8.5.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T8.5.6.1"><span class="ltx_text ltx_font_bold" id="S3.T8.5.6.1.1">32k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.2">2.75E+7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.3">1.99E+6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T8.5.6.4">2.95E+7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.5">2.00E+7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.6">2.01E+6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T8.5.6.7">2.21E+7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.8">27.21%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.9">-0.93%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.5.6.10">25.31%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Kernel Execution Time (KET) results in nanoseconds (ns) for different prefix lengths, ranging from 2,000 to 32,000 tokens.  The output length is kept constant at 10 tokens. The KET is broken down into two key components: the 'Split' kernel and the 'Combine' kernel, which represent different stages of the flash attention mechanism.  The table compares the performance of the SIGMA model (a proposed model in the paper) with that of a standard model (STD) for each prefix length, highlighting the improvements in efficiency achieved by SIGMA.
> <details>
> <summary>read the caption</summary>
> Table 8: KET Results (ns) with the prefix length increase from 2k to 32k, keeping the output length as 10. Split represents the split kernel and Combine represents the combine kernel.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T9.1">
<tr class="ltx_tr" id="S4.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T9.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.2.1">Data Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T9.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.3.1">Sources</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.4.1">Size</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T9.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.1"># Tokens</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.1.2.1" rowspan="2"><span class="ltx_text" id="S4.T9.1.2.1.1">General System</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.1.2.2">CCF Ranking list</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T9.1.2.3">14.0 G</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T9.1.2.4">3.3 B</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.3">
<td class="ltx_td ltx_align_left" id="S4.T9.1.3.1">arXiv</td>
<td class="ltx_td ltx_align_right" id="S4.T9.1.3.2">33.0 G</td>
<td class="ltx_td ltx_align_right" id="S4.T9.1.3.3">5.4 B</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.1.4.1"><span class="ltx_text" id="S4.T9.1.4.1.1">Design Capability</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.1.4.2">Technical blogs &amp; Developer forums</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T9.1.4.3">14.5 G</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T9.1.4.4">3.2 B</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T9.1.5.1"><span class="ltx_text" id="S4.T9.1.5.1.1">Debug Capability</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T9.1.5.2">Stack Overflow</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T9.1.5.3">38.9 G</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T9.1.5.4">7.6 B</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 shows the composition of the system domain pre-training data used for training the SIGMA language model.  It breaks down the data by type (General System, Design Capability, Debug Capability), source (e.g., CCF Ranking list, arXiv, Stack Overflow), size (in gigabytes), and number of tokens (in billions). This provides a detailed view of the data sources and their relative proportions used in SIGMA's pre-training, showing the emphasis placed on system-specific data in its training regime.
> <details>
> <summary>read the caption</summary>
> Table 9: Composition of the system domain pre-training data for Sigma.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T10.7">
<tr class="ltx_tr" id="S5.T10.7.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T10.7.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.2">
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.2.1">
<tr class="ltx_tr" id="S5.T10.7.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.2.1.1.1.1">CMD</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.2.1.2.1.1">Score</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.3">
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.3.1">
<tr class="ltx_tr" id="S5.T10.7.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.3.1.1.1.1">Output</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.3.1.2.1.1">Score</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.4">
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.4.1">
<tr class="ltx_tr" id="S5.T10.7.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.4.1.1.1.1">Calibration</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.4.1.2.1.1">Score</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.5">
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.5.1">
<tr class="ltx_tr" id="S5.T10.7.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.5.1.1.1.1">Exact</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.5.1.2.1.1">Match</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.6">
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.6.1">
<tr class="ltx_tr" id="S5.T10.7.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.6.1.1.1.1">Success</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.6.1.2.1.1">Ratio</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.7.1.7"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.7.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T10.7.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.2.1.1">GPT-3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.2">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.3">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.4">21.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.5">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.6">11.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.2.7">13.0</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.3">
<td class="ltx_td ltx_align_left" id="S5.T10.7.3.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.3.1.1">GPT-4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.2">84.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.3">61.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.4">62.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.5">13.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.6">21.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.3.7">25.0</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T10.7.4.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.4.1.1">Mistral-7B-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.2">80.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.3">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.4">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.5">24.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.6">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.7.4.7">30.7</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.5">
<td class="ltx_td ltx_align_left" id="S5.T10.7.5.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.5.1.1">Mistral-7B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.2">83.4</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.3">65.3</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.4">66.3</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.5">23.9</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.6">21.5</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.5.7">32.2</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.6">
<td class="ltx_td ltx_align_left" id="S5.T10.7.6.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.6.1.1">Llama3-8B-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.2">86.4</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.3">69.1</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.4">64.4</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.5">42.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.6">32.7</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.6.7">50.7</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.7">
<td class="ltx_td ltx_align_left" id="S5.T10.7.7.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.7.1.1">Llama3-8B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.7.2.1">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.7.3.1">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.4">69.3</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.7.5.1">46.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.7.6.1">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.7.7.1">57.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.8">
<td class="ltx_td ltx_align_left" id="S5.T10.7.8.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.8.1.1">Codegemma-7B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.2">84.2</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.3">61.8</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.4">65.9</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.5">23.9</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.6">21.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.8.7">32.7</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.9">
<td class="ltx_td ltx_align_left" id="S5.T10.7.9.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.9.1.1">Starcoder2-7B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.2">86.5</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.3">66.5</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.4">64.9</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.5">31.2</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.6">23.4</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.9.7">38.1</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.10">
<td class="ltx_td ltx_align_left" id="S5.T10.7.10.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.10.1.1">DeepSeekCoder1.5-7B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.2">86.3</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.3">68.4</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.4">63.9</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.5">41.0</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.6">30.7</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.10.7">49.3</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.11">
<td class="ltx_td ltx_align_left" id="S5.T10.7.11.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.11.1.1">Gemma2-9B-P-S</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.2"><span class="ltx_text ltx_font_bold" id="S5.T10.7.11.2.1">90.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.11.3.1">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.4"><span class="ltx_text ltx_font_bold" id="S5.T10.7.11.4.1">78.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.5">34.2</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.6">26.8</td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.11.7">43.9</td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T10.7.12.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T10.7.12.1.1">Sigma-System</span><span class="ltx_text ltx_font_bold" id="S5.T10.7.12.1.2">-10B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.12.2.1">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.3"><span class="ltx_text ltx_font_bold" id="S5.T10.7.12.3.1">80.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T10.7.12.4.1">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.5"><span class="ltx_text ltx_font_bold" id="S5.T10.7.12.5.1">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.6"><span class="ltx_text ltx_font_bold" id="S5.T10.7.12.6.1">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T10.7.12.7"><span class="ltx_text ltx_font_bold" id="S5.T10.7.12.7.1">74.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various large language models (LLMs) on the CMDGen NVIDIA subtask within the AIMICIUS benchmark.  The CMDGen task focuses on generating GPU-related commands. The NVIDIA subtask specifically targets commands for NVIDIA GPUs.  The table shows several metrics for each model, including the CMD Score (cosine similarity between generated and ground-truth commands), Output Score (cosine similarity of execution results), Calibration Score (accuracy measure), Exact Match (exact command match), Success Ratio (similar enough execution results), and Accuracy (overall accuracy).  The models are grouped and categorized, with the postfix '-S' indicating fine-tuning (SFT) with a preliminary version of the authors' dataset, and '-P' indicating pre-training on the authors' system-domain dataset.  This allows for a comparison of the impact of different training methods and datasets on the models' performance on this specific task.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance of different models on CMDGen NVIDIA subtask in AIMicius. The postfix of “-S” indicates that the model has been SFTed using a preliminary version of our SFT dataset, while “-P” denotes that the model has been pre-trained on our system-domain pre-training dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.2.1">
<tr class="ltx_tr" id="S5.T10.7.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.2.1.1.1.1">CMD</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.2.1.2.1.1">Score</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of the performance of various large language models (LLMs) on the AIMICIUS benchmark, a newly proposed evaluation suite specifically designed for system domain tasks.  The models compared include SIGMA-SYSTEM 10B (a fine-tuned version of the SIGMA model using a proprietary dataset), as well as several established baselines: GPT-4, Gemma2-9B-Instruct, Deepseek-Coder-7b-Instruct-v1.5, Qwen2.5-Coder-7B-Instruct, and Llama3-8B-Instruct.  The table evaluates performance across multiple tasks within the AIMICIUS benchmark, with metrics normalized to a 0-100 scale for easier comparison.  The most crucial metrics for each task are highlighted in bold. The results provide insights into the relative strengths and weaknesses of each model in handling the complexities of system-related tasks.
> <details>
> <summary>read the caption</summary>
> Table 11: Evaluation results on the AIMicius benchmark. The baselines include GPT-4, Gemma2-9B-Instruct, Deepseek-Coder-7b-Instruct-v1.5, Qwen2.5-Coder-7B-Instruct, and Llama3-8B-Instruct. All metrics are normalized to a scale of 0 to 100, with higher values indicating better performance. Bolded metrics represent the most critical evaluation criteria for each task. Sigma-System 10B is fine-tuned (SFT) using our proprietary dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.3.1">
<tr class="ltx_tr" id="S5.T10.7.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.3.1.1.1.1">Output</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.3.1.2.1.1">Score</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of SIGMA-1.5B against several other state-of-the-art language models on various commonsense reasoning and text understanding benchmarks.  The results are obtained using zero-shot prompting, and the table shows the performance on each benchmark, reported as an average score across multiple metrics.  Note that the authors re-evaluated the baseline models to ensure fair comparisons and consistency; therefore, the values may slightly differ from the original reports of the baseline models.
> <details>
> <summary>read the caption</summary>
> Table 12: Comparisons with baseline models on commonsense reasoning and text understanding tasks. Differences with original reports in the baseline models are due to our unified re-evaluations for fair comparisons.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T10.7.1.4.1">
<tr class="ltx_tr" id="S5.T10.7.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.4.1.1.1.1">Calibration</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T10.7.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T10.7.1.4.1.2.1.1">Score</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the SIGMA-1.5B model against several other state-of-the-art models on various general, coding, and mathematical problem-solving tasks.  The metrics evaluated include performance on the MMLU, MMLU-Pro, and BBH general problem-solving benchmarks; HumanEval and MBPP code generation benchmarks; and MATH and GSM8K math problem-solving benchmarks.  The results are presented to highlight SIGMA-1.5B's performance relative to other models with comparable parameter sizes, offering insight into its capabilities across different task domains. Note that differences from previously published results for the baseline models are due to the authors' consistent re-evaluation process for fair comparisons.
> <details>
> <summary>read the caption</summary>
> Table 13: Comparisons with baseline models on general, coding, and math problem-solving tasks. Differences with original reports in the baseline models are due to our unified re-evaluations for fair comparisons.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13629/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13629/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}