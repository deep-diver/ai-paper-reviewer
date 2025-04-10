---
title: "TransMamba: Flexibly Switching between Transformer and Mamba"
summary: "TransMamba: A novel architecture unifying Transformers and Mamba for flexible, efficient sequence modeling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tencent Hunyuan",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24067 {{< /keyword >}}
{{< keyword icon="writer" >}} Yixing Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24067" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24067" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24067/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models rely on **Transformers**, but their efficiency suffers with long sequences. **Mamba**, a state space model, offers efficiency but struggles with contextual learning. Existing hybrid models sharing layers have limitations, like fixed structure and order, hindering exploration. This paper recognizes the complimentary nature between Transformers and Mamba, paving the way for a unified architecture to leverage both of their strengths.



To address these limitations, the paper introduces **TransMamba**, a novel framework unifying Transformers and Mamba. It dynamically switches between attention and state space mechanisms using shared parameters. A memory converter bridges the gap between the two, ensuring seamless information flow. The flexible TransPoint scheduling optimizes the use of each structure and contributes to better performance and efficiency. Extensive experiments confirm TransMamba's efficacy and consistency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TransMamba flexibly combines Transformer and Mamba architectures using shared parameters and a memory converter. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework achieves superior training efficiency and performance compared to baselines. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research validates a deeper consistency between Transformer and Mamba paradigms. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel architecture, offering a more efficient and flexible approach to sequence modeling, potentially impacting future LLM designs and related research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.24067/x1.png)

