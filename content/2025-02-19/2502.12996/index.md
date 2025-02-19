---
title: "Eager Updates For Overlapped Communication and Computation in DiLoCo"
summary: "Eager updates drastically speed up training massive language models by cleverly overlapping communication and computation in DiLoCo, achieving near-optimal performance even with low bandwidth."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Federated Learning", "🏢 Google DeepMind",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12996 {{< /keyword >}}
{{< keyword icon="writer" >}} Satyen Kale et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12996" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12996" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12996/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training extremely large language models requires distributed computing, but communication between machines can be a major bottleneck.  Existing methods like DiLoCo reduce communication but still suffer from delays due to synchronization steps. This creates idle time on the computing machines, wasting resources and slowing down the overall training process. 

This paper introduces a new technique called "eager updates" that overlaps communication with computation in the DiLoCo algorithm. Eager updates use locally computed gradients to start the next step before waiting for all gradients to be collected, thus greatly reducing idle time.  Experiments show that eager updates are highly efficient, offering performance similar to standard DiLoCo while significantly improving compute utilization, particularly in low-bandwidth situations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Eager updates significantly reduce the performance penalty of delayed outer gradients in DiLoCo, achieving performance close to standard DiLoCo. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Eager updates improve compute utilization compared to standard DiLoCo, especially in low-bandwidth settings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method is compatible with other DiLoCo improvements such as Streaming DiLoCo and quantized communication. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in distributed machine learning, especially those working with large language models.  It **directly addresses the communication bottleneck** that hinders efficient training of large models across multiple machines. The proposed method, eager updates, offers a **practical solution to improve training speed and resource utilization**, which is highly relevant to current research trends in scaling deep learning.  It also **opens up new avenues for optimizing distributed training algorithms**, inviting further exploration in this important field. 

------
#### Visual Insights



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/std-diloco.png)

> 🔼 Figure 1 illustrates the data flow and operations within the standard DiLoCo algorithm.  DiLoCo divides the training process into inner and outer optimization phases. In the inner phase, four workers (shown in the diagram) concurrently perform multiple optimization steps using their local data. This phase involves only local computation. Then, in the outer phase, these workers communicate their updates (outer gradients) and collectively average them. This averaged outer gradient is then applied to update the global model parameters, thus completing one iteration. The process repeats, alternating between parallel inner optimization and synchronized outer gradient averaging.
> <details>
> <summary>read the caption</summary>
> Figure 1: Data flow and operations in standard DiLoCo. Here, 4 workers execute in parallel and alternate sequentially computation (the outer and inner optimization steps) and communication (averaging outer gradients across workers).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.5.5.5.6">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.7">Token Budget</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1">Hours spent w/ <math alttext="+\infty" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mo id="S3.T1.1.1.1.1.m1.1.1a" xref="S3.T1.1.1.1.1.m1.1.1.cmml">+</mo><mi id="S3.T1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">∞</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><plus id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"></plus><infinity id="S3.T1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.2"></infinity></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">+\infty</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">+ ∞</annotation></semantics></math> Gbits/s</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.8">Hours spent w/ 1 Gbits/s</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.5.5.5.9">Terabytes exchanged</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2.2">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3.3">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4.4">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5.5">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.5.5.6.1.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.5.6.1.1.1">Data-Parallel</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.3">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.4">109</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.6.1.5">441</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.6">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.7.1">42.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.8">67.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.5.6.1.9"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1.9.1">40.42</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.7.2">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.1">100B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.2">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.3">438</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.7.2.4">1,767</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.5">2.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.6">49.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7.2.7">69.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.7.2.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.7.2.8.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.8.3">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.1">250B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.2">6.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.3">1097</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.8.3.4">4,418</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.8.3.5.1">2.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.6">53.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.7">70.45</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.8.3.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.8.3.8.1">44.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.9.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.5.5.9.4.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.5.9.4.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.5.5.9.4.1.1.1" style="width:99.6pt;">
<span class="ltx_p" id="S3.T1.5.5.9.4.1.1.1.1">Streaming DiLoCo</span>
<span class="ltx_p ltx_align_center" id="S3.T1.5.5.9.4.1.1.1.2">with 1-inner-step overlap</span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.3">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.4">0.88</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.9.4.5">1.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.9.4.6.1">2.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.7">42.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.9.4.8.1">67.46</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.5.9.4.9">38.42</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.10.5">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.1">100B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.2">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.3">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.10.5.4">4.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.5.1">2.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.6.1">49.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.7.1">69.96</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.10.5.8"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.8.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.11.6">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.1">250B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.2">6.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.3">8.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.11.6.4">11.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.5.1">2.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.6.1">54.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.11.6.7"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.11.6.7.1">71.38</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.11.6.8">41.92</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.12.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.5.5.12.7.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.5.12.7.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.5.5.12.7.1.1.1" style="width:99.6pt;">
<span class="ltx_p" id="S3.T1.5.5.12.7.1.1.1.1">Streaming DiLoCo</span>
<span class="ltx_p ltx_align_center" id="S3.T1.5.5.12.7.1.1.1.2">with 1-outer-step overlap</span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.2">25B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.3">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.4">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.12.7.5">1.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.6">2.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.7">40.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.8">66.87</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.5.12.7.9">39.12</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.13.8">
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.1">100B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.2">2.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.3">2.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.13.8.4">4.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.5">2.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.6">49.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.13.8.7">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.13.8.8">41.05</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.14.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.1">250B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.2">6.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.3">6.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.5.14.9.4">11.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.5">2.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.6">53.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.7">69.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.5.14.9.8">41.93</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of Data-Parallel and the proposed method (1-outer-step eager overlap) on the Dolma dataset when training a 1-billion parameter model.  The key finding is that the proposed method achieves comparable or slightly better performance while requiring significantly less communication. Specifically, it reduces the total bits exchanged by a factor of 400 and the peak bandwidth by a factor of 8.  Importantly, this improved efficiency is achieved while allowing communication latency to extend to the length of a complete inner optimization phase.
> <details>
> <summary>read the caption</summary>
> Table 1: Overtraining Data-Parallel and our method on Dolma with a 1 billion parameters model. The latter performs slightly better despite exchanging in total 400×400\times400 × fewer bits, reducing the peak bandwidth by 8×8\times8 ×, and with a significantly relaxed training communication latency constraint: allowing communication to be as long as a full inner optimization phase.
> </details>





### In-depth insights


#### Eager Updates' Impact
The impact of eager updates in the context of distributed model training, specifically within the DiLoCo framework, is multifaceted.  **Eager updates significantly improve compute utilization by overlapping communication and computation**. This is particularly beneficial in settings with low bandwidth between workers, a common challenge in large-scale distributed training. The eager approach, while showing competitive performance to standard DiLoCo in terms of training loss, **demonstrates a considerable reduction in the required bandwidth to achieve comparable compute utilization**.  This is crucial because it reduces the overall training time by minimizing idle periods where workers wait for inter-worker communication to complete.  However, a naive implementation of overlapped updates can lead to worse convergence, emphasizing the importance of the proposed 'eager' modification which skillfully leverages local gradients as a proxy for the final aggregated outer gradients.  **The experimental results highlight the tradeoff between bandwidth efficiency and speed of convergence**, showing that this tradeoff is model and dataset size dependent.  While eager updates do not always achieve lower loss than other approaches, the substantial gains in compute utilization and reduced bandwidth requirements make it a powerful technique for large-scale distributed model training.

