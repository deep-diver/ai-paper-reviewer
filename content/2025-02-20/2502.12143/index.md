---
title: "Small Models Struggle to Learn from Strong Reasoners"
summary: "Small language models struggle to learn complex reasoning from large models, but a novel 'Mix Distillation' method balances complexity for effective capability transfer."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 University of Washington",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12143 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuetai Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12143" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12143" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12143/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) have excelled in reasoning, prompting efforts to distill their capabilities into smaller models. However, this paper reveals the **Small Model Learnability Gap**: small models struggle with complex reasoning traces or distillation from larger models, performing better with shorter, simpler reasoning. This is because they find it hard to internalize the logic due to their limited ability.



To address this, the paper introduces **Mix Distillation**, a strategy that balances reasoning complexity by combining long and short reasoning or blending responses from larger and smaller models. Experiments demonstrate that Mix Distillation significantly enhances small model reasoning compared to training on either data type alone, adapting reasoning for effective capability transfer.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Small models do not consistently benefit from distillation from larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Small models perform better when trained on simpler reasoning chains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Mix Distillation, which balances reasoning complexity, significantly improves small model reasoning performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it highlights the limitations of directly applying large model distillation to smaller models and introduces a novel approach (**Mix Distillation**) to overcome these limitations. This work paves the way for more effective knowledge transfer strategies and opens new avenues for research on adapting reasoning complexity for smaller models.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12143/x1.png)

> 🔼 This figure illustrates the Small Model Learnability Gap.  It shows that smaller language models (with 3 billion parameters or less) don't consistently improve their performance when trained using long chain-of-thought (CoT) reasoning examples or by distilling knowledge from much larger models.  Instead, these smaller models perform better when trained on shorter, simpler CoT examples or when knowledge is distilled from similarly sized models. This is because their learning capacity is better suited to shorter, less complex reasoning steps. The gap highlights the difficulty of transferring complex reasoning abilities from large to small models directly.
> <details>
> <summary>read the caption</summary>
> Figure 1: Small student models (≤\leq≤3B parameters) do not consistently benefit from long CoT reasoning or distillation from large teacher models. Instead, they perform better when fine-tuned on shorter CoT reasoning or distilled from smaller teachers, which better matches their intrinsic learning capacity. We term this phenomenon the Small Model Learnability Gap.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.3">
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.1">Student Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1"><math alttext="P_{Long}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><msub id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">P</mi><mrow id="S3.T1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.3.cmml"><mi id="S3.T1.1.1.1.1.m1.1.1.3.2" xref="S3.T1.1.1.1.1.m1.1.1.3.2.cmml">L</mi><mo id="S3.T1.1.1.1.1.m1.1.1.3.1" xref="S3.T1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.3.3" xref="S3.T1.1.1.1.1.m1.1.1.3.3.cmml">o</mi><mo id="S3.T1.1.1.1.1.m1.1.1.3.1a" xref="S3.T1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.3.4" xref="S3.T1.1.1.1.1.m1.1.1.3.4.cmml">n</mi><mo id="S3.T1.1.1.1.1.m1.1.1.3.1b" xref="S3.T1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.3.5" xref="S3.T1.1.1.1.1.m1.1.1.3.5.cmml">g</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.2">𝑃</ci><apply id="S3.T1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3"><times id="S3.T1.1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3.1"></times><ci id="S3.T1.1.1.1.1.m1.1.1.3.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3.2">𝐿</ci><ci id="S3.T1.1.1.1.1.m1.1.1.3.3.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3.3">𝑜</ci><ci id="S3.T1.1.1.1.1.m1.1.1.3.4.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3.4">𝑛</ci><ci id="S3.T1.1.1.1.1.m1.1.1.3.5.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3.5">𝑔</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">P_{Long}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">italic_P start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.2"><math alttext="P_{Short}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><msub id="S3.T1.2.2.2.2.m1.1.1" xref="S3.T1.2.2.2.2.m1.1.1.cmml"><mi id="S3.T1.2.2.2.2.m1.1.1.2" xref="S3.T1.2.2.2.2.m1.1.1.2.cmml">P</mi><mrow id="S3.T1.2.2.2.2.m1.1.1.3" xref="S3.T1.2.2.2.2.m1.1.1.3.cmml"><mi id="S3.T1.2.2.2.2.m1.1.1.3.2" xref="S3.T1.2.2.2.2.m1.1.1.3.2.cmml">S</mi><mo id="S3.T1.2.2.2.2.m1.1.1.3.1" xref="S3.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.2.2.2.2.m1.1.1.3.3" xref="S3.T1.2.2.2.2.m1.1.1.3.3.cmml">h</mi><mo id="S3.T1.2.2.2.2.m1.1.1.3.1a" xref="S3.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.2.2.2.2.m1.1.1.3.4" xref="S3.T1.2.2.2.2.m1.1.1.3.4.cmml">o</mi><mo id="S3.T1.2.2.2.2.m1.1.1.3.1b" xref="S3.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.2.2.2.2.m1.1.1.3.5" xref="S3.T1.2.2.2.2.m1.1.1.3.5.cmml">r</mi><mo id="S3.T1.2.2.2.2.m1.1.1.3.1c" xref="S3.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.2.2.2.2.m1.1.1.3.6" xref="S3.T1.2.2.2.2.m1.1.1.3.6.cmml">t</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><apply id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.2.2.m1.1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S3.T1.2.2.2.2.m1.1.1.2.cmml" xref="S3.T1.2.2.2.2.m1.1.1.2">𝑃</ci><apply id="S3.T1.2.2.2.2.m1.1.1.3.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3"><times id="S3.T1.2.2.2.2.m1.1.1.3.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.1"></times><ci id="S3.T1.2.2.2.2.m1.1.1.3.2.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.2">𝑆</ci><ci id="S3.T1.2.2.2.2.m1.1.1.3.3.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.3">ℎ</ci><ci id="S3.T1.2.2.2.2.m1.1.1.3.4.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.4">𝑜</ci><ci id="S3.T1.2.2.2.2.m1.1.1.3.5.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.5">𝑟</ci><ci id="S3.T1.2.2.2.2.m1.1.1.3.6.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3.6">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">P_{Short}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">italic_P start_POSTSUBSCRIPT italic_S italic_h italic_o italic_r italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3.3"><math alttext="\Delta_{Long}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><msub id="S3.T1.3.3.3.3.m1.1.1" xref="S3.T1.3.3.3.3.m1.1.1.cmml"><mi id="S3.T1.3.3.3.3.m1.1.1.2" mathvariant="normal" xref="S3.T1.3.3.3.3.m1.1.1.2.cmml">Δ</mi><mrow id="S3.T1.3.3.3.3.m1.1.1.3" xref="S3.T1.3.3.3.3.m1.1.1.3.cmml"><mi id="S3.T1.3.3.3.3.m1.1.1.3.2" xref="S3.T1.3.3.3.3.m1.1.1.3.2.cmml">L</mi><mo id="S3.T1.3.3.3.3.m1.1.1.3.1" xref="S3.T1.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.3.m1.1.1.3.3" xref="S3.T1.3.3.3.3.m1.1.1.3.3.cmml">o</mi><mo id="S3.T1.3.3.3.3.m1.1.1.3.1a" xref="S3.T1.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.3.m1.1.1.3.4" xref="S3.T1.3.3.3.3.m1.1.1.3.4.cmml">n</mi><mo id="S3.T1.3.3.3.3.m1.1.1.3.1b" xref="S3.T1.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.3.m1.1.1.3.5" xref="S3.T1.3.3.3.3.m1.1.1.3.5.cmml">g</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><apply id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.3.3.3.3.m1.1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S3.T1.3.3.3.3.m1.1.1.2.cmml" xref="S3.T1.3.3.3.3.m1.1.1.2">Δ</ci><apply id="S3.T1.3.3.3.3.m1.1.1.3.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3"><times id="S3.T1.3.3.3.3.m1.1.1.3.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.1"></times><ci id="S3.T1.3.3.3.3.m1.1.1.3.2.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.2">𝐿</ci><ci id="S3.T1.3.3.3.3.m1.1.1.3.3.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.3">𝑜</ci><ci id="S3.T1.3.3.3.3.m1.1.1.3.4.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.4">𝑛</ci><ci id="S3.T1.3.3.3.3.m1.1.1.3.5.cmml" xref="S3.T1.3.3.3.3.m1.1.1.3.5">𝑔</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\Delta_{Long}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3.5">
<span class="ltx_text" id="S3.T1.3.3.3.5.1"></span><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.5.2"> <span class="ltx_text" id="S3.T1.3.3.3.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.3.5.2.1.1">
<span class="ltx_tr" id="S3.T1.3.3.3.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.5.2.1.1.1.1">Better?</span></span>
</span></span><span class="ltx_text" id="S3.T1.3.3.3.5.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.3.3.4.1">Qwen2.5-0.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.4.2">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.4.3">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.4.4">-4.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.4.5">Short</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.5">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.5.1">Qwen2.5-1.5B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5.2">27.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5.3">34.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5.4">-7.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5.5">Short</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.6">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.6.1">Qwen2.5-3B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6.2">40.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6.3">43.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6.4">-3.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6.5">Short</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.7">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.7.1">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.2">48.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.3">47.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.4">1.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.5">Long</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.8">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.8.1">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.2">59.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.3">54.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.4">4.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.5">Long</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.9">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.9.1">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.2">73.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.3">59.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.4">13.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.5">Long</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.3.3.10.1">Llama-3.2-1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.10.2">15.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.10.3">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.10.4">-3.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.10.5">Short</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.11">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.11.1">Llama-3.2-3B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.2">32.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.3">33.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.4">-0.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.5">Short</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.12">
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.12.1">Llama-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.2">35.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.3">31.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.4">3.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.5">Long</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.3.3.13.1">Llama-3.3-70B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.3.13.2">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.3.13.3">54.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.3.13.4">3.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.3.13.5">Long</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the average performance of smaller language models (student models) after fine-tuning on datasets with long chain-of-thought (CoT) reasoning and short CoT reasoning.  Long CoT refers to detailed reasoning steps, while short CoT uses more concise explanations. The results show the performance difference (PLong - PShort) for each model.  The purpose is to demonstrate the phenomenon of the Small Model Learnability Gap, where smaller models don't consistently benefit from long, complex CoT reasoning and might perform better with shorter, simpler reasoning traces.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of the average performance between fine-tuning with long CoT (PL⁢o⁢n⁢gsubscript𝑃𝐿𝑜𝑛𝑔P_{Long}italic_P start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT) and short CoT (PS⁢h⁢o⁢r⁢tsubscript𝑃𝑆ℎ𝑜𝑟𝑡P_{Short}italic_P start_POSTSUBSCRIPT italic_S italic_h italic_o italic_r italic_t end_POSTSUBSCRIPT). We find that small student models may struggle to learn from long CoT data.
> </details>