> 🔼 TransMamba uses shared parameters for both the Transformer's attention mechanism and Mamba's state space model (SSM).  The choice between using attention or SSM for processing tokens is determined dynamically by TransPoints, which are strategically placed within the token sequence. TransPoints act as switching points, allowing the model to adapt its computational approach based on the length and characteristics of the input sequence.  This flexible approach combines the strengths of both Transformer and Mamba, leveraging attention for shorter sequences and SSM for longer ones to optimize efficiency and performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: TransMamba has shared parameters to flexibly switch between Attention and SSM, and TransPoints decide which parts of token sequence use Attention or SSM.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T2.8.8.9.1.1" style="padding-top:1.15pt;padding-bottom:1.15pt;">Attention</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T2.8.8.9.1.2" style="padding-top:1.15pt;padding-bottom:1.15pt;">SSM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.1.1" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{Q}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{Q}})" class="ltx_Math" display="inline" id="S2.T2.1.1.1.1.m1.1"><semantics id="S2.T2.1.1.1.1.m1.1a"><mrow id="S2.T2.1.1.1.1.m1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.cmml"><mi id="S2.T2.1.1.1.1.m1.1.1.3" xref="S2.T2.1.1.1.1.m1.1.1.3.cmml">𝐐</mi><mo id="S2.T2.1.1.1.1.m1.1.1.2" xref="S2.T2.1.1.1.1.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.1.1.1.1.m1.1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.1.cmml"><mi id="S2.T2.1.1.1.1.m1.1.1.1.3" xref="S2.T2.1.1.1.1.m1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.1.1.1.1.m1.1.1.1.2" xref="S2.T2.1.1.1.1.m1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.1.1.1.1.m1.1.1.1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.1.1.1.1.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.2" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.2" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.3" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.3.cmml">𝐐</mi></msub></mrow><mo id="S2.T2.1.1.1.1.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.1.m1.1b"><apply id="S2.T2.1.1.1.1.m1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1"><eq id="S2.T2.1.1.1.1.m1.1.1.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.2"></eq><ci id="S2.T2.1.1.1.1.m1.1.1.3.cmml" xref="S2.T2.1.1.1.1.m1.1.1.3">𝐐</ci><apply id="S2.T2.1.1.1.1.m1.1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1"><times id="S2.T2.1.1.1.1.m1.1.1.1.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.2"></times><ci id="S2.T2.1.1.1.1.m1.1.1.1.3.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.3">𝛿</ci><apply id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1"><times id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.1"></times><ci id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.1.1.1.1.m1.1.1.1.1.1.1.3.3">𝐐</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.1.m1.1c">\mathbf{Q}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{Q}})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.1.m1.1d">bold_Q = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT bold_Q end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.2.2.2.2" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{C}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{C}})" class="ltx_Math" display="inline" id="S2.T2.2.2.2.2.m1.1"><semantics id="S2.T2.2.2.2.2.m1.1a"><mrow id="S2.T2.2.2.2.2.m1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.cmml"><mi id="S2.T2.2.2.2.2.m1.1.1.3" xref="S2.T2.2.2.2.2.m1.1.1.3.cmml">𝐂</mi><mo id="S2.T2.2.2.2.2.m1.1.1.2" xref="S2.T2.2.2.2.2.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.2.2.2.2.m1.1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.1.cmml"><mi id="S2.T2.2.2.2.2.m1.1.1.1.3" xref="S2.T2.2.2.2.2.m1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.2.2.2.2.m1.1.1.1.2" xref="S2.T2.2.2.2.2.m1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.2.2.2.2.m1.1.1.1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.2.2.2.2.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.2" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.2" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.3" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.3.cmml">𝐂</mi></msub></mrow><mo id="S2.T2.2.2.2.2.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.2.2.m1.1b"><apply id="S2.T2.2.2.2.2.m1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1"><eq id="S2.T2.2.2.2.2.m1.1.1.2.cmml" xref="S2.T2.2.2.2.2.m1.1.1.2"></eq><ci id="S2.T2.2.2.2.2.m1.1.1.3.cmml" xref="S2.T2.2.2.2.2.m1.1.1.3">𝐂</ci><apply id="S2.T2.2.2.2.2.m1.1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1"><times id="S2.T2.2.2.2.2.m1.1.1.1.2.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.2"></times><ci id="S2.T2.2.2.2.2.m1.1.1.1.3.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.3">𝛿</ci><apply id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1"><times id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.1"></times><ci id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.2.2.2.2.m1.1.1.1.1.1.1.3.3">𝐂</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.2.2.m1.1c">\mathbf{C}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{C}})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.2.2.m1.1d">bold_C = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT bold_C end_POSTSUBSCRIPT )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.4.4">
<td class="ltx_td ltx_align_left" id="S2.T2.3.3.3.1" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{K}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{K}})" class="ltx_Math" display="inline" id="S2.T2.3.3.3.1.m1.1"><semantics id="S2.T2.3.3.3.1.m1.1a"><mrow id="S2.T2.3.3.3.1.m1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.cmml"><mi id="S2.T2.3.3.3.1.m1.1.1.3" xref="S2.T2.3.3.3.1.m1.1.1.3.cmml">𝐊</mi><mo id="S2.T2.3.3.3.1.m1.1.1.2" xref="S2.T2.3.3.3.1.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.3.3.3.1.m1.1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.1.cmml"><mi id="S2.T2.3.3.3.1.m1.1.1.1.3" xref="S2.T2.3.3.3.1.m1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.3.3.3.1.m1.1.1.1.2" xref="S2.T2.3.3.3.1.m1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.3.3.3.1.m1.1.1.1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.3.3.3.1.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.2" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.2" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.3" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.3.cmml">𝐊</mi></msub></mrow><mo id="S2.T2.3.3.3.1.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.3.1.m1.1b"><apply id="S2.T2.3.3.3.1.m1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1"><eq id="S2.T2.3.3.3.1.m1.1.1.2.cmml" xref="S2.T2.3.3.3.1.m1.1.1.2"></eq><ci id="S2.T2.3.3.3.1.m1.1.1.3.cmml" xref="S2.T2.3.3.3.1.m1.1.1.3">𝐊</ci><apply id="S2.T2.3.3.3.1.m1.1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1"><times id="S2.T2.3.3.3.1.m1.1.1.1.2.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.2"></times><ci id="S2.T2.3.3.3.1.m1.1.1.1.3.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.3">𝛿</ci><apply id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1"><times id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.1"></times><ci id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.3.3.3.1.m1.1.1.1.1.1.1.3.3">𝐊</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.3.1.m1.1c">\mathbf{K}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{K}})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.3.1.m1.1d">bold_K = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT bold_K end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S2.T2.4.4.4.2" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{B}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{B}})" class="ltx_Math" display="inline" id="S2.T2.4.4.4.2.m1.1"><semantics id="S2.T2.4.4.4.2.m1.1a"><mrow id="S2.T2.4.4.4.2.m1.1.1" xref="S2.T2.4.4.4.2.m1.1.1.cmml"><mi id="S2.T2.4.4.4.2.m1.1.1.3" xref="S2.T2.4.4.4.2.m1.1.1.3.cmml">𝐁</mi><mo id="S2.T2.4.4.4.2.m1.1.1.2" xref="S2.T2.4.4.4.2.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.4.4.4.2.m1.1.1.1" xref="S2.T2.4.4.4.2.m1.1.1.1.cmml"><mi id="S2.T2.4.4.4.2.m1.1.1.1.3" xref="S2.T2.4.4.4.2.m1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.4.4.4.2.m1.1.1.1.2" xref="S2.T2.4.4.4.2.m1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.4.4.4.2.m1.1.1.1.1.1" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.4.4.4.2.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.2" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.1" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.2" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.3" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.3.cmml">𝐁</mi></msub></mrow><mo id="S2.T2.4.4.4.2.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.4.2.m1.1b"><apply id="S2.T2.4.4.4.2.m1.1.1.cmml" xref="S2.T2.4.4.4.2.m1.1.1"><eq id="S2.T2.4.4.4.2.m1.1.1.2.cmml" xref="S2.T2.4.4.4.2.m1.1.1.2"></eq><ci id="S2.T2.4.4.4.2.m1.1.1.3.cmml" xref="S2.T2.4.4.4.2.m1.1.1.3">𝐁</ci><apply id="S2.T2.4.4.4.2.m1.1.1.1.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1"><times id="S2.T2.4.4.4.2.m1.1.1.1.2.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.2"></times><ci id="S2.T2.4.4.4.2.m1.1.1.1.3.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.3">𝛿</ci><apply id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1"><times id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.1"></times><ci id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.4.4.4.2.m1.1.1.1.1.1.1.3.3">𝐁</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.4.2.m1.1c">\mathbf{B}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{B}})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.4.2.m1.1d">bold_B = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT bold_B end_POSTSUBSCRIPT )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.6">
<td class="ltx_td ltx_align_left" id="S2.T2.5.5.5.1" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{V}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{V}})" class="ltx_Math" display="inline" id="S2.T2.5.5.5.1.m1.1"><semantics id="S2.T2.5.5.5.1.m1.1a"><mrow id="S2.T2.5.5.5.1.m1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.cmml"><mi id="S2.T2.5.5.5.1.m1.1.1.3" xref="S2.T2.5.5.5.1.m1.1.1.3.cmml">𝐕</mi><mo id="S2.T2.5.5.5.1.m1.1.1.2" xref="S2.T2.5.5.5.1.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.5.5.5.1.m1.1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.1.cmml"><mi id="S2.T2.5.5.5.1.m1.1.1.1.3" xref="S2.T2.5.5.5.1.m1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.5.5.5.1.m1.1.1.1.2" xref="S2.T2.5.5.5.1.m1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.5.5.5.1.m1.1.1.1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.5.5.5.1.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.2" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.2" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.3" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.3.cmml">𝐕</mi></msub></mrow><mo id="S2.T2.5.5.5.1.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.5.5.5.1.m1.1b"><apply id="S2.T2.5.5.5.1.m1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1"><eq id="S2.T2.5.5.5.1.m1.1.1.2.cmml" xref="S2.T2.5.5.5.1.m1.1.1.2"></eq><ci id="S2.T2.5.5.5.1.m1.1.1.3.cmml" xref="S2.T2.5.5.5.1.m1.1.1.3">𝐕</ci><apply id="S2.T2.5.5.5.1.m1.1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1"><times id="S2.T2.5.5.5.1.m1.1.1.1.2.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.2"></times><ci id="S2.T2.5.5.5.1.m1.1.1.1.3.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.3">𝛿</ci><apply id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1"><times id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.1"></times><ci id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.5.5.5.1.m1.1.1.1.1.1.1.3.3">𝐕</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.5.5.1.m1.1c">\mathbf{V}=\delta(\mathbf{H}\mathcal{W}_{\mathbf{V}})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.5.5.1.m1.1d">bold_V = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT bold_V end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S2.T2.6.6.6.2" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{X}=\delta(\mathbf{H}\mathcal{W}_{x})\circ\Delta" class="ltx_Math" display="inline" id="S2.T2.6.6.6.2.m1.1"><semantics id="S2.T2.6.6.6.2.m1.1a"><mrow id="S2.T2.6.6.6.2.m1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.cmml"><mi id="S2.T2.6.6.6.2.m1.1.1.3" xref="S2.T2.6.6.6.2.m1.1.1.3.cmml">𝐗</mi><mo id="S2.T2.6.6.6.2.m1.1.1.2" xref="S2.T2.6.6.6.2.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.6.6.6.2.m1.1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.1.cmml"><mrow id="S2.T2.6.6.6.2.m1.1.1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.1.1.cmml"><mi id="S2.T2.6.6.6.2.m1.1.1.1.1.3" xref="S2.T2.6.6.6.2.m1.1.1.1.1.3.cmml">δ</mi><mo id="S2.T2.6.6.6.2.m1.1.1.1.1.2" xref="S2.T2.6.6.6.2.m1.1.1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.cmml"><mo id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.cmml"><mi id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.2" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.2.cmml">𝐇</mi><mo id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.1" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.1.cmml">⁢</mo><msub id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.2" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.2.cmml">𝒲</mi><mi id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.3" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.3.cmml">x</mi></msub></mrow><mo id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.3" rspace="0.055em" stretchy="false" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow><mo id="S2.T2.6.6.6.2.m1.1.1.1.2" rspace="0.222em" xref="S2.T2.6.6.6.2.m1.1.1.1.2.cmml">∘</mo><mi id="S2.T2.6.6.6.2.m1.1.1.1.3" mathvariant="normal" xref="S2.T2.6.6.6.2.m1.1.1.1.3.cmml">Δ</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.6.6.6.2.m1.1b"><apply id="S2.T2.6.6.6.2.m1.1.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1"><eq id="S2.T2.6.6.6.2.m1.1.1.2.cmml" xref="S2.T2.6.6.6.2.m1.1.1.2"></eq><ci id="S2.T2.6.6.6.2.m1.1.1.3.cmml" xref="S2.T2.6.6.6.2.m1.1.1.3">𝐗</ci><apply id="S2.T2.6.6.6.2.m1.1.1.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1"><compose id="S2.T2.6.6.6.2.m1.1.1.1.2.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.2"></compose><apply id="S2.T2.6.6.6.2.m1.1.1.1.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1"><times id="S2.T2.6.6.6.2.m1.1.1.1.1.2.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.2"></times><ci id="S2.T2.6.6.6.2.m1.1.1.1.1.3.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.3">𝛿</ci><apply id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1"><times id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.1"></times><ci id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.2.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.2">𝐇</ci><apply id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.2">𝒲</ci><ci id="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.1.1.1.1.3.3">𝑥</ci></apply></apply></apply><ci id="S2.T2.6.6.6.2.m1.1.1.1.3.cmml" xref="S2.T2.6.6.6.2.m1.1.1.1.3">Δ</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.6.6.6.2.m1.1c">\mathbf{X}=\delta(\mathbf{H}\mathcal{W}_{x})\circ\Delta</annotation><annotation encoding="application/x-llamapun" id="S2.T2.6.6.6.2.m1.1d">bold_X = italic_δ ( bold_H caligraphic_W start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT ) ∘ roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T2.7.7.7.1" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{y}=(\mathbf{L}\circ\mathbf{Q}\mathbf{K}^{T})\mathbf{V}" class="ltx_Math" display="inline" id="S2.T2.7.7.7.1.m1.1"><semantics id="S2.T2.7.7.7.1.m1.1a"><mrow id="S2.T2.7.7.7.1.m1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.cmml"><mi id="S2.T2.7.7.7.1.m1.1.1.3" xref="S2.T2.7.7.7.1.m1.1.1.3.cmml">𝐲</mi><mo id="S2.T2.7.7.7.1.m1.1.1.2" xref="S2.T2.7.7.7.1.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.7.7.7.1.m1.1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.1.cmml"><mrow id="S2.T2.7.7.7.1.m1.1.1.1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.7.7.7.1.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.cmml"><mi id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.2" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.2.cmml">𝐋</mi><mo id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.1.cmml">∘</mo><msup id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.cmml"><mi id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.2" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.2.cmml">𝐐𝐊</mi><mi id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.3" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.3.cmml">T</mi></msup></mrow><mo id="S2.T2.7.7.7.1.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S2.T2.7.7.7.1.m1.1.1.1.2" xref="S2.T2.7.7.7.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S2.T2.7.7.7.1.m1.1.1.1.3" xref="S2.T2.7.7.7.1.m1.1.1.1.3.cmml">𝐕</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.7.7.7.1.m1.1b"><apply id="S2.T2.7.7.7.1.m1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1"><eq id="S2.T2.7.7.7.1.m1.1.1.2.cmml" xref="S2.T2.7.7.7.1.m1.1.1.2"></eq><ci id="S2.T2.7.7.7.1.m1.1.1.3.cmml" xref="S2.T2.7.7.7.1.m1.1.1.3">𝐲</ci><apply id="S2.T2.7.7.7.1.m1.1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1"><times id="S2.T2.7.7.7.1.m1.1.1.1.2.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.2"></times><apply id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1"><compose id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.1"></compose><ci id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.2">𝐋</ci><apply id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3">superscript</csymbol><ci id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.2">𝐐𝐊</ci><ci id="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.1.1.1.3.3">𝑇</ci></apply></apply><ci id="S2.T2.7.7.7.1.m1.1.1.1.3.cmml" xref="S2.T2.7.7.7.1.m1.1.1.1.3">𝐕</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.7.7.7.1.m1.1c">\mathbf{y}=(\mathbf{L}\circ\mathbf{Q}\mathbf{K}^{T})\mathbf{V}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.7.7.7.1.m1.1d">bold_y = ( bold_L ∘ bold_QK start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT ) bold_V</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T2.8.8.8.2" style="padding-top:1.15pt;padding-bottom:1.15pt;"><math alttext="\mathbf{y}=(\mathbf{A}^{\times}\circ\mathbf{C}\mathbf{B}^{T})\mathbf{X}" class="ltx_Math" display="inline" id="S2.T2.8.8.8.2.m1.1"><semantics id="S2.T2.8.8.8.2.m1.1a"><mrow id="S2.T2.8.8.8.2.m1.1.1" xref="S2.T2.8.8.8.2.m1.1.1.cmml"><mi id="S2.T2.8.8.8.2.m1.1.1.3" xref="S2.T2.8.8.8.2.m1.1.1.3.cmml">𝐲</mi><mo id="S2.T2.8.8.8.2.m1.1.1.2" xref="S2.T2.8.8.8.2.m1.1.1.2.cmml">=</mo><mrow id="S2.T2.8.8.8.2.m1.1.1.1" xref="S2.T2.8.8.8.2.m1.1.1.1.cmml"><mrow id="S2.T2.8.8.8.2.m1.1.1.1.1.1" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.cmml"><mo id="S2.T2.8.8.8.2.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.cmml"><msup id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.cmml"><mi id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.2" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.2.cmml">𝐀</mi><mo id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.3" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.3.cmml">×</mo></msup><mo id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.1.cmml">∘</mo><msup id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.cmml"><mi id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.2" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.2.cmml">𝐂𝐁</mi><mi id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.3" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.3.cmml">T</mi></msup></mrow><mo id="S2.T2.8.8.8.2.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S2.T2.8.8.8.2.m1.1.1.1.2" xref="S2.T2.8.8.8.2.m1.1.1.1.2.cmml">⁢</mo><mi id="S2.T2.8.8.8.2.m1.1.1.1.3" xref="S2.T2.8.8.8.2.m1.1.1.1.3.cmml">𝐗</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.8.8.8.2.m1.1b"><apply id="S2.T2.8.8.8.2.m1.1.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1"><eq id="S2.T2.8.8.8.2.m1.1.1.2.cmml" xref="S2.T2.8.8.8.2.m1.1.1.2"></eq><ci id="S2.T2.8.8.8.2.m1.1.1.3.cmml" xref="S2.T2.8.8.8.2.m1.1.1.3">𝐲</ci><apply id="S2.T2.8.8.8.2.m1.1.1.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1"><times id="S2.T2.8.8.8.2.m1.1.1.1.2.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.2"></times><apply id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1"><compose id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.1"></compose><apply id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2">superscript</csymbol><ci id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.2.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.2">𝐀</ci><times id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.3.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.2.3"></times></apply><apply id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3">superscript</csymbol><ci id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.2">𝐂𝐁</ci><ci id="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.3.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.1.1.1.3.3">𝑇</ci></apply></apply><ci id="S2.T2.8.8.8.2.m1.1.1.1.3.cmml" xref="S2.T2.8.8.8.2.m1.1.1.1.3">𝐗</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.8.8.8.2.m1.1c">\mathbf{y}=(\mathbf{A}^{\times}\circ\mathbf{C}\mathbf{B}^{T})\mathbf{X}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.8.8.8.2.m1.1d">bold_y = ( bold_A start_POSTSUPERSCRIPT × end_POSTSUPERSCRIPT ∘ bold_CB start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT ) bold_X</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 3 presents the main evaluation results of various models on eight diverse downstream tasks, including question answering, reading comprehension, and boolean question answering. The results showcase TransMamba's superior performance compared to baseline models such as Transformer, Mamba2, and their hybrid combinations, highlighting TransMamba's effectiveness and efficiency across different task types.
> <details>
> <summary>read the caption</summary>
> Table 3: Main evaluation results. TransMamba generally shows better performance.
> </details>





