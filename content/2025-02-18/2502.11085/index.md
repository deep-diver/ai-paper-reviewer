---
title: "Towards Data-Efficient Pretraining for Atomic Property Prediction"
summary: "High-quality, task-relevant pretraining data surpasses large-scale pretraining in atomic property prediction, achieving comparable performance at 1/24th the computational cost."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Transfer Learning", "🏢 King Abdullah University of Science and Technology",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11085 {{< /keyword >}}
{{< keyword icon="writer" >}} Yasir Ghunaim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11085" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11085" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11085/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Atomic property prediction heavily relies on large datasets and extensive computational resources for effective model pretraining.  However, this approach is not only expensive but also inefficient, as it does not guarantee performance improvements. Current research lacks methods to strategically select the most relevant data for pretraining and efficient training methodologies, resulting in significant resource waste. This research seeks to improve this situation by investigating a more efficient strategy for pretraining. 

The paper introduces a new method that employs a novel metric (CSI) inspired by computer vision's FID to quantify the alignment between pretraining and downstream datasets.  By using this metric, researchers can select smaller, focused datasets for pretraining that are highly relevant to their task.  This approach drastically reduces computational costs, achieving results comparable to or surpassing large-scale pretraining.  The research demonstrates that in pretraining for atomic property prediction, carefully selected high-quality datasets outperform larger, less relevant ones. The proposed CSI metric offers a practical tool to assist researchers in efficiently choosing their training data. This method is efficient and allows for achieving good predictive accuracy, thus saving resources and time.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Prioritizing data quality over quantity is more effective in pretraining for atomic property prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Chemical Similarity Index (CSI) effectively measures dataset relevance, guiding efficient pretraining data selection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Smaller, strategically selected datasets can match or exceed the performance of large-scale pretraining with significantly reduced computational costs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it challenges the prevailing assumption that larger datasets automatically lead to better results in atomic property prediction.  It introduces a novel approach that prioritizes **data quality over quantity**, offering a more efficient and cost-effective alternative for researchers.  The findings highlight new avenues for investigation focusing on data selection strategies and the development of more efficient computational methods, directly addressing current resource constraints in this research area. The proposed Chemical Similarity Index provides researchers with a practical tool for optimizing their pretraining datasets.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/pull_figure.png)

> 🔼 This figure demonstrates the effectiveness of using a high-quality, task-relevant dataset for pretraining in atomic property prediction.  By carefully selecting a smaller, relevant dataset, the model achieves comparable or even better performance (measured by Mean Absolute Error, MAE) compared to a model (JMP-S) pretrained on a significantly larger, more diverse dataset that includes the smaller dataset.  Importantly, this improvement comes with a 24-fold reduction in computational cost.  Lower MAE values indicate better predictive accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: Pretraining on a High-Quality, Task-Relevant Dataset. Pretraining on a carefully selected high-quality dataset achieves comparable or superior mean absolute error (MAE) across tasks while reducing computational cost by a factor of 24 compared to JMP-S, which is pretrained on all upstream datasets. Lower MAE indicates better performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1"><math alttext="\mathbf{\mathcal{C}}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">𝒞</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">𝒞</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\mathbf{\mathcal{C}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">caligraphic_C</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Upstream Data</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">rMD17</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">MD22</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.6.1">SPICE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">QM9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.5.1">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.4.4.5.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.4.4.5.1.2"></th>
<td class="ltx_td" id="S3.T1.4.4.5.1.3"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5.1.4">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5.1.5">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5.1.6">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5.1.7">(meV)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.2.2.1" rowspan="3"><span class="ltx_text" id="S3.T1.2.2.2.1.1"><math alttext="240\times 10^{6}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.m1.1a"><mrow id="S3.T1.2.2.2.1.1.m1.1.1" xref="S3.T1.2.2.2.1.1.m1.1.1.cmml"><mn id="S3.T1.2.2.2.1.1.m1.1.1.2" xref="S3.T1.2.2.2.1.1.m1.1.1.2.cmml">240</mn><mo id="S3.T1.2.2.2.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.2.2.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T1.2.2.2.1.1.m1.1.1.3" xref="S3.T1.2.2.2.1.1.m1.1.1.3.cmml"><mn id="S3.T1.2.2.2.1.1.m1.1.1.3.2" xref="S3.T1.2.2.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S3.T1.2.2.2.1.1.m1.1.1.3.3" xref="S3.T1.2.2.2.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.m1.1b"><apply id="S3.T1.2.2.2.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.m1.1.1"><times id="S3.T1.2.2.2.1.1.m1.1.1.1.cmml" xref="S3.T1.2.2.2.1.1.m1.1.1.1"></times><cn id="S3.T1.2.2.2.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.2.2.2.1.1.m1.1.1.2">240</cn><apply id="S3.T1.2.2.2.1.1.m1.1.1.3.cmml" xref="S3.T1.2.2.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.2.2.2.1.1.m1.1.1.3.1.cmml" xref="S3.T1.2.2.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.2.2.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.2.2.2.1.1.m1.1.1.3.2">10</cn><cn id="S3.T1.2.2.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.2.2.2.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.m1.1c">240\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.m1.1d">240 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.2.2.2" rowspan="3"><span class="ltx_text" id="S3.T1.2.2.2.2.1">Mixed (Temp)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.3">JMP-L (GemNet-OC-L)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.4">5.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.5">1.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.6">4.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.7">2.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.6.2">
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.1">JMP-S (GemNet-OC-S)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.2">6.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.3">2.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.4">5.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6.2.5">3.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.7.3">
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7.3.1">JMP-S<sup class="ltx_sup" id="S3.T1.4.4.7.3.1.1">*</sup>(GemNet-OC-S)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7.3.2">6.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7.3.3">3.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7.3.4">5.60</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7.3.5">3.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.3.3.1" rowspan="4"><span class="ltx_text" id="S3.T1.3.3.3.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.1.m1.1"><semantics id="S3.T1.3.3.3.1.1.m1.1a"><mrow id="S3.T1.3.3.3.1.1.m1.1.1" xref="S3.T1.3.3.3.1.1.m1.1.1.cmml"><mn id="S3.T1.3.3.3.1.1.m1.1.1.2" xref="S3.T1.3.3.3.1.1.m1.1.1.2.cmml">10</mn><mo id="S3.T1.3.3.3.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.3.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T1.3.3.3.1.1.m1.1.1.3" xref="S3.T1.3.3.3.1.1.m1.1.1.3.cmml"><mn id="S3.T1.3.3.3.1.1.m1.1.1.3.2" xref="S3.T1.3.3.3.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S3.T1.3.3.3.1.1.m1.1.1.3.3" xref="S3.T1.3.3.3.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.1.m1.1b"><apply id="S3.T1.3.3.3.1.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.1.m1.1.1"><times id="S3.T1.3.3.3.1.1.m1.1.1.1.cmml" xref="S3.T1.3.3.3.1.1.m1.1.1.1"></times><cn id="S3.T1.3.3.3.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.3.3.3.1.1.m1.1.1.2">10</cn><apply id="S3.T1.3.3.3.1.1.m1.1.1.3.cmml" xref="S3.T1.3.3.3.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.3.3.3.1.1.m1.1.1.3.1.cmml" xref="S3.T1.3.3.3.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.3.3.3.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.3.3.3.1.1.m1.1.1.3.2">10</cn><cn id="S3.T1.3.3.3.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.3.3.3.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.3.3.2">ANI-1x</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3" rowspan="4"><span class="ltx_text" id="S3.T1.3.3.3.3.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.1">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.5.1">2.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.6.1">5.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.7.1">2.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.8.4.1">Transition-1x</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.2">10.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.3">3.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.4">7.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.8.4.5">3.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.9.5.1">OC20</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.2">14.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.3">4.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.4">8.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.9.5.5">4.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.10.6.1">OC22</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.2">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.3">5.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.4">10.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.10.6.5">5.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.1" rowspan="2"><span class="ltx_text" id="S3.T1.4.4.4.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.1.m1.1"><semantics id="S3.T1.4.4.4.1.1.m1.1a"><mrow id="S3.T1.4.4.4.1.1.m1.1.1" xref="S3.T1.4.4.4.1.1.m1.1.1.cmml"><mn id="S3.T1.4.4.4.1.1.m1.1.1.2" xref="S3.T1.4.4.4.1.1.m1.1.1.2.cmml">10</mn><mo id="S3.T1.4.4.4.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.4.4.4.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T1.4.4.4.1.1.m1.1.1.3" xref="S3.T1.4.4.4.1.1.m1.1.1.3.cmml"><mn id="S3.T1.4.4.4.1.1.m1.1.1.3.2" xref="S3.T1.4.4.4.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S3.T1.4.4.4.1.1.m1.1.1.3.3" xref="S3.T1.4.4.4.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.1.m1.1b"><apply id="S3.T1.4.4.4.1.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.1.m1.1.1"><times id="S3.T1.4.4.4.1.1.m1.1.1.1.cmml" xref="S3.T1.4.4.4.1.1.m1.1.1.1"></times><cn id="S3.T1.4.4.4.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.4.4.4.1.1.m1.1.1.2">10</cn><apply id="S3.T1.4.4.4.1.1.m1.1.1.3.cmml" xref="S3.T1.4.4.4.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.1.m1.1.1.3.1.cmml" xref="S3.T1.4.4.4.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.4.4.4.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.4.4.4.1.1.m1.1.1.3.2">10</cn><cn id="S3.T1.4.4.4.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.4.4.4.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.4.4.2">Mixed (Balanced)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.3" rowspan="2"><span class="ltx_text" id="S3.T1.4.4.4.3.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4">9.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.5">3.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.6">7.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.7">3.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.4.4.11.7.1">Mixed (Temp)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.11.7.2">11.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.11.7.3">4.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.11.7.4">7.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.4.11.7.5">3.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Mean Absolute Error (MAE) results for energy and force prediction tasks on various downstream datasets.  The models were fine-tuned after pretraining on different upstream datasets. The top section shows results for models pretrained using the large computational budget of the JMP method (Shoghi et al., 2023). The bottom two sections display results obtained under more limited computational budgets (10 million and 240 million samples), demonstrating the impact of reduced resources on performance. The JMP-S* row indicates reproduced results for the JMP-S model, serving as a comparison baseline.
> <details>
> <summary>read the caption</summary>
> Table 1: In-Distribution Evaluation for energy and force targets. We report test MAE when fine-tuning on downstream targets, as detailed in Downstream Datasets (Section 4). The top section represents models pretrained with the large-scale JMP budget, while the lower two sections show results under a limited budget. JMP-S* denotes reproduced results.
> </details>





### In-depth insights


#### Data-Efficient Pretraining
The concept of 'Data-Efficient Pretraining' in the context of atomic property prediction is a significant contribution because it challenges the prevailing paradigm that larger datasets automatically lead to better performance.  The research highlights the crucial role of **data relevance**, arguing that carefully selecting a smaller, task-relevant dataset for pretraining can significantly outperform using massive, diverse datasets. This approach not only achieves comparable or even superior results but drastically reduces the computational cost, potentially by orders of magnitude.  **The Chemical Similarity Index (CSI)**, a novel metric inspired by FID, is introduced to quantify the alignment between upstream pretraining data and downstream tasks.  CSI serves as a valuable tool for guiding data selection, facilitating the identification of highly relevant datasets and thus, contributing towards **more efficient and cost-effective model development** in this computationally intensive field.  The findings strongly suggest that a focus on data quality, as measured by CSI, is often superior to simply increasing data quantity in atomic property prediction pretraining.

#### CSI Metric
The paper introduces a novel metric, the Chemical Similarity Index (CSI), inspired by the Fréchet Inception Distance (FID) from computer vision.  **CSI's core function is to quantify the alignment between upstream pretraining datasets and downstream tasks in atomic property prediction.**  This is crucial because it allows researchers to select the most relevant pretraining dataset for a given downstream task, thus maximizing efficiency and often improving performance.  Unlike simply increasing dataset size, CSI guides a data-driven, task-specific approach.  **The CSI metric's effectiveness is demonstrated empirically, showing a strong correlation between low CSI values (indicating high similarity) and improved downstream performance.** This suggests that carefully selecting a high-quality, task-relevant pretraining dataset is often more beneficial than using larger, less relevant datasets.  The paper also explores different design considerations for CSI, including feature type, aggregation strategies, and sampling techniques in handling long-tail distributions which are common in molecular datasets. The careful consideration of these aspects underscores the **CSI's robustness and adaptability for the unique challenges posed by the molecular domain**. Overall, the CSI metric represents a valuable tool for efficient pretraining in atomic property prediction.

#### Budget Impact
A significant portion of the research focuses on computational efficiency, especially concerning the trade-offs between dataset size and training epochs under a fixed computational budget.  The authors introduce a novel metric, the Chemical Similarity Index (CSI), to guide dataset selection, **prioritizing quality over quantity**.  Their experiments demonstrate that smaller, carefully chosen datasets, guided by CSI, can match or surpass the performance of models trained on much larger datasets. This is particularly impactful as it drastically reduces computational cost, potentially making advanced molecular modeling accessible to researchers with fewer resources.  The analysis of budget impact shows that indiscriminately increasing dataset size does not always translate to improved performance; in fact, adding less-relevant data can be detrimental.  **Optimal performance often hinges on the right balance between dataset quality and computational budget**, highlighting the importance of intelligent data selection and efficient training strategies.

#### OOD Generalization
The concept of out-of-distribution (OOD) generalization in the context of atomic property prediction is crucial.  The study's findings suggest that while the Chemical Similarity Index (CSI) effectively predicts performance on in-distribution (ID) tasks, its accuracy on OOD tasks is less consistent. **The success of pretraining on a specific dataset heavily depends on the similarity between the training dataset and the downstream task.** This highlights a critical limitation: a highly effective model trained on a certain type of molecules might perform poorly on dissimilar molecules. Therefore, **developing methods to effectively measure and improve the generalization capabilities of models across diverse molecular datasets and properties is necessary**. This would entail the development of more robust metrics that can capture subtle differences in molecular structure and properties, and new techniques to improve the model's ability to adapt to unseen data.  **Further research should focus on more robust feature extraction and representation methods, and the creation of broader, more representative pretraining datasets.** Investigating alternative pretraining strategies, such as multi-task or transfer learning approaches, is also critical for improving OOD generalization. This is essential to enhance the reliability and applicability of machine learning methods in the real-world applications of material science and drug discovery. 

#### Future Directions
Future research could explore expanding the Chemical Similarity Index (CSI) to encompass more diverse molecular representations and properties, potentially improving its predictive power for out-of-distribution tasks.  **Investigating alternative data selection strategies**, beyond CSI-guided selection, could reveal further efficiencies in pretraining.  **The impact of different model architectures** on the effectiveness of data-efficient pretraining warrants further study.  **Exploring the potential of dataset distillation** techniques to create compact, representative subsets from large datasets could drastically reduce computational costs. Finally, a more in-depth analysis of the interplay between dataset size, training epochs, and model complexity under various computational budgets is crucial for establishing optimal training parameters and further enhancing the efficiency of pretraining methods for atomic property prediction.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11085/extracted/6207443/images/pipeline.png)

