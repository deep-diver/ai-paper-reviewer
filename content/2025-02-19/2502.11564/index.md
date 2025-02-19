---
title: "Continuous Diffusion Model for Language Modeling"
summary: "RDLM: A novel continuous diffusion model for language modeling leverages the geometry of categorical distributions, outperforming existing discrete approaches and approaching autoregressive model perf..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Korea Advanced Institute of Science and Technology",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11564 {{< /keyword >}}
{{< keyword icon="writer" >}} Jaehyeong Jo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11564" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11564" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11564/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current discrete diffusion models for language modeling have limitations in exploiting iterative refinement due to signal loss during transitions between discrete states, while existing continuous approaches lack performance.  Also, the unclear link between discrete and continuous diffusion models hinders development.  



This research introduces Riemannian Diffusion Language Model (RDLM), a continuous diffusion framework that leverages the geometry of the underlying categorical distribution, effectively linking discrete and continuous modeling. **RDLM's novel simulation-free training and generalization to various data modalities (images, DNA sequences) showcase superior performance** compared to previous methods, reaching near autoregressive model performance. This advance has significant implications for generative modeling and various related fields.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RDLM, a novel continuous diffusion model for language modeling, outperforms existing discrete and some continuous diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RDLM uses a simulation-free training framework based on radial symmetry, addressing high dimensionality challenges. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model generalizes to other modalities, demonstrating its effectiveness beyond text generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in natural language processing and machine learning because it bridges the gap between discrete and continuous diffusion models for discrete data.  **It introduces a novel framework that outperforms existing methods, offering a more efficient and effective approach to generative modeling.**  The simulation-free training method and generalization to various data modalities open exciting avenues for future work, potentially impacting various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11564/x1.png)

