---
title: "MoM: Linear Sequence Modeling with Mixture-of-Memories"
summary: "MoM: Enhancing linear sequence modeling via mixture-of-memories for improved recall and reduced memory interference."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13685 {{< /keyword >}}
{{< keyword icon="writer" >}} Jusen Du et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13685" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13685" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13685/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Linear sequence modeling methods offer efficiency, but compressing input into a single memory state hinders performance, especially in recall-intensive tasks. Inspired by the brain's memory mechanisms, this paper introduces a new architecture to overcome these limitations. By leveraging biological insights, the paper addresses the challenge of balancing explicit token representations and extreme compression. 



The paper presents **Mixture-of-Memories (MoM)**, which employs multiple independent memory states with a routing network, directing input tokens to specific states. This enhances memory capacity and reduces interference. MoM retains linear complexity during training and constant complexity during inference. Experiments show MoM outperforms current models on downstream tasks, even matching Transformer performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Mixture-of-Memories (MoM), a novel architecture inspired by neuroscience to enhance memory capacity and minimize interference in linear sequence models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MoM achieves state-of-the-art performance on recall-intensive tasks, outperforming existing linear sequence models and approaching the performance of Transformer models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Presents a new paradigm for reducing memory interference by separating memory states, which is compatible with existing linear sequence modeling methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it **introduces a novel architecture that addresses the limitations of existing linear sequence models**. By overcoming challenges related to limited memory capacity and memory interference, this research **paves the way for more efficient and effective handling of long-range dependencies in various NLP tasks**, opening new avenues for exploration.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13685/x1.png)