> 🔼 This figure illustrates the pipeline for pretraining and finetuning a model for atomic property prediction.  It highlights a two-stage process.  First, a dataset selection stage uses a distance metric (δ) to choose the most relevant upstream dataset (from a set of candidate datasets D<sup>(1)</sup>, D<sup>(2)</sup>,...D<sup>(K)</sup>) for pretraining, based on its similarity to the downstream task dataset (D<sub>d</sub>). Second, a limited budget pretraining stage is employed, where a subset of N samples are randomly selected from the chosen upstream dataset and trained for E epochs, resulting in a computational budget of C = E * N.  The pretrained backbone (θ<sup>(1)*</sup><sub>b</sub>) from this process is then fine-tuned using the downstream dataset to get the final model parameters (θ*<sub>d</sub>).
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline Overview. Our paradigm for pretraining and finetuning consists of two new components: (1) Dataset Selection Stage, where a distance metric δ𝛿\deltaitalic_δ is employed to identify the dataset that is most similar to our downstream task dataset 𝒟dsubscript𝒟𝑑\mathcal{D}_{d}caligraphic_D start_POSTSUBSCRIPT italic_d end_POSTSUBSCRIPT, in this case 𝒟u(1)superscriptsubscript𝒟𝑢1\mathcal{D}_{u}^{(1)}caligraphic_D start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ( 1 ) end_POSTSUPERSCRIPT. This selected dataset is then used for pretraining the model. (2) Limited Budget Pretraining, where we impose a training budget by subsampling 𝒩𝒩\mathcal{N}caligraphic_N random samples from 𝒟u(1)superscriptsubscript𝒟𝑢1\mathcal{D}_{u}^{(1)}caligraphic_D start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ( 1 ) end_POSTSUPERSCRIPT and training the model for ℰℰ\mathcal{E}caligraphic_E epochs. This results in a computational budget of 𝒞=ℰ×𝒩𝒞ℰ𝒩\mathcal{C}=\mathcal{E}\times\mathcal{N}caligraphic_C = caligraphic_E × caligraphic_N. The pretrained backbone θb(1)⁣∗superscriptsubscript𝜃𝑏1\theta_{b}^{(1)*}italic_θ start_POSTSUBSCRIPT italic_b end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ( 1 ) ∗ end_POSTSUPERSCRIPT is subsequently finetuned on the downstream task dataset 𝒟dsubscript𝒟𝑑\mathcal{D}_{d}caligraphic_D start_POSTSUBSCRIPT italic_d end_POSTSUBSCRIPT to obtain the final model parameters θd∗superscriptsubscript𝜃𝑑\theta_{d}^{*}italic_θ start_POSTSUBSCRIPT italic_d end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/CSI_bar_balanced_flat_equiformerV2_ID.png)