#### Overlapping Comm
The concept of "Overlapping Comm," likely referring to overlapping communication with computation, is a crucial optimization strategy in distributed training, especially for large language models.  The core idea is to **reduce the idle time** during communication phases by performing computation concurrently.  This is particularly beneficial in settings with high computational power but **limited bandwidth** between workers, which is a common constraint in large-scale distributed training.  The paper likely explores different techniques to achieve this overlap, such as initiating the next inner optimization phase before the current outer communication phase is fully completed, potentially using locally computed gradients as proxies for fully aggregated results until the latter becomes available.  The effectiveness of such techniques is evaluated based on various factors, including **training speed, convergence, and compute utilization**. The results likely demonstrate that carefully designed overlapping communication strategies can significantly enhance the efficiency of distributed training while maintaining performance comparable to standard methods that lack the overlap.  **Eager updates**, a particular variant of overlapping communication, may be introduced and investigated, showcasing its competitive performance and compute efficiency compared to other approaches.

#### DiLoCo Algorithm
The DiLoCo algorithm is a distributed optimization method particularly effective for training large language models.  It cleverly divides the training process into **inner and outer optimization phases**.  The inner phase involves independent optimization steps on local data by multiple workers, minimizing communication overhead. The outer phase synchronizes these local updates through an all-reduce operation, updating global parameters. This two-stage approach significantly reduces communication compared to traditional data-parallel methods. However, the synchronization step can become a bottleneck in low-bandwidth settings. This paper introduces eager updates, a modification that aims to alleviate this issue by overlapping communication with computation, allowing the outer optimization to commence before the previous all-reduce operation is complete.  **This overlap is achieved by using locally computed outer gradients as a proxy** for the full all-reduced gradients, thereby reducing idle time. Eager updates demonstrate competitive performance with standard DiLoCo in low-bandwidth scenarios, improving compute efficiency, but further research into convergence guarantees and optimal hyperparameter settings is recommended.

#### Large-Scale Training
Large-scale training of large language models (LLMs) presents significant challenges.  **Computational resources** required are enormous, demanding powerful hardware and infrastructure.  **Data requirements** are equally massive, necessitating vast datasets for effective training.  **Communication overhead** becomes a major bottleneck in distributed settings, as massive amounts of data need to be transferred between numerous machines.  **Techniques to overcome these challenges** include model parallelism, data parallelism, pipeline parallelism, and various optimization strategies.  **Efficient communication protocols** are crucial for reducing the communication bottleneck.  **Quantized communication** methods reduce the bandwidth needed, but at the potential cost of accuracy.  **Overlapping communication with computation** is a key strategy to improve efficiency, and the research paper explores this through the use of eager updates.  **Algorithm design** plays a critical role, with methods like DiLoCo attempting to reduce communication needs.  **Scalability** is paramount, with algorithms needing to perform effectively across different hardware configurations and model sizes.  **Overtraining** issues might arise due to large datasets and computational power, so careful monitoring and techniques are needed.  **Hardware advancements**, like specialized AI accelerators, are critical to enabling large-scale training.  Ultimately, successful large-scale training requires careful integration of efficient algorithms, optimized hardware, and effective communication strategies.

#### Future Directions
Future research could explore several promising avenues. **Extending the eager update mechanism to other distributed optimization algorithms beyond DiLoCo** would broaden its applicability and impact.  Investigating the theoretical convergence properties of eager updates under various network conditions and model architectures is crucial for establishing its robustness.  **Developing more sophisticated techniques for handling stragglers** in the distributed setting would further enhance the efficiency and stability of the proposed method.  Additionally, **exploring the interplay between eager updates and different quantization methods** could lead to significant improvements in communication efficiency.  Finally, a deeper investigation into the optimal choice of hyperparameters, such as the synchronization frequency and the number of inner optimization steps, could unlock further performance gains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/delayed-diloco.png)

> 🔼 Figure 2 illustrates the process of DiLoCo with delayed outer gradients.  Multiple workers perform inner optimization steps concurrently.  The communication for averaging the outer gradients happens in parallel with the next inner optimization phase. The application of the averaged outer gradient in the outer optimizer is delayed until after the next inner phase completes. This overlapping of communication and computation reduces idle time.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data flow and operations in DiLoCo with delayed outer gradients. Here, 4 workers execute optimization steps in parallel with each other, as well as with the communication required for averaging outer gradients. This is accomplished by delaying the application of the averaged outer gradient in the outer optimizer.
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/bandwidth_1b.png)

> 🔼 The figure shows the compute utilization simulated across a range of bandwidth for a model with 1 billion parameters. Compute utilization is defined as the percentage of time spent on computation versus communication.  The plot illustrates how different methods (Data-Parallel, Streaming DiLoCo with various overlapping strategies) perform across different bandwidths, revealing the impact of bandwidth limitations on compute efficiency. It highlights the improvements achieved using the proposed eager updates method in reducing the communication overhead and maximizing compute utilization, particularly in low-bandwidth scenarios.
> <details>
> <summary>read the caption</summary>
> (a) 1B parameters model.
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/bandwidth_10b.png)

> 🔼 This figure displays the compute utilization simulated across various bandwidths for a 10 billion parameter model. Compute utilization is defined as the percentage of time spent on computation, with the remaining time dedicated to communication.  The graph compares different distributed training methods, illustrating how the compute utilization changes as bandwidth varies. This helps visualize the efficiency of each method in balancing computational work with communication overhead.
> <details>
> <summary>read the caption</summary>
> (b) 10B parameters model
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/bandwidth_100b.png)

> 🔼 This figure shows the compute utilization simulated across a range of bandwidth for a model with 100 billion parameters. Compute utilization is defined as the percentage of time spent on computation versus communication.  The figure compares different distributed training methods: Data-Parallel, Streaming DiLoCo (with various overlap configurations for inner and outer optimization steps), and Streaming DiLoCo with 1-inner-step and 1-outer-step overlapped forward and backward passes.  It demonstrates the effect of bandwidth on compute utilization for each method, showing that the proposed methods significantly improve compute utilization, especially at lower bandwidths.
> <details>
> <summary>read the caption</summary>
> (c) 100B parameters model
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/scaling_loss.png)

> 🔼 This figure illustrates the compute utilization achieved by various distributed training methods across a range of network bandwidths.  Compute utilization represents the percentage of time spent on actual computation versus communication.  The results show that the proposed 'eager updates' method significantly improves compute utilization, achieving nearly 95% utilization for models with 1B, 10B, and 100B parameters, even with relatively low bandwidth (1-5 Gbit/s). In contrast, the standard data-parallel method requires much higher bandwidth (100-300 Gbit/s) to achieve comparable utilization.
> <details>
> <summary>read the caption</summary>
> Figure 3: Compute Utilization simulated across a range of bandwidth. A compute utilization of 0.8 means 80% of the time is spent in computation, and 20% in communication. Our best method reaches a compute utilization of 95% for models 1B, 10B, and 100B with a bandwidth roughly constant between 1 and 5 Gbit/s. Data-Parallel on the other hand requires 100, 200, and 300Gbit/s.
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/scaling_hellaswag.png)

> 🔼 The figure shows the evaluation loss on the C4 dataset for various models, comparing the performance of different distributed training methods. The x-axis represents the total training FLOPs, and the y-axis represents the evaluation loss. This provides insights into how different training methods scale with model size and computational resources.
> <details>
> <summary>read the caption</summary>
> (a) Evaluation loss on C4
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/stale_vs_eager_h.png)