> 🔼 The Mixture-of-Memories (MoM) model uses multiple independent memory states to process input tokens.  A router network directs each token to the top K most relevant memory states, where it updates the memory state.  Non-selected memories remain unchanged to prevent interference. A shared memory is continuously active and accessible to all tokens. The diagram shows this memory routing and updating process, illustrating a basic update mechanism. More complex mechanisms, such as gating, would follow a similar approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Framework of MoM. Each input token selectively activates and updates K𝐾Kitalic_K memory states, leaving non-activated memory states unchanged to avoid interference from current input. Additionally, we introduce a continuously activated shared memory. This figure presents the basic memory update mechanism; other mechanisms involving gating or more complex updates follow a similar approach.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.10.11.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.10.11.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.10.11.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.10.11.1.2.1">Memory Update Rule</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.2">LA</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1"><math alttext="\bm{M}_{t}=\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><msub id="S3.T1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.m1.1.1.2.cmml"><mi id="S3.T1.1.1.1.m1.1.1.2.2" xref="S3.T1.1.1.1.m1.1.1.2.2.cmml">𝑴</mi><mi id="S3.T1.1.1.1.m1.1.1.2.3" xref="S3.T1.1.1.1.m1.1.1.2.3.cmml">t</mi></msub><mo id="S3.T1.1.1.1.m1.1.1.1" xref="S3.T1.1.1.1.m1.1.1.1.cmml">=</mo><mrow id="S3.T1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.m1.1.1.3.cmml"><msub id="S3.T1.1.1.1.m1.1.1.3.2" xref="S3.T1.1.1.1.m1.1.1.3.2.cmml"><mi id="S3.T1.1.1.1.m1.1.1.3.2.2" xref="S3.T1.1.1.1.m1.1.1.3.2.2.cmml">𝑴</mi><mrow id="S3.T1.1.1.1.m1.1.1.3.2.3" xref="S3.T1.1.1.1.m1.1.1.3.2.3.cmml"><mi id="S3.T1.1.1.1.m1.1.1.3.2.3.2" xref="S3.T1.1.1.1.m1.1.1.3.2.3.2.cmml">t</mi><mo id="S3.T1.1.1.1.m1.1.1.3.2.3.1" xref="S3.T1.1.1.1.m1.1.1.3.2.3.1.cmml">−</mo><mn id="S3.T1.1.1.1.m1.1.1.3.2.3.3" xref="S3.T1.1.1.1.m1.1.1.3.2.3.3.cmml">1</mn></mrow></msub><mo id="S3.T1.1.1.1.m1.1.1.3.1" xref="S3.T1.1.1.1.m1.1.1.3.1.cmml">+</mo><mrow id="S3.T1.1.1.1.m1.1.1.3.3" xref="S3.T1.1.1.1.m1.1.1.3.3.cmml"><msubsup id="S3.T1.1.1.1.m1.1.1.3.3.2" xref="S3.T1.1.1.1.m1.1.1.3.3.2.cmml"><mi id="S3.T1.1.1.1.m1.1.1.3.3.2.2.2" xref="S3.T1.1.1.1.m1.1.1.3.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.1.1.1.m1.1.1.3.3.2.2.3" xref="S3.T1.1.1.1.m1.1.1.3.3.2.2.3.cmml">t</mi><mi id="S3.T1.1.1.1.m1.1.1.3.3.2.3" xref="S3.T1.1.1.1.m1.1.1.3.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.1.1.1.m1.1.1.3.3.1" xref="S3.T1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><msub id="S3.T1.1.1.1.m1.1.1.3.3.3" xref="S3.T1.1.1.1.m1.1.1.3.3.3.cmml"><mi id="S3.T1.1.1.1.m1.1.1.3.3.3.2" xref="S3.T1.1.1.1.m1.1.1.3.3.3.2.cmml">𝒗</mi><mi id="S3.T1.1.1.1.m1.1.1.3.3.3.3" xref="S3.T1.1.1.1.m1.1.1.3.3.3.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><eq id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1.1"></eq><apply id="S3.T1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.2.1.cmml" xref="S3.T1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.1.1.1.m1.1.1.2.2.cmml" xref="S3.T1.1.1.1.m1.1.1.2.2">𝑴</ci><ci id="S3.T1.1.1.1.m1.1.1.2.3.cmml" xref="S3.T1.1.1.1.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3"><plus id="S3.T1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.1"></plus><apply id="S3.T1.1.1.1.m1.1.1.3.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.2.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2">subscript</csymbol><ci id="S3.T1.1.1.1.m1.1.1.3.2.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2.2">𝑴</ci><apply id="S3.T1.1.1.1.m1.1.1.3.2.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2.3"><minus id="S3.T1.1.1.1.m1.1.1.3.2.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2.3.1"></minus><ci id="S3.T1.1.1.1.m1.1.1.3.2.3.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.2.3.2">𝑡</ci><cn id="S3.T1.1.1.1.m1.1.1.3.2.3.3.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3.2.3.3">1</cn></apply></apply><apply id="S3.T1.1.1.1.m1.1.1.3.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3"><times id="S3.T1.1.1.1.m1.1.1.3.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.1"></times><apply id="S3.T1.1.1.1.m1.1.1.3.3.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.3.2.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2">superscript</csymbol><apply id="S3.T1.1.1.1.m1.1.1.3.3.2.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.3.2.2.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2">subscript</csymbol><ci id="S3.T1.1.1.1.m1.1.1.3.3.2.2.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2.2.2">𝒌</ci><ci id="S3.T1.1.1.1.m1.1.1.3.3.2.2.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.1.1.1.m1.1.1.3.3.2.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.2.3">𝑇</ci></apply><apply id="S3.T1.1.1.1.m1.1.1.3.3.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.3"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.3.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.3">subscript</csymbol><ci id="S3.T1.1.1.1.m1.1.1.3.3.3.2.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.3.2">𝒗</ci><ci id="S3.T1.1.1.1.m1.1.1.3.3.3.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3.3.3.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\bm{M}_{t}=\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.2.2">Lightning</th>
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.1"><math alttext="\bm{M}_{t}=\gamma\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mrow id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml"><msub id="S3.T1.2.2.1.m1.1.1.2" xref="S3.T1.2.2.1.m1.1.1.2.cmml"><mi id="S3.T1.2.2.1.m1.1.1.2.2" xref="S3.T1.2.2.1.m1.1.1.2.2.cmml">𝑴</mi><mi id="S3.T1.2.2.1.m1.1.1.2.3" xref="S3.T1.2.2.1.m1.1.1.2.3.cmml">t</mi></msub><mo id="S3.T1.2.2.1.m1.1.1.1" xref="S3.T1.2.2.1.m1.1.1.1.cmml">=</mo><mrow id="S3.T1.2.2.1.m1.1.1.3" xref="S3.T1.2.2.1.m1.1.1.3.cmml"><mrow id="S3.T1.2.2.1.m1.1.1.3.2" xref="S3.T1.2.2.1.m1.1.1.3.2.cmml"><mi id="S3.T1.2.2.1.m1.1.1.3.2.2" xref="S3.T1.2.2.1.m1.1.1.3.2.2.cmml">γ</mi><mo id="S3.T1.2.2.1.m1.1.1.3.2.1" xref="S3.T1.2.2.1.m1.1.1.3.2.1.cmml">⁢</mo><msub id="S3.T1.2.2.1.m1.1.1.3.2.3" xref="S3.T1.2.2.1.m1.1.1.3.2.3.cmml"><mi id="S3.T1.2.2.1.m1.1.1.3.2.3.2" xref="S3.T1.2.2.1.m1.1.1.3.2.3.2.cmml">𝑴</mi><mrow id="S3.T1.2.2.1.m1.1.1.3.2.3.3" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.cmml"><mi id="S3.T1.2.2.1.m1.1.1.3.2.3.3.2" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.2.cmml">t</mi><mo id="S3.T1.2.2.1.m1.1.1.3.2.3.3.1" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.1.cmml">−</mo><mn id="S3.T1.2.2.1.m1.1.1.3.2.3.3.3" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.2.2.1.m1.1.1.3.1" xref="S3.T1.2.2.1.m1.1.1.3.1.cmml">+</mo><mrow id="S3.T1.2.2.1.m1.1.1.3.3" xref="S3.T1.2.2.1.m1.1.1.3.3.cmml"><msubsup id="S3.T1.2.2.1.m1.1.1.3.3.2" xref="S3.T1.2.2.1.m1.1.1.3.3.2.cmml"><mi id="S3.T1.2.2.1.m1.1.1.3.3.2.2.2" xref="S3.T1.2.2.1.m1.1.1.3.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.2.2.1.m1.1.1.3.3.2.2.3" xref="S3.T1.2.2.1.m1.1.1.3.3.2.2.3.cmml">t</mi><mi id="S3.T1.2.2.1.m1.1.1.3.3.2.3" xref="S3.T1.2.2.1.m1.1.1.3.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.2.2.1.m1.1.1.3.3.1" xref="S3.T1.2.2.1.m1.1.1.3.3.1.cmml">⁢</mo><msub id="S3.T1.2.2.1.m1.1.1.3.3.3" xref="S3.T1.2.2.1.m1.1.1.3.3.3.cmml"><mi id="S3.T1.2.2.1.m1.1.1.3.3.3.2" xref="S3.T1.2.2.1.m1.1.1.3.3.3.2.cmml">𝒗</mi><mi id="S3.T1.2.2.1.m1.1.1.3.3.3.3" xref="S3.T1.2.2.1.m1.1.1.3.3.3.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><apply id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1"><eq id="S3.T1.2.2.1.m1.1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1.1"></eq><apply id="S3.T1.2.2.1.m1.1.1.2.cmml" xref="S3.T1.2.2.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.2.1.cmml" xref="S3.T1.2.2.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.2.2.1.m1.1.1.2.2.cmml" xref="S3.T1.2.2.1.m1.1.1.2.2">𝑴</ci><ci id="S3.T1.2.2.1.m1.1.1.2.3.cmml" xref="S3.T1.2.2.1.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T1.2.2.1.m1.1.1.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3"><plus id="S3.T1.2.2.1.m1.1.1.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.1"></plus><apply id="S3.T1.2.2.1.m1.1.1.3.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2"><times id="S3.T1.2.2.1.m1.1.1.3.2.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.1"></times><ci id="S3.T1.2.2.1.m1.1.1.3.2.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.2">𝛾</ci><apply id="S3.T1.2.2.1.m1.1.1.3.2.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.3.2.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3">subscript</csymbol><ci id="S3.T1.2.2.1.m1.1.1.3.2.3.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3.2">𝑴</ci><apply id="S3.T1.2.2.1.m1.1.1.3.2.3.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3"><minus id="S3.T1.2.2.1.m1.1.1.3.2.3.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.1"></minus><ci id="S3.T1.2.2.1.m1.1.1.3.2.3.3.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.2">𝑡</ci><cn id="S3.T1.2.2.1.m1.1.1.3.2.3.3.3.cmml" type="integer" xref="S3.T1.2.2.1.m1.1.1.3.2.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.2.2.1.m1.1.1.3.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3"><times id="S3.T1.2.2.1.m1.1.1.3.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.1"></times><apply id="S3.T1.2.2.1.m1.1.1.3.3.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.3.3.2.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2">superscript</csymbol><apply id="S3.T1.2.2.1.m1.1.1.3.3.2.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.3.3.2.2.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2">subscript</csymbol><ci id="S3.T1.2.2.1.m1.1.1.3.3.2.2.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2.2.2">𝒌</ci><ci id="S3.T1.2.2.1.m1.1.1.3.3.2.2.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.2.2.1.m1.1.1.3.3.2.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.2.3">𝑇</ci></apply><apply id="S3.T1.2.2.1.m1.1.1.3.3.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.3"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.1.1.3.3.3.1.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.3">subscript</csymbol><ci id="S3.T1.2.2.1.m1.1.1.3.3.3.2.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.3.2">𝒗</ci><ci id="S3.T1.2.2.1.m1.1.1.3.3.3.3.cmml" xref="S3.T1.2.2.1.m1.1.1.3.3.3.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">\bm{M}_{t}=\gamma\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_γ bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.3.2">RetNet</th>
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.1"><math alttext="\bm{M}_{t}=\gamma\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mrow id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml"><msub id="S3.T1.3.3.1.m1.1.1.2" xref="S3.T1.3.3.1.m1.1.1.2.cmml"><mi id="S3.T1.3.3.1.m1.1.1.2.2" xref="S3.T1.3.3.1.m1.1.1.2.2.cmml">𝑴</mi><mi id="S3.T1.3.3.1.m1.1.1.2.3" xref="S3.T1.3.3.1.m1.1.1.2.3.cmml">t</mi></msub><mo id="S3.T1.3.3.1.m1.1.1.1" xref="S3.T1.3.3.1.m1.1.1.1.cmml">=</mo><mrow id="S3.T1.3.3.1.m1.1.1.3" xref="S3.T1.3.3.1.m1.1.1.3.cmml"><mrow id="S3.T1.3.3.1.m1.1.1.3.2" xref="S3.T1.3.3.1.m1.1.1.3.2.cmml"><mi id="S3.T1.3.3.1.m1.1.1.3.2.2" xref="S3.T1.3.3.1.m1.1.1.3.2.2.cmml">γ</mi><mo id="S3.T1.3.3.1.m1.1.1.3.2.1" xref="S3.T1.3.3.1.m1.1.1.3.2.1.cmml">⁢</mo><msub id="S3.T1.3.3.1.m1.1.1.3.2.3" xref="S3.T1.3.3.1.m1.1.1.3.2.3.cmml"><mi id="S3.T1.3.3.1.m1.1.1.3.2.3.2" xref="S3.T1.3.3.1.m1.1.1.3.2.3.2.cmml">𝑴</mi><mrow id="S3.T1.3.3.1.m1.1.1.3.2.3.3" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.cmml"><mi id="S3.T1.3.3.1.m1.1.1.3.2.3.3.2" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.2.cmml">t</mi><mo id="S3.T1.3.3.1.m1.1.1.3.2.3.3.1" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.1.cmml">−</mo><mn id="S3.T1.3.3.1.m1.1.1.3.2.3.3.3" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.3.3.1.m1.1.1.3.1" xref="S3.T1.3.3.1.m1.1.1.3.1.cmml">+</mo><mrow id="S3.T1.3.3.1.m1.1.1.3.3" xref="S3.T1.3.3.1.m1.1.1.3.3.cmml"><msubsup id="S3.T1.3.3.1.m1.1.1.3.3.2" xref="S3.T1.3.3.1.m1.1.1.3.3.2.cmml"><mi id="S3.T1.3.3.1.m1.1.1.3.3.2.2.2" xref="S3.T1.3.3.1.m1.1.1.3.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.3.3.1.m1.1.1.3.3.2.2.3" xref="S3.T1.3.3.1.m1.1.1.3.3.2.2.3.cmml">t</mi><mi id="S3.T1.3.3.1.m1.1.1.3.3.2.3" xref="S3.T1.3.3.1.m1.1.1.3.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.3.3.1.m1.1.1.3.3.1" xref="S3.T1.3.3.1.m1.1.1.3.3.1.cmml">⁢</mo><msub id="S3.T1.3.3.1.m1.1.1.3.3.3" xref="S3.T1.3.3.1.m1.1.1.3.3.3.cmml"><mi id="S3.T1.3.3.1.m1.1.1.3.3.3.2" xref="S3.T1.3.3.1.m1.1.1.3.3.3.2.cmml">𝒗</mi><mi id="S3.T1.3.3.1.m1.1.1.3.3.3.3" xref="S3.T1.3.3.1.m1.1.1.3.3.3.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><apply id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1"><eq id="S3.T1.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1.1"></eq><apply id="S3.T1.3.3.1.m1.1.1.2.cmml" xref="S3.T1.3.3.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.2.1.cmml" xref="S3.T1.3.3.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.3.3.1.m1.1.1.2.2.cmml" xref="S3.T1.3.3.1.m1.1.1.2.2">𝑴</ci><ci id="S3.T1.3.3.1.m1.1.1.2.3.cmml" xref="S3.T1.3.3.1.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T1.3.3.1.m1.1.1.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3"><plus id="S3.T1.3.3.1.m1.1.1.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.1"></plus><apply id="S3.T1.3.3.1.m1.1.1.3.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2"><times id="S3.T1.3.3.1.m1.1.1.3.2.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.1"></times><ci id="S3.T1.3.3.1.m1.1.1.3.2.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.2">𝛾</ci><apply id="S3.T1.3.3.1.m1.1.1.3.2.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.3.2.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3">subscript</csymbol><ci id="S3.T1.3.3.1.m1.1.1.3.2.3.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3.2">𝑴</ci><apply id="S3.T1.3.3.1.m1.1.1.3.2.3.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3"><minus id="S3.T1.3.3.1.m1.1.1.3.2.3.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.1"></minus><ci id="S3.T1.3.3.1.m1.1.1.3.2.3.3.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.2">𝑡</ci><cn id="S3.T1.3.3.1.m1.1.1.3.2.3.3.3.cmml" type="integer" xref="S3.T1.3.3.1.m1.1.1.3.2.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.3.3.1.m1.1.1.3.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3"><times id="S3.T1.3.3.1.m1.1.1.3.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.1"></times><apply id="S3.T1.3.3.1.m1.1.1.3.3.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.3.3.2.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2">superscript</csymbol><apply id="S3.T1.3.3.1.m1.1.1.3.3.2.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.3.3.2.2.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2">subscript</csymbol><ci id="S3.T1.3.3.1.m1.1.1.3.3.2.2.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2.2.2">𝒌</ci><ci id="S3.T1.3.3.1.m1.1.1.3.3.2.2.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.3.3.1.m1.1.1.3.3.2.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.2.3">𝑇</ci></apply><apply id="S3.T1.3.3.1.m1.1.1.3.3.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.3"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.1.1.3.3.3.1.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.3">subscript</csymbol><ci id="S3.T1.3.3.1.m1.1.1.3.3.3.2.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.3.2">𝒗</ci><ci id="S3.T1.3.3.1.m1.1.1.3.3.3.3.cmml" xref="S3.T1.3.3.1.m1.1.1.3.3.3.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">\bm{M}_{t}=\gamma\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_γ bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.2">HGRN2</th>
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.1"><math alttext="\bm{M}_{t}=(\bm{a}_{t}^{T}\bm{1})\bm{M}_{t-1}+(1-\bm{a}_{t})^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.2"><semantics id="S3.T1.4.4.1.m1.2a"><mrow id="S3.T1.4.4.1.m1.2.2" xref="S3.T1.4.4.1.m1.2.2.cmml"><msub id="S3.T1.4.4.1.m1.2.2.4" xref="S3.T1.4.4.1.m1.2.2.4.cmml"><mi id="S3.T1.4.4.1.m1.2.2.4.2" xref="S3.T1.4.4.1.m1.2.2.4.2.cmml">𝑴</mi><mi id="S3.T1.4.4.1.m1.2.2.4.3" xref="S3.T1.4.4.1.m1.2.2.4.3.cmml">t</mi></msub><mo id="S3.T1.4.4.1.m1.2.2.3" xref="S3.T1.4.4.1.m1.2.2.3.cmml">=</mo><mrow id="S3.T1.4.4.1.m1.2.2.2" xref="S3.T1.4.4.1.m1.2.2.2.cmml"><mrow id="S3.T1.4.4.1.m1.1.1.1.1" xref="S3.T1.4.4.1.m1.1.1.1.1.cmml"><mrow id="S3.T1.4.4.1.m1.1.1.1.1.1.1" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.4.4.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml"><msubsup id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.cmml"><mi id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.2" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.2.cmml">𝒂</mi><mi id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.3" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.3.cmml">t</mi><mi id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.3" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.3.cmml">T</mi></msubsup><mo id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.1" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.1.cmml">⁢</mo><mn id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.3.cmml">𝟏</mn></mrow><mo id="S3.T1.4.4.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.4.4.1.m1.1.1.1.1.2" xref="S3.T1.4.4.1.m1.1.1.1.1.2.cmml">⁢</mo><msub id="S3.T1.4.4.1.m1.1.1.1.1.3" xref="S3.T1.4.4.1.m1.1.1.1.1.3.cmml"><mi id="S3.T1.4.4.1.m1.1.1.1.1.3.2" xref="S3.T1.4.4.1.m1.1.1.1.1.3.2.cmml">𝑴</mi><mrow id="S3.T1.4.4.1.m1.1.1.1.1.3.3" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.cmml"><mi id="S3.T1.4.4.1.m1.1.1.1.1.3.3.2" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.2.cmml">t</mi><mo id="S3.T1.4.4.1.m1.1.1.1.1.3.3.1" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.1.cmml">−</mo><mn id="S3.T1.4.4.1.m1.1.1.1.1.3.3.3" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.4.4.1.m1.2.2.2.3" xref="S3.T1.4.4.1.m1.2.2.2.3.cmml">+</mo><mrow id="S3.T1.4.4.1.m1.2.2.2.2" xref="S3.T1.4.4.1.m1.2.2.2.2.cmml"><msup id="S3.T1.4.4.1.m1.2.2.2.2.1" xref="S3.T1.4.4.1.m1.2.2.2.2.1.cmml"><mrow id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.cmml"><mo id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.2" stretchy="false" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.cmml">(</mo><mrow id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.cmml"><mn id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.2" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.2.cmml">1</mn><mo id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.1" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.1.cmml">−</mo><msub id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.cmml"><mi id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.2" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.2.cmml">𝒂</mi><mi id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.3" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.3.cmml">t</mi></msub></mrow><mo id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.3" stretchy="false" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.cmml">)</mo></mrow><mi id="S3.T1.4.4.1.m1.2.2.2.2.1.3" xref="S3.T1.4.4.1.m1.2.2.2.2.1.3.cmml">T</mi></msup><mo id="S3.T1.4.4.1.m1.2.2.2.2.2" xref="S3.T1.4.4.1.m1.2.2.2.2.2.cmml">⁢</mo><msub id="S3.T1.4.4.1.m1.2.2.2.2.3" xref="S3.T1.4.4.1.m1.2.2.2.2.3.cmml"><mi id="S3.T1.4.4.1.m1.2.2.2.2.3.2" xref="S3.T1.4.4.1.m1.2.2.2.2.3.2.cmml">𝒗</mi><mi id="S3.T1.4.4.1.m1.2.2.2.2.3.3" xref="S3.T1.4.4.1.m1.2.2.2.2.3.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.2b"><apply id="S3.T1.4.4.1.m1.2.2.cmml" xref="S3.T1.4.4.1.m1.2.2"><eq id="S3.T1.4.4.1.m1.2.2.3.cmml" xref="S3.T1.4.4.1.m1.2.2.3"></eq><apply id="S3.T1.4.4.1.m1.2.2.4.cmml" xref="S3.T1.4.4.1.m1.2.2.4"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.2.2.4.1.cmml" xref="S3.T1.4.4.1.m1.2.2.4">subscript</csymbol><ci id="S3.T1.4.4.1.m1.2.2.4.2.cmml" xref="S3.T1.4.4.1.m1.2.2.4.2">𝑴</ci><ci id="S3.T1.4.4.1.m1.2.2.4.3.cmml" xref="S3.T1.4.4.1.m1.2.2.4.3">𝑡</ci></apply><apply id="S3.T1.4.4.1.m1.2.2.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2"><plus id="S3.T1.4.4.1.m1.2.2.2.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.3"></plus><apply id="S3.T1.4.4.1.m1.1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1"><times id="S3.T1.4.4.1.m1.1.1.1.1.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.2"></times><apply id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1"><times id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.1"></times><apply id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2">superscript</csymbol><apply id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.2">𝒂</ci><ci id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.3.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.2.3">𝑡</ci></apply><ci id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.3.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.2.3">𝑇</ci></apply><cn id="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.1.1.1.1.1.3">1</cn></apply><apply id="S3.T1.4.4.1.m1.1.1.1.1.3.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.1.1.1.1.3.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.4.4.1.m1.1.1.1.1.3.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3.2">𝑴</ci><apply id="S3.T1.4.4.1.m1.1.1.1.1.3.3.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3"><minus id="S3.T1.4.4.1.m1.1.1.1.1.3.3.1.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.1"></minus><ci id="S3.T1.4.4.1.m1.1.1.1.1.3.3.2.cmml" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.2">𝑡</ci><cn id="S3.T1.4.4.1.m1.1.1.1.1.3.3.3.cmml" type="integer" xref="S3.T1.4.4.1.m1.1.1.1.1.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.4.4.1.m1.2.2.2.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2"><times id="S3.T1.4.4.1.m1.2.2.2.2.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.2"></times><apply id="S3.T1.4.4.1.m1.2.2.2.2.1.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.2.2.2.2.1.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1">superscript</csymbol><apply id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1"><minus id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.1.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.1"></minus><cn id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.2.cmml" type="integer" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.2">1</cn><apply id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.1.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.2">𝒂</ci><ci id="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.1.1.1.3.3">𝑡</ci></apply></apply><ci id="S3.T1.4.4.1.m1.2.2.2.2.1.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.1.3">𝑇</ci></apply><apply id="S3.T1.4.4.1.m1.2.2.2.2.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.3"><csymbol cd="ambiguous" id="S3.T1.4.4.1.m1.2.2.2.2.3.1.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.3">subscript</csymbol><ci id="S3.T1.4.4.1.m1.2.2.2.2.3.2.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.3.2">𝒗</ci><ci id="S3.T1.4.4.1.m1.2.2.2.2.3.3.cmml" xref="S3.T1.4.4.1.m1.2.2.2.2.3.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.2c">\bm{M}_{t}=(\bm{a}_{t}^{T}\bm{1})\bm{M}_{t-1}+(1-\bm{a}_{t})^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.2d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = ( bold_italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_1 ) bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + ( 1 - bold_italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.5.2">GLA</th>
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.1"><math alttext="\bm{M}_{t}=(\bm{a}_{t}^{T}\bm{1})\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mrow id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml"><msub id="S3.T1.5.5.1.m1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.3.cmml"><mi id="S3.T1.5.5.1.m1.1.1.3.2" xref="S3.T1.5.5.1.m1.1.1.3.2.cmml">𝑴</mi><mi id="S3.T1.5.5.1.m1.1.1.3.3" xref="S3.T1.5.5.1.m1.1.1.3.3.cmml">t</mi></msub><mo id="S3.T1.5.5.1.m1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.2.cmml">=</mo><mrow id="S3.T1.5.5.1.m1.1.1.1" xref="S3.T1.5.5.1.m1.1.1.1.cmml"><mrow id="S3.T1.5.5.1.m1.1.1.1.1" xref="S3.T1.5.5.1.m1.1.1.1.1.cmml"><mrow id="S3.T1.5.5.1.m1.1.1.1.1.1.1" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.5.5.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.cmml"><msubsup id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.cmml"><mi id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.2" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.2.cmml">𝒂</mi><mi id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.3" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.3.cmml">t</mi><mi id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.3" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.3.cmml">T</mi></msubsup><mo id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.1" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.1.cmml">⁢</mo><mn id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.3.cmml">𝟏</mn></mrow><mo id="S3.T1.5.5.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.5.5.1.m1.1.1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.1.1.2.cmml">⁢</mo><msub id="S3.T1.5.5.1.m1.1.1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.1.1.3.cmml"><mi id="S3.T1.5.5.1.m1.1.1.1.1.3.2" xref="S3.T1.5.5.1.m1.1.1.1.1.3.2.cmml">𝑴</mi><mrow id="S3.T1.5.5.1.m1.1.1.1.1.3.3" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.cmml"><mi id="S3.T1.5.5.1.m1.1.1.1.1.3.3.2" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.2.cmml">t</mi><mo id="S3.T1.5.5.1.m1.1.1.1.1.3.3.1" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.1.cmml">−</mo><mn id="S3.T1.5.5.1.m1.1.1.1.1.3.3.3" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.5.5.1.m1.1.1.1.2" xref="S3.T1.5.5.1.m1.1.1.1.2.cmml">+</mo><mrow id="S3.T1.5.5.1.m1.1.1.1.3" xref="S3.T1.5.5.1.m1.1.1.1.3.cmml"><msubsup id="S3.T1.5.5.1.m1.1.1.1.3.2" xref="S3.T1.5.5.1.m1.1.1.1.3.2.cmml"><mi id="S3.T1.5.5.1.m1.1.1.1.3.2.2.2" xref="S3.T1.5.5.1.m1.1.1.1.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.5.5.1.m1.1.1.1.3.2.2.3" xref="S3.T1.5.5.1.m1.1.1.1.3.2.2.3.cmml">t</mi><mi id="S3.T1.5.5.1.m1.1.1.1.3.2.3" xref="S3.T1.5.5.1.m1.1.1.1.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.5.5.1.m1.1.1.1.3.1" xref="S3.T1.5.5.1.m1.1.1.1.3.1.cmml">⁢</mo><msub id="S3.T1.5.5.1.m1.1.1.1.3.3" xref="S3.T1.5.5.1.m1.1.1.1.3.3.cmml"><mi id="S3.T1.5.5.1.m1.1.1.1.3.3.2" xref="S3.T1.5.5.1.m1.1.1.1.3.3.2.cmml">𝒗</mi><mi id="S3.T1.5.5.1.m1.1.1.1.3.3.3" xref="S3.T1.5.5.1.m1.1.1.1.3.3.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><apply id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1"><eq id="S3.T1.5.5.1.m1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.2"></eq><apply id="S3.T1.5.5.1.m1.1.1.3.cmml" xref="S3.T1.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.3">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.3.2.cmml" xref="S3.T1.5.5.1.m1.1.1.3.2">𝑴</ci><ci id="S3.T1.5.5.1.m1.1.1.3.3.cmml" xref="S3.T1.5.5.1.m1.1.1.3.3">𝑡</ci></apply><apply id="S3.T1.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1"><plus id="S3.T1.5.5.1.m1.1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.2"></plus><apply id="S3.T1.5.5.1.m1.1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1"><times id="S3.T1.5.5.1.m1.1.1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.2"></times><apply id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1"><times id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.1"></times><apply id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2">superscript</csymbol><apply id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.2">𝒂</ci><ci id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.2.3">𝑡</ci></apply><ci id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.2.3">𝑇</ci></apply><cn id="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.1.1.1.1.1.3">1</cn></apply><apply id="S3.T1.5.5.1.m1.1.1.1.1.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.1.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.1.1.3.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3.2">𝑴</ci><apply id="S3.T1.5.5.1.m1.1.1.1.1.3.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3"><minus id="S3.T1.5.5.1.m1.1.1.1.1.3.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.1"></minus><ci id="S3.T1.5.5.1.m1.1.1.1.1.3.3.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.2">𝑡</ci><cn id="S3.T1.5.5.1.m1.1.1.1.1.3.3.3.cmml" type="integer" xref="S3.T1.5.5.1.m1.1.1.1.1.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.5.5.1.m1.1.1.1.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3"><times id="S3.T1.5.5.1.m1.1.1.1.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.1"></times><apply id="S3.T1.5.5.1.m1.1.1.1.3.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.3.2.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2">superscript</csymbol><apply id="S3.T1.5.5.1.m1.1.1.1.3.2.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.3.2.2.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.1.3.2.2.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2.2.2">𝒌</ci><ci id="S3.T1.5.5.1.m1.1.1.1.3.2.2.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.5.5.1.m1.1.1.1.3.2.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.2.3">𝑇</ci></apply><apply id="S3.T1.5.5.1.m1.1.1.1.3.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.5.5.1.m1.1.1.1.3.3.1.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.3">subscript</csymbol><ci id="S3.T1.5.5.1.m1.1.1.1.3.3.2.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.3.2">𝒗</ci><ci id="S3.T1.5.5.1.m1.1.1.1.3.3.3.cmml" xref="S3.T1.5.5.1.m1.1.1.1.3.3.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">\bm{M}_{t}=(\bm{a}_{t}^{T}\bm{1})\bm{M}_{t-1}+\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = ( bold_italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_1 ) bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.6.2">Mamba2</th>
<td class="ltx_td ltx_align_left" id="S3.T1.6.6.1"><math alttext="\bm{M}_{t}=\alpha_{t}\bm{M}_{t-1}+\beta_{t}\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1"><semantics id="S3.T1.6.6.1.m1.1a"><mrow id="S3.T1.6.6.1.m1.1.1" xref="S3.T1.6.6.1.m1.1.1.cmml"><msub id="S3.T1.6.6.1.m1.1.1.2" xref="S3.T1.6.6.1.m1.1.1.2.cmml"><mi id="S3.T1.6.6.1.m1.1.1.2.2" xref="S3.T1.6.6.1.m1.1.1.2.2.cmml">𝑴</mi><mi id="S3.T1.6.6.1.m1.1.1.2.3" xref="S3.T1.6.6.1.m1.1.1.2.3.cmml">t</mi></msub><mo id="S3.T1.6.6.1.m1.1.1.1" xref="S3.T1.6.6.1.m1.1.1.1.cmml">=</mo><mrow id="S3.T1.6.6.1.m1.1.1.3" xref="S3.T1.6.6.1.m1.1.1.3.cmml"><mrow id="S3.T1.6.6.1.m1.1.1.3.2" xref="S3.T1.6.6.1.m1.1.1.3.2.cmml"><msub id="S3.T1.6.6.1.m1.1.1.3.2.2" xref="S3.T1.6.6.1.m1.1.1.3.2.2.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.2.2.2" xref="S3.T1.6.6.1.m1.1.1.3.2.2.2.cmml">α</mi><mi id="S3.T1.6.6.1.m1.1.1.3.2.2.3" xref="S3.T1.6.6.1.m1.1.1.3.2.2.3.cmml">t</mi></msub><mo id="S3.T1.6.6.1.m1.1.1.3.2.1" xref="S3.T1.6.6.1.m1.1.1.3.2.1.cmml">⁢</mo><msub id="S3.T1.6.6.1.m1.1.1.3.2.3" xref="S3.T1.6.6.1.m1.1.1.3.2.3.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.2.3.2" xref="S3.T1.6.6.1.m1.1.1.3.2.3.2.cmml">𝑴</mi><mrow id="S3.T1.6.6.1.m1.1.1.3.2.3.3" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.2.3.3.2" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.2.cmml">t</mi><mo id="S3.T1.6.6.1.m1.1.1.3.2.3.3.1" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.1.cmml">−</mo><mn id="S3.T1.6.6.1.m1.1.1.3.2.3.3.3" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.6.6.1.m1.1.1.3.1" xref="S3.T1.6.6.1.m1.1.1.3.1.cmml">+</mo><mrow id="S3.T1.6.6.1.m1.1.1.3.3" xref="S3.T1.6.6.1.m1.1.1.3.3.cmml"><msub id="S3.T1.6.6.1.m1.1.1.3.3.2" xref="S3.T1.6.6.1.m1.1.1.3.3.2.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.3.2.2" xref="S3.T1.6.6.1.m1.1.1.3.3.2.2.cmml">β</mi><mi id="S3.T1.6.6.1.m1.1.1.3.3.2.3" xref="S3.T1.6.6.1.m1.1.1.3.3.2.3.cmml">t</mi></msub><mo id="S3.T1.6.6.1.m1.1.1.3.3.1" xref="S3.T1.6.6.1.m1.1.1.3.3.1.cmml">⁢</mo><msubsup id="S3.T1.6.6.1.m1.1.1.3.3.3" xref="S3.T1.6.6.1.m1.1.1.3.3.3.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.3.3.2.2" xref="S3.T1.6.6.1.m1.1.1.3.3.3.2.2.cmml">𝒌</mi><mi id="S3.T1.6.6.1.m1.1.1.3.3.3.2.3" xref="S3.T1.6.6.1.m1.1.1.3.3.3.2.3.cmml">t</mi><mi id="S3.T1.6.6.1.m1.1.1.3.3.3.3" xref="S3.T1.6.6.1.m1.1.1.3.3.3.3.cmml">T</mi></msubsup><mo id="S3.T1.6.6.1.m1.1.1.3.3.1a" xref="S3.T1.6.6.1.m1.1.1.3.3.1.cmml">⁢</mo><msub id="S3.T1.6.6.1.m1.1.1.3.3.4" xref="S3.T1.6.6.1.m1.1.1.3.3.4.cmml"><mi id="S3.T1.6.6.1.m1.1.1.3.3.4.2" xref="S3.T1.6.6.1.m1.1.1.3.3.4.2.cmml">𝒗</mi><mi id="S3.T1.6.6.1.m1.1.1.3.3.4.3" xref="S3.T1.6.6.1.m1.1.1.3.3.4.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><apply id="S3.T1.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1"><eq id="S3.T1.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1.1"></eq><apply id="S3.T1.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.2.1.cmml" xref="S3.T1.6.6.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.2.2.cmml" xref="S3.T1.6.6.1.m1.1.1.2.2">𝑴</ci><ci id="S3.T1.6.6.1.m1.1.1.2.3.cmml" xref="S3.T1.6.6.1.m1.1.1.2.3">𝑡</ci></apply><apply id="S3.T1.6.6.1.m1.1.1.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3"><plus id="S3.T1.6.6.1.m1.1.1.3.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.1"></plus><apply id="S3.T1.6.6.1.m1.1.1.3.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2"><times id="S3.T1.6.6.1.m1.1.1.3.2.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.1"></times><apply id="S3.T1.6.6.1.m1.1.1.3.2.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.2"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.2.2.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.2">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.3.2.2.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.2.2">𝛼</ci><ci id="S3.T1.6.6.1.m1.1.1.3.2.2.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.2.3">𝑡</ci></apply><apply id="S3.T1.6.6.1.m1.1.1.3.2.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.2.3.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.3.2.3.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3.2">𝑴</ci><apply id="S3.T1.6.6.1.m1.1.1.3.2.3.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3"><minus id="S3.T1.6.6.1.m1.1.1.3.2.3.3.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.1"></minus><ci id="S3.T1.6.6.1.m1.1.1.3.2.3.3.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.2">𝑡</ci><cn id="S3.T1.6.6.1.m1.1.1.3.2.3.3.3.cmml" type="integer" xref="S3.T1.6.6.1.m1.1.1.3.2.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.6.6.1.m1.1.1.3.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3"><times id="S3.T1.6.6.1.m1.1.1.3.3.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.1"></times><apply id="S3.T1.6.6.1.m1.1.1.3.3.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.2"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.3.2.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.2">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.3.3.2.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.2.2">𝛽</ci><ci id="S3.T1.6.6.1.m1.1.1.3.3.2.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.2.3">𝑡</ci></apply><apply id="S3.T1.6.6.1.m1.1.1.3.3.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.3.3.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3">superscript</csymbol><apply id="S3.T1.6.6.1.m1.1.1.3.3.3.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.3.3.2.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.3.3.3.2.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3.2.2">𝒌</ci><ci id="S3.T1.6.6.1.m1.1.1.3.3.3.2.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3.2.3">𝑡</ci></apply><ci id="S3.T1.6.6.1.m1.1.1.3.3.3.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.3.3">𝑇</ci></apply><apply id="S3.T1.6.6.1.m1.1.1.3.3.4.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.4"><csymbol cd="ambiguous" id="S3.T1.6.6.1.m1.1.1.3.3.4.1.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.4">subscript</csymbol><ci id="S3.T1.6.6.1.m1.1.1.3.3.4.2.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.4.2">𝒗</ci><ci id="S3.T1.6.6.1.m1.1.1.3.3.4.3.cmml" xref="S3.T1.6.6.1.m1.1.1.3.3.4.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">\bm{M}_{t}=\alpha_{t}\bm{M}_{t-1}+\beta_{t}\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.7.2">DeltaNet</th>
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.1"><math alttext="\bm{M}_{t}=(\bm{I}-\bm{k}_{t}^{T}\bm{k}_{t})\bm{M}_{t-1}+\beta_{t}\bm{k}_{t}^{%
T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.1"><semantics id="S3.T1.7.7.1.m1.1a"><mrow id="S3.T1.7.7.1.m1.1.1" xref="S3.T1.7.7.1.m1.1.1.cmml"><msub id="S3.T1.7.7.1.m1.1.1.3" xref="S3.T1.7.7.1.m1.1.1.3.cmml"><mi id="S3.T1.7.7.1.m1.1.1.3.2" xref="S3.T1.7.7.1.m1.1.1.3.2.cmml">𝑴</mi><mi id="S3.T1.7.7.1.m1.1.1.3.3" xref="S3.T1.7.7.1.m1.1.1.3.3.cmml">t</mi></msub><mo id="S3.T1.7.7.1.m1.1.1.2" xref="S3.T1.7.7.1.m1.1.1.2.cmml">=</mo><mrow id="S3.T1.7.7.1.m1.1.1.1" xref="S3.T1.7.7.1.m1.1.1.1.cmml"><mrow id="S3.T1.7.7.1.m1.1.1.1.1" xref="S3.T1.7.7.1.m1.1.1.1.1.cmml"><mrow id="S3.T1.7.7.1.m1.1.1.1.1.1.1" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.7.7.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.2.cmml">𝑰</mi><mo id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.1" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.cmml"><msubsup id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.2" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.3" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.3.cmml">t</mi><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.3" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.1" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.1.cmml">⁢</mo><msub id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.2" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.2.cmml">𝒌</mi><mi id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.3" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.3.cmml">t</mi></msub></mrow></mrow><mo id="S3.T1.7.7.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.7.7.1.m1.1.1.1.1.2" xref="S3.T1.7.7.1.m1.1.1.1.1.2.cmml">⁢</mo><msub id="S3.T1.7.7.1.m1.1.1.1.1.3" xref="S3.T1.7.7.1.m1.1.1.1.1.3.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.1.3.2" xref="S3.T1.7.7.1.m1.1.1.1.1.3.2.cmml">𝑴</mi><mrow id="S3.T1.7.7.1.m1.1.1.1.1.3.3" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.1.3.3.2" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.2.cmml">t</mi><mo id="S3.T1.7.7.1.m1.1.1.1.1.3.3.1" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.1.cmml">−</mo><mn id="S3.T1.7.7.1.m1.1.1.1.1.3.3.3" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.7.7.1.m1.1.1.1.2" xref="S3.T1.7.7.1.m1.1.1.1.2.cmml">+</mo><mrow id="S3.T1.7.7.1.m1.1.1.1.3" xref="S3.T1.7.7.1.m1.1.1.1.3.cmml"><msub id="S3.T1.7.7.1.m1.1.1.1.3.2" xref="S3.T1.7.7.1.m1.1.1.1.3.2.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.3.2.2" xref="S3.T1.7.7.1.m1.1.1.1.3.2.2.cmml">β</mi><mi id="S3.T1.7.7.1.m1.1.1.1.3.2.3" xref="S3.T1.7.7.1.m1.1.1.1.3.2.3.cmml">t</mi></msub><mo id="S3.T1.7.7.1.m1.1.1.1.3.1" xref="S3.T1.7.7.1.m1.1.1.1.3.1.cmml">⁢</mo><msubsup id="S3.T1.7.7.1.m1.1.1.1.3.3" xref="S3.T1.7.7.1.m1.1.1.1.3.3.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.3.3.2.2" xref="S3.T1.7.7.1.m1.1.1.1.3.3.2.2.cmml">𝒌</mi><mi id="S3.T1.7.7.1.m1.1.1.1.3.3.2.3" xref="S3.T1.7.7.1.m1.1.1.1.3.3.2.3.cmml">t</mi><mi id="S3.T1.7.7.1.m1.1.1.1.3.3.3" xref="S3.T1.7.7.1.m1.1.1.1.3.3.3.cmml">T</mi></msubsup><mo id="S3.T1.7.7.1.m1.1.1.1.3.1a" xref="S3.T1.7.7.1.m1.1.1.1.3.1.cmml">⁢</mo><msub id="S3.T1.7.7.1.m1.1.1.1.3.4" xref="S3.T1.7.7.1.m1.1.1.1.3.4.cmml"><mi id="S3.T1.7.7.1.m1.1.1.1.3.4.2" xref="S3.T1.7.7.1.m1.1.1.1.3.4.2.cmml">𝒗</mi><mi id="S3.T1.7.7.1.m1.1.1.1.3.4.3" xref="S3.T1.7.7.1.m1.1.1.1.3.4.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.1b"><apply id="S3.T1.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1"><eq id="S3.T1.7.7.1.m1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.2"></eq><apply id="S3.T1.7.7.1.m1.1.1.3.cmml" xref="S3.T1.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.3">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.3.2">𝑴</ci><ci id="S3.T1.7.7.1.m1.1.1.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.3.3">𝑡</ci></apply><apply id="S3.T1.7.7.1.m1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1"><plus id="S3.T1.7.7.1.m1.1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.2"></plus><apply id="S3.T1.7.7.1.m1.1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1"><times id="S3.T1.7.7.1.m1.1.1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.2"></times><apply id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1"><minus id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.1"></minus><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.2">𝑰</ci><apply id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3"><times id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.1"></times><apply id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2">superscript</csymbol><apply id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.2">𝒌</ci><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.2.3">𝑇</ci></apply><apply id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.2">𝒌</ci><ci id="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.1.1.1.3.3.3">𝑡</ci></apply></apply></apply><apply id="S3.T1.7.7.1.m1.1.1.1.1.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.1.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.1.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3.2">𝑴</ci><apply id="S3.T1.7.7.1.m1.1.1.1.1.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3"><minus id="S3.T1.7.7.1.m1.1.1.1.1.3.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.1"></minus><ci id="S3.T1.7.7.1.m1.1.1.1.1.3.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.2">𝑡</ci><cn id="S3.T1.7.7.1.m1.1.1.1.1.3.3.3.cmml" type="integer" xref="S3.T1.7.7.1.m1.1.1.1.1.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.7.7.1.m1.1.1.1.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3"><times id="S3.T1.7.7.1.m1.1.1.1.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.1"></times><apply id="S3.T1.7.7.1.m1.1.1.1.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.3.2.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.2">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.3.2.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.2.2">𝛽</ci><ci id="S3.T1.7.7.1.m1.1.1.1.3.2.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.2.3">𝑡</ci></apply><apply id="S3.T1.7.7.1.m1.1.1.1.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.3.3.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3">superscript</csymbol><apply id="S3.T1.7.7.1.m1.1.1.1.3.3.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.3.3.2.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.3.3.2.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3.2.2">𝒌</ci><ci id="S3.T1.7.7.1.m1.1.1.1.3.3.2.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3.2.3">𝑡</ci></apply><ci id="S3.T1.7.7.1.m1.1.1.1.3.3.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.3.3">𝑇</ci></apply><apply id="S3.T1.7.7.1.m1.1.1.1.3.4.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.4"><csymbol cd="ambiguous" id="S3.T1.7.7.1.m1.1.1.1.3.4.1.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.4">subscript</csymbol><ci id="S3.T1.7.7.1.m1.1.1.1.3.4.2.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.4.2">𝒗</ci><ci id="S3.T1.7.7.1.m1.1.1.1.3.4.3.cmml" xref="S3.T1.7.7.1.m1.1.1.1.3.4.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.1c">\bm{M}_{t}=(\bm{I}-\bm{k}_{t}^{T}\bm{k}_{t})\bm{M}_{t-1}+\beta_{t}\bm{k}_{t}^{%
T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = ( bold_italic_I - bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.2">G-DeltaNet</th>
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.1"><math alttext="\bm{M}_{t}=\alpha_{t}(\bm{I}-\bm{k}_{t}^{T}\bm{k}_{t})\bm{M}_{t-1}+\beta_{t}%
\bm{k}_{t}^{T}\bm{v}_{t}" class="ltx_Math" display="inline" id="S3.T1.8.8.1.m1.1"><semantics id="S3.T1.8.8.1.m1.1a"><mrow id="S3.T1.8.8.1.m1.1.1" xref="S3.T1.8.8.1.m1.1.1.cmml"><msub id="S3.T1.8.8.1.m1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.3.2" xref="S3.T1.8.8.1.m1.1.1.3.2.cmml">𝑴</mi><mi id="S3.T1.8.8.1.m1.1.1.3.3" xref="S3.T1.8.8.1.m1.1.1.3.3.cmml">t</mi></msub><mo id="S3.T1.8.8.1.m1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.2.cmml">=</mo><mrow id="S3.T1.8.8.1.m1.1.1.1" xref="S3.T1.8.8.1.m1.1.1.1.cmml"><mrow id="S3.T1.8.8.1.m1.1.1.1.1" xref="S3.T1.8.8.1.m1.1.1.1.1.cmml"><msub id="S3.T1.8.8.1.m1.1.1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.1.1.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.3.2" xref="S3.T1.8.8.1.m1.1.1.1.1.3.2.cmml">α</mi><mi id="S3.T1.8.8.1.m1.1.1.1.1.3.3" xref="S3.T1.8.8.1.m1.1.1.1.1.3.3.cmml">t</mi></msub><mo id="S3.T1.8.8.1.m1.1.1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.8.8.1.m1.1.1.1.1.1.1" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S3.T1.8.8.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.2.cmml">𝑰</mi><mo id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.1" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.cmml"><msubsup id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.2" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.2.cmml">𝒌</mi><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.3" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.3.cmml">t</mi><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.3" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.3.cmml">T</mi></msubsup><mo id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.1" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.1.cmml">⁢</mo><msub id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.2" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.2.cmml">𝒌</mi><mi id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.3" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.3.cmml">t</mi></msub></mrow></mrow><mo id="S3.T1.8.8.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.8.8.1.m1.1.1.1.1.2a" xref="S3.T1.8.8.1.m1.1.1.1.1.2.cmml">⁢</mo><msub id="S3.T1.8.8.1.m1.1.1.1.1.4" xref="S3.T1.8.8.1.m1.1.1.1.1.4.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.4.2" xref="S3.T1.8.8.1.m1.1.1.1.1.4.2.cmml">𝑴</mi><mrow id="S3.T1.8.8.1.m1.1.1.1.1.4.3" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.1.4.3.2" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.2.cmml">t</mi><mo id="S3.T1.8.8.1.m1.1.1.1.1.4.3.1" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.1.cmml">−</mo><mn id="S3.T1.8.8.1.m1.1.1.1.1.4.3.3" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.8.8.1.m1.1.1.1.2" xref="S3.T1.8.8.1.m1.1.1.1.2.cmml">+</mo><mrow id="S3.T1.8.8.1.m1.1.1.1.3" xref="S3.T1.8.8.1.m1.1.1.1.3.cmml"><msub id="S3.T1.8.8.1.m1.1.1.1.3.2" xref="S3.T1.8.8.1.m1.1.1.1.3.2.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.3.2.2" xref="S3.T1.8.8.1.m1.1.1.1.3.2.2.cmml">β</mi><mi id="S3.T1.8.8.1.m1.1.1.1.3.2.3" xref="S3.T1.8.8.1.m1.1.1.1.3.2.3.cmml">t</mi></msub><mo id="S3.T1.8.8.1.m1.1.1.1.3.1" xref="S3.T1.8.8.1.m1.1.1.1.3.1.cmml">⁢</mo><msubsup id="S3.T1.8.8.1.m1.1.1.1.3.3" xref="S3.T1.8.8.1.m1.1.1.1.3.3.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.3.3.2.2" xref="S3.T1.8.8.1.m1.1.1.1.3.3.2.2.cmml">𝒌</mi><mi id="S3.T1.8.8.1.m1.1.1.1.3.3.2.3" xref="S3.T1.8.8.1.m1.1.1.1.3.3.2.3.cmml">t</mi><mi id="S3.T1.8.8.1.m1.1.1.1.3.3.3" xref="S3.T1.8.8.1.m1.1.1.1.3.3.3.cmml">T</mi></msubsup><mo id="S3.T1.8.8.1.m1.1.1.1.3.1a" xref="S3.T1.8.8.1.m1.1.1.1.3.1.cmml">⁢</mo><msub id="S3.T1.8.8.1.m1.1.1.1.3.4" xref="S3.T1.8.8.1.m1.1.1.1.3.4.cmml"><mi id="S3.T1.8.8.1.m1.1.1.1.3.4.2" xref="S3.T1.8.8.1.m1.1.1.1.3.4.2.cmml">𝒗</mi><mi id="S3.T1.8.8.1.m1.1.1.1.3.4.3" xref="S3.T1.8.8.1.m1.1.1.1.3.4.3.cmml">t</mi></msub></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.1.m1.1b"><apply id="S3.T1.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1"><eq id="S3.T1.8.8.1.m1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.2"></eq><apply id="S3.T1.8.8.1.m1.1.1.3.cmml" xref="S3.T1.8.8.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.3">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.3.2">𝑴</ci><ci id="S3.T1.8.8.1.m1.1.1.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.3.3">𝑡</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1"><plus id="S3.T1.8.8.1.m1.1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.2"></plus><apply id="S3.T1.8.8.1.m1.1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1"><times id="S3.T1.8.8.1.m1.1.1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.2"></times><apply id="S3.T1.8.8.1.m1.1.1.1.1.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.1.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.3">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.1.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.3.2">𝛼</ci><ci id="S3.T1.8.8.1.m1.1.1.1.1.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.3.3">𝑡</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1"><minus id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.1"></minus><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.2">𝑰</ci><apply id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3"><times id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.1"></times><apply id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2">superscript</csymbol><apply id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.2">𝒌</ci><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.2.3">𝑡</ci></apply><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.2.3">𝑇</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.2">𝒌</ci><ci id="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.1.1.1.3.3.3">𝑡</ci></apply></apply></apply><apply id="S3.T1.8.8.1.m1.1.1.1.1.4.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.1.4.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.1.4.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4.2">𝑴</ci><apply id="S3.T1.8.8.1.m1.1.1.1.1.4.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3"><minus id="S3.T1.8.8.1.m1.1.1.1.1.4.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.1"></minus><ci id="S3.T1.8.8.1.m1.1.1.1.1.4.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.2">𝑡</ci><cn id="S3.T1.8.8.1.m1.1.1.1.1.4.3.3.cmml" type="integer" xref="S3.T1.8.8.1.m1.1.1.1.1.4.3.3">1</cn></apply></apply></apply><apply id="S3.T1.8.8.1.m1.1.1.1.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3"><times id="S3.T1.8.8.1.m1.1.1.1.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.1"></times><apply id="S3.T1.8.8.1.m1.1.1.1.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.2"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.3.2.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.2">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.3.2.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.2.2">𝛽</ci><ci id="S3.T1.8.8.1.m1.1.1.1.3.2.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.2.3">𝑡</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.1.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.3.3.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3">superscript</csymbol><apply id="S3.T1.8.8.1.m1.1.1.1.3.3.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.3.3.2.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.3.3.2.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3.2.2">𝒌</ci><ci id="S3.T1.8.8.1.m1.1.1.1.3.3.2.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3.2.3">𝑡</ci></apply><ci id="S3.T1.8.8.1.m1.1.1.1.3.3.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.3.3">𝑇</ci></apply><apply id="S3.T1.8.8.1.m1.1.1.1.3.4.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.4"><csymbol cd="ambiguous" id="S3.T1.8.8.1.m1.1.1.1.3.4.1.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.4">subscript</csymbol><ci id="S3.T1.8.8.1.m1.1.1.1.3.4.2.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.4.2">𝒗</ci><ci id="S3.T1.8.8.1.m1.1.1.1.3.4.3.cmml" xref="S3.T1.8.8.1.m1.1.1.1.3.4.3">𝑡</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.1.m1.1c">\bm{M}_{t}=\alpha_{t}(\bm{I}-\bm{k}_{t}^{T}\bm{k}_{t})\bm{M}_{t-1}+\beta_{t}%
\bm{k}_{t}^{T}\bm{v}_{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.1.m1.1d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ( bold_italic_I - bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_T end_POSTSUPERSCRIPT bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.9.2">TTT</th>
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.1"><math alttext="\bm{M}_{t}=\bm{M}_{t-1}+\beta_{t}\nabla l(\bm{M}_{t-1};\bm{k}_{t},\bm{v}_{t})" class="ltx_Math" display="inline" id="S3.T1.9.9.1.m1.3"><semantics id="S3.T1.9.9.1.m1.3a"><mrow id="S3.T1.9.9.1.m1.3.3" xref="S3.T1.9.9.1.m1.3.3.cmml"><msub id="S3.T1.9.9.1.m1.3.3.5" xref="S3.T1.9.9.1.m1.3.3.5.cmml"><mi id="S3.T1.9.9.1.m1.3.3.5.2" xref="S3.T1.9.9.1.m1.3.3.5.2.cmml">𝑴</mi><mi id="S3.T1.9.9.1.m1.3.3.5.3" xref="S3.T1.9.9.1.m1.3.3.5.3.cmml">t</mi></msub><mo id="S3.T1.9.9.1.m1.3.3.4" xref="S3.T1.9.9.1.m1.3.3.4.cmml">=</mo><mrow id="S3.T1.9.9.1.m1.3.3.3" xref="S3.T1.9.9.1.m1.3.3.3.cmml"><msub id="S3.T1.9.9.1.m1.3.3.3.5" xref="S3.T1.9.9.1.m1.3.3.3.5.cmml"><mi id="S3.T1.9.9.1.m1.3.3.3.5.2" xref="S3.T1.9.9.1.m1.3.3.3.5.2.cmml">𝑴</mi><mrow id="S3.T1.9.9.1.m1.3.3.3.5.3" xref="S3.T1.9.9.1.m1.3.3.3.5.3.cmml"><mi id="S3.T1.9.9.1.m1.3.3.3.5.3.2" xref="S3.T1.9.9.1.m1.3.3.3.5.3.2.cmml">t</mi><mo id="S3.T1.9.9.1.m1.3.3.3.5.3.1" xref="S3.T1.9.9.1.m1.3.3.3.5.3.1.cmml">−</mo><mn id="S3.T1.9.9.1.m1.3.3.3.5.3.3" xref="S3.T1.9.9.1.m1.3.3.3.5.3.3.cmml">1</mn></mrow></msub><mo id="S3.T1.9.9.1.m1.3.3.3.4" xref="S3.T1.9.9.1.m1.3.3.3.4.cmml">+</mo><mrow id="S3.T1.9.9.1.m1.3.3.3.3" xref="S3.T1.9.9.1.m1.3.3.3.3.cmml"><msub id="S3.T1.9.9.1.m1.3.3.3.3.5" xref="S3.T1.9.9.1.m1.3.3.3.3.5.cmml"><mi id="S3.T1.9.9.1.m1.3.3.3.3.5.2" xref="S3.T1.9.9.1.m1.3.3.3.3.5.2.cmml">β</mi><mi id="S3.T1.9.9.1.m1.3.3.3.3.5.3" xref="S3.T1.9.9.1.m1.3.3.3.3.5.3.cmml">t</mi></msub><mo id="S3.T1.9.9.1.m1.3.3.3.3.4" lspace="0.167em" xref="S3.T1.9.9.1.m1.3.3.3.3.4.cmml">⁢</mo><mrow id="S3.T1.9.9.1.m1.3.3.3.3.6" xref="S3.T1.9.9.1.m1.3.3.3.3.6.cmml"><mo id="S3.T1.9.9.1.m1.3.3.3.3.6.1" rspace="0.167em" xref="S3.T1.9.9.1.m1.3.3.3.3.6.1.cmml">∇</mo><mi id="S3.T1.9.9.1.m1.3.3.3.3.6.2" xref="S3.T1.9.9.1.m1.3.3.3.3.6.2.cmml">l</mi></mrow><mo id="S3.T1.9.9.1.m1.3.3.3.3.4a" xref="S3.T1.9.9.1.m1.3.3.3.3.4.cmml">⁢</mo><mrow id="S3.T1.9.9.1.m1.3.3.3.3.3.3" xref="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml"><mo id="S3.T1.9.9.1.m1.3.3.3.3.3.3.4" stretchy="false" xref="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml">(</mo><msub id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.2.cmml">𝑴</mi><mrow id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.2" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.2.cmml">t</mi><mo id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.1" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.1.cmml">−</mo><mn id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.3" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.3.cmml">1</mn></mrow></msub><mo id="S3.T1.9.9.1.m1.3.3.3.3.3.3.5" xref="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml">;</mo><msub id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.cmml"><mi id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.2" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.2.cmml">𝒌</mi><mi id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.3" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.3.cmml">t</mi></msub><mo id="S3.T1.9.9.1.m1.3.3.3.3.3.3.6" xref="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml">,</mo><msub id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.cmml"><mi id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.2" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.2.cmml">𝒗</mi><mi id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.3" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.3.cmml">t</mi></msub><mo id="S3.T1.9.9.1.m1.3.3.3.3.3.3.7" stretchy="false" xref="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml">)</mo></mrow></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.1.m1.3b"><apply id="S3.T1.9.9.1.m1.3.3.cmml" xref="S3.T1.9.9.1.m1.3.3"><eq id="S3.T1.9.9.1.m1.3.3.4.cmml" xref="S3.T1.9.9.1.m1.3.3.4"></eq><apply id="S3.T1.9.9.1.m1.3.3.5.cmml" xref="S3.T1.9.9.1.m1.3.3.5"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.3.3.5.1.cmml" xref="S3.T1.9.9.1.m1.3.3.5">subscript</csymbol><ci id="S3.T1.9.9.1.m1.3.3.5.2.cmml" xref="S3.T1.9.9.1.m1.3.3.5.2">𝑴</ci><ci id="S3.T1.9.9.1.m1.3.3.5.3.cmml" xref="S3.T1.9.9.1.m1.3.3.5.3">𝑡</ci></apply><apply id="S3.T1.9.9.1.m1.3.3.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3"><plus id="S3.T1.9.9.1.m1.3.3.3.4.cmml" xref="S3.T1.9.9.1.m1.3.3.3.4"></plus><apply id="S3.T1.9.9.1.m1.3.3.3.5.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.3.3.3.5.1.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5">subscript</csymbol><ci id="S3.T1.9.9.1.m1.3.3.3.5.2.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5.2">𝑴</ci><apply id="S3.T1.9.9.1.m1.3.3.3.5.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5.3"><minus id="S3.T1.9.9.1.m1.3.3.3.5.3.1.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5.3.1"></minus><ci id="S3.T1.9.9.1.m1.3.3.3.5.3.2.cmml" xref="S3.T1.9.9.1.m1.3.3.3.5.3.2">𝑡</ci><cn id="S3.T1.9.9.1.m1.3.3.3.5.3.3.cmml" type="integer" xref="S3.T1.9.9.1.m1.3.3.3.5.3.3">1</cn></apply></apply><apply id="S3.T1.9.9.1.m1.3.3.3.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3"><times id="S3.T1.9.9.1.m1.3.3.3.3.4.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.4"></times><apply id="S3.T1.9.9.1.m1.3.3.3.3.5.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.5"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.3.3.3.3.5.1.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.5">subscript</csymbol><ci id="S3.T1.9.9.1.m1.3.3.3.3.5.2.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.5.2">𝛽</ci><ci id="S3.T1.9.9.1.m1.3.3.3.3.5.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.5.3">𝑡</ci></apply><apply id="S3.T1.9.9.1.m1.3.3.3.3.6.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.6"><ci id="S3.T1.9.9.1.m1.3.3.3.3.6.1.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.6.1">∇</ci><ci id="S3.T1.9.9.1.m1.3.3.3.3.6.2.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.6.2">𝑙</ci></apply><list id="S3.T1.9.9.1.m1.3.3.3.3.3.4.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3"><apply id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.2">𝑴</ci><apply id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3"><minus id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.1"></minus><ci id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.2">𝑡</ci><cn id="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.3.cmml" type="integer" xref="S3.T1.9.9.1.m1.1.1.1.1.1.1.1.3.3">1</cn></apply></apply><apply id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.cmml" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.1.cmml" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2">subscript</csymbol><ci id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.2.cmml" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.2">𝒌</ci><ci id="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.3.cmml" xref="S3.T1.9.9.1.m1.2.2.2.2.2.2.2.3">𝑡</ci></apply><apply id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3"><csymbol cd="ambiguous" id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.1.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3">subscript</csymbol><ci id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.2.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.2">𝒗</ci><ci id="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.3.cmml" xref="S3.T1.9.9.1.m1.3.3.3.3.3.3.3.3">𝑡</ci></apply></list></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.1.m1.3c">\bm{M}_{t}=\bm{M}_{t-1}+\beta_{t}\nabla l(\bm{M}_{t-1};\bm{k}_{t},\bm{v}_{t})</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.1.m1.3d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ∇ italic_l ( bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT ; bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.10.10.2">Titan</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.10.10.1"><math alttext="\bm{M}_{t}=\alpha_{t}\bm{M}_{t-1}+\beta_{t}\nabla l(\bm{M}_{t-1};\bm{k}_{t},%
\bm{v}_{t})" class="ltx_Math" display="inline" id="S3.T1.10.10.1.m1.3"><semantics id="S3.T1.10.10.1.m1.3a"><mrow id="S3.T1.10.10.1.m1.3.3" xref="S3.T1.10.10.1.m1.3.3.cmml"><msub id="S3.T1.10.10.1.m1.3.3.5" xref="S3.T1.10.10.1.m1.3.3.5.cmml"><mi id="S3.T1.10.10.1.m1.3.3.5.2" xref="S3.T1.10.10.1.m1.3.3.5.2.cmml">𝑴</mi><mi id="S3.T1.10.10.1.m1.3.3.5.3" xref="S3.T1.10.10.1.m1.3.3.5.3.cmml">t</mi></msub><mo id="S3.T1.10.10.1.m1.3.3.4" xref="S3.T1.10.10.1.m1.3.3.4.cmml">=</mo><mrow id="S3.T1.10.10.1.m1.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.cmml"><mrow id="S3.T1.10.10.1.m1.3.3.3.5" xref="S3.T1.10.10.1.m1.3.3.3.5.cmml"><msub id="S3.T1.10.10.1.m1.3.3.3.5.2" xref="S3.T1.10.10.1.m1.3.3.3.5.2.cmml"><mi id="S3.T1.10.10.1.m1.3.3.3.5.2.2" xref="S3.T1.10.10.1.m1.3.3.3.5.2.2.cmml">α</mi><mi id="S3.T1.10.10.1.m1.3.3.3.5.2.3" xref="S3.T1.10.10.1.m1.3.3.3.5.2.3.cmml">t</mi></msub><mo id="S3.T1.10.10.1.m1.3.3.3.5.1" xref="S3.T1.10.10.1.m1.3.3.3.5.1.cmml">⁢</mo><msub id="S3.T1.10.10.1.m1.3.3.3.5.3" xref="S3.T1.10.10.1.m1.3.3.3.5.3.cmml"><mi id="S3.T1.10.10.1.m1.3.3.3.5.3.2" xref="S3.T1.10.10.1.m1.3.3.3.5.3.2.cmml">𝑴</mi><mrow id="S3.T1.10.10.1.m1.3.3.3.5.3.3" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.cmml"><mi id="S3.T1.10.10.1.m1.3.3.3.5.3.3.2" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.2.cmml">t</mi><mo id="S3.T1.10.10.1.m1.3.3.3.5.3.3.1" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.1.cmml">−</mo><mn id="S3.T1.10.10.1.m1.3.3.3.5.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.3.cmml">1</mn></mrow></msub></mrow><mo id="S3.T1.10.10.1.m1.3.3.3.4" xref="S3.T1.10.10.1.m1.3.3.3.4.cmml">+</mo><mrow id="S3.T1.10.10.1.m1.3.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.3.cmml"><msub id="S3.T1.10.10.1.m1.3.3.3.3.5" xref="S3.T1.10.10.1.m1.3.3.3.3.5.cmml"><mi id="S3.T1.10.10.1.m1.3.3.3.3.5.2" xref="S3.T1.10.10.1.m1.3.3.3.3.5.2.cmml">β</mi><mi id="S3.T1.10.10.1.m1.3.3.3.3.5.3" xref="S3.T1.10.10.1.m1.3.3.3.3.5.3.cmml">t</mi></msub><mo id="S3.T1.10.10.1.m1.3.3.3.3.4" lspace="0.167em" xref="S3.T1.10.10.1.m1.3.3.3.3.4.cmml">⁢</mo><mrow id="S3.T1.10.10.1.m1.3.3.3.3.6" xref="S3.T1.10.10.1.m1.3.3.3.3.6.cmml"><mo id="S3.T1.10.10.1.m1.3.3.3.3.6.1" rspace="0.167em" xref="S3.T1.10.10.1.m1.3.3.3.3.6.1.cmml">∇</mo><mi id="S3.T1.10.10.1.m1.3.3.3.3.6.2" xref="S3.T1.10.10.1.m1.3.3.3.3.6.2.cmml">l</mi></mrow><mo id="S3.T1.10.10.1.m1.3.3.3.3.4a" xref="S3.T1.10.10.1.m1.3.3.3.3.4.cmml">⁢</mo><mrow id="S3.T1.10.10.1.m1.3.3.3.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml"><mo id="S3.T1.10.10.1.m1.3.3.3.3.3.3.4" stretchy="false" xref="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml">(</mo><msub id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.cmml"><mi id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.2" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.2.cmml">𝑴</mi><mrow id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.cmml"><mi id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.2" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.2.cmml">t</mi><mo id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.1" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.1.cmml">−</mo><mn id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.3" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.3.cmml">1</mn></mrow></msub><mo id="S3.T1.10.10.1.m1.3.3.3.3.3.3.5" xref="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml">;</mo><msub id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.cmml"><mi id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.2" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.2.cmml">𝒌</mi><mi id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.3" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.3.cmml">t</mi></msub><mo id="S3.T1.10.10.1.m1.3.3.3.3.3.3.6" xref="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml">,</mo><msub id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.cmml"><mi id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.2" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.2.cmml">𝒗</mi><mi id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.3" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.3.cmml">t</mi></msub><mo id="S3.T1.10.10.1.m1.3.3.3.3.3.3.7" stretchy="false" xref="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml">)</mo></mrow></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.1.m1.3b"><apply id="S3.T1.10.10.1.m1.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3"><eq id="S3.T1.10.10.1.m1.3.3.4.cmml" xref="S3.T1.10.10.1.m1.3.3.4"></eq><apply id="S3.T1.10.10.1.m1.3.3.5.cmml" xref="S3.T1.10.10.1.m1.3.3.5"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.3.3.5.1.cmml" xref="S3.T1.10.10.1.m1.3.3.5">subscript</csymbol><ci id="S3.T1.10.10.1.m1.3.3.5.2.cmml" xref="S3.T1.10.10.1.m1.3.3.5.2">𝑴</ci><ci id="S3.T1.10.10.1.m1.3.3.5.3.cmml" xref="S3.T1.10.10.1.m1.3.3.5.3">𝑡</ci></apply><apply id="S3.T1.10.10.1.m1.3.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3"><plus id="S3.T1.10.10.1.m1.3.3.3.4.cmml" xref="S3.T1.10.10.1.m1.3.3.3.4"></plus><apply id="S3.T1.10.10.1.m1.3.3.3.5.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5"><times id="S3.T1.10.10.1.m1.3.3.3.5.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.1"></times><apply id="S3.T1.10.10.1.m1.3.3.3.5.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.2"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.3.3.3.5.2.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.2">subscript</csymbol><ci id="S3.T1.10.10.1.m1.3.3.3.5.2.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.2.2">𝛼</ci><ci id="S3.T1.10.10.1.m1.3.3.3.5.2.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.2.3">𝑡</ci></apply><apply id="S3.T1.10.10.1.m1.3.3.3.5.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.3.3.3.5.3.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3">subscript</csymbol><ci id="S3.T1.10.10.1.m1.3.3.3.5.3.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3.2">𝑴</ci><apply id="S3.T1.10.10.1.m1.3.3.3.5.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3"><minus id="S3.T1.10.10.1.m1.3.3.3.5.3.3.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.1"></minus><ci id="S3.T1.10.10.1.m1.3.3.3.5.3.3.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.2">𝑡</ci><cn id="S3.T1.10.10.1.m1.3.3.3.5.3.3.3.cmml" type="integer" xref="S3.T1.10.10.1.m1.3.3.3.5.3.3.3">1</cn></apply></apply></apply><apply id="S3.T1.10.10.1.m1.3.3.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3"><times id="S3.T1.10.10.1.m1.3.3.3.3.4.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.4"></times><apply id="S3.T1.10.10.1.m1.3.3.3.3.5.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.5"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.3.3.3.3.5.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.5">subscript</csymbol><ci id="S3.T1.10.10.1.m1.3.3.3.3.5.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.5.2">𝛽</ci><ci id="S3.T1.10.10.1.m1.3.3.3.3.5.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.5.3">𝑡</ci></apply><apply id="S3.T1.10.10.1.m1.3.3.3.3.6.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.6"><ci id="S3.T1.10.10.1.m1.3.3.3.3.6.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.6.1">∇</ci><ci id="S3.T1.10.10.1.m1.3.3.3.3.6.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.6.2">𝑙</ci></apply><list id="S3.T1.10.10.1.m1.3.3.3.3.3.4.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3"><apply id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1">subscript</csymbol><ci id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.2.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.2">𝑴</ci><apply id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3"><minus id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.1.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.1"></minus><ci id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.2.cmml" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.2">𝑡</ci><cn id="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.3.cmml" type="integer" xref="S3.T1.10.10.1.m1.1.1.1.1.1.1.1.3.3">1</cn></apply></apply><apply id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.cmml" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.1.cmml" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2">subscript</csymbol><ci id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.2.cmml" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.2">𝒌</ci><ci id="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.3.cmml" xref="S3.T1.10.10.1.m1.2.2.2.2.2.2.2.3">𝑡</ci></apply><apply id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3"><csymbol cd="ambiguous" id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.1.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3">subscript</csymbol><ci id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.2.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.2">𝒗</ci><ci id="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.3.cmml" xref="S3.T1.10.10.1.m1.3.3.3.3.3.3.3.3">𝑡</ci></apply></list></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.1.m1.3c">\bm{M}_{t}=\alpha_{t}\bm{M}_{t-1}+\beta_{t}\nabla l(\bm{M}_{t-1};\bm{k}_{t},%
\bm{v}_{t})</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.1.m1.3d">bold_italic_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT + italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ∇ italic_l ( bold_italic_M start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT ; bold_italic_k start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , bold_italic_v start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT )</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists various memory update rules used in different linear sequence models, showing how they can be interpreted within a recurrent model framework.  Each rule describes how the current memory state (M<sub>t</sub>) is updated based on the previous state (M<sub>t-1</sub>), key (k<sub>t</sub>), and value (v<sub>t</sub>) vectors.  The parameters α<sub>t</sub> and β<sub>t</sub> are data-dependent scalars (between 0 and 1),  **a**<sub>t</sub> is a data-dependent vector, and γ is a data-independent constant. This clarifies the relationship between seemingly different linear models and their underlying memory update mechanisms.
> <details>
> <summary>read the caption</summary>
> Table 1: Memory Update Rules. We demonstrate that several current linear sequence models can be viewed as recurrent models in terms of memory updates, where αt,βt∈(0,1)subscript𝛼𝑡subscript𝛽𝑡01\alpha_{t},\beta_{t}\in(0,1)italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ∈ ( 0 , 1 ) are data-dependent scaler, 𝒂tsubscript𝒂𝑡\bm{a}_{t}bold_italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT is data-dependent vector, and γ𝛾\gammaitalic_γ is a data-independent constant.
> </details>





### In-depth insights


#### MoM: Interference
The Mixture-of-Memories (MoM) architecture tackles the challenge of **memory interference** in sequence modeling. Traditional linear models compress the entire input into a single memory state, leading to information loss during recall-intensive tasks. **Inspired by neuroscience**, MoM utilizes multiple independent memory states, with a router network directing input tokens to specific memories. This greatly expands the **overall memory capacity** while minimizing interference. Tokens that introduce new or orthogonal information are directed to separate memory states, **preserving diverse information** without overwriting existing content. By isolating memory updates, MoM concurrently manages distinct types of information, **improving performance on tasks that require extensive contextual understanding**. The MoM model effectively narrows the performance gap with Transformer models.

#### Linear w/MoM
The concept of "Linear w/MoM" seems to be a novel approach to combine the efficiency of **linear sequence models** with the enhanced memory capabilities of the **Mixture-of-Memories (MoM)** architecture. Traditional linear models often struggle with recall-intensive tasks due to their limited capacity to retain long-range dependencies. "Linear w/MoM" likely addresses this by leveraging multiple independent memory states, allowing the model to capture and retain diverse aspects of the input sequence without the interference that plagues single-memory linear models. The integration of a routing mechanism is also critical, directing input tokens to the most relevant memory states. This selective activation ensures that each memory specializes in encoding specific types of information. By mixing the memories through weighed summation, the model is better able to retrieve info.

#### Exp.: LongBench
While "Exp.: LongBench" isn't explicitly present, it's reasonable to infer its purpose: **evaluating performance on tasks requiring long-range dependency handling.** The 'LongBench' benchmark (Bai et al., 2024) measures a model's ability to process extended contexts, crucial for tasks like summarization and code completion. **Models with limited memory often struggle**, making 'LongBench' a critical test. The paper likely presents results showing the model's performance across various LongBench categories (summarization, few-shot, code), highlighting its capacity to capture and utilize information over long input sequences. **It demonstrates whether proposed architecture can effectively overcome the limitations of existing methods and maintain performance with increasing sequence length.**

#### Memory Routing
The research paper introduces a novel approach to sequence modeling called Mixture-of-Memories (MoM), drawing inspiration from neuroscience to address the limitations of existing linear sequence models. The core idea is to utilize multiple independent memory states, akin to how the brain handles multi-item memory, to mitigate **memory interference**. A key component for achieving this is a **router network** which directs input tokens to specific memory states, ensuring that relevant information is stored and retrieved effectively. The router acts as an information bottleneck, guiding each token to the most appropriate memory. This approach allows MoM to **increase memory capacity** and maintain diverse information without overwriting. This memory routing mechanism helps MoM perform well on recall-intensive tasks.

#### Neuro-Inspired
The paper's title, “MoM: Linear Sequence Modeling with Mixture-of-Memories,” immediately suggests a neuro-inspired approach. The mention of "memories" directly connects to cognitive functions of the brain. The abstract explicitly states inspiration from neuroscience, particularly the brain's ability to maintain long-term memory while reducing "memory interference." The Mixture-of-Memories architecture mirrors how the brain segregates and processes information. This is evident in the hippocampus, where theta-gamma oscillations manage multi-item memory. Each token gets routed to specific memory states, mimicking specialized neural circuits. The design to mitigate memory interference reflects an understanding of how the brain avoids overwriting or corrupting stored information. The approach mirrors how the brain handles complexity and information overload. This is by dividing tasks among specialized areas or circuits, ensuring that each piece of information is handled efficiently without causing interference with other processes. The explicit reference to theta-gamma oscillations indicates a sophisticated understanding of neural coding and memory consolidation. The MoM architecture is designed to emulate the brain's efficient memory management system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13685/x2.png)

> 🔼 This figure compares the inference time and GPU memory usage of MoM and Transformer++ with flash attention when generating 1K tokens at various sequence lengths.  It visually demonstrates the linear time and space complexity of MoM compared to the quadratic complexity of Transformer++, highlighting MoM's efficiency advantage, especially for longer sequences.
> <details>
> <summary>read the caption</summary>
> Figure 2: Efficiency of MoM. We demonstrate the inference time and GPU memory consumption required to generate 1K tokens at specific sequence lengths.
> </details>



![](https://arxiv.org/html/2502.13685/extracted/6216874/figs/loss.png)

> 🔼 This figure displays the training loss curves for 340 million parameter models trained on 15 billion tokens.  A fixed random seed of 42 was used to ensure reproducibility. The graph allows for a comparison of training loss across different models, showing the rate at which each model's loss decreases over the course of training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training Loss. Loss curves for training 340M models on 15B tokens with a fixed random seed of 42.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS2.SSS2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.1.1">Scale</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.3.1">FDA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.4.1">SWDE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.5"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.5.1">SQUAD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.6"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.6.1">NQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.7"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.7.1">TriviaQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.8"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.8.1">Drop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS2.SSS2.5.5.6.1.9"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.6.1.9.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.7.1" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.1" rowspan="4" style="background-color:#FFFFFF;">
<span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.1.1" style="background-color:#FFFFFF;"><span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.5.5.7.1.1.1.1">340M Params</span> </span><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.1.2" style="background-color:#FFFFFF;">
<span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.5.5.7.1.1.2.1">15B Tokens</span>
<span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.5.5.7.1.1.2.2">L=24, d=1024</span></span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.2"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.2.1" style="background-color:#D9D9D9;">Transformer++</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.3"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.3.1" style="background-color:#D9D9D9;">46.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.4"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.4.1" style="background-color:#D9D9D9;">25.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.5"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.5.1" style="background-color:#D9D9D9;">33.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.6"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.6.1" style="background-color:#D9D9D9;">18.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.7"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.7.1" style="background-color:#D9D9D9;">45.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.8"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.8.1" style="background-color:#D9D9D9;">20.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.5.5.7.1.9"><span class="ltx_text" id="S3.SS2.SSS2.5.5.7.1.9.1" style="background-color:#D9D9D9;">31.70</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.8.2.1">RetNet</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.2">5.90</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.3">9.28</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.4">22.41</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.5">6.91</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.6">40.05</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.7">18.59</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.8.2.8">17.19</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.9.3.1">HGRN2</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.2">11.53</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.3">17.34</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.4">24.08</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.5">12.67</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.6">43.84</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.7">17.35</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.9.3.8">21.14</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.10.4.1">GLA</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.2">11.26</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.3">16.78</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.4">27.85</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.5">12.77</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.6">43.90</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.7">17.68</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.10.4.8">21.71</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.11.5">
<th class="ltx_td ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.11.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.11.5.2">GSA</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.3">6.36</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.4">16.87</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.5">21.90</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.6">14.60</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.7">42.18</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.8">16.72</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.11.5.9">19.77</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.12.6">
<th class="ltx_td ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.12.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.12.6.2">Gated DeltaNet</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.3">20.53</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.4">23.24</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.5">28.55</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.6"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.12.6.6.1">14.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.7"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.12.6.7.1">44.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.8">16.48</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.12.6.9">24.78</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.13.7">
<th class="ltx_td ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.13.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.13.7.2">MoM</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.3"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.13.7.3.1">30.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.4"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.13.7.4.1">26.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.5"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.13.7.5.1">29.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.6">13.84</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.7">44.79</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.8"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.13.7.8.1">20.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.13.7.9"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.13.7.9.1">27.59</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.1.1.1" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_left ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS2.1.1.1.2" rowspan="4" style="background-color:#FFFFFF;">
<span class="ltx_text" id="S3.SS2.SSS2.1.1.1.2.1" style="background-color:#FFFFFF;"><span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.1.1.1.2.1.1">1.3B Params</span> </span><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.2.2" style="background-color:#FFFFFF;">
<span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.1.1.1.2.2.1">100B Tokens</span>
<span class="ltx_text ltx_font_italic" id="S3.SS2.SSS2.1.1.1.2.2.2">L=24, d=2048</span></span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.SS2.SSS2.1.1.1.1"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.1.1" style="background-color:#D9D9D9;">Transformer++<sup class="ltx_sup" id="S3.SS2.SSS2.1.1.1.1.1.1"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.1.1.1.1" style="background-color:#D9D9D9;">†</span></sup></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.3"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.3.1" style="background-color:#D9D9D9;">44.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.4"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.4.1" style="background-color:#D9D9D9;">32.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.5"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.5.1" style="background-color:#D9D9D9;">42.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.6"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.6.1" style="background-color:#D9D9D9;">24.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.7"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.7.1" style="background-color:#D9D9D9;">58.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.8"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.8.1" style="background-color:#D9D9D9;">21.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS2.SSS2.1.1.1.9"><span class="ltx_text" id="S3.SS2.SSS2.1.1.1.9.1" style="background-color:#D9D9D9;">37.31</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.2.2.2.1">RetNet<sup class="ltx_sup" id="S3.SS2.SSS2.2.2.2.1.1">†</sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.2">13.62</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.3">22.59</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.4">33.46</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.5">15.43</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.6">53.79</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.7">19.79</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.2.2.2.8">26.45</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.3.3.3.1">HGRN2<sup class="ltx_sup" id="S3.SS2.SSS2.3.3.3.1.1">†</sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.2">12.35</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.3">23.24</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.4">33.19</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.5">19.10</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.6">55.27</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.7">19.65</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.3.3.3.8">27.13</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.4.4.4.1">GLA<sup class="ltx_sup" id="S3.SS2.SSS2.4.4.4.1.1">†</sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.2">27.61</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.3">30.93</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.4">35.04</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.5">22.27</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.6">56.28</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.7">19.45</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.4.4.4.8">31.93</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.5">
<th class="ltx_td ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.5.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.5.1">GSA<sup class="ltx_sup" id="S3.SS2.SSS2.5.5.5.1.1">†</sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.3">23.25</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.4">32.80</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.5">35.57</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.6">22.96</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.7">57.05</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.8">20.65</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.5.9">32.05</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.14.8">
<th class="ltx_td ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.14.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.SS2.SSS2.5.5.14.8.2">Gated DeltaNet</th>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.3">30.25</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.4">27.65</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.5">34.06</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.6">23.22</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.7">58.23</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.8">20.36</td>
<td class="ltx_td ltx_align_center" id="S3.SS2.SSS2.5.5.14.8.9">32.30</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.SSS2.5.5.15.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.2">MoM</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.3"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.3.1">41.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.4"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.4.1">34.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.5"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.5.1">37.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.6"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.6.1">24.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.7"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.7.1">58.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.8"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.8.1">21.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS2.SSS2.5.5.15.9.9"><span class="ltx_text ltx_font_bold" id="S3.SS2.SSS2.5.5.15.9.9.1">36.04</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of several linear sequence models and Transformer models on six recall-intensive tasks.  The input sequences were truncated to a maximum length of 2000 tokens for all models.  The key finding is that the Mixture-of-Memories (MoM) model significantly outperforms all other linear models in terms of accuracy, achieving performance close to that of Transformer models, especially with the larger 1.3B parameter model.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on Recall-Intensive Tasks. All inputs are truncated to a maximum length of 2K tokens. MoM significantly outperforms all other linear models across both model sizes. In the 1.3B model, MoM even achieves performance very close to that of Transformer models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS3.18.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS3.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.13.13.13.14"><span class="ltx_text ltx_font_bold" id="S3.SS3.13.13.13.14.1">Scale</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.13.13.13.15"><span class="ltx_text ltx_font_bold" id="S3.SS3.13.13.13.15.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.1.1.1.1">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.1.1.1.1.1">
<tr class="ltx_tr" id="S3.SS3.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.1.1.1.1.1.2.1.1">Wiki.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.1.1.1.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.SS3.1.1.1.1.1.1.1.m1.1"><semantics id="S3.SS3.1.1.1.1.1.1.1.m1.1a"><mo id="S3.SS3.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.1.1.1.1.1.1.1.m1.1b"><ci id="S3.SS3.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.SS3.2.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.2.2.2.2.1">
<tr class="ltx_tr" id="S3.SS3.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.2.2.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.2.2.2.2.1.2.1.1">Lamb.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.2.2.2.2.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.SS3.2.2.2.2.1.1.1.m1.1"><semantics id="S3.SS3.2.2.2.2.1.1.1.m1.1a"><mo id="S3.SS3.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.2.2.2.2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.2.2.2.2.1.1.1.m1.1b"><ci id="S3.SS3.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.2.2.2.2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.2.2.2.2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.2.2.2.2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.3.3.3.3">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.3.3.3.3.1">
<tr class="ltx_tr" id="S3.SS3.3.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.3.3.3.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.3.3.3.3.1.2.1.1">ARC-e</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.3.3.3.3.1.1.1">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.3.3.3.3.1.1.1.m1.1"><semantics id="S3.SS3.3.3.3.3.1.1.1.m1.1a"><mo id="S3.SS3.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.3.3.3.3.1.1.1.m1.1b"><ci id="S3.SS3.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.5.5.5.5">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.5.5.5.5.2">
<tr class="ltx_tr" id="S3.SS3.5.5.5.5.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.5.5.5.5.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.5.5.5.5.2.3.1.1">ARC-c</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.5.5.5.5.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.5.5.5.5.2.2.2">
<math alttext="\mathrm{acc_{n}}" class="ltx_Math" display="inline" id="S3.SS3.4.4.4.4.1.1.1.m1.1"><semantics id="S3.SS3.4.4.4.4.1.1.1.m1.1a"><msub id="S3.SS3.4.4.4.4.1.1.1.m1.1.1" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.cmml"><mi id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2.cmml">acc</mi><mi id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3.cmml">n</mi></msub><annotation-xml encoding="MathML-Content" id="S3.SS3.4.4.4.4.1.1.1.m1.1b"><apply id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.1.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2">acc</ci><ci id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3">n</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.4.4.4.4.1.1.1.m1.1c">\mathrm{acc_{n}}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.4.4.4.4.1.1.1.m1.1d">roman_acc start_POSTSUBSCRIPT roman_n end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.5.5.5.5.2.2.2.m2.1"><semantics id="S3.SS3.5.5.5.5.2.2.2.m2.1a"><mo id="S3.SS3.5.5.5.5.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.5.5.5.5.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.5.5.5.5.2.2.2.m2.1b"><ci id="S3.SS3.5.5.5.5.2.2.2.m2.1.1.cmml" xref="S3.SS3.5.5.5.5.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.5.5.5.5.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.5.5.5.5.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.7.7.7.7">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.7.7.7.7.2">
<tr class="ltx_tr" id="S3.SS3.7.7.7.7.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.7.7.7.7.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.7.7.7.7.2.3.1.1">Hella.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.7.7.7.7.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.7.7.7.7.2.2.2">
<math alttext="\mathrm{acc_{n}}" class="ltx_Math" display="inline" id="S3.SS3.6.6.6.6.1.1.1.m1.1"><semantics id="S3.SS3.6.6.6.6.1.1.1.m1.1a"><msub id="S3.SS3.6.6.6.6.1.1.1.m1.1.1" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.cmml"><mi id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2.cmml">acc</mi><mi id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3.cmml">n</mi></msub><annotation-xml encoding="MathML-Content" id="S3.SS3.6.6.6.6.1.1.1.m1.1b"><apply id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.1.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2">acc</ci><ci id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3">n</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.6.6.6.6.1.1.1.m1.1c">\mathrm{acc_{n}}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.6.6.6.6.1.1.1.m1.1d">roman_acc start_POSTSUBSCRIPT roman_n end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.7.7.7.7.2.2.2.m2.1"><semantics id="S3.SS3.7.7.7.7.2.2.2.m2.1a"><mo id="S3.SS3.7.7.7.7.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.7.7.7.7.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.7.7.7.7.2.2.2.m2.1b"><ci id="S3.SS3.7.7.7.7.2.2.2.m2.1.1.cmml" xref="S3.SS3.7.7.7.7.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.7.7.7.7.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.7.7.7.7.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.9.9.9.9">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.9.9.9.9.2">
<tr class="ltx_tr" id="S3.SS3.9.9.9.9.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.9.9.9.9.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.9.9.9.9.2.3.1.1">Lamb.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.9.9.9.9.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.9.9.9.9.2.2.2">
<math alttext="\mathrm{acc}" class="ltx_Math" display="inline" id="S3.SS3.8.8.8.8.1.1.1.m1.1"><semantics id="S3.SS3.8.8.8.8.1.1.1.m1.1a"><mi id="S3.SS3.8.8.8.8.1.1.1.m1.1.1" xref="S3.SS3.8.8.8.8.1.1.1.m1.1.1.cmml">acc</mi><annotation-xml encoding="MathML-Content" id="S3.SS3.8.8.8.8.1.1.1.m1.1b"><ci id="S3.SS3.8.8.8.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.8.8.8.8.1.1.1.m1.1.1">acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.8.8.8.8.1.1.1.m1.1c">\mathrm{acc}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.8.8.8.8.1.1.1.m1.1d">roman_acc</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.9.9.9.9.2.2.2.m2.1"><semantics id="S3.SS3.9.9.9.9.2.2.2.m2.1a"><mo id="S3.SS3.9.9.9.9.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.9.9.9.9.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.9.9.9.9.2.2.2.m2.1b"><ci id="S3.SS3.9.9.9.9.2.2.2.m2.1.1.cmml" xref="S3.SS3.9.9.9.9.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.9.9.9.9.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.9.9.9.9.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.11.11.11.11">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.11.11.11.11.2">
<tr class="ltx_tr" id="S3.SS3.11.11.11.11.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.11.11.11.11.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.11.11.11.11.2.3.1.1">PIQA</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.11.11.11.11.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.11.11.11.11.2.2.2">
<math alttext="\mathrm{acc}" class="ltx_Math" display="inline" id="S3.SS3.10.10.10.10.1.1.1.m1.1"><semantics id="S3.SS3.10.10.10.10.1.1.1.m1.1a"><mi id="S3.SS3.10.10.10.10.1.1.1.m1.1.1" xref="S3.SS3.10.10.10.10.1.1.1.m1.1.1.cmml">acc</mi><annotation-xml encoding="MathML-Content" id="S3.SS3.10.10.10.10.1.1.1.m1.1b"><ci id="S3.SS3.10.10.10.10.1.1.1.m1.1.1.cmml" xref="S3.SS3.10.10.10.10.1.1.1.m1.1.1">acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.10.10.10.10.1.1.1.m1.1c">\mathrm{acc}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.10.10.10.10.1.1.1.m1.1d">roman_acc</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.11.11.11.11.2.2.2.m2.1"><semantics id="S3.SS3.11.11.11.11.2.2.2.m2.1a"><mo id="S3.SS3.11.11.11.11.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.11.11.11.11.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.11.11.11.11.2.2.2.m2.1b"><ci id="S3.SS3.11.11.11.11.2.2.2.m2.1.1.cmml" xref="S3.SS3.11.11.11.11.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.11.11.11.11.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.11.11.11.11.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.13.13.13.13">
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.13.13.13.13.2">
<tr class="ltx_tr" id="S3.SS3.13.13.13.13.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.13.13.13.13.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.13.13.13.13.2.3.1.1">Wino.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.13.13.13.13.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.13.13.13.13.2.2.2">
<math alttext="\mathrm{acc}" class="ltx_Math" display="inline" id="S3.SS3.12.12.12.12.1.1.1.m1.1"><semantics id="S3.SS3.12.12.12.12.1.1.1.m1.1a"><mi id="S3.SS3.12.12.12.12.1.1.1.m1.1.1" xref="S3.SS3.12.12.12.12.1.1.1.m1.1.1.cmml">acc</mi><annotation-xml encoding="MathML-Content" id="S3.SS3.12.12.12.12.1.1.1.m1.1b"><ci id="S3.SS3.12.12.12.12.1.1.1.m1.1.1.cmml" xref="S3.SS3.12.12.12.12.1.1.1.m1.1.1">acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.12.12.12.12.1.1.1.m1.1c">\mathrm{acc}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.12.12.12.12.1.1.1.m1.1d">roman_acc</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.13.13.13.13.2.2.2.m2.1"><semantics id="S3.SS3.13.13.13.13.2.2.2.m2.1a"><mo id="S3.SS3.13.13.13.13.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.13.13.13.13.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.13.13.13.13.2.2.2.m2.1b"><ci id="S3.SS3.13.13.13.13.2.2.2.m2.1.1.cmml" xref="S3.SS3.13.13.13.13.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.13.13.13.13.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.13.13.13.13.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.SS3.13.13.13.16"><span class="ltx_text ltx_font_bold" id="S3.SS3.13.13.13.16.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS3.18.18.19.1">
<td class="ltx_td ltx_align_left ltx_align_top ltx_border_t" id="S3.SS3.18.18.19.1.1" rowspan="4">
<span class="ltx_text" id="S3.SS3.18.18.19.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.SS3.18.18.19.1.1.1.1">340M Params</span> </span>
<span class="ltx_text ltx_font_italic" id="S3.SS3.18.18.19.1.1.2">15B Tokens</span>
<span class="ltx_text ltx_font_italic" id="S3.SS3.18.18.19.1.1.3">L=24, d=1024</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS3.18.18.19.1.2">Transformer++</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.3">26.88</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.SS3.18.18.19.1.4">76.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.5">44.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.6"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.19.1.6.1">25.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.7">34.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.8">26.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.9">64.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.10">51.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.18.18.19.1.11">41.35</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.20.2">
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.20.2.1">RetNet</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.2">31.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.20.2.3">87.11</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.4">44.49</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.5">23.04</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.6">33.86</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.7">23.93</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.8">63.49</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.9">52.33</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.20.2.10">40.19</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.21.3">
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.21.3.1">HGRN2</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.2">27.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.21.3.3">77.40</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.4">45.24</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.5">23.63</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.6">35.61</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.7">24.74</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.8">65.45</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.9"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.21.3.9.1">54.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.21.3.10">41.46</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.22.4">
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.22.4.1">GLA</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.2">28.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.22.4.3">79.95</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.4">44.53</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.5">22.27</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.6">34.84</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.7">24.94</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.8">63.93</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.9">51.38</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.22.4.10">40.32</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.23.5">
<td class="ltx_td" id="S3.SS3.18.18.23.5.1"></td>
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.23.5.2">GSA</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.3">28.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.23.5.4">82.50</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.5">45.50</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.6">24.23</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.7">35.00</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.8">24.02</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.9">64.85</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.10">50.43</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.23.5.11">40.67</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.24.6">
<td class="ltx_td" id="S3.SS3.18.18.24.6.1"></td>
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.24.6.2">Gated DeltaNet</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.3">26.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.24.6.4">58.59</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.5">46.04</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.6">23.55</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.7">35.18</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.8">27.01</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.9"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.24.6.9.1">66.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.10">50.83</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.24.6.11">41.44</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.25.7">
<td class="ltx_td" id="S3.SS3.18.18.25.7.1"></td>
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.25.7.2">MoM</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.3"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.3.1">26.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.25.7.4"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.4.1">51.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.5"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.5.1">46.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.6">24.15</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.7"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.7.1">35.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.8"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.8.1">28.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.9">65.61</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.10">52.57</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.25.7.11"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.25.7.11.1">42.11</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.14.14.14">
<td class="ltx_td ltx_align_left ltx_align_top ltx_border_t" id="S3.SS3.14.14.14.2" rowspan="4">
<span class="ltx_text" id="S3.SS3.14.14.14.2.1"><span class="ltx_text ltx_font_italic" id="S3.SS3.14.14.14.2.1.1">1.3B Params</span> </span>
<span class="ltx_text ltx_font_italic" id="S3.SS3.14.14.14.2.2">100B Tokens</span>
<span class="ltx_text ltx_font_italic" id="S3.SS3.14.14.14.2.3">L=24, d=2048</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS3.14.14.14.1">Transformer++<sup class="ltx_sup" id="S3.SS3.14.14.14.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.3">17.61</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.SS3.14.14.14.4">19.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.5">55.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.6">28.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.7">49.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.8">40.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.9">70.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.10">56.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS3.14.14.14.11">49.93</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.15.15.15">
<td class="ltx_td ltx_align_left" id="S3.SS3.15.15.15.1">RetNet<sup class="ltx_sup" id="S3.SS3.15.15.15.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.2">18.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.15.15.15.3">21.97</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.4">57.49</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.5">26.88</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.6">48.09</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.7">37.75</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.8">69.37</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.9">53.28</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.15.15.15.10">48.81</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.16.16.16">
<td class="ltx_td ltx_align_left" id="S3.SS3.16.16.16.1">HGRN2<sup class="ltx_sup" id="S3.SS3.16.16.16.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.2">17.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.16.16.16.3">15.65</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.4"><span class="ltx_text ltx_font_bold" id="S3.SS3.16.16.16.4.1">58.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.5">28.07</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.6"><span class="ltx_text ltx_font_bold" id="S3.SS3.16.16.16.6.1">51.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.7">42.31</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.8">71.33</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.9">52.01</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.16.16.16.10">50.66</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.17.17.17">
<td class="ltx_td ltx_align_left" id="S3.SS3.17.17.17.1">GLA<sup class="ltx_sup" id="S3.SS3.17.17.17.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.2">17.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.17.17.17.3">19.66</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.4">55.18</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.5">27.56</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.6">48.89</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.7">40.03</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.8">69.86</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.9">53.91</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.17.17.17.10">49.24</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.18">
<td class="ltx_td" id="S3.SS3.18.18.18.2"></td>
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.18.1">GSA<sup class="ltx_sup" id="S3.SS3.18.18.18.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.3">16.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.18.4">16.02</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.5"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.18.5.1">58.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.6"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.18.6.1">28.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.7">50.98</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.8">42.03</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.9"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.18.9.1">72.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.10">53.43</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.18.11">50.89</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.26.8">
<td class="ltx_td" id="S3.SS3.18.18.26.8.1"></td>
<td class="ltx_td ltx_align_left" id="S3.SS3.18.18.26.8.2">Gated DeltaNet</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.3">17.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.SS3.18.18.26.8.4">18.80</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.5">56.82</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.6">27.39</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.7">49.77</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.8">39.94</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.9">71.76</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.10">51.78</td>
<td class="ltx_td ltx_align_center" id="S3.SS3.18.18.26.8.11">49.58</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.18.18.27.9">
<td class="ltx_td ltx_border_bb" id="S3.SS3.18.18.27.9.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.SS3.18.18.27.9.2">MoM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.3"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.27.9.3.1">16.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.SS3.18.18.27.9.4"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.27.9.4.1">14.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.5">55.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.6">27.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.7">50.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.8"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.27.9.8.1">43.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.9">71.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.10"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.27.9.10.1">56.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS3.18.18.27.9.11"><span class="ltx_text ltx_font_bold" id="S3.SS3.18.18.27.9.11.1">50.97</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of common-sense reasoning tasks using various linear models and transformer models.  It compares the performance of these models across different sizes (340M and 1.3B parameters) and demonstrates that while linear models and Transformers show comparable performance, the Mixture-of-Memories (MoM) model consistently achieves the highest average accuracy across all model sizes. The metrics used include perplexity (ppl) and accuracy (acc) on various tasks like WikiText, LAMBADA, ARC (easy and challenge), HellaSwag, PiQA, and WinoGrande.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on Common-Sense Reasoning Tasks. The performance of linear models and Transformer models is comparable; however, MoM consistently achieves the best average performance across all model sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.1.1.1.1.1">
<tr class="ltx_tr" id="S3.SS3.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.1.1.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.1.1.1.1.1.2.1.1">Wiki.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.1.1.1.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.SS3.1.1.1.1.1.1.1.m1.1"><semantics id="S3.SS3.1.1.1.1.1.1.1.m1.1a"><mo id="S3.SS3.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.1.1.1.1.1.1.1.m1.1b"><ci id="S3.SS3.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the LongBench benchmark, which evaluates large language models on various long-context tasks.  The benchmark includes summarization, few-shot learning, and synthetic tasks.  The results are organized by model and task, showing the performance (presumably metrics such as accuracy or F1 score) for each. The 'Sum', 'FS', and 'Syn' columns likely represent summarization, few-shot, and synthetic task categories, respectively.  The evaluation was performed using the Contributors (2023) framework.
> <details>
> <summary>read the caption</summary>
> Table 4: LongBench Results. All evaluations were done using Contributors (2023). Note: Sum = Summarization, FS = Few-shot, Syn = Synthetic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.2.2.2.2.1">
<tr class="ltx_tr" id="S3.SS3.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.2.2.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.2.2.2.2.1.2.1.1">Lamb.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.2.2.2.2.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.SS3.2.2.2.2.1.1.1.m1.1"><semantics id="S3.SS3.2.2.2.2.1.1.1.m1.1a"><mo id="S3.SS3.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.2.2.2.2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.2.2.2.2.1.1.1.m1.1b"><ci id="S3.SS3.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.2.2.2.2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.2.2.2.2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.2.2.2.2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of MoM models with multiple independent memory segments against models with a single, expanded memory.  Both types of models use different memory update mechanisms. The results show that using separate memory segments (MoM) leads to significantly better performance on recall-intensive tasks than simply increasing the capacity of a single memory. This highlights the effectiveness of MoM's approach in mitigating memory interference and improving long-term memory.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison Between Mixed Memory and Single Memory. We constructed MoM models using different memory update mechanisms. Separate memory segments yielded better performance compared to simply increasing the memory capacity of a single memory.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.3.3.3.3.1">
<tr class="ltx_tr" id="S3.SS3.3.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.3.3.3.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.3.3.3.3.1.2.1.1">ARC-e</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.3.3.3.3.1.1.1">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.3.3.3.3.1.1.1.m1.1"><semantics id="S3.SS3.3.3.3.3.1.1.1.m1.1a"><mo id="S3.SS3.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.3.3.3.3.1.1.1.m1.1b"><ci id="S3.SS3.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to analyze the impact of the number of memories and the inclusion of a shared memory on the model's performance.  The average scores across six recall-intensive tasks (FDA, SWDE, SQUAD, NQ, TriviaQA, Drop) are shown for different configurations, allowing for a comparison of the effects of varying the number of memories and the presence/absence of the shared memory component.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation Study. We performed ablation studies on the number of memories and the use of shared memory. The table presents the average results across all recall-intensive tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.5.5.5.5.2">
<tr class="ltx_tr" id="S3.SS3.5.5.5.5.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.5.5.5.5.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.5.5.5.5.2.3.1.1">ARC-c</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.5.5.5.5.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.5.5.5.5.2.2.2">
<math alttext="\mathrm{acc_{n}}" class="ltx_Math" display="inline" id="S3.SS3.4.4.4.4.1.1.1.m1.1"><semantics id="S3.SS3.4.4.4.4.1.1.1.m1.1a"><msub id="S3.SS3.4.4.4.4.1.1.1.m1.1.1" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.cmml"><mi id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2.cmml">acc</mi><mi id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3.cmml">n</mi></msub><annotation-xml encoding="MathML-Content" id="S3.SS3.4.4.4.4.1.1.1.m1.1b"><apply id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.1.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.2">acc</ci><ci id="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3.cmml" xref="S3.SS3.4.4.4.4.1.1.1.m1.1.1.3">n</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.4.4.4.4.1.1.1.m1.1c">\mathrm{acc_{n}}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.4.4.4.4.1.1.1.m1.1d">roman_acc start_POSTSUBSCRIPT roman_n end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.5.5.5.5.2.2.2.m2.1"><semantics id="S3.SS3.5.5.5.5.2.2.2.m2.1a"><mo id="S3.SS3.5.5.5.5.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.5.5.5.5.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.5.5.5.5.2.2.2.m2.1b"><ci id="S3.SS3.5.5.5.5.2.2.2.m2.1.1.cmml" xref="S3.SS3.5.5.5.5.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.5.5.5.5.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.5.5.5.5.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various models on the LongBench benchmark, which assesses performance across diverse long-context tasks.  The results are broken down into several categories: Single-document Question Answering (SQA), Multi-document Question Answering (MQA), Summarization, Few-shot learning, and Synthetic tasks. This provides a detailed view of each model's strengths and weaknesses in handling different types of long-context problems.
> <details>
> <summary>read the caption</summary>
> Table 7: Complete Results of LongBench. (SQA: Single-doc QA, MQA: Multi-doc QA, Sum: Summarization, FS: Few-shot learning, Syn: Synthetic)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.7.7.7.7.2">
<tr class="ltx_tr" id="S3.SS3.7.7.7.7.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.7.7.7.7.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.7.7.7.7.2.3.1.1">Hella.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.7.7.7.7.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.7.7.7.7.2.2.2">
<math alttext="\mathrm{acc_{n}}" class="ltx_Math" display="inline" id="S3.SS3.6.6.6.6.1.1.1.m1.1"><semantics id="S3.SS3.6.6.6.6.1.1.1.m1.1a"><msub id="S3.SS3.6.6.6.6.1.1.1.m1.1.1" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.cmml"><mi id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2.cmml">acc</mi><mi id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3.cmml">n</mi></msub><annotation-xml encoding="MathML-Content" id="S3.SS3.6.6.6.6.1.1.1.m1.1b"><apply id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.1.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.2">acc</ci><ci id="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3.cmml" xref="S3.SS3.6.6.6.6.1.1.1.m1.1.1.3">n</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.6.6.6.6.1.1.1.m1.1c">\mathrm{acc_{n}}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.6.6.6.6.1.1.1.m1.1d">roman_acc start_POSTSUBSCRIPT roman_n end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.7.7.7.7.2.2.2.m2.1"><semantics id="S3.SS3.7.7.7.7.2.2.2.m2.1a"><mo id="S3.SS3.7.7.7.7.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.7.7.7.7.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.7.7.7.7.2.2.2.m2.1b"><ci id="S3.SS3.7.7.7.7.2.2.2.m2.1.1.cmml" xref="S3.SS3.7.7.7.7.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.7.7.7.7.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.7.7.7.7.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of the ablation studies conducted on recall-intensive tasks.  It shows the impact of varying the number of memories and the number of activated memories, as well as the effect of including a shared memory, on model performance across six different datasets (FDA, SWDE, SQUAD, NQ, TriviaQA, Drop).  The results provide detailed insights into the contribution of these architectural components to the model's overall performance on recall-heavy tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Complete Ablation Study Results. The complete results of the ablation studies on recall-intensive tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS3.9.9.9.9.2">
<tr class="ltx_tr" id="S3.SS3.9.9.9.9.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.9.9.9.9.2.3.1"><span class="ltx_text ltx_font_bold" id="S3.SS3.9.9.9.9.2.3.1.1">Lamb.</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.9.9.9.9.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.SS3.9.9.9.9.2.2.2">
<math alttext="\mathrm{acc}" class="ltx_Math" display="inline" id="S3.SS3.8.8.8.8.1.1.1.m1.1"><semantics id="S3.SS3.8.8.8.8.1.1.1.m1.1a"><mi id="S3.SS3.8.8.8.8.1.1.1.m1.1.1" xref="S3.SS3.8.8.8.8.1.1.1.m1.1.1.cmml">acc</mi><annotation-xml encoding="MathML-Content" id="S3.SS3.8.8.8.8.1.1.1.m1.1b"><ci id="S3.SS3.8.8.8.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.8.8.8.8.1.1.1.m1.1.1">acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.8.8.8.8.1.1.1.m1.1c">\mathrm{acc}</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.8.8.8.8.1.1.1.m1.1d">roman_acc</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.9.9.9.9.2.2.2.m2.1"><semantics id="S3.SS3.9.9.9.9.2.2.2.m2.1a"><mo id="S3.SS3.9.9.9.9.2.2.2.m2.1.1" stretchy="false" xref="S3.SS3.9.9.9.9.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.9.9.9.9.2.2.2.m2.1b"><ci id="S3.SS3.9.9.9.9.2.2.2.m2.1.1.cmml" xref="S3.SS3.9.9.9.9.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.9.9.9.9.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.9.9.9.9.2.2.2.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of the impact of different hyperparameters on the performance of the MoM model. Specifically, it examines the effects of varying the number of memories, the number of activated memories, and the inclusion of shared memory on several recall-intensive tasks.  The results help to understand the optimal configuration of the MoM model for achieving superior performance.
> <details>
> <summary>read the caption</summary>
> Table 9: Complete Ablation Study Results. The complete results of the ablation studies on recall-intensive tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13685/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13685/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}