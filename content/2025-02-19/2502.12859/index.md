---
title: "PAFT: Prompt-Agnostic Fine-Tuning"
summary: "PAFT dynamically adjusts prompts during LLM fine-tuning, improving model robustness and generalization across diverse prompts without sacrificing performance or efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12859 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenxing Wei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12859" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12859" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12859/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often suffer from prompt brittleness; even slight variations significantly affect their performance after fine-tuning. This is because existing supervised fine-tuning (SFT) methods typically overfit to specific prompt formats, hindering generalization to unseen prompts.  This issue is particularly problematic in real-world scenarios where diverse human-written prompts are common. 

To tackle this, researchers propose Prompt-Agnostic Fine-Tuning (PAFT), a novel approach that dynamically adjusts prompts during training. PAFT uses a diverse set of synthetic prompts generated using multiple LLMs, randomly sampling from this set during training. This approach encourages the model to learn underlying task principles rather than overfitting specific prompt formulations.  Experimental results show that PAFT achieves state-of-the-art performance and significantly enhanced robustness across diverse benchmarks, with faster inference times compared to baseline methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PAFT enhances LLM robustness to various prompts by dynamically changing prompts during training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PAFT maintains high performance on downstream tasks, outperforming existing methods across diverse benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PAFT achieves enhanced inference speed without compromising training efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it addresses a critical limitation of current fine-tuning methods for large language models (LLMs): prompt brittleness.**  By introducing PAFT, researchers gain a novel technique to improve the robustness and generalization of LLMs, leading to more reliable and efficient real-world applications.  Its focus on prompt-agnostic training opens **new avenues for research in improving LLM adaptability and reducing the reliance on carefully crafted prompts.**

------
#### Visual Insights