> 🔼 This figure displays the Chemical Similarity Index (CSI) values, which measure the alignment between different upstream datasets and various downstream tasks. Lower CSI values represent stronger alignment.  The results show that ANI-1x exhibits the strongest alignment with all downstream tasks, indicating its high relevance for pretraining. Conversely, OC20 and OC22 demonstrate the weakest alignment, suggesting that they might be less suitable for these specific downstream tasks. This highlights the importance of selecting task-relevant upstream datasets for effective pretraining.
> <details>
> <summary>read the caption</summary>
> Figure 3: Alignment Between Upstream and Downstream Using CSI. We assess how well the extracted representations from each upstream dataset align with downstream tasks using our CSI metric, where lower values indicate stronger alignment. ANI-1x demonstrates the closest feature alignment with downstream tasks, whereas OC20 and OC22 show the weakest alignment.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/highCSI.png)

> 🔼 This figure demonstrates the effect of adding less relevant pretraining data to a model already pretrained on a relevant dataset.  Specifically, it shows the downstream performance of a model pretrained on 2 million samples from the ANI-1x dataset (a high-quality dataset highly relevant to the downstream tasks), and then further pretrained with an additional 1 million samples from the OC22 dataset (a less relevant dataset).  Despite the increase in the total amount of training data (a larger pretraining budget), the inclusion of the OC22 data negatively impacts the model's performance on downstream tasks.  This result underlines the importance of selecting relevant pretraining data and highlights the Chemical Similarity Index (CSI) as a valuable metric for evaluating data relevance and guiding effective pretraining.
> <details>
> <summary>read the caption</summary>
> Figure 4: Impact of Adding Less Relevant Pretraining Data. Adding 1⁢M1𝑀1M1 italic_M OC22 samples to a 2⁢M2𝑀2M2 italic_M-sample ANI-1x baseline worsens downstream performance despite a larger pretraining budget. This highlights the importance of dataset relevance and the CSI metric for effective pretraining.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/CSI_bar_balanced_flat_equiformerV2_OOD.png)

> 🔼 Figure 5 illustrates the Chemical Similarity Index (CSI) values for various upstream datasets in relation to out-of-distribution (OOD) downstream tasks: QMOF and MatBench.  CSI, a metric assessing dataset relevance, indicates the predicted best upstream dataset for each OOD task.  For the QMOF task, the CSI suggests ANI-1x as the most suitable pretraining dataset. However, for the MatBench task, the CSI suggests that OC20 and OC22 are more appropriate choices. This visualization highlights the ability of CSI to predict the best-performing upstream dataset for various downstream tasks, even those outside the initial training distribution.
> <details>
> <summary>read the caption</summary>
> Figure 5: CSI Between Upstream and OOD Downstream Tasks. CSI values predict that ANI-1x is the best pretraining choice for QMOF, while OC20 and OC22 are best for MatBench.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/CSI_bar_balanced_mean_equiformerV2_ID.png)

> 🔼 This figure compares the results of using two different aggregation methods for calculating the Chemical Similarity Index (CSI): flattening and mean pooling.  The CSI is a metric used to measure the similarity between upstream (pretraining) and downstream (target task) datasets.  The results show that using mean pooling to aggregate node features before computing the CSI leads to a lower score for the OC22 dataset than when using flattening. This suggests that the mean pooling method may be over-smoothing the features in OC22, which reduces its apparent similarity to the downstream datasets. This is an important finding because it highlights the potential impact of the feature aggregation method on the overall CSI results. This implies the need for careful consideration when choosing feature aggregation methods for the computation of CSI.
> <details>
> <summary>read the caption</summary>
> Figure 6: Impact of using mean aggregation instead of flattening on CSI values. We notice that the mean pooling incorrectly reduced the score for OC22 potentially due to over-smoothing.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/CSI_bar_random_flat_equiformerV2_ID.png)

> 🔼 This figure compares the results of using two different sampling methods: random sampling and class-balanced sampling, to create subsets of upstream datasets for the CSI calculation.  It shows that random sampling, due to its non-uniform nature, can create subsets with significant class imbalances. This imbalance impacts the subsequent CSI scores, which measure dataset similarity. The figure highlights how the CSI values obtained using random sampling differ significantly from those obtained using class-balanced sampling, particularly for ANI-1x and Transition-1x.  The class-balanced sampling, employed in the main study, is shown to produce more robust and reliable CSI scores.
> <details>
> <summary>read the caption</summary>
> Figure 7: Impact of using random sampling strategy instead of class-balanced sampling. As highlighted in the long-tail analysis in Appendix C, random sampling can lead to class underrepresentation, potentially affecting the correlation between upstream and downstream tasks. Notably, both ANI-1x and Transition-1x exhibit different patterns compared to the class-balanced values reported in the main paper.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/CSI_bar_balanced_flat_JMP_ID.png)

> 🔼 This figure explores the robustness of the Chemical Similarity Index (CSI) metric by using a different backbone model (the JMP pretrained model) for calculating CSI values. The results are compared against the CSI values obtained using the original backbone in the paper. The comparison shows that using a different backbone model still yields similar insights, demonstrating the consistency and reliability of CSI in identifying the most relevant upstream datasets for pretraining, where ANI-1x consistently demonstrates the highest similarity across different downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: The impact of using another backbone. We use JMP pretrained model and show that similar insights are obtained where Ani-1x is shown as the most similar.
> </details>



