---
title: "Identifying Sensitive Weights via Post-quantization Integral"
summary: "PQI: Accurately identify sensitive weights in post-quantization to enhance LLM compression & performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01901 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuezhou Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01901" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01901" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01901/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Serving LLMs is difficult due to their large size. Post-training quantization (PTQ) helps by compressing LLMs but relies on sensitivity metrics to identify important weights. Existing metrics are inaccurate due to the LLM’s complicated loss landscape. They underestimate the impact of quantization, as the quantized weights fall outside the convergence radius. Moreover, the sensitivity might change after quantization.



To solve these issues, this work introduces Post-quantization Integral (**PQI**), a new sensitivity metric that accurately estimates the influence of each quantized weight. PQI considers both original and quantized weights. The research also proposes ReQuant, a framework with two components: outlier selection and step-wise significant weights detach. Experiments show ReQuant improves PTQ, enhancing perplexity gain on Llama 3.2 1B with QTIP.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Post-Quantization Integral (PQI) is an accurate metric for estimating the sensitivity of weights after quantization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The ReQuant pipeline, leveraging PQI, significantly enhances the quality of quantized models through Dense-and-Sparse detach. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ReQuant achieves substantial perplexity reduction and performance gains on LLMs when combined with existing quantization methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **introduces a novel approach to enhancing post-training quantization (PTQ) methods for LLMs.** It can significantly boost the performance of existing PTQ techniques, making LLMs more accessible for deployment on resource-constrained devices and opening new research directions for quantization techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01901/x1.png)

> 🔼 The ReQuant pipeline consists of six steps. First, the weights are pre-quantized using a traditional method and its sensitivity metric. Second, the optimal outlier ratio for each layer is determined using Algorithm 1. Third, outliers are selected based on this ratio. Fourth, the weights are re-quantized after removing the outliers. Fifth, significant weights are recovered using Algorithm 2. Finally, the low-precision dense weights, sparse outliers and significant weights are summed to form the final quantized weight.
> <details>
> <summary>read the caption</summary>
> Figure 1: ReQuant pipeline.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.3.1">
<tr class="ltx_tr" id="S4.T1.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.1.1.2">
<span class="ltx_text" id="S4.T1.3.1.1.2.1"></span><span class="ltx_text" id="S4.T1.3.1.1.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.3.1.1.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.3.1.1.2.3.1">
<span class="ltx_tr" id="S4.T1.3.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.2.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.2.3.1.1.1.1">Quan-</span></span></span>
<span class="ltx_tr" id="S4.T1.3.1.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.2.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.2.3.1.2.1.1">tized</span></span></span>
<span class="ltx_tr" id="S4.T1.3.1.1.2.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.2.3.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.2.3.1.3.1.1">Layer</span></span></span>
</span></span><span class="ltx_text" id="S4.T1.3.1.1.2.4"></span><span class="ltx_text" id="S4.T1.3.1.1.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.3.1" style="font-size:90%;">First-order</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.4.1" style="font-size:90%;">Second-order</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.1.1" style="font-size:90%;">Actual</span><span class="ltx_text" id="S4.T1.3.1.1.1.2" style="font-size:90%;"> </span><math alttext="\Delta F" class="ltx_Math" display="inline" id="S4.T1.3.1.1.1.m1.1"><semantics id="S4.T1.3.1.1.1.m1.1a"><mrow id="S4.T1.3.1.1.1.m1.1.1" xref="S4.T1.3.1.1.1.m1.1.1.cmml"><mi id="S4.T1.3.1.1.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S4.T1.3.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S4.T1.3.1.1.1.m1.1.1.1" xref="S4.T1.3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.3.1.1.1.m1.1.1.3" mathsize="90%" xref="S4.T1.3.1.1.1.m1.1.1.3.cmml">F</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.1.m1.1b"><apply id="S4.T1.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1"><times id="S4.T1.3.1.1.1.m1.1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1.1"></times><ci id="S4.T1.3.1.1.1.m1.1.1.2.cmml" xref="S4.T1.3.1.1.1.m1.1.1.2">Δ</ci><ci id="S4.T1.3.1.1.1.m1.1.1.3.cmml" xref="S4.T1.3.1.1.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.1.m1.1c">\Delta F</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.1.m1.1d">roman_Δ italic_F</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.2.1"><span class="ltx_text" id="S4.T1.3.1.2.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.2"><span class="ltx_text" id="S4.T1.3.1.2.2.1" style="font-size:90%;">7.10E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.3"><span class="ltx_text" id="S4.T1.3.1.2.3.1" style="font-size:90%;">-5.98E-06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.4"><span class="ltx_text" id="S4.T1.3.1.2.4.1" style="font-size:90%;">6.88E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.3.1"><span class="ltx_text" id="S4.T1.3.1.3.1.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.2"><span class="ltx_text" id="S4.T1.3.1.3.2.1" style="font-size:90%;">-6.58E-05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.3"><span class="ltx_text" id="S4.T1.3.1.3.3.1" style="font-size:90%;">-4.54E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.4"><span class="ltx_text" id="S4.T1.3.1.3.4.1" style="font-size:90%;">4.45E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.4.1"><span class="ltx_text" id="S4.T1.3.1.4.1.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.2"><span class="ltx_text" id="S4.T1.3.1.4.2.1" style="font-size:90%;">-3.21E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.3"><span class="ltx_text" id="S4.T1.3.1.4.3.1" style="font-size:90%;">-3.66E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.4"><span class="ltx_text" id="S4.T1.3.1.4.4.1" style="font-size:90%;">3.67E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.5.1"><span class="ltx_text" id="S4.T1.3.1.5.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.2"><span class="ltx_text" id="S4.T1.3.1.5.2.1" style="font-size:90%;">-5.04E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.3"><span class="ltx_text" id="S4.T1.3.1.5.3.1" style="font-size:90%;">-3.68E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.4"><span class="ltx_text" id="S4.T1.3.1.5.4.1" style="font-size:90%;">3.82E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.6.1"><span class="ltx_text" id="S4.T1.3.1.6.1.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.2"><span class="ltx_text" id="S4.T1.3.1.6.2.1" style="font-size:90%;">-7.00E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.3"><span class="ltx_text" id="S4.T1.3.1.6.3.1" style="font-size:90%;">-3.75E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.4"><span class="ltx_text" id="S4.T1.3.1.6.4.1" style="font-size:90%;">3.72E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.7.1"><span class="ltx_text" id="S4.T1.3.1.7.1.1" style="font-size:90%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.2"><span class="ltx_text" id="S4.T1.3.1.7.2.1" style="font-size:90%;">-6.29E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.3"><span class="ltx_text" id="S4.T1.3.1.7.3.1" style="font-size:90%;">-3.61E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.4"><span class="ltx_text" id="S4.T1.3.1.7.4.1" style="font-size:90%;">4.27E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.8.1"><span class="ltx_text" id="S4.T1.3.1.8.1.1" style="font-size:90%;">7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.2"><span class="ltx_text" id="S4.T1.3.1.8.2.1" style="font-size:90%;">-2.04E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.3"><span class="ltx_text" id="S4.T1.3.1.8.3.1" style="font-size:90%;">-3.63E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.4"><span class="ltx_text" id="S4.T1.3.1.8.4.1" style="font-size:90%;">5.06E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.9.1"><span class="ltx_text" id="S4.T1.3.1.9.1.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.2"><span class="ltx_text" id="S4.T1.3.1.9.2.1" style="font-size:90%;">6.82E-05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.3"><span class="ltx_text" id="S4.T1.3.1.9.3.1" style="font-size:90%;">-3.60E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.4"><span class="ltx_text" id="S4.T1.3.1.9.4.1" style="font-size:90%;">5.59E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.10.1"><span class="ltx_text" id="S4.T1.3.1.10.1.1" style="font-size:90%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.2"><span class="ltx_text" id="S4.T1.3.1.10.2.1" style="font-size:90%;">5.75E-05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.3"><span class="ltx_text" id="S4.T1.3.1.10.3.1" style="font-size:90%;">-3.97E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.4"><span class="ltx_text" id="S4.T1.3.1.10.4.1" style="font-size:90%;">6.85E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.11.1"><span class="ltx_text" id="S4.T1.3.1.11.1.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.2"><span class="ltx_text" id="S4.T1.3.1.11.2.1" style="font-size:90%;">2.86E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.3"><span class="ltx_text" id="S4.T1.3.1.11.3.1" style="font-size:90%;">-4.10E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.4"><span class="ltx_text" id="S4.T1.3.1.11.4.1" style="font-size:90%;">7.78E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.12.1"><span class="ltx_text" id="S4.T1.3.1.12.1.1" style="font-size:90%;">11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.2"><span class="ltx_text" id="S4.T1.3.1.12.2.1" style="font-size:90%;">-6.43E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.3"><span class="ltx_text" id="S4.T1.3.1.12.3.1" style="font-size:90%;">-3.66E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.4"><span class="ltx_text" id="S4.T1.3.1.12.4.1" style="font-size:90%;">6.57E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.13.1"><span class="ltx_text" id="S4.T1.3.1.13.1.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.2"><span class="ltx_text" id="S4.T1.3.1.13.2.1" style="font-size:90%;">8.29E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.3"><span class="ltx_text" id="S4.T1.3.1.13.3.1" style="font-size:90%;">-2.95E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.4"><span class="ltx_text" id="S4.T1.3.1.13.4.1" style="font-size:90%;">6.81E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.14.1"><span class="ltx_text" id="S4.T1.3.1.14.1.1" style="font-size:90%;">13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.2"><span class="ltx_text" id="S4.T1.3.1.14.2.1" style="font-size:90%;">6.14E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.3"><span class="ltx_text" id="S4.T1.3.1.14.3.1" style="font-size:90%;">-2.80E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.4"><span class="ltx_text" id="S4.T1.3.1.14.4.1" style="font-size:90%;">5.83E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.15">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.15.1"><span class="ltx_text" id="S4.T1.3.1.15.1.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.2"><span class="ltx_text" id="S4.T1.3.1.15.2.1" style="font-size:90%;">1.30E-03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.3"><span class="ltx_text" id="S4.T1.3.1.15.3.1" style="font-size:90%;">-2.65E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.4"><span class="ltx_text" id="S4.T1.3.1.15.4.1" style="font-size:90%;">6.57E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.16">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.16.1"><span class="ltx_text" id="S4.T1.3.1.16.1.1" style="font-size:90%;">15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.2"><span class="ltx_text" id="S4.T1.3.1.16.2.1" style="font-size:90%;">-2.52E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.3"><span class="ltx_text" id="S4.T1.3.1.16.3.1" style="font-size:90%;">-2.84E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.4"><span class="ltx_text" id="S4.T1.3.1.16.4.1" style="font-size:90%;">5.30E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.17">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.17.1"><span class="ltx_text" id="S4.T1.3.1.17.1.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.17.2"><span class="ltx_text" id="S4.T1.3.1.17.2.1" style="font-size:90%;">3.47E-04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.17.3"><span class="ltx_text" id="S4.T1.3.1.17.3.1" style="font-size:90%;">-5.05E-06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.17.4"><span class="ltx_text" id="S4.T1.3.1.17.4.1" style="font-size:90%;">9.79E-03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.1.18.1"><span class="ltx_text" id="S4.T1.3.1.18.1.1" style="font-size:90%;">All</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.18.2"><span class="ltx_text" id="S4.T1.3.1.18.2.1" style="font-size:90%;">8.92E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.18.3"><span class="ltx_text" id="S4.T1.3.1.18.3.1" style="font-size:90%;">-6.05E-05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.18.4"><span class="ltx_text" id="S4.T1.3.1.18.4.1" style="font-size:90%;">1.00E-01</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a detailed breakdown of the accuracy of first-order and second-order Taylor expansion approximations in predicting the actual change in loss function (ΔF) after weight quantization.  It compares the calculated first-order and second-order terms from Equation 1 with the actual observed ΔF for each layer of a 16-layer Llama 3.2 1B language model. This comparison reveals the significant discrepancy between the approximation and reality, especially concerning the underestimation of the actual loss function change by orders of magnitude.
> <details>
> <summary>read the caption</summary>
> Table 1: First-order, second-order term and actual Δ⁢FΔ𝐹\Delta Froman_Δ italic_F in Equation 1.
> </details>