### In-depth insights


#### Mamba-Trans Unify
The concept of unifying Mamba and Transformers, while not explicitly addressed with that title, represents a significant direction in neural network research. Such a unification aims to combine **Transformers' strengths in capturing global dependencies** with **Mamba's efficiency in processing long sequences**. This hybrid approach could potentially address the limitations of each architecture when used in isolation. The key would be designing a framework that allows for dynamic switching or seamless integration of the two mechanisms, perhaps through shared parameter spaces or novel conversion techniques. Success in this area could lead to more efficient and powerful models for a wide range of sequence modeling tasks.

#### Shared Params SSM
The concept of 'Shared Params SSM' hints at a method where **state-space models (SSMs) utilize parameter matrices (e.g., QKV and CBx) from Transformer**. This strategy could significantly reduce the model's parameter count, leading to a more **efficient training process and reduced memory footprint**. It implies a deeper structural consistency between attention mechanisms and SSMs, and facilitates **dynamic switching between Transformer and Mamba**. Critically, the success hinges on a method to ensure consistent information flow when transitioning between the paradigms. This approach may also reduce structural restrictions, providing more flexibility and ultimately improving performance.

#### Dyn Hybrid Layers
Dynamic hybrid layers represent a novel approach to sequence modeling, allowing for flexible switching between different architectural paradigms like **Transformers and Mambas within the same network layer.** This dynamism addresses the inherent limitations of static hybrid models, which often impose rigid structural constraints. A dynamic approach enables the model to **adapt to varying input characteristics**, such as token length or task complexity, by selectively activating the most suitable mechanism – attention for shorter contexts or SSMs for longer sequences. Such flexibility can lead to **improved efficiency and performance** by leveraging the strengths of different architectures. Moreover, the **seamless integration of diverse mechanisms** within a unified layer can promote knowledge transfer and synergy, potentially unlocking new capabilities in sequence modeling.