### In-depth insights


#### Learnability Gap
The 'Learnability Gap,' as introduced in the paper, underscores a crucial limitation in directly transferring reasoning capabilities from large models to smaller ones. **Smaller models** often **struggle** to effectively learn from the complex reasoning traces (e.g., long CoT) generated by larger models, leading to suboptimal performance. Instead, they tend to benefit more from simpler, shorter reasoning chains that better align with their intrinsic learning capacity. This gap suggests that direct distillation, a common strategy, may not always be the most effective approach for imbuing smaller models with sophisticated reasoning skills. The underlying causes of this gap are multifaceted. Limited domain knowledge of smaller models, coupled with a tendency to be overwhelmed by complex reasoning steps contribute to their inability to effectively leverage information from longer CoT or larger teacher CoT data. The paper addresses this gap by proposing 'Mix Distillation', a strategy that blends various forms of reasoning traces (short and long CoT, reasoning from larger and smaller models) to balance complexity and facilitate effective knowledge transfer. **Mix distillation yields better results**.

#### Mix Distillation
**Mix Distillation** is introduced to bridge the observed learnability gap in small models. The approach blends easier-to-learn data with more challenging data. **Mix Distillation** leverages the strengths of both. The insight is small models perform better on data matching their inherent distribution. They struggle with data exhibiting greater distribution shifts. The mixed long CoT and large teacher CoT data's token distribution may become closer to small models' inherent distribution, enabling them to learn more effectively from challenging datasets. Two versions are proposed: **Mix-Long** combines long and short CoT data. **Mix-Large** combines large teacher CoT with small teacher CoT. The experiment results show, this method helps to solve the observed learnability gap.

