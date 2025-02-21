---
title: "Better Embeddings with Coupled Adam"
summary: "Coupled Adam: A novel optimizer fixes anisotropic word embeddings in LLMs, boosting model performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 AI Sweden",]
showSummary: true
date: 2025-02-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.08441 {{< /keyword >}}
{{< keyword icon="writer" >}} Felix Stollenwerk et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.08441" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.08441" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.08441/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) learn word representations, but these often suffer from anisotropy, meaning the embeddings are clustered in a small subspace, limiting their semantic usefulness and the model's overall performance. This anisotropy is a poorly understood phenomenon, but previous research has pointed to a mean embedding vector shift away from the origin as a major contributor. 

This paper investigates the role of the Adam optimizer in causing anisotropic embeddings.  The authors argue that Adam's second moment calculation is responsible for the problem.  They propose a novel optimizer called Coupled Adam, which modifies the second moment calculation to mitigate anisotropy. Experiments demonstrate that Coupled Adam significantly improves embedding quality and leads to better upstream and downstream performance, especially on larger datasets.  The results support the hypothesis that the Adam optimizer contributes significantly to the problem of anisotropic embeddings in LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large language models (LLMs) often produce anisotropic word embeddings, limiting their usefulness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Adam optimizer significantly contributes to this anisotropy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Coupled Adam, a modified Adam optimizer, effectively mitigates anisotropy and improves LLM performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models (LLMs) because it addresses a significant problem—anisotropic embeddings—that hinders model performance and generalizability.  **The proposed Coupled Adam optimizer offers a practical solution, potentially improving the efficiency and effectiveness of LLM training and downstream applications.**  Further research into the method's impact on different model architectures and training paradigms would be valuable.

------
#### Visual Insights