> 🔼 The plot shows how the HellaSwag accuracy changes as the total training FLOPS increases for different distributed training methods.  The x-axis represents the total number of floating point operations (FLOPs) performed during training, while the y-axis shows the HellaSwag accuracy achieved. Each line corresponds to a different training method: Data-Parallel, Streaming DiLoCo with 1-inner-step overlap (H=30 and H=100), and Streaming DiLoCo with 1-outer-eager-overlap (H=30 and H=100). The figure illustrates how the accuracy improves as the total training FLOPS increases, but at different rates for each training method, providing insights into their comparative performance and efficiency at various scales.
> <details>
> <summary>read the caption</summary>
> (b) HellaSwag accuracy
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/cu_overlap.png)

> 🔼 This figure displays scaling results for language models trained on the C4 dataset, demonstrating model performance across different scales.  The x-axis represents the total number of training FLOPs (floating-point operations), ranging from 1.49e17 for the 35M parameter model to 1.9e20 for the 1B parameter model. The y-axis shows two key performance metrics: evaluation loss on the C4 dataset (Figure 4a) and HellaSwag accuracy (Figure 4b).  Each line represents a different training method. The purpose is to visualize how model performance (loss and accuracy) changes with model size, comparing various distributed training methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Scaling models from 35M (1.49e17 flops) to 1B parameters (1.9e20 flops) on C4.
> </details>