### In-depth insights


#### PQI: Accuracy++
While the title "PQI: Accuracy++" is speculative, it suggests a significant leap in accuracy attributable to the Post-quantization Integral (PQI). The "++" implies PQI isn't merely an incremental improvement, but a substantial enhancement. This leap could stem from PQI's ability to **more accurately estimate the impact of quantization** on individual weight dimensions, overcoming limitations of gradient/Hessian metrics. A central component of PQI's accuracy is its **fine-grained approach**, estimating posterior sensitivity meticulously. It should also be noted that it can be combined with quantization methods. It is important to state that its accuracy lies in **decomposing the path into numerous small fragments**. As a result, Taylor's formula can accurately approximate each fragment.

#### ReQuant: Key idea
ReQuant introduces a novel approach to post-quantization by employing a **Dense-and-Sparse detach** strategy, which distinguishes it from traditional quantization methods. The core idea revolves around **intelligently separating weights into dense, outlier, and significant components.** The method first quantizes most of the weights using standard techniques (dense component), then preserves a small subset of **outlier weights in high precision** to mitigate accuracy loss. Critically, ReQuant identifies and detaches weights that, while not necessarily outliers, have a **disproportionate impact on the model's performance post-quantization (significant weights)**. By treating these crucial weights separately, ReQuant aims to strike a balance between aggressive compression and maintaining model fidelity. This allows for more effective quantization without sacrificing accuracy, as demonstrated by its performance improvements on LLMs.

#### Sparse Detach
The **sparse detach** component is likely a crucial step in optimizing the quantization process for Large Language Models (LLMs). It probably involves selectively removing or isolating a subset of weights deemed less critical, or outliers, to improve overall model performance after quantization. This approach is based on the idea that not all weights contribute equally. By focusing quantization efforts on the most sensitive weights and detaching or handling outliers differently, the impact of reduced precision can be minimized. This is often achieved by maintaining a certain percentage of weights in higher precision. It is important as improper selection would degrade performance.

#### LLM Metric Flaws
**Existing metrics** for evaluating weight quantization sensitivity in LLMs, such as gradient or Hessian-based approaches, **suffer from inaccuracies**. These metrics **underestimate the impact of quantization** on the loss function by orders of magnitude, mainly due to the **small convergence radius** of local second-order approximations. The complicated loss landscape of LLMs invalidates these approximations outside a tiny region around the original weights. Furthermore, the sensitivity calculated on original weights may not align with the actual sensitivity of quantized weights, as previously important weights may lose significance after quantization, and vice-versa, thus, these metrics **fail to accurately predict the change in loss** caused by weight quantization. Therefore, a new metric is needed.

