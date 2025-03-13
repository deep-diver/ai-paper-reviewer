---
title: "Forgetting Transformer: Softmax Attention with a Forget Gate"
summary: "Transformers get forgetful! This paper introduces the Forgetting Transformer (FoX), incorporating a forget gate into the attention mechanism for improved sequence modeling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Mila & Université de Montréal",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02130 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhixuan Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02130" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02130" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02130/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recurrent sequence models use forget gates to manage information, while Transformers lack an explicit forgetting mechanism, potentially limiting their ability to handle long sequences effectively. Current models also suffer in long-context tasks. Addressing these issues is crucial for advancing sequence modeling capabilities. This paper explores integrating a forget gate into the Transformer architecture to improve its ability to process long-range dependencies. 



The paper introduces the **Forgetting Transformer (FoX)**, which incorporates a forget gate into the softmax attention mechanism by down-weighting unnormalized attention scores. FoX outperforms the standard Transformer on long-context language modeling and length extrapolation tasks. It's also compatible with FlashAttention. FoX retains retrieval abilities and achieves near-perfect accuracy in the needle-in-the-haystack test. The Pro block improves both FoX and Transformer.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Forgetting gates can be naturally incorporated into Transformers by down-weighting unnormalized attention scores in a data-dependent way. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Forgetting Transformer (FoX) outperforms the standard Transformer on long-context language modeling and length extrapolation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FoX retains Transformer's long-context capabilities and can be implemented in a hardware-aware way with modifications to the FlashAttention algorithm. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel attention mechanism, potentially influencing future architectures. The Forgetting Transformer's superior performance and ability to incorporate forget gates and hardware-aware implementation offer valuable insights for the community. It addresses the limitations of transformers, opening new research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02130/x3.png)

> 🔼 Figure 1 illustrates the architecture of the Forgetting Transformer (FoX) model. The left panel shows a single FoX block, a fundamental building block of the model, consisting of a multi-head self-attention mechanism, followed by a feed-forward network.  The right panel presents a single FoX (Pro) layer, an enhanced layer incorporating additional architectural components often found in recurrent sequence models for improved performance. These components include output gates for regulating the output of each layer and QK-norm (query-key normalization) for better attention score normalization. Both diagrams show how operations such as RMSNorm (Root Mean Square Layer Normalization), sigmoid activation (σ), and element-wise multiplication are utilized within each block and layer. The ShiftLinear operation, as detailed in Equation 14 of the paper, processes the key inputs to add a recency bias, making recent information more influential in the attention mechanism. All RMSNorm operations in the (Pro) layer are applied independently to each head.
> <details>
> <summary>read the caption</summary>
> Figure 1: Default architecture of FoX. (left) A single FoX block. (right) A single FoX (Pro) layer. All RMSNorms on the right are applied independently to each head. σ𝜎\sigmaitalic_σ is the sigmoid function. ⊗tensor-product\otimes⊗ is element-wise multiplication. ShiftLinear implements the computation in Equation 14.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.17.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.17.13.13.14.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.17.13.13.14.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.2.1">Wiki.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.17.13.13.14.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.3.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.4.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.5.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.6.1">Hella.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.7.1">Wino.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.8.1">ARC-e</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.9.1">ARC-c</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.10"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.10.1">COPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.11"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.11.1">OBQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.12"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.12.1">SciQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.17.13.13.14.1.13"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.13.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.17.13.13.14.1.14"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.14.1.14.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.13">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T1.17.13.13.13.14"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.1.1.1.1.m1.1"><semantics id="S4.T1.5.1.1.1.1.m1.1a"><mo id="S4.T1.5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.1.1.1.1.m1.1b"><ci id="S4.T1.5.1.1.1.1.m1.1.1.cmml" xref="S4.T1.5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.6.2.2.2.2">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.2.2.2.2.m1.1"><semantics id="S4.T1.6.2.2.2.2.m1.1a"><mo id="S4.T1.6.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.2.2.2.2.m1.1b"><ci id="S4.T1.6.2.2.2.2.m1.1.1.cmml" xref="S4.T1.6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.7.3.3.3.3">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.3.3.3.3.m1.1"><semantics id="S4.T1.7.3.3.3.3.m1.1a"><mo id="S4.T1.7.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.3.3.3.3.m1.1b"><ci id="S4.T1.7.3.3.3.3.m1.1.1.cmml" xref="S4.T1.7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.8.4.4.4.4">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.4.4.4.4.m1.1"><semantics id="S4.T1.8.4.4.4.4.m1.1a"><mo id="S4.T1.8.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.8.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.4.4.4.4.m1.1b"><ci id="S4.T1.8.4.4.4.4.m1.1.1.cmml" xref="S4.T1.8.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.9.5.5.5.5">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.5.5.5.5.m1.1"><semantics id="S4.T1.9.5.5.5.5.m1.1a"><mo id="S4.T1.9.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.9.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.5.5.5.5.m1.1b"><ci id="S4.T1.9.5.5.5.5.m1.1.1.cmml" xref="S4.T1.9.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.10.6.6.6.6">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.6.6.6.6.m1.1"><semantics id="S4.T1.10.6.6.6.6.m1.1a"><mo id="S4.T1.10.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.10.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.6.6.6.6.m1.1b"><ci id="S4.T1.10.6.6.6.6.m1.1.1.cmml" xref="S4.T1.10.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.11.7.7.7.7">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.7.7.7.7.m1.1"><semantics id="S4.T1.11.7.7.7.7.m1.1a"><mo id="S4.T1.11.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.11.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.7.7.7.7.m1.1b"><ci id="S4.T1.11.7.7.7.7.m1.1.1.cmml" xref="S4.T1.11.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.12.8.8.8.8">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.8.8.8.8.m1.1"><semantics id="S4.T1.12.8.8.8.8.m1.1a"><mo id="S4.T1.12.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.12.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.8.8.8.8.m1.1b"><ci id="S4.T1.12.8.8.8.8.m1.1.1.cmml" xref="S4.T1.12.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.13.9.9.9.9">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.13.9.9.9.9.m1.1"><semantics id="S4.T1.13.9.9.9.9.m1.1a"><mo id="S4.T1.13.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.13.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.9.9.9.9.m1.1b"><ci id="S4.T1.13.9.9.9.9.m1.1.1.cmml" xref="S4.T1.13.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.14.10.10.10.10">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.14.10.10.10.10.m1.1"><semantics id="S4.T1.14.10.10.10.10.m1.1a"><mo id="S4.T1.14.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.14.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.10.10.10.10.m1.1b"><ci id="S4.T1.14.10.10.10.10.m1.1.1.cmml" xref="S4.T1.14.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.15.11.11.11.11">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.15.11.11.11.11.m1.1"><semantics id="S4.T1.15.11.11.11.11.m1.1a"><mo id="S4.T1.15.11.11.11.11.m1.1.1" stretchy="false" xref="S4.T1.15.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.11.11.11.11.m1.1b"><ci id="S4.T1.15.11.11.11.11.m1.1.1.cmml" xref="S4.T1.15.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.16.12.12.12.12">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.16.12.12.12.12.m1.1"><semantics id="S4.T1.16.12.12.12.12.m1.1a"><mo id="S4.T1.16.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T1.16.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.12.12.12.12.m1.1b"><ci id="S4.T1.16.12.12.12.12.m1.1.1.cmml" xref="S4.T1.16.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.17.13.13.13.13"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.17.13.13.13.13.m1.1"><semantics id="S4.T1.17.13.13.13.13.m1.1a"><mo id="S4.T1.17.13.13.13.13.m1.1.1" stretchy="false" xref="S4.T1.17.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.13.13.13.13.m1.1b"><ci id="S4.T1.17.13.13.13.13.m1.1.1.cmml" xref="S4.T1.17.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.13.13.13.13.m1.1d">↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.17.13.13.15.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.17.13.13.15.1.1">FoX (Pro)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.2.1">23.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.17.13.13.15.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.3.1">14.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.4.1">42.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.5.1">64.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.6.1">38.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.7.1">52.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.8.1">52.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.9.1">26.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.10"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.10.1">71.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.11">29.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.12"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.12.1">85.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.17.13.13.15.1.13">46.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.13.13.15.1.14"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.15.1.14.1">50.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.16.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.13.13.16.2.1">Transformer (Pro)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.2.1">24.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.16.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.3.1">16.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.4.1">41.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.5.1">64.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.6.1">36.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.7">49.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.8.1">51.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.9">25.26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.10">62.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.11">29.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.12.1">82.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.16.2.13"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.16.2.13.1">60.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.16.2.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.16.2.14.1">50.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.17.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.13.13.17.3.1">FoX (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.2">26.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.17.3.3">18.27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.4">40.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.5">63.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.6">35.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.17.3.7.1">51.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.8">49.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.9">25.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.10">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.11">28.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.12">81.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.17.3.13">54.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.17.3.14">49.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.18.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.13.13.18.4.1">Transformer (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.2">28.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.18.4.3">22.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.4">38.27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.5">63.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.6">34.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.7">49.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.8">47.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.9">24.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.10">66.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.11">29.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.12">78.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.18.4.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.18.4.13.1">58.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.18.4.14">49.09</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.19.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.13.13.19.5.1">Mamba-2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.2">28.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.19.5.3">21.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.4">36.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.5">63.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.6">35.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.7">50.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.8">49.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.19.5.9.1">25.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.10"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.19.5.10.1">71.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.11"><span class="ltx_text ltx_font_bold" id="S4.T1.17.13.13.19.5.11.1">31.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.12">80.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.19.5.13">57.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.19.5.14">50.21</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.20.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.13.13.20.6.1">HGRN2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.2">30.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.20.6.3">20.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.4">38.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.5">63.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.6">34.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.20.6.7.1">51.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.8">50.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.9">25.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.10">66.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.20.6.11.1">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.12">75.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.13.13.20.6.13">58.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.13.13.20.6.14">49.45</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.13.13.21.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.17.13.13.21.7.1">DeltaNet</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.2">29.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.17.13.13.21.7.3">29.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.4">34.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.5">62.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.6">33.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.7">50.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.8">47.39</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.9">24.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.13.13.21.7.10.1">70.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.11">29.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.12">74.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.17.13.13.21.7.13">54.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.21.7.14">47.99</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the zero-shot performance of various language models on a range of short-context downstream tasks from the LM-evaluation-harness benchmark.  The models all share approximately 760M non-embedding parameters and were trained on roughly 48 billion tokens of the LongCrawl64 dataset.  The table displays the results for various tasks, comparing perplexity scores (lower is better) for language modeling tasks and accuracy scores (higher is better) for other tasks. Length-normalized accuracy ('acc-n') is also shown for some tasks, accounting for variations in task difficulty based on sequence length.  The best and second-best performance for each task is highlighted in bold and underlined text, respectively.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results on LM-eval-harness. All models have roughly 760760760760M non-embedding parameters and are trained on roughly 48484848B tokens on LongCrawl64. “acc-n” means length-normalized accuracy. Bold and underlined numbers indicate the best and the second best results, respectively.
> </details>





### In-depth insights


#### FoX:  Forgetful Attn
The idea of a 'Forgetful Attention' (FoX) is intriguing, suggesting an attention mechanism with a capacity to selectively discard information. This could address a key limitation in standard attention, where all prior context is treated equally. **FoX could enhance long-range dependency modeling by mitigating the noise from irrelevant tokens.** It is key that **FoX enables models to dynamically manage their context window**, focusing on pertinent data.  It'd be important to understand the criteria by which FoX decides what to forget, and prevent catastrophic forgetting, while maintaining stability. Overall, the concept of Forgetful Attention represents a promising direction for improving efficiency and robustness of attention mechanisms, thus making it a powerful architecture.

#### Gates Beat RoPE
The potential claim "Gates Beat RoPE" suggests a performance comparison where **attention mechanisms employing gating mechanisms outperform Rotary Position Embeddings (RoPE)** in a specific context. This might involve tasks where **dynamic context management is crucial**, as gates can selectively filter information. RoPE, while efficient, offers a fixed positional encoding, lacking the adaptability of gates. The context is still important. The success is also dependent on the design. **This could manifest as superior performance on long-context tasks**, improved handling of irrelevant information, or better generalization to varying sequence lengths. The claim highlights **gates' ability to dynamically modulate information flow** within the Transformer architecture to the effectiveness RoPE, but the implementation of gates are also very important.

#### Long Context FoX
When considering "Long Context FoX," several aspects become crucial. **FoX's ability to handle extended sequences** is likely a core focus, examining how it manages information across very long input windows. The **retention of relevant information** and the efficient **forgetting of irrelevant details** are essential for effective long-context processing. **Evaluation metrics** would likely emphasize performance on tasks requiring reasoning over long dependencies, comparing FoX against both Transformers and recurrent models. A key consideration is the **computational cost** associated with long contexts; strategies for maintaining efficiency while processing extensive data would be vital.

#### Parallel Recurrence
**Parallel recurrence** could refer to methods enabling simultaneous computation across sequential data, which is traditionally processed one step at a time. In neural networks, this could involve transforming recurrent layers (like LSTMs or GRUs) into forms suitable for parallel processing on GPUs or specialized hardware. The core idea is to reformulate the sequential dependencies so that multiple time steps can be calculated concurrently, leading to significant speedups. This might involve techniques like approximating recurrent connections, using attention mechanisms to capture long-range dependencies in parallel, or employing state-space models that have efficient parallel implementations. The challenge lies in maintaining the representational power and sequential nature of recurrence while unlocking the benefits of parallel computation.

#### Hardware Is Key
**Hardware optimization is crucial for advancing deep learning**. Specialized hardware, like GPUs and TPUs, significantly accelerates training and inference, allowing for larger models and datasets. Algorithmic innovations must be designed with hardware capabilities and limitations in mind to achieve real-world performance gains. Furthermore, efficient memory management and parallel processing are key to maximizing hardware utilization. The development of novel hardware architectures tailored to specific deep learning tasks promises even greater performance improvements, enabling the deployment of AI in resource-constrained environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02130/x33.png)

> 🔼 Figure 2 presents a comparison of the Forgetting Transformer (FoX) and the standard Transformer, and also several recurrent models (Mamba-2, HGRN2, DeltaNet), on long-context language modeling.  The left panel shows the per-token loss (L(i)) plotted against the token position (i) within a validation sequence.  A lower loss indicates better performance.  The right panel shows validation perplexity (P(l)) which is the average loss over a given context length (l). Lower perplexity means better performance. The dashed vertical line in both panels denotes the length of the context seen during training. The per-token loss curves are smoothed using a moving average to reduce noise.
> <details>
> <summary>read the caption</summary>
> Figure 2: (left) Per-token loss L⁢(i)𝐿𝑖L(i)italic_L ( italic_i ) at different token position i𝑖iitalic_i. (right) Validation perplexity P⁢(l)𝑃𝑙P(l)italic_P ( italic_l ) over different validation context length l𝑙litalic_l. The vertical dashed line indicates the training context length. The per-token loss is smoothed using a moving average sliding window of 101101101101 tokens.
> </details>