![](https://arxiv.org/html/2502.08441/extracted/6201951/figs/toy_example.png)

> 🔼 Figure 1 illustrates the core concept of the paper regarding the anisotropy problem in embedding vectors.  It uses a simplified 2D example to visually represent the embedding update vectors for both SGD and Adam optimizers. A hidden state vector (blue) interacts with three embedding vectors (red), one of which corresponds to the correct token.  The gray arrows depict the update vectors for each embedding vector, with SGD producing update vectors that sum to zero (demonstrating a balanced update), and Adam having update vectors that do not sum to zero (implying an unbalanced update and thus the creation of anisotropy). This difference in update vector summation between the optimizers helps to explain why Adam contributes to the anisotropy problem that is the main focus of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 1: Toy example of a hidden state vector hℎhitalic_h (shown in blue) and three embedding vectors eisubscript𝑒𝑖e_{i}italic_e start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT (shown in red) in H=2𝐻2H=2italic_H = 2 dimensions. The gray vectors represent the embedding update vectors, for the SGD (dark) and the Adam (light) optimizer. The update vector of the true token is aligned with hℎhitalic_h, while the others point in the opposite direction, see Eq. (5). Note that the sum of embedding update vectors vanishes for SGD, while this is not necessarily the case for Adam, cf. Eqs. (11) and (16).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.SS3.18.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS3.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.SS3.1.1.1.1"><math alttext="D" class="ltx_Math" display="inline" id="S4.SS3.1.1.1.1.m1.1"><semantics id="S4.SS3.1.1.1.1.m1.1a"><mi id="S4.SS3.1.1.1.1.m1.1.1" xref="S4.SS3.1.1.1.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.1.1.1.1.m1.1b"><ci id="S4.SS3.1.1.1.1.m1.1.1.cmml" xref="S4.SS3.1.1.1.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.1.1.1.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.1.1.1.1.m1.1d">italic_D</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.SS3.2.2.2.2"><math alttext="N" class="ltx_Math" display="inline" id="S4.SS3.2.2.2.2.m1.1"><semantics id="S4.SS3.2.2.2.2.m1.1a"><mi id="S4.SS3.2.2.2.2.m1.1.1" xref="S4.SS3.2.2.2.2.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.2.2.2.2.m1.1b"><ci id="S4.SS3.2.2.2.2.m1.1.1.cmml" xref="S4.SS3.2.2.2.2.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.2.2.2.2.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.2.2.2.2.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.SS3.18.18.18.19">Adam</th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.4.4.4.4">
<math alttext="\mathcal{L}" class="ltx_Math" display="inline" id="S4.SS3.3.3.3.3.m1.1"><semantics id="S4.SS3.3.3.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.SS3.3.3.3.3.m1.1.1" xref="S4.SS3.3.3.3.3.m1.1.1.cmml">ℒ</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.3.3.3.3.m1.1b"><ci id="S4.SS3.3.3.3.3.m1.1.1.cmml" xref="S4.SS3.3.3.3.3.m1.1.1">ℒ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.3.3.3.3.m1.1c">\mathcal{L}</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.3.3.3.3.m1.1d">caligraphic_L</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.SS3.4.4.4.4.m2.1"><semantics id="S4.SS3.4.4.4.4.m2.1a"><mo id="S4.SS3.4.4.4.4.m2.1.1" stretchy="false" xref="S4.SS3.4.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.4.4.4.4.m2.1b"><ci id="S4.SS3.4.4.4.4.m2.1.1.cmml" xref="S4.SS3.4.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.4.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.4.4.4.4.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.6.6.6.6">
<math alttext="\rm Acc" class="ltx_Math" display="inline" id="S4.SS3.5.5.5.5.m1.1"><semantics id="S4.SS3.5.5.5.5.m1.1a"><mi id="S4.SS3.5.5.5.5.m1.1.1" xref="S4.SS3.5.5.5.5.m1.1.1.cmml">Acc</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.5.5.5.5.m1.1b"><ci id="S4.SS3.5.5.5.5.m1.1.1.cmml" xref="S4.SS3.5.5.5.5.m1.1.1">Acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.5.5.5.5.m1.1c">\rm Acc</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.5.5.5.5.m1.1d">roman_Acc</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS3.6.6.6.6.m2.1"><semantics id="S4.SS3.6.6.6.6.m2.1a"><mo id="S4.SS3.6.6.6.6.m2.1.1" stretchy="false" xref="S4.SS3.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.6.6.6.6.m2.1b"><ci id="S4.SS3.6.6.6.6.m2.1.1.cmml" xref="S4.SS3.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.6.6.6.6.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.8.8.8.8">
<math alttext="{\rm Iso}" class="ltx_Math" display="inline" id="S4.SS3.7.7.7.7.m1.1"><semantics id="S4.SS3.7.7.7.7.m1.1a"><mi id="S4.SS3.7.7.7.7.m1.1.1" xref="S4.SS3.7.7.7.7.m1.1.1.cmml">Iso</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.7.7.7.7.m1.1b"><ci id="S4.SS3.7.7.7.7.m1.1.1.cmml" xref="S4.SS3.7.7.7.7.m1.1.1">Iso</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.7.7.7.7.m1.1c">{\rm Iso}</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.7.7.7.7.m1.1d">roman_Iso</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS3.8.8.8.8.m2.1"><semantics id="S4.SS3.8.8.8.8.m2.1a"><mo id="S4.SS3.8.8.8.8.m2.1.1" stretchy="false" xref="S4.SS3.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.8.8.8.8.m2.1b"><ci id="S4.SS3.8.8.8.8.m2.1.1.cmml" xref="S4.SS3.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.8.8.8.8.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.10.10.10.10">
<math alttext="\|\mu\|" class="ltx_Math" display="inline" id="S4.SS3.9.9.9.9.m1.1"><semantics id="S4.SS3.9.9.9.9.m1.1a"><mrow id="S4.SS3.9.9.9.9.m1.1.2.2" xref="S4.SS3.9.9.9.9.m1.1.2.1.cmml"><mo id="S4.SS3.9.9.9.9.m1.1.2.2.1" stretchy="false" xref="S4.SS3.9.9.9.9.m1.1.2.1.1.cmml">‖</mo><mi id="S4.SS3.9.9.9.9.m1.1.1" xref="S4.SS3.9.9.9.9.m1.1.1.cmml">μ</mi><mo id="S4.SS3.9.9.9.9.m1.1.2.2.2" stretchy="false" xref="S4.SS3.9.9.9.9.m1.1.2.1.1.cmml">‖</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.SS3.9.9.9.9.m1.1b"><apply id="S4.SS3.9.9.9.9.m1.1.2.1.cmml" xref="S4.SS3.9.9.9.9.m1.1.2.2"><csymbol cd="latexml" id="S4.SS3.9.9.9.9.m1.1.2.1.1.cmml" xref="S4.SS3.9.9.9.9.m1.1.2.2.1">norm</csymbol><ci id="S4.SS3.9.9.9.9.m1.1.1.cmml" xref="S4.SS3.9.9.9.9.m1.1.1">𝜇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.9.9.9.9.m1.1c">\|\mu\|</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.9.9.9.9.m1.1d">∥ italic_μ ∥</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.SS3.10.10.10.10.m2.1"><semantics id="S4.SS3.10.10.10.10.m2.1a"><mo id="S4.SS3.10.10.10.10.m2.1.1" stretchy="false" xref="S4.SS3.10.10.10.10.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.10.10.10.10.m2.1b"><ci id="S4.SS3.10.10.10.10.m2.1.1.cmml" xref="S4.SS3.10.10.10.10.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.10.10.10.10.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.10.10.10.10.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.12.12.12.12">
<math alttext="\|\mu\|^{\rm r}" class="ltx_Math" display="inline" id="S4.SS3.11.11.11.11.m1.1"><semantics id="S4.SS3.11.11.11.11.m1.1a"><msup id="S4.SS3.11.11.11.11.m1.1.2" xref="S4.SS3.11.11.11.11.m1.1.2.cmml"><mrow id="S4.SS3.11.11.11.11.m1.1.2.2.2" xref="S4.SS3.11.11.11.11.m1.1.2.2.1.cmml"><mo id="S4.SS3.11.11.11.11.m1.1.2.2.2.1" stretchy="false" xref="S4.SS3.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo><mi id="S4.SS3.11.11.11.11.m1.1.1" xref="S4.SS3.11.11.11.11.m1.1.1.cmml">μ</mi><mo id="S4.SS3.11.11.11.11.m1.1.2.2.2.2" stretchy="false" xref="S4.SS3.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo></mrow><mi id="S4.SS3.11.11.11.11.m1.1.2.3" mathvariant="normal" xref="S4.SS3.11.11.11.11.m1.1.2.3.cmml">r</mi></msup><annotation-xml encoding="MathML-Content" id="S4.SS3.11.11.11.11.m1.1b"><apply id="S4.SS3.11.11.11.11.m1.1.2.cmml" xref="S4.SS3.11.11.11.11.m1.1.2"><csymbol cd="ambiguous" id="S4.SS3.11.11.11.11.m1.1.2.1.cmml" xref="S4.SS3.11.11.11.11.m1.1.2">superscript</csymbol><apply id="S4.SS3.11.11.11.11.m1.1.2.2.1.cmml" xref="S4.SS3.11.11.11.11.m1.1.2.2.2"><csymbol cd="latexml" id="S4.SS3.11.11.11.11.m1.1.2.2.1.1.cmml" xref="S4.SS3.11.11.11.11.m1.1.2.2.2.1">norm</csymbol><ci id="S4.SS3.11.11.11.11.m1.1.1.cmml" xref="S4.SS3.11.11.11.11.m1.1.1">𝜇</ci></apply><ci id="S4.SS3.11.11.11.11.m1.1.2.3.cmml" xref="S4.SS3.11.11.11.11.m1.1.2.3">r</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.11.11.11.11.m1.1c">\|\mu\|^{\rm r}</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.11.11.11.11.m1.1d">∥ italic_μ ∥ start_POSTSUPERSCRIPT roman_r end_POSTSUPERSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.SS3.12.12.12.12.m2.1"><semantics id="S4.SS3.12.12.12.12.m2.1a"><mo id="S4.SS3.12.12.12.12.m2.1.1" stretchy="false" xref="S4.SS3.12.12.12.12.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.12.12.12.12.m2.1b"><ci id="S4.SS3.12.12.12.12.m2.1.1.cmml" xref="S4.SS3.12.12.12.12.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.12.12.12.12.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.12.12.12.12.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.14.14.14.14">
<math alttext="\overline{r}" class="ltx_Math" display="inline" id="S4.SS3.13.13.13.13.m1.1"><semantics id="S4.SS3.13.13.13.13.m1.1a"><mover accent="true" id="S4.SS3.13.13.13.13.m1.1.1" xref="S4.SS3.13.13.13.13.m1.1.1.cmml"><mi id="S4.SS3.13.13.13.13.m1.1.1.2" xref="S4.SS3.13.13.13.13.m1.1.1.2.cmml">r</mi><mo id="S4.SS3.13.13.13.13.m1.1.1.1" xref="S4.SS3.13.13.13.13.m1.1.1.1.cmml">¯</mo></mover><annotation-xml encoding="MathML-Content" id="S4.SS3.13.13.13.13.m1.1b"><apply id="S4.SS3.13.13.13.13.m1.1.1.cmml" xref="S4.SS3.13.13.13.13.m1.1.1"><ci id="S4.SS3.13.13.13.13.m1.1.1.1.cmml" xref="S4.SS3.13.13.13.13.m1.1.1.1">¯</ci><ci id="S4.SS3.13.13.13.13.m1.1.1.2.cmml" xref="S4.SS3.13.13.13.13.m1.1.1.2">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.13.13.13.13.m1.1c">\overline{r}</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.13.13.13.13.m1.1d">over¯ start_ARG italic_r end_ARG</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS3.14.14.14.14.m2.1"><semantics id="S4.SS3.14.14.14.14.m2.1a"><mo id="S4.SS3.14.14.14.14.m2.1.1" stretchy="false" xref="S4.SS3.14.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.14.14.14.14.m2.1b"><ci id="S4.SS3.14.14.14.14.m2.1.1.cmml" xref="S4.SS3.14.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.14.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.14.14.14.14.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.16.16.16.16">
<math alttext="\rho" class="ltx_Math" display="inline" id="S4.SS3.15.15.15.15.m1.1"><semantics id="S4.SS3.15.15.15.15.m1.1a"><mi id="S4.SS3.15.15.15.15.m1.1.1" xref="S4.SS3.15.15.15.15.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.15.15.15.15.m1.1b"><ci id="S4.SS3.15.15.15.15.m1.1.1.cmml" xref="S4.SS3.15.15.15.15.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.15.15.15.15.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.15.15.15.15.m1.1d">italic_ρ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS3.16.16.16.16.m2.1"><semantics id="S4.SS3.16.16.16.16.m2.1a"><mo id="S4.SS3.16.16.16.16.m2.1.1" stretchy="false" xref="S4.SS3.16.16.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.16.16.16.16.m2.1b"><ci id="S4.SS3.16.16.16.16.m2.1.1.cmml" xref="S4.SS3.16.16.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.16.16.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.16.16.16.16.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS3.18.18.18.18">
<math alttext="\kappa" class="ltx_Math" display="inline" id="S4.SS3.17.17.17.17.m1.1"><semantics id="S4.SS3.17.17.17.17.m1.1a"><mi id="S4.SS3.17.17.17.17.m1.1.1" xref="S4.SS3.17.17.17.17.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="S4.SS3.17.17.17.17.m1.1b"><ci id="S4.SS3.17.17.17.17.m1.1.1.cmml" xref="S4.SS3.17.17.17.17.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.17.17.17.17.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.17.17.17.17.m1.1d">italic_κ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS3.18.18.18.18.m2.1"><semantics id="S4.SS3.18.18.18.18.m2.1a"><mo id="S4.SS3.18.18.18.18.m2.1.1" stretchy="false" xref="S4.SS3.18.18.18.18.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS3.18.18.18.18.m2.1b"><ci id="S4.SS3.18.18.18.18.m2.1.1.cmml" xref="S4.SS3.18.18.18.18.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS3.18.18.18.18.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS3.18.18.18.18.m2.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.SS3.18.18.19.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.1">
<span class="ltx_ERROR undefined" id="S4.SS3.18.18.19.1.1.1">\resultsS</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.2"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.3"></th>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.4"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.5"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.6"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.7"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.8"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.9"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.10"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S4.SS3.18.18.19.1.11"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of small-scale experiments conducted to evaluate the performance of standard Adam and Coupled Adam optimizers.  It shows the test loss (ℒ), downstream task accuracy (Acc), isotropy (Iso), mean embedding norm (||μ||), average embedding norm (||ei||), correlation between embedding length and unigram probability (p), and condition number (κ) for various dataset sizes (D) and model sizes (N).  Each experiment was repeated three times with different random seeds to assess variability.  Statistical significance testing (Student's t-test with α=0.05) was used to determine whether improvements observed with Coupled Adam are statistically significant, and these results are highlighted in bold. Appendix F details the statistical methodology, while Appendices G.1 shows plots of the loss and downstream task accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of our small-scale experiments. D𝐷Ditalic_D and N𝑁Nitalic_N denote the dataset and model size, respectively. ℒℒ\mathcal{L}caligraphic_L is the test loss, and the column AccAcc\rm Accroman_Acc represents the accuracy averaged over the downstream tasks listed in Sec. 4.3. The other evaluation metrics are defined in the same section, see Eqs. (25)-(28). The arrow in parentheses indicates whether a higher or lower value is desirable. Every training was conducted S=3𝑆3S=3italic_S = 3 times with different seeds, and the numbers represent the (rounded) averages and standard deviations in the following shorthand notation format: 0.1230.1230.1230.123 (4)4(4)( 4 ) ≡0.123±0.004absentplus-or-minus0.1230.004\equiv 0.123\pm 0.004≡ 0.123 ± 0.004. For each combination (D,N)𝐷𝑁(D,N)( italic_D , italic_N ) and each metric, the respective better value is highlighted in bold if the (unrounded) difference is significant according to Student’s t-test with a one-sided confidence level of α=95%𝛼percent95\alpha=95\%italic_α = 95 % (see App. F for details). Plots for ℒℒ\mathcal{L}caligraphic_L and AccAcc\rm Accroman_Acc are shown in App. G.1.
> </details>





### In-depth insights


#### Adam's Anisotropy
The concept of "Adam's Anisotropy" encapsulates the observation that the Adam optimizer, while highly effective for training large language models (LLMs), contributes to the undesirable phenomenon of anisotropic word embeddings.  **Anisotropy** in this context refers to the uneven distribution of embedding vectors in the model's hidden space; they tend to cluster in a restricted subspace rather than being uniformly dispersed. This unevenness is problematic because it limits the semantic richness and generalizability of the model's representations. The paper explores this issue by analyzing the mathematical properties of the Adam update rule and its interactions with the unique characteristics of LLM training data (i.e., highly skewed word frequency distributions).  The core argument revolves around how Adam's second-moment estimate (v) scales embedding updates differently for frequent versus rare words, leading to the anisotropic clustering.  The authors propose "Coupled Adam," a modification to Adam designed to mitigate this issue by ensuring more uniform scaling of updates, thus resulting in more isotropic and improved embeddings.  **Empirical evidence demonstrates** that this modification significantly improves both the quality of word embeddings and downstream performance.

#### Coupled Adam
The proposed "Coupled Adam" optimization algorithm addresses the anisotropy problem in large language model (LLM) embeddings.  **Anisotropy**, where embedding vectors cluster in a limited subspace, hinders model expressiveness and generalizability. The core idea is that the standard Adam optimizer's second moment, used for normalization, contributes to this issue. By **coupling** the second moments of all embedding vectors, the algorithm ensures that the effective learning rate is consistent across all parameters. This prevents the over-scaling of updates for less frequent words, a factor identified as a main cause of anisotropy.  The results demonstrate that Coupled Adam improves both the **quality** of embeddings and the model's **performance** on large datasets, achieving better isotropy and downstream performance while mitigating the problem of the mean embedding shifting away from the origin. The method is **efficient** and **easy to implement**, requiring only minor changes to existing Adam implementations.  Further investigation explores the impact of scaling the coupled second moment, indicating that maintaining a consistent learning rate across embedding parameters yields optimal results.

#### Embedding Metrics
Embedding metrics are crucial for evaluating the quality of learned word representations in language models.  Effective metrics should capture the semantic relationships between words, assessing both the **accuracy** and **generalizability** of the embeddings.  Common approaches involve measuring the distance between embedding vectors to reflect semantic similarity, potentially using techniques like cosine similarity.  However, simply evaluating pairwise similarity is insufficient; a good metric should also assess the **global structure** of the embedding space, looking for undesirable properties like anisotropy (where the embeddings are clustered in a small subspace).  **Isotropy** is often used as a measure of embedding quality, indicating that the distribution of vectors is uniform in the high-dimensional space.  Beyond these standard approaches, metrics can also consider the **correlation** between embedding properties and external factors like word frequency or human judgments of semantic similarity.  Ultimately, the choice of metrics depends on the specific research goals and the nature of the downstream task; no single metric perfectly captures all relevant aspects of embedding quality.

#### Large-Scale Tests
A dedicated section on 'Large-Scale Tests' within a research paper would be crucial for validating the generalizability and robustness of proposed methods.  It would need to go beyond small-scale experiments, employing **significantly larger datasets** and **more complex models** to ensure findings aren't artifacts of limited scope.  The section should detail the specific datasets used, their sizes and characteristics (e.g., distribution, noise levels),  as well as the architecture and parameter counts of the models tested.  **Computational resources** used for these tests would also warrant mention.  The results should focus on both quantitative metrics (e.g., accuracy, loss, isotropy) and qualitative observations about model behavior.  Crucially, the large-scale tests should address the scalability of the method, analyzing how performance changes with increased data and model complexity.  This could involve comparing the method's efficiency and resource requirements against alternatives.  Finally, a discussion of the consistency of findings between small and large-scale experiments, highlighting any differences or limitations, is vital for establishing confidence in the method's broader applicability.

#### Future Work
The paper's 'Future Work' section presents exciting avenues for extending this research.  **Investigating the impact of weight tying on the observed mean embedding shift** is crucial, as it may explain the residual anisotropy even with Coupled Adam.  Exploring alternative learning rate schedules, beyond the cosine decay used, could reveal further performance improvements.  **More sophisticated Coupled Adam implementations** are also warranted, potentially enhancing efficiency and effectiveness.  Finally, **extending the experiments to models beyond 2.6B parameters** is essential to confirm the generalizability of the proposed approach across larger, more complex LLMs.  These directions would significantly advance the understanding of anisotropic embeddings and the optimization strategies necessary to address this critical problem in large language models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.08441/extracted/6201951/figs/experimental_results_E_p_125M_20B.png)

> 🔼 This figure displays the relationship between the expected value of the embedding update vector's squared magnitude (𝔼[v^i]) and the unigram probability (p~i) for a specific model size (N=125M) and dataset size (D=20B).  Each point represents an embedding vector, and its vertical position indicates the expected value of the squared magnitude of its update vector, while its horizontal position shows its corresponding unigram probability. The blue line is a linear fit through the data points, showing a strong positive correlation (R²=0.91). This visualization helps to demonstrate that embeddings of more frequent words (higher p~i) tend to have smaller updates (lower 𝔼[v^i]), and vice versa, which is crucial for understanding the effects of Adam optimization on anisotropic embeddings.
> <details>
> <summary>read the caption</summary>
> Figure 4: Experimental results for 𝔼⁢[v^i]𝔼delimited-[]subscript^𝑣𝑖\mathbb{E}\left[\widehat{v}_{i}\right]blackboard_E [ over^ start_ARG italic_v end_ARG start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ] (vertical axis) vs. p~isubscript~𝑝𝑖\widetilde{p}_{i}over~ start_ARG italic_p end_ARG start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT (horizontal axis) for N=125⁢M𝑁125MN=125\rm Mitalic_N = 125 roman_M and D=D′=20⁢B𝐷superscript𝐷′20BD=D^{\prime}=20\rm Bitalic_D = italic_D start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT = 20 roman_B. The blue line shows the linear fit with R2=0.91superscript𝑅20.91R^{2}=0.91italic_R start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT = 0.91.
> </details>



![](https://arxiv.org/html/2502.08441/extracted/6201951/figs/experimental_results_A.png)

> 🔼 This figure displays the results of linear fits performed to experimentally determine the proportionality constant A in the relationship E[vᵢ] ≈ A⋅pᵢ, where E[vᵢ] is the expectation value of the Adam optimizer's second moment for the i-th embedding vector and pᵢ is the unigram probability of the i-th token.  The graph shows how the fitted parameter A varies with model size (N) and the amount of training data (D').  Different colors represent different model sizes, demonstrating that the relationship between A and D' is dependent upon model size.  This helps to understand the influence of model size and training dataset size on the anisotropy issue. 
> <details>
> <summary>read the caption</summary>
> Figure 5: Experimental results for the linear fit parameter A𝐴Aitalic_A as a function of N𝑁Nitalic_N and D′superscript𝐷′D^{\prime}italic_D start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2502.08441/extracted/6201951/figs/experiments_log.png)

> 🔼 Figure 6 shows the relationship between dataset size and model size used in the experiments.  The horizontal axis represents the size of the dataset (D, in tokens), and the vertical axis represents the size of the model (N, in parameters). Small-scale experiments are represented by blue, green, and orange circles, while large-scale experiments are shown as red squares. The dashed black line illustrates the compute-optimal trajectory proposed by Hoffmann et al. (2022), suggesting an approximate ratio of dataset size to model size (D/N) of 20.  This line serves as a reference point to compare the dataset and model sizes used in the study.
> <details>
> <summary>read the caption</summary>
> Figure 6: Overview of the dataset (horizontal axis) and model sizes (vertical axis) involved in our small-scale (blue, green and orange circles) and large-scale (red squares) experiments. The dashed, black line shows N=D/20𝑁𝐷20N=D/20italic_N = italic_D / 20, which is approximately the compute-optimal trajectory according to hoffmann2022trainingcomputeoptimallargelanguage.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S5.SS2.18.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.SS2.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.SS2.1.1.1.1"><math alttext="D" class="ltx_Math" display="inline" id="S5.SS2.1.1.1.1.m1.1"><semantics id="S5.SS2.1.1.1.1.m1.1a"><mi id="S5.SS2.1.1.1.1.m1.1.1" xref="S5.SS2.1.1.1.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.1.1.1.1.m1.1b"><ci id="S5.SS2.1.1.1.1.m1.1.1.cmml" xref="S5.SS2.1.1.1.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.1.1.1.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.1.1.1.1.m1.1d">italic_D</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.SS2.2.2.2.2"><math alttext="N" class="ltx_Math" display="inline" id="S5.SS2.2.2.2.2.m1.1"><semantics id="S5.SS2.2.2.2.2.m1.1a"><mi id="S5.SS2.2.2.2.2.m1.1.1" xref="S5.SS2.2.2.2.2.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.2.2.2.2.m1.1b"><ci id="S5.SS2.2.2.2.2.m1.1.1.cmml" xref="S5.SS2.2.2.2.2.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.2.2.2.2.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.2.2.2.2.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.SS2.18.18.18.19">Adam</th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.4.4.4.4">
<math alttext="\mathcal{L}" class="ltx_Math" display="inline" id="S5.SS2.3.3.3.3.m1.1"><semantics id="S5.SS2.3.3.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.SS2.3.3.3.3.m1.1.1" xref="S5.SS2.3.3.3.3.m1.1.1.cmml">ℒ</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.3.3.3.3.m1.1b"><ci id="S5.SS2.3.3.3.3.m1.1.1.cmml" xref="S5.SS2.3.3.3.3.m1.1.1">ℒ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.3.3.3.3.m1.1c">\mathcal{L}</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.3.3.3.3.m1.1d">caligraphic_L</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS2.4.4.4.4.m2.1"><semantics id="S5.SS2.4.4.4.4.m2.1a"><mo id="S5.SS2.4.4.4.4.m2.1.1" stretchy="false" xref="S5.SS2.4.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.4.4.4.4.m2.1b"><ci id="S5.SS2.4.4.4.4.m2.1.1.cmml" xref="S5.SS2.4.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.4.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.4.4.4.4.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.6.6.6.6">
<math alttext="\rm Acc" class="ltx_Math" display="inline" id="S5.SS2.5.5.5.5.m1.1"><semantics id="S5.SS2.5.5.5.5.m1.1a"><mi id="S5.SS2.5.5.5.5.m1.1.1" xref="S5.SS2.5.5.5.5.m1.1.1.cmml">Acc</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.5.5.5.5.m1.1b"><ci id="S5.SS2.5.5.5.5.m1.1.1.cmml" xref="S5.SS2.5.5.5.5.m1.1.1">Acc</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.5.5.5.5.m1.1c">\rm Acc</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.5.5.5.5.m1.1d">roman_Acc</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.6.6.6.6.m2.1"><semantics id="S5.SS2.6.6.6.6.m2.1a"><mo id="S5.SS2.6.6.6.6.m2.1.1" stretchy="false" xref="S5.SS2.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.6.6.6.6.m2.1b"><ci id="S5.SS2.6.6.6.6.m2.1.1.cmml" xref="S5.SS2.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.6.6.6.6.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.8.8.8.8">
<math alttext="{\rm Iso}" class="ltx_Math" display="inline" id="S5.SS2.7.7.7.7.m1.1"><semantics id="S5.SS2.7.7.7.7.m1.1a"><mi id="S5.SS2.7.7.7.7.m1.1.1" xref="S5.SS2.7.7.7.7.m1.1.1.cmml">Iso</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.7.7.7.7.m1.1b"><ci id="S5.SS2.7.7.7.7.m1.1.1.cmml" xref="S5.SS2.7.7.7.7.m1.1.1">Iso</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.7.7.7.7.m1.1c">{\rm Iso}</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.7.7.7.7.m1.1d">roman_Iso</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.8.8.8.8.m2.1"><semantics id="S5.SS2.8.8.8.8.m2.1a"><mo id="S5.SS2.8.8.8.8.m2.1.1" stretchy="false" xref="S5.SS2.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.8.8.8.8.m2.1b"><ci id="S5.SS2.8.8.8.8.m2.1.1.cmml" xref="S5.SS2.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.8.8.8.8.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.10.10.10.10">
<math alttext="\|\mu\|" class="ltx_Math" display="inline" id="S5.SS2.9.9.9.9.m1.1"><semantics id="S5.SS2.9.9.9.9.m1.1a"><mrow id="S5.SS2.9.9.9.9.m1.1.2.2" xref="S5.SS2.9.9.9.9.m1.1.2.1.cmml"><mo id="S5.SS2.9.9.9.9.m1.1.2.2.1" stretchy="false" xref="S5.SS2.9.9.9.9.m1.1.2.1.1.cmml">‖</mo><mi id="S5.SS2.9.9.9.9.m1.1.1" xref="S5.SS2.9.9.9.9.m1.1.1.cmml">μ</mi><mo id="S5.SS2.9.9.9.9.m1.1.2.2.2" stretchy="false" xref="S5.SS2.9.9.9.9.m1.1.2.1.1.cmml">‖</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.SS2.9.9.9.9.m1.1b"><apply id="S5.SS2.9.9.9.9.m1.1.2.1.cmml" xref="S5.SS2.9.9.9.9.m1.1.2.2"><csymbol cd="latexml" id="S5.SS2.9.9.9.9.m1.1.2.1.1.cmml" xref="S5.SS2.9.9.9.9.m1.1.2.2.1">norm</csymbol><ci id="S5.SS2.9.9.9.9.m1.1.1.cmml" xref="S5.SS2.9.9.9.9.m1.1.1">𝜇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.9.9.9.9.m1.1c">\|\mu\|</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.9.9.9.9.m1.1d">∥ italic_μ ∥</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS2.10.10.10.10.m2.1"><semantics id="S5.SS2.10.10.10.10.m2.1a"><mo id="S5.SS2.10.10.10.10.m2.1.1" stretchy="false" xref="S5.SS2.10.10.10.10.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.10.10.10.10.m2.1b"><ci id="S5.SS2.10.10.10.10.m2.1.1.cmml" xref="S5.SS2.10.10.10.10.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.10.10.10.10.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.10.10.10.10.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.12.12.12.12">
<math alttext="\|\mu\|^{\rm r}" class="ltx_Math" display="inline" id="S5.SS2.11.11.11.11.m1.1"><semantics id="S5.SS2.11.11.11.11.m1.1a"><msup id="S5.SS2.11.11.11.11.m1.1.2" xref="S5.SS2.11.11.11.11.m1.1.2.cmml"><mrow id="S5.SS2.11.11.11.11.m1.1.2.2.2" xref="S5.SS2.11.11.11.11.m1.1.2.2.1.cmml"><mo id="S5.SS2.11.11.11.11.m1.1.2.2.2.1" stretchy="false" xref="S5.SS2.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo><mi id="S5.SS2.11.11.11.11.m1.1.1" xref="S5.SS2.11.11.11.11.m1.1.1.cmml">μ</mi><mo id="S5.SS2.11.11.11.11.m1.1.2.2.2.2" stretchy="false" xref="S5.SS2.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo></mrow><mi id="S5.SS2.11.11.11.11.m1.1.2.3" mathvariant="normal" xref="S5.SS2.11.11.11.11.m1.1.2.3.cmml">r</mi></msup><annotation-xml encoding="MathML-Content" id="S5.SS2.11.11.11.11.m1.1b"><apply id="S5.SS2.11.11.11.11.m1.1.2.cmml" xref="S5.SS2.11.11.11.11.m1.1.2"><csymbol cd="ambiguous" id="S5.SS2.11.11.11.11.m1.1.2.1.cmml" xref="S5.SS2.11.11.11.11.m1.1.2">superscript</csymbol><apply id="S5.SS2.11.11.11.11.m1.1.2.2.1.cmml" xref="S5.SS2.11.11.11.11.m1.1.2.2.2"><csymbol cd="latexml" id="S5.SS2.11.11.11.11.m1.1.2.2.1.1.cmml" xref="S5.SS2.11.11.11.11.m1.1.2.2.2.1">norm</csymbol><ci id="S5.SS2.11.11.11.11.m1.1.1.cmml" xref="S5.SS2.11.11.11.11.m1.1.1">𝜇</ci></apply><ci id="S5.SS2.11.11.11.11.m1.1.2.3.cmml" xref="S5.SS2.11.11.11.11.m1.1.2.3">r</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.11.11.11.11.m1.1c">\|\mu\|^{\rm r}</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.11.11.11.11.m1.1d">∥ italic_μ ∥ start_POSTSUPERSCRIPT roman_r end_POSTSUPERSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS2.12.12.12.12.m2.1"><semantics id="S5.SS2.12.12.12.12.m2.1a"><mo id="S5.SS2.12.12.12.12.m2.1.1" stretchy="false" xref="S5.SS2.12.12.12.12.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.12.12.12.12.m2.1b"><ci id="S5.SS2.12.12.12.12.m2.1.1.cmml" xref="S5.SS2.12.12.12.12.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.12.12.12.12.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.12.12.12.12.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.14.14.14.14">
<math alttext="\overline{r}" class="ltx_Math" display="inline" id="S5.SS2.13.13.13.13.m1.1"><semantics id="S5.SS2.13.13.13.13.m1.1a"><mover accent="true" id="S5.SS2.13.13.13.13.m1.1.1" xref="S5.SS2.13.13.13.13.m1.1.1.cmml"><mi id="S5.SS2.13.13.13.13.m1.1.1.2" xref="S5.SS2.13.13.13.13.m1.1.1.2.cmml">r</mi><mo id="S5.SS2.13.13.13.13.m1.1.1.1" xref="S5.SS2.13.13.13.13.m1.1.1.1.cmml">¯</mo></mover><annotation-xml encoding="MathML-Content" id="S5.SS2.13.13.13.13.m1.1b"><apply id="S5.SS2.13.13.13.13.m1.1.1.cmml" xref="S5.SS2.13.13.13.13.m1.1.1"><ci id="S5.SS2.13.13.13.13.m1.1.1.1.cmml" xref="S5.SS2.13.13.13.13.m1.1.1.1">¯</ci><ci id="S5.SS2.13.13.13.13.m1.1.1.2.cmml" xref="S5.SS2.13.13.13.13.m1.1.1.2">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.13.13.13.13.m1.1c">\overline{r}</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.13.13.13.13.m1.1d">over¯ start_ARG italic_r end_ARG</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.14.14.14.14.m2.1"><semantics id="S5.SS2.14.14.14.14.m2.1a"><mo id="S5.SS2.14.14.14.14.m2.1.1" stretchy="false" xref="S5.SS2.14.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.14.14.14.14.m2.1b"><ci id="S5.SS2.14.14.14.14.m2.1.1.cmml" xref="S5.SS2.14.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.14.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.14.14.14.14.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.16.16.16.16">
<math alttext="\rho" class="ltx_Math" display="inline" id="S5.SS2.15.15.15.15.m1.1"><semantics id="S5.SS2.15.15.15.15.m1.1a"><mi id="S5.SS2.15.15.15.15.m1.1.1" xref="S5.SS2.15.15.15.15.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.15.15.15.15.m1.1b"><ci id="S5.SS2.15.15.15.15.m1.1.1.cmml" xref="S5.SS2.15.15.15.15.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.15.15.15.15.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.15.15.15.15.m1.1d">italic_ρ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.16.16.16.16.m2.1"><semantics id="S5.SS2.16.16.16.16.m2.1a"><mo id="S5.SS2.16.16.16.16.m2.1.1" stretchy="false" xref="S5.SS2.16.16.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.16.16.16.16.m2.1b"><ci id="S5.SS2.16.16.16.16.m2.1.1.cmml" xref="S5.SS2.16.16.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.16.16.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.16.16.16.16.m2.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.SS2.18.18.18.18">
<math alttext="\kappa" class="ltx_Math" display="inline" id="S5.SS2.17.17.17.17.m1.1"><semantics id="S5.SS2.17.17.17.17.m1.1a"><mi id="S5.SS2.17.17.17.17.m1.1.1" xref="S5.SS2.17.17.17.17.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="S5.SS2.17.17.17.17.m1.1b"><ci id="S5.SS2.17.17.17.17.m1.1.1.cmml" xref="S5.SS2.17.17.17.17.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.17.17.17.17.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.17.17.17.17.m1.1d">italic_κ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.18.18.18.18.m2.1"><semantics id="S5.SS2.18.18.18.18.m2.1a"><mo id="S5.SS2.18.18.18.18.m2.1.1" stretchy="false" xref="S5.SS2.18.18.18.18.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.18.18.18.18.m2.1b"><ci id="S5.SS2.18.18.18.18.m2.1.1.cmml" xref="S5.SS2.18.18.18.18.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.18.18.18.18.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.18.18.18.18.m2.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.SS2.18.18.19.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.1">
<span class="ltx_ERROR undefined" id="S5.SS2.18.18.19.1.1.1">\resultsL</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.2"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.3"></th>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.4"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.5"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.6"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.7"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.8"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.9"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.10"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="S5.SS2.18.18.19.1.11"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of large-scale experiments conducted in the paper.  It compares the performance of models trained using standard Adam and Coupled Adam optimizers on different dataset sizes (D) and model sizes (N). The metrics used to evaluate performance are: test loss (L), average accuracy across downstream tasks (Acc), isotropy (Iso), the 2-norm of the mean embedding vector (||µ||), the average 2-norm of the embedding vectors (||ei||), the correlation between embedding vector length and unigram probability (p), and the condition number (κ). For each combination of dataset and model size and each metric, the better result (either higher or lower value depending on the metric) is highlighted in bold, indicating statistical significance.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of our large-scale experiments. See the caption of Tab. 4.3 for an explanation of the column names. For each combination (D,N)𝐷𝑁(D,N)( italic_D , italic_N ) and each metric, the respective better value is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T5.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T5.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A5.T5.6.7.1.1">Description</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T5.6.7.1.2">Small-scale</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T5.6.7.1.3">Large-scale</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T5.6.8.2.1">optimizer</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T5.6.8.2.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A5.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.1.1.1"><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A5.T5.1.1.1.m1.1"><semantics id="A5.T5.1.1.1.m1.1a"><msub id="A5.T5.1.1.1.m1.1.1" xref="A5.T5.1.1.1.m1.1.1.cmml"><mi id="A5.T5.1.1.1.m1.1.1.2" xref="A5.T5.1.1.1.m1.1.1.2.cmml">β</mi><mn id="A5.T5.1.1.1.m1.1.1.3" xref="A5.T5.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A5.T5.1.1.1.m1.1b"><apply id="A5.T5.1.1.1.m1.1.1.cmml" xref="A5.T5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T5.1.1.1.m1.1.1.1.cmml" xref="A5.T5.1.1.1.m1.1.1">subscript</csymbol><ci id="A5.T5.1.1.1.m1.1.1.2.cmml" xref="A5.T5.1.1.1.m1.1.1.2">𝛽</ci><cn id="A5.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="A5.T5.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.1.1.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A5.T5.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.1.1.2">0.9</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.2.2.1"><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A5.T5.2.2.1.m1.1"><semantics id="A5.T5.2.2.1.m1.1a"><msub id="A5.T5.2.2.1.m1.1.1" xref="A5.T5.2.2.1.m1.1.1.cmml"><mi id="A5.T5.2.2.1.m1.1.1.2" xref="A5.T5.2.2.1.m1.1.1.2.cmml">β</mi><mn id="A5.T5.2.2.1.m1.1.1.3" xref="A5.T5.2.2.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A5.T5.2.2.1.m1.1b"><apply id="A5.T5.2.2.1.m1.1.1.cmml" xref="A5.T5.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T5.2.2.1.m1.1.1.1.cmml" xref="A5.T5.2.2.1.m1.1.1">subscript</csymbol><ci id="A5.T5.2.2.1.m1.1.1.2.cmml" xref="A5.T5.2.2.1.m1.1.1.2">𝛽</ci><cn id="A5.T5.2.2.1.m1.1.1.3.cmml" type="integer" xref="A5.T5.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.2.2.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A5.T5.2.2.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.2.2.2">0.95</td>
</tr>
<tr class="ltx_tr" id="A5.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.3.3.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="A5.T5.3.3.1.m1.1"><semantics id="A5.T5.3.3.1.m1.1a"><mi id="A5.T5.3.3.1.m1.1.1" xref="A5.T5.3.3.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A5.T5.3.3.1.m1.1b"><ci id="A5.T5.3.3.1.m1.1.1.cmml" xref="A5.T5.3.3.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.3.3.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A5.T5.3.3.1.m1.1d">italic_ϵ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.3.3.2">1e-8</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.9.3.1">weight decay</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.9.3.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.10.4.1">gradient clipping</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.10.4.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.11.5.1">dropout</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.11.5.2">0.0</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.12.6.1">weight tying</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.12.6.2">true</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.13.7.1">vocab size</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.13.7.2">50304</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.14.8.1">learning rate schedule</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.14.8.2">cosine decay</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.15.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.15.9.1">layer normalization</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.15.9.2">LayerNorm</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.16.10.1">precision</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A5.T5.6.16.10.2">BF16</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.17.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T5.6.17.11.1">hidden activation</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.17.11.2">GeLU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.17.11.3">SwiGLU</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.18.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.18.12.1">positional embedding</th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.18.12.2">absolute (learned)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.18.12.3">RoPE</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.19.13.1">sequence length</th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.19.13.2">1024</td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.19.13.3">2048</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.20.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.20.14.1">batch size (samples)</th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.20.14.2">96</td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.20.14.3">256</td>
</tr>
<tr class="ltx_tr" id="A5.T5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.5.5.3">batch size (tokens)</th>
<td class="ltx_td ltx_align_center" id="A5.T5.4.4.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A5.T5.4.4.1.m1.1"><semantics id="A5.T5.4.4.1.m1.1a"><mo id="A5.T5.4.4.1.m1.1.1" xref="A5.T5.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A5.T5.4.4.1.m1.1b"><csymbol cd="latexml" id="A5.T5.4.4.1.m1.1.1.cmml" xref="A5.T5.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A5.T5.4.4.1.m1.1d">∼</annotation></semantics></math>100k</td>
<td class="ltx_td ltx_align_center" id="A5.T5.5.5.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A5.T5.5.5.2.m1.1"><semantics id="A5.T5.5.5.2.m1.1a"><mo id="A5.T5.5.5.2.m1.1.1" xref="A5.T5.5.5.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A5.T5.5.5.2.m1.1b"><csymbol cd="latexml" id="A5.T5.5.5.2.m1.1.1.cmml" xref="A5.T5.5.5.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.5.5.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A5.T5.5.5.2.m1.1d">∼</annotation></semantics></math>500k</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.6.2">warmup</th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.6.3">100 steps</td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.6.1">
<math alttext="1\%" class="ltx_Math" display="inline" id="A5.T5.6.6.1.m1.1"><semantics id="A5.T5.6.6.1.m1.1a"><mrow id="A5.T5.6.6.1.m1.1.1" xref="A5.T5.6.6.1.m1.1.1.cmml"><mn id="A5.T5.6.6.1.m1.1.1.2" xref="A5.T5.6.6.1.m1.1.1.2.cmml">1</mn><mo id="A5.T5.6.6.1.m1.1.1.1" xref="A5.T5.6.6.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A5.T5.6.6.1.m1.1b"><apply id="A5.T5.6.6.1.m1.1.1.cmml" xref="A5.T5.6.6.1.m1.1.1"><csymbol cd="latexml" id="A5.T5.6.6.1.m1.1.1.1.cmml" xref="A5.T5.6.6.1.m1.1.1.1">percent</csymbol><cn id="A5.T5.6.6.1.m1.1.1.2.cmml" type="integer" xref="A5.T5.6.6.1.m1.1.1.2">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.6.6.1.m1.1c">1\%</annotation><annotation encoding="application/x-llamapun" id="A5.T5.6.6.1.m1.1d">1 %</annotation></semantics></math> of steps</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.21.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T5.6.21.15.1">training framework</th>
<td class="ltx_td ltx_align_center" id="A5.T5.6.21.15.2">nanoGPT</td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.21.15.3">Modalities</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.22.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T5.6.22.16.1">training parallelism</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.22.16.2">DDP</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.22.16.3">FSDP</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the pseudocode for the Stochastic Gradient Descent (SGD) algorithm, a common optimization method in machine learning.  It details how SGD updates the embedding vectors (ei) in a language model. The algorithm includes an optional momentum term (γ) to accelerate convergence and smooth out the updates.  The input includes the learning rate (η), the initial embedding vectors, the objective function (L), and the number of timesteps (T). The output is the final set of embedding vectors after training.
> <details>
> <summary>read the caption</summary>
> Algorithm 2  Pseudocode for the SGD algorithm with optional momentum, applied to the embedding vectors eisubscript𝑒𝑖e_{i}italic_e start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A5.T6.1.1.1"><math alttext="N" class="ltx_Math" display="inline" id="A5.T6.1.1.1.m1.1"><semantics id="A5.T6.1.1.1.m1.1a"><mi id="A5.T6.1.1.1.m1.1.1" xref="A5.T6.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A5.T6.1.1.1.m1.1b"><ci id="A5.T6.1.1.1.m1.1.1.cmml" xref="A5.T6.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A5.T6.1.1.1.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T6.1.1.2">lr</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.1.1.3">heads</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.1.1.4">layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.1.1.5">emb. dim.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T6.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T6.1.2.1.1">124M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A5.T6.1.2.1.2">6.0e-4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.1.2.1.3">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.1.2.1.4">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.1.2.1.5">768</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A5.T6.1.3.2.1">350M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T6.1.3.2.2">3.0e-4</th>
<td class="ltx_td ltx_align_center" id="A5.T6.1.3.2.3">16</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.3.2.4">24</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.3.2.5">1024</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A5.T6.1.4.3.1">760M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T6.1.4.3.2">2.5e-4</th>
<td class="ltx_td ltx_align_center" id="A5.T6.1.4.3.3">16</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.4.3.4">24</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.4.3.5">1536</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A5.T6.1.5.4.1">1.3B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A5.T6.1.5.4.2">2.0e-4</th>
<td class="ltx_td ltx_align_center" id="A5.T6.1.5.4.3">32</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.5.4.4">24</td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.5.4.5">2048</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T6.1.6.5.1">2.6B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A5.T6.1.6.5.2">1.6e-4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.1.6.5.3">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.1.6.5.4">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.1.6.5.5">2560</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the general hyperparameters used in the small-scale and large-scale experiments described in the paper.  It includes settings for both the optimizer (AdamW), its hyperparameters (betas, weight decay, gradient clipping), embedding parameters (dropout, weight tying, vocabulary size), and training parameters (learning rate schedule, layer normalization, precision, activation function, positional embedding, sequence length, batch size (samples and tokens), and warmup steps. The training framework (nanoGPT vs. Modalities) and training parallelism (DDP vs. FSDP) are also specified.
> <details>
> <summary>read the caption</summary>
> Table 5: General hyperparameters used in our two sets of experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A7.SS3.18.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.SS3.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.SS3.1.1.1.1"><math alttext="D" class="ltx_Math" display="inline" id="A7.SS3.1.1.1.1.m1.1"><semantics id="A7.SS3.1.1.1.1.m1.1a"><mi id="A7.SS3.1.1.1.1.m1.1.1" xref="A7.SS3.1.1.1.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.1.1.1.1.m1.1b"><ci id="A7.SS3.1.1.1.1.m1.1.1.cmml" xref="A7.SS3.1.1.1.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.1.1.1.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.1.1.1.1.m1.1d">italic_D</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.SS3.2.2.2.2"><math alttext="N" class="ltx_Math" display="inline" id="A7.SS3.2.2.2.2.m1.1"><semantics id="A7.SS3.2.2.2.2.m1.1a"><mi id="A7.SS3.2.2.2.2.m1.1.1" xref="A7.SS3.2.2.2.2.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.2.2.2.2.m1.1b"><ci id="A7.SS3.2.2.2.2.m1.1.1.cmml" xref="A7.SS3.2.2.2.2.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.2.2.2.2.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.2.2.2.2.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A7.SS3.18.18.18.19">Optimizer</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.4.4.4.4">
<math alttext="\mathcal{L}" class="ltx_Math" display="inline" id="A7.SS3.3.3.3.3.m1.1"><semantics id="A7.SS3.3.3.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A7.SS3.3.3.3.3.m1.1.1" xref="A7.SS3.3.3.3.3.m1.1.1.cmml">ℒ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.3.3.3.3.m1.1b"><ci id="A7.SS3.3.3.3.3.m1.1.1.cmml" xref="A7.SS3.3.3.3.3.m1.1.1">ℒ</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.3.3.3.3.m1.1c">\mathcal{L}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.3.3.3.3.m1.1d">caligraphic_L</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.4.4.4.4.m2.1"><semantics id="A7.SS3.4.4.4.4.m2.1a"><mo id="A7.SS3.4.4.4.4.m2.1.1" stretchy="false" xref="A7.SS3.4.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.4.4.4.4.m2.1b"><ci id="A7.SS3.4.4.4.4.m2.1.1.cmml" xref="A7.SS3.4.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.4.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.4.4.4.4.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.6.6.6.6">
<math alttext="\rm Acc" class="ltx_Math" display="inline" id="A7.SS3.5.5.5.5.m1.1"><semantics id="A7.SS3.5.5.5.5.m1.1a"><mi id="A7.SS3.5.5.5.5.m1.1.1" xref="A7.SS3.5.5.5.5.m1.1.1.cmml">Acc</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.5.5.5.5.m1.1b"><ci id="A7.SS3.5.5.5.5.m1.1.1.cmml" xref="A7.SS3.5.5.5.5.m1.1.1">Acc</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.5.5.5.5.m1.1c">\rm Acc</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.5.5.5.5.m1.1d">roman_Acc</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.6.6.6.6.m2.1"><semantics id="A7.SS3.6.6.6.6.m2.1a"><mo id="A7.SS3.6.6.6.6.m2.1.1" stretchy="false" xref="A7.SS3.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.6.6.6.6.m2.1b"><ci id="A7.SS3.6.6.6.6.m2.1.1.cmml" xref="A7.SS3.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.6.6.6.6.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.8.8.8.8">
<math alttext="{\rm Iso}" class="ltx_Math" display="inline" id="A7.SS3.7.7.7.7.m1.1"><semantics id="A7.SS3.7.7.7.7.m1.1a"><mi id="A7.SS3.7.7.7.7.m1.1.1" xref="A7.SS3.7.7.7.7.m1.1.1.cmml">Iso</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.7.7.7.7.m1.1b"><ci id="A7.SS3.7.7.7.7.m1.1.1.cmml" xref="A7.SS3.7.7.7.7.m1.1.1">Iso</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.7.7.7.7.m1.1c">{\rm Iso}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.7.7.7.7.m1.1d">roman_Iso</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.8.8.8.8.m2.1"><semantics id="A7.SS3.8.8.8.8.m2.1a"><mo id="A7.SS3.8.8.8.8.m2.1.1" stretchy="false" xref="A7.SS3.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.8.8.8.8.m2.1b"><ci id="A7.SS3.8.8.8.8.m2.1.1.cmml" xref="A7.SS3.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.8.8.8.8.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.10.10.10.10">
<math alttext="\|\mu\|" class="ltx_Math" display="inline" id="A7.SS3.9.9.9.9.m1.1"><semantics id="A7.SS3.9.9.9.9.m1.1a"><mrow id="A7.SS3.9.9.9.9.m1.1.2.2" xref="A7.SS3.9.9.9.9.m1.1.2.1.cmml"><mo id="A7.SS3.9.9.9.9.m1.1.2.2.1" stretchy="false" xref="A7.SS3.9.9.9.9.m1.1.2.1.1.cmml">‖</mo><mi id="A7.SS3.9.9.9.9.m1.1.1" xref="A7.SS3.9.9.9.9.m1.1.1.cmml">μ</mi><mo id="A7.SS3.9.9.9.9.m1.1.2.2.2" stretchy="false" xref="A7.SS3.9.9.9.9.m1.1.2.1.1.cmml">‖</mo></mrow><annotation-xml encoding="MathML-Content" id="A7.SS3.9.9.9.9.m1.1b"><apply id="A7.SS3.9.9.9.9.m1.1.2.1.cmml" xref="A7.SS3.9.9.9.9.m1.1.2.2"><csymbol cd="latexml" id="A7.SS3.9.9.9.9.m1.1.2.1.1.cmml" xref="A7.SS3.9.9.9.9.m1.1.2.2.1">norm</csymbol><ci id="A7.SS3.9.9.9.9.m1.1.1.cmml" xref="A7.SS3.9.9.9.9.m1.1.1">𝜇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.9.9.9.9.m1.1c">\|\mu\|</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.9.9.9.9.m1.1d">∥ italic_μ ∥</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.10.10.10.10.m2.1"><semantics id="A7.SS3.10.10.10.10.m2.1a"><mo id="A7.SS3.10.10.10.10.m2.1.1" stretchy="false" xref="A7.SS3.10.10.10.10.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.10.10.10.10.m2.1b"><ci id="A7.SS3.10.10.10.10.m2.1.1.cmml" xref="A7.SS3.10.10.10.10.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.10.10.10.10.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.10.10.10.10.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.12.12.12.12">
<math alttext="\|\mu\|^{\rm r}" class="ltx_Math" display="inline" id="A7.SS3.11.11.11.11.m1.1"><semantics id="A7.SS3.11.11.11.11.m1.1a"><msup id="A7.SS3.11.11.11.11.m1.1.2" xref="A7.SS3.11.11.11.11.m1.1.2.cmml"><mrow id="A7.SS3.11.11.11.11.m1.1.2.2.2" xref="A7.SS3.11.11.11.11.m1.1.2.2.1.cmml"><mo id="A7.SS3.11.11.11.11.m1.1.2.2.2.1" stretchy="false" xref="A7.SS3.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo><mi id="A7.SS3.11.11.11.11.m1.1.1" xref="A7.SS3.11.11.11.11.m1.1.1.cmml">μ</mi><mo id="A7.SS3.11.11.11.11.m1.1.2.2.2.2" stretchy="false" xref="A7.SS3.11.11.11.11.m1.1.2.2.1.1.cmml">‖</mo></mrow><mi id="A7.SS3.11.11.11.11.m1.1.2.3" mathvariant="normal" xref="A7.SS3.11.11.11.11.m1.1.2.3.cmml">r</mi></msup><annotation-xml encoding="MathML-Content" id="A7.SS3.11.11.11.11.m1.1b"><apply id="A7.SS3.11.11.11.11.m1.1.2.cmml" xref="A7.SS3.11.11.11.11.m1.1.2"><csymbol cd="ambiguous" id="A7.SS3.11.11.11.11.m1.1.2.1.cmml" xref="A7.SS3.11.11.11.11.m1.1.2">superscript</csymbol><apply id="A7.SS3.11.11.11.11.m1.1.2.2.1.cmml" xref="A7.SS3.11.11.11.11.m1.1.2.2.2"><csymbol cd="latexml" id="A7.SS3.11.11.11.11.m1.1.2.2.1.1.cmml" xref="A7.SS3.11.11.11.11.m1.1.2.2.2.1">norm</csymbol><ci id="A7.SS3.11.11.11.11.m1.1.1.cmml" xref="A7.SS3.11.11.11.11.m1.1.1">𝜇</ci></apply><ci id="A7.SS3.11.11.11.11.m1.1.2.3.cmml" xref="A7.SS3.11.11.11.11.m1.1.2.3">r</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.11.11.11.11.m1.1c">\|\mu\|^{\rm r}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.11.11.11.11.m1.1d">∥ italic_μ ∥ start_POSTSUPERSCRIPT roman_r end_POSTSUPERSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.12.12.12.12.m2.1"><semantics id="A7.SS3.12.12.12.12.m2.1a"><mo id="A7.SS3.12.12.12.12.m2.1.1" stretchy="false" xref="A7.SS3.12.12.12.12.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.12.12.12.12.m2.1b"><ci id="A7.SS3.12.12.12.12.m2.1.1.cmml" xref="A7.SS3.12.12.12.12.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.12.12.12.12.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.12.12.12.12.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.14.14.14.14">
<math alttext="\overline{r}" class="ltx_Math" display="inline" id="A7.SS3.13.13.13.13.m1.1"><semantics id="A7.SS3.13.13.13.13.m1.1a"><mover accent="true" id="A7.SS3.13.13.13.13.m1.1.1" xref="A7.SS3.13.13.13.13.m1.1.1.cmml"><mi id="A7.SS3.13.13.13.13.m1.1.1.2" xref="A7.SS3.13.13.13.13.m1.1.1.2.cmml">r</mi><mo id="A7.SS3.13.13.13.13.m1.1.1.1" xref="A7.SS3.13.13.13.13.m1.1.1.1.cmml">¯</mo></mover><annotation-xml encoding="MathML-Content" id="A7.SS3.13.13.13.13.m1.1b"><apply id="A7.SS3.13.13.13.13.m1.1.1.cmml" xref="A7.SS3.13.13.13.13.m1.1.1"><ci id="A7.SS3.13.13.13.13.m1.1.1.1.cmml" xref="A7.SS3.13.13.13.13.m1.1.1.1">¯</ci><ci id="A7.SS3.13.13.13.13.m1.1.1.2.cmml" xref="A7.SS3.13.13.13.13.m1.1.1.2">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.13.13.13.13.m1.1c">\overline{r}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.13.13.13.13.m1.1d">over¯ start_ARG italic_r end_ARG</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.14.14.14.14.m2.1"><semantics id="A7.SS3.14.14.14.14.m2.1a"><mo id="A7.SS3.14.14.14.14.m2.1.1" stretchy="false" xref="A7.SS3.14.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.14.14.14.14.m2.1b"><ci id="A7.SS3.14.14.14.14.m2.1.1.cmml" xref="A7.SS3.14.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.14.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.14.14.14.14.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.16.16.16.16">
<math alttext="\rho" class="ltx_Math" display="inline" id="A7.SS3.15.15.15.15.m1.1"><semantics id="A7.SS3.15.15.15.15.m1.1a"><mi id="A7.SS3.15.15.15.15.m1.1.1" xref="A7.SS3.15.15.15.15.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.15.15.15.15.m1.1b"><ci id="A7.SS3.15.15.15.15.m1.1.1.cmml" xref="A7.SS3.15.15.15.15.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.15.15.15.15.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.15.15.15.15.m1.1d">italic_ρ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.16.16.16.16.m2.1"><semantics id="A7.SS3.16.16.16.16.m2.1a"><mo id="A7.SS3.16.16.16.16.m2.1.1" stretchy="false" xref="A7.SS3.16.16.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.16.16.16.16.m2.1b"><ci id="A7.SS3.16.16.16.16.m2.1.1.cmml" xref="A7.SS3.16.16.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.16.16.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.16.16.16.16.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.18.18.18.18">
<math alttext="\kappa" class="ltx_Math" display="inline" id="A7.SS3.17.17.17.17.m1.1"><semantics id="A7.SS3.17.17.17.17.m1.1a"><mi id="A7.SS3.17.17.17.17.m1.1.1" xref="A7.SS3.17.17.17.17.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.17.17.17.17.m1.1b"><ci id="A7.SS3.17.17.17.17.m1.1.1.cmml" xref="A7.SS3.17.17.17.17.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.17.17.17.17.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.17.17.17.17.m1.1d">italic_κ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.18.18.18.18.m2.1"><semantics id="A7.SS3.18.18.18.18.m2.1a"><mo id="A7.SS3.18.18.18.18.m2.1.1" stretchy="false" xref="A7.SS3.18.18.18.18.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.18.18.18.18.m2.1b"><ci id="A7.SS3.18.18.18.18.m2.1.1.cmml" xref="A7.SS3.18.18.18.18.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.18.18.18.18.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.18.18.18.18.m2.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.SS3.18.18.19.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.1">
<span class="ltx_ERROR undefined" id="A7.SS3.18.18.19.1.1.1">\resultsAblationsSGDExpFive</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.2"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.3"></th>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.4"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.5"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.6"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.7"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.8"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.9"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.10"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.18.18.19.1.11"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameter settings used in the experiments for different model sizes.  The hyperparameters are those that change depending on the model size, and exclude those which remain constant across experiments.  Key hyperparameters listed include the model size (in number of parameters), maximum learning rate, number of attention heads, number of layers in the model, and embedding dimension.
> <details>
> <summary>read the caption</summary>
> Table 6: Model-size dependent hyperparameter used in our experiments. N𝑁Nitalic_N denotes the model size in terms of parameters, while lr corresponds to the maximum learning rate.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A7.SS3.36.36">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.SS3.36.36.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.SS3.19.19.1.1"><math alttext="D" class="ltx_Math" display="inline" id="A7.SS3.19.19.1.1.m1.1"><semantics id="A7.SS3.19.19.1.1.m1.1a"><mi id="A7.SS3.19.19.1.1.m1.1.1" xref="A7.SS3.19.19.1.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.19.19.1.1.m1.1b"><ci id="A7.SS3.19.19.1.1.m1.1.1.cmml" xref="A7.SS3.19.19.1.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.19.19.1.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.19.19.1.1.m1.1d">italic_D</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.SS3.20.20.2.2"><math alttext="N" class="ltx_Math" display="inline" id="A7.SS3.20.20.2.2.m1.1"><semantics id="A7.SS3.20.20.2.2.m1.1a"><mi id="A7.SS3.20.20.2.2.m1.1.1" xref="A7.SS3.20.20.2.2.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.20.20.2.2.m1.1b"><ci id="A7.SS3.20.20.2.2.m1.1.1.cmml" xref="A7.SS3.20.20.2.2.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.20.20.2.2.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.20.20.2.2.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A7.SS3.36.36.18.19">Optimizer</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.22.22.4.4">
<math alttext="\mathcal{L}" class="ltx_Math" display="inline" id="A7.SS3.21.21.3.3.m1.1"><semantics id="A7.SS3.21.21.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A7.SS3.21.21.3.3.m1.1.1" xref="A7.SS3.21.21.3.3.m1.1.1.cmml">ℒ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.21.21.3.3.m1.1b"><ci id="A7.SS3.21.21.3.3.m1.1.1.cmml" xref="A7.SS3.21.21.3.3.m1.1.1">ℒ</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.21.21.3.3.m1.1c">\mathcal{L}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.21.21.3.3.m1.1d">caligraphic_L</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.22.22.4.4.m2.1"><semantics id="A7.SS3.22.22.4.4.m2.1a"><mo id="A7.SS3.22.22.4.4.m2.1.1" stretchy="false" xref="A7.SS3.22.22.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.22.22.4.4.m2.1b"><ci id="A7.SS3.22.22.4.4.m2.1.1.cmml" xref="A7.SS3.22.22.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.22.22.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.22.22.4.4.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.24.24.6.6">
<math alttext="\rm Acc" class="ltx_Math" display="inline" id="A7.SS3.23.23.5.5.m1.1"><semantics id="A7.SS3.23.23.5.5.m1.1a"><mi id="A7.SS3.23.23.5.5.m1.1.1" xref="A7.SS3.23.23.5.5.m1.1.1.cmml">Acc</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.23.23.5.5.m1.1b"><ci id="A7.SS3.23.23.5.5.m1.1.1.cmml" xref="A7.SS3.23.23.5.5.m1.1.1">Acc</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.23.23.5.5.m1.1c">\rm Acc</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.23.23.5.5.m1.1d">roman_Acc</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.24.24.6.6.m2.1"><semantics id="A7.SS3.24.24.6.6.m2.1a"><mo id="A7.SS3.24.24.6.6.m2.1.1" stretchy="false" xref="A7.SS3.24.24.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.24.24.6.6.m2.1b"><ci id="A7.SS3.24.24.6.6.m2.1.1.cmml" xref="A7.SS3.24.24.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.24.24.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.24.24.6.6.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.26.26.8.8">
<math alttext="{\rm Iso}" class="ltx_Math" display="inline" id="A7.SS3.25.25.7.7.m1.1"><semantics id="A7.SS3.25.25.7.7.m1.1a"><mi id="A7.SS3.25.25.7.7.m1.1.1" xref="A7.SS3.25.25.7.7.m1.1.1.cmml">Iso</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.25.25.7.7.m1.1b"><ci id="A7.SS3.25.25.7.7.m1.1.1.cmml" xref="A7.SS3.25.25.7.7.m1.1.1">Iso</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.25.25.7.7.m1.1c">{\rm Iso}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.25.25.7.7.m1.1d">roman_Iso</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.26.26.8.8.m2.1"><semantics id="A7.SS3.26.26.8.8.m2.1a"><mo id="A7.SS3.26.26.8.8.m2.1.1" stretchy="false" xref="A7.SS3.26.26.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.26.26.8.8.m2.1b"><ci id="A7.SS3.26.26.8.8.m2.1.1.cmml" xref="A7.SS3.26.26.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.26.26.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.26.26.8.8.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.28.28.10.10">
<math alttext="\|\mu\|" class="ltx_Math" display="inline" id="A7.SS3.27.27.9.9.m1.1"><semantics id="A7.SS3.27.27.9.9.m1.1a"><mrow id="A7.SS3.27.27.9.9.m1.1.2.2" xref="A7.SS3.27.27.9.9.m1.1.2.1.cmml"><mo id="A7.SS3.27.27.9.9.m1.1.2.2.1" stretchy="false" xref="A7.SS3.27.27.9.9.m1.1.2.1.1.cmml">‖</mo><mi id="A7.SS3.27.27.9.9.m1.1.1" xref="A7.SS3.27.27.9.9.m1.1.1.cmml">μ</mi><mo id="A7.SS3.27.27.9.9.m1.1.2.2.2" stretchy="false" xref="A7.SS3.27.27.9.9.m1.1.2.1.1.cmml">‖</mo></mrow><annotation-xml encoding="MathML-Content" id="A7.SS3.27.27.9.9.m1.1b"><apply id="A7.SS3.27.27.9.9.m1.1.2.1.cmml" xref="A7.SS3.27.27.9.9.m1.1.2.2"><csymbol cd="latexml" id="A7.SS3.27.27.9.9.m1.1.2.1.1.cmml" xref="A7.SS3.27.27.9.9.m1.1.2.2.1">norm</csymbol><ci id="A7.SS3.27.27.9.9.m1.1.1.cmml" xref="A7.SS3.27.27.9.9.m1.1.1">𝜇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.27.27.9.9.m1.1c">\|\mu\|</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.27.27.9.9.m1.1d">∥ italic_μ ∥</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.28.28.10.10.m2.1"><semantics id="A7.SS3.28.28.10.10.m2.1a"><mo id="A7.SS3.28.28.10.10.m2.1.1" stretchy="false" xref="A7.SS3.28.28.10.10.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.28.28.10.10.m2.1b"><ci id="A7.SS3.28.28.10.10.m2.1.1.cmml" xref="A7.SS3.28.28.10.10.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.28.28.10.10.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.28.28.10.10.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.30.30.12.12">
<math alttext="\|\mu\|^{\rm r}" class="ltx_Math" display="inline" id="A7.SS3.29.29.11.11.m1.1"><semantics id="A7.SS3.29.29.11.11.m1.1a"><msup id="A7.SS3.29.29.11.11.m1.1.2" xref="A7.SS3.29.29.11.11.m1.1.2.cmml"><mrow id="A7.SS3.29.29.11.11.m1.1.2.2.2" xref="A7.SS3.29.29.11.11.m1.1.2.2.1.cmml"><mo id="A7.SS3.29.29.11.11.m1.1.2.2.2.1" stretchy="false" xref="A7.SS3.29.29.11.11.m1.1.2.2.1.1.cmml">‖</mo><mi id="A7.SS3.29.29.11.11.m1.1.1" xref="A7.SS3.29.29.11.11.m1.1.1.cmml">μ</mi><mo id="A7.SS3.29.29.11.11.m1.1.2.2.2.2" stretchy="false" xref="A7.SS3.29.29.11.11.m1.1.2.2.1.1.cmml">‖</mo></mrow><mi id="A7.SS3.29.29.11.11.m1.1.2.3" mathvariant="normal" xref="A7.SS3.29.29.11.11.m1.1.2.3.cmml">r</mi></msup><annotation-xml encoding="MathML-Content" id="A7.SS3.29.29.11.11.m1.1b"><apply id="A7.SS3.29.29.11.11.m1.1.2.cmml" xref="A7.SS3.29.29.11.11.m1.1.2"><csymbol cd="ambiguous" id="A7.SS3.29.29.11.11.m1.1.2.1.cmml" xref="A7.SS3.29.29.11.11.m1.1.2">superscript</csymbol><apply id="A7.SS3.29.29.11.11.m1.1.2.2.1.cmml" xref="A7.SS3.29.29.11.11.m1.1.2.2.2"><csymbol cd="latexml" id="A7.SS3.29.29.11.11.m1.1.2.2.1.1.cmml" xref="A7.SS3.29.29.11.11.m1.1.2.2.2.1">norm</csymbol><ci id="A7.SS3.29.29.11.11.m1.1.1.cmml" xref="A7.SS3.29.29.11.11.m1.1.1">𝜇</ci></apply><ci id="A7.SS3.29.29.11.11.m1.1.2.3.cmml" xref="A7.SS3.29.29.11.11.m1.1.2.3">r</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.29.29.11.11.m1.1c">\|\mu\|^{\rm r}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.29.29.11.11.m1.1d">∥ italic_μ ∥ start_POSTSUPERSCRIPT roman_r end_POSTSUPERSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.SS3.30.30.12.12.m2.1"><semantics id="A7.SS3.30.30.12.12.m2.1a"><mo id="A7.SS3.30.30.12.12.m2.1.1" stretchy="false" xref="A7.SS3.30.30.12.12.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.30.30.12.12.m2.1b"><ci id="A7.SS3.30.30.12.12.m2.1.1.cmml" xref="A7.SS3.30.30.12.12.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.30.30.12.12.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.30.30.12.12.m2.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.32.32.14.14">
<math alttext="\overline{r}" class="ltx_Math" display="inline" id="A7.SS3.31.31.13.13.m1.1"><semantics id="A7.SS3.31.31.13.13.m1.1a"><mover accent="true" id="A7.SS3.31.31.13.13.m1.1.1" xref="A7.SS3.31.31.13.13.m1.1.1.cmml"><mi id="A7.SS3.31.31.13.13.m1.1.1.2" xref="A7.SS3.31.31.13.13.m1.1.1.2.cmml">r</mi><mo id="A7.SS3.31.31.13.13.m1.1.1.1" xref="A7.SS3.31.31.13.13.m1.1.1.1.cmml">¯</mo></mover><annotation-xml encoding="MathML-Content" id="A7.SS3.31.31.13.13.m1.1b"><apply id="A7.SS3.31.31.13.13.m1.1.1.cmml" xref="A7.SS3.31.31.13.13.m1.1.1"><ci id="A7.SS3.31.31.13.13.m1.1.1.1.cmml" xref="A7.SS3.31.31.13.13.m1.1.1.1">¯</ci><ci id="A7.SS3.31.31.13.13.m1.1.1.2.cmml" xref="A7.SS3.31.31.13.13.m1.1.1.2">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.31.31.13.13.m1.1c">\overline{r}</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.31.31.13.13.m1.1d">over¯ start_ARG italic_r end_ARG</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.32.32.14.14.m2.1"><semantics id="A7.SS3.32.32.14.14.m2.1a"><mo id="A7.SS3.32.32.14.14.m2.1.1" stretchy="false" xref="A7.SS3.32.32.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.32.32.14.14.m2.1b"><ci id="A7.SS3.32.32.14.14.m2.1.1.cmml" xref="A7.SS3.32.32.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.32.32.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.32.32.14.14.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.34.34.16.16">
<math alttext="\rho" class="ltx_Math" display="inline" id="A7.SS3.33.33.15.15.m1.1"><semantics id="A7.SS3.33.33.15.15.m1.1a"><mi id="A7.SS3.33.33.15.15.m1.1.1" xref="A7.SS3.33.33.15.15.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.33.33.15.15.m1.1b"><ci id="A7.SS3.33.33.15.15.m1.1.1.cmml" xref="A7.SS3.33.33.15.15.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.33.33.15.15.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.33.33.15.15.m1.1d">italic_ρ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.34.34.16.16.m2.1"><semantics id="A7.SS3.34.34.16.16.m2.1a"><mo id="A7.SS3.34.34.16.16.m2.1.1" stretchy="false" xref="A7.SS3.34.34.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.34.34.16.16.m2.1b"><ci id="A7.SS3.34.34.16.16.m2.1.1.cmml" xref="A7.SS3.34.34.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.34.34.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.34.34.16.16.m2.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A7.SS3.36.36.18.18">
<math alttext="\kappa" class="ltx_Math" display="inline" id="A7.SS3.35.35.17.17.m1.1"><semantics id="A7.SS3.35.35.17.17.m1.1a"><mi id="A7.SS3.35.35.17.17.m1.1.1" xref="A7.SS3.35.35.17.17.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="A7.SS3.35.35.17.17.m1.1b"><ci id="A7.SS3.35.35.17.17.m1.1.1.cmml" xref="A7.SS3.35.35.17.17.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.35.35.17.17.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.35.35.17.17.m1.1d">italic_κ</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.SS3.36.36.18.18.m2.1"><semantics id="A7.SS3.36.36.18.18.m2.1a"><mo id="A7.SS3.36.36.18.18.m2.1.1" stretchy="false" xref="A7.SS3.36.36.18.18.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.SS3.36.36.18.18.m2.1b"><ci id="A7.SS3.36.36.18.18.m2.1.1.cmml" xref="A7.SS3.36.36.18.18.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.SS3.36.36.18.18.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.SS3.36.36.18.18.m2.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.SS3.36.36.19.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.1">
<span class="ltx_ERROR undefined" id="A7.SS3.36.36.19.1.1.1">\resultsAblationsSGDExpTen</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.2"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.3"></th>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.4"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.5"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.6"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.7"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.8"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.9"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.10"></td>
<td class="ltx_td ltx_border_tt ltx_border_t" id="A7.SS3.36.36.19.1.11"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using Stochastic Gradient Descent (SGD) as the optimizer for word embeddings, comparing it against Coupled Adam.  It shows the test loss, downstream task accuracy (averaged across multiple tasks), isotropy, mean embedding norm, average embedding norm, the correlation between embedding length and unigram probability, and the embedding matrix's condition number. For each metric, the best performing model is highlighted in bold, indicating statistically significant improvements over other configurations. The experiments were conducted with different dataset and model sizes.
> <details>
> <summary>read the caption</summary>
> Table 7: Results of our experiments with SGD. Values are highlighted in bold if they are significantly better than all the other values in the same column.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.08441/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08441/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}