#### Limited Radius
The text discusses the **convergence radius of Taylor's expansion** and how it affects the accuracy of sensitivity metrics used in post-training quantization (PTQ) for Large Language Models (LLMs). It argues that existing gradient and Hessian-based metrics are inaccurate due to the small convergence radius, meaning the local approximations they use are only valid in a very small region around the original weights. Quantization introduces significant changes, pushing the weights outside this radius. The Taylor series expansion becomes unreliable when the quantized weights fall outside the convergence radius of the original weights. The result is inaccurate estimation of the loss function change, hindering effective weight quantization.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.6.2">
<tr class="ltx_tr" id="S4.T2.6.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.5.1.1.1"><math alttext="\lambda" class="ltx_Math" display="inline" id="S4.T2.5.1.1.1.m1.1"><semantics id="S4.T2.5.1.1.1.m1.1a"><mi id="S4.T2.5.1.1.1.m1.1.1" mathsize="90%" xref="S4.T2.5.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.1.1.1.m1.1b"><ci id="S4.T2.5.1.1.1.m1.1.1.cmml" xref="S4.T2.5.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.1.m1.1d">italic_λ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.3.1" style="font-size:90%;">First-order</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.4.1" style="font-size:90%;">Second-order</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.2.1" style="font-size:90%;">Actual</span><span class="ltx_text" id="S4.T2.6.2.2.2.2" style="font-size:90%;"> </span><math alttext="\Delta F" class="ltx_Math" display="inline" id="S4.T2.6.2.2.2.m1.1"><semantics id="S4.T2.6.2.2.2.m1.1a"><mrow id="S4.T2.6.2.2.2.m1.1.1" xref="S4.T2.6.2.2.2.m1.1.1.cmml"><mi id="S4.T2.6.2.2.2.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S4.T2.6.2.2.2.m1.1.1.2.cmml">Δ</mi><mo id="S4.T2.6.2.2.2.m1.1.1.1" xref="S4.T2.6.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T2.6.2.2.2.m1.1.1.3" mathsize="90%" xref="S4.T2.6.2.2.2.m1.1.1.3.cmml">F</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.2.2.2.m1.1b"><apply id="S4.T2.6.2.2.2.m1.1.1.cmml" xref="S4.T2.6.2.2.2.m1.1.1"><times id="S4.T2.6.2.2.2.m1.1.1.1.cmml" xref="S4.T2.6.2.2.2.m1.1.1.1"></times><ci id="S4.T2.6.2.2.2.m1.1.1.2.cmml" xref="S4.T2.6.2.2.2.m1.1.1.2">Δ</ci><ci id="S4.T2.6.2.2.2.m1.1.1.3.cmml" xref="S4.T2.6.2.2.2.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.2.2.2.m1.1c">\Delta F</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.2.2.2.m1.1d">roman_Δ italic_F</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.3.1"><span class="ltx_text" id="S4.T2.6.2.3.1.1" style="font-size:90%;">1E-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.3.2"><span class="ltx_text" id="S4.T2.6.2.3.2.1" style="font-size:90%;">8.92E-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.3.3"><span class="ltx_text" id="S4.T2.6.2.3.3.1" style="font-size:90%;">-6.05E-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.3.4"><span class="ltx_text" id="S4.T2.6.2.3.4.1" style="font-size:90%;">1.00E-3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.4">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.4.1"><span class="ltx_text" id="S4.T2.6.2.4.1.1" style="font-size:90%;">5E-2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.4.2"><span class="ltx_text" id="S4.T2.6.2.4.2.1" style="font-size:90%;">4.46E-5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.4.3"><span class="ltx_text" id="S4.T2.6.2.4.3.1" style="font-size:90%;">-1.51E-7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.4.4"><span class="ltx_text" id="S4.T2.6.2.4.4.1" style="font-size:90%;">2.73E-4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.5">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.5.1"><span class="ltx_text" id="S4.T2.6.2.5.1.1" style="font-size:90%;">1E-2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.2"><span class="ltx_text" id="S4.T2.6.2.5.2.1" style="font-size:90%;">8.92E-6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.3"><span class="ltx_text" id="S4.T2.6.2.5.3.1" style="font-size:90%;">-6.05E-9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.4"><span class="ltx_text" id="S4.T2.6.2.5.4.1" style="font-size:90%;">1.81E-5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.6">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.6.1"><span class="ltx_text" id="S4.T2.6.2.6.1.1" style="font-size:90%;">5E-3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.2"><span class="ltx_text" id="S4.T2.6.2.6.2.1" style="font-size:90%;">4.46E-6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.3"><span class="ltx_text" id="S4.T2.6.2.6.3.1" style="font-size:90%;">-1.51E-9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.4"><span class="ltx_text" id="S4.T2.6.2.6.4.1" style="font-size:90%;">6.68E-6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.6.2.7.1"><span class="ltx_text" id="S4.T2.6.2.7.1.1" style="font-size:90%;">1E-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.2.7.2"><span class="ltx_text" id="S4.T2.6.2.7.2.1" style="font-size:90%;">8.92E-7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.2.7.3"><span class="ltx_text" id="S4.T2.6.2.7.3.1" style="font-size:90%;">-6.05E-11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.2.7.4"><span class="ltx_text" id="S4.T2.6.2.7.4.1" style="font-size:90%;">9.54E-7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows how the accuracy of the Taylor expansion approximation for the change in loss function (ΔF) varies with different values of λ (lambda).  λ controls how close the interpolated weight w' is to the original weight w. As λ approaches 0, w' gets closer to w, making the Taylor expansion more accurate. The table compares the actual change in loss (Actual ΔF) to the values predicted by the first-order and second-order terms of the Taylor expansion for various layers of a 16-layer Llama 3.2 1B model.
> <details>
> <summary>read the caption</summary>
> Table 2: Actual Δ⁢FΔ𝐹\Delta Froman_Δ italic_F with different λ𝜆\lambdaitalic_λ.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.5.1">
<tr class="ltx_tr" id="S5.T3.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.2.1" style="font-size:90%;">Intervals</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.1">
<span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.1" style="font-size:90%;">Predicted</span><span class="ltx_text" id="S5.T3.5.1.1.1.2" style="font-size:90%;"> </span><math alttext="\Delta F" class="ltx_Math" display="inline" id="S5.T3.5.1.1.1.m1.1"><semantics id="S5.T3.5.1.1.1.m1.1a"><mrow id="S5.T3.5.1.1.1.m1.1.1" xref="S5.T3.5.1.1.1.m1.1.1.cmml"><mi id="S5.T3.5.1.1.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T3.5.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S5.T3.5.1.1.1.m1.1.1.1" xref="S5.T3.5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S5.T3.5.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T3.5.1.1.1.m1.1.1.3.cmml">F</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.5.1.1.1.m1.1b"><apply id="S5.T3.5.1.1.1.m1.1.1.cmml" xref="S5.T3.5.1.1.1.m1.1.1"><times id="S5.T3.5.1.1.1.m1.1.1.1.cmml" xref="S5.T3.5.1.1.1.m1.1.1.1"></times><ci id="S5.T3.5.1.1.1.m1.1.1.2.cmml" xref="S5.T3.5.1.1.1.m1.1.1.2">Δ</ci><ci id="S5.T3.5.1.1.1.m1.1.1.3.cmml" xref="S5.T3.5.1.1.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.1.1.1.m1.1c">\Delta F</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.1.1.1.m1.1d">roman_Δ italic_F</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.3.1" style="font-size:90%;">Error</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.5.1.2.1"><span class="ltx_text" id="S5.T3.5.1.2.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.2"><span class="ltx_text" id="S5.T3.5.1.2.2.1" style="font-size:90%;">1.042E-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.3"><span class="ltx_text" id="S5.T3.5.1.2.3.1" style="font-size:90%;">1.72E-2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.3">
<td class="ltx_td ltx_align_left" id="S5.T3.5.1.3.1"><span class="ltx_text" id="S5.T3.5.1.3.1.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.2"><span class="ltx_text" id="S5.T3.5.1.3.2.1" style="font-size:90%;">1.032E-1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.3"><span class="ltx_text" id="S5.T3.5.1.3.3.1" style="font-size:90%;">8.39E-4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.5.1.4.1"><span class="ltx_text" id="S5.T3.5.1.4.1.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2"><span class="ltx_text" id="S5.T3.5.1.4.2.1" style="font-size:90%;">1.028E-1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.3"><span class="ltx_text" id="S5.T3.5.1.4.3.1" style="font-size:90%;">3.90E-4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.5.1.5.1"><span class="ltx_text" id="S5.T3.5.1.5.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.5.2"><span class="ltx_text" id="S5.T3.5.1.5.2.1" style="font-size:90%;">1.026E-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.5.3"><span class="ltx_text" id="S5.T3.5.1.5.3.1" style="font-size:90%;">1.62E-4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment designed to evaluate the accuracy of the Post-quantization Integral (PQI) method, a novel sensitivity metric.  The experiment quantifies the change in the loss function (ΔF) using PQI with varying numbers of intervals used in the numerical integration process. The goal is to demonstrate how well PQI can predict the actual change in the loss function. The actual ΔF for the dataset is provided for comparison, allowing assessment of PQI's accuracy with different levels of granularity in the approximation.
> <details>
> <summary>read the caption</summary>
> Table 3: Predicted Δ⁢FΔ𝐹\Delta Froman_Δ italic_F with intervals we split. For reference, the actual Δ⁢F⁢(𝐰)Δ𝐹𝐰\Delta F(\bm{\mathbf{w}})roman_Δ italic_F ( bold_w ) on this dataset should be 0.1024.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.3">
<tr class="ltx_tr" id="S5.T4.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.1.1" style="font-size:90%;">Layer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.2.1" style="font-size:90%;">Q</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.3.1" style="font-size:90%;">K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.4.1" style="font-size:90%;">V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.5.1" style="font-size:90%;">O</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.6.1" style="font-size:90%;">Gate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.7"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.7.1" style="font-size:90%;">Up</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.1.8"><span class="ltx_text ltx_font_bold" id="S5.T4.3.1.8.1" style="font-size:90%;">Down</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.3.2.1"><span class="ltx_text" id="S5.T4.3.2.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.2"><span class="ltx_text" id="S5.T4.3.2.2.1" style="font-size:90%;">4.53E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.3"><span class="ltx_text" id="S5.T4.3.2.3.1" style="font-size:90%;">9.93E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.4"><span class="ltx_text" id="S5.T4.3.2.4.1" style="font-size:90%;">1.59E-07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.5"><span class="ltx_text" id="S5.T4.3.2.5.1" style="font-size:90%;">9.13E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.6"><span class="ltx_text" id="S5.T4.3.2.6.1" style="font-size:90%;">4.22E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.7"><span class="ltx_text" id="S5.T4.3.2.7.1" style="font-size:90%;">4.99E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.2.8"><span class="ltx_text" id="S5.T4.3.2.8.1" style="font-size:90%;">5.31E-08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3">
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.1"><span class="ltx_text" id="S5.T4.3.3.1.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.2"><span class="ltx_text" id="S5.T4.3.3.2.1" style="font-size:90%;">4.16E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3"><span class="ltx_text" id="S5.T4.3.3.3.1" style="font-size:90%;">6.66E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.4"><span class="ltx_text" id="S5.T4.3.3.4.1" style="font-size:90%;">1.07E-07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5"><span class="ltx_text" id="S5.T4.3.3.5.1" style="font-size:90%;">7.37E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6"><span class="ltx_text" id="S5.T4.3.3.6.1" style="font-size:90%;">2.57E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.7"><span class="ltx_text" id="S5.T4.3.3.7.1" style="font-size:90%;">4.14E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.8"><span class="ltx_text" id="S5.T4.3.3.8.1" style="font-size:90%;">4.37E-08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.4">
<td class="ltx_td ltx_align_left" id="S5.T4.3.4.1"><span class="ltx_text" id="S5.T4.3.4.1.1" style="font-size:90%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.2"><span class="ltx_text" id="S5.T4.3.4.2.1" style="font-size:90%;">3.83E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.3"><span class="ltx_text" id="S5.T4.3.4.3.1" style="font-size:90%;">6.11E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.4"><span class="ltx_text" id="S5.T4.3.4.4.1" style="font-size:90%;">9.94E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.5"><span class="ltx_text" id="S5.T4.3.4.5.1" style="font-size:90%;">8.83E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.6"><span class="ltx_text" id="S5.T4.3.4.6.1" style="font-size:90%;">2.46E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.7"><span class="ltx_text" id="S5.T4.3.4.7.1" style="font-size:90%;">4.01E-08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.4.8"><span class="ltx_text" id="S5.T4.3.4.8.1" style="font-size:90%;">4.72E-08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.3.5.1"><span class="ltx_text" id="S5.T4.3.5.1.1" style="font-size:90%;">11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.2"><span class="ltx_text" id="S5.T4.3.5.2.1" style="font-size:90%;">2.63E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.3"><span class="ltx_text" id="S5.T4.3.5.3.1" style="font-size:90%;">4.53E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.4"><span class="ltx_text" id="S5.T4.3.5.4.1" style="font-size:90%;">7.88E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.5"><span class="ltx_text" id="S5.T4.3.5.5.1" style="font-size:90%;">4.67E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.6"><span class="ltx_text" id="S5.T4.3.5.6.1" style="font-size:90%;">2.90E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.7"><span class="ltx_text" id="S5.T4.3.5.7.1" style="font-size:90%;">3.78E-08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.5.8"><span class="ltx_text" id="S5.T4.3.5.8.1" style="font-size:90%;">4.61E-08</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the element-wise average of the Post-quantization Integral (PQI) sensitivity metric for different layers and sub-layers within the Llama language model.  The PQI metric quantifies the sensitivity of each weight to quantization, indicating its importance in maintaining model accuracy.  Higher values suggest greater sensitivity and thus a larger impact on the model's performance if that weight is quantized.  The table helps to understand the varying sensitivity across different model components, informing strategies for more effective quantization.
> <details>
> <summary>read the caption</summary>
> Table 4: Element-wise average Δ⁢FP⁢Q⁢IΔsubscript𝐹𝑃𝑄𝐼\Delta F_{PQI}roman_Δ italic_F start_POSTSUBSCRIPT italic_P italic_Q italic_I end_POSTSUBSCRIPT of different layers and sublayers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.3.1">
<tr class="ltx_tr" id="S6.T5.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.3.1.1.2">
<span class="ltx_text" id="S6.T5.3.1.1.2.1"></span> <span class="ltx_text" id="S6.T5.3.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.3.1.1.2.2.1">
<span class="ltx_tr" id="S6.T5.3.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.3.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.2.2.1.1.1.1">Proportion of</span></span></span>
<span class="ltx_tr" id="S6.T5.3.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.3.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.2.2.1.2.1.1">Significant Weights</span></span></span>
</span></span><span class="ltx_text" id="S6.T5.3.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.3.1.1.1">
<span class="ltx_text" id="S6.T5.3.1.1.1.2"></span> <span class="ltx_text" id="S6.T5.3.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.3.1.1.1.1.1">
<span class="ltx_tr" id="S6.T5.3.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.3.1.1.1.1.1.1.1"><math alttext="\Delta F_{PQI}" class="ltx_Math" display="inline" id="S6.T5.3.1.1.1.1.1.1.1.m1.1"><semantics id="S6.T5.3.1.1.1.1.1.1.1.m1.1a"><mrow id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.1" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.cmml"><mi id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.2" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.2.cmml">F</mi><mrow id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.cmml"><mi id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.2" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.2.cmml">P</mi><mo id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.3" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.3.cmml">Q</mi><mo id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1a" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.4" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.4.cmml">I</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S6.T5.3.1.1.1.1.1.1.1.m1.1b"><apply id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1"><times id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.1"></times><ci id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.2">Δ</ci><apply id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.2.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.2">𝐹</ci><apply id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3"><times id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.1"></times><ci id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.2.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.2">𝑃</ci><ci id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.3.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.3">𝑄</ci><ci id="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.4.cmml" xref="S6.T5.3.1.1.1.1.1.1.1.m1.1.1.3.3.4">𝐼</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.3.1.1.1.1.1.1.1.m1.1c">\Delta F_{PQI}</annotation><annotation encoding="application/x-llamapun" id="S6.T5.3.1.1.1.1.1.1.1.m1.1d">roman_Δ italic_F start_POSTSUBSCRIPT italic_P italic_Q italic_I end_POSTSUBSCRIPT</annotation></semantics></math> <span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.1.1.1.1.1.1">percentage</span></span></span>
</span></span><span class="ltx_text" id="S6.T5.3.1.1.1.3"></span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.3.1.2.1">0.15%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.3.1.2.2">4.53%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.3.1.3">
<td class="ltx_td ltx_align_center" id="S6.T5.3.1.3.1">0.71%</td>
<td class="ltx_td ltx_align_center" id="S6.T5.3.1.3.2">11.29%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.3.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.3.1.4.1">5.25%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.3.1.4.2">34.06%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the relationship between the percentage of weights considered 'significant' and their cumulative contribution to the total post-quantization integral (PQI) sensitivity metric.  The PQI sensitivity metric quantifies how much each weight's quantization affects the model's loss.  Higher ΔFPQI values indicate greater sensitivity. The table helps illustrate the impact of focusing on a smaller subset of most sensitive weights in the model's quantization.
> <details>
> <summary>read the caption</summary>
> Table 5: The proportion of significant weights we choose and how much they can cover in total Δ⁢FP⁢Q⁢IΔsubscript𝐹𝑃𝑄𝐼\Delta F_{PQI}roman_Δ italic_F start_POSTSUBSCRIPT italic_P italic_Q italic_I end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S6.T6.4">
<tr class="ltx_tr" id="S6.T6.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.1.1" style="font-size:80%;">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.2.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.3.1" style="font-size:80%;">Calib Set</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S6.T6.4.5.4"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.4.1" style="font-size:80%;">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.5.1" style="font-size:80%;">Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.6"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.6.1" style="font-size:80%;">Mem</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.5.7"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.7.1" style="font-size:80%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.4.5.8"><span class="ltx_text ltx_font_bold" id="S6.T6.4.5.8.1" style="font-size:80%;">Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.4">
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.1"><math alttext="r_{o}" class="ltx_Math" display="inline" id="S6.T6.1.1.1.m1.1"><semantics id="S6.T6.1.1.1.m1.1a"><msub id="S6.T6.1.1.1.m1.1.1" xref="S6.T6.1.1.1.m1.1.1.cmml"><mi id="S6.T6.1.1.1.m1.1.1.2" mathsize="80%" xref="S6.T6.1.1.1.m1.1.1.2.cmml">r</mi><mi id="S6.T6.1.1.1.m1.1.1.3" mathsize="80%" xref="S6.T6.1.1.1.m1.1.1.3.cmml">o</mi></msub><annotation-xml encoding="MathML-Content" id="S6.T6.1.1.1.m1.1b"><apply id="S6.T6.1.1.1.m1.1.1.cmml" xref="S6.T6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.1.1.1.m1.1.1.1.cmml" xref="S6.T6.1.1.1.m1.1.1">subscript</csymbol><ci id="S6.T6.1.1.1.m1.1.1.2.cmml" xref="S6.T6.1.1.1.m1.1.1.2">𝑟</ci><ci id="S6.T6.1.1.1.m1.1.1.3.cmml" xref="S6.T6.1.1.1.m1.1.1.3">𝑜</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.1.1.1.m1.1c">r_{o}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.1.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.2.2.2"><math alttext="r_{s}" class="ltx_Math" display="inline" id="S6.T6.2.2.2.m1.1"><semantics id="S6.T6.2.2.2.m1.1a"><msub id="S6.T6.2.2.2.m1.1.1" xref="S6.T6.2.2.2.m1.1.1.cmml"><mi id="S6.T6.2.2.2.m1.1.1.2" mathsize="80%" xref="S6.T6.2.2.2.m1.1.1.2.cmml">r</mi><mi id="S6.T6.2.2.2.m1.1.1.3" mathsize="80%" xref="S6.T6.2.2.2.m1.1.1.3.cmml">s</mi></msub><annotation-xml encoding="MathML-Content" id="S6.T6.2.2.2.m1.1b"><apply id="S6.T6.2.2.2.m1.1.1.cmml" xref="S6.T6.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.2.2.2.m1.1.1.1.cmml" xref="S6.T6.2.2.2.m1.1.1">subscript</csymbol><ci id="S6.T6.2.2.2.m1.1.1.2.cmml" xref="S6.T6.2.2.2.m1.1.1.2">𝑟</ci><ci id="S6.T6.2.2.2.m1.1.1.3.cmml" xref="S6.T6.2.2.2.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.2.2.2.m1.1c">r_{s}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.2.2.2.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.4.5"><span class="ltx_text" id="S6.T6.4.4.5.1" style="font-size:80%;">(GB)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.3.3">
<span class="ltx_text" id="S6.T6.3.3.3.1" style="font-size:80%;">Wiki2</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T6.3.3.3.m1.1"><semantics id="S6.T6.3.3.3.m1.1a"><mo id="S6.T6.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S6.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T6.3.3.3.m1.1b"><ci id="S6.T6.3.3.3.m1.1.1.cmml" xref="S6.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.4.4">
<span class="ltx_text" id="S6.T6.4.4.4.1" style="font-size:80%;">MATH</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.4.4.4.m1.1"><semantics id="S6.T6.4.4.4.m1.1a"><mo id="S6.T6.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S6.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.4.4.4.m1.1b"><ci id="S6.T6.4.4.4.m1.1.1.cmml" xref="S6.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.1"><span class="ltx_text" id="S6.T6.4.6.1.1" style="font-size:80%;">full</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.2"><span class="ltx_text" id="S6.T6.4.6.2.1" style="font-size:80%;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.3"><span class="ltx_text" id="S6.T6.4.6.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.4.6.4"><span class="ltx_text" id="S6.T6.4.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.5"><span class="ltx_text" id="S6.T6.4.6.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.6"><span class="ltx_text" id="S6.T6.4.6.6.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.7"><span class="ltx_text" id="S6.T6.4.6.7.1" style="font-size:80%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.4.6.8"><span class="ltx_text" id="S6.T6.4.6.8.1" style="font-size:80%;">9.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.4.6.9"><span class="ltx_text" id="S6.T6.4.6.9.1" style="font-size:80%;">29.30</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.1" rowspan="2"><span class="ltx_text" id="S6.T6.4.7.1.1" style="font-size:80%;">2-bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.2"><span class="ltx_text" id="S6.T6.4.7.2.1" style="font-size:80%;">QTIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.3"><span class="ltx_text" id="S6.T6.4.7.3.1" style="font-size:80%;">RedPajama</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.7.4"><span class="ltx_text" id="S6.T6.4.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.5"><span class="ltx_text" id="S6.T6.4.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.6"><span class="ltx_text" id="S6.T6.4.7.6.1" style="font-size:80%;">2.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.7"><span class="ltx_text" id="S6.T6.4.7.7.1" style="font-size:80%;">1.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.7.8"><span class="ltx_text" id="S6.T6.4.7.8.1" style="font-size:80%;">18.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.7.9"><span class="ltx_text" id="S6.T6.4.7.9.1" style="font-size:80%;">0.78</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.1"><span class="ltx_text" id="S6.T6.4.8.1.1" style="font-size:80%;">QTIP+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.2"><span class="ltx_text" id="S6.T6.4.8.2.1" style="font-size:80%;">RedPajama/WikiText-2/Tulu 3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.8.3"><span class="ltx_text" id="S6.T6.4.8.3.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.4"><span class="ltx_text" id="S6.T6.4.8.4.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.5"><span class="ltx_text" id="S6.T6.4.8.5.1" style="font-size:80%;">2.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.6"><span class="ltx_text" id="S6.T6.4.8.6.1" style="font-size:80%;">1.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.7"><span class="ltx_text ltx_font_bold" id="S6.T6.4.8.7.1" style="font-size:80%;">16.01</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.8.8"><span class="ltx_text ltx_font_bold" id="S6.T6.4.8.8.1" style="font-size:80%;">2.68</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.1" rowspan="2"><span class="ltx_text" id="S6.T6.4.9.1.1" style="font-size:80%;">3-bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.2"><span class="ltx_text" id="S6.T6.4.9.2.1" style="font-size:80%;">QTIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.3"><span class="ltx_text" id="S6.T6.4.9.3.1" style="font-size:80%;">RedPajama-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.9.4"><span class="ltx_text" id="S6.T6.4.9.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.5"><span class="ltx_text" id="S6.T6.4.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.6"><span class="ltx_text" id="S6.T6.4.9.6.1" style="font-size:80%;">3.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.7"><span class="ltx_text" id="S6.T6.4.9.7.1" style="font-size:80%;">1.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.9.8"><span class="ltx_text" id="S6.T6.4.9.8.1" style="font-size:80%;">11.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.9.9"><span class="ltx_text" id="S6.T6.4.9.9.1" style="font-size:80%;">18.78</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.1"><span class="ltx_text" id="S6.T6.4.10.1.1" style="font-size:80%;">QTIP+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.2"><span class="ltx_text" id="S6.T6.4.10.2.1" style="font-size:80%;">RedPajama/WikiText-2/Tulu 3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.10.3"><span class="ltx_text" id="S6.T6.4.10.3.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.4"><span class="ltx_text" id="S6.T6.4.10.4.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.5"><span class="ltx_text" id="S6.T6.4.10.5.1" style="font-size:80%;">3.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.6"><span class="ltx_text" id="S6.T6.4.10.6.1" style="font-size:80%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.10.7"><span class="ltx_text ltx_font_bold" id="S6.T6.4.10.7.1" style="font-size:80%;">10.83</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.10.8"><span class="ltx_text ltx_font_bold" id="S6.T6.4.10.8.1" style="font-size:80%;">20.06</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T6.4.11.1" rowspan="2"><span class="ltx_text" id="S6.T6.4.11.1.1" style="font-size:80%;">4-bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.2"><span class="ltx_text" id="S6.T6.4.11.2.1" style="font-size:80%;">QTIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.3"><span class="ltx_text" id="S6.T6.4.11.3.1" style="font-size:80%;">RedPajama</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.11.4"><span class="ltx_text" id="S6.T6.4.11.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.5"><span class="ltx_text" id="S6.T6.4.11.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.6"><span class="ltx_text" id="S6.T6.4.11.6.1" style="font-size:80%;">4.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.7"><span class="ltx_text" id="S6.T6.4.11.7.1" style="font-size:80%;">2.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.11.8"><span class="ltx_text" id="S6.T6.4.11.8.1" style="font-size:80%;">10.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.11.9"><span class="ltx_text" id="S6.T6.4.11.9.1" style="font-size:80%;">26.38</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.1"><span class="ltx_text" id="S6.T6.4.12.1.1" style="font-size:80%;">QTIP+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.2"><span class="ltx_text" id="S6.T6.4.12.2.1" style="font-size:80%;">RedPajama/WikiText-2/Tulu 3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.12.3"><span class="ltx_text" id="S6.T6.4.12.3.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.4"><span class="ltx_text" id="S6.T6.4.12.4.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.5"><span class="ltx_text" id="S6.T6.4.12.5.1" style="font-size:80%;">4.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.6"><span class="ltx_text" id="S6.T6.4.12.6.1" style="font-size:80%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.4.12.7"><span class="ltx_text ltx_font_bold" id="S6.T6.4.12.7.1" style="font-size:80%;">10.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.12.8"><span class="ltx_text ltx_font_bold" id="S6.T6.4.12.8.1" style="font-size:80%;">27.36</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of applying the QTIP (Quantization with Trellises and Incoherence Processing) method to the Llama 3.2 1B Base and Instruct models.  It shows the performance metrics achieved at different precision levels (2-bit, 3-bit, 4-bit), using various calibration sets, and with the addition of the ReQuant method. Metrics include perplexity on the WikiText-2 benchmark and the MATH score, indicating performance on mathematical reasoning tasks. Sparsity refers to the proportion of weights that are sparsely stored instead of being fully quantized.
> <details>
> <summary>read the caption</summary>
> Table 6: QTIP results for Llama 3.2 1B Base/Instruct models. The entries share the same meaning as Table 7.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S7.T7.6">
<tr class="ltx_tr" id="S7.T7.6.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.7.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.7.1.1" style="font-size:70%;">Llama 3.2 1B Base/Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S7.T7.6.7.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.7.2.1" style="font-size:70%;">Hyperparameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S7.T7.6.7.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.7.3.1" style="font-size:70%;">3-bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S7.T7.6.7.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.7.4.1" style="font-size:70%;">4-bit</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.1" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.2" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.2.1" style="font-size:70%;">Calib Set</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S7.T7.6.8.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.3.1" style="font-size:70%;">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.4" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.4.1" style="font-size:70%;">Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.5.1" style="font-size:70%;">Mem</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.6.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.7.1" style="font-size:70%;">Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.8" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.8.1" style="font-size:70%;">Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.9.1" style="font-size:70%;">Mem</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.8.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.10.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.6.8.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.8.11.1" style="font-size:70%;">Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.6">
<td class="ltx_td ltx_align_center" id="S7.T7.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="r_{o}" class="ltx_Math" display="inline" id="S7.T7.1.1.1.m1.1"><semantics id="S7.T7.1.1.1.m1.1a"><msub id="S7.T7.1.1.1.m1.1.1" xref="S7.T7.1.1.1.m1.1.1.cmml"><mi id="S7.T7.1.1.1.m1.1.1.2" mathsize="70%" xref="S7.T7.1.1.1.m1.1.1.2.cmml">r</mi><mi id="S7.T7.1.1.1.m1.1.1.3" mathsize="70%" xref="S7.T7.1.1.1.m1.1.1.3.cmml">o</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T7.1.1.1.m1.1b"><apply id="S7.T7.1.1.1.m1.1.1.cmml" xref="S7.T7.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T7.1.1.1.m1.1.1.1.cmml" xref="S7.T7.1.1.1.m1.1.1">subscript</csymbol><ci id="S7.T7.1.1.1.m1.1.1.2.cmml" xref="S7.T7.1.1.1.m1.1.1.2">𝑟</ci><ci id="S7.T7.1.1.1.m1.1.1.3.cmml" xref="S7.T7.1.1.1.m1.1.1.3">𝑜</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.1.1.1.m1.1c">r_{o}</annotation><annotation encoding="application/x-llamapun" id="S7.T7.1.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="r_{s}" class="ltx_Math" display="inline" id="S7.T7.2.2.2.m1.1"><semantics id="S7.T7.2.2.2.m1.1a"><msub id="S7.T7.2.2.2.m1.1.1" xref="S7.T7.2.2.2.m1.1.1.cmml"><mi id="S7.T7.2.2.2.m1.1.1.2" mathsize="70%" xref="S7.T7.2.2.2.m1.1.1.2.cmml">r</mi><mi id="S7.T7.2.2.2.m1.1.1.3" mathsize="70%" xref="S7.T7.2.2.2.m1.1.1.3.cmml">s</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T7.2.2.2.m1.1b"><apply id="S7.T7.2.2.2.m1.1.1.cmml" xref="S7.T7.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S7.T7.2.2.2.m1.1.1.1.cmml" xref="S7.T7.2.2.2.m1.1.1">subscript</csymbol><ci id="S7.T7.2.2.2.m1.1.1.2.cmml" xref="S7.T7.2.2.2.m1.1.1.2">𝑟</ci><ci id="S7.T7.2.2.2.m1.1.1.3.cmml" xref="S7.T7.2.2.2.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.2.2.2.m1.1c">r_{s}</annotation><annotation encoding="application/x-llamapun" id="S7.T7.2.2.2.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.6.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.6.7.1" style="font-size:70%;">(GB)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.3.3.3.1" style="font-size:70%;">Wiki2</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T7.3.3.3.m1.1"><semantics id="S7.T7.3.3.3.m1.1a"><mo id="S7.T7.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T7.3.3.3.m1.1b"><ci id="S7.T7.3.3.3.m1.1.1.cmml" xref="S7.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.4.4.4.1" style="font-size:70%;">MATH</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.4.4.4.m1.1"><semantics id="S7.T7.4.4.4.m1.1a"><mo id="S7.T7.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.4.4.4.m1.1b"><ci id="S7.T7.4.4.4.m1.1.1.cmml" xref="S7.T7.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.6.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.6.8.1" style="font-size:70%;">(GB)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.5.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.5.5.5.1" style="font-size:70%;">Wiki2</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T7.5.5.5.m1.1"><semantics id="S7.T7.5.5.5.m1.1a"><mo id="S7.T7.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T7.5.5.5.m1.1b"><ci id="S7.T7.5.5.5.m1.1.1.cmml" xref="S7.T7.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.6.6" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.6.6.6.1" style="font-size:70%;">MATH</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.6.6.6.m1.1"><semantics id="S7.T7.6.6.6.m1.1a"><mo id="S7.T7.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.6.6.6.m1.1b"><ci id="S7.T7.6.6.6.m1.1.1.cmml" xref="S7.T7.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.1.1" style="font-size:70%;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.2.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.6.9.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.3.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.5.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.6.1" style="font-size:70%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.7.1" style="font-size:70%;">9.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.8.1" style="font-size:70%;">29.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.9.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.10.1" style="font-size:70%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.6.9.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.11.1" style="font-size:70%;">9.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.6.9.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.9.12.1" style="font-size:70%;">29.30</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.1.1" style="font-size:70%;">AWQ (g128)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.2.1" style="font-size:70%;">Pile</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.6.10.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.3.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.5.1" style="font-size:70%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.6.1" style="font-size:70%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.7.1" style="font-size:70%;">16.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.8.1" style="font-size:70%;">fail</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.9.1" style="font-size:70%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.10.1" style="font-size:70%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.10.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.11.1" style="font-size:70%;">10.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.6.10.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.10.12.1" style="font-size:70%;">22.82</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.1.1" style="font-size:70%;">AWQ (g256)+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.2.1" style="font-size:70%;">Pile</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.11.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.3.1" style="font-size:70%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.4.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.5.1" style="font-size:70%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.6.1" style="font-size:70%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.11.7.1" style="font-size:70%;">15.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.8.1" style="font-size:70%;">fail</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.9.1" style="font-size:70%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.11.10.1" style="font-size:70%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.6.11.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.11.11.1" style="font-size:70%;">10.65</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.6.11.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.11.12.1" style="font-size:70%;">24.32</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.1.1" style="font-size:70%;">SqueezeLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.2.1" style="font-size:70%;">WikiText-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.6.12.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.3.1" style="font-size:70%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.4.1" style="font-size:70%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.5.1" style="font-size:70%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.6.1" style="font-size:70%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.7.1" style="font-size:70%;">13.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.8.1" style="font-size:70%;">11.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.9.1" style="font-size:70%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.10.1" style="font-size:70%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.6.12.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.11.1" style="font-size:70%;">10.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.6.12.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.12.12.1" style="font-size:70%;">fail</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.6.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.1.1" style="font-size:70%;">SqueezeLLM+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.2.1" style="font-size:70%;">WikiText-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.6.13.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.3.1" style="font-size:70%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.4.1" style="font-size:70%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.5.1" style="font-size:70%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.6.1" style="font-size:70%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.13.7.1" style="font-size:70%;">13.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.13.8.1" style="font-size:70%;">14.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.9.1" style="font-size:70%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.6.13.10.1" style="font-size:70%;">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.6.13.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.13.11.1" style="font-size:70%;">10.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.6.13.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.6.13.12.1" style="font-size:70%;">24.74</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various quantization methods (AWQ, SqueezeLLM, and QTIP) on Llama language models (3.2B and 3B).  It shows the WikiText-2 perplexity for base models and the 4-shot MATH (Mathematical Problem Solving) evaluation score for instruction following models. The table compares baseline performance with the results obtained after applying the proposed ReQuant method.  'Fail' indicates instances where the model's output could not be properly parsed due to errors.
> <details>
> <summary>read the caption</summary>
> Table 7: WikiText-2 perplexity for base models and 4-shot MATH evaluation for instruction following models. “Fail” means failure to parse model’s output due to garbled characters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S7.T7.12">
<tr class="ltx_tr" id="S7.T7.12.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.7.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.7.1.1" style="font-size:70%;">Llama 3.2 3B Base/Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S7.T7.12.7.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.7.2.1" style="font-size:70%;">Hyperparameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S7.T7.12.7.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.7.3.1" style="font-size:70%;">3-bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S7.T7.12.7.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.7.4.1" style="font-size:70%;">4-bit</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.1" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.2" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.2.1" style="font-size:70%;">Calib Set</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S7.T7.12.8.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.3.1" style="font-size:70%;">Sparsity</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.4" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.4.1" style="font-size:70%;">Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.5.1" style="font-size:70%;">Mem</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.6.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.7.1" style="font-size:70%;">Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.8" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.8.1" style="font-size:70%;">Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.9.1" style="font-size:70%;">Mem</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.8.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.10.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.12.8.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.8.11.1" style="font-size:70%;">Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.6">
<td class="ltx_td ltx_align_center" id="S7.T7.7.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="r_{o}" class="ltx_Math" display="inline" id="S7.T7.7.1.1.m1.1"><semantics id="S7.T7.7.1.1.m1.1a"><msub id="S7.T7.7.1.1.m1.1.1" xref="S7.T7.7.1.1.m1.1.1.cmml"><mi id="S7.T7.7.1.1.m1.1.1.2" mathsize="70%" xref="S7.T7.7.1.1.m1.1.1.2.cmml">r</mi><mi id="S7.T7.7.1.1.m1.1.1.3" mathsize="70%" xref="S7.T7.7.1.1.m1.1.1.3.cmml">o</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T7.7.1.1.m1.1b"><apply id="S7.T7.7.1.1.m1.1.1.cmml" xref="S7.T7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T7.7.1.1.m1.1.1.1.cmml" xref="S7.T7.7.1.1.m1.1.1">subscript</csymbol><ci id="S7.T7.7.1.1.m1.1.1.2.cmml" xref="S7.T7.7.1.1.m1.1.1.2">𝑟</ci><ci id="S7.T7.7.1.1.m1.1.1.3.cmml" xref="S7.T7.7.1.1.m1.1.1.3">𝑜</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.7.1.1.m1.1c">r_{o}</annotation><annotation encoding="application/x-llamapun" id="S7.T7.7.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.8.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="r_{s}" class="ltx_Math" display="inline" id="S7.T7.8.2.2.m1.1"><semantics id="S7.T7.8.2.2.m1.1a"><msub id="S7.T7.8.2.2.m1.1.1" xref="S7.T7.8.2.2.m1.1.1.cmml"><mi id="S7.T7.8.2.2.m1.1.1.2" mathsize="70%" xref="S7.T7.8.2.2.m1.1.1.2.cmml">r</mi><mi id="S7.T7.8.2.2.m1.1.1.3" mathsize="70%" xref="S7.T7.8.2.2.m1.1.1.3.cmml">s</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T7.8.2.2.m1.1b"><apply id="S7.T7.8.2.2.m1.1.1.cmml" xref="S7.T7.8.2.2.m1.1.1"><csymbol cd="ambiguous" id="S7.T7.8.2.2.m1.1.1.1.cmml" xref="S7.T7.8.2.2.m1.1.1">subscript</csymbol><ci id="S7.T7.8.2.2.m1.1.1.2.cmml" xref="S7.T7.8.2.2.m1.1.1.2">𝑟</ci><ci id="S7.T7.8.2.2.m1.1.1.3.cmml" xref="S7.T7.8.2.2.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.8.2.2.m1.1c">r_{s}</annotation><annotation encoding="application/x-llamapun" id="S7.T7.8.2.2.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.6.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.6.7.1" style="font-size:70%;">(GB)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.9.3.3" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.9.3.3.1" style="font-size:70%;">Wiki2</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T7.9.3.3.m1.1"><semantics id="S7.T7.9.3.3.m1.1a"><mo id="S7.T7.9.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.9.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T7.9.3.3.m1.1b"><ci id="S7.T7.9.3.3.m1.1.1.cmml" xref="S7.T7.9.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.9.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.9.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.10.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.10.4.4.1" style="font-size:70%;">MATH</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.10.4.4.m1.1"><semantics id="S7.T7.10.4.4.m1.1a"><mo id="S7.T7.10.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.10.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.10.4.4.m1.1b"><ci id="S7.T7.10.4.4.m1.1.1.cmml" xref="S7.T7.10.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.10.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.10.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.6.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.6.8.1" style="font-size:70%;">(GB)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.11.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.11.5.5.1" style="font-size:70%;">Wiki2</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T7.11.5.5.m1.1"><semantics id="S7.T7.11.5.5.m1.1a"><mo id="S7.T7.11.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.11.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T7.11.5.5.m1.1b"><ci id="S7.T7.11.5.5.m1.1.1.cmml" xref="S7.T7.11.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.11.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.11.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.6.6" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text" id="S7.T7.12.6.6.1" style="font-size:70%;">MATH</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S7.T7.12.6.6.m1.1"><semantics id="S7.T7.12.6.6.m1.1a"><mo id="S7.T7.12.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S7.T7.12.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S7.T7.12.6.6.m1.1b"><ci id="S7.T7.12.6.6.m1.1.1.cmml" xref="S7.T7.12.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.12.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S7.T7.12.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.1.1" style="font-size:70%;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.2.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.12.9.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.3.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.5.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.6.1" style="font-size:70%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.7.1" style="font-size:70%;">7.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.8.1" style="font-size:70%;">44.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.9.1" style="font-size:70%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.10.1" style="font-size:70%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S7.T7.12.9.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.11.1" style="font-size:70%;">7.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.12.9.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.9.12.1" style="font-size:70%;">44.92</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.1.1" style="font-size:70%;">AWQ (g128)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.2.1" style="font-size:70%;">Pile</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.12.10.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.3.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.5.1" style="font-size:70%;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.6.1" style="font-size:70%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.7.1" style="font-size:70%;">10.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.8.1" style="font-size:70%;">29.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.9.1" style="font-size:70%;">4.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.10.1" style="font-size:70%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.10.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.10.11.1" style="font-size:70%;">8.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.12.10.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.10.12.1" style="font-size:70%;">42.88</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.1.1" style="font-size:70%;">AWQ (g256)+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.2.1" style="font-size:70%;">Pile</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.11.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.3.1" style="font-size:70%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.4.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.5.1" style="font-size:70%;">3.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.6.1" style="font-size:70%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.11.7.1" style="font-size:70%;">9.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.11.8.1" style="font-size:70%;">35.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.9.1" style="font-size:70%;">4.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.10.1" style="font-size:70%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.12.11.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.11.11.1" style="font-size:70%;">8.20</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.12.11.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.11.12.1" style="font-size:70%;">42.20</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.1.1" style="font-size:70%;">SqueezeLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.2.1" style="font-size:70%;">WikiText-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.12.12.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.3.1" style="font-size:70%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.4.1" style="font-size:70%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.5.1" style="font-size:70%;">3.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.6.1" style="font-size:70%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.12.7.1" style="font-size:70%;">9.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.8.1" style="font-size:70%;">33.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.9.1" style="font-size:70%;">4.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.12.10.1" style="font-size:70%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.12.12.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.12.11.1" style="font-size:70%;">8.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.12.12.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.12.12.1" style="font-size:70%;">43.06</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.12.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.1.1" style="font-size:70%;">SqueezeLLM+ReQuant</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.2.1" style="font-size:70%;">WikiText-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.12.13.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.3.1" style="font-size:70%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.4.1" style="font-size:70%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.5.1" style="font-size:70%;">3.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.6.1" style="font-size:70%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.7.1" style="font-size:70%;">9.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S7.T7.12.13.8.1" style="font-size:70%;">35.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.9.1" style="font-size:70%;">4.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.10.1" style="font-size:70%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.12.13.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.11.1" style="font-size:70%;">8.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.12.13.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S7.T7.12.13.12.1" style="font-size:70%;">42.24</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the WikiText-2 dataset, focusing on the impact of outlier selection and significant weight detach on perplexity.  It compares the performance of the proposed ReQuant method against baselines, evaluating different settings for outlier selection and gradual weight detachment. The 'rand' row provides a control, where outliers and significant weights are randomly selected, highlighting the effectiveness of the proposed selection strategy.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation results on WikiText-2 perplexity. The “rand” line indicates that 𝐰osubscript𝐰𝑜\bm{\mathbf{w}}_{o}bold_w start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT and 𝐰ssubscript𝐰𝑠\bm{\mathbf{w}}_{s}bold_w start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT are picked out randomly from the weights.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T8.9.5">
<tr class="ltx_tr" id="S7.T8.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.5.1.1.1"><math alttext="r_{o}" class="ltx_Math" display="inline" id="S7.T8.5.1.1.1.m1.1"><semantics id="S7.T8.5.1.1.1.m1.1a"><msub id="S7.T8.5.1.1.1.m1.1.1" xref="S7.T8.5.1.1.1.m1.1.1.cmml"><mi id="S7.T8.5.1.1.1.m1.1.1.2" xref="S7.T8.5.1.1.1.m1.1.1.2.cmml">r</mi><mi id="S7.T8.5.1.1.1.m1.1.1.3" xref="S7.T8.5.1.1.1.m1.1.1.3.cmml">o</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T8.5.1.1.1.m1.1b"><apply id="S7.T8.5.1.1.1.m1.1.1.cmml" xref="S7.T8.5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S7.T8.5.1.1.1.m1.1.1.1.cmml" xref="S7.T8.5.1.1.1.m1.1.1">subscript</csymbol><ci id="S7.T8.5.1.1.1.m1.1.1.2.cmml" xref="S7.T8.5.1.1.1.m1.1.1.2">𝑟</ci><ci id="S7.T8.5.1.1.1.m1.1.1.3.cmml" xref="S7.T8.5.1.1.1.m1.1.1.3">𝑜</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T8.5.1.1.1.m1.1c">r_{o}</annotation><annotation encoding="application/x-llamapun" id="S7.T8.5.1.1.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.6.2.2.2"><math alttext="r_{s}" class="ltx_Math" display="inline" id="S7.T8.6.2.2.2.m1.1"><semantics id="S7.T8.6.2.2.2.m1.1a"><msub id="S7.T8.6.2.2.2.m1.1.1" xref="S7.T8.6.2.2.2.m1.1.1.cmml"><mi id="S7.T8.6.2.2.2.m1.1.1.2" xref="S7.T8.6.2.2.2.m1.1.1.2.cmml">r</mi><mi id="S7.T8.6.2.2.2.m1.1.1.3" xref="S7.T8.6.2.2.2.m1.1.1.3.cmml">s</mi></msub><annotation-xml encoding="MathML-Content" id="S7.T8.6.2.2.2.m1.1b"><apply id="S7.T8.6.2.2.2.m1.1.1.cmml" xref="S7.T8.6.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S7.T8.6.2.2.2.m1.1.1.1.cmml" xref="S7.T8.6.2.2.2.m1.1.1">subscript</csymbol><ci id="S7.T8.6.2.2.2.m1.1.1.2.cmml" xref="S7.T8.6.2.2.2.m1.1.1.2">𝑟</ci><ci id="S7.T8.6.2.2.2.m1.1.1.3.cmml" xref="S7.T8.6.2.2.2.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T8.6.2.2.2.m1.1c">r_{s}</annotation><annotation encoding="application/x-llamapun" id="S7.T8.6.2.2.2.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T8.6.2.2.3"><span class="ltx_text ltx_font_bold" id="S7.T8.6.2.2.3.1">Comment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.6.2.2.4"><span class="ltx_text ltx_font_bold" id="S7.T8.6.2.2.4.1">Train PPL</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.6.2.2.5"><span class="ltx_text ltx_font_bold" id="S7.T8.6.2.2.5.1">Test PPL</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.6.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.6.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.9.5.6.3">bfloat16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.6.4">10.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.6.5">9.75</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.7">
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.7.1">0.45</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.7.2">0.05</td>
<td class="ltx_td" id="S7.T8.9.5.7.3"></td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.7.4">10.95</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.7.5">10.45</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.8.1">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.8.2">0</td>
<td class="ltx_td ltx_border_t" id="S7.T8.9.5.8.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.8.4">11.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.8.5">10.52</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.9">
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.9.1">0.45</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.9.2">0</td>
<td class="ltx_td ltx_align_left" id="S7.T8.9.5.9.3">SqueezeLLM</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.9.4">11.15</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.9.5">10.62</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.10">
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.10.1">0</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.10.2">0.05</td>
<td class="ltx_td" id="S7.T8.9.5.10.3"></td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.10.4">11.15</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.10.5">10.65</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.11">
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.11.1">0</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.11.2">0</td>
<td class="ltx_td" id="S7.T8.9.5.11.3"></td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.11.4">11.30</td>
<td class="ltx_td ltx_align_center" id="S7.T8.9.5.11.5">10.80</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.12.1">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.12.2">0.05</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.9.5.12.3">rand</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.12.4">11.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.9.5.12.5">10.77</td>
</tr>
<tr class="ltx_tr" id="S7.T8.7.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.7.3.3.2">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.7.3.3.3">0.05</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.7.3.3.1"><math alttext="\beta=0.0125" class="ltx_Math" display="inline" id="S7.T8.7.3.3.1.m1.1"><semantics id="S7.T8.7.3.3.1.m1.1a"><mrow id="S7.T8.7.3.3.1.m1.1.1" xref="S7.T8.7.3.3.1.m1.1.1.cmml"><mi id="S7.T8.7.3.3.1.m1.1.1.2" xref="S7.T8.7.3.3.1.m1.1.1.2.cmml">β</mi><mo id="S7.T8.7.3.3.1.m1.1.1.1" xref="S7.T8.7.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S7.T8.7.3.3.1.m1.1.1.3" xref="S7.T8.7.3.3.1.m1.1.1.3.cmml">0.0125</mn></mrow><annotation-xml encoding="MathML-Content" id="S7.T8.7.3.3.1.m1.1b"><apply id="S7.T8.7.3.3.1.m1.1.1.cmml" xref="S7.T8.7.3.3.1.m1.1.1"><eq id="S7.T8.7.3.3.1.m1.1.1.1.cmml" xref="S7.T8.7.3.3.1.m1.1.1.1"></eq><ci id="S7.T8.7.3.3.1.m1.1.1.2.cmml" xref="S7.T8.7.3.3.1.m1.1.1.2">𝛽</ci><cn id="S7.T8.7.3.3.1.m1.1.1.3.cmml" type="float" xref="S7.T8.7.3.3.1.m1.1.1.3">0.0125</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T8.7.3.3.1.m1.1c">\beta=0.0125</annotation><annotation encoding="application/x-llamapun" id="S7.T8.7.3.3.1.m1.1d">italic_β = 0.0125</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.7.3.3.4">10.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.7.3.3.5">10.42</td>
</tr>
<tr class="ltx_tr" id="S7.T8.8.4.4">
<td class="ltx_td ltx_align_center" id="S7.T8.8.4.4.2">0.45</td>
<td class="ltx_td ltx_align_center" id="S7.T8.8.4.4.3">0.05</td>
<td class="ltx_td ltx_align_left" id="S7.T8.8.4.4.1"><math alttext="\beta=0.025" class="ltx_Math" display="inline" id="S7.T8.8.4.4.1.m1.1"><semantics id="S7.T8.8.4.4.1.m1.1a"><mrow id="S7.T8.8.4.4.1.m1.1.1" xref="S7.T8.8.4.4.1.m1.1.1.cmml"><mi id="S7.T8.8.4.4.1.m1.1.1.2" xref="S7.T8.8.4.4.1.m1.1.1.2.cmml">β</mi><mo id="S7.T8.8.4.4.1.m1.1.1.1" xref="S7.T8.8.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S7.T8.8.4.4.1.m1.1.1.3" xref="S7.T8.8.4.4.1.m1.1.1.3.cmml">0.025</mn></mrow><annotation-xml encoding="MathML-Content" id="S7.T8.8.4.4.1.m1.1b"><apply id="S7.T8.8.4.4.1.m1.1.1.cmml" xref="S7.T8.8.4.4.1.m1.1.1"><eq id="S7.T8.8.4.4.1.m1.1.1.1.cmml" xref="S7.T8.8.4.4.1.m1.1.1.1"></eq><ci id="S7.T8.8.4.4.1.m1.1.1.2.cmml" xref="S7.T8.8.4.4.1.m1.1.1.2">𝛽</ci><cn id="S7.T8.8.4.4.1.m1.1.1.3.cmml" type="float" xref="S7.T8.8.4.4.1.m1.1.1.3">0.025</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T8.8.4.4.1.m1.1c">\beta=0.025</annotation><annotation encoding="application/x-llamapun" id="S7.T8.8.4.4.1.m1.1d">italic_β = 0.025</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S7.T8.8.4.4.4">10.94</td>
<td class="ltx_td ltx_align_center" id="S7.T8.8.4.4.5">10.42</td>
</tr>
<tr class="ltx_tr" id="S7.T8.9.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.9.5.5.2">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.9.5.5.3">0.05</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T8.9.5.5.1"><math alttext="\beta=0.05" class="ltx_Math" display="inline" id="S7.T8.9.5.5.1.m1.1"><semantics id="S7.T8.9.5.5.1.m1.1a"><mrow id="S7.T8.9.5.5.1.m1.1.1" xref="S7.T8.9.5.5.1.m1.1.1.cmml"><mi id="S7.T8.9.5.5.1.m1.1.1.2" xref="S7.T8.9.5.5.1.m1.1.1.2.cmml">β</mi><mo id="S7.T8.9.5.5.1.m1.1.1.1" xref="S7.T8.9.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S7.T8.9.5.5.1.m1.1.1.3" xref="S7.T8.9.5.5.1.m1.1.1.3.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S7.T8.9.5.5.1.m1.1b"><apply id="S7.T8.9.5.5.1.m1.1.1.cmml" xref="S7.T8.9.5.5.1.m1.1.1"><eq id="S7.T8.9.5.5.1.m1.1.1.1.cmml" xref="S7.T8.9.5.5.1.m1.1.1.1"></eq><ci id="S7.T8.9.5.5.1.m1.1.1.2.cmml" xref="S7.T8.9.5.5.1.m1.1.1.2">𝛽</ci><cn id="S7.T8.9.5.5.1.m1.1.1.3.cmml" type="float" xref="S7.T8.9.5.5.1.m1.1.1.3">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S7.T8.9.5.5.1.m1.1c">\beta=0.05</annotation><annotation encoding="application/x-llamapun" id="S7.T8.9.5.5.1.m1.1d">italic_β = 0.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.9.5.5.4">10.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.9.5.5.5">10.45</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference speed comparison between different quantization methods with and without the proposed ReQuant technique.  It shows the time taken for pre-filling (preparing data), decoding (processing the data), and the total inference time for various model sizes and precision levels. The results are useful for assessing the performance impact of ReQuant on inference speed and for understanding the tradeoff between accuracy and speed.
> <details>
> <summary>read the caption</summary>
> Table 9: Inference speed of Dense-and-Sparse decomposition.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T9.1.1">
<tr class="ltx_tr" id="S7.T9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T9.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T9.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T9.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.3.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.4.1">Prefilling</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.5.1">Decoding</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T9.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.1.6.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.2">
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.2.1">(ms)</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.2.2">(ms)</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.2.3">(ms)</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.3.1">1B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.3.2">4-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.3.3">AWQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.3.4.1">13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.3.5.1">23768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.3.6.1">23781</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.4">
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.4.1">1B</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.4.2">4-bit</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.4.3">AWQ+PQI</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.4.4">18</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.4.5">35204</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.4.6">35222</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.5.1">1B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.5.2">4-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.5.3">SqueezeLLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.5.4">86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.5.5">47151</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.5.6">47237</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.6">
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.6.1">1B</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.6.2">4-bit</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.6.3">SqueezeLLM+ReQuant</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.6.4.1">29</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.6.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.6.5.1">45266</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.6.6.1">45295</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.7.1">1B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.7.2">3-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.7.3">SqueezeLLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.7.4.1">85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.7.5">33657</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.7.6">33742</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.8">
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.8.1">1B</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.8.2">3-bit</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.8.3">SqueezeLLM+ReQuant</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.8.4">86</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.8.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.8.5.1">32568</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.8.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.8.6.1">32654</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.9.1">3B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.9.2">4-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.9.3">AWQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.9.4">31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.9.5">59631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.9.6">59662</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.10">
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.10.1">3B</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.10.2">4-bit</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.10.3">AWQ+ReQuant</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.10.4">31</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.10.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.10.5.1">59174</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.10.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.10.6.1">59205</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.11.1">3B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.11.2">4-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.11.3">SqueezeLLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.11.4">230</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.11.5">56882</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.11.6">57112</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.12">
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.12.1">3B</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.12.2">4-bit</td>
<td class="ltx_td ltx_align_left" id="S7.T9.1.1.12.3">SqueezeLLM+ReQuant</td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.12.4"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.12.4.1">68</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.12.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.12.5.1">56372</span></td>
<td class="ltx_td ltx_align_center" id="S7.T9.1.1.12.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.12.6.1">56440</span></td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.13.1">3B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.13.2">3-bit</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T9.1.1.13.3">SqueezeLLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.13.4">229</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.13.5">56343</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T9.1.1.13.6">56572</td>
</tr>
<tr class="ltx_tr" id="S7.T9.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T9.1.1.14.1">3B</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T9.1.1.14.2">3-bit</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T9.1.1.14.3">SqueezeLLM+ReQuant</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T9.1.1.14.4">229</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T9.1.1.14.5"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.14.5.1">54640</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T9.1.1.14.6"><span class="ltx_text ltx_font_bold" id="S7.T9.1.1.14.6.1">54869</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the experiments for three different post-training quantization methods: AWQ, SqueezeLLM, and QTIP.  For each method, it specifies the calibration dataset used, the sequence length of the calibration data, the number of intervals (N) used for the numerical integration in PQI, and the number of times (n) the dataset was sampled for calculations. It also gives the parameters rs and β used in the ReQuant method, representing the percentage of weights detached and the step size for that detachment respectively. 
> <details>
> <summary>read the caption</summary>
> Table 10: Experimental hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.8.8">
<tr class="ltx_tr" id="A2.T10.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T10.8.8.9.1"><span class="ltx_text ltx_font_bold" id="A2.T10.8.8.9.1.1">Setting</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T10.8.8.9.2"><span class="ltx_text ltx_font_bold" id="A2.T10.8.8.9.2.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.8.8.9.3"><span class="ltx_text ltx_font_bold" id="A2.T10.8.8.9.3.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.8.8.10.1" rowspan="5"><span class="ltx_text" id="A2.T10.8.8.10.1.1">AWQ</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.8.8.10.2">calib set (all)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.8.8.10.3">Pile</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.11">
<td class="ltx_td ltx_align_left" id="A2.T10.8.8.11.1">calib sequence length</td>
<td class="ltx_td ltx_align_center" id="A2.T10.8.8.11.2">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.1">
<td class="ltx_td ltx_align_left" id="A2.T10.1.1.1.1"><math alttext="N" class="ltx_Math" display="inline" id="A2.T10.1.1.1.1.m1.1"><semantics id="A2.T10.1.1.1.1.m1.1a"><mi id="A2.T10.1.1.1.1.m1.1.1" xref="A2.T10.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A2.T10.1.1.1.1.m1.1b"><ci id="A2.T10.1.1.1.1.m1.1.1.cmml" xref="A2.T10.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A2.T10.1.1.1.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.2">32</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.2">
<td class="ltx_td ltx_align_left" id="A2.T10.2.2.2.1"><math alttext="n" class="ltx_Math" display="inline" id="A2.T10.2.2.2.1.m1.1"><semantics id="A2.T10.2.2.2.1.m1.1a"><mi id="A2.T10.2.2.2.1.m1.1.1" xref="A2.T10.2.2.2.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="A2.T10.2.2.2.1.m1.1b"><ci id="A2.T10.2.2.2.1.m1.1.1.cmml" xref="A2.T10.2.2.2.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.2.2.2.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="A2.T10.2.2.2.1.m1.1d">italic_n</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.2">100</td>
</tr>
<tr class="ltx_tr" id="A2.T10.3.3.3">
<td class="ltx_td ltx_align_left" id="A2.T10.3.3.3.1"><math alttext="r_{s}/\beta" class="ltx_Math" display="inline" id="A2.T10.3.3.3.1.m1.1"><semantics id="A2.T10.3.3.3.1.m1.1a"><mrow id="A2.T10.3.3.3.1.m1.1.1" xref="A2.T10.3.3.3.1.m1.1.1.cmml"><msub id="A2.T10.3.3.3.1.m1.1.1.2" xref="A2.T10.3.3.3.1.m1.1.1.2.cmml"><mi id="A2.T10.3.3.3.1.m1.1.1.2.2" xref="A2.T10.3.3.3.1.m1.1.1.2.2.cmml">r</mi><mi id="A2.T10.3.3.3.1.m1.1.1.2.3" xref="A2.T10.3.3.3.1.m1.1.1.2.3.cmml">s</mi></msub><mo id="A2.T10.3.3.3.1.m1.1.1.1" xref="A2.T10.3.3.3.1.m1.1.1.1.cmml">/</mo><mi id="A2.T10.3.3.3.1.m1.1.1.3" xref="A2.T10.3.3.3.1.m1.1.1.3.cmml">β</mi></mrow><annotation-xml encoding="MathML-Content" id="A2.T10.3.3.3.1.m1.1b"><apply id="A2.T10.3.3.3.1.m1.1.1.cmml" xref="A2.T10.3.3.3.1.m1.1.1"><divide id="A2.T10.3.3.3.1.m1.1.1.1.cmml" xref="A2.T10.3.3.3.1.m1.1.1.1"></divide><apply id="A2.T10.3.3.3.1.m1.1.1.2.cmml" xref="A2.T10.3.3.3.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T10.3.3.3.1.m1.1.1.2.1.cmml" xref="A2.T10.3.3.3.1.m1.1.1.2">subscript</csymbol><ci id="A2.T10.3.3.3.1.m1.1.1.2.2.cmml" xref="A2.T10.3.3.3.1.m1.1.1.2.2">𝑟</ci><ci id="A2.T10.3.3.3.1.m1.1.1.2.3.cmml" xref="A2.T10.3.3.3.1.m1.1.1.2.3">𝑠</ci></apply><ci id="A2.T10.3.3.3.1.m1.1.1.3.cmml" xref="A2.T10.3.3.3.1.m1.1.1.3">𝛽</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.3.3.3.1.m1.1c">r_{s}/\beta</annotation><annotation encoding="application/x-llamapun" id="A2.T10.3.3.3.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT / italic_β</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.3.3.3.2">2</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.8.8.12.1" rowspan="5"><span class="ltx_text" id="A2.T10.8.8.12.1.1">SqueezeLLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.8.8.12.2">calib set (all)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.8.8.12.3">WikiText-2</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.13">
<td class="ltx_td ltx_align_left" id="A2.T10.8.8.13.1">calib sequence length</td>
<td class="ltx_td ltx_align_center" id="A2.T10.8.8.13.2">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T10.4.4.4">
<td class="ltx_td ltx_align_left" id="A2.T10.4.4.4.1"><math alttext="N" class="ltx_Math" display="inline" id="A2.T10.4.4.4.1.m1.1"><semantics id="A2.T10.4.4.4.1.m1.1a"><mi id="A2.T10.4.4.4.1.m1.1.1" xref="A2.T10.4.4.4.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A2.T10.4.4.4.1.m1.1b"><ci id="A2.T10.4.4.4.1.m1.1.1.cmml" xref="A2.T10.4.4.4.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.4.4.4.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A2.T10.4.4.4.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.4.4.4.2">32</td>
</tr>
<tr class="ltx_tr" id="A2.T10.5.5.5">
<td class="ltx_td ltx_align_left" id="A2.T10.5.5.5.1"><math alttext="n" class="ltx_Math" display="inline" id="A2.T10.5.5.5.1.m1.1"><semantics id="A2.T10.5.5.5.1.m1.1a"><mi id="A2.T10.5.5.5.1.m1.1.1" xref="A2.T10.5.5.5.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="A2.T10.5.5.5.1.m1.1b"><ci id="A2.T10.5.5.5.1.m1.1.1.cmml" xref="A2.T10.5.5.5.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.5.5.5.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="A2.T10.5.5.5.1.m1.1d">italic_n</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.5.5.5.2">100</td>
</tr>
<tr class="ltx_tr" id="A2.T10.6.6.6">
<td class="ltx_td ltx_align_left" id="A2.T10.6.6.6.1"><math alttext="r_{s}/\beta" class="ltx_Math" display="inline" id="A2.T10.6.6.6.1.m1.1"><semantics id="A2.T10.6.6.6.1.m1.1a"><mrow id="A2.T10.6.6.6.1.m1.1.1" xref="A2.T10.6.6.6.1.m1.1.1.cmml"><msub id="A2.T10.6.6.6.1.m1.1.1.2" xref="A2.T10.6.6.6.1.m1.1.1.2.cmml"><mi id="A2.T10.6.6.6.1.m1.1.1.2.2" xref="A2.T10.6.6.6.1.m1.1.1.2.2.cmml">r</mi><mi id="A2.T10.6.6.6.1.m1.1.1.2.3" xref="A2.T10.6.6.6.1.m1.1.1.2.3.cmml">s</mi></msub><mo id="A2.T10.6.6.6.1.m1.1.1.1" xref="A2.T10.6.6.6.1.m1.1.1.1.cmml">/</mo><mi id="A2.T10.6.6.6.1.m1.1.1.3" xref="A2.T10.6.6.6.1.m1.1.1.3.cmml">β</mi></mrow><annotation-xml encoding="MathML-Content" id="A2.T10.6.6.6.1.m1.1b"><apply id="A2.T10.6.6.6.1.m1.1.1.cmml" xref="A2.T10.6.6.6.1.m1.1.1"><divide id="A2.T10.6.6.6.1.m1.1.1.1.cmml" xref="A2.T10.6.6.6.1.m1.1.1.1"></divide><apply id="A2.T10.6.6.6.1.m1.1.1.2.cmml" xref="A2.T10.6.6.6.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T10.6.6.6.1.m1.1.1.2.1.cmml" xref="A2.T10.6.6.6.1.m1.1.1.2">subscript</csymbol><ci id="A2.T10.6.6.6.1.m1.1.1.2.2.cmml" xref="A2.T10.6.6.6.1.m1.1.1.2.2">𝑟</ci><ci id="A2.T10.6.6.6.1.m1.1.1.2.3.cmml" xref="A2.T10.6.6.6.1.m1.1.1.2.3">𝑠</ci></apply><ci id="A2.T10.6.6.6.1.m1.1.1.3.cmml" xref="A2.T10.6.6.6.1.m1.1.1.3">𝛽</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.6.6.6.1.m1.1c">r_{s}/\beta</annotation><annotation encoding="application/x-llamapun" id="A2.T10.6.6.6.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT / italic_β</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.6.6.6.2">2</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T10.8.8.14.1" rowspan="5"><span class="ltx_text" id="A2.T10.8.8.14.1.1">QTIP</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.8.8.14.2">calib set (Hessian)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.8.8.14.3">RedPajama</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.15">
<td class="ltx_td ltx_align_left" id="A2.T10.8.8.15.1">calib set (ReQuant, base models)</td>
<td class="ltx_td ltx_align_center" id="A2.T10.8.8.15.2">WikiText-2</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.16">
<td class="ltx_td ltx_align_left" id="A2.T10.8.8.16.1">calib set (ReQuant, instruction following models)</td>
<td class="ltx_td ltx_align_center" id="A2.T10.8.8.16.2">Tulu 3</td>
</tr>
<tr class="ltx_tr" id="A2.T10.7.7.7">
<td class="ltx_td ltx_align_left" id="A2.T10.7.7.7.1"><math alttext="N" class="ltx_Math" display="inline" id="A2.T10.7.7.7.1.m1.1"><semantics id="A2.T10.7.7.7.1.m1.1a"><mi id="A2.T10.7.7.7.1.m1.1.1" xref="A2.T10.7.7.7.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A2.T10.7.7.7.1.m1.1b"><ci id="A2.T10.7.7.7.1.m1.1.1.cmml" xref="A2.T10.7.7.7.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.7.7.7.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A2.T10.7.7.7.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T10.7.7.7.2">32</td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T10.8.8.8.1"><math alttext="r_{s}/\beta" class="ltx_Math" display="inline" id="A2.T10.8.8.8.1.m1.1"><semantics id="A2.T10.8.8.8.1.m1.1a"><mrow id="A2.T10.8.8.8.1.m1.1.1" xref="A2.T10.8.8.8.1.m1.1.1.cmml"><msub id="A2.T10.8.8.8.1.m1.1.1.2" xref="A2.T10.8.8.8.1.m1.1.1.2.cmml"><mi id="A2.T10.8.8.8.1.m1.1.1.2.2" xref="A2.T10.8.8.8.1.m1.1.1.2.2.cmml">r</mi><mi id="A2.T10.8.8.8.1.m1.1.1.2.3" xref="A2.T10.8.8.8.1.m1.1.1.2.3.cmml">s</mi></msub><mo id="A2.T10.8.8.8.1.m1.1.1.1" xref="A2.T10.8.8.8.1.m1.1.1.1.cmml">/</mo><mi id="A2.T10.8.8.8.1.m1.1.1.3" xref="A2.T10.8.8.8.1.m1.1.1.3.cmml">β</mi></mrow><annotation-xml encoding="MathML-Content" id="A2.T10.8.8.8.1.m1.1b"><apply id="A2.T10.8.8.8.1.m1.1.1.cmml" xref="A2.T10.8.8.8.1.m1.1.1"><divide id="A2.T10.8.8.8.1.m1.1.1.1.cmml" xref="A2.T10.8.8.8.1.m1.1.1.1"></divide><apply id="A2.T10.8.8.8.1.m1.1.1.2.cmml" xref="A2.T10.8.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="A2.T10.8.8.8.1.m1.1.1.2.1.cmml" xref="A2.T10.8.8.8.1.m1.1.1.2">subscript</csymbol><ci id="A2.T10.8.8.8.1.m1.1.1.2.2.cmml" xref="A2.T10.8.8.8.1.m1.1.1.2.2">𝑟</ci><ci id="A2.T10.8.8.8.1.m1.1.1.2.3.cmml" xref="A2.T10.8.8.8.1.m1.1.1.2.3">𝑠</ci></apply><ci id="A2.T10.8.8.8.1.m1.1.1.3.cmml" xref="A2.T10.8.8.8.1.m1.1.1.3">𝛽</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.8.8.8.1.m1.1c">r_{s}/\beta</annotation><annotation encoding="application/x-llamapun" id="A2.T10.8.8.8.1.m1.1d">italic_r start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT / italic_β</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.8.8.8.2">2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the estimated GPU time (in hours) required for calculating the Post-quantization Integral (PQI) on an A100 GPU.  It details the computation time for different model sizes (Llama 3.2 1B and 3.2 3B) and calibration datasets (WikiText-2 and Tulu 3) with varying numbers of samples (n). The size of the dataset used to calculate PQI significantly impacts the computational cost.
> <details>
> <summary>read the caption</summary>
> Table 11: GPU Hours of doing integral on A100.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01901/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01901/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}