![](https://arxiv.org/html/2502.12996/extracted/6214305/figures/loss_change_compression.png)

> 🔼 This figure compares two approaches for overlapping communication with computation in DiLoCo, a distributed optimization method.  The x-axis represents the number of inner optimization steps (H) performed before a synchronization step. The y-axis shows the evaluation loss on a benchmark dataset. The blue line shows the performance of the 'eager updates' method, which starts the next inner optimization step immediately after sending the outer gradient, using a local outer gradient estimate as a proxy. The orange line shows the performance of the 'naïve delayed outer gradients' method, which only starts the next inner step after the synchronization step is complete. The results show that the eager update strategy maintains performance even with a large H, while the naive delayed version suffers significantly increased loss as H grows.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of overlapping communication over an outer step, using the naïve delayed version (Algorithm 2) and the eager version (Algorithm 3) when varying the number of inner steps H𝐻Hitalic_H.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.5.5.5.6">Communication overlap</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1">Tolerated latency in sec. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2.2">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3.3">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.4.4.4.4">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.5.5.5">Arc-Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.5.5.6.1.1">No overlap</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.5.5.6.1.2">0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.6.1.3.1">2.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.6.1.4.1">38.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.6.1.5">66.59</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.5.5.6.1.6">34.91</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.7.2.1">1-inner-step</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.7.2.2">0.08</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.7.2.3.1">2.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.7.2.4">37.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.7.2.5">66.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.5.7.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.7.2.6.1">36.14</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.8.3.1">1-outer-step delayed</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.8.3.2">2.4</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.3.3">3.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.3.4">29.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.3.5">60.93</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.5.8.3.6">34.73</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.9.4.1">1-outer-step delayed, lowered LR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.9.4.2">2.4</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.4.3">2.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.4.4">35.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.4.5">64.96</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.5.9.4.6">34.21</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.10.5.1">1-outer-step eager</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.10.5.2">2.4</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.5.3">2.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.5.4">37.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.10.5.5.1">66.86</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.5.10.5.6">34.91</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.5.5.11.6.1">2-outer-steps eager</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.5.5.11.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.11.6.2.1">4.8</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.11.6.3">2.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.11.6.4">36.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.11.6.5">64.85</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.5.5.11.6.6">35.43</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 showcases the effects of different communication overlap strategies on model training performance for a 500 million parameter model.  It compares the standard approach with no overlap, overlapping one inner optimization step (as suggested in prior work by Douillard et al.), and the proposed approach which overlaps a single outer optimization step with up to 2.4 seconds of communication. The impact on training loss, HellaSwag accuracy, Piqa accuracy, and Arc-Easy accuracy is evaluated.  The table highlights the trade-offs between communication efficiency and overall training speed/convergence.
> <details>
> <summary>read the caption</summary>
> Table 2: Communication overlap comparison for a 500M parameters model, performing a step (forward & backward) in 0.08 seconds. Overlapping 1-inner-step as proposed by (Douillard et al., 2025) allows communication to take 0.08 seconds, while we propose to overlap up to 2.4 seconds (H=30𝐻30H=30italic_H = 30 total steps).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T3.3.3.4.1.1">Overlapping</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.3.4.1.2">DiLoCo variant</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.3.4.1.3">Evaluation loss</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.1.2" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.1.2.1">No overlap</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.1.3">DiLoCo</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.1.1.1.1"><math alttext="2.68" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mn id="S3.T3.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.m1.1.1.cmml">2.68</mn><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><cn id="S3.T3.1.1.1.1.m1.1.1.cmml" type="float" xref="S3.T3.1.1.1.1.m1.1.1">2.68</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">2.68</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">2.68</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.2">Streaming DiLoCo</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.2.2.2.1"><math alttext="2.67_{{\color[rgb]{0,0.88,0}\definecolor[named]{pgfstrokecolor}{rgb}{0,0.88,0}%
\pgfsys@color@cmyk@stroke{0.91}{0}{0.88}{0.12}\pgfsys@color@cmyk@fill{0.91}{0}%
{0.88}{0.12}-0.3\%}}" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.1.m1.1a"><msub id="S3.T3.2.2.2.1.m1.1.1" xref="S3.T3.2.2.2.1.m1.1.1.cmml"><mn id="S3.T3.2.2.2.1.m1.1.1.2" xref="S3.T3.2.2.2.1.m1.1.1.2.cmml">2.67</mn><mrow id="S3.T3.2.2.2.1.m1.1.1.3" xref="S3.T3.2.2.2.1.m1.1.1.3.cmml"><mo id="S3.T3.2.2.2.1.m1.1.1.3a" mathcolor="#00E000" xref="S3.T3.2.2.2.1.m1.1.1.3.cmml">−</mo><mrow id="S3.T3.2.2.2.1.m1.1.1.3.2" xref="S3.T3.2.2.2.1.m1.1.1.3.2.cmml"><mn id="S3.T3.2.2.2.1.m1.1.1.3.2.2" mathcolor="#00E000" xref="S3.T3.2.2.2.1.m1.1.1.3.2.2.cmml">0.3</mn><mo id="S3.T3.2.2.2.1.m1.1.1.3.2.1" mathcolor="#00E000" xref="S3.T3.2.2.2.1.m1.1.1.3.2.1.cmml">%</mo></mrow></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><apply id="S3.T3.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.2.2.2.1.m1.1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1">subscript</csymbol><cn id="S3.T3.2.2.2.1.m1.1.1.2.cmml" type="float" xref="S3.T3.2.2.2.1.m1.1.1.2">2.67</cn><apply id="S3.T3.2.2.2.1.m1.1.1.3.cmml" xref="S3.T3.2.2.2.1.m1.1.1.3"><minus id="S3.T3.2.2.2.1.m1.1.1.3.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1.3"></minus><apply id="S3.T3.2.2.2.1.m1.1.1.3.2.cmml" xref="S3.T3.2.2.2.1.m1.1.1.3.2"><csymbol cd="latexml" id="S3.T3.2.2.2.1.m1.1.1.3.2.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1.3.2.1">percent</csymbol><cn id="S3.T3.2.2.2.1.m1.1.1.3.2.2.cmml" type="float" xref="S3.T3.2.2.2.1.m1.1.1.3.2.2">0.3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">2.67_{{\color[rgb]{0,0.88,0}\definecolor[named]{pgfstrokecolor}{rgb}{0,0.88,0}%
\pgfsys@color@cmyk@stroke{0.91}{0}{0.88}{0.12}\pgfsys@color@cmyk@fill{0.91}{0}%
{0.88}{0.12}-0.3\%}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">2.67 start_POSTSUBSCRIPT - 0.3 % end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T3.3.3.5.1.1" rowspan="2"><span class="ltx_text" id="S3.T3.3.3.5.1.1.1">1-outer-step eager</span></th>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.5.1.2">DiLoCo</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.3.3.5.1.3">2.69</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.2">Streaming DiLoCo</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.1"><math alttext="2.71_{{\color[rgb]{0.72,0,0}\definecolor[named]{pgfstrokecolor}{rgb}{0.72,0,0}%
\pgfsys@color@cmyk@stroke{0}{0.89}{0.94}{0.28}\pgfsys@color@cmyk@fill{0}{0.89}%
{0.94}{0.28}+0.7\%}}" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><msub id="S3.T3.3.3.3.1.m1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.cmml"><mn id="S3.T3.3.3.3.1.m1.1.1.2" xref="S3.T3.3.3.3.1.m1.1.1.2.cmml">2.71</mn><mrow id="S3.T3.3.3.3.1.m1.1.1.3" xref="S3.T3.3.3.3.1.m1.1.1.3.cmml"><mo id="S3.T3.3.3.3.1.m1.1.1.3a" mathcolor="#B80000" xref="S3.T3.3.3.3.1.m1.1.1.3.cmml">+</mo><mrow id="S3.T3.3.3.3.1.m1.1.1.3.2" xref="S3.T3.3.3.3.1.m1.1.1.3.2.cmml"><mn id="S3.T3.3.3.3.1.m1.1.1.3.2.2" mathcolor="#B80000" xref="S3.T3.3.3.3.1.m1.1.1.3.2.2.cmml">0.7</mn><mo id="S3.T3.3.3.3.1.m1.1.1.3.2.1" mathcolor="#B80000" xref="S3.T3.3.3.3.1.m1.1.1.3.2.1.cmml">%</mo></mrow></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><apply id="S3.T3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.3.3.3.1.m1.1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1">subscript</csymbol><cn id="S3.T3.3.3.3.1.m1.1.1.2.cmml" type="float" xref="S3.T3.3.3.3.1.m1.1.1.2">2.71</cn><apply id="S3.T3.3.3.3.1.m1.1.1.3.cmml" xref="S3.T3.3.3.3.1.m1.1.1.3"><plus id="S3.T3.3.3.3.1.m1.1.1.3.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1.3"></plus><apply id="S3.T3.3.3.3.1.m1.1.1.3.2.cmml" xref="S3.T3.3.3.3.1.m1.1.1.3.2"><csymbol cd="latexml" id="S3.T3.3.3.3.1.m1.1.1.3.2.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1.3.2.1">percent</csymbol><cn id="S3.T3.3.3.3.1.m1.1.1.3.2.2.cmml" type="float" xref="S3.T3.3.3.3.1.m1.1.1.3.2.2">0.7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">2.71_{{\color[rgb]{0.72,0,0}\definecolor[named]{pgfstrokecolor}{rgb}{0.72,0,0}%
\pgfsys@color@cmyk@stroke{0}{0.89}{0.94}{0.28}\pgfsys@color@cmyk@fill{0}{0.89}%
{0.94}{0.28}+0.7\%}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">2.71 start_POSTSUBSCRIPT + 0.7 % end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different DiLoCo variants with and without the proposed 1-outer-step eager communication overlap.  It shows the evaluation loss for both standard DiLoCo (all parameters synchronized) and its streaming version (partial synchronization), with and without the overlap technique.  This allows for an assessment of the method's impact across various DiLoCo configurations.
> <details>
> <summary>read the caption</summary>
> Table 3: DiLoCo variant comparison for no communication overlapping v.s. our 1-outer-step eager overlapping when varying the underlying DiLoCo algorithms: either the standard DiLoCo (Douillard et al., 2024) where all parameters are synchronized together, or its streaming variant (Douillard et al., 2025) with partial synchronization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T4.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T4.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx2.T4.6.6.7.1.1">Model scale</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.6.6.7.1.2">Hidden dim</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.6.6.7.1.3">Num layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.6.6.7.1.4">Num heads</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T4.6.6.7.1.5">Token budget</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx2.T4.1.1.1.2">35M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.1.1.1.1"><math alttext="2{,}048" class="ltx_Math" display="inline" id="Sx2.T4.1.1.1.1.m1.2"><semantics id="Sx2.T4.1.1.1.1.m1.2a"><mrow id="Sx2.T4.1.1.1.1.m1.2.3.2" xref="Sx2.T4.1.1.1.1.m1.2.3.1.cmml"><mn id="Sx2.T4.1.1.1.1.m1.1.1" xref="Sx2.T4.1.1.1.1.m1.1.1.cmml">2</mn><mo id="Sx2.T4.1.1.1.1.m1.2.3.2.1" xref="Sx2.T4.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.1.1.1.1.m1.2.2" xref="Sx2.T4.1.1.1.1.m1.2.2.cmml">048</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.1.1.1.1.m1.2b"><list id="Sx2.T4.1.1.1.1.m1.2.3.1.cmml" xref="Sx2.T4.1.1.1.1.m1.2.3.2"><cn id="Sx2.T4.1.1.1.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.1.1.1.1.m1.1.1">2</cn><cn id="Sx2.T4.1.1.1.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.1.1.1.1.m1.2.2">048</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.1.1.1.1.m1.2c">2{,}048</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.1.1.1.1.m1.2d">2 , 048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.1.1.1.3">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T4.1.1.1.4">8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T4.1.1.1.5">700M</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T4.2.2.2.2">100M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T4.2.2.2.1"><math alttext="3{,}072" class="ltx_Math" display="inline" id="Sx2.T4.2.2.2.1.m1.2"><semantics id="Sx2.T4.2.2.2.1.m1.2a"><mrow id="Sx2.T4.2.2.2.1.m1.2.3.2" xref="Sx2.T4.2.2.2.1.m1.2.3.1.cmml"><mn id="Sx2.T4.2.2.2.1.m1.1.1" xref="Sx2.T4.2.2.2.1.m1.1.1.cmml">3</mn><mo id="Sx2.T4.2.2.2.1.m1.2.3.2.1" xref="Sx2.T4.2.2.2.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.2.2.2.1.m1.2.2" xref="Sx2.T4.2.2.2.1.m1.2.2.cmml">072</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.2.2.2.1.m1.2b"><list id="Sx2.T4.2.2.2.1.m1.2.3.1.cmml" xref="Sx2.T4.2.2.2.1.m1.2.3.2"><cn id="Sx2.T4.2.2.2.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.2.2.2.1.m1.1.1">3</cn><cn id="Sx2.T4.2.2.2.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.2.2.2.1.m1.2.2">072</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.2.2.2.1.m1.2c">3{,}072</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.2.2.2.1.m1.2d">3 , 072</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.2.2.2.3">9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.2.2.2.4">12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.2.2.2.5">1.5B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T4.3.3.3.2">200M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T4.3.3.3.1"><math alttext="4{,}096" class="ltx_Math" display="inline" id="Sx2.T4.3.3.3.1.m1.2"><semantics id="Sx2.T4.3.3.3.1.m1.2a"><mrow id="Sx2.T4.3.3.3.1.m1.2.3.2" xref="Sx2.T4.3.3.3.1.m1.2.3.1.cmml"><mn id="Sx2.T4.3.3.3.1.m1.1.1" xref="Sx2.T4.3.3.3.1.m1.1.1.cmml">4</mn><mo id="Sx2.T4.3.3.3.1.m1.2.3.2.1" xref="Sx2.T4.3.3.3.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.3.3.3.1.m1.2.2" xref="Sx2.T4.3.3.3.1.m1.2.2.cmml">096</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.3.3.3.1.m1.2b"><list id="Sx2.T4.3.3.3.1.m1.2.3.1.cmml" xref="Sx2.T4.3.3.3.1.m1.2.3.2"><cn id="Sx2.T4.3.3.3.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.3.3.3.1.m1.1.1">4</cn><cn id="Sx2.T4.3.3.3.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.3.3.3.1.m1.2.2">096</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.3.3.3.1.m1.2c">4{,}096</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.3.3.3.1.m1.2d">4 , 096</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.3.3.3.3">12</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.3.3.3.4">16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.3.3.3.5">3.5B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T4.4.4.4.2">300M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T4.4.4.4.1"><math alttext="5{,}120" class="ltx_Math" display="inline" id="Sx2.T4.4.4.4.1.m1.2"><semantics id="Sx2.T4.4.4.4.1.m1.2a"><mrow id="Sx2.T4.4.4.4.1.m1.2.3.2" xref="Sx2.T4.4.4.4.1.m1.2.3.1.cmml"><mn id="Sx2.T4.4.4.4.1.m1.1.1" xref="Sx2.T4.4.4.4.1.m1.1.1.cmml">5</mn><mo id="Sx2.T4.4.4.4.1.m1.2.3.2.1" xref="Sx2.T4.4.4.4.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.4.4.4.1.m1.2.2" xref="Sx2.T4.4.4.4.1.m1.2.2.cmml">120</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.4.4.4.1.m1.2b"><list id="Sx2.T4.4.4.4.1.m1.2.3.1.cmml" xref="Sx2.T4.4.4.4.1.m1.2.3.2"><cn id="Sx2.T4.4.4.4.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.4.4.4.1.m1.1.1">5</cn><cn id="Sx2.T4.4.4.4.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.4.4.4.1.m1.2.2">120</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.4.4.4.1.m1.2c">5{,}120</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.4.4.4.1.m1.2d">5 , 120</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.4.4.4.3">15</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.4.4.4.4">20</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.4.4.4.5">6B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx2.T4.5.5.5.2">500M</th>
<td class="ltx_td ltx_align_center" id="Sx2.T4.5.5.5.1"><math alttext="6{,}144" class="ltx_Math" display="inline" id="Sx2.T4.5.5.5.1.m1.2"><semantics id="Sx2.T4.5.5.5.1.m1.2a"><mrow id="Sx2.T4.5.5.5.1.m1.2.3.2" xref="Sx2.T4.5.5.5.1.m1.2.3.1.cmml"><mn id="Sx2.T4.5.5.5.1.m1.1.1" xref="Sx2.T4.5.5.5.1.m1.1.1.cmml">6</mn><mo id="Sx2.T4.5.5.5.1.m1.2.3.2.1" xref="Sx2.T4.5.5.5.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.5.5.5.1.m1.2.2" xref="Sx2.T4.5.5.5.1.m1.2.2.cmml">144</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.5.5.5.1.m1.2b"><list id="Sx2.T4.5.5.5.1.m1.2.3.1.cmml" xref="Sx2.T4.5.5.5.1.m1.2.3.2"><cn id="Sx2.T4.5.5.5.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.5.5.5.1.m1.1.1">6</cn><cn id="Sx2.T4.5.5.5.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.5.5.5.1.m1.2.2">144</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.5.5.5.1.m1.2c">6{,}144</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.5.5.5.1.m1.2d">6 , 144</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.5.5.5.3">18</td>
<td class="ltx_td ltx_align_center" id="Sx2.T4.5.5.5.4">24</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T4.5.5.5.5">11B</td>
</tr>
<tr class="ltx_tr" id="Sx2.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="Sx2.T4.6.6.6.2">1B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.6.1"><math alttext="8{,}192" class="ltx_Math" display="inline" id="Sx2.T4.6.6.6.1.m1.2"><semantics id="Sx2.T4.6.6.6.1.m1.2a"><mrow id="Sx2.T4.6.6.6.1.m1.2.3.2" xref="Sx2.T4.6.6.6.1.m1.2.3.1.cmml"><mn id="Sx2.T4.6.6.6.1.m1.1.1" xref="Sx2.T4.6.6.6.1.m1.1.1.cmml">8</mn><mo id="Sx2.T4.6.6.6.1.m1.2.3.2.1" xref="Sx2.T4.6.6.6.1.m1.2.3.1.cmml">,</mo><mn id="Sx2.T4.6.6.6.1.m1.2.2" xref="Sx2.T4.6.6.6.1.m1.2.2.cmml">192</mn></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T4.6.6.6.1.m1.2b"><list id="Sx2.T4.6.6.6.1.m1.2.3.1.cmml" xref="Sx2.T4.6.6.6.1.m1.2.3.2"><cn id="Sx2.T4.6.6.6.1.m1.1.1.cmml" type="integer" xref="Sx2.T4.6.6.6.1.m1.1.1">8</cn><cn id="Sx2.T4.6.6.6.1.m1.2.2.cmml" type="integer" xref="Sx2.T4.6.6.6.1.m1.2.2">192</cn></list></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T4.6.6.6.1.m1.2c">8{,}192</annotation><annotation encoding="application/x-llamapun" id="Sx2.T4.6.6.6.1.m1.2d">8 , 192</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.6.3">24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.6.4">32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T4.6.6.6.5">25B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the architectural hyperparameters used for training language models of varying sizes, ranging from 35 million to 1 billion parameters.  These hyperparameters include the hidden dimension, number of layers, number of attention heads, and the Chinchilla-optimal token budget.  The vocabulary size remains constant at 32,000 for all model sizes. This information is crucial for understanding and replicating the experimental setup of the paper.
> <details>
> <summary>read the caption</summary>
> Table 4: Architecture hyperparameters: we consider model from 35M to 1B with the following hyperameters and chinchilla-optimal token budget. For all model scale, the vocabulary size is 32,0003200032{,}00032 , 000.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T5.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.1.1.1.2" rowspan="2"><span class="ltx_text" id="Sx2.T5.1.1.1.2.1">Model size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T5.1.1.1.3" rowspan="2"><span class="ltx_text" id="Sx2.T5.1.1.1.3.1"># layers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T5.1.1.1.4" rowspan="2"><span class="ltx_text" id="Sx2.T5.1.1.1.4.1">Step time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T5.1.1.1.5" rowspan="2"><span class="ltx_text" id="Sx2.T5.1.1.1.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="Sx2.T5.1.1.1.1">Gbit/s to reach a compute utilization <math alttext="\texttt{CU}=" class="ltx_Math" display="inline" id="Sx2.T5.1.1.1.1.m1.1"><semantics id="Sx2.T5.1.1.1.1.m1.1a"><mrow id="Sx2.T5.1.1.1.1.m1.1.1" xref="Sx2.T5.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_monospace" id="Sx2.T5.1.1.1.1.m1.1.1.2" xref="Sx2.T5.1.1.1.1.m1.1.1.2a.cmml">CU</mtext><mo id="Sx2.T5.1.1.1.1.m1.1.1.1" xref="Sx2.T5.1.1.1.1.m1.1.1.1.cmml">=</mo><mi id="Sx2.T5.1.1.1.1.m1.1.1.3" xref="Sx2.T5.1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.1.1.1.1.m1.1b"><apply id="Sx2.T5.1.1.1.1.m1.1.1.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1"><eq id="Sx2.T5.1.1.1.1.m1.1.1.1.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1.1"></eq><ci id="Sx2.T5.1.1.1.1.m1.1.1.2a.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_monospace" id="Sx2.T5.1.1.1.1.m1.1.1.2.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1.2">CU</mtext></ci><csymbol cd="latexml" id="Sx2.T5.1.1.1.1.m1.1.1.3.cmml" xref="Sx2.T5.1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.1.1.1.1.m1.1c">\texttt{CU}=</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.1.1.1.1.m1.1d">CU =</annotation></semantics></math>?</th>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T5.2.2.2.1"><math alttext="50\%" class="ltx_Math" display="inline" id="Sx2.T5.2.2.2.1.m1.1"><semantics id="Sx2.T5.2.2.2.1.m1.1a"><mrow id="Sx2.T5.2.2.2.1.m1.1.1" xref="Sx2.T5.2.2.2.1.m1.1.1.cmml"><mn id="Sx2.T5.2.2.2.1.m1.1.1.2" xref="Sx2.T5.2.2.2.1.m1.1.1.2.cmml">50</mn><mo id="Sx2.T5.2.2.2.1.m1.1.1.1" xref="Sx2.T5.2.2.2.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.2.2.2.1.m1.1b"><apply id="Sx2.T5.2.2.2.1.m1.1.1.cmml" xref="Sx2.T5.2.2.2.1.m1.1.1"><csymbol cd="latexml" id="Sx2.T5.2.2.2.1.m1.1.1.1.cmml" xref="Sx2.T5.2.2.2.1.m1.1.1.1">percent</csymbol><cn id="Sx2.T5.2.2.2.1.m1.1.1.2.cmml" type="integer" xref="Sx2.T5.2.2.2.1.m1.1.1.2">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.2.2.2.1.m1.1c">50\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.2.2.2.1.m1.1d">50 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T5.3.3.3.2"><math alttext="80\%" class="ltx_Math" display="inline" id="Sx2.T5.3.3.3.2.m1.1"><semantics id="Sx2.T5.3.3.3.2.m1.1a"><mrow id="Sx2.T5.3.3.3.2.m1.1.1" xref="Sx2.T5.3.3.3.2.m1.1.1.cmml"><mn id="Sx2.T5.3.3.3.2.m1.1.1.2" xref="Sx2.T5.3.3.3.2.m1.1.1.2.cmml">80</mn><mo id="Sx2.T5.3.3.3.2.m1.1.1.1" xref="Sx2.T5.3.3.3.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.3.3.3.2.m1.1b"><apply id="Sx2.T5.3.3.3.2.m1.1.1.cmml" xref="Sx2.T5.3.3.3.2.m1.1.1"><csymbol cd="latexml" id="Sx2.T5.3.3.3.2.m1.1.1.1.cmml" xref="Sx2.T5.3.3.3.2.m1.1.1.1">percent</csymbol><cn id="Sx2.T5.3.3.3.2.m1.1.1.2.cmml" type="integer" xref="Sx2.T5.3.3.3.2.m1.1.1.2">80</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.3.3.3.2.m1.1c">80\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.3.3.3.2.m1.1d">80 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T5.4.4.4.3"><math alttext="90\%" class="ltx_Math" display="inline" id="Sx2.T5.4.4.4.3.m1.1"><semantics id="Sx2.T5.4.4.4.3.m1.1a"><mrow id="Sx2.T5.4.4.4.3.m1.1.1" xref="Sx2.T5.4.4.4.3.m1.1.1.cmml"><mn id="Sx2.T5.4.4.4.3.m1.1.1.2" xref="Sx2.T5.4.4.4.3.m1.1.1.2.cmml">90</mn><mo id="Sx2.T5.4.4.4.3.m1.1.1.1" xref="Sx2.T5.4.4.4.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.4.4.4.3.m1.1b"><apply id="Sx2.T5.4.4.4.3.m1.1.1.cmml" xref="Sx2.T5.4.4.4.3.m1.1.1"><csymbol cd="latexml" id="Sx2.T5.4.4.4.3.m1.1.1.1.cmml" xref="Sx2.T5.4.4.4.3.m1.1.1.1">percent</csymbol><cn id="Sx2.T5.4.4.4.3.m1.1.1.2.cmml" type="integer" xref="Sx2.T5.4.4.4.3.m1.1.1.2">90</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.4.4.4.3.m1.1c">90\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.4.4.4.3.m1.1d">90 %</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx2.T5.5.5.5.4"><math alttext="95\%" class="ltx_Math" display="inline" id="Sx2.T5.5.5.5.4.m1.1"><semantics id="Sx2.T5.5.5.5.4.m1.1a"><mrow id="Sx2.T5.5.5.5.4.m1.1.1" xref="Sx2.T5.5.5.5.4.m1.1.1.cmml"><mn id="Sx2.T5.5.5.5.4.m1.1.1.2" xref="Sx2.T5.5.5.5.4.m1.1.1.2.cmml">95</mn><mo id="Sx2.T5.5.5.5.4.m1.1.1.1" xref="Sx2.T5.5.5.5.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.5.5.5.4.m1.1b"><apply id="Sx2.T5.5.5.5.4.m1.1.1.cmml" xref="Sx2.T5.5.5.5.4.m1.1.1"><csymbol cd="latexml" id="Sx2.T5.5.5.5.4.m1.1.1.1.cmml" xref="Sx2.T5.5.5.5.4.m1.1.1.1">percent</csymbol><cn id="Sx2.T5.5.5.5.4.m1.1.1.2.cmml" type="integer" xref="Sx2.T5.5.5.5.4.m1.1.1.2">95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.5.5.5.4.m1.1c">95\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.5.5.5.4.m1.1d">95 %</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="Sx2.T5.6.6.6.5"><math alttext="99\%" class="ltx_Math" display="inline" id="Sx2.T5.6.6.6.5.m1.1"><semantics id="Sx2.T5.6.6.6.5.m1.1a"><mrow id="Sx2.T5.6.6.6.5.m1.1.1" xref="Sx2.T5.6.6.6.5.m1.1.1.cmml"><mn id="Sx2.T5.6.6.6.5.m1.1.1.2" xref="Sx2.T5.6.6.6.5.m1.1.1.2.cmml">99</mn><mo id="Sx2.T5.6.6.6.5.m1.1.1.1" xref="Sx2.T5.6.6.6.5.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="Sx2.T5.6.6.6.5.m1.1b"><apply id="Sx2.T5.6.6.6.5.m1.1.1.cmml" xref="Sx2.T5.6.6.6.5.m1.1.1"><csymbol cd="latexml" id="Sx2.T5.6.6.6.5.m1.1.1.1.cmml" xref="Sx2.T5.6.6.6.5.m1.1.1.1">percent</csymbol><cn id="Sx2.T5.6.6.6.5.m1.1.1.2.cmml" type="integer" xref="Sx2.T5.6.6.6.5.m1.1.1.2">99</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T5.6.6.6.5.m1.1c">99\%</annotation><annotation encoding="application/x-llamapun" id="Sx2.T5.6.6.6.5.m1.1d">99 %</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T5.6.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.1" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.7.1.1.1">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.2" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.7.1.2.1">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.7.1.3" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.7.1.3.1">0.1s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.7.1.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.5">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.6">152.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.7">184.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.8">222.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.6.6.7.1.9">569.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.8.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.8.2.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.8.2.2">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.8.2.3">5.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.8.2.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.8.2.5">16.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.8.2.6">28.1</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.9.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.9.3.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.9.3.2">2.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.9.3.3">3.6</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.9.3.4">4.3</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.9.3.5">4.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.9.3.6">4.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.10.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.10.4.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.10.4.2">0.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.10.4.3">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.10.4.4">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.10.4.5">2.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.10.4.6">3.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.11.5.1">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.11.5.2">1.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.11.5.3">2.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.11.5.4">2.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.11.5.5">2.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.11.5.6">2.4</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.12.6">
<td class="ltx_td" id="Sx2.T5.6.6.12.6.1"></td>
<td class="ltx_td" id="Sx2.T5.6.6.12.6.2"></td>
<td class="ltx_td ltx_border_r" id="Sx2.T5.6.6.12.6.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.12.6.4">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.12.6.5">0.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.12.6.6">0.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.12.6.7">0.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.12.6.8">0.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.12.6.9">0.2</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.13.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.1" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.13.7.1.1">10B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.2" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.13.7.2.1">48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.13.7.3" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.13.7.3.1">0.8s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.13.7.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.5">104.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.6">222.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.7">222.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.8">268.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.6.6.13.7.9">471.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.14.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.14.8.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.14.8.2">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.14.8.3">5.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.14.8.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.14.8.5">13.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.14.8.6">19.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.15.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.15.9.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.15.9.2">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.15.9.3">2.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.15.9.4">2.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.15.9.5">3.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.15.9.6">3.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.16.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.16.10.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.16.10.2">0.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.16.10.3">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.16.10.4">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.16.10.5">1.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.16.10.6">1.7</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.17.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.17.11.1">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.17.11.2">0.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.17.11.3">1.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.17.11.4">1.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.17.11.5">1.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.17.11.6">1.4</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.18.12">
<td class="ltx_td" id="Sx2.T5.6.6.18.12.1"></td>
<td class="ltx_td" id="Sx2.T5.6.6.18.12.2"></td>
<td class="ltx_td ltx_border_r" id="Sx2.T5.6.6.18.12.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.18.12.4">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.18.12.5">0.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.18.12.6">0.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.18.12.7">0.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.18.12.8">0.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.18.12.9">0.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.19.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.1" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.19.13.1.1">100B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.2" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.19.13.2.1">108</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.19.13.3" rowspan="5"><span class="ltx_text" id="Sx2.T5.6.6.19.13.3.1">4.9s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T5.6.6.19.13.4">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.5">184.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.6">323.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.7">390.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.8">390.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T5.6.6.19.13.9">471.5</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.20.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.20.14.1">Streaming DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.20.14.2">2.4</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.20.14.3">6.2</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.20.14.4">9.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.20.14.5">11.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.20.14.6">19.3</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.21.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.21.15.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.21.15.2">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.21.15.3">1.7</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.21.15.4">2.0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.21.15.5">2.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.21.15.6">2.0</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.22.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.22.16.1">Streaming DiLoCo with 1-inner-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.22.16.2">0.5</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.22.16.3">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.22.16.4">1.1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.22.16.5">1.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.22.16.6">1.4</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.23.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T5.6.6.23.17.1">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.23.17.2">0.5</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.23.17.3">0.8</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.23.17.4">0.9</td>
<td class="ltx_td ltx_align_center" id="Sx2.T5.6.6.23.17.5">0.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T5.6.6.23.17.6">0.9</td>
</tr>
<tr class="ltx_tr" id="Sx2.T5.6.6.24.18">
<td class="ltx_td ltx_border_bb" id="Sx2.T5.6.6.24.18.1"></td>
<td class="ltx_td ltx_border_bb" id="Sx2.T5.6.6.24.18.2"></td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="Sx2.T5.6.6.24.18.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="Sx2.T5.6.6.24.18.4">Streaming DiLoCo with 1-outer-step overlapped FP4 com. H=100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.6.6.24.18.5">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.6.6.24.18.6">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.6.6.24.18.7">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T5.6.6.24.18.8">0.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T5.6.6.24.18.9">0.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a simulation comparing different distributed training methods' compute utilization across various WAN bandwidths.  The simulation estimates step times for 1B, 10B, and 100B parameter models based on FLOPS requirements from Kaplan et al. (2020), assuming a 60% model-level compute utilization.  It shows the Gbit/s required to achieve specific compute utilization targets (50%, 80%, 90%, 95%, 99%) for each method.  The methods include Data-Parallel, Streaming DiLoCo (with and without inner- and outer-step communication overlaps).  The hyperparameters H (synchronization frequency) is set to 100 for DiLoCo and its variants, and a fragment size of 3 layers is used for Streaming DiLoCo variants.
> <details>
> <summary>read the caption</summary>
> Table 5: Simulation: we estimate the step time (pure compute) of 10B and 100B based on the required flops using Kaplan et al. (2020) rule and using a MFU of 60%. For all DiLoCo and Streaming DiLoCo-variants, we use H=100𝐻100H=100italic_H = 100. For all Streaming DiLoCo-variants, we use a fragment size of 3 layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx2.T6.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx2.T6.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.5.5.5.6">Model size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T6.5.5.5.7">Flops</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.5.5.5.8">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.1.1.1.1"><math alttext="H" class="ltx_Math" display="inline" id="Sx2.T6.1.1.1.1.m1.1"><semantics id="Sx2.T6.1.1.1.1.m1.1a"><mi id="Sx2.T6.1.1.1.1.m1.1.1" xref="Sx2.T6.1.1.1.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="Sx2.T6.1.1.1.1.m1.1b"><ci id="Sx2.T6.1.1.1.1.m1.1.1.cmml" xref="Sx2.T6.1.1.1.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.1.1.1.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.1.1.1.1.m1.1d">italic_H</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx2.T6.5.5.5.9"># overlapped steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.2.2.2.2">Eval Loss <math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx2.T6.2.2.2.2.m1.1"><semantics id="Sx2.T6.2.2.2.2.m1.1a"><mo id="Sx2.T6.2.2.2.2.m1.1.1" stretchy="false" xref="Sx2.T6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.2.2.2.2.m1.1b"><ci id="Sx2.T6.2.2.2.2.m1.1.1.cmml" xref="Sx2.T6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.3.3.3.3">HellaSwag <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.3.3.3.3.m1.1"><semantics id="Sx2.T6.3.3.3.3.m1.1a"><mo id="Sx2.T6.3.3.3.3.m1.1.1" stretchy="false" xref="Sx2.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.3.3.3.3.m1.1b"><ci id="Sx2.T6.3.3.3.3.m1.1.1.cmml" xref="Sx2.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.4.4.4.4">Piqa <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.4.4.4.4.m1.1"><semantics id="Sx2.T6.4.4.4.4.m1.1a"><mo id="Sx2.T6.4.4.4.4.m1.1.1" stretchy="false" xref="Sx2.T6.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.4.4.4.4.m1.1b"><ci id="Sx2.T6.4.4.4.4.m1.1.1.cmml" xref="Sx2.T6.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx2.T6.5.5.5.5">Arc Easy <math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx2.T6.5.5.5.5.m1.1"><semantics id="Sx2.T6.5.5.5.5.m1.1a"><mo id="Sx2.T6.5.5.5.5.m1.1.1" stretchy="false" xref="Sx2.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx2.T6.5.5.5.5.m1.1b"><ci id="Sx2.T6.5.5.5.5.m1.1.1.cmml" xref="Sx2.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx2.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx2.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx2.T6.5.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.6.1.1.1">35M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.6.1.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.6.1.2.1">1.5e17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.6.1.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.6">3.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.7">24.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.8">57.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.6.1.9">29.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.7.2">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.7.2.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.7.2.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.7.2.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.7.2.4">3.54</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.7.2.5">24.53</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.7.2.6">58.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.7.2.7">29.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.8.3">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.8.3.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.8.3.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.8.3.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.8.3.4">3.53</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.8.3.5">24.46</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.8.3.6">57.67</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.8.3.7">30.53</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.9.4">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.9.4.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.9.4.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.9.4.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.9.4.4">3.56</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.9.4.5">24.80</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.9.4.6">57.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.9.4.7">29.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.10.5">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.10.5.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.10.5.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.10.5.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.10.5.4">3.62</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.10.5.5">24.47</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.10.5.6">56.58</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.10.5.7">27.19</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.11.6">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.11.6.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.11.6.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.11.6.3">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.11.6.4">3.62</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.11.6.5">24.47</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.11.6.6">56.58</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.11.6.7">27.19</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.12.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.12.7.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.12.7.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.12.7.2.1">9.4e17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.12.7.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.6">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.7">26.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.8">60.12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.12.7.9">30.35</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.13.8">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.13.8.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.13.8.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.13.8.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.13.8.4">3.21</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.13.8.5">26.59</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.13.8.6">60.50</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.13.8.7">29.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.14.9">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.14.9.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.14.9.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.14.9.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.14.9.4">3.21</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.14.9.5">26.97</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.14.9.6">59.58</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.14.9.7">31.40</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.15.10">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.15.10.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.15.10.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.15.10.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.15.10.4">3.22</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.15.10.5">26.68</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.15.10.6">60.39</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.15.10.7">31.93</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.16.11">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.16.11.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.16.11.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.16.11.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.16.11.4">3.27</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.16.11.5">26.12</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.16.11.6">59.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.16.11.7">28.77</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.17.12">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.17.12.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.17.12.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.17.12.3">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.17.12.4">3.27</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.17.12.5">26.12</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.17.12.6">59.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.17.12.7">28.77</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.18.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.18.13.1.1">200M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.18.13.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.18.13.2.1">4e18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.18.13.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.6">2.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.7">29.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.8">63.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.18.13.9">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.19.14">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.19.14.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.19.14.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.19.14.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.19.14.4">2.98</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.19.14.5">29.71</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.19.14.6">62.30</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.19.14.7">33.68</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.20.15">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.20.15.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.20.15.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.20.15.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.20.15.4">2.98</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.20.15.5">29.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.20.15.6">61.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.20.15.7">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.21.16">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.21.16.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.21.16.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.21.16.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.21.16.4">3.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.21.16.5">29.27</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.21.16.6">62.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.21.16.7">34.21</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.22.17">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.22.17.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.22.17.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.22.17.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.22.17.4">3.03</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.22.17.5">29.10</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.22.17.6">61.70</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.22.17.7">32.81</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.23.18">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.23.18.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.23.18.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.23.18.3">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.23.18.4">3.03</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.23.18.5">29.10</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.23.18.6">61.70</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.23.18.7">32.81</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.24.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.24.19.1.1">300M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.24.19.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.24.19.2.1">1.4e19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.24.19.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.6">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.7">33.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.8">64.69</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.24.19.9">34.91</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.25.20">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.25.20.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.25.20.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.25.20.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.25.20.4">2.81</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.25.20.5">33.87</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.25.20.6">64.74</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.25.20.7">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.26.21">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.26.21.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.26.21.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.26.21.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.26.21.4">2.81</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.26.21.5">33.66</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.26.21.6">63.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.26.21.7">35.09</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.27.22">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.27.22.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.27.22.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.27.22.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.27.22.4">2.83</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.27.22.5">33.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.27.22.6">63.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.27.22.7">34.39</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.28.23">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.28.23.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.28.23.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.28.23.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.28.23.4">2.86</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.28.23.5">32.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.28.23.6">65.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.28.23.7">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.29.24">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.29.24.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.29.24.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.29.24.3">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.29.24.4">2.86</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.29.24.5">32.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.29.24.6">65.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.29.24.7">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.30.25">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.30.25.1.1">500M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.30.25.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.30.25.2.1">4.7e19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.30.25.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.6">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.7">38.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.8">66.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.30.25.9">37.19</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.31.26">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.31.26.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.31.26.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.31.26.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.31.26.4">2.68</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.31.26.5">38.37</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.31.26.6">65.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.31.26.7">36.32</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.32.27">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.32.27.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.32.27.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.32.27.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.32.27.4">2.67</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.32.27.5">38.10</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.32.27.6">66.21</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.32.27.7">34.91</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.33.28">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.33.28.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.33.28.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.33.28.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.33.28.4">2.69</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.33.28.5">37.40</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.33.28.6">65.51</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.33.28.7">34.74</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.34.29">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.34.29.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.34.29.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.34.29.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.34.29.4">2.71</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.34.29.5">36.89</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.34.29.6">65.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.34.29.7">35.44</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.35.30">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.35.30.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.35.30.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.35.30.3">100</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.35.30.4">2.71</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.35.30.5">36.74</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.35.30.6">65.56</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.35.30.7">35.79</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.36.31">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx2.T6.5.5.36.31.1" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.36.31.1.1">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx2.T6.5.5.36.31.2" rowspan="6"><span class="ltx_text" id="Sx2.T6.5.5.36.31.2.1">1.9e20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.3">Data-Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx2.T6.5.5.36.31.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.6">2.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.7">46.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.8">68.93</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="Sx2.T6.5.5.36.31.9">39.65</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.37.32">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.37.32.1">DiLoCo</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.37.32.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.37.32.3">0</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.37.32.4">2.49</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.37.32.5">46.56</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.37.32.6">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.37.32.7">36.84</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.38.33">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.38.33.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.38.33.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.38.33.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.38.33.4">2.48</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.38.33.5">46.60</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.38.33.6">69.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.38.33.7">39.12</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.39.34">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.39.34.1">Streaming DiLoCo with 1-inner-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.39.34.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.39.34.3">1</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.39.34.4">2.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.39.34.5">46.00</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.39.34.6">68.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.39.34.7">38.42</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.40.35">
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.40.35.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.40.35.2">30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx2.T6.5.5.40.35.3">30</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.40.35.4">2.50</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.40.35.5">46.45</td>
<td class="ltx_td ltx_align_center" id="Sx2.T6.5.5.40.35.6">68.50</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx2.T6.5.5.40.35.7">39.47</td>
</tr>
<tr class="ltx_tr" id="Sx2.T6.5.5.41.36">
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.1">Streaming DiLoCo with 1-outer-eager-overlap</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="Sx2.T6.5.5.41.36.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.4">2.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.5">44.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.6">68.12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="Sx2.T6.5.5.41.36.7">36.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of scaling experiments conducted on language models with varying sizes, ranging from 35 million to 4 billion parameters.  The experiments utilized the C4 dataset for training and measured the evaluation loss on a validation set.  The table compares several model variations and training strategies, such as Data-Parallel training, Streaming DiLoCo (with and without overlapping communication), and DiLoCo with different numbers of inner steps and overlapping configurations.  The purpose is to demonstrate the scaling performance and the effectiveness of different approaches, especially focusing on the impact of overlapping communication and computation within the DiLoCo framework.
> <details>
> <summary>read the caption</summary>
> Table 6: Scaling from 35 million parameters to 4 billion parameters using a chinchilla-optimal number of flops/tokens. We train on the C4 dataset, and report the evaluation loss on its validation set.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12996/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12996/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}