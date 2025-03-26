---
title: "Expert Race: A Flexible Routing Strategy for Scaling Diffusion Transformer with Mixture of Experts"
summary: "Expert Race: A flexible routing strategy for scaling diffusion transformer with mixture of experts. "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16057 {{< /keyword >}}
{{< keyword icon="writer" >}} Yike Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16057" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16057" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16057/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models have become a key framework in visual generation, and integrating Mixture of Experts (MoE) shows promise for improving scalability and performance. However, visual signals in diffusion models have distinct characteristics like high spatial redundancy and temporal variation in denoising task complexity. Previous routing strategies have limitations in adapting to these characteristics, potentially leading to inefficient model utilization and suboptimal performance. 



This paper introduces Race-DiT, a MoE model with a flexible routing strategy called Expert Race, allowing dynamic expert allocation to critical tokens. By letting tokens and experts compete and selecting top candidates, the model dynamically assigns experts to critical tokens. Per-layer regularization addresses shallow layer learning challenges, and router similarity loss prevents mode collapse, ensuring better expert utilization. Experiments on ImageNet validate the approach's effectiveness, showing significant performance gains and promising scaling properties.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Expert Race, a novel MoE routing strategy supports high routing allocation flexibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Router similarity loss optimizes expert collaboration maintaining workload equilibrium. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Per-layer Regularization ensures effective learning in shallow layers of MoE models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces a novel MoE routing strategy** and **addresses the limitations** of existing methods, enhancing scalability and performance. It **opens new research avenues** in diffusion models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/teaser_v7.png)

> 🔼 This figure shows a comparison of different routing strategies in Mixture of Experts (MoE) models for diffusion transformers. The left panel illustrates the proposed 'Expert Race' routing strategy, which uses a Top-k selection to choose the best combination of tokens and experts, providing greater flexibility compared to previous methods such as 'Token Choice' and 'Expert Choice'. The right panel presents a training curve comparison between the proposed model (Race-DiT) and the DiT-XL model from the literature.  Despite having the same number of activated parameters, the proposed model achieves a 7.2x speedup in reaching the same training loss, demonstrating its efficiency and scalability.
> <details>
> <summary>read the caption</summary>
> Figure 1: (Left) Our proposed Expert Race routing employs Top-k𝑘kitalic_k selection over full token-expert affinity logits, achieving the highest flexibility compared to prior methods like Token Choice and Expert Choice.  (Right) Training curve comparisons between DiT-XL [25] and ours. Our model, with equal number of activated parameters, achieves a 7.2×\mathbf{7.2\times}bold_7.2 × speedup in iterations when reaching the same training loss.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_minipage ltx_align_middle" id="S4.F3.13.12" style="width:212.5pt;">
<tr class="ltx_tr" id="S4.F3.4.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.F3.4.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.F3.4.3.3.4.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F3.2.1.1.1"><math alttext="D_{A}" class="ltx_Math" display="inline" id="S4.F3.2.1.1.1.m1.1"><semantics id="S4.F3.2.1.1.1.m1.1a"><msub id="S4.F3.2.1.1.1.m1.1.1" xref="S4.F3.2.1.1.1.m1.1.1.cmml"><mi id="S4.F3.2.1.1.1.m1.1.1.2" mathsize="90%" xref="S4.F3.2.1.1.1.m1.1.1.2.cmml">D</mi><mi id="S4.F3.2.1.1.1.m1.1.1.3" mathsize="90%" xref="S4.F3.2.1.1.1.m1.1.1.3.cmml">A</mi></msub><annotation-xml encoding="MathML-Content" id="S4.F3.2.1.1.1.m1.1b"><apply id="S4.F3.2.1.1.1.m1.1.1.cmml" xref="S4.F3.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.F3.2.1.1.1.m1.1.1.1.cmml" xref="S4.F3.2.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.F3.2.1.1.1.m1.1.1.2.cmml" xref="S4.F3.2.1.1.1.m1.1.1.2">𝐷</ci><ci id="S4.F3.2.1.1.1.m1.1.1.3.cmml" xref="S4.F3.2.1.1.1.m1.1.1.3">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.2.1.1.1.m1.1c">D_{A}</annotation><annotation encoding="application/x-llamapun" id="S4.F3.2.1.1.1.m1.1d">italic_D start_POSTSUBSCRIPT italic_A end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F3.3.2.2.2"><math alttext="D_{B}" class="ltx_Math" display="inline" id="S4.F3.3.2.2.2.m1.1"><semantics id="S4.F3.3.2.2.2.m1.1a"><msub id="S4.F3.3.2.2.2.m1.1.1" xref="S4.F3.3.2.2.2.m1.1.1.cmml"><mi id="S4.F3.3.2.2.2.m1.1.1.2" mathsize="90%" xref="S4.F3.3.2.2.2.m1.1.1.2.cmml">D</mi><mi id="S4.F3.3.2.2.2.m1.1.1.3" mathsize="90%" xref="S4.F3.3.2.2.2.m1.1.1.3.cmml">B</mi></msub><annotation-xml encoding="MathML-Content" id="S4.F3.3.2.2.2.m1.1b"><apply id="S4.F3.3.2.2.2.m1.1.1.cmml" xref="S4.F3.3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.F3.3.2.2.2.m1.1.1.1.cmml" xref="S4.F3.3.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.F3.3.2.2.2.m1.1.1.2.cmml" xref="S4.F3.3.2.2.2.m1.1.1.2">𝐷</ci><ci id="S4.F3.3.2.2.2.m1.1.1.3.cmml" xref="S4.F3.3.2.2.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.3.2.2.2.m1.1c">D_{B}</annotation><annotation encoding="application/x-llamapun" id="S4.F3.3.2.2.2.m1.1d">italic_D start_POSTSUBSCRIPT italic_B end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F3.4.3.3.3"><math alttext="\mathcal{K}" class="ltx_Math" display="inline" id="S4.F3.4.3.3.3.m1.1"><semantics id="S4.F3.4.3.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.F3.4.3.3.3.m1.1.1" mathsize="90%" xref="S4.F3.4.3.3.3.m1.1.1.cmml">𝒦</mi><annotation-xml encoding="MathML-Content" id="S4.F3.4.3.3.3.m1.1b"><ci id="S4.F3.4.3.3.3.m1.1.1.cmml" xref="S4.F3.4.3.3.3.m1.1.1">𝒦</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.4.3.3.3.m1.1c">\mathcal{K}</annotation><annotation encoding="application/x-llamapun" id="S4.F3.4.3.3.3.m1.1d">caligraphic_K</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.F3.7.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.F3.7.6.6.4"><span class="ltx_text" id="S4.F3.7.6.6.4.1" style="font-size:90%;">Token-choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.5.4.4.1"><math alttext="B*L" class="ltx_Math" display="inline" id="S4.F3.5.4.4.1.m1.1"><semantics id="S4.F3.5.4.4.1.m1.1a"><mrow id="S4.F3.5.4.4.1.m1.1.1" xref="S4.F3.5.4.4.1.m1.1.1.cmml"><mi id="S4.F3.5.4.4.1.m1.1.1.2" mathsize="90%" xref="S4.F3.5.4.4.1.m1.1.1.2.cmml">B</mi><mo id="S4.F3.5.4.4.1.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.5.4.4.1.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.5.4.4.1.m1.1.1.3" mathsize="90%" xref="S4.F3.5.4.4.1.m1.1.1.3.cmml">L</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.F3.5.4.4.1.m1.1b"><apply id="S4.F3.5.4.4.1.m1.1.1.cmml" xref="S4.F3.5.4.4.1.m1.1.1"><times id="S4.F3.5.4.4.1.m1.1.1.1.cmml" xref="S4.F3.5.4.4.1.m1.1.1.1"></times><ci id="S4.F3.5.4.4.1.m1.1.1.2.cmml" xref="S4.F3.5.4.4.1.m1.1.1.2">𝐵</ci><ci id="S4.F3.5.4.4.1.m1.1.1.3.cmml" xref="S4.F3.5.4.4.1.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.5.4.4.1.m1.1c">B*L</annotation><annotation encoding="application/x-llamapun" id="S4.F3.5.4.4.1.m1.1d">italic_B ∗ italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.6.5.5.2"><math alttext="E" class="ltx_Math" display="inline" id="S4.F3.6.5.5.2.m1.1"><semantics id="S4.F3.6.5.5.2.m1.1a"><mi id="S4.F3.6.5.5.2.m1.1.1" mathsize="90%" xref="S4.F3.6.5.5.2.m1.1.1.cmml">E</mi><annotation-xml encoding="MathML-Content" id="S4.F3.6.5.5.2.m1.1b"><ci id="S4.F3.6.5.5.2.m1.1.1.cmml" xref="S4.F3.6.5.5.2.m1.1.1">𝐸</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.6.5.5.2.m1.1c">E</annotation><annotation encoding="application/x-llamapun" id="S4.F3.6.5.5.2.m1.1d">italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.7.6.6.3"><math alttext="k" class="ltx_Math" display="inline" id="S4.F3.7.6.6.3.m1.1"><semantics id="S4.F3.7.6.6.3.m1.1a"><mi id="S4.F3.7.6.6.3.m1.1.1" mathsize="90%" xref="S4.F3.7.6.6.3.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.F3.7.6.6.3.m1.1b"><ci id="S4.F3.7.6.6.3.m1.1.1.cmml" xref="S4.F3.7.6.6.3.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.7.6.6.3.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.F3.7.6.6.3.m1.1d">italic_k</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.F3.10.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.10.9.9.4"><span class="ltx_text" id="S4.F3.10.9.9.4.1" style="font-size:90%;">Expert-choice</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.8.7.7.1"><math alttext="B*E" class="ltx_Math" display="inline" id="S4.F3.8.7.7.1.m1.1"><semantics id="S4.F3.8.7.7.1.m1.1a"><mrow id="S4.F3.8.7.7.1.m1.1.1" xref="S4.F3.8.7.7.1.m1.1.1.cmml"><mi id="S4.F3.8.7.7.1.m1.1.1.2" mathsize="90%" xref="S4.F3.8.7.7.1.m1.1.1.2.cmml">B</mi><mo id="S4.F3.8.7.7.1.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.8.7.7.1.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.8.7.7.1.m1.1.1.3" mathsize="90%" xref="S4.F3.8.7.7.1.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.F3.8.7.7.1.m1.1b"><apply id="S4.F3.8.7.7.1.m1.1.1.cmml" xref="S4.F3.8.7.7.1.m1.1.1"><times id="S4.F3.8.7.7.1.m1.1.1.1.cmml" xref="S4.F3.8.7.7.1.m1.1.1.1"></times><ci id="S4.F3.8.7.7.1.m1.1.1.2.cmml" xref="S4.F3.8.7.7.1.m1.1.1.2">𝐵</ci><ci id="S4.F3.8.7.7.1.m1.1.1.3.cmml" xref="S4.F3.8.7.7.1.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.8.7.7.1.m1.1c">B*E</annotation><annotation encoding="application/x-llamapun" id="S4.F3.8.7.7.1.m1.1d">italic_B ∗ italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.F3.9.8.8.2"><math alttext="L" class="ltx_Math" display="inline" id="S4.F3.9.8.8.2.m1.1"><semantics id="S4.F3.9.8.8.2.m1.1a"><mi id="S4.F3.9.8.8.2.m1.1.1" mathsize="90%" xref="S4.F3.9.8.8.2.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.F3.9.8.8.2.m1.1b"><ci id="S4.F3.9.8.8.2.m1.1.1.cmml" xref="S4.F3.9.8.8.2.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.9.8.8.2.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.F3.9.8.8.2.m1.1d">italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.F3.10.9.9.3"><math alttext="k*L/E" class="ltx_Math" display="inline" id="S4.F3.10.9.9.3.m1.1"><semantics id="S4.F3.10.9.9.3.m1.1a"><mrow id="S4.F3.10.9.9.3.m1.1.1" xref="S4.F3.10.9.9.3.m1.1.1.cmml"><mrow id="S4.F3.10.9.9.3.m1.1.1.2" xref="S4.F3.10.9.9.3.m1.1.1.2.cmml"><mi id="S4.F3.10.9.9.3.m1.1.1.2.2" mathsize="90%" xref="S4.F3.10.9.9.3.m1.1.1.2.2.cmml">k</mi><mo id="S4.F3.10.9.9.3.m1.1.1.2.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.10.9.9.3.m1.1.1.2.1.cmml">∗</mo><mi id="S4.F3.10.9.9.3.m1.1.1.2.3" mathsize="90%" xref="S4.F3.10.9.9.3.m1.1.1.2.3.cmml">L</mi></mrow><mo id="S4.F3.10.9.9.3.m1.1.1.1" maxsize="90%" minsize="90%" stretchy="true" symmetric="true" xref="S4.F3.10.9.9.3.m1.1.1.1.cmml">/</mo><mi id="S4.F3.10.9.9.3.m1.1.1.3" mathsize="90%" xref="S4.F3.10.9.9.3.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.F3.10.9.9.3.m1.1b"><apply id="S4.F3.10.9.9.3.m1.1.1.cmml" xref="S4.F3.10.9.9.3.m1.1.1"><divide id="S4.F3.10.9.9.3.m1.1.1.1.cmml" xref="S4.F3.10.9.9.3.m1.1.1.1"></divide><apply id="S4.F3.10.9.9.3.m1.1.1.2.cmml" xref="S4.F3.10.9.9.3.m1.1.1.2"><times id="S4.F3.10.9.9.3.m1.1.1.2.1.cmml" xref="S4.F3.10.9.9.3.m1.1.1.2.1"></times><ci id="S4.F3.10.9.9.3.m1.1.1.2.2.cmml" xref="S4.F3.10.9.9.3.m1.1.1.2.2">𝑘</ci><ci id="S4.F3.10.9.9.3.m1.1.1.2.3.cmml" xref="S4.F3.10.9.9.3.m1.1.1.2.3">𝐿</ci></apply><ci id="S4.F3.10.9.9.3.m1.1.1.3.cmml" xref="S4.F3.10.9.9.3.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.10.9.9.3.m1.1c">k*L/E</annotation><annotation encoding="application/x-llamapun" id="S4.F3.10.9.9.3.m1.1d">italic_k ∗ italic_L / italic_E</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.F3.13.12.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.F3.13.12.12.4"><span class="ltx_text" id="S4.F3.13.12.12.4.1" style="font-size:90%;">Expert-Race</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F3.11.10.10.1"><math alttext="1" class="ltx_Math" display="inline" id="S4.F3.11.10.10.1.m1.1"><semantics id="S4.F3.11.10.10.1.m1.1a"><mn id="S4.F3.11.10.10.1.m1.1.1" mathsize="90%" xref="S4.F3.11.10.10.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S4.F3.11.10.10.1.m1.1b"><cn id="S4.F3.11.10.10.1.m1.1.1.cmml" type="integer" xref="S4.F3.11.10.10.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.11.10.10.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="S4.F3.11.10.10.1.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F3.12.11.11.2"><math alttext="B*L*E" class="ltx_Math" display="inline" id="S4.F3.12.11.11.2.m1.1"><semantics id="S4.F3.12.11.11.2.m1.1a"><mrow id="S4.F3.12.11.11.2.m1.1.1" xref="S4.F3.12.11.11.2.m1.1.1.cmml"><mi id="S4.F3.12.11.11.2.m1.1.1.2" mathsize="90%" xref="S4.F3.12.11.11.2.m1.1.1.2.cmml">B</mi><mo id="S4.F3.12.11.11.2.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.12.11.11.2.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.12.11.11.2.m1.1.1.3" mathsize="90%" xref="S4.F3.12.11.11.2.m1.1.1.3.cmml">L</mi><mo id="S4.F3.12.11.11.2.m1.1.1.1a" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.12.11.11.2.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.12.11.11.2.m1.1.1.4" mathsize="90%" xref="S4.F3.12.11.11.2.m1.1.1.4.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.F3.12.11.11.2.m1.1b"><apply id="S4.F3.12.11.11.2.m1.1.1.cmml" xref="S4.F3.12.11.11.2.m1.1.1"><times id="S4.F3.12.11.11.2.m1.1.1.1.cmml" xref="S4.F3.12.11.11.2.m1.1.1.1"></times><ci id="S4.F3.12.11.11.2.m1.1.1.2.cmml" xref="S4.F3.12.11.11.2.m1.1.1.2">𝐵</ci><ci id="S4.F3.12.11.11.2.m1.1.1.3.cmml" xref="S4.F3.12.11.11.2.m1.1.1.3">𝐿</ci><ci id="S4.F3.12.11.11.2.m1.1.1.4.cmml" xref="S4.F3.12.11.11.2.m1.1.1.4">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.12.11.11.2.m1.1c">B*L*E</annotation><annotation encoding="application/x-llamapun" id="S4.F3.12.11.11.2.m1.1d">italic_B ∗ italic_L ∗ italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F3.13.12.12.3"><math alttext="B*L*k" class="ltx_Math" display="inline" id="S4.F3.13.12.12.3.m1.1"><semantics id="S4.F3.13.12.12.3.m1.1a"><mrow id="S4.F3.13.12.12.3.m1.1.1" xref="S4.F3.13.12.12.3.m1.1.1.cmml"><mi id="S4.F3.13.12.12.3.m1.1.1.2" mathsize="90%" xref="S4.F3.13.12.12.3.m1.1.1.2.cmml">B</mi><mo id="S4.F3.13.12.12.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.13.12.12.3.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.13.12.12.3.m1.1.1.3" mathsize="90%" xref="S4.F3.13.12.12.3.m1.1.1.3.cmml">L</mi><mo id="S4.F3.13.12.12.3.m1.1.1.1a" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S4.F3.13.12.12.3.m1.1.1.1.cmml">∗</mo><mi id="S4.F3.13.12.12.3.m1.1.1.4" mathsize="90%" xref="S4.F3.13.12.12.3.m1.1.1.4.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.F3.13.12.12.3.m1.1b"><apply id="S4.F3.13.12.12.3.m1.1.1.cmml" xref="S4.F3.13.12.12.3.m1.1.1"><times id="S4.F3.13.12.12.3.m1.1.1.1.cmml" xref="S4.F3.13.12.12.3.m1.1.1.1"></times><ci id="S4.F3.13.12.12.3.m1.1.1.2.cmml" xref="S4.F3.13.12.12.3.m1.1.1.2">𝐵</ci><ci id="S4.F3.13.12.12.3.m1.1.1.3.cmml" xref="S4.F3.13.12.12.3.m1.1.1.3">𝐿</ci><ci id="S4.F3.13.12.12.3.m1.1.1.4.cmml" xref="S4.F3.13.12.12.3.m1.1.1.4">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F3.13.12.12.3.m1.1c">B*L*k</annotation><annotation encoding="application/x-llamapun" id="S4.F3.13.12.12.3.m1.1d">italic_B ∗ italic_L ∗ italic_k</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an ablation study that investigates the impact of different routing strategies (Token Choice, Expert Choice, and Expert Race) and gating functions (softmax, sigmoid, and identity) on the performance of a diffusion transformer model.  The performance is measured using three metrics: FID (Fréchet Inception Distance), CMMD (Classifier-based Metric for Measuring Diffusion Models), and CLIP (Contrastive Language–Image Pre-training). Lower FID and CMMD scores indicate better image quality, while a higher CLIP score indicates better alignment between the generated images and their text descriptions.
> <details>
> <summary>read the caption</summary>
> Table 1: Ablation study on routing strategy and gating function.
> </details>