![](https://arxiv.org/html/2502.11085/extracted/6207443/images/upstream_sampling.png)

> 🔼 This figure compares two sampling methods for selecting subsets of upstream datasets used in pretraining: random sampling and class-balanced sampling.  Both methods aim to select 10,000 instances from each upstream dataset (ANI-1x, Transition-1x, OC20, OC22). The bar charts show the distribution of the number of unique molecular structures (classes) represented in the selected subset for each dataset and sampling method. Class-balanced sampling aims for more even coverage across all classes, whereas random sampling may over-represent common structures and under-represent rare ones. This is important because class imbalance can affect the performance of machine learning models.
> <details>
> <summary>read the caption</summary>
> Figure 9: Impact of sampling strategies on subset construction for feature extraction. We sample 10K instances for each upstream task, highlighting the differences in class coverage between random and class-balanced sampling.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.9.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.9.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.9.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T2.7.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{N}=1\times 10^{6}" class="ltx_Math" display="inline" id="S4.T2.7.1.1.1.m1.1"><semantics id="S4.T2.7.1.1.1.m1.1a"><mrow id="S4.T2.7.1.1.1.m1.1.1" xref="S4.T2.7.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.7.1.1.1.m1.1.1.2" xref="S4.T2.7.1.1.1.m1.1.1.2.cmml">𝒩</mi><mo id="S4.T2.7.1.1.1.m1.1.1.1" xref="S4.T2.7.1.1.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T2.7.1.1.1.m1.1.1.3" xref="S4.T2.7.1.1.1.m1.1.1.3.cmml"><mn id="S4.T2.7.1.1.1.m1.1.1.3.2" xref="S4.T2.7.1.1.1.m1.1.1.3.2.cmml">1</mn><mo id="S4.T2.7.1.1.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.7.1.1.1.m1.1.1.3.1.cmml">×</mo><msup id="S4.T2.7.1.1.1.m1.1.1.3.3" xref="S4.T2.7.1.1.1.m1.1.1.3.3.cmml"><mn id="S4.T2.7.1.1.1.m1.1.1.3.3.2" xref="S4.T2.7.1.1.1.m1.1.1.3.3.2.cmml">10</mn><mn id="S4.T2.7.1.1.1.m1.1.1.3.3.3" xref="S4.T2.7.1.1.1.m1.1.1.3.3.3.cmml">6</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.1.1.1.m1.1b"><apply id="S4.T2.7.1.1.1.m1.1.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1"><eq id="S4.T2.7.1.1.1.m1.1.1.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1.1"></eq><ci id="S4.T2.7.1.1.1.m1.1.1.2.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2">𝒩</ci><apply id="S4.T2.7.1.1.1.m1.1.1.3.cmml" xref="S4.T2.7.1.1.1.m1.1.1.3"><times id="S4.T2.7.1.1.1.m1.1.1.3.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1.3.1"></times><cn id="S4.T2.7.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.7.1.1.1.m1.1.1.3.2">1</cn><apply id="S4.T2.7.1.1.1.m1.1.1.3.3.cmml" xref="S4.T2.7.1.1.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="S4.T2.7.1.1.1.m1.1.1.3.3.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1.3.3">superscript</csymbol><cn id="S4.T2.7.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.7.1.1.1.m1.1.1.3.3.2">10</cn><cn id="S4.T2.7.1.1.1.m1.1.1.3.3.3.cmml" type="integer" xref="S4.T2.7.1.1.1.m1.1.1.3.3.3">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.1.1.1.m1.1c">\mathcal{N}=1\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.1.1.1.m1.1d">caligraphic_N = 1 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T2.8.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{N}=2\times 10^{6}" class="ltx_Math" display="inline" id="S4.T2.8.2.2.2.m1.1"><semantics id="S4.T2.8.2.2.2.m1.1a"><mrow id="S4.T2.8.2.2.2.m1.1.1" xref="S4.T2.8.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.8.2.2.2.m1.1.1.2" xref="S4.T2.8.2.2.2.m1.1.1.2.cmml">𝒩</mi><mo id="S4.T2.8.2.2.2.m1.1.1.1" xref="S4.T2.8.2.2.2.m1.1.1.1.cmml">=</mo><mrow id="S4.T2.8.2.2.2.m1.1.1.3" xref="S4.T2.8.2.2.2.m1.1.1.3.cmml"><mn id="S4.T2.8.2.2.2.m1.1.1.3.2" xref="S4.T2.8.2.2.2.m1.1.1.3.2.cmml">2</mn><mo id="S4.T2.8.2.2.2.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.8.2.2.2.m1.1.1.3.1.cmml">×</mo><msup id="S4.T2.8.2.2.2.m1.1.1.3.3" xref="S4.T2.8.2.2.2.m1.1.1.3.3.cmml"><mn id="S4.T2.8.2.2.2.m1.1.1.3.3.2" xref="S4.T2.8.2.2.2.m1.1.1.3.3.2.cmml">10</mn><mn id="S4.T2.8.2.2.2.m1.1.1.3.3.3" xref="S4.T2.8.2.2.2.m1.1.1.3.3.3.cmml">6</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.2.2.2.m1.1b"><apply id="S4.T2.8.2.2.2.m1.1.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1"><eq id="S4.T2.8.2.2.2.m1.1.1.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1.1"></eq><ci id="S4.T2.8.2.2.2.m1.1.1.2.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2">𝒩</ci><apply id="S4.T2.8.2.2.2.m1.1.1.3.cmml" xref="S4.T2.8.2.2.2.m1.1.1.3"><times id="S4.T2.8.2.2.2.m1.1.1.3.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1.3.1"></times><cn id="S4.T2.8.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.8.2.2.2.m1.1.1.3.2">2</cn><apply id="S4.T2.8.2.2.2.m1.1.1.3.3.cmml" xref="S4.T2.8.2.2.2.m1.1.1.3.3"><csymbol cd="ambiguous" id="S4.T2.8.2.2.2.m1.1.1.3.3.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1.3.3">superscript</csymbol><cn id="S4.T2.8.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.8.2.2.2.m1.1.1.3.3.2">10</cn><cn id="S4.T2.8.2.2.2.m1.1.1.3.3.3.cmml" type="integer" xref="S4.T2.8.2.2.2.m1.1.1.3.3.3">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.2.2.2.m1.1c">\mathcal{N}=2\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.2.2.2.m1.1d">caligraphic_N = 2 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T2.9.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{N}=3\times 10^{6}" class="ltx_Math" display="inline" id="S4.T2.9.3.3.3.m1.1"><semantics id="S4.T2.9.3.3.3.m1.1a"><mrow id="S4.T2.9.3.3.3.m1.1.1" xref="S4.T2.9.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.9.3.3.3.m1.1.1.2" xref="S4.T2.9.3.3.3.m1.1.1.2.cmml">𝒩</mi><mo id="S4.T2.9.3.3.3.m1.1.1.1" xref="S4.T2.9.3.3.3.m1.1.1.1.cmml">=</mo><mrow id="S4.T2.9.3.3.3.m1.1.1.3" xref="S4.T2.9.3.3.3.m1.1.1.3.cmml"><mn id="S4.T2.9.3.3.3.m1.1.1.3.2" xref="S4.T2.9.3.3.3.m1.1.1.3.2.cmml">3</mn><mo id="S4.T2.9.3.3.3.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.9.3.3.3.m1.1.1.3.1.cmml">×</mo><msup id="S4.T2.9.3.3.3.m1.1.1.3.3" xref="S4.T2.9.3.3.3.m1.1.1.3.3.cmml"><mn id="S4.T2.9.3.3.3.m1.1.1.3.3.2" xref="S4.T2.9.3.3.3.m1.1.1.3.3.2.cmml">10</mn><mn id="S4.T2.9.3.3.3.m1.1.1.3.3.3" xref="S4.T2.9.3.3.3.m1.1.1.3.3.3.cmml">6</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.9.3.3.3.m1.1b"><apply id="S4.T2.9.3.3.3.m1.1.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1"><eq id="S4.T2.9.3.3.3.m1.1.1.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1.1"></eq><ci id="S4.T2.9.3.3.3.m1.1.1.2.cmml" xref="S4.T2.9.3.3.3.m1.1.1.2">𝒩</ci><apply id="S4.T2.9.3.3.3.m1.1.1.3.cmml" xref="S4.T2.9.3.3.3.m1.1.1.3"><times id="S4.T2.9.3.3.3.m1.1.1.3.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1.3.1"></times><cn id="S4.T2.9.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.9.3.3.3.m1.1.1.3.2">3</cn><apply id="S4.T2.9.3.3.3.m1.1.1.3.3.cmml" xref="S4.T2.9.3.3.3.m1.1.1.3.3"><csymbol cd="ambiguous" id="S4.T2.9.3.3.3.m1.1.1.3.3.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1.3.3">superscript</csymbol><cn id="S4.T2.9.3.3.3.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T2.9.3.3.3.m1.1.1.3.3.2">10</cn><cn id="S4.T2.9.3.3.3.m1.1.1.3.3.3.cmml" type="integer" xref="S4.T2.9.3.3.3.m1.1.1.3.3.3">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.3.3.3.m1.1c">\mathcal{N}=3\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.3.3.3.m1.1d">caligraphic_N = 3 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S4.T2.9.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T2.9.3.4.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Upstream</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">rMD17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">MD22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">SPICE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">QM9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">rMD17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">MD22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">SPICE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">QM9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">rMD17</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">MD22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">SPICE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.3.4.1.13" style="padding-left:4.0pt;padding-right:4.0pt;">QM9</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.9.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.9.3.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">ANI-1x</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.2.1">5.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.3.1">2.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.4.1">5.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.5.1">2.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.6.1">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.7.1">2.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.8.1">5.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.9.1">2.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.10.1">5.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.11.1">2.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.12.1">5.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.5.1.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.3.5.1.13.1">2.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.9.3.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Transition-1x</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">11.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">3.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">7.85</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">3.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">10.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">7.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">3.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">10.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">3.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">7.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.6.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">3.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.9.3.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">OC20</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">4.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">4.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">14.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">8.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">16.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">4.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">10.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.3.7.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">5.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.9.3.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">OC22</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">18.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">5.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">11.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">10.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">5.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">11.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.3.8.4.13" style="padding-left:4.0pt;padding-right:4.0pt;">5.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment designed to assess how different computational budgets affect the performance of models pretrained on various upstream datasets.  The experiment keeps the number of training epochs constant at 5 but varies the number of training samples across three different budget levels: 1 million, 2 million, and 3 million samples. The table shows the mean absolute error (MAE) achieved on four downstream tasks (rMD17, MD22, SPICE, and QM9) for models pretrained on four different upstream datasets (ANI-1x, Transition-1x, OC20, and OC22).  The key finding is that the upstream dataset with the lowest Chemical Similarity Index (CSI) consistently yields the best downstream performance, regardless of the computational budget.
> <details>
> <summary>read the caption</summary>
> Table 2: Effect of Computational Budget on Performance. While fixing the number of epochs (ℰℰ\mathcal{E}caligraphic_E) to 5, we vary the number of training samples from 𝒩=1×106𝒩1superscript106\mathcal{N}=1\times 10^{6}caligraphic_N = 1 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT upto 𝒩=3×106𝒩3superscript106\mathcal{N}=3\times 10^{6}caligraphic_N = 3 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT. Our findings are consistent across budget levels where the upstream dataset with the lowest CSI yields the best downstream performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><math alttext="\mathbf{\mathcal{C}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">𝒞</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">𝒞</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\mathbf{\mathcal{C}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">caligraphic_C</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Upstream Data</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">rMD17</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">MD22</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">SPICE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.7.1">QM9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.3.3.4.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.3.3.4.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<td class="ltx_td" id="S4.T3.3.3.4.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4.1.4" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4.1.5" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4.1.6" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4.1.7" style="padding-left:8.0pt;padding-right:8.0pt;">(meV)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.2.2.1" rowspan="2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.1.1"><math alttext="240\times 10^{6}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.1.m1.1"><semantics id="S4.T3.2.2.2.1.1.m1.1a"><mrow id="S4.T3.2.2.2.1.1.m1.1.1" xref="S4.T3.2.2.2.1.1.m1.1.1.cmml"><mn id="S4.T3.2.2.2.1.1.m1.1.1.2" xref="S4.T3.2.2.2.1.1.m1.1.1.2.cmml">240</mn><mo id="S4.T3.2.2.2.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T3.2.2.2.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T3.2.2.2.1.1.m1.1.1.3" xref="S4.T3.2.2.2.1.1.m1.1.1.3.cmml"><mn id="S4.T3.2.2.2.1.1.m1.1.1.3.2" xref="S4.T3.2.2.2.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T3.2.2.2.1.1.m1.1.1.3.3" xref="S4.T3.2.2.2.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.1.m1.1b"><apply id="S4.T3.2.2.2.1.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1"><times id="S4.T3.2.2.2.1.1.m1.1.1.1.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1.1"></times><cn id="S4.T3.2.2.2.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.2.2.2.1.1.m1.1.1.2">240</cn><apply id="S4.T3.2.2.2.1.1.m1.1.1.3.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.2.2.2.1.1.m1.1.1.3.1.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T3.2.2.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T3.2.2.2.1.1.m1.1.1.3.2">10</cn><cn id="S4.T3.2.2.2.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T3.2.2.2.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.1.m1.1c">240\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.1.m1.1d">240 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.2.2.2" rowspan="2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.1">Mixed (Temp)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">JMP-L (GemNet-OC-L)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">5.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">1.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.6" style="padding-left:8.0pt;padding-right:8.0pt;">4.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.7" style="padding-left:8.0pt;padding-right:8.0pt;">2.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5.2">
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.1" style="padding-left:8.0pt;padding-right:8.0pt;">JMP-L<sup class="ltx_sup" id="S4.T3.3.3.5.2.1.1">*</sup> (GemNet-OC-L)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">5.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">4.91</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.3.3.3.1" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.3.3.3.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.1.m1.1"><semantics id="S4.T3.3.3.3.1.1.m1.1a"><mrow id="S4.T3.3.3.3.1.1.m1.1.1" xref="S4.T3.3.3.3.1.1.m1.1.1.cmml"><mn id="S4.T3.3.3.3.1.1.m1.1.1.2" xref="S4.T3.3.3.3.1.1.m1.1.1.2.cmml">10</mn><mo id="S4.T3.3.3.3.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T3.3.3.3.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T3.3.3.3.1.1.m1.1.1.3" xref="S4.T3.3.3.3.1.1.m1.1.1.3.cmml"><mn id="S4.T3.3.3.3.1.1.m1.1.1.3.2" xref="S4.T3.3.3.3.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T3.3.3.3.1.1.m1.1.1.3.3" xref="S4.T3.3.3.3.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.1.m1.1b"><apply id="S4.T3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.1.m1.1.1"><times id="S4.T3.3.3.3.1.1.m1.1.1.1.cmml" xref="S4.T3.3.3.3.1.1.m1.1.1.1"></times><cn id="S4.T3.3.3.3.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.3.3.3.1.1.m1.1.1.2">10</cn><apply id="S4.T3.3.3.3.1.1.m1.1.1.3.cmml" xref="S4.T3.3.3.3.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.3.3.3.1.1.m1.1.1.3.1.cmml" xref="S4.T3.3.3.3.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T3.3.3.3.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T3.3.3.3.1.1.m1.1.1.3.2">10</cn><cn id="S4.T3.3.3.3.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T3.3.3.3.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.3.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">ANI-1x</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.3.3" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.3.3.3.3.1">GemNet-OC-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.4.1">4.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.5.1">2.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.6.1">5.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.7.1">2.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.6.3.1" style="padding-left:8.0pt;padding-right:8.0pt;">Transition-1x</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">9.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.3" style="padding-left:8.0pt;padding-right:8.0pt;">3.56</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.4" style="padding-left:8.0pt;padding-right:8.0pt;">7.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.7.4.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC20</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">13.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.3" style="padding-left:8.0pt;padding-right:8.0pt;">3.90</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.4" style="padding-left:8.0pt;padding-right:8.0pt;">9.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.5" style="padding-left:8.0pt;padding-right:8.0pt;">4.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.3.8.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC22</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.2" style="padding-left:8.0pt;padding-right:8.0pt;">12.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.3" style="padding-left:8.0pt;padding-right:8.0pt;">4.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.4" style="padding-left:8.0pt;padding-right:8.0pt;">10.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.5" style="padding-left:8.0pt;padding-right:8.0pt;">4.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates the effect of using different backbone sizes (GemNet-OC-S and GemNet-OC-L) on the performance of models pretrained with various upstream datasets.  It compares the performance of models pretrained on a single, relevant upstream dataset (selected based on its relevance to the downstream task) versus models pretrained on a mixture of large-scale datasets.  The results demonstrate that choosing the relevant upstream dataset consistently yields superior performance, regardless of the backbone size, highlighting the importance of data quality over quantity in pretraining.
> <details>
> <summary>read the caption</summary>
> Table 3: Effect of Changing the Backbone Size. We analyze the impact of using a larger variant of GemNet-OC and find that, irrespective of backbone size, relevance-based upstream dataset selection consistently outperforms costly large-scale dataset mixing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.9.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T4.3.1.1.1"><math alttext="\mathbf{\mathcal{C}}" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T4.3.1.1.1.m1.1.1" xref="S4.T4.3.1.1.1.m1.1.1.cmml">𝒞</mi><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.m1.1b"><ci id="S4.T4.3.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.m1.1.1">𝒞</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.m1.1c">\mathbf{\mathcal{C}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.m1.1d">caligraphic_C</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.4.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.2.2.3.1">Upstream Data</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.2.2.4.1">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.4.2.2.2.1">QM9</span> [<math alttext="\Delta_{\epsilon}" class="ltx_Math" display="inline" id="S4.T4.4.2.2.2.m1.1"><semantics id="S4.T4.4.2.2.2.m1.1a"><msub id="S4.T4.4.2.2.2.m1.1.1" xref="S4.T4.4.2.2.2.m1.1.1.cmml"><mi id="S4.T4.4.2.2.2.m1.1.1.2" mathvariant="normal" xref="S4.T4.4.2.2.2.m1.1.1.2.cmml">Δ</mi><mi id="S4.T4.4.2.2.2.m1.1.1.3" xref="S4.T4.4.2.2.2.m1.1.1.3.cmml">ϵ</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.4.2.2.2.m1.1b"><apply id="S4.T4.4.2.2.2.m1.1.1.cmml" xref="S4.T4.4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.4.2.2.2.m1.1.1.1.cmml" xref="S4.T4.4.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T4.4.2.2.2.m1.1.1.2.cmml" xref="S4.T4.4.2.2.2.m1.1.1.2">Δ</ci><ci id="S4.T4.4.2.2.2.m1.1.1.3.cmml" xref="S4.T4.4.2.2.2.m1.1.1.3">italic-ϵ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.2.2.2.m1.1c">\Delta_{\epsilon}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.2.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_ϵ end_POSTSUBSCRIPT</annotation></semantics></math>]</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.2.2.5.1">QMOF</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.2.2.6">
<span class="ltx_text ltx_font_bold" id="S4.T4.4.2.2.6.1">MatBench</span> [fold0 / mean]</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.4">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.6.4.4.3"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.6.4.4.4"></th>
<td class="ltx_td" id="S4.T4.6.4.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.3.3.1">(<math alttext="meV" class="ltx_Math" display="inline" id="S4.T4.5.3.3.1.m1.1"><semantics id="S4.T4.5.3.3.1.m1.1a"><mrow id="S4.T4.5.3.3.1.m1.1.1" xref="S4.T4.5.3.3.1.m1.1.1.cmml"><mi id="S4.T4.5.3.3.1.m1.1.1.2" xref="S4.T4.5.3.3.1.m1.1.1.2.cmml">m</mi><mo id="S4.T4.5.3.3.1.m1.1.1.1" xref="S4.T4.5.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.5.3.3.1.m1.1.1.3" xref="S4.T4.5.3.3.1.m1.1.1.3.cmml">e</mi><mo id="S4.T4.5.3.3.1.m1.1.1.1a" xref="S4.T4.5.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.5.3.3.1.m1.1.1.4" xref="S4.T4.5.3.3.1.m1.1.1.4.cmml">V</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.3.1.m1.1b"><apply id="S4.T4.5.3.3.1.m1.1.1.cmml" xref="S4.T4.5.3.3.1.m1.1.1"><times id="S4.T4.5.3.3.1.m1.1.1.1.cmml" xref="S4.T4.5.3.3.1.m1.1.1.1"></times><ci id="S4.T4.5.3.3.1.m1.1.1.2.cmml" xref="S4.T4.5.3.3.1.m1.1.1.2">𝑚</ci><ci id="S4.T4.5.3.3.1.m1.1.1.3.cmml" xref="S4.T4.5.3.3.1.m1.1.1.3">𝑒</ci><ci id="S4.T4.5.3.3.1.m1.1.1.4.cmml" xref="S4.T4.5.3.3.1.m1.1.1.4">𝑉</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.3.1.m1.1c">meV</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.3.1.m1.1d">italic_m italic_e italic_V</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.4.4.6">(eV)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.4.4.2">(<math alttext="cm^{-1}" class="ltx_Math" display="inline" id="S4.T4.6.4.4.2.m1.1"><semantics id="S4.T4.6.4.4.2.m1.1a"><mrow id="S4.T4.6.4.4.2.m1.1.1" xref="S4.T4.6.4.4.2.m1.1.1.cmml"><mi id="S4.T4.6.4.4.2.m1.1.1.2" xref="S4.T4.6.4.4.2.m1.1.1.2.cmml">c</mi><mo id="S4.T4.6.4.4.2.m1.1.1.1" xref="S4.T4.6.4.4.2.m1.1.1.1.cmml">⁢</mo><msup id="S4.T4.6.4.4.2.m1.1.1.3" xref="S4.T4.6.4.4.2.m1.1.1.3.cmml"><mi id="S4.T4.6.4.4.2.m1.1.1.3.2" xref="S4.T4.6.4.4.2.m1.1.1.3.2.cmml">m</mi><mrow id="S4.T4.6.4.4.2.m1.1.1.3.3" xref="S4.T4.6.4.4.2.m1.1.1.3.3.cmml"><mo id="S4.T4.6.4.4.2.m1.1.1.3.3a" xref="S4.T4.6.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="S4.T4.6.4.4.2.m1.1.1.3.3.2" xref="S4.T4.6.4.4.2.m1.1.1.3.3.2.cmml">1</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.4.2.m1.1b"><apply id="S4.T4.6.4.4.2.m1.1.1.cmml" xref="S4.T4.6.4.4.2.m1.1.1"><times id="S4.T4.6.4.4.2.m1.1.1.1.cmml" xref="S4.T4.6.4.4.2.m1.1.1.1"></times><ci id="S4.T4.6.4.4.2.m1.1.1.2.cmml" xref="S4.T4.6.4.4.2.m1.1.1.2">𝑐</ci><apply id="S4.T4.6.4.4.2.m1.1.1.3.cmml" xref="S4.T4.6.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.6.4.4.2.m1.1.1.3.1.cmml" xref="S4.T4.6.4.4.2.m1.1.1.3">superscript</csymbol><ci id="S4.T4.6.4.4.2.m1.1.1.3.2.cmml" xref="S4.T4.6.4.4.2.m1.1.1.3.2">𝑚</ci><apply id="S4.T4.6.4.4.2.m1.1.1.3.3.cmml" xref="S4.T4.6.4.4.2.m1.1.1.3.3"><minus id="S4.T4.6.4.4.2.m1.1.1.3.3.1.cmml" xref="S4.T4.6.4.4.2.m1.1.1.3.3"></minus><cn id="S4.T4.6.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T4.6.4.4.2.m1.1.1.3.3.2">1</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.4.2.m1.1c">cm^{-1}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.4.2.m1.1d">italic_c italic_m start_POSTSUPERSCRIPT - 1 end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.7.5.5.1" rowspan="2"><span class="ltx_text" id="S4.T4.7.5.5.1.1"><math alttext="240\times 10^{6}" class="ltx_Math" display="inline" id="S4.T4.7.5.5.1.1.m1.1"><semantics id="S4.T4.7.5.5.1.1.m1.1a"><mrow id="S4.T4.7.5.5.1.1.m1.1.1" xref="S4.T4.7.5.5.1.1.m1.1.1.cmml"><mn id="S4.T4.7.5.5.1.1.m1.1.1.2" xref="S4.T4.7.5.5.1.1.m1.1.1.2.cmml">240</mn><mo id="S4.T4.7.5.5.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.7.5.5.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T4.7.5.5.1.1.m1.1.1.3" xref="S4.T4.7.5.5.1.1.m1.1.1.3.cmml"><mn id="S4.T4.7.5.5.1.1.m1.1.1.3.2" xref="S4.T4.7.5.5.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T4.7.5.5.1.1.m1.1.1.3.3" xref="S4.T4.7.5.5.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.7.5.5.1.1.m1.1b"><apply id="S4.T4.7.5.5.1.1.m1.1.1.cmml" xref="S4.T4.7.5.5.1.1.m1.1.1"><times id="S4.T4.7.5.5.1.1.m1.1.1.1.cmml" xref="S4.T4.7.5.5.1.1.m1.1.1.1"></times><cn id="S4.T4.7.5.5.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T4.7.5.5.1.1.m1.1.1.2">240</cn><apply id="S4.T4.7.5.5.1.1.m1.1.1.3.cmml" xref="S4.T4.7.5.5.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.7.5.5.1.1.m1.1.1.3.1.cmml" xref="S4.T4.7.5.5.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T4.7.5.5.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.7.5.5.1.1.m1.1.1.3.2">10</cn><cn id="S4.T4.7.5.5.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.7.5.5.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.5.5.1.1.m1.1c">240\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.5.5.1.1.m1.1d">240 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.7.5.5.2" rowspan="2"><span class="ltx_text" id="S4.T4.7.5.5.2.1">Mixed (Temp)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.5.5.3">JMP-S (GemNet-OC-S)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.5.5.4">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.5.5.5">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.5.5.6">26.60 / 22.77</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.8.1">
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.8.1.1">JMP-S<sup class="ltx_sup" id="S4.T4.9.7.8.1.1.1">*</sup> (GemNet-OC-S)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.8.1.2">24.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.8.1.3">0.19</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.8.1.4">24.77 / 21.48</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.8.6.6.1" rowspan="4"><span class="ltx_text" id="S4.T4.8.6.6.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="S4.T4.8.6.6.1.1.m1.1"><semantics id="S4.T4.8.6.6.1.1.m1.1a"><mrow id="S4.T4.8.6.6.1.1.m1.1.1" xref="S4.T4.8.6.6.1.1.m1.1.1.cmml"><mn id="S4.T4.8.6.6.1.1.m1.1.1.2" xref="S4.T4.8.6.6.1.1.m1.1.1.2.cmml">10</mn><mo id="S4.T4.8.6.6.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.8.6.6.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T4.8.6.6.1.1.m1.1.1.3" xref="S4.T4.8.6.6.1.1.m1.1.1.3.cmml"><mn id="S4.T4.8.6.6.1.1.m1.1.1.3.2" xref="S4.T4.8.6.6.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T4.8.6.6.1.1.m1.1.1.3.3" xref="S4.T4.8.6.6.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.8.6.6.1.1.m1.1b"><apply id="S4.T4.8.6.6.1.1.m1.1.1.cmml" xref="S4.T4.8.6.6.1.1.m1.1.1"><times id="S4.T4.8.6.6.1.1.m1.1.1.1.cmml" xref="S4.T4.8.6.6.1.1.m1.1.1.1"></times><cn id="S4.T4.8.6.6.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T4.8.6.6.1.1.m1.1.1.2">10</cn><apply id="S4.T4.8.6.6.1.1.m1.1.1.3.cmml" xref="S4.T4.8.6.6.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.8.6.6.1.1.m1.1.1.3.1.cmml" xref="S4.T4.8.6.6.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T4.8.6.6.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.8.6.6.1.1.m1.1.1.3.2">10</cn><cn id="S4.T4.8.6.6.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.8.6.6.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.6.6.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.6.6.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.8.6.6.2">ANI-1x</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.6.6.3" rowspan="4"><span class="ltx_text" id="S4.T4.8.6.6.3.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.6.4.1">24.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.6.6.5">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.6.6.6">30.09 / 29.60</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.7.9.2.1">Transition-1x</th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.9.2.2">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.9.2.3">0.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.9.2.4">52.22 / 38.56</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.7.10.3.1">OC20</th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.3.2">30.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.3.3">0.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.10.3.4">37.52 / 30.88</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.7.11.4.1">OC22</th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.11.4.2">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.11.4.3">0.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.11.4.4">32.78 / 27.55</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.9.7.7.1" rowspan="2"><span class="ltx_text" id="S4.T4.9.7.7.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="S4.T4.9.7.7.1.1.m1.1"><semantics id="S4.T4.9.7.7.1.1.m1.1a"><mrow id="S4.T4.9.7.7.1.1.m1.1.1" xref="S4.T4.9.7.7.1.1.m1.1.1.cmml"><mn id="S4.T4.9.7.7.1.1.m1.1.1.2" xref="S4.T4.9.7.7.1.1.m1.1.1.2.cmml">10</mn><mo id="S4.T4.9.7.7.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.9.7.7.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T4.9.7.7.1.1.m1.1.1.3" xref="S4.T4.9.7.7.1.1.m1.1.1.3.cmml"><mn id="S4.T4.9.7.7.1.1.m1.1.1.3.2" xref="S4.T4.9.7.7.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S4.T4.9.7.7.1.1.m1.1.1.3.3" xref="S4.T4.9.7.7.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.9.7.7.1.1.m1.1b"><apply id="S4.T4.9.7.7.1.1.m1.1.1.cmml" xref="S4.T4.9.7.7.1.1.m1.1.1"><times id="S4.T4.9.7.7.1.1.m1.1.1.1.cmml" xref="S4.T4.9.7.7.1.1.m1.1.1.1"></times><cn id="S4.T4.9.7.7.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T4.9.7.7.1.1.m1.1.1.2">10</cn><apply id="S4.T4.9.7.7.1.1.m1.1.1.3.cmml" xref="S4.T4.9.7.7.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.9.7.7.1.1.m1.1.1.3.1.cmml" xref="S4.T4.9.7.7.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T4.9.7.7.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.9.7.7.1.1.m1.1.1.3.2">10</cn><cn id="S4.T4.9.7.7.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.9.7.7.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.7.7.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.7.7.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.7.7.2">Mixed (Balanced)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.7.7.3" rowspan="2"><span class="ltx_text" id="S4.T4.9.7.7.3.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.7.4">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.5.1">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.7.7.6"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.7.6.1">26.11 / 24.87</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.9.7.12.5.1">Mixed (Temp)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.12.5.2">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.12.5.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.7.12.5.3.1">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.7.12.5.4">26.63 / 25.61</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents out-of-distribution (OOD) performance results for various upstream datasets.  The CSI metric was used to predict the best upstream dataset for each OOD downstream task (QMOF, MatBench, and a specific OOD subset of QM9). The results show that the CSI prediction aligns well with the best-performing upstream source for the QM9 OOD task, but it fails to accurately predict the optimal source for MatBench.  Furthermore, the table demonstrates that using a mixed set of upstream datasets for pretraining generally improves performance on the OOD tasks compared to using a single upstream dataset, highlighting the value of data diversity for robust generalization to unseen data.
> <details>
> <summary>read the caption</summary>
> Table 4: OOD Task Performance Across Upstream Sources. We compare the CSI-predicted best upstream sources with actual downstream performance on OOD tasks (QMOF, MatBench, and QM9’s ΔϵsubscriptΔitalic-ϵ\Delta_{\epsilon}roman_Δ start_POSTSUBSCRIPT italic_ϵ end_POSTSUBSCRIPT). While CSI aligns well with QM9’s OOD label, it mispredicts the best source for MatBench. Mixed pretraining generally improves performance, highlighting the benefits of diverse upstream sources for OOD generalization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.7.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><math alttext="\mathbf{\mathcal{C}}" class="ltx_Math" display="inline" id="A1.T5.7.1.1.m1.1"><semantics id="A1.T5.7.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T5.7.1.1.m1.1.1" xref="A1.T5.7.1.1.m1.1.1.cmml">𝒞</mi><annotation-xml encoding="MathML-Content" id="A1.T5.7.1.1.m1.1b"><ci id="A1.T5.7.1.1.m1.1.1.cmml" xref="A1.T5.7.1.1.m1.1.1">𝒞</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.1.1.m1.1c">\mathbf{\mathcal{C}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.1.1.m1.1d">caligraphic_C</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.8.2.2" style="padding-left:8.0pt;padding-right:8.0pt;"><math alttext="\mathbf{\mathcal{N}}" class="ltx_Math" display="inline" id="A1.T5.8.2.2.m1.1"><semantics id="A1.T5.8.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T5.8.2.2.m1.1.1" xref="A1.T5.8.2.2.m1.1.1.cmml">𝒩</mi><annotation-xml encoding="MathML-Content" id="A1.T5.8.2.2.m1.1b"><ci id="A1.T5.8.2.2.m1.1.1.cmml" xref="A1.T5.8.2.2.m1.1.1">𝒩</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.2.2.m1.1c">\mathbf{\mathcal{N}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.2.2.m1.1d">caligraphic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.9.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><math alttext="\mathbf{\mathcal{E}}" class="ltx_Math" display="inline" id="A1.T5.9.3.3.m1.1"><semantics id="A1.T5.9.3.3.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A1.T5.9.3.3.m1.1.1" xref="A1.T5.9.3.3.m1.1.1.cmml">ℰ</mi><annotation-xml encoding="MathML-Content" id="A1.T5.9.3.3.m1.1b"><ci id="A1.T5.9.3.3.m1.1.1.cmml" xref="A1.T5.9.3.3.m1.1.1">ℰ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.3.3.m1.1c">\mathbf{\mathcal{E}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.3.3.m1.1d">caligraphic_E</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.9.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.4.1">Upstream Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.9.3.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.5.1">Backbone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.9.3.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.6.1">rMD17</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.9.3.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.7.1">MD22</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.9.3.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.8.1">SPICE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.9.3.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.9.3.9.1">QM9</span></th>
</tr>
<tr class="ltx_tr" id="A1.T5.15.10.1">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T5.15.10.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A1.T5.15.10.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A1.T5.15.10.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A1.T5.15.10.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column" id="A1.T5.15.10.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.15.10.1.6" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.15.10.1.7" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.15.10.1.8" style="padding-left:8.0pt;padding-right:8.0pt;">(meV/Å)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.15.10.1.9" style="padding-left:8.0pt;padding-right:8.0pt;">(meV)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.12.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.10.4.1" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.10.4.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="A1.T5.10.4.1.1.m1.1"><semantics id="A1.T5.10.4.1.1.m1.1a"><mrow id="A1.T5.10.4.1.1.m1.1.1" xref="A1.T5.10.4.1.1.m1.1.1.cmml"><mn id="A1.T5.10.4.1.1.m1.1.1.2" xref="A1.T5.10.4.1.1.m1.1.1.2.cmml">10</mn><mo id="A1.T5.10.4.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.10.4.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.10.4.1.1.m1.1.1.3" xref="A1.T5.10.4.1.1.m1.1.1.3.cmml"><mn id="A1.T5.10.4.1.1.m1.1.1.3.2" xref="A1.T5.10.4.1.1.m1.1.1.3.2.cmml">10</mn><mn id="A1.T5.10.4.1.1.m1.1.1.3.3" xref="A1.T5.10.4.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.10.4.1.1.m1.1b"><apply id="A1.T5.10.4.1.1.m1.1.1.cmml" xref="A1.T5.10.4.1.1.m1.1.1"><times id="A1.T5.10.4.1.1.m1.1.1.1.cmml" xref="A1.T5.10.4.1.1.m1.1.1.1"></times><cn id="A1.T5.10.4.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.10.4.1.1.m1.1.1.2">10</cn><apply id="A1.T5.10.4.1.1.m1.1.1.3.cmml" xref="A1.T5.10.4.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.10.4.1.1.m1.1.1.3.1.cmml" xref="A1.T5.10.4.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.10.4.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.10.4.1.1.m1.1.1.3.2">10</cn><cn id="A1.T5.10.4.1.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T5.10.4.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.4.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.4.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.11.5.2" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.11.5.2.1"><math alttext="2\times 10^{6}" class="ltx_Math" display="inline" id="A1.T5.11.5.2.1.m1.1"><semantics id="A1.T5.11.5.2.1.m1.1a"><mrow id="A1.T5.11.5.2.1.m1.1.1" xref="A1.T5.11.5.2.1.m1.1.1.cmml"><mn id="A1.T5.11.5.2.1.m1.1.1.2" xref="A1.T5.11.5.2.1.m1.1.1.2.cmml">2</mn><mo id="A1.T5.11.5.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.11.5.2.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.11.5.2.1.m1.1.1.3" xref="A1.T5.11.5.2.1.m1.1.1.3.cmml"><mn id="A1.T5.11.5.2.1.m1.1.1.3.2" xref="A1.T5.11.5.2.1.m1.1.1.3.2.cmml">10</mn><mn id="A1.T5.11.5.2.1.m1.1.1.3.3" xref="A1.T5.11.5.2.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.11.5.2.1.m1.1b"><apply id="A1.T5.11.5.2.1.m1.1.1.cmml" xref="A1.T5.11.5.2.1.m1.1.1"><times id="A1.T5.11.5.2.1.m1.1.1.1.cmml" xref="A1.T5.11.5.2.1.m1.1.1.1"></times><cn id="A1.T5.11.5.2.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.11.5.2.1.m1.1.1.2">2</cn><apply id="A1.T5.11.5.2.1.m1.1.1.3.cmml" xref="A1.T5.11.5.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.11.5.2.1.m1.1.1.3.1.cmml" xref="A1.T5.11.5.2.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.11.5.2.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.11.5.2.1.m1.1.1.3.2">10</cn><cn id="A1.T5.11.5.2.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T5.11.5.2.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.11.5.2.1.m1.1c">2\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.11.5.2.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.12.6.3" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.12.6.3.1"><math alttext="5" class="ltx_Math" display="inline" id="A1.T5.12.6.3.1.m1.1"><semantics id="A1.T5.12.6.3.1.m1.1a"><mn id="A1.T5.12.6.3.1.m1.1.1" xref="A1.T5.12.6.3.1.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="A1.T5.12.6.3.1.m1.1b"><cn id="A1.T5.12.6.3.1.m1.1.1.cmml" type="integer" xref="A1.T5.12.6.3.1.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.12.6.3.1.m1.1c">5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.12.6.3.1.m1.1d">5</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.12.6.4" style="padding-left:8.0pt;padding-right:8.0pt;">ANI-1x</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.12.6.5" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.12.6.5.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.12.6.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.6.1">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.12.6.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.7.1">2.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.12.6.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.8.1">5.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.12.6.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.12.6.9.1">2.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.15.11.1.1" style="padding-left:8.0pt;padding-right:8.0pt;">Transition-1x</th>
<td class="ltx_td ltx_align_center" id="A1.T5.15.11.1.2" style="padding-left:8.0pt;padding-right:8.0pt;">10.1</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.11.1.3" style="padding-left:8.0pt;padding-right:8.0pt;">3.73</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.11.1.4" style="padding-left:8.0pt;padding-right:8.0pt;">7.55</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.11.1.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.2</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.15.12.2.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC20</th>
<td class="ltx_td ltx_align_center" id="A1.T5.15.12.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">14.6</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.12.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">4.53</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.12.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">8.74</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.12.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">4.8</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.15.13.3.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC22</th>
<td class="ltx_td ltx_align_center" id="A1.T5.15.13.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">16.0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.13.3.3" style="padding-left:8.0pt;padding-right:8.0pt;">5.20</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.13.3.4" style="padding-left:8.0pt;padding-right:8.0pt;">10.73</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.13.3.5" style="padding-left:8.0pt;padding-right:8.0pt;">5.7</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T5.13.7.1" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.13.7.1.1"><math alttext="10\times 10^{6}" class="ltx_Math" display="inline" id="A1.T5.13.7.1.1.m1.1"><semantics id="A1.T5.13.7.1.1.m1.1a"><mrow id="A1.T5.13.7.1.1.m1.1.1" xref="A1.T5.13.7.1.1.m1.1.1.cmml"><mn id="A1.T5.13.7.1.1.m1.1.1.2" xref="A1.T5.13.7.1.1.m1.1.1.2.cmml">10</mn><mo id="A1.T5.13.7.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.13.7.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.13.7.1.1.m1.1.1.3" xref="A1.T5.13.7.1.1.m1.1.1.3.cmml"><mn id="A1.T5.13.7.1.1.m1.1.1.3.2" xref="A1.T5.13.7.1.1.m1.1.1.3.2.cmml">10</mn><mn id="A1.T5.13.7.1.1.m1.1.1.3.3" xref="A1.T5.13.7.1.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.13.7.1.1.m1.1b"><apply id="A1.T5.13.7.1.1.m1.1.1.cmml" xref="A1.T5.13.7.1.1.m1.1.1"><times id="A1.T5.13.7.1.1.m1.1.1.1.cmml" xref="A1.T5.13.7.1.1.m1.1.1.1"></times><cn id="A1.T5.13.7.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.13.7.1.1.m1.1.1.2">10</cn><apply id="A1.T5.13.7.1.1.m1.1.1.3.cmml" xref="A1.T5.13.7.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.13.7.1.1.m1.1.1.3.1.cmml" xref="A1.T5.13.7.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.13.7.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.13.7.1.1.m1.1.1.3.2">10</cn><cn id="A1.T5.13.7.1.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T5.13.7.1.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.13.7.1.1.m1.1c">10\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.13.7.1.1.m1.1d">10 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T5.14.8.2" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.14.8.2.1"><math alttext="1\times 10^{6}" class="ltx_Math" display="inline" id="A1.T5.14.8.2.1.m1.1"><semantics id="A1.T5.14.8.2.1.m1.1a"><mrow id="A1.T5.14.8.2.1.m1.1.1" xref="A1.T5.14.8.2.1.m1.1.1.cmml"><mn id="A1.T5.14.8.2.1.m1.1.1.2" xref="A1.T5.14.8.2.1.m1.1.1.2.cmml">1</mn><mo id="A1.T5.14.8.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.14.8.2.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.14.8.2.1.m1.1.1.3" xref="A1.T5.14.8.2.1.m1.1.1.3.cmml"><mn id="A1.T5.14.8.2.1.m1.1.1.3.2" xref="A1.T5.14.8.2.1.m1.1.1.3.2.cmml">10</mn><mn id="A1.T5.14.8.2.1.m1.1.1.3.3" xref="A1.T5.14.8.2.1.m1.1.1.3.3.cmml">6</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.14.8.2.1.m1.1b"><apply id="A1.T5.14.8.2.1.m1.1.1.cmml" xref="A1.T5.14.8.2.1.m1.1.1"><times id="A1.T5.14.8.2.1.m1.1.1.1.cmml" xref="A1.T5.14.8.2.1.m1.1.1.1"></times><cn id="A1.T5.14.8.2.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.14.8.2.1.m1.1.1.2">1</cn><apply id="A1.T5.14.8.2.1.m1.1.1.3.cmml" xref="A1.T5.14.8.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.14.8.2.1.m1.1.1.3.1.cmml" xref="A1.T5.14.8.2.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.14.8.2.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.14.8.2.1.m1.1.1.3.2">10</cn><cn id="A1.T5.14.8.2.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T5.14.8.2.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.14.8.2.1.m1.1c">1\times 10^{6}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.14.8.2.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T5.15.9.3" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.15.9.3.1"><math alttext="10" class="ltx_Math" display="inline" id="A1.T5.15.9.3.1.m1.1"><semantics id="A1.T5.15.9.3.1.m1.1a"><mn id="A1.T5.15.9.3.1.m1.1.1" xref="A1.T5.15.9.3.1.m1.1.1.cmml">10</mn><annotation-xml encoding="MathML-Content" id="A1.T5.15.9.3.1.m1.1b"><cn id="A1.T5.15.9.3.1.m1.1.1.cmml" type="integer" xref="A1.T5.15.9.3.1.m1.1.1">10</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.15.9.3.1.m1.1c">10</annotation><annotation encoding="application/x-llamapun" id="A1.T5.15.9.3.1.m1.1d">10</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.15.9.4" style="padding-left:8.0pt;padding-right:8.0pt;">ANI1x</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.15.9.5" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="A1.T5.15.9.5.1">GemNet-OC-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.15.9.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.15.9.6.1">5.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.15.9.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.15.9.7.1">2.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.15.9.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.15.9.8.1">5.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.15.9.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.15.9.9.1">2.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.15.14.4.1" style="padding-left:8.0pt;padding-right:8.0pt;">Transition1x</th>
<td class="ltx_td ltx_align_center" id="A1.T5.15.14.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">10.6</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.14.4.3" style="padding-left:8.0pt;padding-right:8.0pt;">3.79</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.14.4.4" style="padding-left:8.0pt;padding-right:8.0pt;">7.50</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.14.4.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.1</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.15.15.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC20</th>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.5.2" style="padding-left:8.0pt;padding-right:8.0pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.5.3" style="padding-left:8.0pt;padding-right:8.0pt;">4.67</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.5.4" style="padding-left:8.0pt;padding-right:8.0pt;">10.16</td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.5.5" style="padding-left:8.0pt;padding-right:8.0pt;">4.9</td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.16.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.15.16.6.1" style="padding-left:8.0pt;padding-right:8.0pt;">OC22</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.15.16.6.2" style="padding-left:8.0pt;padding-right:8.0pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.15.16.6.3" style="padding-left:8.0pt;padding-right:8.0pt;">5.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.15.16.6.4" style="padding-left:8.0pt;padding-right:8.0pt;">11.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.15.16.6.5" style="padding-left:8.0pt;padding-right:8.0pt;">5.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates the impact of varying the number of training samples and epochs while maintaining a constant computational budget. It explores whether it's more effective to train on a smaller dataset for more epochs or a larger dataset for fewer epochs. The results are presented in terms of Mean Absolute Error (MAE) for various downstream tasks, providing insights into the optimal trade-off between data size and training duration for different pretraining datasets.
> <details>
> <summary>read the caption</summary>
> Table 5: Trade-off between increasing the number of samples and the number of epochs. We report the MAE for various downstream tasks while varying the pretraining sample count and epoch count simultaneously. 𝒞𝒞\mathcal{C}caligraphic_C, 𝒩𝒩\mathcal{N}caligraphic_N, and ℰℰ\mathcal{E}caligraphic_E denote the computational budget, number of samples, and number of epochs, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11085/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11085/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}