![](https://arxiv.org/html/2503.02130/x43.png)

> 🔼 This figure visualizes the forget gate weight matrix (F) and the attention score matrix (A) from two different layers of the Forgetting Transformer (FoX) model.  The heatmaps show how the forget gate mechanism modulates attention weights. Because the attention score matrix (A) is sparse, only the entries with scores above 0.5 are displayed.  This visualization helps to understand how the model's attention is influenced by the forget gate, allowing it to selectively focus on relevant parts of the input sequence and effectively 'forget' less relevant information.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of the forget gate weight matrix 𝑭𝑭{\bm{F}}bold_italic_F and the attention score matrix 𝑨𝑨{\bm{A}}bold_italic_A from two heads in different layers. Since 𝑨𝑨{\bm{A}}bold_italic_A is very sparse, we only show entries with scores larger than 0.50.50.50.5. These results use FoX (Pro). More examples can be found in Appendix F.10.
> </details>



![](https://arxiv.org/html/2503.02130/x44.png)

> 🔼 This figure displays the results of a needle-in-the-haystack test, which evaluates a language model's ability to retrieve specific information from a long sequence of text.  The test is performed using two different modes: an 'easy mode' and a 'standard mode'.  In the easy mode, both the question and the answer are explicitly present in the context.  In the standard mode, only the answer is present.  The model's success rate in each mode is presented as a heatmap, where different colors represent different accuracy scores.  Scores range from 1 to 10 and were determined by GPT-4.  The vertical dashed line in each heatmap represents the length of the training context used to train the model.  By comparing performance across the two modes and different context lengths, we can gain insight into the model's long-context retrieval capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Needle-in-the-haystack analysis for different models. We show results for the easy mode on the left and the standard mode on the right. The results are scored on a scale of 1111 to 10101010 by GPT-4o-2024-08-06. The vertical dashed line indicates the training context length.
> </details>



![](https://arxiv.org/html/2503.02130/x45.png)

> 🔼 This figure displays the results of the 'needle in the haystack' experiment, a test of long-context retrieval capabilities, using the Forgetting Transformer (FoX) model.  It shows the accuracy of the model at retrieving information from a long document. The 'easy mode' of the experiment includes both the question and answer in the 'needle.'  The figure also presents the per-token loss, which measures how well the model uses context at various distances from the predicted token.  Different lines correspond to different numbers of training tokens and learning rates, allowing for the comparison of training data quantity and rate on the performance and loss. The dashed line indicates where the training context ends.
> <details>
> <summary>read the caption</summary>
> Figure 5: FoX (Pro) easy mode needle-in-the-haystack results and per-token loss for different numbers of training tokens and learning rates. The vertical dashed line indicates the training context length. More results can be found in Appendix F.7.
> </details>



![](https://arxiv.org/html/2503.02130/x58.png)

> 🔼 Figure 6 illustrates the impact of model size, training data size, and training context length on the per-token loss of language models.  The plots show the average loss calculated across a 101-token sliding window for each token position. Results are shown only for token positions within the training context length to improve clarity, but Appendix F.6 provides additional results, including an analysis of length extrapolation and results for a 125M parameter model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Per-token loss given different model sizes, numbers of training tokens, and training context lengths. At each token index i𝑖iitalic_i, we report the averaged loss over a window of 101101101101 centered at i𝑖iitalic_i. We only show results within the training context length to reduce visual clutter. See Appendix F.6 for additional results, including length extrapolation and 125M-parameter model results.
> </details>



![](https://arxiv.org/html/2503.02130/x59.png)

> 🔼 Figure 7 compares the performance of different forget gate mechanisms in the Forgetting Transformer model.  It contrasts data-dependent, data-independent, and fixed forget gates across two model architectures: the LLaMA and Pro architectures.  The results show the per-token loss for each configuration, calculated using a 360M parameter model trained on 7.5B tokens of the LongCrawl64 dataset. Smoothing is applied to the loss curves using a moving average over 1001 tokens. The training context length is marked by a dashed vertical line.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Data-dependent forget gate (data-dep) vs. data-independent (data-indep) and fixed forget gate. (left and middle-left) Comparison using the LLaMA architecture. (middle-right and right) Comparison using the Pro architecture. We use 360360360360M-parameter models trained on roughly 7.57.57.57.5B tokens on LongCrawl64. All per-token loss curves are smoothed with a moving average sliding window of 1001100110011001 tokens. The vertical dashed line indicates the training context length.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.5.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.5.1.1.1.2">Single-Document QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.5.1.1.1.3">Multi-Document QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.5.1.1.1.4">Summarization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.5.1.1.1.5">Few-shot Learning</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.5.1.1.1.6">Code</th>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.1.1" style="width:46.3pt;height:46.3pt;vertical-align:-20.7pt;"><span class="ltx_transformed_inner" style="width:56.7pt;transform:translate(-5.2pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.1.1.1">NarrativeQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.2.1" style="width:28.1pt;height:28.1pt;vertical-align:-11.6pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.2.1.1">Qasper</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.3.1" style="width:27.9pt;height:27.9pt;vertical-align:-11.5pt;"><span class="ltx_transformed_inner" style="width:30.7pt;transform:translate(-1.39pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.3.1.1">MFQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.4.1" style="width:39.0pt;height:39pt;vertical-align:-17.1pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.4.1.1">HotpotQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.5.1" style="width:42.0pt;height:42pt;vertical-align:-18.5pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.5.1.1">2WikiMQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.6.1" style="width:32.2pt;height:32.1pt;vertical-align:-13.6pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.6.1.1">Musique</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.7">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.7.1" style="width:40.4pt;height:40.3pt;vertical-align:-17.7pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.7.1.1">GovReport</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.8">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.8.1" style="width:31.9pt;height:31.9pt;vertical-align:-13.5pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.8.1.1">QMSum</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.9">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.9.1" style="width:38.3pt;height:38.3pt;vertical-align:-15.7pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.9.1.1">MultiNews</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.10">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.10.1" style="width:25.1pt;height:25pt;vertical-align:-9.1pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.10.1.1">TREC</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.11">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.11.1" style="width:35.5pt;height:35.5pt;vertical-align:-15.3pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.11.1.1">TriviaQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.12">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.12.1" style="width:31.9pt;height:32pt;vertical-align:-12.6pt;"><span class="ltx_transformed_inner" style="width:38.3pt;transform:translate(-3.2pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.12.1.1">SamSum</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.13">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.13.1" style="width:19.5pt;height:19.4pt;vertical-align:-6.3pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.13.1.1">LCC</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.14">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.1.2.2.14.1" style="width:48.4pt;height:48.4pt;vertical-align:-21.7pt;"><span class="ltx_transformed_inner" style="width:59.6pt;transform:translate(-5.58pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="S4.T2.5.1.2.2.14.1.1">RepoBench-P</p>
</span></div>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.1.3.1.1">FoX (Pro)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.2.1">13.38</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.3.1.3.1">18.88</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.4.1">28.73</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.3.1.5.1">15.27</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.6.1">25.39</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.7.1">6.49</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.8.1">22.71</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.9.1">13.51</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.10.1">12.27</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.11"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.11.1">63.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.3.1.12.1">37.36</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.3.1.13.1">22.74</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.14">10.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.5.1.3.1.15">9.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.4.2.1">Transformer (Pro)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.4.2.2.1">11.42</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.3.1">21.54</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.4">22.89</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.5.1">19.58</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.4.2.6.1">22.65</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.4.2.7.1">6.09</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.4.2.8.1">21.92</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.9">10.7</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.10">8.11</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.11">55.0</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.12"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.12.1">40.67</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.13"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.13.1">30.66</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.14">10.79</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.4.2.15">14.25</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.5.3.1">FoX (LLaMA)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.2">10.47</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.3">14.81</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.5.3.4.1">24.71</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.5">13.03</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.6">21.58</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.7">5.25</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.8">20.05</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.9">10.97</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.10">4.86</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.5.3.11.1">61.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.12">34.48</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.13">19.13</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.14">7.69</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.5.3.15">8.12</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.6.4.1">Transformer (LLaMA)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.2">11.11</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.3">13.5</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.4">21.52</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.5">9.42</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.6">21.33</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.7">4.32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.8">18.53</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.9">8.43</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.6.4.10.1">10.99</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.11">51.5</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.12">28.41</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.13">19.17</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.14">8.21</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.6.4.15">14.06</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.7.5.1">Mamba-2</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.2">10.65</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.3">11.26</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.4">16.98</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.5">11.59</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.6">16.69</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.7">5.0</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.8">9.31</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.9">11.22</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.10">10.89</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.11">28.5</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.12">15.6</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.13">16.19</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.14">12.07</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.7.5.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.7.5.15.1">15.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.8.6.1">HGRN2</th>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.2">8.78</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.3">10.94</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.4">18.66</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.5">7.78</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.6">15.29</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.7">4.32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.8">6.13</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.9">12.19</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.10">7.83</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.11">16.5</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.12">14.46</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.13">6.37</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.14"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.8.6.14.1">18.17</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.1.8.6.15"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.8.6.15.1">16.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.1.9.7.1">DeltaNet</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.2">9.36</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.3">9.76</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.4">16.49</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.5">6.57</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.6">15.09</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.7">2.76</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.8">8.19</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.9.7.9.1">12.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.10">7.62</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.11">35.5</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.12">17.57</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.13">18.42</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.9.7.14.1">12.24</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.5.1.9.7.15">3.94</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various language models on the LongBench benchmark.  Each model has approximately 760 million non-embedding parameters and was trained on roughly 48 billion tokens from the LongCrawl64 dataset.  The table shows the results for a range of downstream tasks, allowing for a comparison of the models' performance across different types of long-context understanding challenges. The best and second-best results for each task are highlighted in bold and underlined, respectively.
> <details>
> <summary>read the caption</summary>
> Table 2: Evalution results on LongBench. All models have roughly 760760760760M non-embedding parameters and are trained on roughly 48484848B tokens on LongCrawl64. Bold and underlined numbers indicate the best and the second-best results, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.2.1">RoPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.3.1">Forget gate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.4.1">QK-norm</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.5.1">Output gate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.6.1">Output norm</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.7.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.7.1">KV-shift</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.8.1">Perplexity</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.1.2.2.1">Transformer (LLaMA) w/o RoPE</th>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.2.2.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.2.2.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.2.2.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.2.2.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.2.2.6"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.7.1.2.2.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.2.2.8">29.30</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.3.3.1">Transformer (LLaMA)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.3.3.2">✓</td>
<td class="ltx_td" id="S4.T3.7.1.3.3.3"></td>
<td class="ltx_td" id="S4.T3.7.1.3.3.4"></td>
<td class="ltx_td" id="S4.T3.7.1.3.3.5"></td>
<td class="ltx_td" id="S4.T3.7.1.3.3.6"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.3.3.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.3.3.8">7.49</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.4.4.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.4.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.4.4.3">✓</td>
<td class="ltx_td" id="S4.T3.7.1.4.4.4"></td>
<td class="ltx_td" id="S4.T3.7.1.4.4.5"></td>
<td class="ltx_td" id="S4.T3.7.1.4.4.6"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.4.4.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.4.4.8">7.19</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.5.5.1">FoX (LLaMA)</th>
<td class="ltx_td" id="S4.T3.7.1.5.5.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.5.3">✓</td>
<td class="ltx_td" id="S4.T3.7.1.5.5.4"></td>
<td class="ltx_td" id="S4.T3.7.1.5.5.5"></td>
<td class="ltx_td" id="S4.T3.7.1.5.5.6"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.5.5.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.5.5.8">7.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.6.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.6.6.1"></th>
<td class="ltx_td" id="S4.T3.7.1.6.6.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.6.4">✓</td>
<td class="ltx_td" id="S4.T3.7.1.6.6.5"></td>
<td class="ltx_td" id="S4.T3.7.1.6.6.6"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.6.6.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.6.6.8">7.08</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.7.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.7.7.1"></th>
<td class="ltx_td" id="S4.T3.7.1.7.7.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.7.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.7.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.7.5">✓</td>
<td class="ltx_td" id="S4.T3.7.1.7.7.6"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.7.7.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.7.7.8">6.88</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.8.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.8.8.1"></th>
<td class="ltx_td" id="S4.T3.7.1.8.8.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.8.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.8.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.8.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.8.6">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.8.8.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.8.8.8">6.80</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.9.9.1">FoX (Pro)</th>
<td class="ltx_td" id="S4.T3.7.1.9.9.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.9.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.9.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.9.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.9.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.9.9.7">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.9.9.8">6.62</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.7.1.10.10.1">    - QK-norm</th>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.10.10.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.10.10.3">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T3.7.1.10.10.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.10.10.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.10.10.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.1.10.10.7">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.1.10.10.8">6.79</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.11.11.1">    - output gate</th>
<td class="ltx_td" id="S4.T3.7.1.11.11.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.11.11.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.11.11.4">✓</td>
<td class="ltx_td" id="S4.T3.7.1.11.11.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.11.11.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.11.11.7">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.11.11.8">6.86</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.12.12.1">    - output norm</th>
<td class="ltx_td" id="S4.T3.7.1.12.12.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.12.12.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.12.12.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.12.12.5">✓</td>
<td class="ltx_td" id="S4.T3.7.1.12.12.6"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.12.12.7">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.12.12.8">6.69</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.13.13.1">    - KV-shift</th>
<td class="ltx_td" id="S4.T3.7.1.13.13.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.13.13.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.13.13.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.13.13.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.13.13.6">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.7.1.13.13.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.13.13.8">6.80</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.14.14.1">    + RoPE</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.14.14.7">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.14.14.8">6.63</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.1.15.15.1">    - forget gate + RoPE (i.e. Transformer (Pro))</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.15.15.2">✓</td>
<td class="ltx_td" id="S4.T3.7.1.15.15.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.15.15.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.15.15.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.15.15.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.1.15.15.7">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.1.15.15.8">6.82</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.7.1.16.16.1">    - forget gate</th>
<td class="ltx_td ltx_border_bb" id="S4.T3.7.1.16.16.2"></td>
<td class="ltx_td ltx_border_bb" id="S4.T3.7.1.16.16.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.16.16.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.16.16.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.16.16.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.7.1.16.16.7">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.1.16.16.8">7.40</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of individual components within the Forgetting Transformer (FoX) model.  Using 360M parameter models trained on a 7.5B token subset of the LongCrawl64 dataset, the experiment measures the validation perplexity on a 16384-token context length.  The bottom half of the table shows incremental additions and removals of components, comparing the results against the baseline FoX (Pro) model. This allows for a precise understanding of each component's contribution to the model's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation experiments for FoX. We use 360360360360M-parameter models trained on 7.57.57.57.5B tokens on LongCrawl64. The perplexity is measured over a validation context length of 16384163841638416384 tokens. For the bottom half, all addition (+) or removal (-) of components are relative to FoX (Pro).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T4.3.3.3.4">Configuration</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1"><math alttext="n_{\text{layers}}" class="ltx_Math" display="inline" id="A2.T4.1.1.1.1.m1.1"><semantics id="A2.T4.1.1.1.1.m1.1a"><msub id="A2.T4.1.1.1.1.m1.1.1" xref="A2.T4.1.1.1.1.m1.1.1.cmml"><mi id="A2.T4.1.1.1.1.m1.1.1.2" xref="A2.T4.1.1.1.1.m1.1.1.2.cmml">n</mi><mtext id="A2.T4.1.1.1.1.m1.1.1.3" xref="A2.T4.1.1.1.1.m1.1.1.3a.cmml">layers</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.1.m1.1b"><apply id="A2.T4.1.1.1.1.m1.1.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.1.1.1.1.m1.1.1.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T4.1.1.1.1.m1.1.1.2.cmml" xref="A2.T4.1.1.1.1.m1.1.1.2">𝑛</ci><ci id="A2.T4.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3"><mtext id="A2.T4.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.1.1.1.1.m1.1.1.3">layers</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.1.m1.1c">n_{\text{layers}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.1.m1.1d">italic_n start_POSTSUBSCRIPT layers end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T4.2.2.2.2"><math alttext="d_{\text{model}}" class="ltx_Math" display="inline" id="A2.T4.2.2.2.2.m1.1"><semantics id="A2.T4.2.2.2.2.m1.1a"><msub id="A2.T4.2.2.2.2.m1.1.1" xref="A2.T4.2.2.2.2.m1.1.1.cmml"><mi id="A2.T4.2.2.2.2.m1.1.1.2" xref="A2.T4.2.2.2.2.m1.1.1.2.cmml">d</mi><mtext id="A2.T4.2.2.2.2.m1.1.1.3" xref="A2.T4.2.2.2.2.m1.1.1.3a.cmml">model</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.2.2.m1.1b"><apply id="A2.T4.2.2.2.2.m1.1.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.2.2.2.2.m1.1.1.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A2.T4.2.2.2.2.m1.1.1.2.cmml" xref="A2.T4.2.2.2.2.m1.1.1.2">𝑑</ci><ci id="A2.T4.2.2.2.2.m1.1.1.3a.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3"><mtext id="A2.T4.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.2.2.2.2.m1.1.1.3">model</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.2.2.m1.1c">d_{\text{model}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.2.2.m1.1d">italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.3.3.3"><math alttext="d_{\text{head}}" class="ltx_Math" display="inline" id="A2.T4.3.3.3.3.m1.1"><semantics id="A2.T4.3.3.3.3.m1.1a"><msub id="A2.T4.3.3.3.3.m1.1.1" xref="A2.T4.3.3.3.3.m1.1.1.cmml"><mi id="A2.T4.3.3.3.3.m1.1.1.2" xref="A2.T4.3.3.3.3.m1.1.1.2.cmml">d</mi><mtext id="A2.T4.3.3.3.3.m1.1.1.3" xref="A2.T4.3.3.3.3.m1.1.1.3a.cmml">head</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.3.3.m1.1b"><apply id="A2.T4.3.3.3.3.m1.1.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A2.T4.3.3.3.3.m1.1.1.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1">subscript</csymbol><ci id="A2.T4.3.3.3.3.m1.1.1.2.cmml" xref="A2.T4.3.3.3.3.m1.1.1.2">𝑑</ci><ci id="A2.T4.3.3.3.3.m1.1.1.3a.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3"><mtext id="A2.T4.3.3.3.3.m1.1.1.3.cmml" mathsize="70%" xref="A2.T4.3.3.3.3.m1.1.1.3">head</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.3.3.m1.1c">d_{\text{head}}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.3.3.m1.1d">italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.3.3.5">Peak learning rate</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.6.6.7.1.1">760M params / 48B tokens</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.6.6.7.1.2">24</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.6.6.7.1.3">1536</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.6.6.7.1.4">64 for FoX, 128 for Transformer</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.6.6.7.1.5">See Table <a class="ltx_ref" href="https://arxiv.org/html/2503.02130v1#A2.T5" title="Table 5 ‣ B.1 Model and training hyperparameters ‣ Appendix B Experimental details ‣ Appendix ‣ Forgetting Transformer: Softmax Attention with a Forget Gate"><span class="ltx_text ltx_ref_tag">5</span></a>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.4.4.4.2">760M params / 16B tokens</th>
<td class="ltx_td ltx_align_left" id="A2.T4.4.4.4.3">24</td>
<td class="ltx_td ltx_align_left" id="A2.T4.4.4.4.4">1536</td>
<td class="ltx_td ltx_align_left" id="A2.T4.4.4.4.5">64 for FoX, 128 for Transformer</td>
<td class="ltx_td ltx_align_left" id="A2.T4.4.4.4.1"><math alttext="1\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T4.4.4.4.1.m1.1"><semantics id="A2.T4.4.4.4.1.m1.1a"><mrow id="A2.T4.4.4.4.1.m1.1.1" xref="A2.T4.4.4.4.1.m1.1.1.cmml"><mn id="A2.T4.4.4.4.1.m1.1.1.2" xref="A2.T4.4.4.4.1.m1.1.1.2.cmml">1</mn><mo id="A2.T4.4.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T4.4.4.4.1.m1.1.1.1.cmml">×</mo><msup id="A2.T4.4.4.4.1.m1.1.1.3" xref="A2.T4.4.4.4.1.m1.1.1.3.cmml"><mn id="A2.T4.4.4.4.1.m1.1.1.3.2" xref="A2.T4.4.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T4.4.4.4.1.m1.1.1.3.3" xref="A2.T4.4.4.4.1.m1.1.1.3.3.cmml"><mo id="A2.T4.4.4.4.1.m1.1.1.3.3a" xref="A2.T4.4.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.4.4.4.1.m1.1.1.3.3.2" xref="A2.T4.4.4.4.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.4.4.4.1.m1.1b"><apply id="A2.T4.4.4.4.1.m1.1.1.cmml" xref="A2.T4.4.4.4.1.m1.1.1"><times id="A2.T4.4.4.4.1.m1.1.1.1.cmml" xref="A2.T4.4.4.4.1.m1.1.1.1"></times><cn id="A2.T4.4.4.4.1.m1.1.1.2.cmml" type="integer" xref="A2.T4.4.4.4.1.m1.1.1.2">1</cn><apply id="A2.T4.4.4.4.1.m1.1.1.3.cmml" xref="A2.T4.4.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.4.4.4.1.m1.1.1.3.1.cmml" xref="A2.T4.4.4.4.1.m1.1.1.3">superscript</csymbol><cn id="A2.T4.4.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T4.4.4.4.1.m1.1.1.3.2">10</cn><apply id="A2.T4.4.4.4.1.m1.1.1.3.3.cmml" xref="A2.T4.4.4.4.1.m1.1.1.3.3"><minus id="A2.T4.4.4.4.1.m1.1.1.3.3.1.cmml" xref="A2.T4.4.4.4.1.m1.1.1.3.3"></minus><cn id="A2.T4.4.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.4.4.4.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.4.4.1.m1.1c">1\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.4.4.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.5.5.5.2">360M params / 7.5B tokens</th>
<td class="ltx_td ltx_align_left" id="A2.T4.5.5.5.3">24</td>
<td class="ltx_td ltx_align_left" id="A2.T4.5.5.5.4">1024</td>
<td class="ltx_td ltx_align_left" id="A2.T4.5.5.5.5">64</td>
<td class="ltx_td ltx_align_left" id="A2.T4.5.5.5.1"><math alttext="2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T4.5.5.5.1.m1.1"><semantics id="A2.T4.5.5.5.1.m1.1a"><mrow id="A2.T4.5.5.5.1.m1.1.1" xref="A2.T4.5.5.5.1.m1.1.1.cmml"><mn id="A2.T4.5.5.5.1.m1.1.1.2" xref="A2.T4.5.5.5.1.m1.1.1.2.cmml">2</mn><mo id="A2.T4.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T4.5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A2.T4.5.5.5.1.m1.1.1.3" xref="A2.T4.5.5.5.1.m1.1.1.3.cmml"><mn id="A2.T4.5.5.5.1.m1.1.1.3.2" xref="A2.T4.5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T4.5.5.5.1.m1.1.1.3.3" xref="A2.T4.5.5.5.1.m1.1.1.3.3.cmml"><mo id="A2.T4.5.5.5.1.m1.1.1.3.3a" xref="A2.T4.5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.5.5.5.1.m1.1.1.3.3.2" xref="A2.T4.5.5.5.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.5.5.5.1.m1.1b"><apply id="A2.T4.5.5.5.1.m1.1.1.cmml" xref="A2.T4.5.5.5.1.m1.1.1"><times id="A2.T4.5.5.5.1.m1.1.1.1.cmml" xref="A2.T4.5.5.5.1.m1.1.1.1"></times><cn id="A2.T4.5.5.5.1.m1.1.1.2.cmml" type="integer" xref="A2.T4.5.5.5.1.m1.1.1.2">2</cn><apply id="A2.T4.5.5.5.1.m1.1.1.3.cmml" xref="A2.T4.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.5.5.5.1.m1.1.1.3.1.cmml" xref="A2.T4.5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A2.T4.5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T4.5.5.5.1.m1.1.1.3.2">10</cn><apply id="A2.T4.5.5.5.1.m1.1.1.3.3.cmml" xref="A2.T4.5.5.5.1.m1.1.1.3.3"><minus id="A2.T4.5.5.5.1.m1.1.1.3.3.1.cmml" xref="A2.T4.5.5.5.1.m1.1.1.3.3"></minus><cn id="A2.T4.5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.5.5.5.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.5.5.5.1.m1.1c">2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.5.5.5.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T4.6.6.6.2">125M params / 2.7B tokens</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.6.6.6.3">12</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.6.6.6.4">768</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.6.6.6.5">64</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.6.6.6.1"><math alttext="2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T4.6.6.6.1.m1.1"><semantics id="A2.T4.6.6.6.1.m1.1a"><mrow id="A2.T4.6.6.6.1.m1.1.1" xref="A2.T4.6.6.6.1.m1.1.1.cmml"><mn id="A2.T4.6.6.6.1.m1.1.1.2" xref="A2.T4.6.6.6.1.m1.1.1.2.cmml">2</mn><mo id="A2.T4.6.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T4.6.6.6.1.m1.1.1.1.cmml">×</mo><msup id="A2.T4.6.6.6.1.m1.1.1.3" xref="A2.T4.6.6.6.1.m1.1.1.3.cmml"><mn id="A2.T4.6.6.6.1.m1.1.1.3.2" xref="A2.T4.6.6.6.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T4.6.6.6.1.m1.1.1.3.3" xref="A2.T4.6.6.6.1.m1.1.1.3.3.cmml"><mo id="A2.T4.6.6.6.1.m1.1.1.3.3a" xref="A2.T4.6.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.6.6.6.1.m1.1.1.3.3.2" xref="A2.T4.6.6.6.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.6.6.6.1.m1.1b"><apply id="A2.T4.6.6.6.1.m1.1.1.cmml" xref="A2.T4.6.6.6.1.m1.1.1"><times id="A2.T4.6.6.6.1.m1.1.1.1.cmml" xref="A2.T4.6.6.6.1.m1.1.1.1"></times><cn id="A2.T4.6.6.6.1.m1.1.1.2.cmml" type="integer" xref="A2.T4.6.6.6.1.m1.1.1.2">2</cn><apply id="A2.T4.6.6.6.1.m1.1.1.3.cmml" xref="A2.T4.6.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.6.6.6.1.m1.1.1.3.1.cmml" xref="A2.T4.6.6.6.1.m1.1.1.3">superscript</csymbol><cn id="A2.T4.6.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T4.6.6.6.1.m1.1.1.3.2">10</cn><apply id="A2.T4.6.6.6.1.m1.1.1.3.3.cmml" xref="A2.T4.6.6.6.1.m1.1.1.3.3"><minus id="A2.T4.6.6.6.1.m1.1.1.3.3.1.cmml" xref="A2.T4.6.6.6.1.m1.1.1.3.3"></minus><cn id="A2.T4.6.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.6.6.6.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.6.6.6.1.m1.1c">2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.6.6.6.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for various model configurations in the experiments.  It shows the different settings for model size (number of parameters), training data size (number of tokens), the number of layers, and the head dimension (d_head).  The head dimension is only relevant to the FoX and Transformer models, and the authors tuned its value within the set {64, 128} for the 760M parameter models. The number of layers (n_layer) indicates the total number of blocks in the model; for the Transformer, each block consists of one attention layer and one multi-layer perceptron (MLP) layer.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameters for different configurations. The head dimension dheadsubscript𝑑headd_{\text{head}}italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT is only applicable to FoX and the Transformer. We tune dheadsubscript𝑑headd_{\text{head}}italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT for the 760M-parameter FoX and Transformer models in {64,128}64128\{64,128\}{ 64 , 128 }. nlayersubscript𝑛layern_{\text{layer}}italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT counts the number of blocks. For example, for the Transformer each block contains an attention layer and an MLP layer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T5.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T5.7.8.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T5.7.8.1.2">Learning rate</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T5.1.1.2">FoX (Pro)</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1"><math alttext="2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.m1.1a"><mrow id="A2.T5.1.1.1.m1.1.1" xref="A2.T5.1.1.1.m1.1.1.cmml"><mn id="A2.T5.1.1.1.m1.1.1.2" xref="A2.T5.1.1.1.m1.1.1.2.cmml">2</mn><mo id="A2.T5.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.1.1.1.m1.1.1.3" xref="A2.T5.1.1.1.m1.1.1.3.cmml"><mn id="A2.T5.1.1.1.m1.1.1.3.2" xref="A2.T5.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.1.1.1.m1.1.1.3.3" xref="A2.T5.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T5.1.1.1.m1.1.1.3.3a" xref="A2.T5.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.1.1.1.m1.1.1.3.3.2" xref="A2.T5.1.1.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.m1.1b"><apply id="A2.T5.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.m1.1.1"><times id="A2.T5.1.1.1.m1.1.1.1.cmml" xref="A2.T5.1.1.1.m1.1.1.1"></times><cn id="A2.T5.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.1.1.1.m1.1.1.2">2</cn><apply id="A2.T5.1.1.1.m1.1.1.3.cmml" xref="A2.T5.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.1.1.1.m1.1.1.3.1.cmml" xref="A2.T5.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.1.1.1.m1.1.1.3.2">10</cn><apply id="A2.T5.1.1.1.m1.1.1.3.3.cmml" xref="A2.T5.1.1.1.m1.1.1.3.3"><minus id="A2.T5.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T5.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T5.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.1.1.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.m1.1c">2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.2.2.2">Transformer (Pro)</th>
<td class="ltx_td ltx_align_left" id="A2.T5.2.2.1"><math alttext="1\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.2.2.1.m1.1"><semantics id="A2.T5.2.2.1.m1.1a"><mrow id="A2.T5.2.2.1.m1.1.1" xref="A2.T5.2.2.1.m1.1.1.cmml"><mn id="A2.T5.2.2.1.m1.1.1.2" xref="A2.T5.2.2.1.m1.1.1.2.cmml">1</mn><mo id="A2.T5.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.2.2.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.2.2.1.m1.1.1.3" xref="A2.T5.2.2.1.m1.1.1.3.cmml"><mn id="A2.T5.2.2.1.m1.1.1.3.2" xref="A2.T5.2.2.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.2.2.1.m1.1.1.3.3" xref="A2.T5.2.2.1.m1.1.1.3.3.cmml"><mo id="A2.T5.2.2.1.m1.1.1.3.3a" xref="A2.T5.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.2.2.1.m1.1.1.3.3.2" xref="A2.T5.2.2.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.1.m1.1b"><apply id="A2.T5.2.2.1.m1.1.1.cmml" xref="A2.T5.2.2.1.m1.1.1"><times id="A2.T5.2.2.1.m1.1.1.1.cmml" xref="A2.T5.2.2.1.m1.1.1.1"></times><cn id="A2.T5.2.2.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.2.2.1.m1.1.1.2">1</cn><apply id="A2.T5.2.2.1.m1.1.1.3.cmml" xref="A2.T5.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.2.2.1.m1.1.1.3.1.cmml" xref="A2.T5.2.2.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.2.2.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.2.2.1.m1.1.1.3.2">10</cn><apply id="A2.T5.2.2.1.m1.1.1.3.3.cmml" xref="A2.T5.2.2.1.m1.1.1.3.3"><minus id="A2.T5.2.2.1.m1.1.1.3.3.1.cmml" xref="A2.T5.2.2.1.m1.1.1.3.3"></minus><cn id="A2.T5.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.2.2.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.1.m1.1c">1\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.3.3.2">FoX (LLaMA)</th>
<td class="ltx_td ltx_align_left" id="A2.T5.3.3.1"><math alttext="1\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.3.3.1.m1.1"><semantics id="A2.T5.3.3.1.m1.1a"><mrow id="A2.T5.3.3.1.m1.1.1" xref="A2.T5.3.3.1.m1.1.1.cmml"><mn id="A2.T5.3.3.1.m1.1.1.2" xref="A2.T5.3.3.1.m1.1.1.2.cmml">1</mn><mo id="A2.T5.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.3.3.1.m1.1.1.3" xref="A2.T5.3.3.1.m1.1.1.3.cmml"><mn id="A2.T5.3.3.1.m1.1.1.3.2" xref="A2.T5.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.3.3.1.m1.1.1.3.3" xref="A2.T5.3.3.1.m1.1.1.3.3.cmml"><mo id="A2.T5.3.3.1.m1.1.1.3.3a" xref="A2.T5.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.3.3.1.m1.1.1.3.3.2" xref="A2.T5.3.3.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.1.m1.1b"><apply id="A2.T5.3.3.1.m1.1.1.cmml" xref="A2.T5.3.3.1.m1.1.1"><times id="A2.T5.3.3.1.m1.1.1.1.cmml" xref="A2.T5.3.3.1.m1.1.1.1"></times><cn id="A2.T5.3.3.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.3.3.1.m1.1.1.2">1</cn><apply id="A2.T5.3.3.1.m1.1.1.3.cmml" xref="A2.T5.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.3.3.1.m1.1.1.3.1.cmml" xref="A2.T5.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.3.3.1.m1.1.1.3.2">10</cn><apply id="A2.T5.3.3.1.m1.1.1.3.3.cmml" xref="A2.T5.3.3.1.m1.1.1.3.3"><minus id="A2.T5.3.3.1.m1.1.1.3.3.1.cmml" xref="A2.T5.3.3.1.m1.1.1.3.3"></minus><cn id="A2.T5.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.3.3.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.1.m1.1c">1\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.4.4.2">Transformer (LLaMA)</th>
<td class="ltx_td ltx_align_left" id="A2.T5.4.4.1"><math alttext="5\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T5.4.4.1.m1.1"><semantics id="A2.T5.4.4.1.m1.1a"><mrow id="A2.T5.4.4.1.m1.1.1" xref="A2.T5.4.4.1.m1.1.1.cmml"><mn id="A2.T5.4.4.1.m1.1.1.2" xref="A2.T5.4.4.1.m1.1.1.2.cmml">5</mn><mo id="A2.T5.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.4.4.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.4.4.1.m1.1.1.3" xref="A2.T5.4.4.1.m1.1.1.3.cmml"><mn id="A2.T5.4.4.1.m1.1.1.3.2" xref="A2.T5.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.4.4.1.m1.1.1.3.3" xref="A2.T5.4.4.1.m1.1.1.3.3.cmml"><mo id="A2.T5.4.4.1.m1.1.1.3.3a" xref="A2.T5.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.4.4.1.m1.1.1.3.3.2" xref="A2.T5.4.4.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.4.4.1.m1.1b"><apply id="A2.T5.4.4.1.m1.1.1.cmml" xref="A2.T5.4.4.1.m1.1.1"><times id="A2.T5.4.4.1.m1.1.1.1.cmml" xref="A2.T5.4.4.1.m1.1.1.1"></times><cn id="A2.T5.4.4.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.4.4.1.m1.1.1.2">5</cn><apply id="A2.T5.4.4.1.m1.1.1.3.cmml" xref="A2.T5.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.4.4.1.m1.1.1.3.1.cmml" xref="A2.T5.4.4.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.4.4.1.m1.1.1.3.2">10</cn><apply id="A2.T5.4.4.1.m1.1.1.3.3.cmml" xref="A2.T5.4.4.1.m1.1.1.3.3"><minus id="A2.T5.4.4.1.m1.1.1.3.3.1.cmml" xref="A2.T5.4.4.1.m1.1.1.3.3"></minus><cn id="A2.T5.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.4.4.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.4.1.m1.1c">5\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.4.1.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.5.5.2">Mamba-2</th>
<td class="ltx_td ltx_align_left" id="A2.T5.5.5.1"><math alttext="2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.5.5.1.m1.1"><semantics id="A2.T5.5.5.1.m1.1a"><mrow id="A2.T5.5.5.1.m1.1.1" xref="A2.T5.5.5.1.m1.1.1.cmml"><mn id="A2.T5.5.5.1.m1.1.1.2" xref="A2.T5.5.5.1.m1.1.1.2.cmml">2</mn><mo id="A2.T5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.5.5.1.m1.1.1.3" xref="A2.T5.5.5.1.m1.1.1.3.cmml"><mn id="A2.T5.5.5.1.m1.1.1.3.2" xref="A2.T5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.5.5.1.m1.1.1.3.3" xref="A2.T5.5.5.1.m1.1.1.3.3.cmml"><mo id="A2.T5.5.5.1.m1.1.1.3.3a" xref="A2.T5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.5.5.1.m1.1.1.3.3.2" xref="A2.T5.5.5.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.5.5.1.m1.1b"><apply id="A2.T5.5.5.1.m1.1.1.cmml" xref="A2.T5.5.5.1.m1.1.1"><times id="A2.T5.5.5.1.m1.1.1.1.cmml" xref="A2.T5.5.5.1.m1.1.1.1"></times><cn id="A2.T5.5.5.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.5.5.1.m1.1.1.2">2</cn><apply id="A2.T5.5.5.1.m1.1.1.3.cmml" xref="A2.T5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.5.5.1.m1.1.1.3.1.cmml" xref="A2.T5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.5.5.1.m1.1.1.3.2">10</cn><apply id="A2.T5.5.5.1.m1.1.1.3.3.cmml" xref="A2.T5.5.5.1.m1.1.1.3.3"><minus id="A2.T5.5.5.1.m1.1.1.3.3.1.cmml" xref="A2.T5.5.5.1.m1.1.1.3.3"></minus><cn id="A2.T5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.5.5.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.5.1.m1.1c">2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.5.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T5.6.6.2">HGRN2</th>
<td class="ltx_td ltx_align_left" id="A2.T5.6.6.1"><math alttext="2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.6.6.1.m1.1"><semantics id="A2.T5.6.6.1.m1.1a"><mrow id="A2.T5.6.6.1.m1.1.1" xref="A2.T5.6.6.1.m1.1.1.cmml"><mn id="A2.T5.6.6.1.m1.1.1.2" xref="A2.T5.6.6.1.m1.1.1.2.cmml">2</mn><mo id="A2.T5.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.6.6.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.6.6.1.m1.1.1.3" xref="A2.T5.6.6.1.m1.1.1.3.cmml"><mn id="A2.T5.6.6.1.m1.1.1.3.2" xref="A2.T5.6.6.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.6.6.1.m1.1.1.3.3" xref="A2.T5.6.6.1.m1.1.1.3.3.cmml"><mo id="A2.T5.6.6.1.m1.1.1.3.3a" xref="A2.T5.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.6.6.1.m1.1.1.3.3.2" xref="A2.T5.6.6.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.6.6.1.m1.1b"><apply id="A2.T5.6.6.1.m1.1.1.cmml" xref="A2.T5.6.6.1.m1.1.1"><times id="A2.T5.6.6.1.m1.1.1.1.cmml" xref="A2.T5.6.6.1.m1.1.1.1"></times><cn id="A2.T5.6.6.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.6.6.1.m1.1.1.2">2</cn><apply id="A2.T5.6.6.1.m1.1.1.3.cmml" xref="A2.T5.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.6.6.1.m1.1.1.3.1.cmml" xref="A2.T5.6.6.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.6.6.1.m1.1.1.3.2">10</cn><apply id="A2.T5.6.6.1.m1.1.1.3.3.cmml" xref="A2.T5.6.6.1.m1.1.1.3.3"><minus id="A2.T5.6.6.1.m1.1.1.3.3.1.cmml" xref="A2.T5.6.6.1.m1.1.1.3.3"></minus><cn id="A2.T5.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.6.6.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.6.6.1.m1.1c">2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.6.6.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T5.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T5.7.7.2">DeltaNet</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T5.7.7.1"><math alttext="1\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T5.7.7.1.m1.1"><semantics id="A2.T5.7.7.1.m1.1a"><mrow id="A2.T5.7.7.1.m1.1.1" xref="A2.T5.7.7.1.m1.1.1.cmml"><mn id="A2.T5.7.7.1.m1.1.1.2" xref="A2.T5.7.7.1.m1.1.1.2.cmml">1</mn><mo id="A2.T5.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T5.7.7.1.m1.1.1.1.cmml">×</mo><msup id="A2.T5.7.7.1.m1.1.1.3" xref="A2.T5.7.7.1.m1.1.1.3.cmml"><mn id="A2.T5.7.7.1.m1.1.1.3.2" xref="A2.T5.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T5.7.7.1.m1.1.1.3.3" xref="A2.T5.7.7.1.m1.1.1.3.3.cmml"><mo id="A2.T5.7.7.1.m1.1.1.3.3a" xref="A2.T5.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T5.7.7.1.m1.1.1.3.3.2" xref="A2.T5.7.7.1.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.7.7.1.m1.1b"><apply id="A2.T5.7.7.1.m1.1.1.cmml" xref="A2.T5.7.7.1.m1.1.1"><times id="A2.T5.7.7.1.m1.1.1.1.cmml" xref="A2.T5.7.7.1.m1.1.1.1"></times><cn id="A2.T5.7.7.1.m1.1.1.2.cmml" type="integer" xref="A2.T5.7.7.1.m1.1.1.2">1</cn><apply id="A2.T5.7.7.1.m1.1.1.3.cmml" xref="A2.T5.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T5.7.7.1.m1.1.1.3.1.cmml" xref="A2.T5.7.7.1.m1.1.1.3">superscript</csymbol><cn id="A2.T5.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T5.7.7.1.m1.1.1.3.2">10</cn><apply id="A2.T5.7.7.1.m1.1.1.3.3.cmml" xref="A2.T5.7.7.1.m1.1.1.3.3"><minus id="A2.T5.7.7.1.m1.1.1.3.3.1.cmml" xref="A2.T5.7.7.1.m1.1.1.3.3"></minus><cn id="A2.T5.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T5.7.7.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.7.7.1.m1.1c">1\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.7.7.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the peak learning rates used for various language models in the main experiments.  All models used in the main experiments had 760 million parameters and were trained on 48 billion tokens.  The learning rates were determined through a hyperparameter search.  The search involved testing various learning rates, each multiplied by 1, 2, and 5, which are presented in scientific notation using a power of 10 (10<sup>i</sup>, 2 × 10<sup>i</sup>, and 5 × 10<sup>i</sup>, where i is an integer representing a different magnitude of the learning rate).
> <details>
> <summary>read the caption</summary>
> Table 5: Peak learning rates for different models for the 760M-parameter/48B-token main experiments. These are tuned using a grid {1×10i,2×10i,5×10i}1superscript10𝑖2superscript10𝑖5superscript10𝑖\{1\times 10^{i},2\times 10^{i},5\times 10^{i}\}{ 1 × 10 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT , 2 × 10 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT , 5 × 10 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT } with different values of i𝑖iitalic_i.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.14.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T6.14.14.15.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.14.14.15.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.14.14.15.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.14.14.15.1.2.1">Params</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.14.14.15.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.14.14.15.1.3.1">Forward FLOPs/token</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.14.14.15.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.14.14.15.1.4.1">Formula for FLOPs/token</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.14.14.15.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.14.14.15.1.5.1">Throughput (tokens/sec)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T6.2.2.2.3">FoX (Pro)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.2.4">759M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.1.1"><math alttext="2.72\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.1.m1.1a"><mrow id="A2.T6.1.1.1.1.m1.1.1" xref="A2.T6.1.1.1.1.m1.1.1.cmml"><mn id="A2.T6.1.1.1.1.m1.1.1.2" xref="A2.T6.1.1.1.1.m1.1.1.2.cmml">2.72</mn><mo id="A2.T6.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.1.1.1.1.m1.1.1.3" xref="A2.T6.1.1.1.1.m1.1.1.3.cmml"><mn id="A2.T6.1.1.1.1.m1.1.1.3.2" xref="A2.T6.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.1.1.1.1.m1.1.1.3.3" xref="A2.T6.1.1.1.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.m1.1b"><apply id="A2.T6.1.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1"><times id="A2.T6.1.1.1.1.m1.1.1.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1.1"></times><cn id="A2.T6.1.1.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.1.1.1.1.m1.1.1.2">2.72</cn><apply id="A2.T6.1.1.1.1.m1.1.1.3.cmml" xref="A2.T6.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.1.1.1.1.m1.1.1.3.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.1.1.1.1.m1.1.1.3.2">10</cn><cn id="A2.T6.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.1.1.1.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.m1.1c">2.72\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.m1.1d">2.72 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.2.2"><math alttext="2N+2n_{\text{layer}}d_{\text{model}}L" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.m1.1"><semantics id="A2.T6.2.2.2.2.m1.1a"><mrow id="A2.T6.2.2.2.2.m1.1.1" xref="A2.T6.2.2.2.2.m1.1.1.cmml"><mrow id="A2.T6.2.2.2.2.m1.1.1.2" xref="A2.T6.2.2.2.2.m1.1.1.2.cmml"><mn id="A2.T6.2.2.2.2.m1.1.1.2.2" xref="A2.T6.2.2.2.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.2.2.2.2.m1.1.1.2.1" xref="A2.T6.2.2.2.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.2.2.2.2.m1.1.1.2.3" xref="A2.T6.2.2.2.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.2.2.2.2.m1.1.1.1" xref="A2.T6.2.2.2.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.2.2.2.2.m1.1.1.3" xref="A2.T6.2.2.2.2.m1.1.1.3.cmml"><mn id="A2.T6.2.2.2.2.m1.1.1.3.2" xref="A2.T6.2.2.2.2.m1.1.1.3.2.cmml">2</mn><mo id="A2.T6.2.2.2.2.m1.1.1.3.1" xref="A2.T6.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.2.2.2.2.m1.1.1.3.3" xref="A2.T6.2.2.2.2.m1.1.1.3.3.cmml"><mi id="A2.T6.2.2.2.2.m1.1.1.3.3.2" xref="A2.T6.2.2.2.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.2.2.2.2.m1.1.1.3.3.3" xref="A2.T6.2.2.2.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.2.2.2.2.m1.1.1.3.1a" xref="A2.T6.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.2.2.2.2.m1.1.1.3.4" xref="A2.T6.2.2.2.2.m1.1.1.3.4.cmml"><mi id="A2.T6.2.2.2.2.m1.1.1.3.4.2" xref="A2.T6.2.2.2.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.2.2.2.2.m1.1.1.3.4.3" xref="A2.T6.2.2.2.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.2.2.2.2.m1.1.1.3.1b" xref="A2.T6.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T6.2.2.2.2.m1.1.1.3.5" xref="A2.T6.2.2.2.2.m1.1.1.3.5.cmml">L</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.m1.1b"><apply id="A2.T6.2.2.2.2.m1.1.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1"><plus id="A2.T6.2.2.2.2.m1.1.1.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1.1"></plus><apply id="A2.T6.2.2.2.2.m1.1.1.2.cmml" xref="A2.T6.2.2.2.2.m1.1.1.2"><times id="A2.T6.2.2.2.2.m1.1.1.2.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1.2.1"></times><cn id="A2.T6.2.2.2.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.2.2.2.2.m1.1.1.2.2">2</cn><ci id="A2.T6.2.2.2.2.m1.1.1.2.3.cmml" xref="A2.T6.2.2.2.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.2.2.2.2.m1.1.1.3.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3"><times id="A2.T6.2.2.2.2.m1.1.1.3.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.1"></times><cn id="A2.T6.2.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.2.2.2.2.m1.1.1.3.2">2</cn><apply id="A2.T6.2.2.2.2.m1.1.1.3.3.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.2.2.2.2.m1.1.1.3.3.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.2.2.2.2.m1.1.1.3.3.2.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.2.2.2.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.3.3"><mtext id="A2.T6.2.2.2.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.2.2.2.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.2.2.2.2.m1.1.1.3.4.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.2.2.2.2.m1.1.1.3.4.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.2.2.2.2.m1.1.1.3.4.2.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.2.2.2.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.4.3"><mtext id="A2.T6.2.2.2.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.2.2.2.2.m1.1.1.3.4.3">model</mtext></ci></apply><ci id="A2.T6.2.2.2.2.m1.1.1.3.5.cmml" xref="A2.T6.2.2.2.2.m1.1.1.3.5">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.m1.1c">2N+2n_{\text{layer}}d_{\text{model}}L</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.m1.1d">2 italic_N + 2 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.2.5">27k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.4.4.4.3">Transformer (Pro)</td>
<td class="ltx_td ltx_align_left" id="A2.T6.4.4.4.4">757M</td>
<td class="ltx_td ltx_align_left" id="A2.T6.3.3.3.1"><math alttext="2.72\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.3.3.3.1.m1.1"><semantics id="A2.T6.3.3.3.1.m1.1a"><mrow id="A2.T6.3.3.3.1.m1.1.1" xref="A2.T6.3.3.3.1.m1.1.1.cmml"><mn id="A2.T6.3.3.3.1.m1.1.1.2" xref="A2.T6.3.3.3.1.m1.1.1.2.cmml">2.72</mn><mo id="A2.T6.3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.3.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.3.3.3.1.m1.1.1.3" xref="A2.T6.3.3.3.1.m1.1.1.3.cmml"><mn id="A2.T6.3.3.3.1.m1.1.1.3.2" xref="A2.T6.3.3.3.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.3.3.3.1.m1.1.1.3.3" xref="A2.T6.3.3.3.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.1.m1.1b"><apply id="A2.T6.3.3.3.1.m1.1.1.cmml" xref="A2.T6.3.3.3.1.m1.1.1"><times id="A2.T6.3.3.3.1.m1.1.1.1.cmml" xref="A2.T6.3.3.3.1.m1.1.1.1"></times><cn id="A2.T6.3.3.3.1.m1.1.1.2.cmml" type="float" xref="A2.T6.3.3.3.1.m1.1.1.2">2.72</cn><apply id="A2.T6.3.3.3.1.m1.1.1.3.cmml" xref="A2.T6.3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.3.3.3.1.m1.1.1.3.1.cmml" xref="A2.T6.3.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.3.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.3.3.3.1.m1.1.1.3.2">10</cn><cn id="A2.T6.3.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.3.3.3.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.1.m1.1c">2.72\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.1.m1.1d">2.72 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.4.4.4.2"><math alttext="2N+2n_{\text{layer}}d_{\text{model}}L" class="ltx_Math" display="inline" id="A2.T6.4.4.4.2.m1.1"><semantics id="A2.T6.4.4.4.2.m1.1a"><mrow id="A2.T6.4.4.4.2.m1.1.1" xref="A2.T6.4.4.4.2.m1.1.1.cmml"><mrow id="A2.T6.4.4.4.2.m1.1.1.2" xref="A2.T6.4.4.4.2.m1.1.1.2.cmml"><mn id="A2.T6.4.4.4.2.m1.1.1.2.2" xref="A2.T6.4.4.4.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.4.4.4.2.m1.1.1.2.1" xref="A2.T6.4.4.4.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.4.4.4.2.m1.1.1.2.3" xref="A2.T6.4.4.4.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.4.4.4.2.m1.1.1.1" xref="A2.T6.4.4.4.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.4.4.4.2.m1.1.1.3" xref="A2.T6.4.4.4.2.m1.1.1.3.cmml"><mn id="A2.T6.4.4.4.2.m1.1.1.3.2" xref="A2.T6.4.4.4.2.m1.1.1.3.2.cmml">2</mn><mo id="A2.T6.4.4.4.2.m1.1.1.3.1" xref="A2.T6.4.4.4.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.4.4.4.2.m1.1.1.3.3" xref="A2.T6.4.4.4.2.m1.1.1.3.3.cmml"><mi id="A2.T6.4.4.4.2.m1.1.1.3.3.2" xref="A2.T6.4.4.4.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.4.4.4.2.m1.1.1.3.3.3" xref="A2.T6.4.4.4.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.4.4.4.2.m1.1.1.3.1a" xref="A2.T6.4.4.4.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.4.4.4.2.m1.1.1.3.4" xref="A2.T6.4.4.4.2.m1.1.1.3.4.cmml"><mi id="A2.T6.4.4.4.2.m1.1.1.3.4.2" xref="A2.T6.4.4.4.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.4.4.4.2.m1.1.1.3.4.3" xref="A2.T6.4.4.4.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.4.4.4.2.m1.1.1.3.1b" xref="A2.T6.4.4.4.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T6.4.4.4.2.m1.1.1.3.5" xref="A2.T6.4.4.4.2.m1.1.1.3.5.cmml">L</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.2.m1.1b"><apply id="A2.T6.4.4.4.2.m1.1.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1"><plus id="A2.T6.4.4.4.2.m1.1.1.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1.1"></plus><apply id="A2.T6.4.4.4.2.m1.1.1.2.cmml" xref="A2.T6.4.4.4.2.m1.1.1.2"><times id="A2.T6.4.4.4.2.m1.1.1.2.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1.2.1"></times><cn id="A2.T6.4.4.4.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.4.4.4.2.m1.1.1.2.2">2</cn><ci id="A2.T6.4.4.4.2.m1.1.1.2.3.cmml" xref="A2.T6.4.4.4.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.4.4.4.2.m1.1.1.3.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3"><times id="A2.T6.4.4.4.2.m1.1.1.3.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.1"></times><cn id="A2.T6.4.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.4.4.4.2.m1.1.1.3.2">2</cn><apply id="A2.T6.4.4.4.2.m1.1.1.3.3.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.4.4.4.2.m1.1.1.3.3.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.4.4.4.2.m1.1.1.3.3.2.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.4.4.4.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.3.3"><mtext id="A2.T6.4.4.4.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.4.4.4.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.4.4.4.2.m1.1.1.3.4.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.4.4.4.2.m1.1.1.3.4.1.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.4.4.4.2.m1.1.1.3.4.2.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.4.4.4.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.4.3"><mtext id="A2.T6.4.4.4.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.4.4.4.2.m1.1.1.3.4.3">model</mtext></ci></apply><ci id="A2.T6.4.4.4.2.m1.1.1.3.5.cmml" xref="A2.T6.4.4.4.2.m1.1.1.3.5">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.2.m1.1c">2N+2n_{\text{layer}}d_{\text{model}}L</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.2.m1.1d">2 italic_N + 2 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.4.4.4.5">30k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.6.6.6.3">FoX (LLaMA)</td>
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.6.4">757M</td>
<td class="ltx_td ltx_align_left" id="A2.T6.5.5.5.1"><math alttext="2.72\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.5.5.5.1.m1.1"><semantics id="A2.T6.5.5.5.1.m1.1a"><mrow id="A2.T6.5.5.5.1.m1.1.1" xref="A2.T6.5.5.5.1.m1.1.1.cmml"><mn id="A2.T6.5.5.5.1.m1.1.1.2" xref="A2.T6.5.5.5.1.m1.1.1.2.cmml">2.72</mn><mo id="A2.T6.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.5.5.5.1.m1.1.1.3" xref="A2.T6.5.5.5.1.m1.1.1.3.cmml"><mn id="A2.T6.5.5.5.1.m1.1.1.3.2" xref="A2.T6.5.5.5.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.5.5.5.1.m1.1.1.3.3" xref="A2.T6.5.5.5.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.1.m1.1b"><apply id="A2.T6.5.5.5.1.m1.1.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1"><times id="A2.T6.5.5.5.1.m1.1.1.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1.1"></times><cn id="A2.T6.5.5.5.1.m1.1.1.2.cmml" type="float" xref="A2.T6.5.5.5.1.m1.1.1.2">2.72</cn><apply id="A2.T6.5.5.5.1.m1.1.1.3.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.5.5.5.1.m1.1.1.3.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.1.1.3.2">10</cn><cn id="A2.T6.5.5.5.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.1.m1.1c">2.72\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.1.m1.1d">2.72 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.6.2"><math alttext="2N+2n_{\text{layer}}d_{\text{model}}L" class="ltx_Math" display="inline" id="A2.T6.6.6.6.2.m1.1"><semantics id="A2.T6.6.6.6.2.m1.1a"><mrow id="A2.T6.6.6.6.2.m1.1.1" xref="A2.T6.6.6.6.2.m1.1.1.cmml"><mrow id="A2.T6.6.6.6.2.m1.1.1.2" xref="A2.T6.6.6.6.2.m1.1.1.2.cmml"><mn id="A2.T6.6.6.6.2.m1.1.1.2.2" xref="A2.T6.6.6.6.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.6.6.6.2.m1.1.1.2.1" xref="A2.T6.6.6.6.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.6.6.6.2.m1.1.1.2.3" xref="A2.T6.6.6.6.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.6.6.6.2.m1.1.1.1" xref="A2.T6.6.6.6.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.6.6.6.2.m1.1.1.3" xref="A2.T6.6.6.6.2.m1.1.1.3.cmml"><mn id="A2.T6.6.6.6.2.m1.1.1.3.2" xref="A2.T6.6.6.6.2.m1.1.1.3.2.cmml">2</mn><mo id="A2.T6.6.6.6.2.m1.1.1.3.1" xref="A2.T6.6.6.6.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.6.6.6.2.m1.1.1.3.3" xref="A2.T6.6.6.6.2.m1.1.1.3.3.cmml"><mi id="A2.T6.6.6.6.2.m1.1.1.3.3.2" xref="A2.T6.6.6.6.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.6.6.6.2.m1.1.1.3.3.3" xref="A2.T6.6.6.6.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.6.6.6.2.m1.1.1.3.1a" xref="A2.T6.6.6.6.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.6.6.6.2.m1.1.1.3.4" xref="A2.T6.6.6.6.2.m1.1.1.3.4.cmml"><mi id="A2.T6.6.6.6.2.m1.1.1.3.4.2" xref="A2.T6.6.6.6.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.6.6.6.2.m1.1.1.3.4.3" xref="A2.T6.6.6.6.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.6.6.6.2.m1.1.1.3.1b" xref="A2.T6.6.6.6.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T6.6.6.6.2.m1.1.1.3.5" xref="A2.T6.6.6.6.2.m1.1.1.3.5.cmml">L</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.2.m1.1b"><apply id="A2.T6.6.6.6.2.m1.1.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1"><plus id="A2.T6.6.6.6.2.m1.1.1.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1.1"></plus><apply id="A2.T6.6.6.6.2.m1.1.1.2.cmml" xref="A2.T6.6.6.6.2.m1.1.1.2"><times id="A2.T6.6.6.6.2.m1.1.1.2.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1.2.1"></times><cn id="A2.T6.6.6.6.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.6.6.6.2.m1.1.1.2.2">2</cn><ci id="A2.T6.6.6.6.2.m1.1.1.2.3.cmml" xref="A2.T6.6.6.6.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.6.6.6.2.m1.1.1.3.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3"><times id="A2.T6.6.6.6.2.m1.1.1.3.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.1"></times><cn id="A2.T6.6.6.6.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.6.6.6.2.m1.1.1.3.2">2</cn><apply id="A2.T6.6.6.6.2.m1.1.1.3.3.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.6.6.6.2.m1.1.1.3.3.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.6.6.6.2.m1.1.1.3.3.2.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.6.6.6.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.3.3"><mtext id="A2.T6.6.6.6.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.6.6.6.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.6.6.6.2.m1.1.1.3.4.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.6.6.6.2.m1.1.1.3.4.1.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.6.6.6.2.m1.1.1.3.4.2.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.6.6.6.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.4.3"><mtext id="A2.T6.6.6.6.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.6.6.6.2.m1.1.1.3.4.3">model</mtext></ci></apply><ci id="A2.T6.6.6.6.2.m1.1.1.3.5.cmml" xref="A2.T6.6.6.6.2.m1.1.1.3.5">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.2.m1.1c">2N+2n_{\text{layer}}d_{\text{model}}L</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.2.m1.1d">2 italic_N + 2 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.6.6.6.5">30k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.8.8.8.3">Transformer (LLaMA)</td>
<td class="ltx_td ltx_align_left" id="A2.T6.8.8.8.4">756M</td>
<td class="ltx_td ltx_align_left" id="A2.T6.7.7.7.1"><math alttext="2.72\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.7.7.7.1.m1.1"><semantics id="A2.T6.7.7.7.1.m1.1a"><mrow id="A2.T6.7.7.7.1.m1.1.1" xref="A2.T6.7.7.7.1.m1.1.1.cmml"><mn id="A2.T6.7.7.7.1.m1.1.1.2" xref="A2.T6.7.7.7.1.m1.1.1.2.cmml">2.72</mn><mo id="A2.T6.7.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.7.7.7.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.7.7.7.1.m1.1.1.3" xref="A2.T6.7.7.7.1.m1.1.1.3.cmml"><mn id="A2.T6.7.7.7.1.m1.1.1.3.2" xref="A2.T6.7.7.7.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.7.7.7.1.m1.1.1.3.3" xref="A2.T6.7.7.7.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.7.7.7.1.m1.1b"><apply id="A2.T6.7.7.7.1.m1.1.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1"><times id="A2.T6.7.7.7.1.m1.1.1.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1.1"></times><cn id="A2.T6.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A2.T6.7.7.7.1.m1.1.1.2">2.72</cn><apply id="A2.T6.7.7.7.1.m1.1.1.3.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.7.7.7.1.m1.1.1.3.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.7.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.7.7.7.1.m1.1.1.3.2">10</cn><cn id="A2.T6.7.7.7.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.7.7.7.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.7.7.7.1.m1.1c">2.72\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.7.7.7.1.m1.1d">2.72 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.8.8.8.2"><math alttext="2N+2n_{\text{layer}}d_{\text{model}}L" class="ltx_Math" display="inline" id="A2.T6.8.8.8.2.m1.1"><semantics id="A2.T6.8.8.8.2.m1.1a"><mrow id="A2.T6.8.8.8.2.m1.1.1" xref="A2.T6.8.8.8.2.m1.1.1.cmml"><mrow id="A2.T6.8.8.8.2.m1.1.1.2" xref="A2.T6.8.8.8.2.m1.1.1.2.cmml"><mn id="A2.T6.8.8.8.2.m1.1.1.2.2" xref="A2.T6.8.8.8.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.8.8.8.2.m1.1.1.2.1" xref="A2.T6.8.8.8.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.8.8.8.2.m1.1.1.2.3" xref="A2.T6.8.8.8.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.8.8.8.2.m1.1.1.1" xref="A2.T6.8.8.8.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.8.8.8.2.m1.1.1.3" xref="A2.T6.8.8.8.2.m1.1.1.3.cmml"><mn id="A2.T6.8.8.8.2.m1.1.1.3.2" xref="A2.T6.8.8.8.2.m1.1.1.3.2.cmml">2</mn><mo id="A2.T6.8.8.8.2.m1.1.1.3.1" xref="A2.T6.8.8.8.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.8.8.8.2.m1.1.1.3.3" xref="A2.T6.8.8.8.2.m1.1.1.3.3.cmml"><mi id="A2.T6.8.8.8.2.m1.1.1.3.3.2" xref="A2.T6.8.8.8.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.8.8.8.2.m1.1.1.3.3.3" xref="A2.T6.8.8.8.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.8.8.8.2.m1.1.1.3.1a" xref="A2.T6.8.8.8.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.8.8.8.2.m1.1.1.3.4" xref="A2.T6.8.8.8.2.m1.1.1.3.4.cmml"><mi id="A2.T6.8.8.8.2.m1.1.1.3.4.2" xref="A2.T6.8.8.8.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.8.8.8.2.m1.1.1.3.4.3" xref="A2.T6.8.8.8.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.8.8.8.2.m1.1.1.3.1b" xref="A2.T6.8.8.8.2.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T6.8.8.8.2.m1.1.1.3.5" xref="A2.T6.8.8.8.2.m1.1.1.3.5.cmml">L</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.8.8.8.2.m1.1b"><apply id="A2.T6.8.8.8.2.m1.1.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1"><plus id="A2.T6.8.8.8.2.m1.1.1.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1.1"></plus><apply id="A2.T6.8.8.8.2.m1.1.1.2.cmml" xref="A2.T6.8.8.8.2.m1.1.1.2"><times id="A2.T6.8.8.8.2.m1.1.1.2.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1.2.1"></times><cn id="A2.T6.8.8.8.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.8.8.8.2.m1.1.1.2.2">2</cn><ci id="A2.T6.8.8.8.2.m1.1.1.2.3.cmml" xref="A2.T6.8.8.8.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.8.8.8.2.m1.1.1.3.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3"><times id="A2.T6.8.8.8.2.m1.1.1.3.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.1"></times><cn id="A2.T6.8.8.8.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.8.8.8.2.m1.1.1.3.2">2</cn><apply id="A2.T6.8.8.8.2.m1.1.1.3.3.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.8.8.8.2.m1.1.1.3.3.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.8.8.8.2.m1.1.1.3.3.2.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.8.8.8.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.3.3"><mtext id="A2.T6.8.8.8.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.8.8.8.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.8.8.8.2.m1.1.1.3.4.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.8.8.8.2.m1.1.1.3.4.1.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.8.8.8.2.m1.1.1.3.4.2.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.8.8.8.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.4.3"><mtext id="A2.T6.8.8.8.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.8.8.8.2.m1.1.1.3.4.3">model</mtext></ci></apply><ci id="A2.T6.8.8.8.2.m1.1.1.3.5.cmml" xref="A2.T6.8.8.8.2.m1.1.1.3.5">𝐿</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.8.8.8.2.m1.1c">2N+2n_{\text{layer}}d_{\text{model}}L</annotation><annotation encoding="application/x-llamapun" id="A2.T6.8.8.8.2.m1.1d">2 italic_N + 2 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.8.8.8.5">38k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.10.10.10.3">Mamba-2</td>
<td class="ltx_td ltx_align_left" id="A2.T6.10.10.10.4">780M</td>
<td class="ltx_td ltx_align_left" id="A2.T6.9.9.9.1"><math alttext="1.65\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.9.9.9.1.m1.1"><semantics id="A2.T6.9.9.9.1.m1.1a"><mrow id="A2.T6.9.9.9.1.m1.1.1" xref="A2.T6.9.9.9.1.m1.1.1.cmml"><mn id="A2.T6.9.9.9.1.m1.1.1.2" xref="A2.T6.9.9.9.1.m1.1.1.2.cmml">1.65</mn><mo id="A2.T6.9.9.9.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.9.9.9.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.9.9.9.1.m1.1.1.3" xref="A2.T6.9.9.9.1.m1.1.1.3.cmml"><mn id="A2.T6.9.9.9.1.m1.1.1.3.2" xref="A2.T6.9.9.9.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.9.9.9.1.m1.1.1.3.3" xref="A2.T6.9.9.9.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.9.9.9.1.m1.1b"><apply id="A2.T6.9.9.9.1.m1.1.1.cmml" xref="A2.T6.9.9.9.1.m1.1.1"><times id="A2.T6.9.9.9.1.m1.1.1.1.cmml" xref="A2.T6.9.9.9.1.m1.1.1.1"></times><cn id="A2.T6.9.9.9.1.m1.1.1.2.cmml" type="float" xref="A2.T6.9.9.9.1.m1.1.1.2">1.65</cn><apply id="A2.T6.9.9.9.1.m1.1.1.3.cmml" xref="A2.T6.9.9.9.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.9.9.9.1.m1.1.1.3.1.cmml" xref="A2.T6.9.9.9.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.9.9.9.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.9.9.9.1.m1.1.1.3.2">10</cn><cn id="A2.T6.9.9.9.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.9.9.9.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.9.9.9.1.m1.1c">1.65\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.9.9.9.1.m1.1d">1.65 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.10.10.10.2"><math alttext="2N+20n_{\text{layer}}d_{\text{model}}d_{\text{state}}" class="ltx_Math" display="inline" id="A2.T6.10.10.10.2.m1.1"><semantics id="A2.T6.10.10.10.2.m1.1a"><mrow id="A2.T6.10.10.10.2.m1.1.1" xref="A2.T6.10.10.10.2.m1.1.1.cmml"><mrow id="A2.T6.10.10.10.2.m1.1.1.2" xref="A2.T6.10.10.10.2.m1.1.1.2.cmml"><mn id="A2.T6.10.10.10.2.m1.1.1.2.2" xref="A2.T6.10.10.10.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.10.10.10.2.m1.1.1.2.1" xref="A2.T6.10.10.10.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.10.10.10.2.m1.1.1.2.3" xref="A2.T6.10.10.10.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.10.10.10.2.m1.1.1.1" xref="A2.T6.10.10.10.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.10.10.10.2.m1.1.1.3" xref="A2.T6.10.10.10.2.m1.1.1.3.cmml"><mn id="A2.T6.10.10.10.2.m1.1.1.3.2" xref="A2.T6.10.10.10.2.m1.1.1.3.2.cmml">20</mn><mo id="A2.T6.10.10.10.2.m1.1.1.3.1" xref="A2.T6.10.10.10.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.10.10.10.2.m1.1.1.3.3" xref="A2.T6.10.10.10.2.m1.1.1.3.3.cmml"><mi id="A2.T6.10.10.10.2.m1.1.1.3.3.2" xref="A2.T6.10.10.10.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.10.10.10.2.m1.1.1.3.3.3" xref="A2.T6.10.10.10.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.10.10.10.2.m1.1.1.3.1a" xref="A2.T6.10.10.10.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.10.10.10.2.m1.1.1.3.4" xref="A2.T6.10.10.10.2.m1.1.1.3.4.cmml"><mi id="A2.T6.10.10.10.2.m1.1.1.3.4.2" xref="A2.T6.10.10.10.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.10.10.10.2.m1.1.1.3.4.3" xref="A2.T6.10.10.10.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.10.10.10.2.m1.1.1.3.1b" xref="A2.T6.10.10.10.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.10.10.10.2.m1.1.1.3.5" xref="A2.T6.10.10.10.2.m1.1.1.3.5.cmml"><mi id="A2.T6.10.10.10.2.m1.1.1.3.5.2" xref="A2.T6.10.10.10.2.m1.1.1.3.5.2.cmml">d</mi><mtext id="A2.T6.10.10.10.2.m1.1.1.3.5.3" xref="A2.T6.10.10.10.2.m1.1.1.3.5.3a.cmml">state</mtext></msub></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.10.10.10.2.m1.1b"><apply id="A2.T6.10.10.10.2.m1.1.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1"><plus id="A2.T6.10.10.10.2.m1.1.1.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.1"></plus><apply id="A2.T6.10.10.10.2.m1.1.1.2.cmml" xref="A2.T6.10.10.10.2.m1.1.1.2"><times id="A2.T6.10.10.10.2.m1.1.1.2.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.2.1"></times><cn id="A2.T6.10.10.10.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.10.10.10.2.m1.1.1.2.2">2</cn><ci id="A2.T6.10.10.10.2.m1.1.1.2.3.cmml" xref="A2.T6.10.10.10.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.10.10.10.2.m1.1.1.3.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3"><times id="A2.T6.10.10.10.2.m1.1.1.3.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.1"></times><cn id="A2.T6.10.10.10.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.10.10.10.2.m1.1.1.3.2">20</cn><apply id="A2.T6.10.10.10.2.m1.1.1.3.3.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.10.10.10.2.m1.1.1.3.3.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.10.10.10.2.m1.1.1.3.3.2.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.10.10.10.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.3.3"><mtext id="A2.T6.10.10.10.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.10.10.10.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.10.10.10.2.m1.1.1.3.4.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.10.10.10.2.m1.1.1.3.4.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.10.10.10.2.m1.1.1.3.4.2.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.10.10.10.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.4.3"><mtext id="A2.T6.10.10.10.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.10.10.10.2.m1.1.1.3.4.3">model</mtext></ci></apply><apply id="A2.T6.10.10.10.2.m1.1.1.3.5.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.5"><csymbol cd="ambiguous" id="A2.T6.10.10.10.2.m1.1.1.3.5.1.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.5">subscript</csymbol><ci id="A2.T6.10.10.10.2.m1.1.1.3.5.2.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.5.2">𝑑</ci><ci id="A2.T6.10.10.10.2.m1.1.1.3.5.3a.cmml" xref="A2.T6.10.10.10.2.m1.1.1.3.5.3"><mtext id="A2.T6.10.10.10.2.m1.1.1.3.5.3.cmml" mathsize="70%" xref="A2.T6.10.10.10.2.m1.1.1.3.5.3">state</mtext></ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.10.10.10.2.m1.1c">2N+20n_{\text{layer}}d_{\text{model}}d_{\text{state}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.10.10.10.2.m1.1d">2 italic_N + 20 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT state end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.10.10.10.5">44k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T6.12.12.12.3">HGRN2</td>
<td class="ltx_td ltx_align_left" id="A2.T6.12.12.12.4">756M</td>
<td class="ltx_td ltx_align_left" id="A2.T6.11.11.11.1"><math alttext="1.54\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.11.11.11.1.m1.1"><semantics id="A2.T6.11.11.11.1.m1.1a"><mrow id="A2.T6.11.11.11.1.m1.1.1" xref="A2.T6.11.11.11.1.m1.1.1.cmml"><mn id="A2.T6.11.11.11.1.m1.1.1.2" xref="A2.T6.11.11.11.1.m1.1.1.2.cmml">1.54</mn><mo id="A2.T6.11.11.11.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.11.11.11.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.11.11.11.1.m1.1.1.3" xref="A2.T6.11.11.11.1.m1.1.1.3.cmml"><mn id="A2.T6.11.11.11.1.m1.1.1.3.2" xref="A2.T6.11.11.11.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.11.11.11.1.m1.1.1.3.3" xref="A2.T6.11.11.11.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.11.11.11.1.m1.1b"><apply id="A2.T6.11.11.11.1.m1.1.1.cmml" xref="A2.T6.11.11.11.1.m1.1.1"><times id="A2.T6.11.11.11.1.m1.1.1.1.cmml" xref="A2.T6.11.11.11.1.m1.1.1.1"></times><cn id="A2.T6.11.11.11.1.m1.1.1.2.cmml" type="float" xref="A2.T6.11.11.11.1.m1.1.1.2">1.54</cn><apply id="A2.T6.11.11.11.1.m1.1.1.3.cmml" xref="A2.T6.11.11.11.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.11.11.11.1.m1.1.1.3.1.cmml" xref="A2.T6.11.11.11.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.11.11.11.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.11.11.11.1.m1.1.1.3.2">10</cn><cn id="A2.T6.11.11.11.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.11.11.11.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.11.11.11.1.m1.1c">1.54\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.11.11.11.1.m1.1d">1.54 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.12.12.12.2"><math alttext="2N+5n_{\text{layer}}d_{\text{model}}d_{\text{head}}" class="ltx_Math" display="inline" id="A2.T6.12.12.12.2.m1.1"><semantics id="A2.T6.12.12.12.2.m1.1a"><mrow id="A2.T6.12.12.12.2.m1.1.1" xref="A2.T6.12.12.12.2.m1.1.1.cmml"><mrow id="A2.T6.12.12.12.2.m1.1.1.2" xref="A2.T6.12.12.12.2.m1.1.1.2.cmml"><mn id="A2.T6.12.12.12.2.m1.1.1.2.2" xref="A2.T6.12.12.12.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.12.12.12.2.m1.1.1.2.1" xref="A2.T6.12.12.12.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.12.12.12.2.m1.1.1.2.3" xref="A2.T6.12.12.12.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.12.12.12.2.m1.1.1.1" xref="A2.T6.12.12.12.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.12.12.12.2.m1.1.1.3" xref="A2.T6.12.12.12.2.m1.1.1.3.cmml"><mn id="A2.T6.12.12.12.2.m1.1.1.3.2" xref="A2.T6.12.12.12.2.m1.1.1.3.2.cmml">5</mn><mo id="A2.T6.12.12.12.2.m1.1.1.3.1" xref="A2.T6.12.12.12.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.12.12.12.2.m1.1.1.3.3" xref="A2.T6.12.12.12.2.m1.1.1.3.3.cmml"><mi id="A2.T6.12.12.12.2.m1.1.1.3.3.2" xref="A2.T6.12.12.12.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.12.12.12.2.m1.1.1.3.3.3" xref="A2.T6.12.12.12.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.12.12.12.2.m1.1.1.3.1a" xref="A2.T6.12.12.12.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.12.12.12.2.m1.1.1.3.4" xref="A2.T6.12.12.12.2.m1.1.1.3.4.cmml"><mi id="A2.T6.12.12.12.2.m1.1.1.3.4.2" xref="A2.T6.12.12.12.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.12.12.12.2.m1.1.1.3.4.3" xref="A2.T6.12.12.12.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.12.12.12.2.m1.1.1.3.1b" xref="A2.T6.12.12.12.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.12.12.12.2.m1.1.1.3.5" xref="A2.T6.12.12.12.2.m1.1.1.3.5.cmml"><mi id="A2.T6.12.12.12.2.m1.1.1.3.5.2" xref="A2.T6.12.12.12.2.m1.1.1.3.5.2.cmml">d</mi><mtext id="A2.T6.12.12.12.2.m1.1.1.3.5.3" xref="A2.T6.12.12.12.2.m1.1.1.3.5.3a.cmml">head</mtext></msub></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.12.12.12.2.m1.1b"><apply id="A2.T6.12.12.12.2.m1.1.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1"><plus id="A2.T6.12.12.12.2.m1.1.1.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.1"></plus><apply id="A2.T6.12.12.12.2.m1.1.1.2.cmml" xref="A2.T6.12.12.12.2.m1.1.1.2"><times id="A2.T6.12.12.12.2.m1.1.1.2.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.2.1"></times><cn id="A2.T6.12.12.12.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.12.12.12.2.m1.1.1.2.2">2</cn><ci id="A2.T6.12.12.12.2.m1.1.1.2.3.cmml" xref="A2.T6.12.12.12.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.12.12.12.2.m1.1.1.3.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3"><times id="A2.T6.12.12.12.2.m1.1.1.3.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.1"></times><cn id="A2.T6.12.12.12.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.12.12.12.2.m1.1.1.3.2">5</cn><apply id="A2.T6.12.12.12.2.m1.1.1.3.3.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.12.12.12.2.m1.1.1.3.3.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.12.12.12.2.m1.1.1.3.3.2.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.12.12.12.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.3.3"><mtext id="A2.T6.12.12.12.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.12.12.12.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.12.12.12.2.m1.1.1.3.4.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.12.12.12.2.m1.1.1.3.4.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.12.12.12.2.m1.1.1.3.4.2.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.12.12.12.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.4.3"><mtext id="A2.T6.12.12.12.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.12.12.12.2.m1.1.1.3.4.3">model</mtext></ci></apply><apply id="A2.T6.12.12.12.2.m1.1.1.3.5.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.5"><csymbol cd="ambiguous" id="A2.T6.12.12.12.2.m1.1.1.3.5.1.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.5">subscript</csymbol><ci id="A2.T6.12.12.12.2.m1.1.1.3.5.2.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.5.2">𝑑</ci><ci id="A2.T6.12.12.12.2.m1.1.1.3.5.3a.cmml" xref="A2.T6.12.12.12.2.m1.1.1.3.5.3"><mtext id="A2.T6.12.12.12.2.m1.1.1.3.5.3.cmml" mathsize="70%" xref="A2.T6.12.12.12.2.m1.1.1.3.5.3">head</mtext></ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.12.12.12.2.m1.1c">2N+5n_{\text{layer}}d_{\text{model}}d_{\text{head}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.12.12.12.2.m1.1d">2 italic_N + 5 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T6.12.12.12.5">46k</td>
</tr>
<tr class="ltx_tr" id="A2.T6.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T6.14.14.14.3">DeltaNet</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.14.14.14.4">757M</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.13.13.13.1"><math alttext="1.54\times 10^{9}" class="ltx_Math" display="inline" id="A2.T6.13.13.13.1.m1.1"><semantics id="A2.T6.13.13.13.1.m1.1a"><mrow id="A2.T6.13.13.13.1.m1.1.1" xref="A2.T6.13.13.13.1.m1.1.1.cmml"><mn id="A2.T6.13.13.13.1.m1.1.1.2" xref="A2.T6.13.13.13.1.m1.1.1.2.cmml">1.54</mn><mo id="A2.T6.13.13.13.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.13.13.13.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.13.13.13.1.m1.1.1.3" xref="A2.T6.13.13.13.1.m1.1.1.3.cmml"><mn id="A2.T6.13.13.13.1.m1.1.1.3.2" xref="A2.T6.13.13.13.1.m1.1.1.3.2.cmml">10</mn><mn id="A2.T6.13.13.13.1.m1.1.1.3.3" xref="A2.T6.13.13.13.1.m1.1.1.3.3.cmml">9</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.13.13.13.1.m1.1b"><apply id="A2.T6.13.13.13.1.m1.1.1.cmml" xref="A2.T6.13.13.13.1.m1.1.1"><times id="A2.T6.13.13.13.1.m1.1.1.1.cmml" xref="A2.T6.13.13.13.1.m1.1.1.1"></times><cn id="A2.T6.13.13.13.1.m1.1.1.2.cmml" type="float" xref="A2.T6.13.13.13.1.m1.1.1.2">1.54</cn><apply id="A2.T6.13.13.13.1.m1.1.1.3.cmml" xref="A2.T6.13.13.13.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.13.13.13.1.m1.1.1.3.1.cmml" xref="A2.T6.13.13.13.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.13.13.13.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.13.13.13.1.m1.1.1.3.2">10</cn><cn id="A2.T6.13.13.13.1.m1.1.1.3.3.cmml" type="integer" xref="A2.T6.13.13.13.1.m1.1.1.3.3">9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.13.13.13.1.m1.1c">1.54\times 10^{9}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.13.13.13.1.m1.1d">1.54 × 10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.14.14.14.2"><math alttext="2N+6n_{\text{layer}}d_{\text{model}}d_{\text{head}}" class="ltx_Math" display="inline" id="A2.T6.14.14.14.2.m1.1"><semantics id="A2.T6.14.14.14.2.m1.1a"><mrow id="A2.T6.14.14.14.2.m1.1.1" xref="A2.T6.14.14.14.2.m1.1.1.cmml"><mrow id="A2.T6.14.14.14.2.m1.1.1.2" xref="A2.T6.14.14.14.2.m1.1.1.2.cmml"><mn id="A2.T6.14.14.14.2.m1.1.1.2.2" xref="A2.T6.14.14.14.2.m1.1.1.2.2.cmml">2</mn><mo id="A2.T6.14.14.14.2.m1.1.1.2.1" xref="A2.T6.14.14.14.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A2.T6.14.14.14.2.m1.1.1.2.3" xref="A2.T6.14.14.14.2.m1.1.1.2.3.cmml">N</mi></mrow><mo id="A2.T6.14.14.14.2.m1.1.1.1" xref="A2.T6.14.14.14.2.m1.1.1.1.cmml">+</mo><mrow id="A2.T6.14.14.14.2.m1.1.1.3" xref="A2.T6.14.14.14.2.m1.1.1.3.cmml"><mn id="A2.T6.14.14.14.2.m1.1.1.3.2" xref="A2.T6.14.14.14.2.m1.1.1.3.2.cmml">6</mn><mo id="A2.T6.14.14.14.2.m1.1.1.3.1" xref="A2.T6.14.14.14.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.14.14.14.2.m1.1.1.3.3" xref="A2.T6.14.14.14.2.m1.1.1.3.3.cmml"><mi id="A2.T6.14.14.14.2.m1.1.1.3.3.2" xref="A2.T6.14.14.14.2.m1.1.1.3.3.2.cmml">n</mi><mtext id="A2.T6.14.14.14.2.m1.1.1.3.3.3" xref="A2.T6.14.14.14.2.m1.1.1.3.3.3a.cmml">layer</mtext></msub><mo id="A2.T6.14.14.14.2.m1.1.1.3.1a" xref="A2.T6.14.14.14.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.14.14.14.2.m1.1.1.3.4" xref="A2.T6.14.14.14.2.m1.1.1.3.4.cmml"><mi id="A2.T6.14.14.14.2.m1.1.1.3.4.2" xref="A2.T6.14.14.14.2.m1.1.1.3.4.2.cmml">d</mi><mtext id="A2.T6.14.14.14.2.m1.1.1.3.4.3" xref="A2.T6.14.14.14.2.m1.1.1.3.4.3a.cmml">model</mtext></msub><mo id="A2.T6.14.14.14.2.m1.1.1.3.1b" xref="A2.T6.14.14.14.2.m1.1.1.3.1.cmml">⁢</mo><msub id="A2.T6.14.14.14.2.m1.1.1.3.5" xref="A2.T6.14.14.14.2.m1.1.1.3.5.cmml"><mi id="A2.T6.14.14.14.2.m1.1.1.3.5.2" xref="A2.T6.14.14.14.2.m1.1.1.3.5.2.cmml">d</mi><mtext id="A2.T6.14.14.14.2.m1.1.1.3.5.3" xref="A2.T6.14.14.14.2.m1.1.1.3.5.3a.cmml">head</mtext></msub></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.14.14.14.2.m1.1b"><apply id="A2.T6.14.14.14.2.m1.1.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1"><plus id="A2.T6.14.14.14.2.m1.1.1.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.1"></plus><apply id="A2.T6.14.14.14.2.m1.1.1.2.cmml" xref="A2.T6.14.14.14.2.m1.1.1.2"><times id="A2.T6.14.14.14.2.m1.1.1.2.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.2.1"></times><cn id="A2.T6.14.14.14.2.m1.1.1.2.2.cmml" type="integer" xref="A2.T6.14.14.14.2.m1.1.1.2.2">2</cn><ci id="A2.T6.14.14.14.2.m1.1.1.2.3.cmml" xref="A2.T6.14.14.14.2.m1.1.1.2.3">𝑁</ci></apply><apply id="A2.T6.14.14.14.2.m1.1.1.3.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3"><times id="A2.T6.14.14.14.2.m1.1.1.3.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.1"></times><cn id="A2.T6.14.14.14.2.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.14.14.14.2.m1.1.1.3.2">6</cn><apply id="A2.T6.14.14.14.2.m1.1.1.3.3.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T6.14.14.14.2.m1.1.1.3.3.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.3">subscript</csymbol><ci id="A2.T6.14.14.14.2.m1.1.1.3.3.2.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.3.2">𝑛</ci><ci id="A2.T6.14.14.14.2.m1.1.1.3.3.3a.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.3.3"><mtext id="A2.T6.14.14.14.2.m1.1.1.3.3.3.cmml" mathsize="70%" xref="A2.T6.14.14.14.2.m1.1.1.3.3.3">layer</mtext></ci></apply><apply id="A2.T6.14.14.14.2.m1.1.1.3.4.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.4"><csymbol cd="ambiguous" id="A2.T6.14.14.14.2.m1.1.1.3.4.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.4">subscript</csymbol><ci id="A2.T6.14.14.14.2.m1.1.1.3.4.2.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.4.2">𝑑</ci><ci id="A2.T6.14.14.14.2.m1.1.1.3.4.3a.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.4.3"><mtext id="A2.T6.14.14.14.2.m1.1.1.3.4.3.cmml" mathsize="70%" xref="A2.T6.14.14.14.2.m1.1.1.3.4.3">model</mtext></ci></apply><apply id="A2.T6.14.14.14.2.m1.1.1.3.5.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.5"><csymbol cd="ambiguous" id="A2.T6.14.14.14.2.m1.1.1.3.5.1.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.5">subscript</csymbol><ci id="A2.T6.14.14.14.2.m1.1.1.3.5.2.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.5.2">𝑑</ci><ci id="A2.T6.14.14.14.2.m1.1.1.3.5.3a.cmml" xref="A2.T6.14.14.14.2.m1.1.1.3.5.3"><mtext id="A2.T6.14.14.14.2.m1.1.1.3.5.3.cmml" mathsize="70%" xref="A2.T6.14.14.14.2.m1.1.1.3.5.3">head</mtext></ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.14.14.14.2.m1.1c">2N+6n_{\text{layer}}d_{\text{model}}d_{\text{head}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.14.14.14.2.m1.1d">2 italic_N + 6 italic_n start_POSTSUBSCRIPT layer end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT model end_POSTSUBSCRIPT italic_d start_POSTSUBSCRIPT head end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.14.14.14.5">48k</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different language models in terms of their computational efficiency and training speed.  It lists the number of parameters (N), the estimated floating-point operations per token (FLOPs) for a forward pass, the formulas used to calculate these FLOPs, and the training throughput measured in tokens per second on hardware with 4 NVIDIA L40S GPUs.  The FLOPs and throughput values provide insights into the computational cost and speed of training each model. The formulas offer further details on the calculation methodology, highlighting the dependencies on the number of parameters (N) and training context length (L). This allows for a comprehensive evaluation of each model's efficiency and scalability.
> <details>
> <summary>read the caption</summary>
> Table 6: Number of parameters, estimated forward pass FLOPs per token, formulas for FLOPs estimation, and training throughput in tokens per second for different models. Throughput is measured on 4 NVIDIA L40S GPUs. N𝑁Nitalic_N is the number of parameters and L𝐿Litalic_L is the training context length.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T7.15.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T7.15.9.9.10.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A6.T7.15.9.9.10.1.1"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.2"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.2.1">Wiki.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A6.T7.15.9.9.10.1.3"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.3.1">LMB.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.4"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.4.1">LMB.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.5"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.5.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.6"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.6.1">Hella.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.7"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.7.1">Wino.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.8"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.8.1">ARC-e</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A6.T7.15.9.9.10.1.9"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.9.1">ARC-c</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.15.9.9.10.1.10"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.10.1.10.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.9">
<td class="ltx_td ltx_border_r" id="A6.T7.15.9.9.9.10"></td>
<td class="ltx_td ltx_align_center" id="A6.T7.7.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="A6.T7.7.1.1.1.1.m1.1"><semantics id="A6.T7.7.1.1.1.1.m1.1a"><mo id="A6.T7.7.1.1.1.1.m1.1.1" stretchy="false" xref="A6.T7.7.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A6.T7.7.1.1.1.1.m1.1b"><ci id="A6.T7.7.1.1.1.1.m1.1.1.cmml" xref="A6.T7.7.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.7.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.7.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.8.2.2.2.2">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="A6.T7.8.2.2.2.2.m1.1"><semantics id="A6.T7.8.2.2.2.2.m1.1a"><mo id="A6.T7.8.2.2.2.2.m1.1.1" stretchy="false" xref="A6.T7.8.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A6.T7.8.2.2.2.2.m1.1b"><ci id="A6.T7.8.2.2.2.2.m1.1.1.cmml" xref="A6.T7.8.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.8.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.8.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.9.3.3.3.3">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.9.3.3.3.3.m1.1"><semantics id="A6.T7.9.3.3.3.3.m1.1a"><mo id="A6.T7.9.3.3.3.3.m1.1.1" stretchy="false" xref="A6.T7.9.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.9.3.3.3.3.m1.1b"><ci id="A6.T7.9.3.3.3.3.m1.1.1.cmml" xref="A6.T7.9.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.9.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.9.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.10.4.4.4.4">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.10.4.4.4.4.m1.1"><semantics id="A6.T7.10.4.4.4.4.m1.1a"><mo id="A6.T7.10.4.4.4.4.m1.1.1" stretchy="false" xref="A6.T7.10.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.10.4.4.4.4.m1.1b"><ci id="A6.T7.10.4.4.4.4.m1.1.1.cmml" xref="A6.T7.10.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.10.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.10.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.11.5.5.5.5">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.11.5.5.5.5.m1.1"><semantics id="A6.T7.11.5.5.5.5.m1.1a"><mo id="A6.T7.11.5.5.5.5.m1.1.1" stretchy="false" xref="A6.T7.11.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.11.5.5.5.5.m1.1b"><ci id="A6.T7.11.5.5.5.5.m1.1.1.cmml" xref="A6.T7.11.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.11.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.11.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.12.6.6.6.6">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.12.6.6.6.6.m1.1"><semantics id="A6.T7.12.6.6.6.6.m1.1a"><mo id="A6.T7.12.6.6.6.6.m1.1.1" stretchy="false" xref="A6.T7.12.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.12.6.6.6.6.m1.1b"><ci id="A6.T7.12.6.6.6.6.m1.1.1.cmml" xref="A6.T7.12.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.12.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.12.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.13.7.7.7.7">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.13.7.7.7.7.m1.1"><semantics id="A6.T7.13.7.7.7.7.m1.1a"><mo id="A6.T7.13.7.7.7.7.m1.1.1" stretchy="false" xref="A6.T7.13.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.13.7.7.7.7.m1.1b"><ci id="A6.T7.13.7.7.7.7.m1.1.1.cmml" xref="A6.T7.13.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.13.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.13.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.14.8.8.8.8">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.14.8.8.8.8.m1.1"><semantics id="A6.T7.14.8.8.8.8.m1.1a"><mo id="A6.T7.14.8.8.8.8.m1.1.1" stretchy="false" xref="A6.T7.14.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.14.8.8.8.8.m1.1b"><ci id="A6.T7.14.8.8.8.8.m1.1.1.cmml" xref="A6.T7.14.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.14.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.14.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.9.9"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T7.15.9.9.9.9.m1.1"><semantics id="A6.T7.15.9.9.9.9.m1.1a"><mo id="A6.T7.15.9.9.9.9.m1.1.1" stretchy="false" xref="A6.T7.15.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T7.15.9.9.9.9.m1.1b"><ci id="A6.T7.15.9.9.9.9.m1.1.1.cmml" xref="A6.T7.15.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T7.15.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T7.15.9.9.9.9.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.11.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A6.T7.15.9.9.11.2.1">Transformer++ <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.02130v1#bib.bib73" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.2">28.39</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.15.9.9.11.2.3">42.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.4">31.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.5">63.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.6">34.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.7">50.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.8">44.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.15.9.9.11.2.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.11.2.9.1">24.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.11.2.10">41.23</td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.12.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.15.9.9.12.3.1">DeltaNet <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.02130v1#bib.bib73" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.2">28.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.12.3.3">37.37</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.4">32.10</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.5">64.80</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.6">34.30</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.7"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.12.3.7.1">52.20</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.12.3.8.1">45.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.12.3.9">23.20</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.12.3.10">42.07</td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.13.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A6.T7.15.9.9.13.4.1">FoX (Pro)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.2"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.13.4.2.1">25.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.15.9.9.13.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.13.4.3.1">31.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.4"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.13.4.4.1">35.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.13.4.5.1">65.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.6"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.13.4.6.1">36.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.13.4.7.1">51.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.8">45.79</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.15.9.9.13.4.9"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.13.4.9.1">25.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.15.9.9.13.4.10"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.13.4.10.1">43.29</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.14.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.15.9.9.14.5.1">Transformer (Pro)</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.14.5.2.1">25.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.14.5.3"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.14.5.3.1">31.93</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.14.5.4.1">35.01</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.5">65.02</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.14.5.6.1">36.09</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.7">50.51</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.8"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.14.5.8.1">46.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.14.5.9">23.38</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.14.5.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T7.15.9.9.14.5.10.1">42.74</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.15.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.15.9.9.15.6.1">FoX (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.2">27.86</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.15.6.3">43.26</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.4">32.56</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.5">64.80</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.6">34.59</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.7">50.12</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.8">45.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.15.6.9">23.38</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.15.6.10">41.76</td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.16.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.15.9.9.16.7.1">Transformer (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.2">27.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.16.7.3">35.25</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.4">32.31</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.5">63.71</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.6">34.89</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.7">48.07</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.8">45.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.15.9.9.16.7.9">23.72</td>
<td class="ltx_td ltx_align_center" id="A6.T7.15.9.9.16.7.10">41.34</td>
</tr>
<tr class="ltx_tr" id="A6.T7.15.9.9.17.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A6.T7.15.9.9.17.8.1">Mamba-2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.2">27.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A6.T7.15.9.9.17.8.3">41.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.4">29.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.5"><span class="ltx_text ltx_font_bold" id="A6.T7.15.9.9.17.8.5.1">65.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.6">35.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.7">50.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.8">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A6.T7.15.9.9.17.8.9">23.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.15.9.9.17.8.10">41.85</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of several language models evaluated on the LM-eval-harness benchmark.  The models were trained on the SlimPajama dataset with a training context length of 2048 tokens.  All models have approximately 340 million non-embedding parameters and were trained on about 15 billion tokens of SlimPajama data. The evaluation metrics include perplexity (ppl) and accuracy (acc) for various tasks. Length-normalized accuracy (acc-n) is also reported for some tasks.  The best and second-best results for each task are highlighted in bold and underlined, respectively.  Note that some results (Transformer++, DeltaNet) are taken from a previous publication (Yang et al., 2024) for comparison purposes.  The Transformer++ model from Yang et al. (2024) is architecturally identical to the Transformer (LLaMA) model used in this paper.
> <details>
> <summary>read the caption</summary>
> Table 7: Evaluation results on LM-eval-harness for models trained on SlimPajama with a training context length of 2048204820482048 tokens. All models have roughly 340340340340M non-embedding parameters and are trained on roughly 15151515B tokens on SlimPajama. “acc-n” means length-normalized accuracy. Bold and underlined numbers indicate the best and the second best results, respectively. Note the results for Transformer++ and DeltaNet are from Yang et al. (2024). Note that Transformer++ from Yang et al. (2024) and Transformer (LLaMA) in our work have exactly the same architecture.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A6.T8.17.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T8.17.13.13.14.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A6.T8.17.13.13.14.1.1"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.2"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.2.1">Wiki.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A6.T8.17.13.13.14.1.3"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.3.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.4"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.4.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.5"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.5.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.6"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.6.1">Hella.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.7"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.7.1">Wino.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.8"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.8.1">ARC-e</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.9"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.9.1">ARC-c</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.10"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.10.1">COPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.11"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.11.1">OBQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.12"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.12.1">SciQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A6.T8.17.13.13.14.1.13"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.13.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T8.17.13.13.14.1.14"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.14.1.14.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.13">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="A6.T8.17.13.13.13.14"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.5.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="A6.T8.5.1.1.1.1.m1.1"><semantics id="A6.T8.5.1.1.1.1.m1.1a"><mo id="A6.T8.5.1.1.1.1.m1.1.1" stretchy="false" xref="A6.T8.5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A6.T8.5.1.1.1.1.m1.1b"><ci id="A6.T8.5.1.1.1.1.m1.1.1.cmml" xref="A6.T8.5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A6.T8.6.2.2.2.2">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="A6.T8.6.2.2.2.2.m1.1"><semantics id="A6.T8.6.2.2.2.2.m1.1a"><mo id="A6.T8.6.2.2.2.2.m1.1.1" stretchy="false" xref="A6.T8.6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A6.T8.6.2.2.2.2.m1.1b"><ci id="A6.T8.6.2.2.2.2.m1.1.1.cmml" xref="A6.T8.6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.7.3.3.3.3">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.7.3.3.3.3.m1.1"><semantics id="A6.T8.7.3.3.3.3.m1.1a"><mo id="A6.T8.7.3.3.3.3.m1.1.1" stretchy="false" xref="A6.T8.7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.7.3.3.3.3.m1.1b"><ci id="A6.T8.7.3.3.3.3.m1.1.1.cmml" xref="A6.T8.7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.8.4.4.4.4">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.8.4.4.4.4.m1.1"><semantics id="A6.T8.8.4.4.4.4.m1.1a"><mo id="A6.T8.8.4.4.4.4.m1.1.1" stretchy="false" xref="A6.T8.8.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.8.4.4.4.4.m1.1b"><ci id="A6.T8.8.4.4.4.4.m1.1.1.cmml" xref="A6.T8.8.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.8.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.8.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.9.5.5.5.5">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.9.5.5.5.5.m1.1"><semantics id="A6.T8.9.5.5.5.5.m1.1a"><mo id="A6.T8.9.5.5.5.5.m1.1.1" stretchy="false" xref="A6.T8.9.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.9.5.5.5.5.m1.1b"><ci id="A6.T8.9.5.5.5.5.m1.1.1.cmml" xref="A6.T8.9.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.9.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.9.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.10.6.6.6.6">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.10.6.6.6.6.m1.1"><semantics id="A6.T8.10.6.6.6.6.m1.1a"><mo id="A6.T8.10.6.6.6.6.m1.1.1" stretchy="false" xref="A6.T8.10.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.10.6.6.6.6.m1.1b"><ci id="A6.T8.10.6.6.6.6.m1.1.1.cmml" xref="A6.T8.10.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.10.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.10.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.11.7.7.7.7">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.11.7.7.7.7.m1.1"><semantics id="A6.T8.11.7.7.7.7.m1.1a"><mo id="A6.T8.11.7.7.7.7.m1.1.1" stretchy="false" xref="A6.T8.11.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.11.7.7.7.7.m1.1b"><ci id="A6.T8.11.7.7.7.7.m1.1.1.cmml" xref="A6.T8.11.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.11.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.11.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.12.8.8.8.8">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.12.8.8.8.8.m1.1"><semantics id="A6.T8.12.8.8.8.8.m1.1a"><mo id="A6.T8.12.8.8.8.8.m1.1.1" stretchy="false" xref="A6.T8.12.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.12.8.8.8.8.m1.1b"><ci id="A6.T8.12.8.8.8.8.m1.1.1.cmml" xref="A6.T8.12.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.12.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.12.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.13.9.9.9.9">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.13.9.9.9.9.m1.1"><semantics id="A6.T8.13.9.9.9.9.m1.1a"><mo id="A6.T8.13.9.9.9.9.m1.1.1" stretchy="false" xref="A6.T8.13.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.13.9.9.9.9.m1.1b"><ci id="A6.T8.13.9.9.9.9.m1.1.1.cmml" xref="A6.T8.13.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.13.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.13.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.14.10.10.10.10">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.14.10.10.10.10.m1.1"><semantics id="A6.T8.14.10.10.10.10.m1.1a"><mo id="A6.T8.14.10.10.10.10.m1.1.1" stretchy="false" xref="A6.T8.14.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.14.10.10.10.10.m1.1b"><ci id="A6.T8.14.10.10.10.10.m1.1.1.cmml" xref="A6.T8.14.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.14.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.14.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.15.11.11.11.11">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.15.11.11.11.11.m1.1"><semantics id="A6.T8.15.11.11.11.11.m1.1a"><mo id="A6.T8.15.11.11.11.11.m1.1.1" stretchy="false" xref="A6.T8.15.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.15.11.11.11.11.m1.1b"><ci id="A6.T8.15.11.11.11.11.m1.1.1.cmml" xref="A6.T8.15.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.15.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.15.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A6.T8.16.12.12.12.12">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.16.12.12.12.12.m1.1"><semantics id="A6.T8.16.12.12.12.12.m1.1a"><mo id="A6.T8.16.12.12.12.12.m1.1.1" stretchy="false" xref="A6.T8.16.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.16.12.12.12.12.m1.1b"><ci id="A6.T8.16.12.12.12.12.m1.1.1.cmml" xref="A6.T8.16.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.16.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.16.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A6.T8.17.13.13.13.13"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T8.17.13.13.13.13.m1.1"><semantics id="A6.T8.17.13.13.13.13.m1.1a"><mo id="A6.T8.17.13.13.13.13.m1.1.1" stretchy="false" xref="A6.T8.17.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T8.17.13.13.13.13.m1.1b"><ci id="A6.T8.17.13.13.13.13.m1.1.1.cmml" xref="A6.T8.17.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T8.17.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T8.17.13.13.13.13.m1.1d">↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T8.17.13.13.15.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A6.T8.17.13.13.15.1.1">FoX (Pro)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.2"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.15.1.2.1">28.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T8.17.13.13.15.1.3"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.15.1.3.1">23.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.4"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.15.1.4.1">36.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.5"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.15.1.5.1">61.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.15.1.6.1">33.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.7">49.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.15.1.8.1">47.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.9">23.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.15.1.10.1">65.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.11">26.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.12"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.15.1.12.1">80.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T8.17.13.13.15.1.13">57.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T8.17.13.13.15.1.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.15.1.14.1">48.33</span></td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.16.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T8.17.13.13.16.2.1">Transformer (Pro)</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.16.2.2.1">28.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.16.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.16.2.3.1">24.63</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.16.2.4.1">36.17</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.16.2.5.1">61.53</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.6"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.16.2.6.1">33.46</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.7">50.28</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.8">47.81</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.16.2.9.1">24.15</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.10"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.16.2.10.1">67.00</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.11">28.40</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.12">77.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.16.2.13">55.72</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.16.2.14">48.24</td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.17.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T8.17.13.13.17.3.1">FoX (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.2">31.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.17.3.3">28.41</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.4">34.89</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.5">61.21</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.6">32.27</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.7">50.51</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.8">46.68</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.9">24.06</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.10"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.17.3.10.1">67.00</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.11"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.17.3.11.1">29.60</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.12">77.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.17.3.13"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.17.3.13.1">61.07</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.17.3.14"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.17.3.14.1">48.46</span></td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.18.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T8.17.13.13.18.4.1">Transformer (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.2">32.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.18.4.3">34.41</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.4">32.41</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.5">60.94</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.6">31.68</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.7">49.96</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.8">45.62</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.9">23.63</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.10">64.00</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.18.4.11.1">28.60</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.12">74.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.18.4.13">60.06</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.18.4.14">47.09</td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.19.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T8.17.13.13.19.5.1">Samba</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.2">31.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.19.5.3">27.78</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.4">34.25</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.5">60.45</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.6">32.88</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.7"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.19.5.7.1">51.70</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.8"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.19.5.8.1">49.03</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.9"><span class="ltx_text ltx_font_bold" id="A6.T8.17.13.13.19.5.9.1">24.32</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.10">61.00</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.11">28.20</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.19.5.12.1">78.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.19.5.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.19.5.13.1">60.58</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.19.5.14">48.12</td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.20.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T8.17.13.13.20.6.1">Transformer-SWA (LLaMA)</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.2">33.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.20.6.3">33.04</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.4">33.15</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.5">60.01</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.6">31.83</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T8.17.13.13.20.6.7.1">51.14</span></td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.8">46.93</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.9">23.38</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.10">62.00</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.11">27.40</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.12">76.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T8.17.13.13.20.6.13">54.62</td>
<td class="ltx_td ltx_align_center" id="A6.T8.17.13.13.20.6.14">46.72</td>
</tr>
<tr class="ltx_tr" id="A6.T8.17.13.13.21.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A6.T8.17.13.13.21.7.1">Mamba-2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.2">33.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A6.T8.17.13.13.21.7.3">42.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.4">27.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.5">60.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.6">32.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.7">50.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.8">46.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.9">23.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.10">64.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.11">28.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.12">76.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A6.T8.17.13.13.21.7.13">57.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T8.17.13.13.21.7.14">46.73</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various language models on the LM-eval-harness benchmark.  All models in the comparison have approximately 760 million non-embedding parameters and were trained on roughly 16 billion tokens from the LongCrawl64 dataset. The benchmark assesses performance across several tasks.  Length-normalized accuracy ('acc-n') is reported for tasks where sequence length affects the score.  The best-performing model for each task is indicated in bold and underlined, along with the second-best performing model.
> <details>
> <summary>read the caption</summary>
> Table 8: Evaluation results on LM-eval-harness. All models have roughly 760760760760M non-embedding parameters and are trained on roughly 16161616B tokens on LongCrawl64. “acc-n” means length-normalized accuracy. Bold and underlined numbers indicate the best and the second best results, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A6.T9.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T9.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A6.T9.5.1.1.1.1" rowspan="2"><span class="ltx_text" id="A6.T9.5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A6.T9.5.1.1.1.2">Single-Document QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A6.T9.5.1.1.1.3">Multi-Document QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A6.T9.5.1.1.1.4">Summarization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A6.T9.5.1.1.1.5">Few-shot Learning</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A6.T9.5.1.1.1.6">Code</th>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.1">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.1.1" style="width:46.3pt;height:46.3pt;vertical-align:-20.7pt;"><span class="ltx_transformed_inner" style="width:56.7pt;transform:translate(-5.2pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.1.1.1">NarrativeQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.2">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.2.1" style="width:28.1pt;height:28.1pt;vertical-align:-11.6pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.2.1.1">Qasper</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.3.1" style="width:27.9pt;height:27.9pt;vertical-align:-11.5pt;"><span class="ltx_transformed_inner" style="width:30.7pt;transform:translate(-1.39pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.3.1.1">MFQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.4.1" style="width:39.0pt;height:39pt;vertical-align:-17.1pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.4.1.1">HotpotQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.5.1" style="width:42.0pt;height:42pt;vertical-align:-18.5pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.5.1.1">2WikiMQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.6.1" style="width:32.2pt;height:32.1pt;vertical-align:-13.6pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.6.1.1">Musique</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.7.1" style="width:40.4pt;height:40.3pt;vertical-align:-17.7pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.7.1.1">GovReport</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.8.1" style="width:31.9pt;height:31.9pt;vertical-align:-13.5pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.8.1.1">QMSum</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.9.1" style="width:38.3pt;height:38.3pt;vertical-align:-15.7pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.9.1.1">MultiNews</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.10.1" style="width:25.1pt;height:25pt;vertical-align:-9.1pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.10.1.1">TREC</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.11.1" style="width:35.5pt;height:35.5pt;vertical-align:-15.3pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.11.1.1">TriviaQA</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.12.1" style="width:31.9pt;height:32pt;vertical-align:-12.6pt;"><span class="ltx_transformed_inner" style="width:38.3pt;transform:translate(-3.2pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.12.1.1">SamSum</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.13">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.13.1" style="width:19.5pt;height:19.4pt;vertical-align:-6.3pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,0pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.13.1.1">LCC</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A6.T9.5.1.2.2.14">
<div class="ltx_inline-block ltx_transformed_outer" id="A6.T9.5.1.2.2.14.1" style="width:48.4pt;height:48.4pt;vertical-align:-21.7pt;"><span class="ltx_transformed_inner" style="width:59.6pt;transform:translate(-5.58pt,2.92pt) rotate(-45deg) ;">
<p class="ltx_p" id="A6.T9.5.1.2.2.14.1.1">RepoBench-P</p>
</span></div>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T9.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T9.5.1.3.1.1">FoX (Pro)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.2"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.3.1.2.1">10.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.3">12.98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.3.1.4.1">20.62</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.5">6.87</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.6"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.3.1.6.1">16.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.7"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.3.1.7.1">5.48</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.8"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.3.1.8.1">27.51</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.9">10.15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.10">9.27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.11"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.3.1.11.1">63.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.3.1.12.1">26.97</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.3.1.13.1">18.02</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.14">6.34</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.5.1.3.1.15">3.4</td>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.5.1.4.2.1">Transformer (Pro)</th>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.2">8.67</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.4.2.3.1">13.92</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.4"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.4.2.4.1">22.45</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.5"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.4.2.5.1">9.36</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.6">14.21</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.4.2.7.1">5.16</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.8">19.88</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.9">10.66</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.4.2.10.1">12.23</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.4.2.11.1">52.0</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.12"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.4.2.12.1">30.18</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.13"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.4.2.13.1">25.53</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.14">8.37</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.4.2.15">10.72</td>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.5.1.5.3.1">FoX (LLaMA)</th>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.5.3.2.1">9.48</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.3"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.5.3.3.1">15.55</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.4">17.13</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.5">5.26</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.5.3.6.1">15.78</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.7">3.78</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.5.3.8.1">21.95</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.9">10.59</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.10">8.63</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.11">29.0</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.12">19.16</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.13">10.07</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.14">6.93</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.5.3.15">9.89</td>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.5.1.6.4.1">Transformer (LLaMA)</th>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.2">8.44</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.3">10.08</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.4">18.77</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.5">6.09</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.6">14.47</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.7">3.98</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.8">11.83</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.6.4.9.1">11.52</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.10"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.6.4.10.1">12.94</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.11">23.5</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.12">18.46</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.13">16.04</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.14">8.27</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.6.4.15">13.5</td>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.5.1.7.5.1">Samba</th>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.2">6.33</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.3">10.89</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.4">15.86</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.5">5.1</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.6">11.28</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.7">2.79</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.8">9.42</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.9">11.39</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.10">10.88</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.11">28.5</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.12">16.07</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.13">2.8</td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.7.5.14.1">11.65</span></td>
<td class="ltx_td ltx_align_right" id="A6.T9.5.1.7.5.15"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.7.5.15.1">14.26</span></td>
</tr>
<tr class="ltx_tr" id="A6.T9.5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A6.T9.5.1.8.6.1">Transformer-SWA (LLaMA)</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.2">8.46</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.3">8.59</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.4">16.65</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.8.6.5.1">6.9</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.6">13.84</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.7">4.03</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.8">7.47</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.9"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.8.6.9.1">12.87</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.10">10.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.11">12.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.12">14.92</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.13">5.1</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.14"><span class="ltx_text ltx_font_bold" id="A6.T9.5.1.8.6.14.1">16.16</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T9.5.1.8.6.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="A6.T9.5.1.8.6.15.1">14.22</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents the results of several long-context downstream tasks from the LongBench benchmark.  Each model in the table has approximately 760M parameters (excluding embeddings) and was trained using roughly 48 billion tokens from the LongCrawl64 dataset.  The table compares the performance of the Forgetting Transformer (FoX) with various architectures against several baseline models (including the standard Transformer and recurrent models like Mamba-2, HGRN2, and DeltaNet). The best-performing model for each task is shown in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 9: Evalution results on LongBench. All models have roughly 760760760760M non-embedding parameters and are trained on roughly 16161616B tokens on LongCrawl64. Bold and underlined numbers indicate the best and the second best results, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02130/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02130/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}