#### Lossless Convert
The concept of a "lossless convert" is crucial for hybrid models like TransMamba, as it addresses the challenge of seamlessly transitioning between different architectural components, in this case, **attention mechanisms and SSMs**. A true lossless conversion ensures no information is lost during the transformation. This often involves carefully mapping the outputs of one module (e.g., attention) to the expected inputs of the next (e.g., an SSM). This requires an understanding of the inherent mathematical consistencies between the components. A well-designed lossless conversion module significantly impacts overall model performance and stability, especially when dealing with varying sequence lengths or token embeddings. Optimization in convert ensures lossless transfer of information and it's an essential stage to improve overall model.

#### Diverse Inference
The notion of diverse inference is compelling, suggesting that the **optimal architecture for training** a model might differ from the **optimal architecture for deploying** it. This is particularly relevant in scenarios where resources are constrained during inference. TransMamba's flexible architecture, allowing it to dynamically switch between Transformer and Mamba layers, opens up possibilities for exploiting this discrepancy. For instance, one could train TransMamba with a configuration optimized for computational efficiency (perhaps prioritizing Mamba layers for longer sequence handling), while deploying it with a configuration optimized for task-specific performance (potentially favoring Transformer layers for tasks requiring precise attention mechanisms). This allows exploiting task-suited structures to improve the outcome, without causing issues in overall consistency.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.24067/x2.png)

> 🔼 The figure shows a comparison of the training efficiency and performance of TransMamba against other models (Transformer, Mamba2, and Hybrid) across different model sizes. It demonstrates that TransMamba consistently achieves superior efficiency and performance, highlighting its scalability and effectiveness in large language modeling.
> <details>
> <summary>read the caption</summary>
> Figure 2: TransMamba generally shows better efficiency and performance with different sizes.
> </details>