![](https://arxiv.org/html/2502.12859/x1.png)

> 🔼 The figure illustrates the impact of minor prompt variations on the accuracy of a large language model (LLM). Two examples of the same question, with slight differences in their prompts, showcase drastically different accuracy rates. One prompt yields 86.27% accuracy, while the other drops to 66.93%, highlighting the vulnerability of LLMs to even small prompt modifications if not robust.
> <details>
> <summary>read the caption</summary>
> Figure 1: This figure shows how small changes in prompts can drastically affect the accuracy of a model. Two examples show the same user question, but the prompts differ by only one word, resulting in different answers. The first prompt achieves 86.27% accuracy across the entire dataset, while the second prompt drops significantly to 66.93%. This highlights how even small modifications can lead to large swings in performance if a model lacks prompt robustness.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.36.36">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.36.36.37.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.36.36.37.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.1.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.2.1">Hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.3.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.4.1">Winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.5.1">RACE-mid</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.6.1">RACE-high</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.36.36.37.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.7.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.38.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.1">Metric</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.2">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.3">Std</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.4">Top</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.5">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.6">Std</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.7">Top</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.8">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.9">Std</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.10">Top</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.11">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.12">Std</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.13">Top</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.14">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.15">Std</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.38.2.16">Top</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.17">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.18">Std</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.38.2.19">Top</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.6.6.7">Base Model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.8">47.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">±</annotation></semantics></math>9.78</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.9">0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.10">74.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" xref="S4.T1.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">±</annotation></semantics></math>6.24</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.11">0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.12">45.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" xref="S4.T1.3.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">±</annotation></semantics></math>11.78</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.13">0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.14">71.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.4">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" xref="S4.T1.4.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><csymbol cd="latexml" id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">±</annotation></semantics></math>7.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.15">0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.16">67.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.5">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" xref="S4.T1.5.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><csymbol cd="latexml" id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">±</annotation></semantics></math>6.78</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.17">0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.18">61.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.6">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" xref="S4.T1.6.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">±</annotation></semantics></math>8.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.19">0%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.12.12.12.7">user-specified prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.8">92.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.m1.1"><semantics id="S4.T1.7.7.7.1.m1.1a"><mo id="S4.T1.7.7.7.1.m1.1.1" xref="S4.T1.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.m1.1d">±</annotation></semantics></math>2.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.9">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.10">77.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.8.8.8.2.m1.1"><semantics id="S4.T1.8.8.8.2.m1.1a"><mo id="S4.T1.8.8.8.2.m1.1.1" xref="S4.T1.8.8.8.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.2.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.8.2.m1.1.1.cmml" xref="S4.T1.8.8.8.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.2.m1.1d">±</annotation></semantics></math>2.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.11">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.12.12.12.12.1">78.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.9.9.9.3.m1.1"><semantics id="S4.T1.9.9.9.3.m1.1a"><mo id="S4.T1.9.9.9.3.m1.1.1" xref="S4.T1.9.9.9.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.3.m1.1b"><csymbol cd="latexml" id="S4.T1.9.9.9.3.m1.1.1.cmml" xref="S4.T1.9.9.9.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.3.m1.1d">±</annotation></semantics></math>7.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.13">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.14">79.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.4">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.10.10.10.4.m1.1"><semantics id="S4.T1.10.10.10.4.m1.1a"><mo id="S4.T1.10.10.10.4.m1.1.1" xref="S4.T1.10.10.10.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.4.m1.1b"><csymbol cd="latexml" id="S4.T1.10.10.10.4.m1.1.1.cmml" xref="S4.T1.10.10.10.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.4.m1.1d">±</annotation></semantics></math>6.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.15">22%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.16">81.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.11.5">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.11.11.11.5.m1.1"><semantics id="S4.T1.11.11.11.5.m1.1a"><mo id="S4.T1.11.11.11.5.m1.1.1" xref="S4.T1.11.11.11.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.5.m1.1b"><csymbol cd="latexml" id="S4.T1.11.11.11.5.m1.1.1.cmml" xref="S4.T1.11.11.11.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.5.m1.1d">±</annotation></semantics></math>4.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.17">4%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.18">81.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.6">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.12.12.12.6.m1.1"><semantics id="S4.T1.12.12.12.6.m1.1a"><mo id="S4.T1.12.12.12.6.m1.1.1" xref="S4.T1.12.12.12.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.6.m1.1b"><csymbol cd="latexml" id="S4.T1.12.12.12.6.m1.1.1.cmml" xref="S4.T1.12.12.12.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.6.m1.1d">±</annotation></semantics></math>4.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.19">5%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.18.18.18.7">TopAccuracy prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.8">91.27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.13.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.m1.1"><semantics id="S4.T1.13.13.13.1.m1.1a"><mo id="S4.T1.13.13.13.1.m1.1.1" xref="S4.T1.13.13.13.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.m1.1b"><csymbol cd="latexml" id="S4.T1.13.13.13.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.m1.1d">±</annotation></semantics></math>2.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.18.18.18.9.1">86%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.10">75.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.14.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.14.14.14.2.m1.1"><semantics id="S4.T1.14.14.14.2.m1.1a"><mo id="S4.T1.14.14.14.2.m1.1.1" xref="S4.T1.14.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.2.m1.1b"><csymbol cd="latexml" id="S4.T1.14.14.14.2.m1.1.1.cmml" xref="S4.T1.14.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.2.m1.1d">±</annotation></semantics></math>3.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.11">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.12">66.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.15.15.15.3.m1.1"><semantics id="S4.T1.15.15.15.3.m1.1a"><mo id="S4.T1.15.15.15.3.m1.1.1" xref="S4.T1.15.15.15.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.3.m1.1b"><csymbol cd="latexml" id="S4.T1.15.15.15.3.m1.1.1.cmml" xref="S4.T1.15.15.15.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.3.m1.1d">±</annotation></semantics></math>3.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.13">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.18.18.18.14.1">84.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.16.16.16.4.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.16.16.16.4.1.m1.1"><semantics id="S4.T1.16.16.16.4.1.m1.1a"><mo id="S4.T1.16.16.16.4.1.m1.1.1" xref="S4.T1.16.16.16.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.16.16.16.4.1.m1.1.1.cmml" xref="S4.T1.16.16.16.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.4.1.m1.1d">±</annotation></semantics></math>4.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.15">59%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.16"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.18.18.18.16.1">82.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.17.17.5.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.17.17.17.5.1.m1.1"><semantics id="S4.T1.17.17.17.5.1.m1.1a"><mo id="S4.T1.17.17.17.5.1.m1.1.1" xref="S4.T1.17.17.17.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.17.17.17.5.1.m1.1.1.cmml" xref="S4.T1.17.17.17.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.5.1.m1.1d">±</annotation></semantics></math>3.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.17">14%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18">80.25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.6">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.18.18.18.6.m1.1"><semantics id="S4.T1.18.18.18.6.m1.1a"><mo id="S4.T1.18.18.18.6.m1.1.1" xref="S4.T1.18.18.18.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.6.m1.1b"><csymbol cd="latexml" id="S4.T1.18.18.18.6.m1.1.1.cmml" xref="S4.T1.18.18.18.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.6.m1.1d">±</annotation></semantics></math>3.63</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.19">32%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.24.24.24.7">BATprompt</th>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.8">90.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.19.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.19.19.19.1.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.19.19.19.1.1.m1.1"><semantics id="S4.T1.19.19.19.1.1.m1.1a"><mo id="S4.T1.19.19.19.1.1.m1.1.1" xref="S4.T1.19.19.19.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.19.19.19.1.1.m1.1.1.cmml" xref="S4.T1.19.19.19.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.1.1.m1.1d">±</annotation></semantics></math>1.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.24.9">78%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.10">83.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.20.20.20.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.20.2.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.20.20.20.2.1.m1.1"><semantics id="S4.T1.20.20.20.2.1.m1.1a"><mo id="S4.T1.20.20.20.2.1.m1.1.1" xref="S4.T1.20.20.20.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.20.20.20.2.1.m1.1.1.cmml" xref="S4.T1.20.20.20.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.2.1.m1.1d">±</annotation></semantics></math>1.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.24.11">16%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.12">69.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.21.21.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.21.21.21.3.m1.1"><semantics id="S4.T1.21.21.21.3.m1.1a"><mo id="S4.T1.21.21.21.3.m1.1.1" xref="S4.T1.21.21.21.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.3.m1.1b"><csymbol cd="latexml" id="S4.T1.21.21.21.3.m1.1.1.cmml" xref="S4.T1.21.21.21.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.3.m1.1d">±</annotation></semantics></math>4.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.24.13">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.14">83.92</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.22.22.4">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.22.22.22.4.m1.1"><semantics id="S4.T1.22.22.22.4.m1.1a"><mo id="S4.T1.22.22.22.4.m1.1.1" xref="S4.T1.22.22.22.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.22.4.m1.1b"><csymbol cd="latexml" id="S4.T1.22.22.22.4.m1.1.1.cmml" xref="S4.T1.22.22.22.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.22.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.22.4.m1.1d">±</annotation></semantics></math>5.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.24.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.24.24.24.15.1">65%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.16">81.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.23.23.23.5">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.23.23.23.5.m1.1"><semantics id="S4.T1.23.23.23.5.m1.1a"><mo id="S4.T1.23.23.23.5.m1.1.1" xref="S4.T1.23.23.23.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.5.m1.1b"><csymbol cd="latexml" id="S4.T1.23.23.23.5.m1.1.1.cmml" xref="S4.T1.23.23.23.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.5.m1.1d">±</annotation></semantics></math>4.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.24.17">12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.18">81.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.24.24.24.6.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.24.24.24.6.1.m1.1"><semantics id="S4.T1.24.24.24.6.1.m1.1a"><mo id="S4.T1.24.24.24.6.1.m1.1.1" xref="S4.T1.24.24.24.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.24.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.24.24.24.6.1.m1.1.1.cmml" xref="S4.T1.24.24.24.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.24.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.24.6.1.m1.1d">±</annotation></semantics></math>3.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.24.19">34%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.30.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.30.30.30.7">ZOPO prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.8.1">92.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.25.25.25.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.25.25.25.1.m1.1"><semantics id="S4.T1.25.25.25.1.m1.1a"><mo id="S4.T1.25.25.25.1.m1.1.1" xref="S4.T1.25.25.25.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.25.1.m1.1b"><csymbol cd="latexml" id="S4.T1.25.25.25.1.m1.1.1.cmml" xref="S4.T1.25.25.25.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.25.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.25.1.m1.1d">±</annotation></semantics></math>2.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.9.1">86%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.10.1">83.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.26.26.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.26.26.26.2.m1.1"><semantics id="S4.T1.26.26.26.2.m1.1a"><mo id="S4.T1.26.26.26.2.m1.1.1" xref="S4.T1.26.26.26.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.26.2.m1.1b"><csymbol cd="latexml" id="S4.T1.26.26.26.2.m1.1.1.cmml" xref="S4.T1.26.26.26.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.26.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.26.2.m1.1d">±</annotation></semantics></math>2.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.11.1">27%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.12">74.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.27.27.27.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.27.27.27.3.1"><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.27.27.27.3.1.m1.1"><semantics id="S4.T1.27.27.27.3.1.m1.1a"><mo id="S4.T1.27.27.27.3.1.m1.1.1" xref="S4.T1.27.27.27.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.27.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.27.27.27.3.1.m1.1.1.cmml" xref="S4.T1.27.27.27.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.27.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.27.3.1.m1.1d">±</annotation></semantics></math>3.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.13">0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.14">83.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.28.28.28.4">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.28.28.28.4.m1.1"><semantics id="S4.T1.28.28.28.4.m1.1a"><mo id="S4.T1.28.28.28.4.m1.1.1" xref="S4.T1.28.28.28.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.28.4.m1.1b"><csymbol cd="latexml" id="S4.T1.28.28.28.4.m1.1.1.cmml" xref="S4.T1.28.28.28.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.28.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.28.4.m1.1d">±</annotation></semantics></math>5.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.15">51%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.16">82.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.29.29.29.5">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.29.29.29.5.m1.1"><semantics id="S4.T1.29.29.29.5.m1.1a"><mo id="S4.T1.29.29.29.5.m1.1.1" xref="S4.T1.29.29.29.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.29.29.29.5.m1.1b"><csymbol cd="latexml" id="S4.T1.29.29.29.5.m1.1.1.cmml" xref="S4.T1.29.29.29.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.29.29.29.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.29.29.29.5.m1.1d">±</annotation></semantics></math>4.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.17"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.17.1">35%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.18"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.18.1">83.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.6">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.30.30.30.6.m1.1"><semantics id="S4.T1.30.30.30.6.m1.1a"><mo id="S4.T1.30.30.30.6.m1.1.1" xref="S4.T1.30.30.30.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.30.30.30.6.m1.1b"><csymbol cd="latexml" id="S4.T1.30.30.30.6.m1.1.1.cmml" xref="S4.T1.30.30.30.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.30.30.30.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.30.30.30.6.m1.1d">±</annotation></semantics></math>3.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.30.19"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.30.30.30.19.1">40%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.36.36.36.7"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.7.1">PAFT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.8"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.8.1">93.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.31.31.31.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.31.31.31.1.m1.1"><semantics id="S4.T1.31.31.31.1.m1.1a"><mo id="S4.T1.31.31.31.1.m1.1.1" xref="S4.T1.31.31.31.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.31.31.31.1.m1.1b"><csymbol cd="latexml" id="S4.T1.31.31.31.1.m1.1.1.cmml" xref="S4.T1.31.31.31.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.31.31.31.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.31.31.31.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.31.31.31.1.1">0.70</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.36.9"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.9.1">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.10"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.10.1">89.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.32.32.32.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.32.32.32.2.m1.1"><semantics id="S4.T1.32.32.32.2.m1.1a"><mo id="S4.T1.32.32.32.2.m1.1.1" xref="S4.T1.32.32.32.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.32.32.32.2.m1.1b"><csymbol cd="latexml" id="S4.T1.32.32.32.2.m1.1.1.cmml" xref="S4.T1.32.32.32.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.32.32.32.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.32.32.32.2.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.32.32.32.2.1">0.63</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.36.11"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.11.1">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.12"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.12.1">82.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.33.33.33.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.33.33.33.3.m1.1"><semantics id="S4.T1.33.33.33.3.m1.1a"><mo id="S4.T1.33.33.33.3.m1.1.1" xref="S4.T1.33.33.33.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.33.33.33.3.m1.1b"><csymbol cd="latexml" id="S4.T1.33.33.33.3.m1.1.1.cmml" xref="S4.T1.33.33.33.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.33.33.33.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.33.33.33.3.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.33.33.33.3.1">0.81</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.36.13"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.13.1">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.14"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.14.1">87.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.34.34.34.4">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.34.34.34.4.m1.1"><semantics id="S4.T1.34.34.34.4.m1.1a"><mo id="S4.T1.34.34.34.4.m1.1.1" xref="S4.T1.34.34.34.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.34.34.34.4.m1.1b"><csymbol cd="latexml" id="S4.T1.34.34.34.4.m1.1.1.cmml" xref="S4.T1.34.34.34.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.34.34.34.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.34.34.34.4.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.34.34.34.4.1">2.23</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.36.15"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.15.1">94%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.16"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.16.1">85.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.35.35.35.5">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.35.35.35.5.m1.1"><semantics id="S4.T1.35.35.35.5.m1.1a"><mo id="S4.T1.35.35.35.5.m1.1.1" xref="S4.T1.35.35.35.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.35.35.35.5.m1.1b"><csymbol cd="latexml" id="S4.T1.35.35.35.5.m1.1.1.cmml" xref="S4.T1.35.35.35.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.35.35.35.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.35.35.35.5.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.35.35.35.5.1">1.71</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.36.36.36.17"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.17.1">73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.18"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.18.1">87.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.6">
<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.36.36.36.6.m1.1"><semantics id="S4.T1.36.36.36.6.m1.1a"><mo id="S4.T1.36.36.36.6.m1.1.1" xref="S4.T1.36.36.36.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.36.36.36.6.m1.1b"><csymbol cd="latexml" id="S4.T1.36.36.36.6.m1.1.1.cmml" xref="S4.T1.36.36.36.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.36.36.36.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.36.36.36.6.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.6.1">1.57</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.36.36.36.19"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.36.19.1">94%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.39.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.1">PAFT Improvement</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.2">+1.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.3">-1.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.4">14%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.5">+5.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.6">-1.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.7">73%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.8">+3.93</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.9">-3.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.10">100%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.11">+2.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.12">-1.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.13">29%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.14">+2.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.15">-1.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.36.36.39.3.16">38%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.17">+4.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.18">-1.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.36.36.39.3.19">54%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of various prompt-based fine-tuning methods on four datasets (Hellaswag, Winogrande, PIQA, RACE).  The methods compared are a baseline (pre-trained model), fine-tuning with human-designed prompts, fine-tuning with the top-performing prompt from training, fine-tuning with a robust prompt from BATprompt, fine-tuning with an optimal prompt from ZOPO, and the proposed PAFT method.  The table shows average accuracy, standard deviation, and the percentage of prompts exceeding specific accuracy thresholds (dataset-specific).  PAFT outperforms other methods, showing both higher accuracy and lower variance.  The final rows highlight PAFT's improvement over the second-best method.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison of different fine-tuning methods on the test prompt sets across various reasoning and reading comprehension tasks using the LLaMA3-8B Meta (2024) with LoRA rank 8. Results are reported as average accuracy, standard deviation, and percentage of test prompts exceeding a specific score threshold (90% for Hellaswag, 80% for Winogrande, and 85% for other datasets). The Base Model represents the pre-trained model without fine-tuning, user-specified prompt Wei et al. (2024) refers to fine-tuning with LoRA using human-designed prompts, TopAccuracy prompt refers to fine-tuning with LoRA using the prompt exhibiting the highest accuracy on the training set, BATprompt refers to fine-tuning with LoRA using the most robust prompt generated by BATprompt Shi et al. (2024), and ZOPO prompt refers to fine-tuning with LoRA using the optimal prompt selected by ZOPO Hu et al. (2024) from the training prompt set. PAFT (our proposed method) demonstrates superior performance, achieving the highest accuracy and lowest variance across all tasks. The last rows show the comparison of PAFT with the second-best performing method (underlined). The Top column indicates the percentage of test prompts with a correct rate of 90% for Hellaswag, 80% for Winogrande, and 85% for other datasets.
> </details>





### In-depth insights


#### Prompt Robustness
Prompt robustness in large language models (LLMs) is crucial for real-world applications.  **The ability of an LLM to consistently perform well despite variations in prompt phrasing is paramount.**  Supervised fine-tuning (SFT), while effective for improving performance on specific tasks, often leads to overfitting to the training prompts, resulting in significant performance degradation when presented with slightly different prompts.  This fragility necessitates methods that enhance the generalizability of the models rather than overfitting to specific prompt patterns.  **Prompt-agnostic fine-tuning (PAFT) emerges as a promising technique to address this issue.** By dynamically sampling from a diverse set of prompts during training, PAFT encourages the model to learn underlying task principles, rather than relying on specific wordings.  The result is improved robustness and generalization, making LLMs more resilient and reliable in practical scenarios with varied user input.

#### PAFT Framework
The PAFT (Prompt-Agnostic Fine-Tuning) framework offers a novel approach to enhance the robustness of Large Language Models (LLMs) by **dynamically adjusting prompts during the fine-tuning process**.  Instead of relying on static, pre-defined prompts, PAFT employs a two-stage approach. First, it generates a diverse set of candidate prompts, leveraging the capabilities of multiple LLMs to ensure variety and quality. Second, during training, it randomly samples these prompts to create dynamic training inputs. This strategy **encourages the model to learn underlying task principles rather than overfitting to specific prompt formulations**, leading to significantly improved robustness and generalization.  **PAFT's dynamic nature is key to its success**, promoting adaptability to unseen prompts and mitigating the negative impact of minor prompt variations.  The framework also demonstrably improves model performance and inference speed while maintaining training efficiency, making it a practical solution for improving LLM robustness in real-world applications.

#### Dynamic Tuning
Dynamic tuning, as presented in the context of the research paper, is a crucial innovation in the field of prompt engineering for large language models (LLMs).  The core idea revolves around **dynamically adjusting prompts during the fine-tuning process**, rather than relying on static, fixed prompts. This approach is designed to enhance the robustness of LLMs by encouraging them to learn underlying task principles instead of overfitting to specific prompt formulations.  The method involves constructing a diverse set of meaningful synthetic prompts and then randomly sampling these prompts during training.  This random selection forces the model to generalize across various prompt variations, thereby improving its adaptability and reducing its dependence on specific wording.  A key advantage is improved **prompt robustness**, resulting in better generalization to unseen prompts and enhanced model performance. The approach also contributes to increased **training efficiency** and faster **inference speeds**.

#### Ablation Studies
Ablation studies systematically remove components of a model or system to understand their individual contributions. In this context, an ablation study on prompt-agnostic fine-tuning (PAFT) would likely investigate the impact of each PAFT component.  For instance, the study might evaluate the effect of removing the dynamic prompt sampling or the candidate prompt generation stage.  **Analyzing performance changes after each removal helps to quantify the importance of each module and validate the design choices**. This process is essential for demonstrating that the improvements in robustness and generalization aren't solely due to a single factor but rather a synergistic interaction between all parts.  **Results would showcase whether the core idea of PAFT remains effective even with simplified components**, clarifying the necessity of each element for optimal results. It allows researchers to **understand the relative importance of different elements in contributing to overall performance**. The key here is whether PAFT's benefits are truly holistic or driven by isolated aspects.

#### Future Work
Future research directions for prompt-agnostic fine-tuning (PAFT) should prioritize improving the prompt selection strategy.  **Moving beyond random sampling to more sophisticated methods like curriculum learning or importance sampling** could significantly enhance efficiency and robustness.  Exploring **incorporation of adversarial training** is another promising area, though careful consideration is needed to address the inherent instability of adversarial training techniques.  Further investigation into the **generalizability of PAFT across different model architectures and sizes** is crucial to establish its wider applicability. Finally, a **deeper exploration into the interplay between prompt diversity, model capacity, and task complexity** would reveal valuable insights into optimizing the PAFT framework and achieving greater performance gains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12859/x2.png)