### In-depth insights


#### Expert Race MoE
The concept of "Expert Race MoE" likely represents a Mixture of Experts architecture where experts dynamically compete to process input tokens. This allows for flexible routing, enabling the model to allocate computational resources to the most complex or informative parts of the input. Key features would include **a racing mechanism for experts selection**, potentially using top-k selection or learnable thresholds. The benefits could be enhanced performance, faster convergence, and better scaling properties compared to traditional MoE approaches with fixed expert assignments. Challenges might involve **ensuring fair competition among experts**, preventing mode collapse, and maintaining training stability. This innovative approach promises significant advancements in the field.

#### Routing Strategy
The routing strategy is **pivotal for MoE performance**, enabling dynamic expert allocation based on input complexity. **Expert Race** stands out, enabling more flexibility in expert assignments across both spatial image regions and temporal denoising steps, leading to more adaptive allocation patterns. **The choice of gating function** is also an important consideration, and the work found that identity gating outperforms both softmax and sigmoid variants, preserving the partial ordering of scores across different tokens, which is crucial for the selection of relevant token-expert combinations.

#### Balancing Loads
Balancing loads in MoE models is critical. **Uneven expert utilization hinders performance.** Traditional methods promote uniform distribution, but may cause collapse where experts learn similar rules, negating benefits. More effective strategies consider diverse expert combinations and router similarity. Techniques to assess balance include metrics measuring violation of capacity limits and pairwise combination ratios, leading to **improved generation quality and load-balancing performance.** A key approach would be maximizing specialization by promoting pairwise diversity among experts and computing cross-correlation matrices.

#### DiT Scaling Laws
**Scaling laws** are crucial for understanding how model performance improves with increasing compute, data, and model size. For Diffusion Transformers (DiT), understanding these laws would involve analyzing how metrics like FID and IS change as we scale the number of parameters, training data, or the size of the transformer blocks. Key insights would include identifying the optimal balance between network depth and width, the effect of increased dataset diversity, and the diminishing returns as models get larger. Understanding these scaling laws provides guidance for efficiently allocating resources, designing better architectures, and predicting the performance of even larger DiTs. MoEs further influence these laws.

#### Per-Layer Reg.
**Per-Layer Regularization** addresses a critical challenge in scaling diffusion transformers with Mixture of Experts (MoE), specifically the **imbalance in learning speed between shallow and deep layers**. In pre-normalization architectures like DiT, adaLN can amplify the outputs of deeper layers, overshadowing the contributions of shallower layers. This leads to **slower learning in early layers**, hindering the MoE training process, where expert assignment might struggle initially with noisy inputs. The technique introduces a **pre-layer regularization** that enhances gradients in a supervised manner, without altering the core network. This is achieved by adding a projection layer and applying auxiliary loss. This layer predicts output target. Supervising these predictions effectively **boosts the contributions of shallow layers**, resulting in overall **improved MoE performance and faster convergence.** This also **stabilizes training**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/pipeline_v6.png)

> 🔼 This figure illustrates the architecture of Race-DiT, a novel Mixture of Experts (MoE) model for diffusion transformers.  The key innovation is the replacement of the traditional Multi-Layer Perceptron (MLP) with a MoE block. This block comprises a router and multiple experts.  The model's routing mechanism is designed for flexibility: token assignment happens only once, and each token can be routed to zero or more experts, with each expert potentially processing a varying number of tokens. This differs from previous methods, where each token was typically assigned to a fixed number of experts. The flexibility allows for dynamic and efficient resource allocation in processing image data.
> <details>
> <summary>read the caption</summary>
> Figure 2: The Race-DiT Architecture. We replace the Multi-Layer Perceptron (MLP) with the MoE block, which consists of a Router and multiple Experts. In Race-DiT, the token assignment is done once for all. Each token can be assigned to any number of experts, and each expert can process any number of tokens (including zero).
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/arxiv_logits_assign_v2.png)

> 🔼 This figure compares three different routing strategies in Mixture of Experts (MoE) models for diffusion transformers: Token Choice, Expert Choice, and Expert Race.  Token Choice selects the top 𝐾 experts for each token independently. Expert Choice selects the top 𝐾 tokens for each expert independently.  Expert Race, in contrast, performs a global selection, choosing the top 𝐾 token-expert pairs across the entire set, offering the greatest flexibility. The variables 𝐵, 𝐿, and 𝐸 represent batch size, sequence length, and the number of experts, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 3: Top-𝒦𝒦\mathcal{K}caligraphic_K Selection Flexibility and Specifications. B𝐵Bitalic_B: batch size; L𝐿Litalic_L: sequence length; E𝐸Eitalic_E: the number of experts. (a) Token Choice selects top-𝒦𝒦\mathcal{K}caligraphic_K experts along the expert dimension for each token. (b) Expert Choice selects top-𝒦𝒦\mathcal{K}caligraphic_K tokens along the sequence dimension for each expert. (c) Expert Race selects top-𝒦𝒦{\mathcal{K}}caligraphic_K across the entire set.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/output_norm.png)

> 🔼 This figure illustrates the concept of load balancing in Mixture of Experts (MoE) models.  The top panel shows a scenario where, despite each expert processing two tokens (achieving perfect load balance), experts 1 and 2 are assigned identical tokens, as are experts 3 and 4. This results in a collapse where the effective number of experts is reduced from four to two, negating the benefits of having multiple experts. The bottom panel demonstrates a more desirable allocation, where each expert is assigned unique tokens, leading to better utilization of expert specialization and improved model performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Toy examples of token assignment. Both of the two cases show perfect load balance that each expert process two tokens. But in the case above, experts 1 and 2 are assigned the same token, as are experts 3 and 4, where the 2-in-4 MoE collapse into 1-in-2. The example below shows a more diverse assignment, making full use of the expert specialization.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/allocation.png)

> 🔼 This figure displays the norm of each block's output in a diffusion model before it's added to the skip connections (shortcuts).  It shows that the norm grows significantly larger in deeper layers compared to shallower layers.  This disparity weakens the shallower layers in terms of their influence on the overall network output. The researchers address this issue with their proposed method: per-layer regularization.
> <details>
> <summary>read the caption</summary>
> Figure 5: The norm of each block’s output before added to the shortcuts. The output norm increases rapidly in deep layers, resulting in the weakening of shallow-layer components. This issue is alleviated with our proposed per-layer regularization.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/arxiv_dense_vs_moe.png)

> 🔼 This figure visualizes the dynamic allocation of experts across different time steps during the image denoising process in the Expert Race model.  It shows that the Expert Race method intelligently assigns a higher number of experts to the more challenging time steps, which are those earlier in the process (represented by lower timestep indices) that are focused on generating finer image details. In contrast to other methods, Expert Race adapts the number of experts based on the complexity of the task at each step, allowing for more efficient resource utilization.
> <details>
> <summary>read the caption</summary>
> Figure 6: Average token allocation at different time steps. Expert-Race assigns more experts to the more complex denoising time steps, which occur at lower timestep indices that handle finer-grain image details.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/arxiv_scaling_law.png)

> 🔼 This figure shows the effectiveness of the proposed router similarity loss in promoting diversity among expert activations.  It compares the usage of expert combinations (pairs of experts activated together) across different model sizes, varying the number of experts from 16 to 128. The models incorporating the router similarity loss show significantly higher combination usage than those without, indicating a more diverse and efficient use of experts. The models using the standard balance loss fall between those with no constraint and the router similarity loss.
> <details>
> <summary>read the caption</summary>
> Figure 7: Combination usage comparison between different number of experts.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/compare_choices_methods_v2.png)

> 🔼 Figure 8 presents a comparison of the performance of dense and MoE models across different scales (Base, Medium, Large, and Extra-Large).  It shows training loss curves and FID (Fréchet Inception Distance) scores for both types of models.  The key takeaway is that the MoE models consistently achieve lower training loss and better FID scores compared to their dense counterparts, demonstrating improved efficiency.  Furthermore, the MoE model with a medium activation size outperforms the dense model at the extra-large scale, highlighting the scalability benefits of the MoE approach.
> <details>
> <summary>read the caption</summary>
> Figure 8: A comparison between Dense and our MoE models. Our MoE models consistently outperform their Dense counterparts across the FID and training curves. Notably, the MoE model with activation size M shows better performance compared to the Dense model scaled to size XL.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/random_generation.jpg)

> 🔼 Figure 9 presents scaling experiments performed on the DiT-B model with various MoE configurations.  The x-axis represents the ratio of hidden dimension split to the number of experts (hidden split ratio) while the y-axis displays the FID score (Fréchet Inception Distance), a measure of image generation quality, on the ImageNet 256x256 dataset.  The different colored lines represent different MoE configurations (e.g., 1-in-4, 2-in-8, etc.), where 'x-in-y' indicates that 'x' experts are activated out of 'y' candidates.  The results show a roughly linear decrease in FID scores (improvement in image quality) as the model size increases by adjusting either the number of candidate experts or the split ratio.  This demonstrates that the proposed Expert Race method scales effectively and achieves consistent improvement in performance.
> <details>
> <summary>read the caption</summary>
> Figure 9: Scaling results of DiT-B in different MoE configurations. Our method demonstrates linear performance improvement when varying expert split ratios and increasing the number of candidate experts.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/PLR_figure.png)