![](https://arxiv.org/html/2503.24067/x3.png)

> 🔼 Figure 3 illustrates the architecture of TransMamba, a novel model that combines Transformer and Mamba.  Panel (a) shows the overall structure, highlighting how shared parameters (WQKV and WCBx) allow flexible switching between attention (Transformer) and SSM (Mamba) mechanisms.  The green path represents the SSM mode, while the blue path represents the attention mode, showing how tokens are processed differently based on which mode is selected.  Panel (b) details the Memory Converter, a crucial component for seamlessly transitioning information between the attention and SSM modules. Finally, Panel (c) depicts the TransPoint scheduling strategy, which determines when the model switches between attention and SSM modes during sequence processing.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Structure of TransMamba. Attention and SSM have shared parameters 𝐖𝐐𝐊𝐕subscript𝐖𝐐𝐊𝐕\mathbf{W_{QKV}}bold_W start_POSTSUBSCRIPT bold_QKV end_POSTSUBSCRIPT and 𝐖𝐂𝐁𝐱subscript𝐖𝐂𝐁𝐱\mathbf{W_{CBx}}bold_W start_POSTSUBSCRIPT bold_CBx end_POSTSUBSCRIPT. Tokens are either processed via the green path (SSM mode) or the blue path (Attention mode). (b) Memory Converter. (c) The TransPoint Scheduling of TransMamba.
> </details>



![](https://arxiv.org/html/2503.24067/x4.png)

> 🔼 This table compares the mathematical formulas of the self-attention mechanism used in Transformers and the state space model (SSM) used in Mamba.  It highlights the structural similarities between the two models by showing how their core operations (QKV in attention and CBx in SSM) can be represented in a dual form. This mathematical equivalence forms the foundation for unifying the Transformer and Mamba architectures within the TransMamba framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Compare the matrix form of SSM and Attention. The core mechanisms of Attention and SSM show consistency in dual form, which is the mathematical basis that enables us to unify Transformer and Mamba.
> </details>



![](https://arxiv.org/html/2503.24067/x5.png)

> 🔼 This table compares the computational cost (floating-point operations, or FLOPs) per layer for training three different sequence modeling architectures: the Transformer, Mamba, and the proposed TransMamba.  The Transformer's FLOPs are quadratic in sequence length (T), while Mamba's are linear.  TransMamba's FLOPs depend on the location of the 'TransPoint,' which determines the switch between Transformer and Mamba mechanisms.  The formula shows that TransMamba's efficiency is a function of the TransPoint's position and is influenced by the relative efficiency of the Transformer and Mamba implementations.
> <details>
> <summary>read the caption</summary>
> Table 2: Compare the training FLOPs of Transformer, Mamba and optimal TransMamba. The FLOPs of TransMamba is a quadratic function of the TransPoint, and its specific value is related to the speed optimization coefficients of Transformer and Mamba respectively.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.11.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.11.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S2.T2.11.3.4.1.1" style="padding-top:1.05pt;padding-bottom:1.05pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.11.3.4.1.2" style="padding-top:1.05pt;padding-bottom:1.05pt;">Training FLOPs</th>
</tr>
<tr class="ltx_tr" id="S2.T2.11.3.5.2">
<th class="ltx_td ltx_th ltx_th_row" id="S2.T2.11.3.5.2.1" style="padding-top:1.05pt;padding-bottom:1.05pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.11.3.5.2.2" style="padding-top:1.05pt;padding-bottom:1.05pt;">/ Layer</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.9.1.1.2" style="padding-top:1.05pt;padding-bottom:1.05pt;">Transformer</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.9.1.1.1" style="padding-top:1.05pt;padding-bottom:1.05pt;"><math alttext="O(\mathrm{T}^{2}\mathrm{N})" class="ltx_Math" display="inline" id="S2.T2.9.1.1.1.m1.1"><semantics id="S2.T2.9.1.1.1.m1.1a"><mrow id="S2.T2.9.1.1.1.m1.1.1" xref="S2.T2.9.1.1.1.m1.1.1.cmml"><mi id="S2.T2.9.1.1.1.m1.1.1.3" xref="S2.T2.9.1.1.1.m1.1.1.3.cmml">O</mi><mo id="S2.T2.9.1.1.1.m1.1.1.2" xref="S2.T2.9.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.9.1.1.1.m1.1.1.1.1" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S2.T2.9.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.9.1.1.1.m1.1.1.1.1.1" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.cmml"><msup id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.cmml"><mi id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.2" mathvariant="normal" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.2.cmml">T</mi><mn id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.3" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.3.cmml">2</mn></msup><mo id="S2.T2.9.1.1.1.m1.1.1.1.1.1.1" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.1.cmml">⁢</mo><mi id="S2.T2.9.1.1.1.m1.1.1.1.1.1.3" mathvariant="normal" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.3.cmml">N</mi></mrow><mo id="S2.T2.9.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.9.1.1.1.m1.1b"><apply id="S2.T2.9.1.1.1.m1.1.1.cmml" xref="S2.T2.9.1.1.1.m1.1.1"><times id="S2.T2.9.1.1.1.m1.1.1.2.cmml" xref="S2.T2.9.1.1.1.m1.1.1.2"></times><ci id="S2.T2.9.1.1.1.m1.1.1.3.cmml" xref="S2.T2.9.1.1.1.m1.1.1.3">𝑂</ci><apply id="S2.T2.9.1.1.1.m1.1.1.1.1.1.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1"><times id="S2.T2.9.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.1"></times><apply id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.1.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2">superscript</csymbol><ci id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.2.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.2">T</ci><cn id="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.3.cmml" type="integer" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.2.3">2</cn></apply><ci id="S2.T2.9.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S2.T2.9.1.1.1.m1.1.1.1.1.1.3">N</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.9.1.1.1.m1.1c">O(\mathrm{T}^{2}\mathrm{N})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.9.1.1.1.m1.1d">italic_O ( roman_T start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT roman_N )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.10.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.10.2.2.2" style="padding-top:1.05pt;padding-bottom:1.05pt;">Mamba</th>
<td class="ltx_td ltx_align_center" id="S2.T2.10.2.2.1" style="padding-top:1.05pt;padding-bottom:1.05pt;"><math alttext="O(\mathrm{TN}^{2})" class="ltx_Math" display="inline" id="S2.T2.10.2.2.1.m1.1"><semantics id="S2.T2.10.2.2.1.m1.1a"><mrow id="S2.T2.10.2.2.1.m1.1.1" xref="S2.T2.10.2.2.1.m1.1.1.cmml"><mi id="S2.T2.10.2.2.1.m1.1.1.3" xref="S2.T2.10.2.2.1.m1.1.1.3.cmml">O</mi><mo id="S2.T2.10.2.2.1.m1.1.1.2" xref="S2.T2.10.2.2.1.m1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.10.2.2.1.m1.1.1.1.1" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.cmml"><mo id="S2.T2.10.2.2.1.m1.1.1.1.1.2" stretchy="false" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.cmml">(</mo><msup id="S2.T2.10.2.2.1.m1.1.1.1.1.1" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.cmml"><mi id="S2.T2.10.2.2.1.m1.1.1.1.1.1.2" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.2.cmml">TN</mi><mn id="S2.T2.10.2.2.1.m1.1.1.1.1.1.3" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.3.cmml">2</mn></msup><mo id="S2.T2.10.2.2.1.m1.1.1.1.1.3" stretchy="false" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.10.2.2.1.m1.1b"><apply id="S2.T2.10.2.2.1.m1.1.1.cmml" xref="S2.T2.10.2.2.1.m1.1.1"><times id="S2.T2.10.2.2.1.m1.1.1.2.cmml" xref="S2.T2.10.2.2.1.m1.1.1.2"></times><ci id="S2.T2.10.2.2.1.m1.1.1.3.cmml" xref="S2.T2.10.2.2.1.m1.1.1.3">𝑂</ci><apply id="S2.T2.10.2.2.1.m1.1.1.1.1.1.cmml" xref="S2.T2.10.2.2.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S2.T2.10.2.2.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.10.2.2.1.m1.1.1.1.1">superscript</csymbol><ci id="S2.T2.10.2.2.1.m1.1.1.1.1.1.2.cmml" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.2">TN</ci><cn id="S2.T2.10.2.2.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S2.T2.10.2.2.1.m1.1.1.1.1.1.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.10.2.2.1.m1.1c">O(\mathrm{TN}^{2})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.10.2.2.1.m1.1d">italic_O ( roman_TN start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T2.11.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S2.T2.11.3.3.2" style="padding-top:1.05pt;padding-bottom:1.05pt;">TransMamba</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.11.3.3.1" style="padding-top:1.05pt;padding-bottom:1.05pt;"><math alttext="O(\mathrm{P}^{2}\mathrm{N}+(\mathrm{T-P})\mathrm{N}^{2})" class="ltx_Math" display="inline" id="S2.T2.11.3.3.1.m1.1"><semantics id="S2.T2.11.3.3.1.m1.1a"><mrow id="S2.T2.11.3.3.1.m1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.cmml"><mi id="S2.T2.11.3.3.1.m1.1.1.3" xref="S2.T2.11.3.3.1.m1.1.1.3.cmml">O</mi><mo id="S2.T2.11.3.3.1.m1.1.1.2" xref="S2.T2.11.3.3.1.m1.1.1.2.cmml">⁢</mo><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.cmml"><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.2" stretchy="false" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.cmml"><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.cmml"><msup id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.cmml"><mi id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.2" mathvariant="normal" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.2.cmml">P</mi><mn id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.3" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.3.cmml">2</mn></msup><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.3" mathvariant="normal" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.3.cmml">N</mi></mrow><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.2" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.2.cmml">+</mo><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.cmml"><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.cmml"><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.2" stretchy="false" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.cmml"><mi id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.2" mathvariant="normal" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.2.cmml">T</mi><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.1" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.1.cmml">−</mo><mi id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.3" mathvariant="normal" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.3.cmml">P</mi></mrow><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.3" stretchy="false" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.2" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.2.cmml">⁢</mo><msup id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.cmml"><mi id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.2" mathvariant="normal" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.2.cmml">N</mi><mn id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.3" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.3.cmml">2</mn></msup></mrow></mrow><mo id="S2.T2.11.3.3.1.m1.1.1.1.1.3" stretchy="false" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.11.3.3.1.m1.1b"><apply id="S2.T2.11.3.3.1.m1.1.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1"><times id="S2.T2.11.3.3.1.m1.1.1.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.2"></times><ci id="S2.T2.11.3.3.1.m1.1.1.3.cmml" xref="S2.T2.11.3.3.1.m1.1.1.3">𝑂</ci><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1"><plus id="S2.T2.11.3.3.1.m1.1.1.1.1.1.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.2"></plus><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3"><times id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.1"></times><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2">superscript</csymbol><ci id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.2">P</ci><cn id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.3.cmml" type="integer" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.2.3">2</cn></apply><ci id="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.3.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.3.3">N</ci></apply><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1"><times id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.2"></times><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1"><minus id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.1"></minus><ci id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.2">T</ci><ci id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.3.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.1.1.1.3">P</ci></apply><apply id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3">superscript</csymbol><ci id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.2">N</ci><cn id="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.3.cmml" type="integer" xref="S2.T2.11.3.3.1.m1.1.1.1.1.1.1.3.3">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.11.3.3.1.m1.1c">O(\mathrm{P}^{2}\mathrm{N}+(\mathrm{T-P})\mathrm{N}^{2})</annotation><annotation encoding="application/x-llamapun" id="S2.T2.11.3.3.1.m1.1d">italic_O ( roman_P start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT roman_N + ( roman_T - roman_P ) roman_N start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of TransMamba and three baseline models (Transformer, Mamba, and Hybrid) on the LongBench-v2 benchmark, a challenging long-text dataset.  The results showcase the overall performance, broken down by difficulty level (Overall, Easy, Hard).  All models used in this comparison have 1.5 billion parameters to ensure a fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation results of our TransMamba and baselines on the long text benchmark LongBench-v2. The number of parameters of all models is 1.5B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.7.8.1.1" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.2" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.2.1">ARC-E</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.3" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.3.1">ARC-C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.4" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.4.1">CoQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.5" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.5.1">OBQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.6" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.6.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.7" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.7.1">PhoneBook</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.8.1.8" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.8.1.8.1">BoolQ</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T3.7.7.8" style="padding:0.5pt 4.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.1.1.1" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.1.1.1.1">ACC</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.2.2.2" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.2.2.2.1">ACC</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.m1.1.1" stretchy="false" xref="S3.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><ci id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.3.3.3" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.3.3.3.1">F1-Score</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.m1.1a"><mo id="S3.T3.3.3.3.m1.1.1" stretchy="false" xref="S3.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.m1.1b"><ci id="S3.T3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.4.4.4" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.4.4.4.1">ACC</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.m1.1"><semantics id="S3.T3.4.4.4.m1.1a"><mo id="S3.T3.4.4.4.m1.1.1" stretchy="false" xref="S3.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.m1.1b"><ci id="S3.T3.4.4.4.m1.1.1.cmml" xref="S3.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.5.5.5" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.5.5.5.1">ACC</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.5.5.5.m1.1"><semantics id="S3.T3.5.5.5.m1.1a"><mo id="S3.T3.5.5.5.m1.1.1" stretchy="false" xref="S3.T3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.m1.1b"><ci id="S3.T3.5.5.5.m1.1.1.cmml" xref="S3.T3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.6.6.6" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.6.6.6.1">Similarity</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.6.6.6.m1.1"><semantics id="S3.T3.6.6.6.m1.1a"><mo id="S3.T3.6.6.6.m1.1.1" stretchy="false" xref="S3.T3.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.m1.1b"><ci id="S3.T3.6.6.6.m1.1.1.cmml" xref="S3.T3.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.7.7.7" style="padding:0.5pt 4.5pt;">
<span class="ltx_text" id="S3.T3.7.7.7.1">ACC</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.7.7.7.m1.1"><semantics id="S3.T3.7.7.7.m1.1a"><mo id="S3.T3.7.7.7.m1.1.1" stretchy="false" xref="S3.T3.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.m1.1b"><ci id="S3.T3.7.7.7.m1.1.1.cmml" xref="S3.T3.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.7.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.7.9.1.1" style="padding:0.5pt 4.5pt;">Transformer-400M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.2" style="padding:0.5pt 4.5pt;">60.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.3" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.9.1.3.1">58.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.4" style="padding:0.5pt 4.5pt;">5.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.5" style="padding:0.5pt 4.5pt;">42.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.6" style="padding:0.5pt 4.5pt;">52.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.7" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.9.1.7.1">38.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.9.1.8" style="padding:0.5pt 4.5pt;">60.72</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.10.2.1" style="padding:0.5pt 4.5pt;">Mamba2-400M</th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.2" style="padding:0.5pt 4.5pt;">56.15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.3" style="padding:0.5pt 4.5pt;">52.27</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.4" style="padding:0.5pt 4.5pt;">4.68</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.5" style="padding:0.5pt 4.5pt;">40.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.6" style="padding:0.5pt 4.5pt;">51.10</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.7" style="padding:0.5pt 4.5pt;">13.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2.8" style="padding:0.5pt 4.5pt;">57.51</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.11.3.1" style="padding:0.5pt 4.5pt;">Hybrid-400M</th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.2" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.11.3.2.1">62.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.3" style="padding:0.5pt 4.5pt;">55.78</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.4" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.11.3.4.1">5.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.5" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.11.3.5.1">43.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.6" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.11.3.6.1">53.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.7" style="padding:0.5pt 4.5pt;">17.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3.8" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.11.3.8.1">61.66</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.12.4.1" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.1.1">TransMamba-400M</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.2" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.2.1">62.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.3" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.3.1">59.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.4" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.4.1">6.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.5" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.5.1">44.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.6" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.6.1">55.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.7" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.7.1">39.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.12.4.8" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.12.4.8.1">64.15</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.7.13.5.1" style="padding:0.5pt 4.5pt;">Transformer-1.5B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.2" style="padding:0.5pt 4.5pt;">60.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.3" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.13.5.3.1">59.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.4" style="padding:0.5pt 4.5pt;">5.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.5" style="padding:0.5pt 4.5pt;">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.6" style="padding:0.5pt 4.5pt;">56.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.7" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.13.5.7.1">41.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.13.5.8" style="padding:0.5pt 4.5pt;">61.42</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.14.6.1" style="padding:0.5pt 4.5pt;">Mamba2-1.5B</th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.2" style="padding:0.5pt 4.5pt;">63.64</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.3" style="padding:0.5pt 4.5pt;">56.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.4" style="padding:0.5pt 4.5pt;">5.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.5" style="padding:0.5pt 4.5pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.6" style="padding:0.5pt 4.5pt;">58.97</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.7" style="padding:0.5pt 4.5pt;">19.08</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6.8" style="padding:0.5pt 4.5pt;">59.20</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.15.7.1" style="padding:0.5pt 4.5pt;">Hybrid-1.5B</th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.2" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.15.7.2.1">63.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.3" style="padding:0.5pt 4.5pt;">57.97</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.4" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.15.7.4.1">6.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.5" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.15.7.5.1">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.6" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.15.7.6.1">59.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.7" style="padding:0.5pt 4.5pt;">26.63</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.15.7.8" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.15.7.8.1">65.48</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.7.16.8.1" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.1.1">TransMamba-1.5B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.2" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.2.1">64.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.3" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.3.1">63.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.4" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.4.1">6.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.5" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.16.8.5.1">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.6" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.6.1">59.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.7" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T3.7.16.8.7.1">40.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.16.8.8" style="padding:0.5pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.16.8.8.1">66.73</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the average training time of TransMamba to three baseline models: Transformer, Mamba, and Hybrid.  The training time for each model is relative to the Transformer model, which is assigned a relative time of 1.00. A relative time less than 1.00 indicates that the model trained faster than the Transformer model. The table also shows the floating-point operations (FLOPs) per layer for each model, providing a measure of computational complexity.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of average training time of baseline and TransMamba. Relative time refers to the ratio of the time to train the same batch-size of the baseline to Transformer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS2.SSS1.1.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS2.SSS1.1.fig1.1.1.1.1" rowspan="2" style="padding:0.5pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.1.fig1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.SS2.SSS1.1.fig1.1.1.1.2" style="padding:0.5pt 4.3pt;">LongBench-v2</th>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.SS2.SSS1.1.fig1.1.2.2.1" style="padding:0.5pt 4.3pt;">Overall</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.SS2.SSS1.1.fig1.1.2.2.2" style="padding:0.5pt 4.3pt;">Easy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.SS2.SSS1.1.fig1.1.2.2.3" style="padding:0.5pt 4.3pt;">Hard</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS1.1.fig1.1.3.1.1" style="padding:0.5pt 4.3pt;">Transformer</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS1.1.fig1.1.3.1.2" style="padding:0.5pt 4.3pt;">31.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS1.1.fig1.1.3.1.3" style="padding:0.5pt 4.3pt;">34.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS1.1.fig1.1.3.1.4" style="padding:0.5pt 4.3pt;">29.90</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS1.1.fig1.1.4.2.1" style="padding:0.5pt 4.3pt;">Mamba</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.4.2.2" style="padding:0.5pt 4.3pt;">30.62</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.4.2.3" style="padding:0.5pt 4.3pt;">32.81</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.4.2.4" style="padding:0.5pt 4.3pt;">29.26</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS1.1.fig1.1.5.3.1" style="padding:0.5pt 4.3pt;">Hybrid</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.5.3.2" style="padding:0.5pt 4.3pt;">35.79</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.5.3.3" style="padding:0.5pt 4.3pt;">38.02</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.1.fig1.1.5.3.4" style="padding:0.5pt 4.3pt;">34.41</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.1.fig1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.SS2.SSS1.1.fig1.1.6.4.1" style="padding:0.5pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.1.fig1.1.6.4.1.1">TransMamba</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS1.1.fig1.1.6.4.2" style="padding:0.5pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.1.fig1.1.6.4.2.1">38.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS1.1.fig1.1.6.4.3" style="padding:0.5pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.1.fig1.1.6.4.3.1">40.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS1.1.fig1.1.6.4.4" style="padding:0.5pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.1.fig1.1.6.4.4.1">37.94</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using various TransPoint schedules in the TransMamba model.  The training data consisted of sequences with 8192 tokens.  Validation loss and perplexity (PPL) were calculated after processing 21 billion tokens. Each layer in the model used a cyclical pattern of TransPoints, repeating the predefined schedule. The different schedules (V1-V9) represent different strategies for choosing TransPoint positions (e.g., fixed position, variable positions across layers, fine-grained variations).  The table shows how different TransPoint schedules affect the model's performance in terms of validation loss and perplexity.
> <details>
> <summary>read the caption</summary>
> Table 6: Results of different TransPoint schedule. The input token sequence length of the training data is 8192. The validation loss and PPL is calculated at 21 billion tokens. The TransPoint of each layer in the model cyclically alternates through the predefined TransPoints sequence with the pattern repeating.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS2.SSS1.2.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS2.SSS1.2.1.1.1.2.1.1" rowspan="2" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.2.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS1.2.1.1.1.2.1.2" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.2.1.2.1">Relative</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS1.2.1.1.1.2.1.3" style="padding:0.5pt 3.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.2.1.3.1">Flops</span> /</th>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.SS2.SSS1.2.1.1.1.1.2" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.1.2.1">Train Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.SS2.SSS1.2.1.1.1.1.1" style="padding:0.5pt 3.5pt;">   (Layer, <math alttext="{10}^{10}" class="ltx_Math" display="inline" id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3"><semantics id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3a"><mrow id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml"><mi id="S3.SS2.SSS1.2.1.1.1.1.1.m1.1.1.1.1.1.1.1" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml"></mi><mo id="S3.SS2.SSS1.2.1.1.1.1.1.m1.2.2.2.2.2.2.2" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml">⁢</mo><msup id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.3.3.3.3" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml"><mn id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.3.3.3.3.2" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml">10</mn><mn id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.3.3.3.3.3" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml">10</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3b"><csymbol cd="latexml" id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3.cmml" xref="S3.SS2.SSS1.2.1.1.1.1.1.m1.3.3.3">E10</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3c">{10}^{10}</annotation><annotation encoding="application/x-llamapun" id="S3.SS2.SSS1.2.1.1.1.1.1.m1.3d">start_ARG end_ARG start_ARG ⁢ end_ARG start_ARG power start_ARG 10 end_ARG start_ARG 10 end_ARG end_ARG</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS1.2.1.1.1.3.1.1" style="padding:0.5pt 3.5pt;">Transformer</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS1.2.1.1.1.3.1.2" style="padding:0.5pt 3.5pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS1.2.1.1.1.3.1.3" style="padding:0.5pt 3.5pt;">10.51</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS1.2.1.1.1.4.2.1" style="padding:0.5pt 3.5pt;">Mamba</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.2.1.1.1.4.2.2" style="padding:0.5pt 3.5pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.2.1.1.1.4.2.3" style="padding:0.5pt 3.5pt;">2.01</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS1.2.1.1.1.5.3.1" style="padding:0.5pt 3.5pt;">Hybrid</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.2.1.1.1.5.3.2" style="padding:0.5pt 3.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS1.2.1.1.1.5.3.3" style="padding:0.5pt 3.5pt;">6.26</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS1.2.1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.SS2.SSS1.2.1.1.1.6.4.1" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.6.4.1.1">TransMamba</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS1.2.1.1.1.6.4.2" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.6.4.2.1">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS1.2.1.1.1.6.4.3" style="padding:0.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS1.2.1.1.1.6.4.3.1">1.91</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the Transformer and TransMamba models.  It includes settings such as global batch size, micro batch size, sequence length, learning rate, weight decay, and optimizer parameters. These parameters are crucial for controlling the training process and achieving optimal performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Global parameter settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T6.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T6.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T6.2.3.1.1" rowspan="2" style="padding:1.5pt 5.5pt;"><span class="ltx_text" id="S3.T6.2.3.1.1.1">Model Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.3.1.2" rowspan="2" style="padding:1.5pt 5.5pt;"><span class="ltx_text" id="S3.T6.2.3.1.2.1">Detailed TransPoint Schedule</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T6.2.3.1.3" style="padding:1.5pt 5.5pt;">Validation</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.2">
<td class="ltx_td ltx_align_center" id="S3.T6.1.1.1" style="padding:1.5pt 5.5pt;">Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T6.1.1.1.m1.1"><semantics id="S3.T6.1.1.1.m1.1a"><mo id="S3.T6.1.1.1.m1.1.1" stretchy="false" xref="S3.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T6.1.1.1.m1.1b"><ci id="S3.T6.1.1.1.m1.1.1.cmml" xref="S3.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.2.2" style="padding:1.5pt 5.5pt;">PPL <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T6.2.2.2.m1.1"><semantics id="S3.T6.2.2.2.m1.1a"><mo id="S3.T6.2.2.2.m1.1.1" stretchy="false" xref="S3.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T6.2.2.2.m1.1b"><ci id="S3.T6.2.2.2.m1.1.1.cmml" xref="S3.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T6.2.4.2.1" style="padding:1.5pt 5.5pt;">Transformer</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.4.2.2" style="padding:1.5pt 5.5pt;">[8192]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.4.2.3" style="padding:1.5pt 5.5pt;">3.098</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.4.2.4" style="padding:1.5pt 5.5pt;">2.194</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.5.3.1" rowspan="3" style="padding:1.5pt 5.5pt;"><span class="ltx_text" id="S3.T6.2.5.3.1.1">Layer-shared</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.5.3.2" style="padding:1.5pt 5.5pt;">V1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.5.3.3" style="padding:1.5pt 5.5pt;">[2048]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.5.3.4" style="padding:1.5pt 5.5pt;">3.356</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.5.3.5" style="padding:1.5pt 5.5pt;">2.401</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.6.4.1" style="padding:1.5pt 5.5pt;">V2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.6.4.2" style="padding:1.5pt 5.5pt;">[4096]</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.6.4.3" style="padding:1.5pt 5.5pt;">3.297</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.6.4.4" style="padding:1.5pt 5.5pt;">2.346</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.7.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.7.5.1" style="padding:1.5pt 5.5pt;">V3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.7.5.2" style="padding:1.5pt 5.5pt;">[6144]</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.5.3" style="padding:1.5pt 5.5pt;">3.308</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.7.5.4" style="padding:1.5pt 5.5pt;">2.339</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.8.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.8.6.1" rowspan="3" style="padding:1.5pt 5.5pt;"><span class="ltx_text" id="S3.T6.2.8.6.1.1">Layer-specific</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.8.6.2" style="padding:1.5pt 5.5pt;">V4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.8.6.3" style="padding:1.5pt 5.5pt;">[3072, 4096, 5120]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.8.6.4" style="padding:1.5pt 5.5pt;">3.125</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.8.6.5" style="padding:1.5pt 5.5pt;">2.287</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.9.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.9.7.1" style="padding:1.5pt 5.5pt;">V5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.9.7.2" style="padding:1.5pt 5.5pt;">[2048, 3072, 4096]</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.7.3" style="padding:1.5pt 5.5pt;">3.100</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.9.7.4" style="padding:1.5pt 5.5pt;">2.219</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.10.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.10.8.1" style="padding:1.5pt 5.5pt;">V6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.10.8.2" style="padding:1.5pt 5.5pt;">[512, 1024, 2048]</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.8.3" style="padding:1.5pt 5.5pt;">3.135</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.10.8.4" style="padding:1.5pt 5.5pt;">2.299</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.11.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.11.9.1" rowspan="2" style="padding:1.5pt 5.5pt;"><span class="ltx_text" id="S3.T6.2.11.9.1.1">Broad-range</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.11.9.2" style="padding:1.5pt 5.5pt;">V7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T6.2.11.9.3" style="padding:1.5pt 5.5pt;">[2048, 4096, 6144]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.11.9.4" style="padding:1.5pt 5.5pt;">3.084</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T6.2.11.9.5" style="padding:1.5pt 5.5pt;">2.185</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.12.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.12.10.1" style="padding:1.5pt 5.5pt;">V8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T6.2.12.10.2" style="padding:1.5pt 5.5pt;">[0, 1024, 2048, 6144, 8192]</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.10.3" style="padding:1.5pt 5.5pt;">3.022</td>
<td class="ltx_td ltx_align_center" id="S3.T6.2.12.10.4" style="padding:1.5pt 5.5pt;">2.053</td>
</tr>
<tr class="ltx_tr" id="S3.T6.2.13.11">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T6.2.13.11.1" style="padding:1.5pt 5.5pt;">Fine-grained</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T6.2.13.11.2" style="padding:1.5pt 5.5pt;">V9</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T6.2.13.11.3" style="padding:1.5pt 5.5pt;">[0, 128, 256, 512, 1024, 2048, 4096, 8192]</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T6.2.13.11.4" style="padding:1.5pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.13.11.4.1">2.898</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T6.2.13.11.5" style="padding:1.5pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T6.2.13.11.5.1">1.813</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for the different model sizes (400M and 1.5B parameters) in the experiments.  Specifically, it lists the number of layers, hidden size, feed-forward network (FFN) hidden size, and number of attention heads used in each model configuration.  These hyperparameters are crucial for understanding the architectural differences and computational cost variations between the model sizes.
> <details>
> <summary>read the caption</summary>
> Table 8: Model parameter setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T7.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Settings</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Global Batch Size</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Micro Batch Size</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sequence Length</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">8192</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Train Tokens</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">81B</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MLP Ratio</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Initial lr</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.5e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.8.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Min lr</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.5e-5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.9.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">lr-Decay-Style</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.9.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">cosine</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.10.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">weight-decay</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.10.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.11.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">clip-grad</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.11.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.12.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Normalization</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.12.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">RMSNorm</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.13.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">adam-beta1</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.13.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.14.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">adam-beta2</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.14.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.95</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.1.15.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">bf16</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.15.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.16.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="A1.T7.1.16.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">rope-theta</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.16.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">10000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment exploring the impact of using different TransPoint schedules during inference compared to the training schedule.  The experiment uses the TransMamba model, with the original model trained using schedule V9 (as detailed in the paper). The inference schedules tested include using the same TransPoint schedule as training (the consistent version), and using schedules mimicking those of the Transformer, Mamba2, and Hybrid models. The consistent version's performance is highlighted in bold. While the inconsistent schedules generally result in lower performance than the consistent schedule, the relatively close performance suggests that further investigation into this approach is warranted.
> <details>
> <summary>read the caption</summary>
> Table 9: Results of inconsistent training/inference TransPoint scheduling. Although the “Inf” TransMamba versions perform worse than the original consistent version in bold, the close performance inspires us to conduct future explorations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="A1.T8.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Model Setting</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.2.1.1.1">400M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Num-Layers</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">24</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Hidden-Size</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">1536</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">FFN-Hidden-Size</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">4096</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Num-Attention-Heads</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">16</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T8.1.6.5.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.6.5.1.1">1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">Num-Layers</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">64</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Hidden-Size</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">1536</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">FFN-Hidden-Size</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">4096</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T8.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Num-Attention-Heads</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the training losses achieved by various ablation versions of the TransMamba model, each with a different model structure.  The ablation studies modify components such as the attention mechanism, the MLP (Multi-Layer Perceptron), the Memory Converter, and the SSM (State Space Model) to isolate their individual contributions to the overall model performance. By comparing the training losses across these different configurations, the authors aim to demonstrate the effectiveness and necessity of their proposed model architecture.
> <details>
> <summary>read the caption</summary>
> Table 10: The training losses of ablation versions with different model structures.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24067/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24067/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}