#### CoT Complexity
Chain-of-Thought (CoT) complexity is a critical factor in determining the effectiveness of large language models (LLMs), especially when transferring reasoning capabilities to smaller models. It encapsulates several dimensions, including the **length of reasoning chains**, the **depth of intermediate steps**, and the **intrinsic difficulty of each step**. Longer CoT traces don't always guarantee better outcomes, particularly for smaller models with limited capacity. This suggests a learnability gap where intricate reasoning processes become overwhelming, hindering effective knowledge transfer. **Adapting CoT complexity** is therefore crucial, balancing detail with conciseness to align with the student model's intrinsic learning capacity. Strategies like Mix Distillation, which blends long and short CoT examples, can bridge this gap by exposing models to varied levels of reasoning complexity, enhancing overall performance. It is important to **optimize the CoT complexity** of the teacher model for the distillation process. 

#### Speaking Styles
The section on speaking styles reveals a fascinating aspect of language model behavior post-fine-tuning. By analyzing token distribution shifts, the research pinpoints that long CoT and large teacher CoT primarily influence a student model's expressive and stylistic elements. This goes beyond mere factual knowledge transfer; **models adapt their communication style, adopting patterns from the training data**. The identification of tokens like "wait," "But," and "Let" as being significantly impacted highlights the nuances of this stylistic adaptation. These words are not directly related to mathematical reasoning itself, yet their alteration suggests a deeper integration of the teacher model's communication nuances. The research emphasizes how fine-tuning with different CoT lengths not only affects the accuracy of the solutions but also subtly reshapes the way a model expresses itself. This offers further insights into the nature of knowledge distillation, where a model learns to mimic the tone and presentation of the teacher model. It would be interesting to study whether these changes are superficial or lead to a more robust understanding of the task and improved generalization in different contexts. Ultimately, this observation underscores the importance of carefully selecting training data to avoid unintended stylistic biases.

#### Domain Matters
The influence of domain expertise on model performance is paramount; a model's grasp of domain-specific nuances critically shapes its problem-solving capabilities. Models trained on a diverse range of tasks may show proficiency across different areas but often lack the depth of understanding seen in models specifically honed for a single domain. **This domain-specific understanding often enables more accurate and efficient reasoning.** The disparity in performance arises from the concentrated exposure to domain-relevant data, which enables a model to learn intricate patterns, relationships, and subtleties that would otherwise be diluted in a more generalized training scheme. **Adaptation to specific domains is crucial for achieving state-of-the-art performance** in complex reasoning tasks. The ability to effectively leverage pre-existing knowledge and adapt it to new situations is a hallmark of intelligent systems. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12143/x2.png)

> 🔼 This figure illustrates the performance difference between using long chain-of-thought (CoT) reasoning and short CoT reasoning for training small language models.  The x-axis represents the size of the student model (in billions of parameters), and the y-axis represents the difference in performance (Long CoT Gap) calculated as the performance with long CoT minus the performance with short CoT.  A positive Long CoT Gap indicates that long CoT improves performance, while a negative gap means short CoT is better. The results show that smaller models (less than 3B parameters) perform better with short CoT, whereas larger models benefit more from long CoT training.  The figure includes separate graphs for the Qwen family and Llama family of language models, highlighting that this trend holds consistently across different model architectures.
> <details>
> <summary>read the caption</summary>
> Figure 2: Long CoT Gap (ΔL⁢o⁢n⁢g=PL⁢o⁢n⁢g−PS⁢h⁢o⁢r⁢tsubscriptΔ𝐿𝑜𝑛𝑔subscript𝑃𝐿𝑜𝑛𝑔subscript𝑃𝑆ℎ𝑜𝑟𝑡\Delta_{Long}=P_{Long}-P_{Short}roman_Δ start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT = italic_P start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT - italic_P start_POSTSUBSCRIPT italic_S italic_h italic_o italic_r italic_t end_POSTSUBSCRIPT) of student models with different models sizes for (a) Qwen family (b) Llama family. For teacher models, QwQ-preview-32B is chosen to generate long CoT responses, while Qwen2.5-32B-Instruct is chosen to generate short CoT responses. Negative (Positive) ΔL⁢o⁢n⁢gsubscriptΔ𝐿𝑜𝑛𝑔\Delta_{Long}roman_Δ start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT indicates that long CoT is worse (better) than short CoT. Our results demonstrate that short CoT is better for smaller student models (indicated by ΔL⁢o⁢n⁢gsubscriptΔ𝐿𝑜𝑛𝑔\Delta_{Long}roman_Δ start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT < 0), while long CoT is better for larger student models (indicated by ΔL⁢o⁢n⁢gsubscriptΔ𝐿𝑜𝑛𝑔\Delta_{Long}roman_Δ start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT > 0).
> </details>