> 🔼 This figure illustrates different routing strategies used in Mixture of Experts (MoE) models.  It compares the flexibility of selecting the top-k tokens and experts in the model.  (a) shows Token Choice which selects top-k experts for each token independently. (b) shows Expert Choice which selects top-k tokens for each expert independently. (c) to (e) expand the selection flexibility by choosing the top-k experts in various combinations of batch, sequence length, and experts. (f) Expert Race which selects top-k across the entire set, offering the maximum flexibility.
> <details>
> <summary>read the caption</summary>
> Figure 10: Top-𝒦𝒦\mathcal{K}caligraphic_K selection flexibility in more extended routing strategies.
> </details>



![](https://arxiv.org/html/2503.16057/x2.png)

> 🔼 This figure displays several 256x256 images generated by the RaceDiT-XL/2-4in32 model.  The model uses a Mixture-of-Experts (MoE) architecture, and the images demonstrate the model's ability to generate diverse and high-quality images. A classifier-free guidance scale of 4 was used during generation.
> <details>
> <summary>read the caption</summary>
> Figure 11: Random generated 256×256256256256\times 256256 × 256 samples from RaceDiT-XL/2-4in32. Classifier-free guidance scale is 4.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/compare_to_ditmoe.png)

> 🔼 This figure illustrates the Per-Layer Regularization (PLR) method.  The input (hidden activation, hᵢ) from layer i is fed into a two-layer Multi-Layer Perceptron (MLP) router. The first layer performs a linear transformation and GELU activation, maintaining the original hidden dimension. The second layer splits into two branches: a gating head that produces routing logits for the MoE, and a target head which makes a prediction of the final target (y).  The L2 loss between the prediction from the target head (H(hᵢ)) and the ground truth target (y) is calculated for each layer. This process aligns intermediate layer outputs with the final target, improving the optimization of the shallow MoE layers. This addresses the issue of shallower layers lagging behind deeper layers in training due to adaLN's amplification of deeper layer outputs.
> <details>
> <summary>read the caption</summary>
> Figure 12: An illustration of the calculation for Per-Layer Regularization.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/88.jpg)

> 🔼 This figure illustrates the process of calculating the Combination Usage metric.  This metric quantifies the diversity of expert pairings used in the model. It starts by creating a histogram showing the frequency of each unique pair of experts activated together across all tokens.  These counts are then sorted in descending order and normalized to obtain a sorted normalized histogram. Finally, a cumulative sum is computed, and the percentage of combinations whose cumulative sum is less than 95% is calculated and reported as the Combination Usage. This value indicates the proportion of commonly activated expert pairs, thus reflecting the degree of diversity in how experts are used.
> <details>
> <summary>read the caption</summary>
> Figure 13: Compute process of Combination Usage.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/33.jpg)

> 🔼 This figure compares the training curves of the DiT-MoE model from a related work [9] and the proposed RaceDiT model.  It shows the training loss plotted against the number of training iterations. The comparison illustrates the relative training speed and efficiency of the two models.  The RaceDiT model appears to converge faster to a lower loss than DiT-MoE, suggesting improved training performance.
> <details>
> <summary>read the caption</summary>
> Figure 14: Training curve comparisons between DiT-MoE [9] and our model.
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/291.jpg)

> 🔼 This figure displays several images of macaws generated by the RaceDiT-XL/2-4in32 model. The images are 256x256 pixels, generated with a classifier-free guidance scale of 4.0.  The model successfully generates a variety of macaw images with different poses and backgrounds, demonstrating its ability to produce high-quality and diverse outputs. The label 'Macaw (88)' indicates the class ID of 88 used for conditional generation.
> <details>
> <summary>read the caption</summary>
> Figure 15: Samples from RaceDiT-XL/2-4in32 (256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: Macaw (88)
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/387.jpg)

> 🔼 This figure displays several images of loggerhead turtles generated by the RaceDiT-XL/2-4in32 model, a Mixture of Experts (MoE) model for diffusion transformers. The images are 256x256 pixels.  The model utilized a classifier-free guidance scale of 4.0 during generation.  The 'loggerhead turtle' label was used as a prompt to guide the generation process.
> <details>
> <summary>read the caption</summary>
> Figure 16: Samples from RaceDiT-XL/2-4in32 (256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: loggerhead turtle (33)
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/511.jpg)

> 🔼 This figure displays a sample of images generated by the RaceDiT-XL/2-4in32 model, which is a Mixture of Experts (MoE) diffusion model. The images are 256x256 pixels and the classifier-free guidance scale was set to 4.0.  All the images in the sample depict lions, showcasing the model's ability to generate high-quality images of a specific class.
> <details>
> <summary>read the caption</summary>
> Figure 17: Samples from RaceDiT-XL/2-4in32 (256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: lion (291)
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/417.jpg)

> 🔼 This figure displays sample images generated by the RaceDiT-XL/2-4in32 model, a diffusion transformer model employing the Expert Race routing strategy. The images are 256x256 pixels and were generated using a classifier-free guidance scale of 4.0. The specific label used for generation is 'lesser panda' (class ID 387).  The figure showcases the model's ability to generate high-quality, realistic images of lesser pandas.
> <details>
> <summary>read the caption</summary>
> Figure 18: Samples from RaceDiT-XL/2-4in32 (256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: lesser panda (387)
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/975.jpg)