> 🔼 This figure compares the performance of three different training objective functions for a continuous diffusion model on the Text8 dataset.  The three objectives are minimizing the mean squared error of the drift approximation, minimizing the cross-entropy between the predicted probability vector and the target one-hot vector, and the cross-entropy with importance sampling. The results are presented as Bits Per Character (BPC) on the Text8 test set. The figure shows that the cross-entropy method with importance sampling achieves the best performance, followed by cross-entropy, with the mean squared error performing the worst.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comparison between the training objectives. We compare Bits Per Character (BPC) on the Text8 test set.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T1.12.12">
<tr class="ltx_tr" id="S6.T1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S6.T1.1.1.1.2" style="padding:-0.4pt 0.0pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T1.1.1.1.1" style="padding:-0.4pt 0.0pt;">BPC (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T1.1.1.1.1.m1.1"><semantics id="S6.T1.1.1.1.1.m1.1a"><mo id="S6.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T1.1.1.1.1.m1.1b"><ci id="S6.T1.1.1.1.1.m1.1.1.cmml" xref="S6.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T1.12.12.13.1" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T1.12.12.13.1.1">Autoregressive</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S6.T1.12.12.13.2" style="padding:-0.4pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.12.12.14.1" style="padding:-0.4pt 0.0pt;">IAF/SCF</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.12.12.14.2" style="padding:-0.4pt 0.0pt;">1.88</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.12.12.15.1" style="padding:-0.4pt 0.0pt;">AR Argmax Flow</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.12.12.15.2" style="padding:-0.4pt 0.0pt;">1.39</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.12.12.16.1" style="padding:-0.4pt 0.0pt;">Transformer AR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.12.12.16.2" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.12.12.16.2.1">1.23</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.12.12.17.1" style="padding:-0.4pt 0.0pt;">Discrete Flow</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.12.12.17.2" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.12.12.17.2.1">1.23</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T1.12.12.18.1" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T1.12.12.18.1.1">Any-order Autoregressive</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S6.T1.12.12.18.2" style="padding:-0.4pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T1.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.2.2.2.2" style="padding:-0.4pt 0.0pt;">ARDM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.2.2.2.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.2.2.2.1.m1.1"><semantics id="S6.T1.2.2.2.1.m1.1a"><mo id="S6.T1.2.2.2.1.m1.1.1" xref="S6.T1.2.2.2.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.2.2.2.1.m1.1b"><leq id="S6.T1.2.2.2.1.m1.1.1.cmml" xref="S6.T1.2.2.2.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.2.2.2.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.2.2.2.1.m1.1d">≤</annotation></semantics></math> 1.43</td>
</tr>
<tr class="ltx_tr" id="S6.T1.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.3.3.3.2" style="padding:-0.4pt 0.0pt;">MAC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.3.3.3.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.3.3.3.1.m1.1"><semantics id="S6.T1.3.3.3.1.m1.1a"><mo id="S6.T1.3.3.3.1.m1.1.1" xref="S6.T1.3.3.3.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.3.3.3.1.m1.1b"><leq id="S6.T1.3.3.3.1.m1.1.1.cmml" xref="S6.T1.3.3.3.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.3.3.3.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.3.3.3.1.m1.1d">≤</annotation></semantics></math> 1.40</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T1.12.12.19.1" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T1.12.12.19.1.1">Discrete Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S6.T1.12.12.19.2" style="padding:-0.4pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T1.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.4.4.4.2" style="padding:-0.4pt 0.0pt;">Multinomial Diffusion</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.4.4.4.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.4.4.4.1.m1.1"><semantics id="S6.T1.4.4.4.1.m1.1a"><mo id="S6.T1.4.4.4.1.m1.1.1" xref="S6.T1.4.4.4.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.4.4.4.1.m1.1b"><leq id="S6.T1.4.4.4.1.m1.1.1.cmml" xref="S6.T1.4.4.4.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.4.4.4.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.4.4.4.1.m1.1d">≤</annotation></semantics></math> 1.72</td>
</tr>
<tr class="ltx_tr" id="S6.T1.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.5.5.5.2" style="padding:-0.4pt 0.0pt;">D3PM Uniform</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.5.5.5.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.5.5.5.1.m1.1"><semantics id="S6.T1.5.5.5.1.m1.1a"><mo id="S6.T1.5.5.5.1.m1.1.1" xref="S6.T1.5.5.5.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.5.5.5.1.m1.1b"><leq id="S6.T1.5.5.5.1.m1.1.1.cmml" xref="S6.T1.5.5.5.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.5.5.5.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.5.5.5.1.m1.1d">≤</annotation></semantics></math> 1.61</td>
</tr>
<tr class="ltx_tr" id="S6.T1.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.6.6.6.2" style="padding:-0.4pt 0.0pt;">D3PM Absorb</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.6.6.6.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.6.6.6.1.m1.1"><semantics id="S6.T1.6.6.6.1.m1.1a"><mo id="S6.T1.6.6.6.1.m1.1.1" xref="S6.T1.6.6.6.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.6.6.6.1.m1.1b"><leq id="S6.T1.6.6.6.1.m1.1.1.cmml" xref="S6.T1.6.6.6.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.6.6.6.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.6.6.6.1.m1.1d">≤</annotation></semantics></math> 1.45</td>
</tr>
<tr class="ltx_tr" id="S6.T1.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.7.7.7.2" style="padding:-0.4pt 0.0pt;">SEDD Absorb</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.7.7.7.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.7.7.7.1.m1.1"><semantics id="S6.T1.7.7.7.1.m1.1a"><mo id="S6.T1.7.7.7.1.m1.1.1" xref="S6.T1.7.7.7.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.7.7.7.1.m1.1b"><leq id="S6.T1.7.7.7.1.m1.1.1.cmml" xref="S6.T1.7.7.7.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.7.7.7.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.7.7.7.1.m1.1d">≤</annotation></semantics></math> 1.39</td>
</tr>
<tr class="ltx_tr" id="S6.T1.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.8.8.8.2" style="padding:-0.4pt 0.0pt;">MDLM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.8.8.8.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.8.8.8.1.m1.1"><semantics id="S6.T1.8.8.8.1.m1.1a"><mo id="S6.T1.8.8.8.1.m1.1.1" xref="S6.T1.8.8.8.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.8.8.8.1.m1.1b"><leq id="S6.T1.8.8.8.1.m1.1.1.cmml" xref="S6.T1.8.8.8.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.8.8.8.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.8.8.8.1.m1.1d">≤</annotation></semantics></math> 1.40</td>
</tr>
<tr class="ltx_tr" id="S6.T1.9.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.9.9.9.2" style="padding:-0.4pt 0.0pt;">MD4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.9.9.9.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.9.9.9.1.m1.1"><semantics id="S6.T1.9.9.9.1.m1.1a"><mo id="S6.T1.9.9.9.1.m1.1.1" xref="S6.T1.9.9.9.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.9.9.9.1.m1.1b"><leq id="S6.T1.9.9.9.1.m1.1.1.cmml" xref="S6.T1.9.9.9.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.9.9.9.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.9.9.9.1.m1.1d">≤</annotation></semantics></math> 1.37</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T1.12.12.20.1" style="padding:-0.4pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T1.12.12.20.1.1">Continuous Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S6.T1.12.12.20.2" style="padding:-0.4pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T1.10.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.10.10.10.2" style="padding:-0.4pt 0.0pt;">Plaid</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.10.10.10.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.10.10.10.1.m1.1"><semantics id="S6.T1.10.10.10.1.m1.1a"><mo id="S6.T1.10.10.10.1.m1.1.1" xref="S6.T1.10.10.10.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.10.10.10.1.m1.1b"><leq id="S6.T1.10.10.10.1.m1.1.1.cmml" xref="S6.T1.10.10.10.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.10.10.10.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.10.10.10.1.m1.1d">≤</annotation></semantics></math> 1.48</td>
</tr>
<tr class="ltx_tr" id="S6.T1.11.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T1.11.11.11.2" style="padding:-0.4pt 0.0pt;">BFN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T1.11.11.11.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.11.11.11.1.m1.1"><semantics id="S6.T1.11.11.11.1.m1.1a"><mo id="S6.T1.11.11.11.1.m1.1.1" xref="S6.T1.11.11.11.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.11.11.11.1.m1.1b"><leq id="S6.T1.11.11.11.1.m1.1.1.cmml" xref="S6.T1.11.11.11.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.11.11.11.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.11.11.11.1.m1.1d">≤</annotation></semantics></math> 1.41</td>
</tr>
<tr class="ltx_tr" id="S6.T1.12.12.12" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S6.T1.12.12.12.2" style="padding:-0.4pt 0.0pt;"><span class="ltx_text" id="S6.T1.12.12.12.2.1" style="background-color:#EBEBEB;">RDLM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T1.12.12.12.1" style="padding:-0.4pt 0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S6.T1.12.12.12.1.m1.1" style="background-color:#EBEBEB;"><semantics id="S6.T1.12.12.12.1.m1.1a"><mo id="S6.T1.12.12.12.1.m1.1.1" mathbackground="#EBEBEB" xref="S6.T1.12.12.12.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S6.T1.12.12.12.1.m1.1b"><leq id="S6.T1.12.12.12.1.m1.1.1.cmml" xref="S6.T1.12.12.12.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.12.12.12.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S6.T1.12.12.12.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S6.T1.12.12.12.1.1" style="background-color:#EBEBEB;"> <span class="ltx_text ltx_font_bold" id="S6.T1.12.12.12.1.1.1">1.32</span></span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different language models' performance on the Text8 benchmark dataset, measured by Bits Per Character (BPC).  It includes both autoregressive and diffusion models, allowing for a direct comparison of these two major approaches to language modeling. The lowest BPC value indicates the best performance.  The results for each model are sourced directly from their respective papers.  Bold values highlight the best-performing model within either the autoregressive or diffusion model categories.
> <details>
> <summary>read the caption</summary>
> Table 1:  Bits Per Character (BPC) results on Text8 test set. Results are taken from the corresponding papers. Bold denotes the best result in autoregressive or diffusion models.
> </details>





### In-depth insights


#### Discrete Diffusion Models
Discrete diffusion models offer a compelling approach to generative modeling of discrete data, leveraging the power of iterative refinement inherent in diffusion processes.  Unlike autoregressive models that generate data sequentially, **discrete diffusion models process the entire sequence in parallel**, enabling bidirectional generation and faster sampling.  However, these models face challenges in fully exploiting iterative refinement because signals can be lost during transitions between discrete states.  This limitation arises from the inherent stochasticity of the Markov chains used to model the process, leading to jumps between states that may obscure valuable information.  Several methods exist for mitigating this, such as carefully designed transition matrices (e.g., masked diffusion), but **improvements are continually sought to bridge the performance gap with autoregressive models and enhance controllability** over the generative process.

#### Riemannian Diffusion
The concept of "Riemannian Diffusion" in the context of language modeling presents a novel approach to address the limitations of existing diffusion models when applied to discrete data.  Traditional diffusion models excel in continuous domains but struggle with discrete data due to the loss of information during the transition between states.  A **key innovation** is leveraging the geometry of the underlying categorical distribution, specifically using the statistical manifold and its Riemannian geometry.  This allows the model to not just treat discrete tokens as points but to consider the relationships between them based on their inherent probabilities, effectively moving the process from a discrete jump between states to a continuous flow on a hypersphere.  This continuous flow allows for **smoother refinement** during the generative process, improving performance and controllability. **Radial symmetry** is employed to simplify the parameterization and training process, which avoids the computational challenges of simulations on complex manifolds.  The framework thus elegantly bridges discrete and continuous perspectives, resulting in a model that better utilizes iterative refinement and potentially surpasses the performance of existing discrete diffusion models.

#### Simulation-Free Training
The concept of 'Simulation-Free Training' in the context of diffusion models addresses a critical computational bottleneck.  Traditional training methods often require computationally expensive simulations of stochastic processes, particularly when dealing with complex, high-dimensional spaces.  **Simulation-free training aims to bypass these computationally expensive simulations**, instead relying on efficient mathematical approximations or alternative training strategies. This approach is crucial for scalability, making it possible to train these models on large datasets and complex problems that would otherwise be intractable.  **Key to the success of simulation-free training is finding accurate, yet efficient approximations of the underlying stochastic processes.**  This typically involves leveraging the mathematical properties of the system, such as symmetries or specific probability distributions, to simplify the calculations.  **One common strategy is to replace the simulation with a closed-form solution or a tractable approximation that captures the essential characteristics of the stochastic process.**  This might involve using variational inference or devising clever parameterizations that allow for direct computation of gradients without explicit simulation.  **Another important aspect is the careful design of the training objective and algorithm.**  The training algorithm needs to be designed such that it accurately reflects the behavior of the approximated system and that the training objective is effectively optimized within the simulation-free framework.  This often requires careful consideration of the trade-off between accuracy and computational efficiency.  Successfully developing a simulation-free training method for diffusion models is **a significant advancement**, opening the door to broader applications and accelerating the pace of research in this area.

#### Generative Process
The generative process in this research paper is a crucial component, detailing how the model produces new data instances. It is a continuous diffusion model, meaning it operates in a continuous space rather than a discrete one. **This contrasts with discrete diffusion models, which often face limitations in fully exploiting iterative refinement**. The model leverages the geometry of the underlying statistical manifold, specifically the hypersphere, which offers several advantages. The use of radial symmetry simplifies parameterization and training, leading to a simulation-free approach. The framework generalizes existing discrete models and incorporates the concept of a continuous flow on the manifold, enabling the model to smoothly transition between states and correct wrong predictions during the process. **A key innovation is the simulation-free training scheme**, making it efficient and scalable.  The design addresses high-dimensionality issues, enhancing the effectiveness of the method, particularly for large vocabulary tasks. The continuous nature of the process and the incorporation of geometric information allow for a more nuanced generation process, potentially surpassing discrete methods in terms of performance and controllability.  The model's ability to learn complex relationships is a key strength, but exploring the limitations of its continuous representation relative to real-world data remains an area for future investigation.

#### Future Work
The paper's 'Future Work' section hints at several promising research avenues.  **Extending the model to handle autoregressive-like generation** is crucial, potentially improving the model's efficiency and controllability by strategically adjusting the noise schedule to guide token generation sequentially, mimicking autoregressive models' strengths.  **Exploring different noise schedules** for varying positions within a sequence could further refine this approach.  Beyond language, the authors suggest applying RDLM to diverse modalities.  The success of continuous diffusion models in image generation and molecular design strongly suggests that RDLM's adaptation to these areas holds substantial potential, **requiring further investigation into effective data representations and training strategies** within these new contexts. Finally, the integration of guidance methods from continuous diffusion models for enhanced control over the generation process warrants exploration, promising more directed and refined outputs in various applications.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T2.9.9">
<tr class="ltx_tr" id="S7.T2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S7.T2.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S7.T2.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"># Param.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S7.T2.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">PPL (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T2.1.1.1.1.m1.1"><semantics id="S7.T2.1.1.1.1.m1.1a"><mo id="S7.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T2.1.1.1.1.m1.1b"><ci id="S7.T2.1.1.1.1.m1.1.1.cmml" xref="S7.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T2.9.9.10.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T2.9.9.10.1.1">Autoregressive</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T2.9.9.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T2.9.9.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.9.9.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">Transformer-X Base</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.9.9.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.46B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.9.9.11.3" style="padding-left:0.0pt;padding-right:0.0pt;">23.5</td>
</tr>
<tr class="ltx_tr" id="S7.T2.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\text{OmniNet}_{T}" class="ltx_Math" display="inline" id="S7.T2.2.2.2.1.m1.1"><semantics id="S7.T2.2.2.2.1.m1.1a"><msub id="S7.T2.2.2.2.1.m1.1.1" xref="S7.T2.2.2.2.1.m1.1.1.cmml"><mtext id="S7.T2.2.2.2.1.m1.1.1.2" xref="S7.T2.2.2.2.1.m1.1.1.2a.cmml">OmniNet</mtext><mi id="S7.T2.2.2.2.1.m1.1.1.3" xref="S7.T2.2.2.2.1.m1.1.1.3.cmml">T</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T2.2.2.2.1.m1.1b"><apply id="S7.T2.2.2.2.1.m1.1.1.cmml" xref="S7.T2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T2.2.2.2.1.m1.1.1.1.cmml" xref="S7.T2.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S7.T2.2.2.2.1.m1.1.1.2a.cmml" xref="S7.T2.2.2.2.1.m1.1.1.2"><mtext id="S7.T2.2.2.2.1.m1.1.1.2.cmml" xref="S7.T2.2.2.2.1.m1.1.1.2">OmniNet</mtext></ci><ci id="S7.T2.2.2.2.1.m1.1.1.3.cmml" xref="S7.T2.2.2.2.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.2.2.2.1.m1.1c">\text{OmniNet}_{T}</annotation><annotation encoding="application/x-llamapun" id="S7.T2.2.2.2.1.m1.1d">OmniNet start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">100M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">21.5</td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.9.9.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">Transformer</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.9.9.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">110M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.9.9.12.3" style="padding-left:0.0pt;padding-right:0.0pt;">22.32</td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T2.9.9.13.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T2.9.9.13.1.1">Discrete Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T2.9.9.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S7.T2.9.9.13.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T2.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.3.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">BERT-Mouth</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">110M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.3.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.3.3.3.1.m1.1"><semantics id="S7.T2.3.3.3.1.m1.1a"><mo id="S7.T2.3.3.3.1.m1.1.1" xref="S7.T2.3.3.3.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.3.3.3.1.m1.1b"><leq id="S7.T2.3.3.3.1.m1.1.1.cmml" xref="S7.T2.3.3.3.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.3.3.3.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.3.3.3.1.m1.1d">≤</annotation></semantics></math> 142.89</td>
</tr>
<tr class="ltx_tr" id="S7.T2.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.4.4.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">D3PM Absorb</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.4.4.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">70M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.4.4.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.4.4.4.1.m1.1"><semantics id="S7.T2.4.4.4.1.m1.1a"><mo id="S7.T2.4.4.4.1.m1.1.1" xref="S7.T2.4.4.4.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.4.4.4.1.m1.1b"><leq id="S7.T2.4.4.4.1.m1.1.1.cmml" xref="S7.T2.4.4.4.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.4.4.4.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.4.4.4.1.m1.1d">≤</annotation></semantics></math> <span class="ltx_text ltx_phantom" id="S7.T2.4.4.4.1.1"><span style="visibility:hidden">0</span></span>76.90</td>
</tr>
<tr class="ltx_tr" id="S7.T2.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.5.5.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">DiffusionBert</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.5.5.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">110M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.5.5.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.5.5.5.1.m1.1"><semantics id="S7.T2.5.5.5.1.m1.1a"><mo id="S7.T2.5.5.5.1.m1.1.1" xref="S7.T2.5.5.5.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.5.5.5.1.m1.1b"><leq id="S7.T2.5.5.5.1.m1.1.1.cmml" xref="S7.T2.5.5.5.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.5.5.5.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.5.5.5.1.m1.1d">≤</annotation></semantics></math> <span class="ltx_text ltx_phantom" id="S7.T2.5.5.5.1.1"><span style="visibility:hidden">0</span></span>63.78</td>
</tr>
<tr class="ltx_tr" id="S7.T2.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.6.6.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">SEDD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.6.6.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">110M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.6.6.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.6.6.6.1.m1.1"><semantics id="S7.T2.6.6.6.1.m1.1a"><mo id="S7.T2.6.6.6.1.m1.1.1" xref="S7.T2.6.6.6.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.6.6.6.1.m1.1b"><leq id="S7.T2.6.6.6.1.m1.1.1.cmml" xref="S7.T2.6.6.6.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.6.6.6.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.6.6.6.1.m1.1d">≤</annotation></semantics></math> <span class="ltx_text ltx_phantom" id="S7.T2.6.6.6.1.1"><span style="visibility:hidden">0</span></span>32.79</td>
</tr>
<tr class="ltx_tr" id="S7.T2.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.7.7.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">MDLM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.7.7.7.3" style="padding-left:0.0pt;padding-right:0.0pt;">110M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.7.7.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.7.7.7.1.m1.1"><semantics id="S7.T2.7.7.7.1.m1.1a"><mo id="S7.T2.7.7.7.1.m1.1.1" xref="S7.T2.7.7.7.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.7.7.7.1.m1.1b"><leq id="S7.T2.7.7.7.1.m1.1.1.cmml" xref="S7.T2.7.7.7.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.7.7.7.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.7.7.7.1.m1.1d">≤</annotation></semantics></math> <span class="ltx_text ltx_phantom" id="S7.T2.7.7.7.1.1"><span style="visibility:hidden">0</span></span>27.04</td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T2.9.9.14.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T2.9.9.14.1.1">Continuous Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T2.9.9.14.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S7.T2.9.9.14.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T2.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T2.8.8.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">Diffusion-LM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.8.8.8.3" style="padding-left:0.0pt;padding-right:0.0pt;">80M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T2.8.8.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.8.8.8.1.m1.1"><semantics id="S7.T2.8.8.8.1.m1.1a"><mo id="S7.T2.8.8.8.1.m1.1.1" xref="S7.T2.8.8.8.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.8.8.8.1.m1.1b"><leq id="S7.T2.8.8.8.1.m1.1.1.cmml" xref="S7.T2.8.8.8.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.8.8.8.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.8.8.8.1.m1.1d">≤</annotation></semantics></math> 118.62</td>
</tr>
<tr class="ltx_tr" id="S7.T2.9.9.9" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S7.T2.9.9.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S7.T2.9.9.9.2.1" style="background-color:#EBEBEB;">RDLM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S7.T2.9.9.9.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S7.T2.9.9.9.3.1" style="background-color:#EBEBEB;">110M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S7.T2.9.9.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T2.9.9.9.1.m1.1" style="background-color:#EBEBEB;"><semantics id="S7.T2.9.9.9.1.m1.1a"><mo id="S7.T2.9.9.9.1.m1.1.1" mathbackground="#EBEBEB" xref="S7.T2.9.9.9.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T2.9.9.9.1.m1.1b"><leq id="S7.T2.9.9.9.1.m1.1.1.cmml" xref="S7.T2.9.9.9.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T2.9.9.9.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T2.9.9.9.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S7.T2.9.9.9.1.1" style="background-color:#EBEBEB;"> <span class="ltx_text ltx_phantom" id="S7.T2.9.9.9.1.1.1"><span style="visibility:hidden">0</span></span>29.72</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the test perplexity (PPL) scores achieved by various language models on the LM1B benchmark dataset.  It compares both autoregressive and diffusion models, highlighting the performance of different approaches, including both discrete and continuous diffusion models.  Baseline results are included from Sahoo et al. (2024) for reference.
> <details>
> <summary>read the caption</summary>
> Table 2:  Test perplexity (PPL) results on LM1B dataset. Baseline results are taken from Sahoo et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T3.7.7">
<tr class="ltx_tr" id="S7.T3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S7.T3.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S7.T3.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"># Param.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S7.T3.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">BPD (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T3.1.1.1.1.m1.1"><semantics id="S7.T3.1.1.1.1.m1.1a"><mo id="S7.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T3.1.1.1.1.m1.1b"><ci id="S7.T3.1.1.1.1.m1.1.1.cmml" xref="S7.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T3.7.7.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T3.7.7.8.1.1">Autoregressive</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T3.7.7.8.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T3.7.7.8.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">PixelRNN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S7.T3.7.7.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.9.3" style="padding-left:0.0pt;padding-right:0.0pt;">3.00</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">Gated PixelCNN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S7.T3.7.7.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.10.3" style="padding-left:0.0pt;padding-right:0.0pt;">3.03</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">PixelCNN++</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">53M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.11.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.92</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">PixelSNAIL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">46M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.12.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.85</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">Image Transformer</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S7.T3.7.7.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.13.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.90</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.7.7.14.1" style="padding-left:0.0pt;padding-right:0.0pt;">Sparse Transformer</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.14.2" style="padding-left:0.0pt;padding-right:0.0pt;">59M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.7.7.14.3" style="padding-left:0.0pt;padding-right:0.0pt;">2.80</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T3.7.7.15.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T3.7.7.15.1.1">Discrete Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T3.7.7.15.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S7.T3.7.7.15.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">D3PM Absorb</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">37M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T3.2.2.2.1.m1.1"><semantics id="S7.T3.2.2.2.1.m1.1a"><mo id="S7.T3.2.2.2.1.m1.1.1" xref="S7.T3.2.2.2.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T3.2.2.2.1.m1.1b"><leq id="S7.T3.2.2.2.1.m1.1.1.cmml" xref="S7.T3.2.2.2.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.2.2.2.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T3.2.2.2.1.m1.1d">≤</annotation></semantics></math> 4.40</td>
</tr>
<tr class="ltx_tr" id="S7.T3.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.3.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">D3PM Gauss</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">36M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.3.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T3.3.3.3.1.m1.1"><semantics id="S7.T3.3.3.3.1.m1.1a"><mo id="S7.T3.3.3.3.1.m1.1.1" xref="S7.T3.3.3.3.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T3.3.3.3.1.m1.1b"><leq id="S7.T3.3.3.3.1.m1.1.1.cmml" xref="S7.T3.3.3.3.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.3.3.3.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T3.3.3.3.1.m1.1d">≤</annotation></semantics></math> 3.44</td>
</tr>
<tr class="ltx_tr" id="S7.T3.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.4.4.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\tau" class="ltx_Math" display="inline" id="S7.T3.4.4.4.1.m1.1"><semantics id="S7.T3.4.4.4.1.m1.1a"><mi id="S7.T3.4.4.4.1.m1.1.1" xref="S7.T3.4.4.4.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S7.T3.4.4.4.1.m1.1b"><ci id="S7.T3.4.4.4.1.m1.1.1.cmml" xref="S7.T3.4.4.4.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.4.4.4.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S7.T3.4.4.4.1.m1.1d">italic_τ</annotation></semantics></math>LDR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.5.5.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">36M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.5.5.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T3.5.5.5.2.m1.1"><semantics id="S7.T3.5.5.5.2.m1.1a"><mo id="S7.T3.5.5.5.2.m1.1.1" xref="S7.T3.5.5.5.2.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T3.5.5.5.2.m1.1b"><leq id="S7.T3.5.5.5.2.m1.1.1.cmml" xref="S7.T3.5.5.5.2.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.5.5.5.2.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T3.5.5.5.2.m1.1d">≤</annotation></semantics></math> 3.59</td>
</tr>
<tr class="ltx_tr" id="S7.T3.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T3.6.6.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">MD4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.6.6.6.3" style="padding-left:0.0pt;padding-right:0.0pt;">28M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T3.6.6.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T3.6.6.6.1.m1.1"><semantics id="S7.T3.6.6.6.1.m1.1a"><mo id="S7.T3.6.6.6.1.m1.1.1" xref="S7.T3.6.6.6.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T3.6.6.6.1.m1.1b"><leq id="S7.T3.6.6.6.1.m1.1.1.cmml" xref="S7.T3.6.6.6.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.6.6.6.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T3.6.6.6.1.m1.1d">≤</annotation></semantics></math> 2.78</td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T3.7.7.16.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S7.T3.7.7.16.1.1">Continuous Diffusion</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S7.T3.7.7.16.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S7.T3.7.7.16.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S7.T3.7.7.7" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S7.T3.7.7.7.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S7.T3.7.7.7.2.1" style="background-color:#EBEBEB;">RDLM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S7.T3.7.7.7.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S7.T3.7.7.7.3.1" style="background-color:#EBEBEB;">35M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S7.T3.7.7.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<math alttext="\leq" class="ltx_Math" display="inline" id="S7.T3.7.7.7.1.m1.1" style="background-color:#EBEBEB;"><semantics id="S7.T3.7.7.7.1.m1.1a"><mo id="S7.T3.7.7.7.1.m1.1.1" mathbackground="#EBEBEB" xref="S7.T3.7.7.7.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S7.T3.7.7.7.1.m1.1b"><leq id="S7.T3.7.7.7.1.m1.1.1.cmml" xref="S7.T3.7.7.7.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S7.T3.7.7.7.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S7.T3.7.7.7.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="S7.T3.7.7.7.1.1" style="background-color:#EBEBEB;"> <span class="ltx_text ltx_font_bold" id="S7.T3.7.7.7.1.1.1">2.74</span></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Bits Per Dimension (BPD) achieved by various generative models on the CIFAR-10 image dataset.  It specifically highlights the performance of different approaches, including autoregressive models and discrete diffusion models, as well as the model proposed in the paper.  The baseline results are taken from a prior publication by Shi et al. (2024), allowing for a direct comparison of the presented method against state-of-the-art techniques. Lower BPD values indicate better performance in image generation.
> <details>
> <summary>read the caption</summary>
> Table 3:  Bits Per Dimension (BPD) results on CIFAR-10 dataset. Baseline results are taken from Shi et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T4.1.1">
<tr class="ltx_tr" id="S7.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S7.T4.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S7.T4.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">MSE (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T4.1.1.1.1.m1.1"><semantics id="S7.T4.1.1.1.1.m1.1a"><mo id="S7.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S7.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T4.1.1.1.1.m1.1b"><ci id="S7.T4.1.1.1.1.m1.1.1.cmml" xref="S7.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S7.T4.1.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Bit-Diffusion (bit)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S7.T4.1.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.041</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Bit-Diffusion (one-hot)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.040</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">D3PM Uniform</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.038</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">DDSM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.033</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">DirichletFM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.034</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Language Model</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.034</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S7.T4.1.1.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">Fisher-Flow</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.T4.1.1.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">0.029</td>
</tr>
<tr class="ltx_tr" id="S7.T4.1.1.9" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S7.T4.1.1.9.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S7.T4.1.1.9.1.1" style="background-color:#EBEBEB;">RDLM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S7.T4.1.1.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T4.1.1.9.2.1" style="background-color:#EBEBEB;">0.027</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the mean squared error (MSE) achieved by different models in generating promoter DNA sequences.  The MSE is a measure of the difference between the predicted regulatory activity of the generated sequences and the actual activity of the original sequences.  Lower MSE values indicate better performance. The results are compared to the baselines established in Davis et al. (2024), providing a benchmark for evaluating the performance of the proposed method against existing state-of-the-art techniques.
> <details>
> <summary>read the caption</summary>
> Table 4:  MSE results on the generated promoter DNA sequences. Baseline results are taken from Davis et al. (2024).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11564/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11564/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}