> 🔼 The figure illustrates the core differences between traditional supervised fine-tuning (SFT) and the proposed Prompt-Agnostic Fine-Tuning (PAFT) method.  SFT uses a fixed dataset with predefined prompts, leading to overfitting and reduced robustness to variations in prompt wording.  In contrast, PAFT employs a dynamic prompt selection strategy during training.  It leverages a commercial LLM to generate a diverse set of candidate prompts, which are then randomly sampled during training. This approach significantly improves the model's robustness and generalizability to unseen prompts, making it more adaptable and scalable.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of PAFT: This figure compares Traditional Supervised Fine-tuning (SFT) and Prompt-Agnostic Fine-Tuning (PAFT), highlighting their main differences. SFT relies on a fixed dataset and predefined prompts, which limits its robustness and generalization to different prompts. In contrast, PAFT dynamically selects prompts during training, which improves robustness and generalization to a wide range of prompts. By leveraging a commercial LLM to generate candidate prompts, PAFT provides a more general and scalable solution.
> </details>



![](https://arxiv.org/html/2502.12859/x3.png)

> 🔼 This figure displays the results of preliminary experiments comparing the performance of a base language model and a model fine-tuned using supervised fine-tuning (SFT) across four datasets.  Over 450 diverse prompts were used for evaluation.  The results are visualized using probability distribution plots, showing the accuracy distribution for each model. While the SFT model generally performs better, the distributions reveal that even with SFT, the model's accuracy on certain prompts remains low, and the overall variability in accuracy (as shown by high standard deviation) is significant. This indicates substantial sensitivity to prompt design and a need for improved model optimization techniques.
> <details>
> <summary>read the caption</summary>
> Figure 3: This figure presents the results of preliminary experiments conducted on four datasets to evaluate the accuracy of the base model and the SFT model across over 450 diverse prompts. The probability distribution plots illustrate the distribution of accuracy for models. The results show that while the SFT model has an overall improvement in accuracy compared to the base model, the accuracy of some prompts is still relatively low, and the standard deviation of the SFT model is high, indicating that the accuracy varies greatly between different prompts, which highlights the impact of prompt design and the need for further optimization through model fine-tuning.
> </details>



![](https://arxiv.org/html/2502.12859/x4.png)

> 🔼 Figure 4 presents a visual comparison of three models' performance across multiple reasoning and reading comprehension tasks.  Unlike Figure 3 which used prompts seen during training, Figure 4 assesses performance on unseen test prompts. Probability distributions illustrate the accuracy range for each model. The key finding is that the PAFT model significantly outperforms both the base model and the SFT model, achieving higher average accuracy and lower variance (less variability) across all tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: The performance of the base model, the SFT model, and the PAFT model is compared on multiple reasoning and reading comprehension tasks. This is a visual comparison to Figure 3 to illustrate the effectiveness of PAFT, where the probability distribution plots show the distribution of accuracy of different models on the test prompts that were not used during PAFT training. The PAFT model shows superior performance compared to the base model and the SFT model, achieving higher accuracy and lower variance in all tasks.
> </details>



![](https://arxiv.org/html/2502.12859/x5.png)

> 🔼 Figure 5 presents a comparative analysis of five different prompt-based fine-tuning methods across multiple reasoning and reading comprehension tasks.  The models compared are: TopAccuracy (using the single best-performing prompt from training), User-specified (using human-designed prompts), BATprompt (a method generating robust prompts), ZOPO (an efficient prompt optimization technique), and PAFT (the proposed prompt-agnostic fine-tuning method).  The evaluation employs 50 unseen test prompts, ensuring a robust assessment of generalization. Results are visualized as probability distributions showing the accuracy of each model across these unseen prompts.  The figure highlights PAFT's superior performance, demonstrating higher average accuracy and significantly lower variance (indicating improved robustness and generalization to diverse prompts) compared to all other baselines across all tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: The performance of TopAccuracy, User-specified, BATprompt, ZOPO, and PAFT models is compared on multiple reasoning and reading comprehension tasks. Results are reported in terms of their correct distribution. The tests are conducted on a test set of 50 unseen prompts, different from the ones used in training. The PAFT model shows superior performance compared to other baselines, achieving higher accuracy and lower variance in all tasks.
> </details>



![](https://arxiv.org/html/2502.12859/x6.png)

> 🔼 This figure illustrates the relationship between the number of training prompts and the model's performance across multiple datasets. The x-axis uses a logarithmic scale to represent the number of training prompts used, while the y-axis displays both the average accuracy (left panel) and the standard deviation of accuracy (right panel) achieved on each dataset. The plot demonstrates that increasing the number of training prompts initially leads to a significant improvement in both the mean accuracy and a reduction in accuracy variance.  However, beyond a certain point, the gains diminish, indicating diminishing returns. This suggests that while a diverse set of prompts is beneficial, an excessively large number of prompts doesn't necessarily translate to substantial performance improvements.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scaling Law of Training Prompt Numbers: Mean and Standard Deviation of Accuracy Across Different Datasets. The x-axis represents the number of prompts on a logarithmic scale, while the y-axis shows the mean accuracy (left) and standard deviation of accuracy (right) for each dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.5.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.1.1">Inference time/h</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.2.1">Hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.3.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.4.1">Winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.6.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.5.1">RACE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.6.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.6.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.7.2.1">Base Model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.7.2.2.1">3.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.3">1.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.7.2.4.1">1.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.7.2.5.1">6.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.7.2.6.1">3.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.8.3.1">user-specified prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.2">6.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.3">0.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.4">3.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.5">8.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.6">4.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.9.4.1">TopAccuracy prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.2">5.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.3">1.13</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.4">2.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.5">7.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.6">4.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.10.5.1">BATprompt</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.2">4.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.3">1.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.4">3.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.5">7.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.6">4.32</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.11.6.1">ZOPO prompt</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6.2">5.12</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.11.6.3.1">0.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6.4">3.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6.5">8.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6.6">4.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.12.7.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.1.1">PAFT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.12.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.2.1">1.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.12.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.3.1">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.12.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.4.1">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.12.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.5.1">2.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.12.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.12.7.6.1">1.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.5.5.6">PAFT Improvement</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.1.1">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><times id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">×</annotation></semantics></math>3.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.2.2">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><times id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">×</annotation></semantics></math>2.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.3.3">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><times id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">×</annotation></semantics></math>3.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.4.4">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" xref="S4.T2.4.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><times id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">×</annotation></semantics></math>3.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.5">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" xref="S4.T2.5.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><times id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">×</annotation></semantics></math>3.25</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the inference time (in hours) required for different fine-tuning methods on various tasks. The baseline is a pre-trained model without any fine-tuning.  Other rows show inference time for models fine-tuned using LoRA with different prompt selection strategies:  user-specified prompts, prompts with the highest accuracy from the training set, the most robust prompt from BATprompt, the optimal prompt selected by ZOPO, and prompts selected dynamically by PAFT. The final row shows how many times faster PAFT is compared to each method.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of inference time (in hours) for different fine-tuning methods. The base model represents the pre-trained model without fine-tuning, while the other rows show the inference time of models fine-tuned with LoRA using different prompts. PAFT shows better inference efficiency than other methods. The last line shows the multiple of PAFT improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.48.42">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.8.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.2.2"># <math alttext="K" class="ltx_Math" display="inline" id="S5.T3.7.1.1.1.1.m1.1"><semantics id="S5.T3.7.1.1.1.1.m1.1a"><mi id="S5.T3.7.1.1.1.1.m1.1.1" xref="S5.T3.7.1.1.1.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.7.1.1.1.1.m1.1b"><ci id="S5.T3.7.1.1.1.1.m1.1.1.cmml" xref="S5.T3.7.1.1.1.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.1.1.1.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.1.1.1.1.m1.1d">italic_K</annotation></semantics></math> and <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.8.2.2.2.2.m2.1"><semantics id="S5.T3.8.2.2.2.2.m2.1a"><mi id="S5.T3.8.2.2.2.2.m2.1.1" xref="S5.T3.8.2.2.2.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.8.2.2.2.2.m2.1b"><ci id="S5.T3.8.2.2.2.2.m2.1.1.cmml" xref="S5.T3.8.2.2.2.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.2.2.2.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.2.2.2.2.m2.1d">italic_T</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S5.T3.8.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.3.1">Hellaswag</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.4.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.5.1">Winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.6.1">RACE-mid</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.7.1">RACE-high</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.2.2.8"><span class="ltx_text ltx_font_bold" id="S5.T3.8.2.2.8.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.16.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.10.4.4.2">
<math alttext="K" class="ltx_Math" display="inline" id="S5.T3.9.3.3.1.m1.1"><semantics id="S5.T3.9.3.3.1.m1.1a"><mi id="S5.T3.9.3.3.1.m1.1.1" xref="S5.T3.9.3.3.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.9.3.3.1.m1.1b"><ci id="S5.T3.9.3.3.1.m1.1.1.cmml" xref="S5.T3.9.3.3.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.3.3.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.3.3.1.m1.1d">italic_K</annotation></semantics></math> = 1, <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.10.4.4.2.m2.1"><semantics id="S5.T3.10.4.4.2.m2.1a"><mi id="S5.T3.10.4.4.2.m2.1.1" xref="S5.T3.10.4.4.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.10.4.4.2.m2.1b"><ci id="S5.T3.10.4.4.2.m2.1.1.cmml" xref="S5.T3.10.4.4.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.4.4.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.4.4.2.m2.1d">italic_T</annotation></semantics></math> = 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T3.11.5.5.3">93.58 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.11.5.5.3.m1.1"><semantics id="S5.T3.11.5.5.3.m1.1a"><mo id="S5.T3.11.5.5.3.m1.1.1" xref="S5.T3.11.5.5.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.11.5.5.3.m1.1b"><csymbol cd="latexml" id="S5.T3.11.5.5.3.m1.1.1.cmml" xref="S5.T3.11.5.5.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.5.5.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.5.5.3.m1.1d">±</annotation></semantics></math> 1.47)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.6.6.4">
<span class="ltx_text ltx_font_bold" id="S5.T3.12.6.6.4.1">89.33</span>(<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.12.6.6.4.m1.1"><semantics id="S5.T3.12.6.6.4.m1.1a"><mo id="S5.T3.12.6.6.4.m1.1.1" xref="S5.T3.12.6.6.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.12.6.6.4.m1.1b"><csymbol cd="latexml" id="S5.T3.12.6.6.4.m1.1.1.cmml" xref="S5.T3.12.6.6.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.6.6.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.6.6.4.m1.1d">±</annotation></semantics></math> 0.63)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.13.7.7.5">81.78 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.13.7.7.5.m1.1"><semantics id="S5.T3.13.7.7.5.m1.1a"><mo id="S5.T3.13.7.7.5.m1.1.1" xref="S5.T3.13.7.7.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.13.7.7.5.m1.1b"><csymbol cd="latexml" id="S5.T3.13.7.7.5.m1.1.1.cmml" xref="S5.T3.13.7.7.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.7.7.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.7.7.5.m1.1d">±</annotation></semantics></math> 1.11)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.14.8.8.6">86.30 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.14.8.8.6.m1.1"><semantics id="S5.T3.14.8.8.6.m1.1a"><mo id="S5.T3.14.8.8.6.m1.1.1" xref="S5.T3.14.8.8.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.14.8.8.6.m1.1b"><csymbol cd="latexml" id="S5.T3.14.8.8.6.m1.1.1.cmml" xref="S5.T3.14.8.8.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.14.8.8.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.14.8.8.6.m1.1d">±</annotation></semantics></math> 2.73)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.15.9.9.7">84.35 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.15.9.9.7.m1.1"><semantics id="S5.T3.15.9.9.7.m1.1a"><mo id="S5.T3.15.9.9.7.m1.1.1" xref="S5.T3.15.9.9.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.15.9.9.7.m1.1b"><csymbol cd="latexml" id="S5.T3.15.9.9.7.m1.1.1.cmml" xref="S5.T3.15.9.9.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.15.9.9.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.15.9.9.7.m1.1d">±</annotation></semantics></math> 2.24)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.16.10.10.8">87.07 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.16.10.10.8.m1.1"><semantics id="S5.T3.16.10.10.8.m1.1a"><mo id="S5.T3.16.10.10.8.m1.1.1" xref="S5.T3.16.10.10.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.16.10.10.8.m1.1b"><csymbol cd="latexml" id="S5.T3.16.10.10.8.m1.1.1.cmml" xref="S5.T3.16.10.10.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.16.10.10.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.16.10.10.8.m1.1d">±</annotation></semantics></math> 1.64)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.18.12.12.2">
<math alttext="K" class="ltx_Math" display="inline" id="S5.T3.17.11.11.1.m1.1"><semantics id="S5.T3.17.11.11.1.m1.1a"><mi id="S5.T3.17.11.11.1.m1.1.1" xref="S5.T3.17.11.11.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.17.11.11.1.m1.1b"><ci id="S5.T3.17.11.11.1.m1.1.1.cmml" xref="S5.T3.17.11.11.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.17.11.11.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.17.11.11.1.m1.1d">italic_K</annotation></semantics></math> = 2, <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.18.12.12.2.m2.1"><semantics id="S5.T3.18.12.12.2.m2.1a"><mi id="S5.T3.18.12.12.2.m2.1.1" xref="S5.T3.18.12.12.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.18.12.12.2.m2.1b"><ci id="S5.T3.18.12.12.2.m2.1.1.cmml" xref="S5.T3.18.12.12.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.18.12.12.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.18.12.12.2.m2.1d">italic_T</annotation></semantics></math> = 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.19.13.13.3">93.59 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.19.13.13.3.m1.1"><semantics id="S5.T3.19.13.13.3.m1.1a"><mo id="S5.T3.19.13.13.3.m1.1.1" xref="S5.T3.19.13.13.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.19.13.13.3.m1.1b"><csymbol cd="latexml" id="S5.T3.19.13.13.3.m1.1.1.cmml" xref="S5.T3.19.13.13.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.19.13.13.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.19.13.13.3.m1.1d">±</annotation></semantics></math> 1.24)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.20.14.14.4">88.37 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.20.14.14.4.m1.1"><semantics id="S5.T3.20.14.14.4.m1.1a"><mo id="S5.T3.20.14.14.4.m1.1.1" xref="S5.T3.20.14.14.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.20.14.14.4.m1.1b"><csymbol cd="latexml" id="S5.T3.20.14.14.4.m1.1.1.cmml" xref="S5.T3.20.14.14.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.20.14.14.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.20.14.14.4.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.20.14.14.4.1">0.49</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.21.15.15.5">
<span class="ltx_text ltx_font_bold" id="S5.T3.21.15.15.5.1">82.09</span> (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.21.15.15.5.m1.1"><semantics id="S5.T3.21.15.15.5.m1.1a"><mo id="S5.T3.21.15.15.5.m1.1.1" xref="S5.T3.21.15.15.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.21.15.15.5.m1.1b"><csymbol cd="latexml" id="S5.T3.21.15.15.5.m1.1.1.cmml" xref="S5.T3.21.15.15.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.21.15.15.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.21.15.15.5.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.21.15.15.5.2">0.81</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.16.16.6">86.30 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.22.16.16.6.m1.1"><semantics id="S5.T3.22.16.16.6.m1.1a"><mo id="S5.T3.22.16.16.6.m1.1.1" xref="S5.T3.22.16.16.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.22.16.16.6.m1.1b"><csymbol cd="latexml" id="S5.T3.22.16.16.6.m1.1.1.cmml" xref="S5.T3.22.16.16.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.22.16.16.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.22.16.16.6.m1.1d">±</annotation></semantics></math> 2.64)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.23.17.17.7">84.02 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.23.17.17.7.m1.1"><semantics id="S5.T3.23.17.17.7.m1.1a"><mo id="S5.T3.23.17.17.7.m1.1.1" xref="S5.T3.23.17.17.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.23.17.17.7.m1.1b"><csymbol cd="latexml" id="S5.T3.23.17.17.7.m1.1.1.cmml" xref="S5.T3.23.17.17.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.23.17.17.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.23.17.17.7.m1.1d">±</annotation></semantics></math> 2.24)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.18.18.8">86.87 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.24.18.18.8.m1.1"><semantics id="S5.T3.24.18.18.8.m1.1a"><mo id="S5.T3.24.18.18.8.m1.1.1" xref="S5.T3.24.18.18.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.24.18.18.8.m1.1b"><csymbol cd="latexml" id="S5.T3.24.18.18.8.m1.1.1.cmml" xref="S5.T3.24.18.18.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.24.18.18.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.24.18.18.8.m1.1d">±</annotation></semantics></math> 1.48)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.32.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.26.20.20.2">
<math alttext="K" class="ltx_Math" display="inline" id="S5.T3.25.19.19.1.m1.1"><semantics id="S5.T3.25.19.19.1.m1.1a"><mi id="S5.T3.25.19.19.1.m1.1.1" xref="S5.T3.25.19.19.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.25.19.19.1.m1.1b"><ci id="S5.T3.25.19.19.1.m1.1.1.cmml" xref="S5.T3.25.19.19.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.25.19.19.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.25.19.19.1.m1.1d">italic_K</annotation></semantics></math> = 4, <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.26.20.20.2.m2.1"><semantics id="S5.T3.26.20.20.2.m2.1a"><mi id="S5.T3.26.20.20.2.m2.1.1" xref="S5.T3.26.20.20.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.26.20.20.2.m2.1b"><ci id="S5.T3.26.20.20.2.m2.1.1.cmml" xref="S5.T3.26.20.20.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.26.20.20.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.26.20.20.2.m2.1d">italic_T</annotation></semantics></math> = 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.27.21.21.3">
<span class="ltx_text ltx_font_bold" id="S5.T3.27.21.21.3.1">93.83</span>(<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.27.21.21.3.m1.1"><semantics id="S5.T3.27.21.21.3.m1.1a"><mo id="S5.T3.27.21.21.3.m1.1.1" xref="S5.T3.27.21.21.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.27.21.21.3.m1.1b"><csymbol cd="latexml" id="S5.T3.27.21.21.3.m1.1.1.cmml" xref="S5.T3.27.21.21.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.27.21.21.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.27.21.21.3.m1.1d">±</annotation></semantics></math> 1.10)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.28.22.22.4">89.07 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.28.22.22.4.m1.1"><semantics id="S5.T3.28.22.22.4.m1.1a"><mo id="S5.T3.28.22.22.4.m1.1.1" xref="S5.T3.28.22.22.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.28.22.22.4.m1.1b"><csymbol cd="latexml" id="S5.T3.28.22.22.4.m1.1.1.cmml" xref="S5.T3.28.22.22.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.28.22.22.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.28.22.22.4.m1.1d">±</annotation></semantics></math> 0.53)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.29.23.23.5">81.96 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.29.23.23.5.m1.1"><semantics id="S5.T3.29.23.23.5.m1.1a"><mo id="S5.T3.29.23.23.5.m1.1.1" xref="S5.T3.29.23.23.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.29.23.23.5.m1.1b"><csymbol cd="latexml" id="S5.T3.29.23.23.5.m1.1.1.cmml" xref="S5.T3.29.23.23.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.29.23.23.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.29.23.23.5.m1.1d">±</annotation></semantics></math> 1.15)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.24.24.6">
<span class="ltx_text ltx_font_bold" id="S5.T3.30.24.24.6.1">87.26</span> (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.30.24.24.6.m1.1"><semantics id="S5.T3.30.24.24.6.m1.1a"><mo id="S5.T3.30.24.24.6.m1.1.1" xref="S5.T3.30.24.24.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.30.24.24.6.m1.1b"><csymbol cd="latexml" id="S5.T3.30.24.24.6.m1.1.1.cmml" xref="S5.T3.30.24.24.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.30.24.24.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.30.24.24.6.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.30.24.24.6.2">2.23</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.31.25.25.7">
<span class="ltx_text ltx_font_bold" id="S5.T3.31.25.25.7.1">85.17</span> (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.31.25.25.7.m1.1"><semantics id="S5.T3.31.25.25.7.m1.1a"><mo id="S5.T3.31.25.25.7.m1.1.1" xref="S5.T3.31.25.25.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.31.25.25.7.m1.1b"><csymbol cd="latexml" id="S5.T3.31.25.25.7.m1.1.1.cmml" xref="S5.T3.31.25.25.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.31.25.25.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.31.25.25.7.m1.1d">±</annotation></semantics></math> 1.71)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.32.26.26.8">
<span class="ltx_text ltx_font_bold" id="S5.T3.32.26.26.8.1">87.46</span> (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.32.26.26.8.m1.1"><semantics id="S5.T3.32.26.26.8.m1.1a"><mo id="S5.T3.32.26.26.8.m1.1.1" xref="S5.T3.32.26.26.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.32.26.26.8.m1.1b"><csymbol cd="latexml" id="S5.T3.32.26.26.8.m1.1.1.cmml" xref="S5.T3.32.26.26.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.32.26.26.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.32.26.26.8.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.32.26.26.8.2">1.34</span>)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.40.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.34.28.28.2">
<math alttext="K" class="ltx_Math" display="inline" id="S5.T3.33.27.27.1.m1.1"><semantics id="S5.T3.33.27.27.1.m1.1a"><mi id="S5.T3.33.27.27.1.m1.1.1" xref="S5.T3.33.27.27.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.33.27.27.1.m1.1b"><ci id="S5.T3.33.27.27.1.m1.1.1.cmml" xref="S5.T3.33.27.27.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.33.27.27.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.33.27.27.1.m1.1d">italic_K</annotation></semantics></math> = 8, <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.34.28.28.2.m2.1"><semantics id="S5.T3.34.28.28.2.m2.1a"><mi id="S5.T3.34.28.28.2.m2.1.1" xref="S5.T3.34.28.28.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.34.28.28.2.m2.1b"><ci id="S5.T3.34.28.28.2.m2.1.1.cmml" xref="S5.T3.34.28.28.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.34.28.28.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.34.28.28.2.m2.1d">italic_T</annotation></semantics></math> = 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T3.35.29.29.3">
<span class="ltx_text ltx_font_bold" id="S5.T3.35.29.29.3.1">93.83</span> (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.35.29.29.3.m1.1"><semantics id="S5.T3.35.29.29.3.m1.1a"><mo id="S5.T3.35.29.29.3.m1.1.1" xref="S5.T3.35.29.29.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.35.29.29.3.m1.1b"><csymbol cd="latexml" id="S5.T3.35.29.29.3.m1.1.1.cmml" xref="S5.T3.35.29.29.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.35.29.29.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.35.29.29.3.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.35.29.29.3.2">0.70</span>)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.36.30.30.4">88.99 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.36.30.30.4.m1.1"><semantics id="S5.T3.36.30.30.4.m1.1a"><mo id="S5.T3.36.30.30.4.m1.1.1" xref="S5.T3.36.30.30.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.36.30.30.4.m1.1b"><csymbol cd="latexml" id="S5.T3.36.30.30.4.m1.1.1.cmml" xref="S5.T3.36.30.30.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.36.30.30.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.36.30.30.4.m1.1d">±</annotation></semantics></math> 0.59)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.37.31.31.5">82.69 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.37.31.31.5.m1.1"><semantics id="S5.T3.37.31.31.5.m1.1a"><mo id="S5.T3.37.31.31.5.m1.1.1" xref="S5.T3.37.31.31.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.37.31.31.5.m1.1b"><csymbol cd="latexml" id="S5.T3.37.31.31.5.m1.1.1.cmml" xref="S5.T3.37.31.31.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.37.31.31.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.37.31.31.5.m1.1d">±</annotation></semantics></math> 0.97)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.38.32.32.6">86.25 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.38.32.32.6.m1.1"><semantics id="S5.T3.38.32.32.6.m1.1a"><mo id="S5.T3.38.32.32.6.m1.1.1" xref="S5.T3.38.32.32.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.38.32.32.6.m1.1b"><csymbol cd="latexml" id="S5.T3.38.32.32.6.m1.1.1.cmml" xref="S5.T3.38.32.32.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.38.32.32.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.38.32.32.6.m1.1d">±</annotation></semantics></math> 2.75)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.39.33.33.7">84.36 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.39.33.33.7.m1.1"><semantics id="S5.T3.39.33.33.7.m1.1a"><mo id="S5.T3.39.33.33.7.m1.1.1" xref="S5.T3.39.33.33.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.39.33.33.7.m1.1b"><csymbol cd="latexml" id="S5.T3.39.33.33.7.m1.1.1.cmml" xref="S5.T3.39.33.33.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.39.33.33.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.39.33.33.7.m1.1d">±</annotation></semantics></math> 2.06)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.40.34.34.8">87.22 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.40.34.34.8.m1.1"><semantics id="S5.T3.40.34.34.8.m1.1a"><mo id="S5.T3.40.34.34.8.m1.1.1" xref="S5.T3.40.34.34.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.40.34.34.8.m1.1b"><csymbol cd="latexml" id="S5.T3.40.34.34.8.m1.1.1.cmml" xref="S5.T3.40.34.34.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.40.34.34.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.40.34.34.8.m1.1d">±</annotation></semantics></math> 1.41)</td>
</tr>
<tr class="ltx_tr" id="S5.T3.48.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.42.36.36.2">
<math alttext="K" class="ltx_Math" display="inline" id="S5.T3.41.35.35.1.m1.1"><semantics id="S5.T3.41.35.35.1.m1.1a"><mi id="S5.T3.41.35.35.1.m1.1.1" xref="S5.T3.41.35.35.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S5.T3.41.35.35.1.m1.1b"><ci id="S5.T3.41.35.35.1.m1.1.1.cmml" xref="S5.T3.41.35.35.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.41.35.35.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S5.T3.41.35.35.1.m1.1d">italic_K</annotation></semantics></math> = 1, <math alttext="T" class="ltx_Math" display="inline" id="S5.T3.42.36.36.2.m2.1"><semantics id="S5.T3.42.36.36.2.m2.1a"><mi id="S5.T3.42.36.36.2.m2.1.1" xref="S5.T3.42.36.36.2.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.42.36.36.2.m2.1b"><ci id="S5.T3.42.36.36.2.m2.1.1.cmml" xref="S5.T3.42.36.36.2.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.42.36.36.2.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.42.36.36.2.m2.1d">italic_T</annotation></semantics></math> = 6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T3.43.37.37.3">93.37 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.43.37.37.3.m1.1"><semantics id="S5.T3.43.37.37.3.m1.1a"><mo id="S5.T3.43.37.37.3.m1.1.1" xref="S5.T3.43.37.37.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.43.37.37.3.m1.1b"><csymbol cd="latexml" id="S5.T3.43.37.37.3.m1.1.1.cmml" xref="S5.T3.43.37.37.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.43.37.37.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.43.37.37.3.m1.1d">±</annotation></semantics></math> 1.47)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.44.38.38.4">88.32 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.44.38.38.4.m1.1"><semantics id="S5.T3.44.38.38.4.m1.1a"><mo id="S5.T3.44.38.38.4.m1.1.1" xref="S5.T3.44.38.38.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.44.38.38.4.m1.1b"><csymbol cd="latexml" id="S5.T3.44.38.38.4.m1.1.1.cmml" xref="S5.T3.44.38.38.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.44.38.38.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.44.38.38.4.m1.1d">±</annotation></semantics></math> 0.68)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.45.39.39.5">81.05(<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.45.39.39.5.m1.1"><semantics id="S5.T3.45.39.39.5.m1.1a"><mo id="S5.T3.45.39.39.5.m1.1.1" xref="S5.T3.45.39.39.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.45.39.39.5.m1.1b"><csymbol cd="latexml" id="S5.T3.45.39.39.5.m1.1.1.cmml" xref="S5.T3.45.39.39.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.45.39.39.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.45.39.39.5.m1.1d">±</annotation></semantics></math> 3.44)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.46.40.40.6">84.40 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.46.40.40.6.m1.1"><semantics id="S5.T3.46.40.40.6.m1.1a"><mo id="S5.T3.46.40.40.6.m1.1.1" xref="S5.T3.46.40.40.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.46.40.40.6.m1.1b"><csymbol cd="latexml" id="S5.T3.46.40.40.6.m1.1.1.cmml" xref="S5.T3.46.40.40.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.46.40.40.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.46.40.40.6.m1.1d">±</annotation></semantics></math> 2.30)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.47.41.41.7">83.34(<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.47.41.41.7.m1.1"><semantics id="S5.T3.47.41.41.7.m1.1a"><mo id="S5.T3.47.41.41.7.m1.1.1" xref="S5.T3.47.41.41.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.47.41.41.7.m1.1b"><csymbol cd="latexml" id="S5.T3.47.41.41.7.m1.1.1.cmml" xref="S5.T3.47.41.41.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.47.41.41.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.47.41.41.7.m1.1d">±</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S5.T3.47.41.41.7.1">1.66</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.48.42.42.8">86.10 (<math alttext="\pm" class="ltx_Math" display="inline" id="S5.T3.48.42.42.8.m1.1"><semantics id="S5.T3.48.42.42.8.m1.1a"><mo id="S5.T3.48.42.42.8.m1.1.1" xref="S5.T3.48.42.42.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T3.48.42.42.8.m1.1b"><csymbol cd="latexml" id="S5.T3.48.42.42.8.m1.1.1.cmml" xref="S5.T3.48.42.42.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.48.42.42.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T3.48.42.42.8.m1.1d">±</annotation></semantics></math> 1.91)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of PAFT's performance under various hyperparameter settings.  It investigates the impact of changing the number of iterations per prompt (K) and the number of training epochs (T) on the model's accuracy across five different reasoning and reading comprehension datasets: Hellaswag, PIQA, Winogrande, RACE-mid, and RACE-high. The mean accuracy and standard deviation are reported for each dataset and hyperparameter combination, highlighting the optimal settings that yield the best results for each task.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison of PAFT with varying hyperparameters K𝐾Kitalic_K (number of iterations per prompt) and T𝑇Titalic_T (number of epochs) across multiple reasoning and reading comprehension tasks. Results are reported as mean accuracy (±plus-or-minus\pm± standard deviation) on the Hellaswag, PIQA, Winogrande, RACE-mid, and RACE-high datasets. The best results for each metric are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1">Number of samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.2.1">train dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.3.1">validation dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.4.1">test dataset</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.1">Hellaswag</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.2">39900</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.3">10000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.4">10000</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.3.2.1">PIQA</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.2">16000</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.3">2000</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.4">3000</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.4.3.1">Winogrande</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.2">40398</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.3">1267</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.4">1767</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.5.4.1">RACE</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.5.4.2">87866</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.5.4.3">4887</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.5.4.4">4934</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the dataset sizes used in the experiments. For each dataset (Hellaswag, PIQA, Winogrande, RACE), it shows the number of samples used for training, validation, and testing.
> <details>
> <summary>read the caption</summary>
> Table 4: Number of samples in the train, validation, and test datasets for various dateset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">LoRA Target</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.3.1">Max Length</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.4.1">SFT Samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.5.1">LR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.6.1">Training Prompts</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.7.1">Epoch</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.2.1.1">LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.2">q &amp; v Proj</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.3">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.4">20000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.5">0.0001</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.6">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.1.7">3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.1">PAFT</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.2">q &amp; v Proj</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.3">1024</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.4">20000</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.5">0.0001</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.6">400</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.3.2.7">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the hyperparameters used in the experiments comparing different fine-tuning methods.  It shows the settings for the LoRA target module, maximum sequence length, supervised fine-tuning sample size, learning rate, number of training prompts, and training epochs. Note that all other parameters were kept constant across the experiments.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed experimental parameters. This table lists the specific parameters we used in the experiments for various methods. These parameters include the target module of LoRA (Lora Target), the maximum sequence length (Max Length), the number of samples for supervised fine-tuning (SFT Samples), the learning rate (LR), the number of training prompts (Training Prompts). Epoch(Epoch) represents the epoch of training. All other parameters not listed here remain consistent across all experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T6.9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.1.1">Training time/h</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.2.1">Hellaswag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.3.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.4.1">Winogrande</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.5.1">RACE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.9.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.1.1.6.1">Average</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.9.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.9.1.2.1.1">LoRA + user-specified prompt</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.1.2.1.2">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.1.2.1.3">2.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.1.2.1.4">3.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.1.2.1.5">3.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.9.1.2.1.6">3.15</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.9.1.3.2.1">LoRA + TopAccuracy prompt</th>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.3.2.2">3.00</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.3.2.3">2.29</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.3.2.4">2.98</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.3.2.5">3.93</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.3.2.6">3.05</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.9.1.4.3.1">LoRA + BATprompt</th>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.4.3.2">3.02</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.4.3.3"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.4.3.3.1">2.23</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.4.3.4">3</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.4.3.5">3.93</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.4.3.6">3.05</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.9.1.5.4.1">LoRA + ZOPO prompt</th>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.5.4.2"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.5.4.2.1">2.97</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.5.4.3">2.3</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.5.4.4"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.5.4.4.1">2.97</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.5.4.5">3.83</td>
<td class="ltx_td ltx_align_center" id="A2.T6.9.1.5.4.6"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.5.4.6.1">3.02</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.6.5.1.1">PAFT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.2">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.3">2.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.4">3.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.5"><span class="ltx_text ltx_font_bold" id="A2.T6.9.1.6.5.5.1">3.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.9.1.6.5.6">3.12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of training times for different fine-tuning methods on various reasoning and reading comprehension tasks using the LLaMA3-8B model with LoRA rank 8.  The methods compared include: a baseline using only LoRA, LoRA with a user-specified prompt (as per Wei et al., 2024), LoRA with the prompt yielding the highest accuracy during training (TopAccuracy), LoRA with the most robust prompt (BATprompt from Shi et al., 2024), and LoRA with the optimal prompt chosen by ZOPO (Hu et al., 2024).  Training times are reported in hours and were measured using an NVIDIA RTX 4090 GPU. The results show the training efficiency of each method across different datasets.  This provides context for evaluating the efficiency of PAFT (Prompt-Agnostic Fine-Tuning) in terms of training time.
> <details>
> <summary>read the caption</summary>
> Table 6: Training Time Comparison of Different Fine-tuning Methods on the Test Prompt Sets Across Various Reasoning and Reading Comprehension Tasks Using the LLaMA3-8BMeta (2024) Model with LoRA Rank 8. Experiments were conducted on an NVIDIA RTX 4090 GPU. Results are reported as training time in hours. LoRA + TopAccuracy prompt  prompt refers to the prompt with the highest accuracy in the training set, LoRA + user-specified prompt Wei et al. (2024) refers to fine-tuning with human-designed prompts, LoRA + BATprompt Shi et al. (2024) uses the most robust prompt generated by BATprompt, and LoRA + ZOPO prompt Hu et al. (2024) employs the optimal prompt selected by ZOPO from the training prompt set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1">Tokens</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.2.1">Hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.3.1">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.4.1">Winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.5.1">RACE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.6.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.1">Total Tokens</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.2">11.7k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.3">12.1k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.4">10.9k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.5">12.3k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.6">11.75k</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the token usage for generating candidate prompts in the PAFT model.  It shows the number of tokens required to generate approximately 400 candidate prompts for each of the four tasks (Hellaswag, PIQA, Winogrande, RACE).  The average token usage across all tasks is 11,750 tokens. Importantly, the table highlights that the number of generated prompts is a variable and can be adjusted based on the scaling law (presented in Figure 5 of the paper) to manage costs associated with using external LLMs for prompt generation.
> <details>
> <summary>read the caption</summary>
> Table 7: Token Usage for Candidate Prompt Generation. This table shows the number of tokens used to generate approximately 400 candidate prompts for each task. The average token usage is 11.75k. The number of generated prompts can be adjusted based on the scaling law observed in Figure 5 to control costs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12859/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12859/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}