> 🔼 This figure displays several images generated by the RaceDiT-XL/2-4in32 model, a diffusion model that utilizes a Mixture of Experts (MoE) architecture. The images are all 256x256 pixels in size and were generated with a classifier-free guidance scale of 4.0.  The specific label used for generating these examples was 'convertible' (ImageNet class ID 511). This showcases the model's ability to generate high-quality and diverse images of convertibles.
> <details>
> <summary>read the caption</summary>
> Figure 19: Samples from RaceDiT-XL/2-4in32 (256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: convertible (511)
> </details>



![](https://arxiv.org/html/2503.16057/extracted/6296282/figures/gen_samples/980.jpg)

> 🔼 This figure displays a set of images generated by the RaceDiT-XL/2-4in32 model, a Mixture-of-Experts (MoE) diffusion model.  The images are 256x256 pixels in size and are conditioned on the label 'balloon' (class ID 417).  The classifier-free guidance scale used was 4.0.  The figure visually demonstrates the model's ability to generate diverse and realistic images of hot air balloons.
> <details>
> <summary>read the caption</summary>
> Figure 20: Samples from RaceDiT-XL/2-4in32(256×256256256256\times 256256 × 256). Classifier-free guidance: 4.0 Label: balloon (417)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T1.3">
<tr class="ltx_tr" id="S7.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T1.3.3.4"><span class="ltx_text ltx_font_bold" id="S7.T1.3.3.4.1" style="font-size:90%;">Routing</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T1.3.3.5"><span class="ltx_text ltx_font_bold" id="S7.T1.3.3.5.1" style="font-size:90%;">Gating</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.T1.1.1.1.1" style="font-size:90%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T1.1.1.1.1.1.m1.1"><semantics id="S7.T1.1.1.1.1.1.m1.1a"><mo id="S7.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T1.1.1.1.1.1.m1.1b"><ci id="S7.T1.1.1.1.1.1.m1.1.1.cmml" xref="S7.T1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.T1.2.2.2.1" style="font-size:90%;">CMMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T1.2.2.2.1.1.m1.1"><semantics id="S7.T1.2.2.2.1.1.m1.1a"><mo id="S7.T1.2.2.2.1.1.m1.1.1" stretchy="false" xref="S7.T1.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T1.2.2.2.1.1.m1.1b"><ci id="S7.T1.2.2.2.1.1.m1.1.1.cmml" xref="S7.T1.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T1.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T1.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.T1.3.3.3.1" style="font-size:90%;">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T1.3.3.3.1.1.m1.1"><semantics id="S7.T1.3.3.3.1.1.m1.1a"><mo id="S7.T1.3.3.3.1.1.m1.1.1" stretchy="false" xref="S7.T1.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T1.3.3.3.1.1.m1.1b"><ci id="S7.T1.3.3.3.1.1.m1.1.1.cmml" xref="S7.T1.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T1.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T1.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T1.3.4.1"><span class="ltx_text" id="S7.T1.3.4.1.1" style="font-size:90%;">Token Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T1.3.4.2" rowspan="3"><span class="ltx_text" id="S7.T1.3.4.2.1" style="font-size:90%;">softmax</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T1.3.4.3"><span class="ltx_text" id="S7.T1.3.4.3.1" style="font-size:90%;">17.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T1.3.4.4"><span class="ltx_text" id="S7.T1.3.4.4.1" style="font-size:90%;">.7304</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T1.3.4.5"><span class="ltx_text" id="S7.T1.3.4.5.1" style="font-size:90%;">21.87</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T1.3.5.1"><span class="ltx_text" id="S7.T1.3.5.1.1" style="font-size:90%;">Expert Choice</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.5.2"><span class="ltx_text" id="S7.T1.3.5.2.1" style="font-size:90%;">16.71</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.5.3"><span class="ltx_text" id="S7.T1.3.5.3.1" style="font-size:90%;">.7267</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.5.4"><span class="ltx_text" id="S7.T1.3.5.4.1" style="font-size:90%;">21.95</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T1.3.6.1"><span class="ltx_text" id="S7.T1.3.6.1.1" style="font-size:90%;">Expert Race</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.6.2"><span class="ltx_text" id="S7.T1.3.6.2.1" style="font-size:90%;">16.47</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.6.3"><span class="ltx_text" id="S7.T1.3.6.3.1" style="font-size:90%;">.7104</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.6.4"><span class="ltx_text" id="S7.T1.3.6.4.1" style="font-size:90%;">21.97</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T1.3.7.1"><span class="ltx_text" id="S7.T1.3.7.1.1" style="font-size:90%;">Token Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T1.3.7.2" rowspan="3"><span class="ltx_text" id="S7.T1.3.7.2.1" style="font-size:90%;">sigmoid</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.7.3"><span class="ltx_text" id="S7.T1.3.7.3.1" style="font-size:90%;">15.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.7.4"><span class="ltx_text" id="S7.T1.3.7.4.1" style="font-size:90%;">.6956</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.7.5"><span class="ltx_text" id="S7.T1.3.7.5.1" style="font-size:90%;">22.09</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T1.3.8.1"><span class="ltx_text" id="S7.T1.3.8.1.1" style="font-size:90%;">Expert Choice</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.8.2"><span class="ltx_text" id="S7.T1.3.8.2.1" style="font-size:90%;">15.73</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.8.3"><span class="ltx_text" id="S7.T1.3.8.3.1" style="font-size:90%;">.6821</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.8.4"><span class="ltx_text" id="S7.T1.3.8.4.1" style="font-size:90%;">22.06</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T1.3.9.1"><span class="ltx_text" id="S7.T1.3.9.1.1" style="font-size:90%;">Expert Race</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.9.2"><span class="ltx_text" id="S7.T1.3.9.2.1" style="font-size:90%;">13.85</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.9.3"><span class="ltx_text" id="S7.T1.3.9.3.1" style="font-size:90%;">.6471</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.9.4"><span class="ltx_text" id="S7.T1.3.9.4.1" style="font-size:90%;">22.23</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T1.3.10.1"><span class="ltx_text" id="S7.T1.3.10.1.1" style="font-size:90%;">Token Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T1.3.10.2" rowspan="3"><span class="ltx_text" id="S7.T1.3.10.2.1" style="font-size:90%;">identity</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.10.3"><span class="ltx_text" id="S7.T1.3.10.3.1" style="font-size:90%;">15.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.10.4"><span class="ltx_text" id="S7.T1.3.10.4.1" style="font-size:90%;">.6938</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T1.3.10.5"><span class="ltx_text" id="S7.T1.3.10.5.1" style="font-size:90%;">22.01</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T1.3.11.1"><span class="ltx_text" id="S7.T1.3.11.1.1" style="font-size:90%;">Expert Choice</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.11.2"><span class="ltx_text" id="S7.T1.3.11.2.1" style="font-size:90%;">15.70</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.11.3"><span class="ltx_text" id="S7.T1.3.11.3.1" style="font-size:90%;">.6963</span></td>
<td class="ltx_td ltx_align_center" id="S7.T1.3.11.4"><span class="ltx_text" id="S7.T1.3.11.4.1" style="font-size:90%;">22.04</span></td>
</tr>
<tr class="ltx_tr" id="S7.T1.3.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.T1.3.12.1"><span class="ltx_text" id="S7.T1.3.12.1.1" style="font-size:90%;">Expert Race</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T1.3.12.2"><span class="ltx_text ltx_font_bold" id="S7.T1.3.12.2.1" style="font-size:90%;">13.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T1.3.12.3"><span class="ltx_text ltx_font_bold" id="S7.T1.3.12.3.1" style="font-size:90%;">.6317</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T1.3.12.4"><span class="ltx_text ltx_font_bold" id="S7.T1.3.12.4.1" style="font-size:90%;">22.25</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of different load balancing strategies within a Mixture-of-Experts (MoE) model with a 4-in-32 configuration.  It shows the FID (Fréchet Inception Distance) score, the maximum violation (MaxVio) of expert capacity, and the combination usage (Comb) for three settings: no constraint, the use of a balance loss, and the use of the proposed router similarity loss.  Lower FID indicates better image generation quality, lower MaxVio indicates better load balance, and higher Comb indicates more diverse utilization of expert combinations. The results demonstrate that the proposed router similarity loss achieves the best balance between FID score and load balance.
> <details>
> <summary>read the caption</summary>
> Table 2: Load balance for 4-in-32 MoE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.SS4.3.3">
<tr class="ltx_tr" id="S7.SS4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.SS4.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S7.SS4.3.3.3.4.1" style="font-size:90%;">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.SS4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.SS4.1.1.1.1.1" style="font-size:90%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.SS4.1.1.1.1.1.m1.1"><semantics id="S7.SS4.1.1.1.1.1.m1.1a"><mo id="S7.SS4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S7.SS4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.SS4.1.1.1.1.1.m1.1b"><ci id="S7.SS4.1.1.1.1.1.m1.1.1.cmml" xref="S7.SS4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.SS4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.SS4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.SS4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.SS4.2.2.2.2.1" style="font-size:90%;">MaxVio<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.SS4.2.2.2.2.1.m1.1"><semantics id="S7.SS4.2.2.2.2.1.m1.1a"><mo id="S7.SS4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S7.SS4.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.SS4.2.2.2.2.1.m1.1b"><ci id="S7.SS4.2.2.2.2.1.m1.1.1.cmml" xref="S7.SS4.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.SS4.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.SS4.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.SS4.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.SS4.3.3.3.3.1" style="font-size:90%;">Comb<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.SS4.3.3.3.3.1.m1.1"><semantics id="S7.SS4.3.3.3.3.1.m1.1a"><mo id="S7.SS4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S7.SS4.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.SS4.3.3.3.3.1.m1.1b"><ci id="S7.SS4.3.3.3.3.1.m1.1.1.cmml" xref="S7.SS4.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.SS4.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.SS4.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.SS4.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.SS4.3.3.4.1"><span class="ltx_text" id="S7.SS4.3.3.4.1.1" style="font-size:90%;">No Constraint</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS4.3.3.4.2"><span class="ltx_text" id="S7.SS4.3.3.4.2.1" style="font-size:90%;">11.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS4.3.3.4.3"><span class="ltx_text" id="S7.SS4.3.3.4.3.1" style="font-size:90%;">6.383</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS4.3.3.4.4"><span class="ltx_text" id="S7.SS4.3.3.4.4.1" style="font-size:90%;">18.98</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS4.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.SS4.3.3.5.1"><span class="ltx_text" id="S7.SS4.3.3.5.1.1" style="font-size:90%;">Balance Loss</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS4.3.3.5.2"><span class="ltx_text" id="S7.SS4.3.3.5.2.1" style="font-size:90%;">11.67</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS4.3.3.5.3"><span class="ltx_text" id="S7.SS4.3.3.5.3.1" style="font-size:90%;">2.052</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS4.3.3.5.4"><span class="ltx_text" id="S7.SS4.3.3.5.4.1" style="font-size:90%;">72.36</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS4.3.3.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.SS4.3.3.6.1"><span class="ltx_text" id="S7.SS4.3.3.6.1.1" style="font-size:90%;">Router Similarity</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS4.3.3.6.2"><span class="ltx_text ltx_font_bold" id="S7.SS4.3.3.6.2.1" style="font-size:90%;">10.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS4.3.3.6.3"><span class="ltx_text" id="S7.SS4.3.3.6.3.1" style="font-size:90%;">0.850</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS4.3.3.6.4"><span class="ltx_text ltx_font_bold" id="S7.SS4.3.3.6.4.1" style="font-size:90%;">83.10</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study examining the impact of individual components on the performance of the Expert Race model.  It shows how adding each component (identity gating, learnable threshold, per-layer regularization, and router similarity loss) incrementally improves the model's performance, as measured by FID, CMMD, and CLIP scores.  The baseline model uses Expert Race with softmax gating, and subsequent rows add one component at a time to show its contribution.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of core components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T3.3">
<tr class="ltx_tr" id="S7.T3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S7.T3.3.3.4.1" style="font-size:90%;">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.T3.1.1.1.1" style="font-size:90%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T3.1.1.1.1.m1.1"><semantics id="S7.T3.1.1.1.1.m1.1a"><mo id="S7.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T3.1.1.1.1.m1.1b"><ci id="S7.T3.1.1.1.1.m1.1.1.cmml" xref="S7.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.T3.2.2.2.1" style="font-size:90%;">CMMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T3.2.2.2.1.m1.1"><semantics id="S7.T3.2.2.2.1.m1.1a"><mo id="S7.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S7.T3.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T3.2.2.2.1.m1.1b"><ci id="S7.T3.2.2.2.1.m1.1.1.cmml" xref="S7.T3.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.T3.3.3.3.1" style="font-size:90%;">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T3.3.3.3.1.m1.1"><semantics id="S7.T3.3.3.3.1.m1.1a"><mo id="S7.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S7.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T3.3.3.3.1.m1.1b"><ci id="S7.T3.3.3.3.1.m1.1.1.cmml" xref="S7.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T3.3.4.1"><span class="ltx_text" id="S7.T3.3.4.1.1" style="font-size:90%;">Expert Race (softmax)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T3.3.4.2"><span class="ltx_text" id="S7.T3.3.4.2.1" style="font-size:90%;">16.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T3.3.4.3"><span class="ltx_text" id="S7.T3.3.4.3.1" style="font-size:90%;">.7104</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T3.3.4.4"><span class="ltx_text" id="S7.T3.3.4.4.1" style="font-size:90%;">21.97</span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T3.3.5.1"><span class="ltx_text" id="S7.T3.3.5.1.1" style="font-size:90%;">+ Identity Gating</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.5.2"><span class="ltx_text" id="S7.T3.3.5.2.1" style="font-size:90%;">13.66</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.5.3"><span class="ltx_text" id="S7.T3.3.5.3.1" style="font-size:90%;">.6317</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.5.4"><span class="ltx_text" id="S7.T3.3.5.4.1" style="font-size:90%;">22.25</span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T3.3.6.1"><span class="ltx_text" id="S7.T3.3.6.1.1" style="font-size:90%;">+ Learnable Threshold</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.6.2"><span class="ltx_text" id="S7.T3.3.6.2.1" style="font-size:90%;">11.56</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.6.3"><span class="ltx_text" id="S7.T3.3.6.3.1" style="font-size:90%;">.5863</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.6.4"><span class="ltx_text" id="S7.T3.3.6.4.1" style="font-size:90%;">22.56</span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T3.3.7.1"><span class="ltx_text" id="S7.T3.3.7.1.1" style="font-size:90%;">+ Per-Layer Reg.</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.7.2"><span class="ltx_text" id="S7.T3.3.7.2.1" style="font-size:90%;">8.95</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.7.3"><span class="ltx_text" id="S7.T3.3.7.3.1" style="font-size:90%;">.4847</span></td>
<td class="ltx_td ltx_align_center" id="S7.T3.3.7.4"><span class="ltx_text" id="S7.T3.3.7.4.1" style="font-size:90%;">22.94</span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.T3.3.8.1"><span class="ltx_text" id="S7.T3.3.8.1.1" style="font-size:90%;">+ Router Similarity</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T3.3.8.2"><span class="ltx_text ltx_font_bold" id="S7.T3.3.8.2.1" style="font-size:90%;">8.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T3.3.8.3"><span class="ltx_text ltx_font_bold" id="S7.T3.3.8.3.1" style="font-size:90%;">.4587</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T3.3.8.4"><span class="ltx_text ltx_font_bold" id="S7.T3.3.8.4.1" style="font-size:90%;">23.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of model performance between Mixture-of-Experts (MoE) and dense models of varying sizes.  It details the number of parameters, activated parameters, layers, hidden units, heads, and evaluation metrics (FID, CMMD, and CLIP) for each model configuration.  The results demonstrate the effectiveness of the MoE approach in achieving comparable or better performance while using significantly fewer parameters than the equivalent dense models.
> <details>
> <summary>read the caption</summary>
> Table 4: Model specifications and evaluation results of the comparison between MoE and Dense models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T4.3">
<tr class="ltx_tr" id="S7.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T4.3.3.4"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.4.1" style="font-size:80%;">Model Config.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.3.5"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.5.1" style="font-size:80%;">Total Param.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T4.3.3.6"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.6.1" style="font-size:80%;">Activate</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.3.7"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.7.1" style="font-size:80%;"># Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.3.8"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.8.1" style="font-size:80%;">Hidden</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T4.3.3.9"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.9.1" style="font-size:80%;"># Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.T4.1.1.1.1" style="font-size:80%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T4.1.1.1.1.m1.1"><semantics id="S7.T4.1.1.1.1.m1.1a"><mo id="S7.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T4.1.1.1.1.m1.1b"><ci id="S7.T4.1.1.1.1.m1.1.1.cmml" xref="S7.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.T4.2.2.2.1" style="font-size:80%;">CMMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T4.2.2.2.1.m1.1"><semantics id="S7.T4.2.2.2.1.m1.1a"><mo id="S7.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S7.T4.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T4.2.2.2.1.m1.1b"><ci id="S7.T4.2.2.2.1.m1.1.1.cmml" xref="S7.T4.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.T4.3.3.3.1" style="font-size:80%;">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T4.3.3.3.1.m1.1"><semantics id="S7.T4.3.3.3.1.m1.1a"><mo id="S7.T4.3.3.3.1.m1.1.1" stretchy="false" xref="S7.T4.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T4.3.3.3.1.m1.1b"><ci id="S7.T4.3.3.3.1.m1.1.1.cmml" xref="S7.T4.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T4.3.4.1"><span class="ltx_text" id="S7.T4.3.4.1.1" style="font-size:80%;">B/2-Dense</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.2"><span class="ltx_text" id="S7.T4.3.4.2.1" style="font-size:80%;">0.127B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T4.3.4.3"><span class="ltx_text" id="S7.T4.3.4.3.1" style="font-size:80%;">0.127B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.4"><span class="ltx_text" id="S7.T4.3.4.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.5"><span class="ltx_text" id="S7.T4.3.4.5.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T4.3.4.6"><span class="ltx_text" id="S7.T4.3.4.6.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.7"><span class="ltx_text" id="S7.T4.3.4.7.1" style="font-size:80%;">18.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.8"><span class="ltx_text" id="S7.T4.3.4.8.1" style="font-size:80%;">.7532</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T4.3.4.9"><span class="ltx_text" id="S7.T4.3.4.9.1" style="font-size:80%;">21.83</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.5">
<td class="ltx_td ltx_align_left" id="S7.T4.3.5.1"><span class="ltx_text" id="S7.T4.3.5.1.1" style="font-size:80%;">M/2-Dense</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.2"><span class="ltx_text" id="S7.T4.3.5.2.1" style="font-size:80%;">0.265B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.5.3"><span class="ltx_text" id="S7.T4.3.5.3.1" style="font-size:80%;">0.265B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.4"><span class="ltx_text" id="S7.T4.3.5.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.5"><span class="ltx_text" id="S7.T4.3.5.5.1" style="font-size:80%;">960</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.5.6"><span class="ltx_text" id="S7.T4.3.5.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.7"><span class="ltx_text" id="S7.T4.3.5.7.1" style="font-size:80%;">11.18</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.8"><span class="ltx_text" id="S7.T4.3.5.8.1" style="font-size:80%;">.5775</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.5.9"><span class="ltx_text" id="S7.T4.3.5.9.1" style="font-size:80%;">22.56</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.6">
<td class="ltx_td ltx_align_left" id="S7.T4.3.6.1"><span class="ltx_text" id="S7.T4.3.6.1.1" style="font-size:80%;">L/2-Dense</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.2"><span class="ltx_text" id="S7.T4.3.6.2.1" style="font-size:80%;">0.453B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.6.3"><span class="ltx_text" id="S7.T4.3.6.3.1" style="font-size:80%;">0.453B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.4"><span class="ltx_text" id="S7.T4.3.6.4.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.5"><span class="ltx_text" id="S7.T4.3.6.5.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.6.6"><span class="ltx_text" id="S7.T4.3.6.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.7"><span class="ltx_text" id="S7.T4.3.6.7.1" style="font-size:80%;">7.88</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.8"><span class="ltx_text" id="S7.T4.3.6.8.1" style="font-size:80%;">.4842</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.6.9"><span class="ltx_text" id="S7.T4.3.6.9.1" style="font-size:80%;">23.00</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.7">
<td class="ltx_td ltx_align_left" id="S7.T4.3.7.1"><span class="ltx_text" id="S7.T4.3.7.1.1" style="font-size:80%;">XL/2-Dense</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.2"><span class="ltx_text" id="S7.T4.3.7.2.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.7.3"><span class="ltx_text" id="S7.T4.3.7.3.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.4"><span class="ltx_text" id="S7.T4.3.7.4.1" style="font-size:80%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.5"><span class="ltx_text" id="S7.T4.3.7.5.1" style="font-size:80%;">1152</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.7.6"><span class="ltx_text" id="S7.T4.3.7.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.7"><span class="ltx_text" id="S7.T4.3.7.7.1" style="font-size:80%;">6.31</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.8"><span class="ltx_text" id="S7.T4.3.7.8.1" style="font-size:80%;">.4338</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.7.9"><span class="ltx_text" id="S7.T4.3.7.9.1" style="font-size:80%;">23.27</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T4.3.8.1"><span class="ltx_text" id="S7.T4.3.8.1.1" style="font-size:80%;">B/2-MoE-4in32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.2"><span class="ltx_text" id="S7.T4.3.8.2.1" style="font-size:80%;">0.531B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T4.3.8.3"><span class="ltx_text" id="S7.T4.3.8.3.1" style="font-size:80%;">0.135B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.4"><span class="ltx_text" id="S7.T4.3.8.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.5"><span class="ltx_text" id="S7.T4.3.8.5.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T4.3.8.6"><span class="ltx_text" id="S7.T4.3.8.6.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.7"><span class="ltx_text" id="S7.T4.3.8.7.1" style="font-size:80%;">7.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.8"><span class="ltx_text" id="S7.T4.3.8.8.1" style="font-size:80%;">.4460</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T4.3.8.9"><span class="ltx_text" id="S7.T4.3.8.9.1" style="font-size:80%;">23.15</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.9">
<td class="ltx_td ltx_align_left" id="S7.T4.3.9.1"><span class="ltx_text" id="S7.T4.3.9.1.1" style="font-size:80%;">M/2-MoE-4in32</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.2"><span class="ltx_text" id="S7.T4.3.9.2.1" style="font-size:80%;">1.106B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.9.3"><span class="ltx_text" id="S7.T4.3.9.3.1" style="font-size:80%;">0.281B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.4"><span class="ltx_text" id="S7.T4.3.9.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.5"><span class="ltx_text" id="S7.T4.3.9.5.1" style="font-size:80%;">960</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.9.6"><span class="ltx_text" id="S7.T4.3.9.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.7"><span class="ltx_text" id="S7.T4.3.9.7.1" style="font-size:80%;">5.16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.8"><span class="ltx_text" id="S7.T4.3.9.8.1" style="font-size:80%;">.3507</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.9.9"><span class="ltx_text" id="S7.T4.3.9.9.1" style="font-size:80%;">23.50</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.10">
<td class="ltx_td ltx_align_left" id="S7.T4.3.10.1"><span class="ltx_text" id="S7.T4.3.10.1.1" style="font-size:80%;">L/2-MoE-4in32</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.2"><span class="ltx_text" id="S7.T4.3.10.2.1" style="font-size:80%;">1.889B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.10.3"><span class="ltx_text" id="S7.T4.3.10.3.1" style="font-size:80%;">0.479B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.4"><span class="ltx_text" id="S7.T4.3.10.4.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.5"><span class="ltx_text" id="S7.T4.3.10.5.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T4.3.10.6"><span class="ltx_text" id="S7.T4.3.10.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.7"><span class="ltx_text" id="S7.T4.3.10.7.1" style="font-size:80%;">4.04</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.8"><span class="ltx_text" id="S7.T4.3.10.8.1" style="font-size:80%;">.2775</span></td>
<td class="ltx_td ltx_align_center" id="S7.T4.3.10.9"><span class="ltx_text" id="S7.T4.3.10.9.1" style="font-size:80%;">24.12</span></td>
</tr>
<tr class="ltx_tr" id="S7.T4.3.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T4.3.11.1"><span class="ltx_text" id="S7.T4.3.11.1.1" style="font-size:80%;">XL/2-MoE-4in32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.2"><span class="ltx_text" id="S7.T4.3.11.2.1" style="font-size:80%;">2.788B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T4.3.11.3"><span class="ltx_text" id="S7.T4.3.11.3.1" style="font-size:80%;">0.707B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.4"><span class="ltx_text" id="S7.T4.3.11.4.1" style="font-size:80%;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.5"><span class="ltx_text" id="S7.T4.3.11.5.1" style="font-size:80%;">1152</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T4.3.11.6"><span class="ltx_text" id="S7.T4.3.11.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.7"><span class="ltx_text ltx_font_bold" id="S7.T4.3.11.7.1" style="font-size:80%;">3.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.8"><span class="ltx_text ltx_font_bold" id="S7.T4.3.11.8.1" style="font-size:80%;">.1784</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T4.3.11.9"><span class="ltx_text ltx_font_bold" id="S7.T4.3.11.9.1" style="font-size:80%;">24.68</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the findings of an ablation study on various configurations of the Mixture of Experts (MoE) model, focusing on scalability.  It maintains a consistent number of activated parameters across different model variations.  The variations involve changing the number of experts and how the hidden layer dimensions are split among those experts. The goal is to assess how different configurations with the same activation parameter count influence the model's performance as measured by FID, CMMD, and CLIP scores.  This helps to understand the impact of MoE configuration choices on efficiency and performance gains during scaling.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation results of different MoE configurations with the same number of activation parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T5.3">
<tr class="ltx_tr" id="S7.T5.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T5.3.3.4"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.4.1" style="font-size:80%;">Config.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.5"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.5.1" style="font-size:80%;">Hidden Split</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T5.3.3.6"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.6.1" style="font-size:80%;">Total Param.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.T5.1.1.1.1" style="font-size:80%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T5.1.1.1.1.m1.1"><semantics id="S7.T5.1.1.1.1.m1.1a"><mo id="S7.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T5.1.1.1.1.m1.1b"><ci id="S7.T5.1.1.1.1.m1.1.1.cmml" xref="S7.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.T5.2.2.2.1" style="font-size:80%;">CMMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T5.2.2.2.1.m1.1"><semantics id="S7.T5.2.2.2.1.m1.1a"><mo id="S7.T5.2.2.2.1.m1.1.1" stretchy="false" xref="S7.T5.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T5.2.2.2.1.m1.1b"><ci id="S7.T5.2.2.2.1.m1.1.1.cmml" xref="S7.T5.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.3.1" style="font-size:80%;">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T5.3.3.3.1.m1.1"><semantics id="S7.T5.3.3.3.1.m1.1a"><mo id="S7.T5.3.3.3.1.m1.1.1" stretchy="false" xref="S7.T5.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T5.3.3.3.1.m1.1b"><ci id="S7.T5.3.3.3.1.m1.1.1.cmml" xref="S7.T5.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T5.3.4.1"><span class="ltx_text" id="S7.T5.3.4.1.1" style="font-size:80%;">1-in-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T5.3.4.2" rowspan="3"><span class="ltx_text" id="S7.T5.3.4.2.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T5.3.4.3"><span class="ltx_text" id="S7.T5.3.4.3.1" style="font-size:80%;">0.297B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T5.3.4.4"><span class="ltx_text" id="S7.T5.3.4.4.1" style="font-size:80%;">9.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T5.3.4.5"><span class="ltx_text" id="S7.T5.3.4.5.1" style="font-size:80%;">.5200</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T5.3.4.6"><span class="ltx_text" id="S7.T5.3.4.6.1" style="font-size:80%;">22.82</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.5">
<td class="ltx_td ltx_align_left" id="S7.T5.3.5.1"><span class="ltx_text" id="S7.T5.3.5.1.1" style="font-size:80%;">1-in-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.5.2"><span class="ltx_text" id="S7.T5.3.5.2.1" style="font-size:80%;">0.524B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.5.3"><span class="ltx_text" id="S7.T5.3.5.3.1" style="font-size:80%;">9.05</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.5.4"><span class="ltx_text" id="S7.T5.3.5.4.1" style="font-size:80%;">.4976</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.5.5"><span class="ltx_text" id="S7.T5.3.5.5.1" style="font-size:80%;">22.91</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.6">
<td class="ltx_td ltx_align_left" id="S7.T5.3.6.1"><span class="ltx_text" id="S7.T5.3.6.1.1" style="font-size:80%;">1-in-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.6.2"><span class="ltx_text" id="S7.T5.3.6.2.1" style="font-size:80%;">0.978B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.6.3"><span class="ltx_text" id="S7.T5.3.6.3.1" style="font-size:80%;">8.65</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.6.4"><span class="ltx_text" id="S7.T5.3.6.4.1" style="font-size:80%;">.5019</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.6.5"><span class="ltx_text" id="S7.T5.3.6.5.1" style="font-size:80%;">22.92</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T5.3.7.1"><span class="ltx_text" id="S7.T5.3.7.1.1" style="font-size:80%;">2-in-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.7.2" rowspan="3"><span class="ltx_text" id="S7.T5.3.7.2.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T5.3.7.3"><span class="ltx_text" id="S7.T5.3.7.3.1" style="font-size:80%;">0.297B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.7.4"><span class="ltx_text" id="S7.T5.3.7.4.1" style="font-size:80%;">8.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.7.5"><span class="ltx_text" id="S7.T5.3.7.5.1" style="font-size:80%;">.4587</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.7.6"><span class="ltx_text" id="S7.T5.3.7.6.1" style="font-size:80%;">23.09</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.8">
<td class="ltx_td ltx_align_left" id="S7.T5.3.8.1"><span class="ltx_text" id="S7.T5.3.8.1.1" style="font-size:80%;">2-in-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.8.2"><span class="ltx_text" id="S7.T5.3.8.2.1" style="font-size:80%;">0.524B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.8.3"><span class="ltx_text" id="S7.T5.3.8.3.1" style="font-size:80%;">7.78</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.8.4"><span class="ltx_text" id="S7.T5.3.8.4.1" style="font-size:80%;">.4607</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.8.5"><span class="ltx_text" id="S7.T5.3.8.5.1" style="font-size:80%;">23.06</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.9">
<td class="ltx_td ltx_align_left" id="S7.T5.3.9.1"><span class="ltx_text" id="S7.T5.3.9.1.1" style="font-size:80%;">2-in-32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.9.2"><span class="ltx_text" id="S7.T5.3.9.2.1" style="font-size:80%;">0.977B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.9.3"><span class="ltx_text" id="S7.T5.3.9.3.1" style="font-size:80%;">7.57</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.9.4"><span class="ltx_text" id="S7.T5.3.9.4.1" style="font-size:80%;">.4483</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.9.5"><span class="ltx_text" id="S7.T5.3.9.5.1" style="font-size:80%;">23.12</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T5.3.10.1"><span class="ltx_text" id="S7.T5.3.10.1.1" style="font-size:80%;">4-in-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.10.2" rowspan="3"><span class="ltx_text" id="S7.T5.3.10.2.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T5.3.10.3"><span class="ltx_text" id="S7.T5.3.10.3.1" style="font-size:80%;">0.297B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.10.4"><span class="ltx_text" id="S7.T5.3.10.4.1" style="font-size:80%;">7.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.10.5"><span class="ltx_text" id="S7.T5.3.10.5.1" style="font-size:80%;">.4628</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.10.6"><span class="ltx_text" id="S7.T5.3.10.6.1" style="font-size:80%;">23.09</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.11">
<td class="ltx_td ltx_align_left" id="S7.T5.3.11.1"><span class="ltx_text" id="S7.T5.3.11.1.1" style="font-size:80%;">4-in-32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.11.2"><span class="ltx_text" id="S7.T5.3.11.2.1" style="font-size:80%;">0.524B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.11.3"><span class="ltx_text" id="S7.T5.3.11.3.1" style="font-size:80%;">7.35</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.11.4"><span class="ltx_text" id="S7.T5.3.11.4.1" style="font-size:80%;">.4460</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.11.5"><span class="ltx_text" id="S7.T5.3.11.5.1" style="font-size:80%;">23.15</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.12">
<td class="ltx_td ltx_align_left" id="S7.T5.3.12.1"><span class="ltx_text" id="S7.T5.3.12.1.1" style="font-size:80%;">4-in-64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.12.2"><span class="ltx_text" id="S7.T5.3.12.2.1" style="font-size:80%;">0.977B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.12.3"><span class="ltx_text" id="S7.T5.3.12.3.1" style="font-size:80%;">6.91</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.12.4"><span class="ltx_text" id="S7.T5.3.12.4.1" style="font-size:80%;">.4244</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.12.5"><span class="ltx_text" id="S7.T5.3.12.5.1" style="font-size:80%;">23.21</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T5.3.13.1"><span class="ltx_text" id="S7.T5.3.13.1.1" style="font-size:80%;">8-in-32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T5.3.13.2" rowspan="3"><span class="ltx_text" id="S7.T5.3.13.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T5.3.13.3"><span class="ltx_text" id="S7.T5.3.13.3.1" style="font-size:80%;">0.297B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.13.4"><span class="ltx_text" id="S7.T5.3.13.4.1" style="font-size:80%;">7.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.13.5"><span class="ltx_text" id="S7.T5.3.13.5.1" style="font-size:80%;">.4516</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.13.6"><span class="ltx_text" id="S7.T5.3.13.6.1" style="font-size:80%;">23.11</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.14">
<td class="ltx_td ltx_align_left" id="S7.T5.3.14.1"><span class="ltx_text" id="S7.T5.3.14.1.1" style="font-size:80%;">8-in-64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T5.3.14.2"><span class="ltx_text" id="S7.T5.3.14.2.1" style="font-size:80%;">0.524B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.14.3"><span class="ltx_text" id="S7.T5.3.14.3.1" style="font-size:80%;">6.87</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.14.4"><span class="ltx_text" id="S7.T5.3.14.4.1" style="font-size:80%;">.4263</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.14.5"><span class="ltx_text" id="S7.T5.3.14.5.1" style="font-size:80%;">23.24</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T5.3.15.1"><span class="ltx_text" id="S7.T5.3.15.1.1" style="font-size:80%;">8-in-128</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T5.3.15.2"><span class="ltx_text" id="S7.T5.3.15.2.1" style="font-size:80%;">0.977B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.15.3"><span class="ltx_text ltx_font_bold" id="S7.T5.3.15.3.1" style="font-size:80%;">6.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.15.4"><span class="ltx_text ltx_font_bold" id="S7.T5.3.15.4.1" style="font-size:80%;">.4015</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.15.5"><span class="ltx_text ltx_font_bold" id="S7.T5.3.15.5.1" style="font-size:80%;">23.35</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different routing strategies used in the Mixture of Experts (MoE) model for diffusion transformers.  It shows the impact of varying the dimensions considered during top-k selection in the routing process, examining the trade-offs between flexibility and performance.  The strategies range from conventional methods like token-choice and expert-choice to the proposed Expert Race and new variations combining different choices of dimensions (batch size, sequence length, and number of experts).  Evaluation metrics include FID (Fréchet Inception Distance), CMMD (Classifier-based Multi-Metric Distance), and CLIP (Contrastive Language–Image Pre-training) score, providing a comprehensive assessment of image generation quality.
> <details>
> <summary>read the caption</summary>
> Table 6: Design Choices and Evaluation Results of Different Routing Strategies
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T6.24">
<tr class="ltx_tr" id="S7.T6.24.25">
<td class="ltx_td ltx_border_r ltx_border_t" id="S7.T6.24.25.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.2"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.2.1" style="font-size:80%;">Token Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.3"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.3.1" style="font-size:80%;">Expert Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.4"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.4.1" style="font-size:80%;">BL Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.5"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.5.1" style="font-size:80%;">BE Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.6"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.6.1" style="font-size:80%;">LE Choice</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T6.24.25.7"><span class="ltx_text ltx_font_bold" id="S7.T6.24.25.7.1" style="font-size:80%;">Expert Race</span></td>
</tr>
<tr class="ltx_tr" id="S7.T6.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T6.1.1.1"><math alttext="D_{A}" class="ltx_Math" display="inline" id="S7.T6.1.1.1.m1.1"><semantics id="S7.T6.1.1.1.m1.1a"><msub id="S7.T6.1.1.1.m1.1.1" xref="S7.T6.1.1.1.m1.1.1.cmml"><mi id="S7.T6.1.1.1.m1.1.1.2" mathsize="80%" xref="S7.T6.1.1.1.m1.1.1.2.cmml">D</mi><mi id="S7.T6.1.1.1.m1.1.1.3" mathsize="80%" xref="S7.T6.1.1.1.m1.1.1.3.cmml">A</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T6.1.1.1.m1.1b"><apply id="S7.T6.1.1.1.m1.1.1.cmml" xref="S7.T6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T6.1.1.1.m1.1.1.1.cmml" xref="S7.T6.1.1.1.m1.1.1">subscript</csymbol><ci id="S7.T6.1.1.1.m1.1.1.2.cmml" xref="S7.T6.1.1.1.m1.1.1.2">𝐷</ci><ci id="S7.T6.1.1.1.m1.1.1.3.cmml" xref="S7.T6.1.1.1.m1.1.1.3">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.1.1.1.m1.1c">D_{A}</annotation><annotation encoding="application/x-llamapun" id="S7.T6.1.1.1.m1.1d">italic_D start_POSTSUBSCRIPT italic_A end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.2.2.2"><math alttext="B*L" class="ltx_Math" display="inline" id="S7.T6.2.2.2.m1.1"><semantics id="S7.T6.2.2.2.m1.1a"><mrow id="S7.T6.2.2.2.m1.1.1" xref="S7.T6.2.2.2.m1.1.1.cmml"><mi id="S7.T6.2.2.2.m1.1.1.2" mathsize="80%" xref="S7.T6.2.2.2.m1.1.1.2.cmml">B</mi><mo id="S7.T6.2.2.2.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.2.2.2.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.2.2.2.m1.1.1.3" mathsize="80%" xref="S7.T6.2.2.2.m1.1.1.3.cmml">L</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.2.2.2.m1.1b"><apply id="S7.T6.2.2.2.m1.1.1.cmml" xref="S7.T6.2.2.2.m1.1.1"><times id="S7.T6.2.2.2.m1.1.1.1.cmml" xref="S7.T6.2.2.2.m1.1.1.1"></times><ci id="S7.T6.2.2.2.m1.1.1.2.cmml" xref="S7.T6.2.2.2.m1.1.1.2">𝐵</ci><ci id="S7.T6.2.2.2.m1.1.1.3.cmml" xref="S7.T6.2.2.2.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.2.2.2.m1.1c">B*L</annotation><annotation encoding="application/x-llamapun" id="S7.T6.2.2.2.m1.1d">italic_B ∗ italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.3.3.3"><math alttext="B*E" class="ltx_Math" display="inline" id="S7.T6.3.3.3.m1.1"><semantics id="S7.T6.3.3.3.m1.1a"><mrow id="S7.T6.3.3.3.m1.1.1" xref="S7.T6.3.3.3.m1.1.1.cmml"><mi id="S7.T6.3.3.3.m1.1.1.2" mathsize="80%" xref="S7.T6.3.3.3.m1.1.1.2.cmml">B</mi><mo id="S7.T6.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.3.3.3.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.3.3.3.m1.1.1.3" mathsize="80%" xref="S7.T6.3.3.3.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.3.3.3.m1.1b"><apply id="S7.T6.3.3.3.m1.1.1.cmml" xref="S7.T6.3.3.3.m1.1.1"><times id="S7.T6.3.3.3.m1.1.1.1.cmml" xref="S7.T6.3.3.3.m1.1.1.1"></times><ci id="S7.T6.3.3.3.m1.1.1.2.cmml" xref="S7.T6.3.3.3.m1.1.1.2">𝐵</ci><ci id="S7.T6.3.3.3.m1.1.1.3.cmml" xref="S7.T6.3.3.3.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.3.3.3.m1.1c">B*E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.3.3.3.m1.1d">italic_B ∗ italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.4.4.4"><math alttext="E" class="ltx_Math" display="inline" id="S7.T6.4.4.4.m1.1"><semantics id="S7.T6.4.4.4.m1.1a"><mi id="S7.T6.4.4.4.m1.1.1" mathsize="80%" xref="S7.T6.4.4.4.m1.1.1.cmml">E</mi><annotation-xml encoding="MathML-Content" id="S7.T6.4.4.4.m1.1b"><ci id="S7.T6.4.4.4.m1.1.1.cmml" xref="S7.T6.4.4.4.m1.1.1">𝐸</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.4.4.4.m1.1c">E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.4.4.4.m1.1d">italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.5.5.5"><math alttext="L" class="ltx_Math" display="inline" id="S7.T6.5.5.5.m1.1"><semantics id="S7.T6.5.5.5.m1.1a"><mi id="S7.T6.5.5.5.m1.1.1" mathsize="80%" xref="S7.T6.5.5.5.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S7.T6.5.5.5.m1.1b"><ci id="S7.T6.5.5.5.m1.1.1.cmml" xref="S7.T6.5.5.5.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.5.5.5.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="S7.T6.5.5.5.m1.1d">italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.6.6.6"><math alttext="B" class="ltx_Math" display="inline" id="S7.T6.6.6.6.m1.1"><semantics id="S7.T6.6.6.6.m1.1a"><mi id="S7.T6.6.6.6.m1.1.1" mathsize="80%" xref="S7.T6.6.6.6.m1.1.1.cmml">B</mi><annotation-xml encoding="MathML-Content" id="S7.T6.6.6.6.m1.1b"><ci id="S7.T6.6.6.6.m1.1.1.cmml" xref="S7.T6.6.6.6.m1.1.1">𝐵</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.6.6.6.m1.1c">B</annotation><annotation encoding="application/x-llamapun" id="S7.T6.6.6.6.m1.1d">italic_B</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.7.7.7"><math alttext="1" class="ltx_Math" display="inline" id="S7.T6.7.7.7.m1.1"><semantics id="S7.T6.7.7.7.m1.1a"><mn id="S7.T6.7.7.7.m1.1.1" mathsize="80%" xref="S7.T6.7.7.7.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S7.T6.7.7.7.m1.1b"><cn id="S7.T6.7.7.7.m1.1.1.cmml" type="integer" xref="S7.T6.7.7.7.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.7.7.7.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="S7.T6.7.7.7.m1.1d">1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S7.T6.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T6.8.8.1"><math alttext="D_{B}" class="ltx_Math" display="inline" id="S7.T6.8.8.1.m1.1"><semantics id="S7.T6.8.8.1.m1.1a"><msub id="S7.T6.8.8.1.m1.1.1" xref="S7.T6.8.8.1.m1.1.1.cmml"><mi id="S7.T6.8.8.1.m1.1.1.2" mathsize="80%" xref="S7.T6.8.8.1.m1.1.1.2.cmml">D</mi><mi id="S7.T6.8.8.1.m1.1.1.3" mathsize="80%" xref="S7.T6.8.8.1.m1.1.1.3.cmml">B</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T6.8.8.1.m1.1b"><apply id="S7.T6.8.8.1.m1.1.1.cmml" xref="S7.T6.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T6.8.8.1.m1.1.1.1.cmml" xref="S7.T6.8.8.1.m1.1.1">subscript</csymbol><ci id="S7.T6.8.8.1.m1.1.1.2.cmml" xref="S7.T6.8.8.1.m1.1.1.2">𝐷</ci><ci id="S7.T6.8.8.1.m1.1.1.3.cmml" xref="S7.T6.8.8.1.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.8.8.1.m1.1c">D_{B}</annotation><annotation encoding="application/x-llamapun" id="S7.T6.8.8.1.m1.1d">italic_D start_POSTSUBSCRIPT italic_B end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.9.9.2"><math alttext="E" class="ltx_Math" display="inline" id="S7.T6.9.9.2.m1.1"><semantics id="S7.T6.9.9.2.m1.1a"><mi id="S7.T6.9.9.2.m1.1.1" mathsize="80%" xref="S7.T6.9.9.2.m1.1.1.cmml">E</mi><annotation-xml encoding="MathML-Content" id="S7.T6.9.9.2.m1.1b"><ci id="S7.T6.9.9.2.m1.1.1.cmml" xref="S7.T6.9.9.2.m1.1.1">𝐸</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.9.9.2.m1.1c">E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.9.9.2.m1.1d">italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.10.10.3"><math alttext="L" class="ltx_Math" display="inline" id="S7.T6.10.10.3.m1.1"><semantics id="S7.T6.10.10.3.m1.1a"><mi id="S7.T6.10.10.3.m1.1.1" mathsize="80%" xref="S7.T6.10.10.3.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S7.T6.10.10.3.m1.1b"><ci id="S7.T6.10.10.3.m1.1.1.cmml" xref="S7.T6.10.10.3.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.10.10.3.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="S7.T6.10.10.3.m1.1d">italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.11.11.4"><math alttext="B*L" class="ltx_Math" display="inline" id="S7.T6.11.11.4.m1.1"><semantics id="S7.T6.11.11.4.m1.1a"><mrow id="S7.T6.11.11.4.m1.1.1" xref="S7.T6.11.11.4.m1.1.1.cmml"><mi id="S7.T6.11.11.4.m1.1.1.2" mathsize="80%" xref="S7.T6.11.11.4.m1.1.1.2.cmml">B</mi><mo id="S7.T6.11.11.4.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.11.11.4.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.11.11.4.m1.1.1.3" mathsize="80%" xref="S7.T6.11.11.4.m1.1.1.3.cmml">L</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.11.11.4.m1.1b"><apply id="S7.T6.11.11.4.m1.1.1.cmml" xref="S7.T6.11.11.4.m1.1.1"><times id="S7.T6.11.11.4.m1.1.1.1.cmml" xref="S7.T6.11.11.4.m1.1.1.1"></times><ci id="S7.T6.11.11.4.m1.1.1.2.cmml" xref="S7.T6.11.11.4.m1.1.1.2">𝐵</ci><ci id="S7.T6.11.11.4.m1.1.1.3.cmml" xref="S7.T6.11.11.4.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.11.11.4.m1.1c">B*L</annotation><annotation encoding="application/x-llamapun" id="S7.T6.11.11.4.m1.1d">italic_B ∗ italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.12.12.5"><math alttext="B*E" class="ltx_Math" display="inline" id="S7.T6.12.12.5.m1.1"><semantics id="S7.T6.12.12.5.m1.1a"><mrow id="S7.T6.12.12.5.m1.1.1" xref="S7.T6.12.12.5.m1.1.1.cmml"><mi id="S7.T6.12.12.5.m1.1.1.2" mathsize="80%" xref="S7.T6.12.12.5.m1.1.1.2.cmml">B</mi><mo id="S7.T6.12.12.5.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.12.12.5.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.12.12.5.m1.1.1.3" mathsize="80%" xref="S7.T6.12.12.5.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.12.12.5.m1.1b"><apply id="S7.T6.12.12.5.m1.1.1.cmml" xref="S7.T6.12.12.5.m1.1.1"><times id="S7.T6.12.12.5.m1.1.1.1.cmml" xref="S7.T6.12.12.5.m1.1.1.1"></times><ci id="S7.T6.12.12.5.m1.1.1.2.cmml" xref="S7.T6.12.12.5.m1.1.1.2">𝐵</ci><ci id="S7.T6.12.12.5.m1.1.1.3.cmml" xref="S7.T6.12.12.5.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.12.12.5.m1.1c">B*E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.12.12.5.m1.1d">italic_B ∗ italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.13.13.6"><math alttext="L*E" class="ltx_Math" display="inline" id="S7.T6.13.13.6.m1.1"><semantics id="S7.T6.13.13.6.m1.1a"><mrow id="S7.T6.13.13.6.m1.1.1" xref="S7.T6.13.13.6.m1.1.1.cmml"><mi id="S7.T6.13.13.6.m1.1.1.2" mathsize="80%" xref="S7.T6.13.13.6.m1.1.1.2.cmml">L</mi><mo id="S7.T6.13.13.6.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.13.13.6.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.13.13.6.m1.1.1.3" mathsize="80%" xref="S7.T6.13.13.6.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.13.13.6.m1.1b"><apply id="S7.T6.13.13.6.m1.1.1.cmml" xref="S7.T6.13.13.6.m1.1.1"><times id="S7.T6.13.13.6.m1.1.1.1.cmml" xref="S7.T6.13.13.6.m1.1.1.1"></times><ci id="S7.T6.13.13.6.m1.1.1.2.cmml" xref="S7.T6.13.13.6.m1.1.1.2">𝐿</ci><ci id="S7.T6.13.13.6.m1.1.1.3.cmml" xref="S7.T6.13.13.6.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.13.13.6.m1.1c">L*E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.13.13.6.m1.1d">italic_L ∗ italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.14.14.7"><math alttext="B*L*E" class="ltx_Math" display="inline" id="S7.T6.14.14.7.m1.1"><semantics id="S7.T6.14.14.7.m1.1a"><mrow id="S7.T6.14.14.7.m1.1.1" xref="S7.T6.14.14.7.m1.1.1.cmml"><mi id="S7.T6.14.14.7.m1.1.1.2" mathsize="80%" xref="S7.T6.14.14.7.m1.1.1.2.cmml">B</mi><mo id="S7.T6.14.14.7.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.14.14.7.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.14.14.7.m1.1.1.3" mathsize="80%" xref="S7.T6.14.14.7.m1.1.1.3.cmml">L</mi><mo id="S7.T6.14.14.7.m1.1.1.1a" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.14.14.7.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.14.14.7.m1.1.1.4" mathsize="80%" xref="S7.T6.14.14.7.m1.1.1.4.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.14.14.7.m1.1b"><apply id="S7.T6.14.14.7.m1.1.1.cmml" xref="S7.T6.14.14.7.m1.1.1"><times id="S7.T6.14.14.7.m1.1.1.1.cmml" xref="S7.T6.14.14.7.m1.1.1.1"></times><ci id="S7.T6.14.14.7.m1.1.1.2.cmml" xref="S7.T6.14.14.7.m1.1.1.2">𝐵</ci><ci id="S7.T6.14.14.7.m1.1.1.3.cmml" xref="S7.T6.14.14.7.m1.1.1.3">𝐿</ci><ci id="S7.T6.14.14.7.m1.1.1.4.cmml" xref="S7.T6.14.14.7.m1.1.1.4">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.14.14.7.m1.1c">B*L*E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.14.14.7.m1.1d">italic_B ∗ italic_L ∗ italic_E</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S7.T6.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T6.15.15.1"><math alttext="\mathcal{K}" class="ltx_Math" display="inline" id="S7.T6.15.15.1.m1.1"><semantics id="S7.T6.15.15.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S7.T6.15.15.1.m1.1.1" mathsize="80%" xref="S7.T6.15.15.1.m1.1.1.cmml">𝒦</mi><annotation-xml encoding="MathML-Content" id="S7.T6.15.15.1.m1.1b"><ci id="S7.T6.15.15.1.m1.1.1.cmml" xref="S7.T6.15.15.1.m1.1.1">𝒦</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.15.15.1.m1.1c">\mathcal{K}</annotation><annotation encoding="application/x-llamapun" id="S7.T6.15.15.1.m1.1d">caligraphic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.16.16.2"><math alttext="k" class="ltx_Math" display="inline" id="S7.T6.16.16.2.m1.1"><semantics id="S7.T6.16.16.2.m1.1a"><mi id="S7.T6.16.16.2.m1.1.1" mathsize="80%" xref="S7.T6.16.16.2.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S7.T6.16.16.2.m1.1b"><ci id="S7.T6.16.16.2.m1.1.1.cmml" xref="S7.T6.16.16.2.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.16.16.2.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S7.T6.16.16.2.m1.1d">italic_k</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.17.17.3"><math alttext="k*L/E" class="ltx_Math" display="inline" id="S7.T6.17.17.3.m1.1"><semantics id="S7.T6.17.17.3.m1.1a"><mrow id="S7.T6.17.17.3.m1.1.1" xref="S7.T6.17.17.3.m1.1.1.cmml"><mrow id="S7.T6.17.17.3.m1.1.1.2" xref="S7.T6.17.17.3.m1.1.1.2.cmml"><mi id="S7.T6.17.17.3.m1.1.1.2.2" mathsize="80%" xref="S7.T6.17.17.3.m1.1.1.2.2.cmml">k</mi><mo id="S7.T6.17.17.3.m1.1.1.2.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.17.17.3.m1.1.1.2.1.cmml">∗</mo><mi id="S7.T6.17.17.3.m1.1.1.2.3" mathsize="80%" xref="S7.T6.17.17.3.m1.1.1.2.3.cmml">L</mi></mrow><mo id="S7.T6.17.17.3.m1.1.1.1" maxsize="80%" minsize="80%" stretchy="true" symmetric="true" xref="S7.T6.17.17.3.m1.1.1.1.cmml">/</mo><mi id="S7.T6.17.17.3.m1.1.1.3" mathsize="80%" xref="S7.T6.17.17.3.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.17.17.3.m1.1b"><apply id="S7.T6.17.17.3.m1.1.1.cmml" xref="S7.T6.17.17.3.m1.1.1"><divide id="S7.T6.17.17.3.m1.1.1.1.cmml" xref="S7.T6.17.17.3.m1.1.1.1"></divide><apply id="S7.T6.17.17.3.m1.1.1.2.cmml" xref="S7.T6.17.17.3.m1.1.1.2"><times id="S7.T6.17.17.3.m1.1.1.2.1.cmml" xref="S7.T6.17.17.3.m1.1.1.2.1"></times><ci id="S7.T6.17.17.3.m1.1.1.2.2.cmml" xref="S7.T6.17.17.3.m1.1.1.2.2">𝑘</ci><ci id="S7.T6.17.17.3.m1.1.1.2.3.cmml" xref="S7.T6.17.17.3.m1.1.1.2.3">𝐿</ci></apply><ci id="S7.T6.17.17.3.m1.1.1.3.cmml" xref="S7.T6.17.17.3.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.17.17.3.m1.1c">k*L/E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.17.17.3.m1.1d">italic_k ∗ italic_L / italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.18.18.4"><math alttext="B*L*k/E" class="ltx_Math" display="inline" id="S7.T6.18.18.4.m1.1"><semantics id="S7.T6.18.18.4.m1.1a"><mrow id="S7.T6.18.18.4.m1.1.1" xref="S7.T6.18.18.4.m1.1.1.cmml"><mrow id="S7.T6.18.18.4.m1.1.1.2" xref="S7.T6.18.18.4.m1.1.1.2.cmml"><mi id="S7.T6.18.18.4.m1.1.1.2.2" mathsize="80%" xref="S7.T6.18.18.4.m1.1.1.2.2.cmml">B</mi><mo id="S7.T6.18.18.4.m1.1.1.2.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.18.18.4.m1.1.1.2.1.cmml">∗</mo><mi id="S7.T6.18.18.4.m1.1.1.2.3" mathsize="80%" xref="S7.T6.18.18.4.m1.1.1.2.3.cmml">L</mi><mo id="S7.T6.18.18.4.m1.1.1.2.1a" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.18.18.4.m1.1.1.2.1.cmml">∗</mo><mi id="S7.T6.18.18.4.m1.1.1.2.4" mathsize="80%" xref="S7.T6.18.18.4.m1.1.1.2.4.cmml">k</mi></mrow><mo id="S7.T6.18.18.4.m1.1.1.1" maxsize="80%" minsize="80%" stretchy="true" symmetric="true" xref="S7.T6.18.18.4.m1.1.1.1.cmml">/</mo><mi id="S7.T6.18.18.4.m1.1.1.3" mathsize="80%" xref="S7.T6.18.18.4.m1.1.1.3.cmml">E</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.18.18.4.m1.1b"><apply id="S7.T6.18.18.4.m1.1.1.cmml" xref="S7.T6.18.18.4.m1.1.1"><divide id="S7.T6.18.18.4.m1.1.1.1.cmml" xref="S7.T6.18.18.4.m1.1.1.1"></divide><apply id="S7.T6.18.18.4.m1.1.1.2.cmml" xref="S7.T6.18.18.4.m1.1.1.2"><times id="S7.T6.18.18.4.m1.1.1.2.1.cmml" xref="S7.T6.18.18.4.m1.1.1.2.1"></times><ci id="S7.T6.18.18.4.m1.1.1.2.2.cmml" xref="S7.T6.18.18.4.m1.1.1.2.2">𝐵</ci><ci id="S7.T6.18.18.4.m1.1.1.2.3.cmml" xref="S7.T6.18.18.4.m1.1.1.2.3">𝐿</ci><ci id="S7.T6.18.18.4.m1.1.1.2.4.cmml" xref="S7.T6.18.18.4.m1.1.1.2.4">𝑘</ci></apply><ci id="S7.T6.18.18.4.m1.1.1.3.cmml" xref="S7.T6.18.18.4.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.18.18.4.m1.1c">B*L*k/E</annotation><annotation encoding="application/x-llamapun" id="S7.T6.18.18.4.m1.1d">italic_B ∗ italic_L ∗ italic_k / italic_E</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.19.19.5"><math alttext="B*k" class="ltx_Math" display="inline" id="S7.T6.19.19.5.m1.1"><semantics id="S7.T6.19.19.5.m1.1a"><mrow id="S7.T6.19.19.5.m1.1.1" xref="S7.T6.19.19.5.m1.1.1.cmml"><mi id="S7.T6.19.19.5.m1.1.1.2" mathsize="80%" xref="S7.T6.19.19.5.m1.1.1.2.cmml">B</mi><mo id="S7.T6.19.19.5.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.19.19.5.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.19.19.5.m1.1.1.3" mathsize="80%" xref="S7.T6.19.19.5.m1.1.1.3.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.19.19.5.m1.1b"><apply id="S7.T6.19.19.5.m1.1.1.cmml" xref="S7.T6.19.19.5.m1.1.1"><times id="S7.T6.19.19.5.m1.1.1.1.cmml" xref="S7.T6.19.19.5.m1.1.1.1"></times><ci id="S7.T6.19.19.5.m1.1.1.2.cmml" xref="S7.T6.19.19.5.m1.1.1.2">𝐵</ci><ci id="S7.T6.19.19.5.m1.1.1.3.cmml" xref="S7.T6.19.19.5.m1.1.1.3">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.19.19.5.m1.1c">B*k</annotation><annotation encoding="application/x-llamapun" id="S7.T6.19.19.5.m1.1d">italic_B ∗ italic_k</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.20.20.6"><math alttext="L*k" class="ltx_Math" display="inline" id="S7.T6.20.20.6.m1.1"><semantics id="S7.T6.20.20.6.m1.1a"><mrow id="S7.T6.20.20.6.m1.1.1" xref="S7.T6.20.20.6.m1.1.1.cmml"><mi id="S7.T6.20.20.6.m1.1.1.2" mathsize="80%" xref="S7.T6.20.20.6.m1.1.1.2.cmml">L</mi><mo id="S7.T6.20.20.6.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.20.20.6.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.20.20.6.m1.1.1.3" mathsize="80%" xref="S7.T6.20.20.6.m1.1.1.3.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.20.20.6.m1.1b"><apply id="S7.T6.20.20.6.m1.1.1.cmml" xref="S7.T6.20.20.6.m1.1.1"><times id="S7.T6.20.20.6.m1.1.1.1.cmml" xref="S7.T6.20.20.6.m1.1.1.1"></times><ci id="S7.T6.20.20.6.m1.1.1.2.cmml" xref="S7.T6.20.20.6.m1.1.1.2">𝐿</ci><ci id="S7.T6.20.20.6.m1.1.1.3.cmml" xref="S7.T6.20.20.6.m1.1.1.3">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.20.20.6.m1.1c">L*k</annotation><annotation encoding="application/x-llamapun" id="S7.T6.20.20.6.m1.1d">italic_L ∗ italic_k</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T6.21.21.7"><math alttext="B*L*k" class="ltx_Math" display="inline" id="S7.T6.21.21.7.m1.1"><semantics id="S7.T6.21.21.7.m1.1a"><mrow id="S7.T6.21.21.7.m1.1.1" xref="S7.T6.21.21.7.m1.1.1.cmml"><mi id="S7.T6.21.21.7.m1.1.1.2" mathsize="80%" xref="S7.T6.21.21.7.m1.1.1.2.cmml">B</mi><mo id="S7.T6.21.21.7.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.21.21.7.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.21.21.7.m1.1.1.3" mathsize="80%" xref="S7.T6.21.21.7.m1.1.1.3.cmml">L</mi><mo id="S7.T6.21.21.7.m1.1.1.1a" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S7.T6.21.21.7.m1.1.1.1.cmml">∗</mo><mi id="S7.T6.21.21.7.m1.1.1.4" mathsize="80%" xref="S7.T6.21.21.7.m1.1.1.4.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="S7.T6.21.21.7.m1.1b"><apply id="S7.T6.21.21.7.m1.1.1.cmml" xref="S7.T6.21.21.7.m1.1.1"><times id="S7.T6.21.21.7.m1.1.1.1.cmml" xref="S7.T6.21.21.7.m1.1.1.1"></times><ci id="S7.T6.21.21.7.m1.1.1.2.cmml" xref="S7.T6.21.21.7.m1.1.1.2">𝐵</ci><ci id="S7.T6.21.21.7.m1.1.1.3.cmml" xref="S7.T6.21.21.7.m1.1.1.3">𝐿</ci><ci id="S7.T6.21.21.7.m1.1.1.4.cmml" xref="S7.T6.21.21.7.m1.1.1.4">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.21.21.7.m1.1c">B*L*k</annotation><annotation encoding="application/x-llamapun" id="S7.T6.21.21.7.m1.1d">italic_B ∗ italic_L ∗ italic_k</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S7.T6.22.22">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T6.22.22.1">
<span class="ltx_text" id="S7.T6.22.22.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T6.22.22.1.m1.1"><semantics id="S7.T6.22.22.1.m1.1a"><mo id="S7.T6.22.22.1.m1.1.1" mathsize="80%" stretchy="false" xref="S7.T6.22.22.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T6.22.22.1.m1.1b"><ci id="S7.T6.22.22.1.m1.1.1.cmml" xref="S7.T6.22.22.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.22.22.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T6.22.22.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.2"><span class="ltx_text" id="S7.T6.22.22.2.1" style="font-size:80%;">9.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.3"><span class="ltx_text" id="S7.T6.22.22.3.1" style="font-size:80%;">10.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.4"><span class="ltx_text" id="S7.T6.22.22.4.1" style="font-size:80%;">9.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.5"><span class="ltx_text" id="S7.T6.22.22.5.1" style="font-size:80%;">8.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.6"><span class="ltx_text" id="S7.T6.22.22.6.1" style="font-size:80%;">8.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T6.22.22.7"><span class="ltx_text ltx_font_bold" id="S7.T6.22.22.7.1" style="font-size:80%;">8.03</span></td>
</tr>
<tr class="ltx_tr" id="S7.T6.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T6.23.23.1">
<span class="ltx_text" id="S7.T6.23.23.1.1" style="font-size:80%;">CMMD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T6.23.23.1.m1.1"><semantics id="S7.T6.23.23.1.m1.1a"><mo id="S7.T6.23.23.1.m1.1.1" mathsize="80%" stretchy="false" xref="S7.T6.23.23.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T6.23.23.1.m1.1b"><ci id="S7.T6.23.23.1.m1.1.1.cmml" xref="S7.T6.23.23.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.23.23.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T6.23.23.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.2"><span class="ltx_text" id="S7.T6.23.23.2.1" style="font-size:80%;">.5202</span></td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.3"><span class="ltx_text" id="S7.T6.23.23.3.1" style="font-size:80%;">.5639</span></td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.4"><span class="ltx_text" id="S7.T6.23.23.4.1" style="font-size:80%;">.5145</span></td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.5"><span class="ltx_text" id="S7.T6.23.23.5.1" style="font-size:80%;">.4636</span></td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.6"><span class="ltx_text" id="S7.T6.23.23.6.1" style="font-size:80%;">.4871</span></td>
<td class="ltx_td ltx_align_center" id="S7.T6.23.23.7"><span class="ltx_text ltx_font_bold" id="S7.T6.23.23.7.1" style="font-size:80%;">.4587</span></td>
</tr>
<tr class="ltx_tr" id="S7.T6.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.T6.24.24.1">
<span class="ltx_text" id="S7.T6.24.24.1.1" style="font-size:80%;">CLIP</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T6.24.24.1.m1.1"><semantics id="S7.T6.24.24.1.m1.1a"><mo id="S7.T6.24.24.1.m1.1.1" mathsize="80%" stretchy="false" xref="S7.T6.24.24.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T6.24.24.1.m1.1b"><ci id="S7.T6.24.24.1.m1.1.1.cmml" xref="S7.T6.24.24.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T6.24.24.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T6.24.24.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.2"><span class="ltx_text" id="S7.T6.24.24.2.1" style="font-size:80%;">22.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.3"><span class="ltx_text" id="S7.T6.24.24.3.1" style="font-size:80%;">22.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.4"><span class="ltx_text" id="S7.T6.24.24.4.1" style="font-size:80%;">22.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.5"><span class="ltx_text" id="S7.T6.24.24.5.1" style="font-size:80%;">23.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.6"><span class="ltx_text" id="S7.T6.24.24.6.1" style="font-size:80%;">22.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T6.24.24.7"><span class="ltx_text ltx_font_bold" id="S7.T6.24.24.7.1" style="font-size:80%;">23.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the RaceDiT model's performance against other state-of-the-art diffusion models on the ImageNet 256x256 dataset.  The comparison includes several key metrics: FID (Fréchet Inception Distance), IS (Inception Score), Precision, and Recall.  Lower FID scores indicate better image quality, while higher IS scores, precision, and recall suggest better sample diversity and fidelity. The table also lists the total and activated parameters of each model, as well as the number of samples used in the evaluation. This allows for a comprehensive comparison of model performance considering factors such as model size and training resources.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison with other methods on ImageNet 256x256.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T7.14">
<tr class="ltx_tr" id="S7.T7.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T7.4.4.5"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.5.1" style="font-size:80%;">Model Config.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.4.4.6"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.6.1" style="font-size:80%;">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.4.4.7"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.7.1" style="font-size:80%;">Activated</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T7.4.4.8"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.8.1" style="font-size:80%;">Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="S7.T7.1.1.1.1" style="font-size:80%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T7.1.1.1.1.m1.1"><semantics id="S7.T7.1.1.1.1.m1.1a"><mo id="S7.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T7.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T7.1.1.1.1.m1.1b"><ci id="S7.T7.1.1.1.1.m1.1.1.cmml" xref="S7.T7.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.2.2.2"><span class="ltx_text ltx_font_bold" id="S7.T7.2.2.2.1" style="font-size:80%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.2.2.2.1.m1.1"><semantics id="S7.T7.2.2.2.1.m1.1a"><mo id="S7.T7.2.2.2.1.m1.1.1" stretchy="false" xref="S7.T7.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.2.2.2.1.m1.1b"><ci id="S7.T7.2.2.2.1.m1.1.1.cmml" xref="S7.T7.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.3.3.3"><span class="ltx_text ltx_font_bold" id="S7.T7.3.3.3.1" style="font-size:80%;">Precision<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.3.3.3.1.m1.1"><semantics id="S7.T7.3.3.3.1.m1.1a"><mo id="S7.T7.3.3.3.1.m1.1.1" stretchy="false" xref="S7.T7.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.3.3.3.1.m1.1b"><ci id="S7.T7.3.3.3.1.m1.1.1.cmml" xref="S7.T7.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.4.4.4"><span class="ltx_text ltx_font_bold" id="S7.T7.4.4.4.1" style="font-size:80%;">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.4.4.4.1.m1.1"><semantics id="S7.T7.4.4.4.1.m1.1a"><mo id="S7.T7.4.4.4.1.m1.1.1" stretchy="false" xref="S7.T7.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.4.4.4.1.m1.1b"><ci id="S7.T7.4.4.4.1.m1.1.1.cmml" xref="S7.T7.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T7.5.5.2">
<span class="ltx_text" id="S7.T7.5.5.2.1" style="font-size:80%;">ADM-G </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.5.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib6" title="">6</a><span class="ltx_text" id="S7.T7.5.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.3"><span class="ltx_text" id="S7.T7.5.5.3.1" style="font-size:80%;">0.608B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.4"><span class="ltx_text" id="S7.T7.5.5.4.1" style="font-size:80%;">0.608B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T7.5.5.1">
<span class="ltx_text" id="S7.T7.5.5.1.1" style="font-size:80%;">2.0M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.5.5.1.m1.1"><semantics id="S7.T7.5.5.1.m1.1a"><mo id="S7.T7.5.5.1.m1.1.1" mathsize="80%" xref="S7.T7.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.5.5.1.m1.1b"><times id="S7.T7.5.5.1.m1.1.1.cmml" xref="S7.T7.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.5.5.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.5.5.1.2" style="font-size:80%;"> 256</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.5"><span class="ltx_text" id="S7.T7.5.5.5.1" style="font-size:80%;">4.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.6"><span class="ltx_text" id="S7.T7.5.5.6.1" style="font-size:80%;">186.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.7"><span class="ltx_text" id="S7.T7.5.5.7.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.5.5.8"><span class="ltx_text" id="S7.T7.5.5.8.1" style="font-size:80%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.6.6.2">
<span class="ltx_text" id="S7.T7.6.6.2.1" style="font-size:80%;">LDM-8-G </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.6.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib31" title="">31</a><span class="ltx_text" id="S7.T7.6.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.3"><span class="ltx_text" id="S7.T7.6.6.3.1" style="font-size:80%;">0.506B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.4"><span class="ltx_text" id="S7.T7.6.6.4.1" style="font-size:80%;">0.506B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.6.6.1">
<span class="ltx_text" id="S7.T7.6.6.1.1" style="font-size:80%;">4.8M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.6.6.1.m1.1"><semantics id="S7.T7.6.6.1.m1.1a"><mo id="S7.T7.6.6.1.m1.1.1" mathsize="80%" xref="S7.T7.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.6.6.1.m1.1b"><times id="S7.T7.6.6.1.m1.1.1.cmml" xref="S7.T7.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.6.6.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.6.6.1.2" style="font-size:80%;"> 64</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.5"><span class="ltx_text" id="S7.T7.6.6.5.1" style="font-size:80%;">7.76</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.6"><span class="ltx_text" id="S7.T7.6.6.6.1" style="font-size:80%;">209.52</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.7"><span class="ltx_text" id="S7.T7.6.6.7.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.8"><span class="ltx_text" id="S7.T7.6.6.8.1" style="font-size:80%;">0.35</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.7.7.2">
<span class="ltx_text" id="S7.T7.7.7.2.1" style="font-size:80%;">MDT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.7.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib11" title="">11</a><span class="ltx_text" id="S7.T7.7.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.3"><span class="ltx_text" id="S7.T7.7.7.3.1" style="font-size:80%;">0.675B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.4"><span class="ltx_text" id="S7.T7.7.7.4.1" style="font-size:80%;">0.675B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.7.7.1">
<span class="ltx_text" id="S7.T7.7.7.1.1" style="font-size:80%;">2.5M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.7.7.1.m1.1"><semantics id="S7.T7.7.7.1.m1.1a"><mo id="S7.T7.7.7.1.m1.1.1" mathsize="80%" xref="S7.T7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.7.7.1.m1.1b"><times id="S7.T7.7.7.1.m1.1.1.cmml" xref="S7.T7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.7.7.1.2" style="font-size:80%;"> 256</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.5"><span class="ltx_text" id="S7.T7.7.7.5.1" style="font-size:80%;">2.15</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.6"><span class="ltx_text" id="S7.T7.7.7.6.1" style="font-size:80%;">249.27</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.7"><span class="ltx_text" id="S7.T7.7.7.7.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.7.7.8"><span class="ltx_text" id="S7.T7.7.7.8.1" style="font-size:80%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.8.8.2">
<span class="ltx_text" id="S7.T7.8.8.2.1" style="font-size:80%;">MDT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.8.8.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib11" title="">11</a><span class="ltx_text" id="S7.T7.8.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.3"><span class="ltx_text" id="S7.T7.8.8.3.1" style="font-size:80%;">0.675B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.4"><span class="ltx_text" id="S7.T7.8.8.4.1" style="font-size:80%;">0.675B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.8.8.1">
<span class="ltx_text" id="S7.T7.8.8.1.1" style="font-size:80%;">6.5M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.8.8.1.m1.1"><semantics id="S7.T7.8.8.1.m1.1a"><mo id="S7.T7.8.8.1.m1.1.1" mathsize="80%" xref="S7.T7.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.8.8.1.m1.1b"><times id="S7.T7.8.8.1.m1.1.1.cmml" xref="S7.T7.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.8.8.1.2" style="font-size:80%;"> 256</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.5"><span class="ltx_text" id="S7.T7.8.8.5.1" style="font-size:80%;">1.79</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.6"><span class="ltx_text" id="S7.T7.8.8.6.1" style="font-size:80%;">283.01</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.7"><span class="ltx_text" id="S7.T7.8.8.7.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.8.8.8"><span class="ltx_text" id="S7.T7.8.8.8.1" style="font-size:80%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.9.9.2">
<span class="ltx_text" id="S7.T7.9.9.2.1" style="font-size:80%;">DiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.9.9.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib25" title="">25</a><span class="ltx_text" id="S7.T7.9.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.3"><span class="ltx_text" id="S7.T7.9.9.3.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.4"><span class="ltx_text" id="S7.T7.9.9.4.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.9.9.1">
<span class="ltx_text" id="S7.T7.9.9.1.1" style="font-size:80%;">7.0M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.9.9.1.m1.1"><semantics id="S7.T7.9.9.1.m1.1a"><mo id="S7.T7.9.9.1.m1.1.1" mathsize="80%" xref="S7.T7.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.9.9.1.m1.1b"><times id="S7.T7.9.9.1.m1.1.1.cmml" xref="S7.T7.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.9.9.1.2" style="font-size:80%;"> 256</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.5"><span class="ltx_text" id="S7.T7.9.9.5.1" style="font-size:80%;">2.27</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.6"><span class="ltx_text" id="S7.T7.9.9.6.1" style="font-size:80%;">278.24</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.7"><span class="ltx_text" id="S7.T7.9.9.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.9.9.8"><span class="ltx_text" id="S7.T7.9.9.8.1" style="font-size:80%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.10.10.2">
<span class="ltx_text" id="S7.T7.10.10.2.1" style="font-size:80%;">SiT-XL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.10.10.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib22" title="">22</a><span class="ltx_text" id="S7.T7.10.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.3"><span class="ltx_text" id="S7.T7.10.10.3.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.4"><span class="ltx_text" id="S7.T7.10.10.4.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.10.10.1">
<span class="ltx_text" id="S7.T7.10.10.1.1" style="font-size:80%;">7.0M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.10.10.1.m1.1"><semantics id="S7.T7.10.10.1.m1.1a"><mo id="S7.T7.10.10.1.m1.1.1" mathsize="80%" xref="S7.T7.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.10.10.1.m1.1b"><times id="S7.T7.10.10.1.m1.1.1.cmml" xref="S7.T7.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.10.10.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.10.10.1.2" style="font-size:80%;"> 256</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.5"><span class="ltx_text" id="S7.T7.10.10.5.1" style="font-size:80%;">2.06</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.6"><span class="ltx_text" id="S7.T7.10.10.6.1" style="font-size:80%;">277.50</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.7"><span class="ltx_text" id="S7.T7.10.10.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.10.10.8"><span class="ltx_text" id="S7.T7.10.10.8.1" style="font-size:80%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.11.11.2">
<span class="ltx_text" id="S7.T7.11.11.2.1" style="font-size:80%;">MaskDiT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.11.11.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib43" title="">43</a><span class="ltx_text" id="S7.T7.11.11.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.3"><span class="ltx_text" id="S7.T7.11.11.3.1" style="font-size:80%;">0.737B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.4"><span class="ltx_text" id="S7.T7.11.11.4.1" style="font-size:80%;">0.737B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.11.11.1">
<span class="ltx_text" id="S7.T7.11.11.1.1" style="font-size:80%;">2.0M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.11.11.1.m1.1"><semantics id="S7.T7.11.11.1.m1.1a"><mo id="S7.T7.11.11.1.m1.1.1" mathsize="80%" xref="S7.T7.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.11.11.1.m1.1b"><times id="S7.T7.11.11.1.m1.1.1.cmml" xref="S7.T7.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.11.11.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.11.11.1.2" style="font-size:80%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.5"><span class="ltx_text" id="S7.T7.11.11.5.1" style="font-size:80%;">2.50</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.6"><span class="ltx_text" id="S7.T7.11.11.6.1" style="font-size:80%;">256.27</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.7"><span class="ltx_text" id="S7.T7.11.11.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.11.11.8"><span class="ltx_text" id="S7.T7.11.11.8.1" style="font-size:80%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.12.12.2">
<span class="ltx_text" id="S7.T7.12.12.2.1" style="font-size:80%;">DiT-MoE-XL/2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T7.12.12.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16057v1#bib.bib9" title="">9</a><span class="ltx_text" id="S7.T7.12.12.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.3"><span class="ltx_text" id="S7.T7.12.12.3.1" style="font-size:80%;">4.105B</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.4"><span class="ltx_text" id="S7.T7.12.12.4.1" style="font-size:80%;">1.530B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T7.12.12.1">
<span class="ltx_text" id="S7.T7.12.12.1.1" style="font-size:80%;">7.0M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.12.12.1.m1.1"><semantics id="S7.T7.12.12.1.m1.1a"><mo id="S7.T7.12.12.1.m1.1.1" mathsize="80%" xref="S7.T7.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.12.12.1.m1.1b"><times id="S7.T7.12.12.1.m1.1.1.cmml" xref="S7.T7.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.12.12.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.12.12.1.2" style="font-size:80%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.5"><span class="ltx_text" id="S7.T7.12.12.5.1" style="font-size:80%;">1.72</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.6"><span class="ltx_text" id="S7.T7.12.12.6.1" style="font-size:80%;">315.73</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.7"><span class="ltx_text" id="S7.T7.12.12.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.12.8"><span class="ltx_text" id="S7.T7.12.12.8.1" style="font-size:80%;">0.64</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.13.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T7.13.13.2"><span class="ltx_text" id="S7.T7.13.13.2.1" style="font-size:80%;">DiT-XL/2*</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.3"><span class="ltx_text" id="S7.T7.13.13.3.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.4"><span class="ltx_text" id="S7.T7.13.13.4.1" style="font-size:80%;">0.669B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S7.T7.13.13.1">
<span class="ltx_text" id="S7.T7.13.13.1.1" style="font-size:80%;">1.7M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.13.13.1.m1.1"><semantics id="S7.T7.13.13.1.m1.1a"><mo id="S7.T7.13.13.1.m1.1.1" mathsize="80%" xref="S7.T7.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.13.13.1.m1.1b"><times id="S7.T7.13.13.1.m1.1.1.cmml" xref="S7.T7.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.13.13.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.13.13.1.2" style="font-size:80%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.5"><span class="ltx_text" id="S7.T7.13.13.5.1" style="font-size:80%;">3.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.6"><span class="ltx_text" id="S7.T7.13.13.6.1" style="font-size:80%;">261.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.7"><span class="ltx_text" id="S7.T7.13.13.7.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.13.13.8"><span class="ltx_text" id="S7.T7.13.13.8.1" style="font-size:80%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.T7.14.14.2"><span class="ltx_text" id="S7.T7.14.14.2.1" style="font-size:80%;">RaceDiT-XL/2-4in32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.3"><span class="ltx_text" id="S7.T7.14.14.3.1" style="font-size:80%;">2.788B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.4"><span class="ltx_text" id="S7.T7.14.14.4.1" style="font-size:80%;">0.707B</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S7.T7.14.14.1">
<span class="ltx_text" id="S7.T7.14.14.1.1" style="font-size:80%;">1.7M </span><math alttext="\times" class="ltx_Math" display="inline" id="S7.T7.14.14.1.m1.1"><semantics id="S7.T7.14.14.1.m1.1a"><mo id="S7.T7.14.14.1.m1.1.1" mathsize="80%" xref="S7.T7.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S7.T7.14.14.1.m1.1b"><times id="S7.T7.14.14.1.m1.1.1.cmml" xref="S7.T7.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S7.T7.14.14.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S7.T7.14.14.1.2" style="font-size:80%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.5"><span class="ltx_text" id="S7.T7.14.14.5.1" style="font-size:80%;">2.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.6"><span class="ltx_text" id="S7.T7.14.14.6.1" style="font-size:80%;">318.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.7"><span class="ltx_text" id="S7.T7.14.14.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.14.14.8"><span class="ltx_text" id="S7.T7.14.14.8.1" style="font-size:80%;">0.60</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed RaceDiT model against the DiT-MoE model.  It shows a comparison of total parameters, activated parameters, the number of training iterations, FID (Fréchet Inception Distance), CMMD (Classifier-Matching Distance), and CLIP scores.  Lower FID and CMMD scores indicate better image generation quality, while higher CLIP scores show better alignment with textual descriptions. The results demonstrate that RaceDiT achieves comparable or better performance with fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison to DiT-MoE
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16057/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16057/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}