![](https://arxiv.org/html/2502.12143/x3.png)

> 🔼 This figure displays the performance difference between using large teacher-generated chain-of-thought (CoT) reasoning and small teacher-generated CoT reasoning to fine-tune student models of varying sizes.  The x-axis represents the size of the student model (in billions of parameters), and the y-axis shows the difference in performance (Large Teacher CoT performance - Small Teacher CoT performance).  Positive values indicate that the large teacher CoT is better, while negative values mean the small teacher CoT performs better. The results are shown separately for Qwen and Llama families of language models. The key finding is that smaller student models benefit from using CoT from smaller teachers, while larger models benefit more from using CoT from larger teachers.
> <details>
> <summary>read the caption</summary>
> Figure 3: Large model CoT Gap (ΔL⁢a⁢r⁢g⁢e=PL⁢a⁢r⁢g⁢e−PS⁢m⁢a⁢l⁢lsubscriptΔ𝐿𝑎𝑟𝑔𝑒subscript𝑃𝐿𝑎𝑟𝑔𝑒subscript𝑃𝑆𝑚𝑎𝑙𝑙\Delta_{Large}=P_{Large}-P_{Small}roman_Δ start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT = italic_P start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT - italic_P start_POSTSUBSCRIPT italic_S italic_m italic_a italic_l italic_l end_POSTSUBSCRIPT) of student models with different models sizes for (a) Qwen family (b) Llama family. For teacher models, Qwen2.5-72B-Instruct is chosen as the large teacher to generate responses, while Qwen2.5-3B-Instruct is chosen as the small teacher to generate responses. Negative (positive) ΔL⁢a⁢r⁢g⁢esubscriptΔ𝐿𝑎𝑟𝑔𝑒\Delta_{Large}roman_Δ start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT indicates that large teacher CoT is worse (better) than small teacher CoT. Our results demonstrate that small teacher CoT is better for smaller student models (indicated by ΔL⁢a⁢r⁢g⁢esubscriptΔ𝐿𝑎𝑟𝑔𝑒\Delta_{Large}roman_Δ start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT < 0), while large model CoT is better for larger student models (indicated by ΔL⁢a⁢r⁢g⁢esubscriptΔ𝐿𝑎𝑟𝑔𝑒\Delta_{Large}roman_Δ start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT > 0).
> </details>



![](https://arxiv.org/html/2502.12143/x4.png)

> 🔼 This figure compares the performance of general-purpose and math-specialized language models (LLMs) when trained using different methods: long chain-of-thought (CoT) reasoning, short CoT reasoning, large teacher CoT, and small teacher CoT.  A positive gap indicates that the longer/larger methods led to better performance than shorter/smaller methods. The results show that math-specialized models exhibit a smaller learnability gap; they are less sensitive to the complexity of the training data, demonstrating a stronger ability to learn from complex, large teacher CoT data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Math expert models usually have a less significant Learnability Gap than the general models. A positive Gap means long CoT or large teacher CoT is better while negative means worse. This indicates that the math expert model could more easily learn from long CoT data or large teacher CoT.
> </details>



![](https://arxiv.org/html/2502.12143/x5.png)

> 🔼 This figure compares the performance of base and instruct models of varying sizes when trained using different types of chain-of-thought (CoT) reasoning data: long CoT, short CoT, large teacher CoT, and small teacher CoT.  The x-axis represents the model size, while the y-axis shows the difference in performance between using complex (long CoT or large teacher CoT) vs simpler (short CoT or small teacher CoT) reasoning data.  A positive value on the y-axis indicates that the model performs better with complex reasoning data, while a negative value shows the opposite. The results reveal that smaller base models struggle to effectively utilize the complex reasoning data provided by longer chains of thought or larger teacher models, exhibiting a greater performance difference compared to instruct models. This highlights a significant 'learnability gap' between base and instruct models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Base models generally exhibit a more significant learnability gap than Instruct models. A positive gap indicates that long CoT data or large teacher CoT enhance performance, whereas a negative gap suggests they have the opposite effect. This implies that it is more challenging for small base models to effectively learn from long CoT data or large teacher CoT.
> </details>



![](https://arxiv.org/html/2502.12143/x6.png)

> 🔼 This figure illustrates the impact of varying the ratio of long Chain-of-Thought (CoT) examples or large teacher model responses when training a smaller language model using Mix Distillation. The x-axis represents the weighting of long CoT data (or large teacher data) in the training data, ranging from 0 to 1. The y-axis shows the average performance of the Qwen2.5-3B-Instruct model across several benchmarks. The graph reveals an optimal mix ratio where a weighting of 0.2 for long CoT or large teacher data results in peak performance. This suggests a balance needs to be struck between the complexity of long CoT examples and the capacity of smaller models.
> <details>
> <summary>read the caption</summary>
> Figure 6: The average performance varies with the mix weight of long CoT or large teacher CoT data. Qwen2.5-3B-Instruct is chosen as the student model. At a weight of 0.2, mix distillation achieves the highest average performance.
> </details>



![](https://arxiv.org/html/2502.12143/extracted/6211364/figs/mix_long.png)

> 🔼 Figure 7 presents a comparative analysis of model performance across three different training methodologies: long chain-of-thought (CoT), short CoT, and Mix-Long (a blend of both).  The figure showcases how models trained solely on long CoT reasoning may produce overly complex and ultimately incorrect responses due to an inability to identify a concise solution path.  In contrast, models trained exclusively on short CoT sequences provide short, yet often inaccurate results due to a lack of detailed reasoning. The Mix-Long approach effectively combines the strengths of long and short CoT training paradigms, allowing the model to benefit from both the comprehensive reasoning steps provided by long CoT examples and the efficiency and conciseness of short CoT. The result is a balanced approach that produces accurate and efficient answers, as demonstrated by the example shown in Figure 7.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case Study of Mix-Long. Models fine-tuned on long CoT tended to overthink, while those trained on short CoT produced incorrect answers. In contrast, Mix-Long, incorporating branching elements (e.g., “Alternatively”), achieved a balanced reasoning process and arrived at the correct answer.
> </details>



![](https://arxiv.org/html/2502.12143/extracted/6211364/figs/speaking_way_shift.png)

> 🔼 This figure illustrates the methodology for identifying the tokens that have undergone the most significant rank shifts during the fine-tuning process of a language model.  The process begins by decoding tokens generated by the fine-tuned model, prior to fine-tuning. Then, the rank shift for each of these tokens is computed within the student model.  Tokens with the largest rank shifts are highlighted as the most shifted tokens. The analysis reveals that these tokens are predominantly associated with expressive and stylistic elements in the generated text, specifically words like 'But' and 'Let'.
> <details>
> <summary>read the caption</summary>
> Figure 8: The process of calculating most shifted tokens. We decode each token generated by the fine-tuned LLM in the student model before fine-tuning. Then we calculate the rank shift in the student model for each token generated by the fine-tuned model. We annotate the tokens that exhibit the largest rank shifts as the most shifted tokens. We found that these tokens are predominantly associated with expressive and stylistic elements, such as “But” and “Let”.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.3">
<tr class="ltx_tr" id="S3.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.4.1">Student Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1"><math alttext="P_{Large}" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><msub id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.1.1.1.1.m1.1.1.2" xref="S3.T2.1.1.1.1.m1.1.1.2.cmml">P</mi><mrow id="S3.T2.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.m1.1.1.3.cmml"><mi id="S3.T2.1.1.1.1.m1.1.1.3.2" xref="S3.T2.1.1.1.1.m1.1.1.3.2.cmml">L</mi><mo id="S3.T2.1.1.1.1.m1.1.1.3.1" xref="S3.T2.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.1.1.1.1.m1.1.1.3.3" xref="S3.T2.1.1.1.1.m1.1.1.3.3.cmml">a</mi><mo id="S3.T2.1.1.1.1.m1.1.1.3.1a" xref="S3.T2.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.1.1.1.1.m1.1.1.3.4" xref="S3.T2.1.1.1.1.m1.1.1.3.4.cmml">r</mi><mo id="S3.T2.1.1.1.1.m1.1.1.3.1b" xref="S3.T2.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.1.1.1.1.m1.1.1.3.5" xref="S3.T2.1.1.1.1.m1.1.1.3.5.cmml">g</mi><mo id="S3.T2.1.1.1.1.m1.1.1.3.1c" xref="S3.T2.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.1.1.1.1.m1.1.1.3.6" xref="S3.T2.1.1.1.1.m1.1.1.3.6.cmml">e</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2">𝑃</ci><apply id="S3.T2.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3"><times id="S3.T2.1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.1"></times><ci id="S3.T2.1.1.1.1.m1.1.1.3.2.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.2">𝐿</ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.3.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.3">𝑎</ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.4.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.4">𝑟</ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.5.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.5">𝑔</ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.6.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3.6">𝑒</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">P_{Large}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">italic_P start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2.2"><math alttext="P_{Small}" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><msub id="S3.T2.2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.cmml"><mi id="S3.T2.2.2.2.2.m1.1.1.2" xref="S3.T2.2.2.2.2.m1.1.1.2.cmml">P</mi><mrow id="S3.T2.2.2.2.2.m1.1.1.3" xref="S3.T2.2.2.2.2.m1.1.1.3.cmml"><mi id="S3.T2.2.2.2.2.m1.1.1.3.2" xref="S3.T2.2.2.2.2.m1.1.1.3.2.cmml">S</mi><mo id="S3.T2.2.2.2.2.m1.1.1.3.1" xref="S3.T2.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.2.2.2.2.m1.1.1.3.3" xref="S3.T2.2.2.2.2.m1.1.1.3.3.cmml">m</mi><mo id="S3.T2.2.2.2.2.m1.1.1.3.1a" xref="S3.T2.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.2.2.2.2.m1.1.1.3.4" xref="S3.T2.2.2.2.2.m1.1.1.3.4.cmml">a</mi><mo id="S3.T2.2.2.2.2.m1.1.1.3.1b" xref="S3.T2.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.2.2.2.2.m1.1.1.3.5" xref="S3.T2.2.2.2.2.m1.1.1.3.5.cmml">l</mi><mo id="S3.T2.2.2.2.2.m1.1.1.3.1c" xref="S3.T2.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.2.2.2.2.m1.1.1.3.6" xref="S3.T2.2.2.2.2.m1.1.1.3.6.cmml">l</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.2.2.2.2.m1.1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S3.T2.2.2.2.2.m1.1.1.2.cmml" xref="S3.T2.2.2.2.2.m1.1.1.2">𝑃</ci><apply id="S3.T2.2.2.2.2.m1.1.1.3.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3"><times id="S3.T2.2.2.2.2.m1.1.1.3.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.1"></times><ci id="S3.T2.2.2.2.2.m1.1.1.3.2.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.2">𝑆</ci><ci id="S3.T2.2.2.2.2.m1.1.1.3.3.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.3">𝑚</ci><ci id="S3.T2.2.2.2.2.m1.1.1.3.4.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.4">𝑎</ci><ci id="S3.T2.2.2.2.2.m1.1.1.3.5.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.5">𝑙</ci><ci id="S3.T2.2.2.2.2.m1.1.1.3.6.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3.6">𝑙</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">P_{Small}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">italic_P start_POSTSUBSCRIPT italic_S italic_m italic_a italic_l italic_l end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.3"><math alttext="\Delta_{Large}" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><msub id="S3.T2.3.3.3.3.m1.1.1" xref="S3.T2.3.3.3.3.m1.1.1.cmml"><mi id="S3.T2.3.3.3.3.m1.1.1.2" mathvariant="normal" xref="S3.T2.3.3.3.3.m1.1.1.2.cmml">Δ</mi><mrow id="S3.T2.3.3.3.3.m1.1.1.3" xref="S3.T2.3.3.3.3.m1.1.1.3.cmml"><mi id="S3.T2.3.3.3.3.m1.1.1.3.2" xref="S3.T2.3.3.3.3.m1.1.1.3.2.cmml">L</mi><mo id="S3.T2.3.3.3.3.m1.1.1.3.1" xref="S3.T2.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.3.3.3.m1.1.1.3.3" xref="S3.T2.3.3.3.3.m1.1.1.3.3.cmml">a</mi><mo id="S3.T2.3.3.3.3.m1.1.1.3.1a" xref="S3.T2.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.3.3.3.m1.1.1.3.4" xref="S3.T2.3.3.3.3.m1.1.1.3.4.cmml">r</mi><mo id="S3.T2.3.3.3.3.m1.1.1.3.1b" xref="S3.T2.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.3.3.3.m1.1.1.3.5" xref="S3.T2.3.3.3.3.m1.1.1.3.5.cmml">g</mi><mo id="S3.T2.3.3.3.3.m1.1.1.3.1c" xref="S3.T2.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.3.3.3.m1.1.1.3.6" xref="S3.T2.3.3.3.3.m1.1.1.3.6.cmml">e</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.3.3.3.3.m1.1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S3.T2.3.3.3.3.m1.1.1.2.cmml" xref="S3.T2.3.3.3.3.m1.1.1.2">Δ</ci><apply id="S3.T2.3.3.3.3.m1.1.1.3.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3"><times id="S3.T2.3.3.3.3.m1.1.1.3.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.1"></times><ci id="S3.T2.3.3.3.3.m1.1.1.3.2.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.2">𝐿</ci><ci id="S3.T2.3.3.3.3.m1.1.1.3.3.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.3">𝑎</ci><ci id="S3.T2.3.3.3.3.m1.1.1.3.4.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.4">𝑟</ci><ci id="S3.T2.3.3.3.3.m1.1.1.3.5.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.5">𝑔</ci><ci id="S3.T2.3.3.3.3.m1.1.1.3.6.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3.6">𝑒</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\Delta_{Large}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_L italic_a italic_r italic_g italic_e end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.5">
<span class="ltx_text" id="S3.T2.3.3.3.5.1"></span><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.5.2"> <span class="ltx_text" id="S3.T2.3.3.3.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.3.3.3.5.2.1.1">
<span class="ltx_tr" id="S3.T2.3.3.3.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.3.3.5.2.1.1.1.1">Better?</span></span>
</span></span><span class="ltx_text" id="S3.T2.3.3.3.5.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.3.4.1">Qwen2.5-0.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.4.2">16.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.4.3">20.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.4.4">-3.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.4.5">Weak</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.5">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.5.1">Qwen2.5-1.5B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.5.2">32.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.5.3">33.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.5.4">-0.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.5.5">Weak</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.6">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.6.1">Qwen2.5-3B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.2">39.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3">39.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.4">0.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.7">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.7.1">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.2">48.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.3">42.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4">6.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.8">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.8.1">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.2">52.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.3">49.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.4">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.9">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.9.1">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.2">59.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.3">53.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.4">6.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.3.10.1">Llama-3.2-1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.10.2">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.10.3">18.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.10.4">-1.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.10.5">Weak</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.11">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.11.1">Llama-3.2-3B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.11.2">32.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.11.3">31.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.11.4">1.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.11.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.12">
<td class="ltx_td ltx_align_left" id="S3.T2.3.3.12.1">Llama-3.2-8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.2">25.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.3">25.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.4">0.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.12.5">Strong</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.3.3.13.1">Llama-3.2-70B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.13.2">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.13.3">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.13.4">4.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.13.5">Strong</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of small language models (student models) fine-tuned using chain-of-thought (CoT) reasoning examples generated by two different teacher models: a larger, more powerful model and a smaller, less powerful model.  The goal is to assess whether smaller student models benefit more from learning from a similar-sized teacher or a much larger teacher. The table shows the average performance scores across several benchmarks for various sized student models.  It highlights the 'Small Model Learnability Gap', indicating that smaller models may struggle to learn from more complex reasoning traces generated by larger models, performing better when trained with simpler, shorter CoT examples.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of average performance between fine-tuning with large teacher CoT (PL⁢o⁢n⁢gsubscript𝑃𝐿𝑜𝑛𝑔P_{Long}italic_P start_POSTSUBSCRIPT italic_L italic_o italic_n italic_g end_POSTSUBSCRIPT) and small teacher CoT (PS⁢m⁢a⁢l⁢lsubscript𝑃𝑆𝑚𝑎𝑙𝑙P_{Small}italic_P start_POSTSUBSCRIPT italic_S italic_m italic_a italic_l italic_l end_POSTSUBSCRIPT). We find that small student models may struggle to learn from large teacher CoT data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.p5.pic1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="S3.SS3.p5.pic1.1.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.p5.pic1.1.1.1.1.1.1.1.1.1"><span class="ltx_text" id="S3.SS3.p5.pic1.1.1.1.1.1.1.1.1.1.1">Takeaway 2: Large Teacher CoT Gap</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different model training methods on math reasoning tasks using two small language models (LLMs), Llama3.2-3B-Instruct and Qwen2.5-3B-Instruct, trained on 7.5k samples from the MATH dataset.  The baseline methods involve distillation from various teacher models generating different types of chain-of-thought (CoT) responses.  The table shows the performance of these baselines on several math benchmarks.  The new proposed method, Mix Distillation, involves two variations: Mix-Long (combining long and short CoT data in a 1:4 ratio) and Mix-Large (combining strong and weak model responses equally). The results demonstrate that Mix Distillation consistently outperforms all baseline methods, achieving the highest scores across most evaluation metrics.  The table highlights the performance improvements on each benchmark by bolding the best score and underlining the second-best score for each method.
> <details>
> <summary>read the caption</summary>
> Table 3: Mix Distillation outperforms the baseline models across most metrics. We use Llama3.2-3B-Instruct and Qwen2.5-3B-Instruct as the student model and 7.5k samples in MATH dataset as the training set. We distill different teacher models to generate responses as the baseline. Our proposed Mix-Long combines long CoT data and normal CoT data in a 1:4 ratio, while Mix-Large combines strong model response and weak model response with the same proportion. Experimental results demonstrate that both Mix-Long and Mix-Large surpass baselines in most evaluation metrics. The highest score is bolded, and the second highest score is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.1">
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.1">Student Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.2">Distillation Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.3">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.4">AMC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.5">GSM8k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.6">
<span class="ltx_text" id="S3.T3.1.1.6.1"></span> <span class="ltx_text" id="S3.T3.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.6.2.1">
<span class="ltx_tr" id="S3.T3.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.2.1.1.1">Olympiad</span></span>
<span class="ltx_tr" id="S3.T3.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6.2.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.7">AIME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.8">Average</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.2.1" rowspan="7"><span class="ltx_text" id="S3.T3.1.2.1.1">Qwen2.5-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.2.2">Long CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.3">56.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.4">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.5">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.6">24.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.2.7.1">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.8">40.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3">
<td class="ltx_td ltx_align_left" id="S3.T3.1.3.1">Short CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.2">61.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3">37.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.4.1">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.5">26.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.6.1">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.7">43.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4">
<td class="ltx_td ltx_align_left" id="S3.T3.1.4.1">Strong Model CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.2">57.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.3">35.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.5">25.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.6">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.7">39.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5">
<td class="ltx_td ltx_align_left" id="S3.T3.1.5.1">Weak Model CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.2">60.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.3">27.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.4">79.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5">26.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.5.6.1">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.7">39.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6">
<td class="ltx_td ltx_align_left" id="S3.T3.1.6.1">Deepseek-R1-32B (Long CoT)</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.2">50.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.3">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.4">81.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.5">15.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.7">33.5</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.7.1"><span class="ltx_text ltx_font_italic" id="S3.T3.1.7.1.1">Ours</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.7.7"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8">
<td class="ltx_td ltx_align_left" id="S3.T3.1.8.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.1.1">Mix-Long</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.8.2.1">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.3.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.8.4.1">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.8.5.1">28.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.6.1">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.7.1">45.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.9">
<td class="ltx_td" id="S3.T3.1.9.1"></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.9.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.9.2.1">Mix-Large</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.9.3.1">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.9.4.1">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.5">81.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.9.6.1">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.9.7.1">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.9.8.1">45.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.10.1" rowspan="7"><span class="ltx_text" id="S3.T3.1.10.1.1">Llama3.2-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.10.2">Long CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.3">48.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.4">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.5">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.10.6.1">17.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.10.7.1">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.10.8">32.5</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.11">
<td class="ltx_td ltx_align_left" id="S3.T3.1.11.1">Short CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.2">50.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.3">15.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.4">77.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.11.5.1">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.11.6.1">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.11.7">33.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.12">
<td class="ltx_td ltx_align_left" id="S3.T3.1.12.1">Strong Model CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.2">47.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.12.3.1">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.4">71.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.5">16.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.12.6.1">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.12.7">32.8</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.13">
<td class="ltx_td ltx_align_left" id="S3.T3.1.13.1">Weak Model CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.2">47.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.3">17.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.4">74.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.5">16.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.13.6.1">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.7">31.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.14">
<td class="ltx_td ltx_align_left" id="S3.T3.1.14.1">Deepseek-R1-32B (Long CoT)</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.2">48.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.3">17.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.14.4.1">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.5">16.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.14.6.1">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.14.7">33.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.15.1"><span class="ltx_text ltx_font_italic" id="S3.T3.1.15.1.1">Ours</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.1.15.7"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.16">
<td class="ltx_td ltx_align_left" id="S3.T3.1.16.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.1.1">Mix-Long</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.2.1">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.16.3.1">22.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.4.1">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.5">17.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.16.6.1">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.16.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.7.1">35.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.17">
<td class="ltx_td ltx_border_bb" id="S3.T3.1.17.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.17.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.2.1">Mix-Large</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.17.3.1">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.4.1">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.5">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.6">17.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.17.7.1">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.17.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.17.8.1">34.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the large language models (LLMs) used in the experiments as teacher models and the smaller models used as student models.  For each category (long vs short chain-of-thought, large vs small teacher), it specifies the particular LLMs used to generate the different types of training data. It also provides a complete list of student models used in the fine-tuning experiments, categorizing them by their model family (Qwen and Llama). This detailed breakdown is essential for understanding the experimental setup and comparing the performance across various model sizes and training approaches.
> <details>
> <summary>read the caption</summary>
> Table 4: Overview of Teacher and Student Models
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS4.SSS0.Px1.p2.pic1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="S3.SS4.SSS0.Px1.p2.pic1.1.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS4.SSS0.Px1.p2.pic1.1.1.1.1.1.1.1.1.1"><span class="ltx_text" id="S3.SS4.SSS0.Px1.p2.pic1.1.1.1.1.1.1.1.1.1.1">Takeaway 3: Effect of Domain Knowledge</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for fine-tuning language models with the full parameter approach.  It includes the learning rate, number of epochs, number of devices used for training, batch size per device, optimizer, learning rate scheduler, and the maximum sequence length.
> <details>
> <summary>read the caption</summary>
> Table 5: This table shows the hyper-parameters for full parameter fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS4.SSS0.Px3.p2.pic1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="S3.SS4.SSS0.Px3.p2.pic1.1.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS4.SSS0.Px3.p2.pic1.1.1.1.1.1.1.1.1.1"><span class="ltx_text" id="S3.SS4.SSS0.Px3.p2.pic1.1.1.1.1.1.1.1.1.1.1">Takeaway 5: Speaking Styles Shift</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for fine-tuning language models using the LoRA (Low-Rank Adaptation) technique.  It lists specific values for parameters such as learning rate, the number of training epochs, and the maximum sequence length processed during training. These settings are crucial for optimizing the LoRA fine-tuning process and achieving the best performance.
> <details>
> <summary>read the caption</summary>
> Table 6: This table shows the hyper-parameters for LoRA fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.p3.pic1.1.1.1.1.1.1.1">
<tr class="ltx_tr" id="S4.SS2.p3.pic1.1.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.p3.pic1.1.1.1.1.1.1.1.1.1"><span class="ltx_text" id="S4.SS2.p3.pic1.1.1.1.1.1.1.1.1.1.1">Takeaway 6: Mix Distillation Bridges Gap</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various sized language models (LLMs) from the Llama and Qwen families, focusing on their ability to solve mathematical reasoning problems.  The models were fine-tuned using two different types of Chain-of-Thought (CoT) reasoning data: long CoT and short CoT.  Long CoT data consists of detailed, multi-step reasoning processes, while short CoT uses concise, shorter reasoning steps. The models' performance is evaluated across five benchmark datasets: MATH, GSM8K, AIME, AMC, and OlympiadBench.  The results show a trend where smaller models perform better with short CoT data, while larger models benefit more from long CoT data, highlighting a relationship between model size and the optimal complexity of reasoning data for effective fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 7: This table summarizes the performance of models in Llama and Qwen families fine-tuned with long CoT and short CoT data. They are evaluated on MATH, GSM8K, AIME, AMC, and OlympiadBench. QwQ-32B-Preview is chosen to generate long CoT and awhile Qwen-2.5-32B-Instruct is chosen to generate short CoT. We observe that small student models tend to benefit more from short CoT, while large student models gain greater advantages from long CoT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1">Models</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T4.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.2.1.1">Teacher Models</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.3.1.1">Long CoT vs</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.3.2">QwQ-32B-Preview vs</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.4.1.1">ShortCoT</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.2">Qwen2.5-32B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.5.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.5.1.1">Large Teacher vs</span></td>
<td class="ltx_td ltx_border_t" id="A1.T4.1.5.2"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.6.1.1">Small Teacher</span></td>
<td class="ltx_td" id="A1.T4.1.6.2"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.1"><span class="ltx_text ltx_font_italic" id="A1.T4.1.7.1.1">Qwen Family</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.2">Qwen2.5-72B-Instruct vs</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td" id="A1.T4.1.8.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.8.2">Qwen2.5-3B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9">
<td class="ltx_td ltx_align_left" id="A1.T4.1.9.1"><span class="ltx_text ltx_font_italic" id="A1.T4.1.9.1.1">Llama Family</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.9.2">Llama3.1-70B-Instruct vs</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10">
<td class="ltx_td" id="A1.T4.1.10.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.10.2">Llama3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11">
<td class="ltx_td ltx_align_left" id="A1.T4.1.11.1"><span class="ltx_text ltx_font_italic" id="A1.T4.1.11.1.1">Gemma Family</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.11.2">Gemma2-27B-it vs</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.12">
<td class="ltx_td" id="A1.T4.1.12.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.12.2">Gemma2-9B-it</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T4.1.13.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.13.1.1">Student Models</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.14.1"><span class="ltx_text ltx_font_italic" id="A1.T4.1.14.1.1">Qwen Family</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.14.2">Qwen2.5-0.5B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.15">
<td class="ltx_td" id="A1.T4.1.15.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.15.2">Qwen2.5-1.5B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.16">
<td class="ltx_td" id="A1.T4.1.16.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.16.2">Qwen2.5-3B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.17">
<td class="ltx_td" id="A1.T4.1.17.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.17.2">Qwen2.5-7B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.18">
<td class="ltx_td" id="A1.T4.1.18.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.18.2">Qwen2.5-14B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.19">
<td class="ltx_td" id="A1.T4.1.19.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.19.2">Qwen2.5-32B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.20">
<td class="ltx_td ltx_align_left" id="A1.T4.1.20.1"><span class="ltx_text ltx_font_italic" id="A1.T4.1.20.1.1">Llama Family</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.20.2">Llama3.2-1B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.21">
<td class="ltx_td" id="A1.T4.1.21.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.21.2">Llama3.2-3B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.22">
<td class="ltx_td" id="A1.T4.1.22.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.22.2">Llama3.1-8B-Instruct,</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.23">
<td class="ltx_td ltx_border_bb" id="A1.T4.1.23.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.23.2">Llama3.3-70B-Instruct</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various sized language models (student models) from the Llama and Qwen families, after fine-tuning using chain-of-thought (CoT) data from different teacher models.  Specifically, it compares the performance when using CoT from a much larger teacher model (Qwen-2.5-72B-Instruct) versus a smaller, more comparable teacher model (Qwen-2.5-3B-Instruct). The evaluation is performed across five benchmark datasets: MATH, GSM8K, AIME, AMC, and OlympiadBench. The results show a trend: smaller student models often perform worse after training with CoT from the significantly larger teacher model than when trained with CoT from the smaller teacher model.  Larger student models, however, tend to benefit from training with CoT data from the larger teacher model.
> <details>
> <summary>read the caption</summary>
> Table 8: This table summarizes the performance of models in Llama and Qwen families fine-tuned with large teacher CoT and small teacher CoT when evaluated on MATH, GSM8K, AIME, AMC, and OlympiadBench. Qwen-2.5-72B-Instruct is chosen as the large teacher while Qwen-2.5-3B-Instruct is chosen as the small teacher. We observe that small student models may experience degraded performance when distilled from a large teacher compared to a small teacher, whereas larger student models benefit more from the distilling a large teacher.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.5.5">
<tr class="ltx_tr" id="A1.T5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.5.5.6.1"><span class="ltx_text ltx_font_bold" id="A1.T5.5.5.6.1.1">Hyper-parameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.5.5.6.2"><span class="ltx_text ltx_font_bold" id="A1.T5.5.5.6.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.1.2">Learning Rate</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.1.1"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mrow id="A1.T5.1.1.1.1.m1.1.1" xref="A1.T5.1.1.1.1.m1.1.1.cmml"><mn id="A1.T5.1.1.1.1.m1.1.1.2" xref="A1.T5.1.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A1.T5.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.1.1.1.1.m1.1.1.3" xref="A1.T5.1.1.1.1.m1.1.1.3.cmml"><mn id="A1.T5.1.1.1.1.m1.1.1.3.2" xref="A1.T5.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T5.1.1.1.1.m1.1.1.3.3" xref="A1.T5.1.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T5.1.1.1.1.m1.1.1.3.3a" xref="A1.T5.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.1.1.1.1.m1.1.1.3.3.2" xref="A1.T5.1.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><apply id="A1.T5.1.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1"><times id="A1.T5.1.1.1.1.m1.1.1.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1.1"></times><cn id="A1.T5.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.1.1.1.1.m1.1.1.2">1</cn><apply id="A1.T5.1.1.1.1.m1.1.1.3.cmml" xref="A1.T5.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.1.1.1.1.m1.1.1.3.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.1.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T5.1.1.1.1.m1.1.1.3.3.cmml" xref="A1.T5.1.1.1.1.m1.1.1.3.3"><minus id="A1.T5.1.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T5.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.1.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="A1.T5.2.2.2.2">Number of Epochs</td>
<td class="ltx_td ltx_align_left" id="A1.T5.2.2.2.1"><math alttext="2" class="ltx_Math" display="inline" id="A1.T5.2.2.2.1.m1.1"><semantics id="A1.T5.2.2.2.1.m1.1a"><mn id="A1.T5.2.2.2.1.m1.1.1" xref="A1.T5.2.2.2.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.1.m1.1b"><cn id="A1.T5.2.2.2.1.m1.1.1.cmml" type="integer" xref="A1.T5.2.2.2.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.1.m1.1d">2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3.3">
<td class="ltx_td ltx_align_left" id="A1.T5.3.3.3.2">Number of Devices</td>
<td class="ltx_td ltx_align_left" id="A1.T5.3.3.3.1"><math alttext="4" class="ltx_Math" display="inline" id="A1.T5.3.3.3.1.m1.1"><semantics id="A1.T5.3.3.3.1.m1.1a"><mn id="A1.T5.3.3.3.1.m1.1.1" xref="A1.T5.3.3.3.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.1.m1.1b"><cn id="A1.T5.3.3.3.1.m1.1.1.cmml" type="integer" xref="A1.T5.3.3.3.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.1.m1.1d">4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.4">
<td class="ltx_td ltx_align_left" id="A1.T5.4.4.4.2">Per-device Batch Size</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.4.4.1"><math alttext="2" class="ltx_Math" display="inline" id="A1.T5.4.4.4.1.m1.1"><semantics id="A1.T5.4.4.4.1.m1.1a"><mn id="A1.T5.4.4.4.1.m1.1.1" xref="A1.T5.4.4.4.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.1.m1.1b"><cn id="A1.T5.4.4.4.1.m1.1.1.cmml" type="integer" xref="A1.T5.4.4.4.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.1.m1.1d">2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.7">
<td class="ltx_td ltx_align_left" id="A1.T5.5.5.7.1">Optimizer</td>
<td class="ltx_td ltx_align_left" id="A1.T5.5.5.7.2"><span class="ltx_text ltx_font_typewriter" id="A1.T5.5.5.7.2.1">Adamw</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.8">
<td class="ltx_td ltx_align_left" id="A1.T5.5.5.8.1">Learning Rate Scheduler</td>
<td class="ltx_td ltx_align_left" id="A1.T5.5.5.8.2"><span class="ltx_text ltx_font_typewriter" id="A1.T5.5.5.8.2.1">cosine</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.5.5.5.2">Max Sequence Length</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.5.5.5.1"><math alttext="16384" class="ltx_Math" display="inline" id="A1.T5.5.5.5.1.m1.1"><semantics id="A1.T5.5.5.5.1.m1.1a"><mn id="A1.T5.5.5.5.1.m1.1.1" xref="A1.T5.5.5.5.1.m1.1.1.cmml">16384</mn><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.1.m1.1b"><cn id="A1.T5.5.5.5.1.m1.1.1.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.1.1">16384</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.1.m1.1c">16384</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.1.m1.1d">16384</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment comparing the performance of smaller language models (student models) trained using knowledge distillation from different teacher models.  The experiment included pairs of teacher models where one was significantly larger than the other (e.g., Gemma-27B-it vs. Gemma-9B-it and Llama3.1-70B-Instruct vs. Llama3.1-8B-Instruct). The performance of the student models is assessed across various metrics on standard benchmarks. The key finding is that smaller student models perform worse when distilled from much larger teachers, while larger student models benefit from distilling knowledge from larger teachers.
> <details>
> <summary>read the caption</summary>
> Table 9: This table presents the performance of student models distilled from different teacher models, including Gemma-27B-it vs Gemma-9B-it and Llama3.1-72B-Instruct vs Llama3.1-8B-Instruct. We observe that small student models may experience degraded performance when distilled from a large teacher compared to a small teacher, whereas larger student models benefit more from the distilling a large teacher.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12143/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12143/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}