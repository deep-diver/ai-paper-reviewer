---
title: "ShortV: Efficient Multimodal Large Language Models by Freezing Visual Tokens in Ineffective Layers"
summary: "ShortV: Freezing visual tokens in ineffective MLLM layers dramatically cuts computational costs while maintaining performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Chinese Academy of Sciences",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00502 {{< /keyword >}}
{{< keyword icon="writer" >}} Qianhao Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00502" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00502" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00502/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models (MLLMs) face high costs due to their size and large visual tokens. The paper investigates layer-wise redundancy in MLLMs and introduces **Layer Contribution (LC)**, a metric quantifying a layer's transformations on tokens. Experiments reveal many MLLMs layers minimally contribute during visual token processing.



Motivated, the paper proposes **ShortV**, a training-free method leveraging LC to identify ineffective layers and freezes visual token updates in these layers. Experiments reveal ShortV can freeze visual tokens in ~60% of MLLM layers, significantly reducing costs related to visual tokens. For example, it achieves a ~50% FLOPs reduction on LLaVA-NeXT-13B while keeping performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Layer Contribution (LC) metric effectively quantifies layer importance in MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MLLMs have layer redundancy, particularly for visual tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ShortV leverages LC to improve MLLM efficiency without retraining. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important because it reduces the computational cost of MLLMs by identifying and freezing ineffective layers. This enhances efficiency without sacrificing performance, making it easier to deploy & scale MLLMs for real-world applications. It also opens avenues for future work in fine-grained layer analysis and token optimization.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00502/x1.png)

> 🔼 This figure illustrates the ShortV method.  It shows a comparison of a dense layer in a standard Multimodal Large Language Model (MLLM) with a ShortV layer. In the standard dense layer, both text and visual tokens are processed. In the ShortV layer, visual tokens are frozen, meaning their updates are not computed, leading to computational savings.  This freezing occurs in layers identified as ineffective by a metric called Layer Contribution (LC). The ShortV layer only processes text tokens through the feed-forward network (FFN) and the attention mechanism, significantly reducing the computational cost for the visual tokens.
> <details>
> <summary>read the caption</summary>
> (a) ShortV
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.16.16">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.16.16.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.16.16.17.1.1" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.2" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.2.1">TFLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.3">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.4" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.4.1">VQAv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.5" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.5.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.6">SEED-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.7">MMMU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.8" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.8.1">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.9">MMBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.17.1.10" rowspan="2"><span class="ltx_text" id="S3.T1.16.16.17.1.10.1">MMStar</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.18.2">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.18.2.1">Ratio</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.18.2.2">Bench</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.18.2.3">(val)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.18.2.4">EN</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.19.3" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.16.16.19.3.1"><span class="ltx_text ltx_font_italic" id="S3.T1.16.16.19.3.1.1" style="background-color:#ECECEC;">LLaVA-1.5-7B</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.20.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.20.4.1">Vanilla</th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.2">8.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.3">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.4">76.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.5">61.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.6">66.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.7">36.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.8">1510.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.9">64.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.20.4.10">33.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.2.2.2">FastV (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">italic_K</annotation></semantics></math>=2, <math alttext="R" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m2.1"><semantics id="S3.T1.2.2.2.2.m2.1a"><mi id="S3.T1.2.2.2.2.m2.1.1" xref="S3.T1.2.2.2.2.m2.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m2.1b"><ci id="S3.T1.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.m2.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m2.1c">R</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m2.1d">italic_R</annotation></semantics></math>=50%)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.3">4.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.4">58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.5">73.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.6">60.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.7">65.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.8">35.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.9">1475.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.10">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.11">32.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.3.3.1">VTW (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mi id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">italic_K</annotation></semantics></math>=16)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.2">4.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.3">55%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.4">66.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.5">55.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.6.1">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.7">36.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.8">1497.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.9">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.10">32.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.4.4.1">ShortV (<span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.1.1">Ours</span>, <math alttext="N" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mi id="S3.T1.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><ci id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">italic_N</annotation></semantics></math>=19)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.2">4.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.3">55%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.4.1">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.5.1">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.6.1">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.7.1">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.8"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.8.1">1503.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.9"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.9.1">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.10"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.10.1">33.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.21.5" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.16.16.21.5.1"><span class="ltx_text ltx_font_italic" id="S3.T1.16.16.21.5.1.1" style="background-color:#ECECEC;">LLaVA-1.5-13B</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.22.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.22.6.1">Vanilla</th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.2">16.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.3">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.4">78.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.5">63.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.6">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.7">35.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.8">1531.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.9">68.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.22.6.10">36.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.6.6.2">FastV (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mi id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><ci id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">italic_K</annotation></semantics></math>=2, <math alttext="R" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m2.1"><semantics id="S3.T1.6.6.6.2.m2.1a"><mi id="S3.T1.6.6.6.2.m2.1.1" xref="S3.T1.6.6.6.2.m2.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m2.1b"><ci id="S3.T1.6.6.6.2.m2.1.1.cmml" xref="S3.T1.6.6.6.2.m2.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m2.1c">R</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m2.1d">italic_R</annotation></semantics></math>=50%)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.3">9.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.4">57%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.5">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6">59.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.7">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.8">34.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.9">1506.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.10">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.11">35.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.7.7.1">VTW (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mi id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><ci id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">italic_K</annotation></semantics></math>=20)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.2">9.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.3">55%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.4">75.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.5">60.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.6"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.6.1">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.7">34.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.8">1533.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.9">68.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.10">36.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.8.8.1">ShortV (<span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.1.1">Ours</span>, <math alttext="N" class="ltx_Math" display="inline" id="S3.T1.8.8.8.1.m1.1"><semantics id="S3.T1.8.8.8.1.m1.1a"><mi id="S3.T1.8.8.8.1.m1.1.1" xref="S3.T1.8.8.8.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.1.m1.1b"><ci id="S3.T1.8.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.8.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.1.m1.1d">italic_N</annotation></semantics></math>=24)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.2">9.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.3">55%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.4.1">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.5"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.5.1">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.6">68.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.7"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.7.1">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.8.1">1535.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.9"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.9.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.10"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.10.1">37.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.23.7" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.16.16.23.7.1"><span class="ltx_text ltx_font_italic" id="S3.T1.16.16.23.7.1.1" style="background-color:#ECECEC;">LLaVA-NeXT-7B</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.24.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.24.8.1">Vanilla</th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.2">42.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.3">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.4">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.5">64.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.6">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.7">36.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.8">1519.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.9">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.24.8.10">37.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.10.10.10.2">FastV (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mi id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><ci id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">italic_K</annotation></semantics></math>=2, <math alttext="R" class="ltx_Math" display="inline" id="S3.T1.10.10.10.2.m2.1"><semantics id="S3.T1.10.10.10.2.m2.1a"><mi id="S3.T1.10.10.10.2.m2.1.1" xref="S3.T1.10.10.10.2.m2.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.2.m2.1b"><ci id="S3.T1.10.10.10.2.m2.1.1.cmml" xref="S3.T1.10.10.10.2.m2.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.2.m2.1c">R</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.2.m2.1d">italic_R</annotation></semantics></math>=50%)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.3">22.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.4">52%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.5"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.5.1">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.6">63.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.7">69.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.8">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.9">1482.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.10">66.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.11">36.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.11.11.11.1">VTW (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mi id="S3.T1.11.11.11.1.m1.1.1" xref="S3.T1.11.11.11.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><ci id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">italic_K</annotation></semantics></math>=16)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.2">21.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.3">51%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.4">75.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.5">55.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.6">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.7">35.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.8">1518.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.9">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.10">37.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.12.1">ShortV (<span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.1.1">Ours</span>, <math alttext="N" class="ltx_Math" display="inline" id="S3.T1.12.12.12.1.m1.1"><semantics id="S3.T1.12.12.12.1.m1.1a"><mi id="S3.T1.12.12.12.1.m1.1.1" xref="S3.T1.12.12.12.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.1.m1.1b"><ci id="S3.T1.12.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.12.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.1.m1.1d">italic_N</annotation></semantics></math>=19)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.2">21.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.3">51%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.4">78.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.5"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.5.1">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.6"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.6.1">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.7"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.7.1">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.8"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.8.1">1525.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.9"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.9.1">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.10"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.10.1">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.25.9" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.16.16.25.9.1"><span class="ltx_text ltx_font_italic" id="S3.T1.16.16.25.9.1.1" style="background-color:#ECECEC;">LLaVA-NeXT-13B</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.26.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.16.26.10.1">Vanilla</th>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.2">81.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.3">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.4">80.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.5">65.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.6">71.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.7">35.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.8">1570.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.9">69.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.26.10.10">39.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.14.14.14.2">FastV (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.13.13.13.1.m1.1"><semantics id="S3.T1.13.13.13.1.m1.1a"><mi id="S3.T1.13.13.13.1.m1.1.1" xref="S3.T1.13.13.13.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.1.m1.1b"><ci id="S3.T1.13.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.1.m1.1d">italic_K</annotation></semantics></math>=2, <math alttext="R" class="ltx_Math" display="inline" id="S3.T1.14.14.14.2.m2.1"><semantics id="S3.T1.14.14.14.2.m2.1a"><mi id="S3.T1.14.14.14.2.m2.1.1" xref="S3.T1.14.14.14.2.m2.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.2.m2.1b"><ci id="S3.T1.14.14.14.2.m2.1.1.cmml" xref="S3.T1.14.14.14.2.m2.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.2.m2.1c">R</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.2.m2.1d">italic_R</annotation></semantics></math>=50%)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.3">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.4">51%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.5">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.6">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.7">71.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.8">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.9">1546.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.10">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.11">39.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.15.15.15.1">VTW (<math alttext="K" class="ltx_Math" display="inline" id="S3.T1.15.15.15.1.m1.1"><semantics id="S3.T1.15.15.15.1.m1.1a"><mi id="S3.T1.15.15.15.1.m1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.1.m1.1b"><ci id="S3.T1.15.15.15.1.m1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.1.m1.1d">italic_K</annotation></semantics></math>=20)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.2">41.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.3">51%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.4">77.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.5">61.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.6"><span class="ltx_text ltx_font_bold" id="S3.T1.15.15.15.6.1">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.7">34.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.8"><span class="ltx_text ltx_font_bold" id="S3.T1.15.15.15.8.1">1569.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.9">69.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.10">39.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.16.16.16.1">ShortV (<span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.1.1">Ours</span>, <math alttext="N" class="ltx_Math" display="inline" id="S3.T1.16.16.16.1.m1.1"><semantics id="S3.T1.16.16.16.1.m1.1a"><mi id="S3.T1.16.16.16.1.m1.1.1" xref="S3.T1.16.16.16.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.1.m1.1b"><ci id="S3.T1.16.16.16.1.m1.1.1.cmml" xref="S3.T1.16.16.16.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.1.m1.1d">italic_N</annotation></semantics></math>=24)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.2">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.3">50%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.4"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.4.1">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.5"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.5.1">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.6"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.6.1">71.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.7"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.7.1">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.8">1553.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.9"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.9.1">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.16.16.16.10"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.10.1">39.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the computational efficiency and performance of several training-free methods designed to enhance Multimodal Large Language Models (MLLMs).  It shows the reduction in floating-point operations (FLOPs) achieved by each method (FastV, VTW, and ShortV) relative to a baseline vanilla MLLM.  The FLOPs Ratio column indicates the percentage of FLOPs remaining after applying each optimization technique.  Performance is measured across multiple vision-language benchmarks (VQAv2, GQA, SEED-Bench, MMMU, MMBench, MME, and MMStar). The results allow for a comparison of tradeoffs between efficiency gains and potential performance impacts for each of these methods on different-sized MLLMs (LLaVA-1.5-7B, LLaVA-1.5-13B, LLaVA-NeXT-7B, and LLaVA-NeXT-13B).
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of various training-free methods for MLLM efficiency. FLOPs Ratio denotes the proportion of FLOPs retained after applying the corresponding method to improve MLLM efficiency, compared with the vanilla model.
> </details>





### In-depth insights


#### MLLM Redundancy
The heading MLLM Redundancy suggests an investigation into **inefficiencies within Multimodal Large Language Models**. It implies that certain components or layers in the MLLM may be performing redundant computations, leading to increased computational cost without a proportional gain in performance. Exploring this redundancy could involve identifying layers that contribute minimally to the final output or detecting overlapping functionalities between different modules. **Addressing MLLM redundancy is crucial** for creating more efficient and scalable models, enabling deployment on resource-constrained devices and reducing the environmental impact of training and inference. Research in this area would likely focus on **quantifying the contribution of each layer or module** and developing techniques to prune or optimize redundant components. This could involve methods such as layer-wise pruning, knowledge distillation, or the development of more efficient architectural designs specifically tailored for multimodal processing. 

#### Layer Ineffectiveness
**Layer ineffectiveness** seems to be a critical area for optimization, especially in large models. The finding that certain layers contribute minimally to the model's output, particularly concerning visual tokens, suggests inherent redundancy. The **Layer Contribution (LC) metric** appears to be a novel and insightful method for quantifying layer importance, potentially outperforming traditional metrics like perplexity or cosine similarity. By identifying and strategically sparsifying or freezing ineffective layers, methods like ShortV can significantly reduce computational costs without sacrificing performance. The **modality gap** may explain why visual tokens exhibit different layer redundancy patterns than text tokens, highlighting the need for modality-specific optimization strategies. This concept paves the way for more efficient MLLM architectures. The **location** of these ineffective layers and how they interact with other layers is a fascinating area for further research.

#### ShortV: Efficiency
The paper introduces ShortV, focusing on enhancing the efficiency of Multimodal Large Language Models (MLLMs) by addressing the computational overhead associated with visual tokens. ShortV leverages a novel metric, Layer Contribution (LC), to identify ineffective layers in MLLMs where visual token updates contribute minimally to the model's output. By freezing visual tokens in these layers, ShortV significantly reduces computational costs without substantial performance degradation. **The method is training-free, making it easily applicable to various MLLMs and compatible with existing token pruning techniques like FastV.** Experiments demonstrate that ShortV can freeze visual tokens in approximately 60% of the MLLM layers, achieving up to 50% reduction in FLOPs on LLaVA-NeXT-13B while maintaining superior performance. **This layer-wise redundancy exploitation, contrasting with token-wise approaches, offers a new avenue for MLLM optimization.** ShortV's approach is orthogonal to token pruning, enabling synergistic improvements when combined. The study provides valuable insights into how MLLMs process visual and text tokens in different layers and establishes a foundation for future research in MLLM efficiency.

#### Visual Token Freeze
**Freezing visual tokens** represents a novel approach to enhancing the efficiency of multimodal large language models (MLLMs). Given the computational burden associated with processing visual information, selectively deactivating or 'freezing' the updates of visual tokens in certain layers can significantly reduce computational costs. This strategy stems from the observation that not all layers in an MLLM contribute equally to processing visual information; some layers exhibit minimal impact on the model's overall output when processing visual tokens. By identifying these **ineffective layers** and freezing visual token updates within them, we prevent unnecessary computations without sacrificing performance. This method is particularly effective because it focuses on reducing the processing overhead *per* visual token, rather than reducing the number of visual tokens altogether as token pruning does. The key is the layer contribution metric, which must effectively identify the layers where freezing will have the least impact. This approach is also training-free and orthogonal, which can be combined with token pruning methods. Effectively it enables MLLMs to operate more efficiently, enabling faster inference and reduced resource consumption without compromising accuracy or understanding. Thus, *frozen tokens* will improve model deployment for limited resources.

#### LC Metric Insights
Based on the text, the Layer Contribution (LC) metric quantifies a layer's impact on model output by freezing specific tokens and measuring the Kullback-Leibler (KL) divergence. **A lower LC score implies the layer's transformations on those tokens are less effective**, suggesting layer-wise redundancy. Unlike perplexity, which is less sensitive to visual token absence, LC directly gauges output divergence. Compared to cosine similarity, **LC accurately captures layer redundancy distribution**, avoiding overestimation in shallow layers and underestimation in deep layers by focusing on logits divergence, thus making it more reliable in measuring layer importance. The study shows that MLLM layers show a great level of ineffectiveness in processing visual tokens, which implies that freezing visual token in those ineffective layers will result in very small divergence from the original model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.00502/x2.png)

> 🔼 This figure shows the relationship between the number of ShortV layers used and the average performance across multiple vision-language benchmarks.  ShortV layers are modified layers where visual token updates are frozen, aiming to improve efficiency without significant performance loss. The x-axis represents the number of ShortV layers (the number of ineffective layers replaced), and the y-axis shows the average performance, which likely represents a normalized score across various benchmarks. The plot demonstrates how performance changes as more layers are replaced with ShortV layers, allowing readers to assess the trade-off between efficiency (fewer computations) and performance.
> <details>
> <summary>read the caption</summary>
> (b) Performance vs. the Number of ShortV Layers
> </details>



![](https://arxiv.org/html/2504.00502/x3.png)

> 🔼 Figure 1(a) illustrates ShortV, a method to enhance the efficiency of Multimodal Large Language Models (MLLMs). ShortV identifies ineffective layers for visual tokens (layers whose transformations minimally affect the model's output). These layers are replaced with sparse ShortV layers. In these new layers, updates to visual tokens are frozen, reducing computational costs without retraining. Importantly, ShortV is compatible with token pruning methods like FastV. Figure 1(b) shows the performance of ShortV across multiple benchmarks as the number of ShortV layers increases.  It demonstrates that ShortV can freeze visual token updates in roughly 60% of MLLM layers with negligible performance impact.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (a) Illustration of ShortV. We identify ineffective layers for visual tokens and replace these layers with sparse ShortV layers. In ShortV layers, we freeze visual tokens, and eliminate computations related to updating them. ShortV improves MLLM efficiency in a training-free manner and involves no parameter updates. Notably, ShortV is compatible with token pruning methods, e.g. FastV. (b) Performance vs. the number of ShortV layers. Average Performance means a normalized average score on multiple benchmarks. ShortV can freeze visual tokens in approximately 60% of the MLLM layers with nearly no performance degradation.
> </details>



![](https://arxiv.org/html/2504.00502/x4.png)

> 🔼 This figure illustrates a sparse layer where visual tokens are frozen, preventing them from being updated or participating in calculations within the layer.  This technique is used to investigate layer-wise redundancy in Multimodal Large Language Models (MLLMs) by isolating the impact of visual tokens. Only text tokens are allowed to function as queries and pass through the feed-forward network (FFN) in this modified layer, which is also referred to as a ShortV layer. The purpose is to measure the effect of removing the visual tokens' transformations on the model's output, thus quantifying the layer's contribution to visual token processing. This helps determine if layers are redundant for processing visual tokens and can be replaced with the more efficient ShortV layer, thus improving model efficiency.
> <details>
> <summary>read the caption</summary>
> (a) Sparse layer where visual tokens are frozen, used to investigate layer redundancy for visual tokens. Only text tokens function as queries and are passed through the FFN. We also denote this layer as ShortV layer.
> </details>



![](https://arxiv.org/html/2504.00502/x5.png)

> 🔼 This figure shows a sparse Transformer layer where text tokens are frozen, meaning their hidden states remain unchanged during the layer's processing.  Only visual tokens serve as queries in the self-attention mechanism and are passed through the feed-forward network (FFN). This setup is used to measure the impact of a layer's transformations specifically on text tokens, allowing the researchers to determine the layer-wise redundancy concerning text information in the model. By comparing the model's output with and without these transformations, the layer's contribution to processing text tokens is quantified.
> <details>
> <summary>read the caption</summary>
> (b) Sparse layer where text tokens are frozen, used to investigate layer redundancy for text tokens. Only visual tokens function as queries and are passed through the FFN.
> </details>



![](https://arxiv.org/html/2504.00502/x6.png)

> 🔼 This figure illustrates the 'sparse layers' used in a method to identify layer-wise redundancy in multimodal large language models (MLLMs).  Two types of sparse layers are shown: one where visual tokens are frozen (their hidden states remain unchanged during processing), and one where text tokens are frozen. By comparing the model's output logits with and without freezing tokens in each layer, the researchers quantify each layer's contribution to the model's performance, specifically for visual or text tokens.  The grayed-out portions of the attention mechanisms highlight the computational savings achieved by freezing specific tokens, thereby determining which layers are less important for each type of token.
> <details>
> <summary>read the caption</summary>
> Figure 2: Sparse layers used to investigate layer redundancy for different tokens. To investigate layer redundancy for certain tokens, we freeze these tokens within the layer, i.e. keep hidden states of these tokens unchanged, and measure the divergence between the model’s output logits and those of the original model. We gray out the attention that does not need calculation.
> </details>



![](https://arxiv.org/html/2504.00502/x7.png)

> 🔼 The figure shows the Layer Contribution (LC) scores for LLaVA-1.5-7B across different layers. LC quantifies a layer's impact on model output by measuring the divergence when transformations on specific tokens (visual or text) are frozen within that layer. The plot displays LC scores for visual tokens (blue) and text tokens (orange) across each layer. Lower LC scores indicate less contribution, suggesting inefficiency for the corresponding tokens within that layer.  The graph visualizes how much each layer impacts visual and text tokens differently. This is used to illustrate the layer-wise redundancy which motivates the ShortV technique. 
> <details>
> <summary>read the caption</summary>
> (a) LLaVA-1.5-7B
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.2.1.1"><span class="ltx_text" id="S4.T2.1.1.2.1.1.1" style="font-size:90%;"># ShortV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.2" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.2.1" style="font-size:90%;">TFLOPs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.3"><span class="ltx_text" id="S4.T2.1.1.2.1.3.1" style="font-size:90%;">FLOPs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.4" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.4.1" style="font-size:90%;">MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.5"><span class="ltx_text" id="S4.T2.1.1.2.1.5.1" style="font-size:90%;">MMBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.6"><span class="ltx_text" id="S4.T2.1.1.2.1.6.1" style="font-size:90%;">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.7" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.7.1" style="font-size:90%;">MMStar</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.8"><span class="ltx_text" id="S4.T2.1.1.2.1.8.1" style="font-size:90%;">SEED-</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.9" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.9.1" style="font-size:90%;">GQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.10"><span class="ltx_text" id="S4.T2.1.1.2.1.10.1" style="font-size:90%;">Flickr30K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.11" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.11.1" style="font-size:90%;">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.2.1.12" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.2.1.12.1" style="font-size:90%;">Per.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="S4.T2.1.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">Layers (</span><math alttext="N" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" mathsize="90%" xref="S4.T2.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">italic_N</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.1.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.2"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.3"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:90%;">EN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.4"><span class="ltx_text" id="S4.T2.1.1.1.4.1" style="font-size:90%;">(val)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.5"><span class="ltx_text" id="S4.T2.1.1.1.5.1" style="font-size:90%;">Bench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.6"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.6.1" style="font-size:90%;">CIDEr</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.1.1.3.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.2.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-1.5-7B (32 layers)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.4.1.1"><span class="ltx_text" id="S4.T2.1.1.4.1.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.2"><span class="ltx_text" id="S4.T2.1.1.4.1.2.1" style="font-size:90%;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.3"><span class="ltx_text" id="S4.T2.1.1.4.1.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.4.1" style="font-size:90%;">1510.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.5"><span class="ltx_text" id="S4.T2.1.1.4.1.5.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.7"><span class="ltx_text" id="S4.T2.1.1.4.1.7.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.8"><span class="ltx_text" id="S4.T2.1.1.4.1.8.1" style="font-size:90%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.9.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.10.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.11"><span class="ltx_text" id="S4.T2.1.1.4.1.11.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1.12"><span class="ltx_text" id="S4.T2.1.1.4.1.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.5.2.1"><span class="ltx_text" id="S4.T2.1.1.5.2.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.2"><span class="ltx_text" id="S4.T2.1.1.5.2.2.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.3"><span class="ltx_text" id="S4.T2.1.1.5.2.3.1" style="font-size:90%;">81%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.4"><span class="ltx_text" id="S4.T2.1.1.5.2.4.1" style="font-size:90%;">1508.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.5"><span class="ltx_text" id="S4.T2.1.1.5.2.5.1" style="font-size:90%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.6"><span class="ltx_text" id="S4.T2.1.1.5.2.6.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.2.7.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.2.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.9"><span class="ltx_text" id="S4.T2.1.1.5.2.9.1" style="font-size:90%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.10"><span class="ltx_text" id="S4.T2.1.1.5.2.10.1" style="font-size:90%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.11"><span class="ltx_text" id="S4.T2.1.1.5.2.11.1" style="font-size:90%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2.12"><span class="ltx_text" id="S4.T2.1.1.5.2.12.1" style="font-size:90%;">99.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.6.3.1"><span class="ltx_text" id="S4.T2.1.1.6.3.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.2"><span class="ltx_text" id="S4.T2.1.1.6.3.2.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.3"><span class="ltx_text" id="S4.T2.1.1.6.3.3.1" style="font-size:90%;">62%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.4"><span class="ltx_text" id="S4.T2.1.1.6.3.4.1" style="font-size:90%;">1487.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.3.5.1" style="font-size:90%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.6"><span class="ltx_text" id="S4.T2.1.1.6.3.6.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.7"><span class="ltx_text" id="S4.T2.1.1.6.3.7.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.8"><span class="ltx_text" id="S4.T2.1.1.6.3.8.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.9"><span class="ltx_text" id="S4.T2.1.1.6.3.9.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.10"><span class="ltx_text" id="S4.T2.1.1.6.3.10.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.11"><span class="ltx_text" id="S4.T2.1.1.6.3.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3.12"><span class="ltx_text" id="S4.T2.1.1.6.3.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.7.4.1"><span class="ltx_text" id="S4.T2.1.1.7.4.1.1" style="font-size:90%;">19</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.2"><span class="ltx_text" id="S4.T2.1.1.7.4.2.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.3"><span class="ltx_text" id="S4.T2.1.1.7.4.3.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.4"><span class="ltx_text" id="S4.T2.1.1.7.4.4.1" style="font-size:90%;">1503.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.5"><span class="ltx_text" id="S4.T2.1.1.7.4.5.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.6"><span class="ltx_text" id="S4.T2.1.1.7.4.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.7"><span class="ltx_text" id="S4.T2.1.1.7.4.7.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.4.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.9"><span class="ltx_text" id="S4.T2.1.1.7.4.9.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.10"><span class="ltx_text" id="S4.T2.1.1.7.4.10.1" style="font-size:90%;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.11"><span class="ltx_text" id="S4.T2.1.1.7.4.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4.12"><span class="ltx_text" id="S4.T2.1.1.7.4.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.8.5.1"><span class="ltx_text" id="S4.T2.1.1.8.5.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.2"><span class="ltx_text" id="S4.T2.1.1.8.5.2.1" style="font-size:90%;">3.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.3"><span class="ltx_text" id="S4.T2.1.1.8.5.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.4"><span class="ltx_text" id="S4.T2.1.1.8.5.4.1" style="font-size:90%;">1341.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.5"><span class="ltx_text" id="S4.T2.1.1.8.5.5.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.6"><span class="ltx_text" id="S4.T2.1.1.8.5.6.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.7"><span class="ltx_text" id="S4.T2.1.1.8.5.7.1" style="font-size:90%;">33.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.8"><span class="ltx_text" id="S4.T2.1.1.8.5.8.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.9"><span class="ltx_text" id="S4.T2.1.1.8.5.9.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.10"><span class="ltx_text" id="S4.T2.1.1.8.5.10.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.11"><span class="ltx_text" id="S4.T2.1.1.8.5.11.1" style="font-size:90%;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5.12"><span class="ltx_text" id="S4.T2.1.1.8.5.12.1" style="font-size:90%;">92.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.6" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.1.1.9.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.9.6.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-1.5-13B (40 layers)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.10.7.1"><span class="ltx_text" id="S4.T2.1.1.10.7.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.2"><span class="ltx_text" id="S4.T2.1.1.10.7.2.1" style="font-size:90%;">16.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.3"><span class="ltx_text" id="S4.T2.1.1.10.7.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.4"><span class="ltx_text" id="S4.T2.1.1.10.7.4.1" style="font-size:90%;">1531.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.7.5.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.6"><span class="ltx_text" id="S4.T2.1.1.10.7.6.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.7"><span class="ltx_text" id="S4.T2.1.1.10.7.7.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.7.8.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.7.9.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.7.10.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.11"><span class="ltx_text" id="S4.T2.1.1.10.7.11.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7.12"><span class="ltx_text" id="S4.T2.1.1.10.7.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.11.8.1"><span class="ltx_text" id="S4.T2.1.1.11.8.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.2"><span class="ltx_text" id="S4.T2.1.1.11.8.2.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.3"><span class="ltx_text" id="S4.T2.1.1.11.8.3.1" style="font-size:90%;">85%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.4"><span class="ltx_text" id="S4.T2.1.1.11.8.4.1" style="font-size:90%;">1521.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.5"><span class="ltx_text" id="S4.T2.1.1.11.8.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.6"><span class="ltx_text" id="S4.T2.1.1.11.8.6.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.7"><span class="ltx_text" id="S4.T2.1.1.11.8.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.8.8.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.9"><span class="ltx_text" id="S4.T2.1.1.11.8.9.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.10"><span class="ltx_text" id="S4.T2.1.1.11.8.10.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.11"><span class="ltx_text" id="S4.T2.1.1.11.8.11.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8.12"><span class="ltx_text" id="S4.T2.1.1.11.8.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.12.9.1"><span class="ltx_text" id="S4.T2.1.1.12.9.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.2"><span class="ltx_text" id="S4.T2.1.1.12.9.2.1" style="font-size:90%;">11.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.3"><span class="ltx_text" id="S4.T2.1.1.12.9.3.1" style="font-size:90%;">70%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.4"><span class="ltx_text" id="S4.T2.1.1.12.9.4.1" style="font-size:90%;">1534.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.5"><span class="ltx_text" id="S4.T2.1.1.12.9.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.9.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.7"><span class="ltx_text" id="S4.T2.1.1.12.9.7.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.8"><span class="ltx_text" id="S4.T2.1.1.12.9.8.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.9"><span class="ltx_text" id="S4.T2.1.1.12.9.9.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.10"><span class="ltx_text" id="S4.T2.1.1.12.9.10.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.11"><span class="ltx_text" id="S4.T2.1.1.12.9.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9.12"><span class="ltx_text" id="S4.T2.1.1.12.9.12.1" style="font-size:90%;">99.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.13.10.1"><span class="ltx_text" id="S4.T2.1.1.13.10.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.2"><span class="ltx_text" id="S4.T2.1.1.13.10.2.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.3"><span class="ltx_text" id="S4.T2.1.1.13.10.3.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.13.10.4.1" style="font-size:90%;">1535.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.5"><span class="ltx_text" id="S4.T2.1.1.13.10.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.6"><span class="ltx_text" id="S4.T2.1.1.13.10.6.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.13.10.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.8"><span class="ltx_text" id="S4.T2.1.1.13.10.8.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.9"><span class="ltx_text" id="S4.T2.1.1.13.10.9.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.10"><span class="ltx_text" id="S4.T2.1.1.13.10.10.1" style="font-size:90%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.11"><span class="ltx_text" id="S4.T2.1.1.13.10.11.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10.12"><span class="ltx_text" id="S4.T2.1.1.13.10.12.1" style="font-size:90%;">99.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.14.11.1"><span class="ltx_text" id="S4.T2.1.1.14.11.1.1" style="font-size:90%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.2"><span class="ltx_text" id="S4.T2.1.1.14.11.2.1" style="font-size:90%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.3"><span class="ltx_text" id="S4.T2.1.1.14.11.3.1" style="font-size:90%;">40%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.4"><span class="ltx_text" id="S4.T2.1.1.14.11.4.1" style="font-size:90%;">1298.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.5"><span class="ltx_text" id="S4.T2.1.1.14.11.5.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.6"><span class="ltx_text" id="S4.T2.1.1.14.11.6.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.7"><span class="ltx_text" id="S4.T2.1.1.14.11.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.8"><span class="ltx_text" id="S4.T2.1.1.14.11.8.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.9"><span class="ltx_text" id="S4.T2.1.1.14.11.9.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.10"><span class="ltx_text" id="S4.T2.1.1.14.11.10.1" style="font-size:90%;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.11"><span class="ltx_text" id="S4.T2.1.1.14.11.11.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11.12"><span class="ltx_text" id="S4.T2.1.1.14.11.12.1" style="font-size:90%;">91.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15.12" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.1.1.15.12.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.15.12.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-NeXT-7B (32 layers)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.16.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.16.13.1"><span class="ltx_text" id="S4.T2.1.1.16.13.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.2"><span class="ltx_text" id="S4.T2.1.1.16.13.2.1" style="font-size:90%;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.3"><span class="ltx_text" id="S4.T2.1.1.16.13.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.4"><span class="ltx_text" id="S4.T2.1.1.16.13.4.1" style="font-size:90%;">1519.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.5"><span class="ltx_text" id="S4.T2.1.1.16.13.5.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.6"><span class="ltx_text" id="S4.T2.1.1.16.13.6.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.7"><span class="ltx_text" id="S4.T2.1.1.16.13.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.8"><span class="ltx_text" id="S4.T2.1.1.16.13.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.16.13.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.10"><span class="ltx_text" id="S4.T2.1.1.16.13.10.1" style="font-size:90%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.11"><span class="ltx_text" id="S4.T2.1.1.16.13.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.13.12"><span class="ltx_text" id="S4.T2.1.1.16.13.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.17.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.17.14.1"><span class="ltx_text" id="S4.T2.1.1.17.14.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.2"><span class="ltx_text" id="S4.T2.1.1.17.14.2.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.3"><span class="ltx_text" id="S4.T2.1.1.17.14.3.1" style="font-size:90%;">79%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.4"><span class="ltx_text" id="S4.T2.1.1.17.14.4.1" style="font-size:90%;">1515.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.14.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.14.6.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.7"><span class="ltx_text" id="S4.T2.1.1.17.14.7.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.8"><span class="ltx_text" id="S4.T2.1.1.17.14.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.14.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.14.10.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.11"><span class="ltx_text" id="S4.T2.1.1.17.14.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.17.14.12"><span class="ltx_text" id="S4.T2.1.1.17.14.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.18.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.18.15.1"><span class="ltx_text" id="S4.T2.1.1.18.15.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.2"><span class="ltx_text" id="S4.T2.1.1.18.15.2.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.3"><span class="ltx_text" id="S4.T2.1.1.18.15.3.1" style="font-size:90%;">58%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.4"><span class="ltx_text" id="S4.T2.1.1.18.15.4.1" style="font-size:90%;">1476.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.18.15.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.6"><span class="ltx_text" id="S4.T2.1.1.18.15.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.7"><span class="ltx_text" id="S4.T2.1.1.18.15.7.1" style="font-size:90%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.8"><span class="ltx_text" id="S4.T2.1.1.18.15.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.9"><span class="ltx_text" id="S4.T2.1.1.18.15.9.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.10"><span class="ltx_text" id="S4.T2.1.1.18.15.10.1" style="font-size:90%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.11"><span class="ltx_text" id="S4.T2.1.1.18.15.11.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.18.15.12"><span class="ltx_text" id="S4.T2.1.1.18.15.12.1" style="font-size:90%;">98.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.19.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.19.16.1"><span class="ltx_text" id="S4.T2.1.1.19.16.1.1" style="font-size:90%;">19</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.2"><span class="ltx_text" id="S4.T2.1.1.19.16.2.1" style="font-size:90%;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.3"><span class="ltx_text" id="S4.T2.1.1.19.16.3.1" style="font-size:90%;">51%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.19.16.4.1" style="font-size:90%;">1525.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.19.16.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.6"><span class="ltx_text" id="S4.T2.1.1.19.16.6.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.19.16.7.1" style="font-size:90%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.19.16.8.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.9"><span class="ltx_text" id="S4.T2.1.1.19.16.9.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.10"><span class="ltx_text" id="S4.T2.1.1.19.16.10.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.11"><span class="ltx_text" id="S4.T2.1.1.19.16.11.1" style="font-size:90%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.16.12"><span class="ltx_text" id="S4.T2.1.1.19.16.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.20.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.20.17.1"><span class="ltx_text" id="S4.T2.1.1.20.17.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.2"><span class="ltx_text" id="S4.T2.1.1.20.17.2.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.3"><span class="ltx_text" id="S4.T2.1.1.20.17.3.1" style="font-size:90%;">37%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.4"><span class="ltx_text" id="S4.T2.1.1.20.17.4.1" style="font-size:90%;">1504.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.5"><span class="ltx_text" id="S4.T2.1.1.20.17.5.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.6"><span class="ltx_text" id="S4.T2.1.1.20.17.6.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.7"><span class="ltx_text" id="S4.T2.1.1.20.17.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.8"><span class="ltx_text" id="S4.T2.1.1.20.17.8.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.9"><span class="ltx_text" id="S4.T2.1.1.20.17.9.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.10"><span class="ltx_text" id="S4.T2.1.1.20.17.10.1" style="font-size:90%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.11"><span class="ltx_text" id="S4.T2.1.1.20.17.11.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.17.12"><span class="ltx_text" id="S4.T2.1.1.20.17.12.1" style="font-size:90%;">96.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.21.18" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S4.T2.1.1.21.18.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.21.18.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-NeXT-13B (40 layers)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.22.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.22.19.1"><span class="ltx_text" id="S4.T2.1.1.22.19.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.2"><span class="ltx_text" id="S4.T2.1.1.22.19.2.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.3"><span class="ltx_text" id="S4.T2.1.1.22.19.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.4"><span class="ltx_text" id="S4.T2.1.1.22.19.4.1" style="font-size:90%;">1570.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.5"><span class="ltx_text" id="S4.T2.1.1.22.19.5.1" style="font-size:90%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.6"><span class="ltx_text" id="S4.T2.1.1.22.19.6.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.7"><span class="ltx_text" id="S4.T2.1.1.22.19.7.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.19.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.19.9.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.10"><span class="ltx_text" id="S4.T2.1.1.22.19.10.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.11"><span class="ltx_text" id="S4.T2.1.1.22.19.11.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.22.19.12"><span class="ltx_text" id="S4.T2.1.1.22.19.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.23.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.23.20.1"><span class="ltx_text" id="S4.T2.1.1.23.20.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.2"><span class="ltx_text" id="S4.T2.1.1.23.20.2.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.3"><span class="ltx_text" id="S4.T2.1.1.23.20.3.1" style="font-size:90%;">83%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.4"><span class="ltx_text" id="S4.T2.1.1.23.20.4.1" style="font-size:90%;">1552.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.23.20.5.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.6"><span class="ltx_text" id="S4.T2.1.1.23.20.6.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.7"><span class="ltx_text" id="S4.T2.1.1.23.20.7.1" style="font-size:90%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.23.20.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.9"><span class="ltx_text" id="S4.T2.1.1.23.20.9.1" style="font-size:90%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.10"><span class="ltx_text" id="S4.T2.1.1.23.20.10.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.11"><span class="ltx_text" id="S4.T2.1.1.23.20.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.23.20.12"><span class="ltx_text" id="S4.T2.1.1.23.20.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.24.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.24.21.1"><span class="ltx_text" id="S4.T2.1.1.24.21.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.2"><span class="ltx_text" id="S4.T2.1.1.24.21.2.1" style="font-size:90%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.3"><span class="ltx_text" id="S4.T2.1.1.24.21.3.1" style="font-size:90%;">67%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.4"><span class="ltx_text" id="S4.T2.1.1.24.21.4.1" style="font-size:90%;">1561.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.5"><span class="ltx_text" id="S4.T2.1.1.24.21.5.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.6"><span class="ltx_text" id="S4.T2.1.1.24.21.6.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.7"><span class="ltx_text" id="S4.T2.1.1.24.21.7.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.24.21.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.9"><span class="ltx_text" id="S4.T2.1.1.24.21.9.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.10"><span class="ltx_text" id="S4.T2.1.1.24.21.10.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.11"><span class="ltx_text" id="S4.T2.1.1.24.21.11.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.24.21.12"><span class="ltx_text" id="S4.T2.1.1.24.21.12.1" style="font-size:90%;">99.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.25.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.25.22.1"><span class="ltx_text" id="S4.T2.1.1.25.22.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.2"><span class="ltx_text" id="S4.T2.1.1.25.22.2.1" style="font-size:90%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.3"><span class="ltx_text" id="S4.T2.1.1.25.22.3.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.4"><span class="ltx_text" id="S4.T2.1.1.25.22.4.1" style="font-size:90%;">1553.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.5"><span class="ltx_text" id="S4.T2.1.1.25.22.5.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.25.22.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.7"><span class="ltx_text" id="S4.T2.1.1.25.22.7.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.8"><span class="ltx_text" id="S4.T2.1.1.25.22.8.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.9"><span class="ltx_text" id="S4.T2.1.1.25.22.9.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.10"><span class="ltx_text" id="S4.T2.1.1.25.22.10.1" style="font-size:90%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.11"><span class="ltx_text" id="S4.T2.1.1.25.22.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.25.22.12"><span class="ltx_text" id="S4.T2.1.1.25.22.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.26.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.1.26.23.1"><span class="ltx_text" id="S4.T2.1.1.26.23.1.1" style="font-size:90%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.2"><span class="ltx_text" id="S4.T2.1.1.26.23.2.1" style="font-size:90%;">27.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.3"><span class="ltx_text" id="S4.T2.1.1.26.23.3.1" style="font-size:90%;">34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.4"><span class="ltx_text" id="S4.T2.1.1.26.23.4.1" style="font-size:90%;">1468.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.5"><span class="ltx_text" id="S4.T2.1.1.26.23.5.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.6"><span class="ltx_text" id="S4.T2.1.1.26.23.6.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.7"><span class="ltx_text" id="S4.T2.1.1.26.23.7.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.8"><span class="ltx_text" id="S4.T2.1.1.26.23.8.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.9"><span class="ltx_text" id="S4.T2.1.1.26.23.9.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.10"><span class="ltx_text" id="S4.T2.1.1.26.23.10.1" style="font-size:90%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.11"><span class="ltx_text" id="S4.T2.1.1.26.23.11.1" style="font-size:90%;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.26.23.12"><span class="ltx_text" id="S4.T2.1.1.26.23.12.1" style="font-size:90%;">93.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of ShortV's performance across various configurations. It shows the impact of different numbers of ShortV layers (N) on the model's efficiency and performance. Specifically, it compares the total floating-point operations (TFLOPS) and FLOPS, alongside the performance retention (percentage) relative to a vanilla (unmodified) model on multiple benchmarks (MME, MMBench, MMMU, SEED-Bench, Flickr30K, GQA, EN, and MMStar). The average performance (Avg.) and relative performance (Per.) scores across these benchmarks are also provided. This allows for a detailed assessment of the trade-off between computational cost reduction and performance impact achieved by using different numbers of ShortV layers.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance vs. Efficiency Balance of ShortV under different configurations. # ShortV Layers (N𝑁Nitalic_N): the number of ShorV layers, Avg.: a normalized average score on the benchmarks, Per.: the relative performance retention compared with the vanilla models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.11.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1"># ShortV Layers (<math alttext="N" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">italic_N</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.5">19</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.6">24</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.6.6.6">LLaVA-1.5-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><times id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.2">1.13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.m1.1"><semantics id="S4.T3.3.3.3.2.m1.1a"><mo id="S4.T3.3.3.3.2.m1.1.1" xref="S4.T3.3.3.3.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.m1.1b"><times id="S4.T3.3.3.3.2.m1.1.1.cmml" xref="S4.T3.3.3.3.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.3">1.23<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.4.4.4.3.m1.1"><semantics id="S4.T3.4.4.4.3.m1.1a"><mo id="S4.T3.4.4.4.3.m1.1.1" xref="S4.T3.4.4.4.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.3.m1.1b"><times id="S4.T3.4.4.4.3.m1.1.1.cmml" xref="S4.T3.4.4.4.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.3.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.4">1.30<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.5.5.5.4.m1.1"><semantics id="S4.T3.5.5.5.4.m1.1a"><mo id="S4.T3.5.5.5.4.m1.1.1" xref="S4.T3.5.5.5.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.4.m1.1b"><times id="S4.T3.5.5.5.4.m1.1.1.cmml" xref="S4.T3.5.5.5.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.4.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.6.5">1.40<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.6.6.6.5.m1.1"><semantics id="S4.T3.6.6.6.5.m1.1a"><mo id="S4.T3.6.6.6.5.m1.1.1" xref="S4.T3.6.6.6.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.5.m1.1b"><times id="S4.T3.6.6.6.5.m1.1.1.cmml" xref="S4.T3.6.6.6.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.5.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.11.11.11.6">LLaVA-NeXT-7B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.7.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><times id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.8.2">1.15<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.m1.1"><semantics id="S4.T3.8.8.8.2.m1.1a"><mo id="S4.T3.8.8.8.2.m1.1.1" xref="S4.T3.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.m1.1b"><times id="S4.T3.8.8.8.2.m1.1.1.cmml" xref="S4.T3.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.9.3">1.35<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.9.9.9.3.m1.1"><semantics id="S4.T3.9.9.9.3.m1.1a"><mo id="S4.T3.9.9.9.3.m1.1.1" xref="S4.T3.9.9.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.3.m1.1b"><times id="S4.T3.9.9.9.3.m1.1.1.cmml" xref="S4.T3.9.9.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.3.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.10.4">1.44<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.10.10.10.4.m1.1"><semantics id="S4.T3.10.10.10.4.m1.1a"><mo id="S4.T3.10.10.10.4.m1.1.1" xref="S4.T3.10.10.10.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.4.m1.1b"><times id="S4.T3.10.10.10.4.m1.1.1.cmml" xref="S4.T3.10.10.10.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.4.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.11.5">1.64<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.11.11.11.5.m1.1"><semantics id="S4.T3.11.11.11.5.m1.1a"><mo id="S4.T3.11.11.11.5.m1.1.1" xref="S4.T3.11.11.11.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.5.m1.1b"><times id="S4.T3.11.11.11.5.m1.1.1.cmml" xref="S4.T3.11.11.11.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.5.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference speedup achieved by ShortV on 7B parameter models compared to their vanilla counterparts. The speedup is calculated based on the FLOPs ratio and measured on a single A100 GPU.  Different numbers of ShortV layers (N) are tested, showing the trade-off between computational efficiency and performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Inference speedups over the vanilla models, based on the 7B models. We conduct this test on a single A100 GPU.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.11.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1"># ShortV Layers (<math alttext="N" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_N</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.2">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.4">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.5">24</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.6">32</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.6.6.6.6">LLaVA-1.5-13B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><times id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.2">1.13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.3.3.3.2.m1.1"><semantics id="S4.T4.3.3.3.2.m1.1a"><mo id="S4.T4.3.3.3.2.m1.1.1" xref="S4.T4.3.3.3.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.2.m1.1b"><times id="S4.T4.3.3.3.2.m1.1.1.cmml" xref="S4.T4.3.3.3.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.3">1.24<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.4.4.4.3.m1.1"><semantics id="S4.T4.4.4.4.3.m1.1a"><mo id="S4.T4.4.4.4.3.m1.1.1" xref="S4.T4.4.4.4.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.3.m1.1b"><times id="S4.T4.4.4.4.3.m1.1.1.cmml" xref="S4.T4.4.4.4.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.3.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.4">1.39<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.5.5.5.4.m1.1"><semantics id="S4.T4.5.5.5.4.m1.1a"><mo id="S4.T4.5.5.5.4.m1.1.1" xref="S4.T4.5.5.5.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.4.m1.1b"><times id="S4.T4.5.5.5.4.m1.1.1.cmml" xref="S4.T4.5.5.5.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.4.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.5">1.50<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.6.6.6.5.m1.1"><semantics id="S4.T4.6.6.6.5.m1.1a"><mo id="S4.T4.6.6.6.5.m1.1.1" xref="S4.T4.6.6.6.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.5.m1.1b"><times id="S4.T4.6.6.6.5.m1.1.1.cmml" xref="S4.T4.6.6.6.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.5.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.11.11.11.6">LLaVA-NeXT-13B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.7.7.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><mo id="S4.T4.7.7.7.1.m1.1.1" xref="S4.T4.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><times id="S4.T4.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.8.8.2">1.13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.8.8.8.2.m1.1"><semantics id="S4.T4.8.8.8.2.m1.1a"><mo id="S4.T4.8.8.8.2.m1.1.1" xref="S4.T4.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.2.m1.1b"><times id="S4.T4.8.8.8.2.m1.1.1.cmml" xref="S4.T4.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.9.3">1.30<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.9.9.9.3.m1.1"><semantics id="S4.T4.9.9.9.3.m1.1a"><mo id="S4.T4.9.9.9.3.m1.1.1" xref="S4.T4.9.9.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.3.m1.1b"><times id="S4.T4.9.9.9.3.m1.1.1.cmml" xref="S4.T4.9.9.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.3.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.10.10.10.4">1.52<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.10.10.10.4.m1.1"><semantics id="S4.T4.10.10.10.4.m1.1a"><mo id="S4.T4.10.10.10.4.m1.1.1" xref="S4.T4.10.10.10.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.4.m1.1b"><times id="S4.T4.10.10.10.4.m1.1.1.cmml" xref="S4.T4.10.10.10.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.4.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.11.11.11.5">1.84<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.11.11.11.5.m1.1"><semantics id="S4.T4.11.11.11.5.m1.1a"><mo id="S4.T4.11.11.11.5.m1.1.1" xref="S4.T4.11.11.11.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.5.m1.1b"><times id="S4.T4.11.11.11.5.m1.1.1.cmml" xref="S4.T4.11.11.11.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.5.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference speedup achieved by ShortV on 13B parameter LLaVA models compared to vanilla models.  The speedup is measured using a single NVIDIA A100 GPU, and is calculated as the ratio of inference time with ShortV to the inference time with the vanilla model. It demonstrates the efficiency gains obtained by applying ShortV with different numbers of replaced layers (ShortV Layers (N)).  The speedup is given for models LLaVA-1.5-13B and LLaVA-NeXT-13B, showing the impact across model variants.
> <details>
> <summary>read the caption</summary>
> Table 4: Inference speedups over the vanilla models, based on the 13B models. We conduct this test on a single A100 GPU.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.2">FLOP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.3">MMBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.4">MMMU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.5">SEED-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.1.1.1.6.1">GQA</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.1.2.2.1">Ratio</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.1.2.2.2">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.1.2.2.3">(val)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.1.2.2.4">Bench</th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.2.1.3.3.1">Vanilla</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.3.3.2">100%</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.3.3.3">64.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.3.3.4">36.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.3.3.5">66.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.3.3.6">61.9</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.1.4.1.1">FastV</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.1.2">58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.1.3">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.1.4">35.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.1.5">65.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.1.6">60.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.2.1.5.2.1">ShortV</th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2.2">55%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2.3">64.8</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2.4">36.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2.5">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2.6">60.9</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.2.1.6.3.1">ShortV+FastV</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.6.3.2">29%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.6.3.3">64.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.6.3.4">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.6.3.5">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.6.3.6">59.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of different methods for enhancing the efficiency of multimodal large language models (MLLMs), specifically focusing on the LLaVA-1.5-7B model.  It shows the results of using FastV (a token pruning method), ShortV (a layer freezing method), and a combination of both. The table compares the FLOPS ratio (the proportion of floating point operations retained compared to the original model), and the performance metrics of the different methods across multiple benchmarks to demonstrate the compatibility and combined effect of these techniques for improving MLLM efficiency.
> <details>
> <summary>read the caption</summary>
> Table 5: ShortV is compatible with FastV, and applying both at the same time can further enhance MLLM efficiency. This experiment is based on LLaVA-1.5-7B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.1.1.1">Strategy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.2">FLOP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.3">MMBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.4">MMMU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.5">SEED-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.6" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.1.6.1">GQA</span></th>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.2.1.2.2.1">Ratio</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.2.1.2.2.2">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.2.1.2.2.3">(val)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.2.1.2.2.4">Bench</th>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T6.2.1.3.3.1">Vanilla</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.1.3.3.2">100%</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.1.3.3.3">64.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.1.3.3.4">36.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.1.3.3.5">66.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.1.3.3.6">61.9</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.1.4.1.1">Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.4.1.2">55%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.4.1.3">58.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.4.1.4">33.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.4.1.5">60.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.4.1.6">56.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.1.5.2.1">Cosine Sim.</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2.2">55%</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2.3">60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2.4">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2.5">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2.6">59.5</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.2.1.6.3.1">LC (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.6.3.2">55%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.6.3.3">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.6.3.4">36.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.6.3.5">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.1.6.3.6">60.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the layer selection strategy used in ShortV, a method for improving the efficiency of multimodal large language models (MLLMs).  Specifically, it compares three different methods for identifying ineffective layers where visual tokens can be frozen without significant performance loss. The first is ShortV's proposed method, which uses the Layer Contribution (LC) metric to identify layers with minimal contribution to the output when visual tokens are unchanged. The second method, 'Random,' selects 19 layers randomly. The third method, 'Cosine Sim.,' uses cosine similarity between the input and output hidden states of visual tokens to identify ineffective layers.  The table shows the results of each method on four metrics: EN, MMBench, MMMU (val), and GQA, allowing a quantitative comparison of the strategies in terms of MLLM efficiency and performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation on strategies to select replaced layers, based on LLaVA-1.5-7B. “Random” denotes randomly selecting 19 layers and freezing visual tokens in them. “Cosine Sim.” denotes using cosine similarity to select ineffective layers for visual tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T7.2.1.1.1.1.1">Frozen Tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.1.1.1.2">MMBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.1.1.1.3">MMMU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.1.1.1.4">SEED-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.1.1.1.5" rowspan="2"><span class="ltx_text" id="S4.T7.2.1.1.1.5.1">GQA</span></th>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.2.1.2.2.1">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.2.1.2.2.2">(val)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.2.1.2.2.3">Bench</th>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T7.2.1.3.3.1">None (Vanilla)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.3.3.2">64.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.3.3.3">36.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.3.3.4">66.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.3.3.5">61.9</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.2.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.2.1.4.1.1">(a) Text</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.1.4.1.2">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.1.4.1.3">23.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.1.4.1.4">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.1.4.1.5">2.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.2.1.5.2.1">(b) Text+Visual</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.5.2.2">1.3</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.5.2.3">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.5.2.4">0.8</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.5.2.5">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.2.1.6.3.1">(c) Random</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.6.3.2">1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.6.3.3">22.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.6.3.4">5.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.1.6.3.5">2.3</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T7.2.1.7.4.1">(d) Visual (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.7.4.2">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.7.4.3">36.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.7.4.4">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.1.7.4.5">60.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of freezing different types of tokens within ineffective layers of the LLaVA-1.5-7B model.  The goal is to determine the effect on performance when freezing tokens in ineffective layers.  The study compares freezing only text tokens (a), freezing all tokens (b), randomly freezing a number of tokens equal to the number of visual tokens (c), and the baseline of not freezing any tokens (Vanilla).  The results demonstrate the relative importance of freezing visual tokens versus other tokens for maintaining model performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation on frozen tokens, based on LLaVA-1.5-7B. (a) identifying 19 ineffective layers for text tokens and freezing text tokens in them. In lines (b) and (c), we select ineffective layers for all tokens. line (b) involves freezing all input tokens in them, whereas line (c) denotes randomly freezing the same number of tokens as the visual tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T8.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T8.2.1.1.1"><span class="ltx_text" id="A2.T8.2.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T8.2.1.1.2"><span class="ltx_text" id="A2.T8.2.1.1.2.1" style="font-size:90%;">Replaced Layers</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.2.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.2.1.1"><span class="ltx_text" id="A2.T8.2.2.1.1.1" style="font-size:90%;">LLaVA-1.5-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.2.1.2"><span class="ltx_text" id="A2.T8.2.2.1.2.1" style="font-size:90%;">31, 29, 30, 28, 0, 26, 27, 25, 24, 22,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3.2">
<td class="ltx_td" id="A2.T8.2.3.2.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T8.2.3.2.2"><span class="ltx_text" id="A2.T8.2.3.2.2.1" style="font-size:90%;">23, 21, 2, 3, 20, 18, 17, 12, 19</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.4.3.1"><span class="ltx_text" id="A2.T8.2.4.3.1.1" style="font-size:90%;">LLaVA-1.5-13B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.4.3.2"><span class="ltx_text" id="A2.T8.2.4.3.2.1" style="font-size:90%;">39, 32, 28, 36, 27, 37, 29, 30, 1, 38,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5.4">
<td class="ltx_td" id="A2.T8.2.5.4.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T8.2.5.4.2"><span class="ltx_text" id="A2.T8.2.5.4.2.1" style="font-size:90%;">25, 31, 2, 26, 23, 34, 0, 33, 35, 22,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6.5">
<td class="ltx_td" id="A2.T8.2.6.5.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T8.2.6.5.2"><span class="ltx_text" id="A2.T8.2.6.5.2.1" style="font-size:90%;">24, 21, 20, 17</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.7.6.1"><span class="ltx_text" id="A2.T8.2.7.6.1.1" style="font-size:90%;">LLaVA-NeXT-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.7.6.2"><span class="ltx_text" id="A2.T8.2.7.6.2.1" style="font-size:90%;">31, 29, 30, 28, 26, 27, 22, 24, 21, 23,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.8.7">
<td class="ltx_td" id="A2.T8.2.8.7.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T8.2.8.7.2"><span class="ltx_text" id="A2.T8.2.8.7.2.1" style="font-size:90%;">25, 20, 19, 17, 18, 15, 12, 0, 2</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.9.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.9.8.1"><span class="ltx_text" id="A2.T8.2.9.8.1.1" style="font-size:90%;">LLaVA-NeXT-13B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.9.8.2"><span class="ltx_text" id="A2.T8.2.9.8.2.1" style="font-size:90%;">39, 32, 29, 36, 27, 30, 37, 23, 25, 31,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.10.9">
<td class="ltx_td" id="A2.T8.2.10.9.1"></td>
<td class="ltx_td ltx_align_left" id="A2.T8.2.10.9.2"><span class="ltx_text" id="A2.T8.2.10.9.2.1" style="font-size:90%;">26, 2, 28, 22, 33, 35, 34, 24, 38, 21,</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.11.10">
<td class="ltx_td ltx_border_bb" id="A2.T8.2.11.10.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.2.11.10.2"><span class="ltx_text" id="A2.T8.2.11.10.2.1" style="font-size:90%;">20, 18, 1, 17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the layers in several Multimodal Large Language Models (MLLMs) that were replaced with ShortV layers during the ShortV experiments.  The layers are ordered from lowest to highest layer contribution (LC) score, indicating which layers had the least impact on the model's output when visual tokens were frozen.  The identification of these layers was a key step in ShortV, allowing for efficient reduction in computational cost with minimal performance impact.
> <details>
> <summary>read the caption</summary>
> Table 8: Replaced layers for different MLLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.1.1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.1.1.1.1.1">
<td class="ltx_td ltx_align_top ltx_border_tt" id="A2.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.1.1.1.1.1.1.1.1" style="width:217.7pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="197" id="A2.1.1.1.1.1.1.1.1.g1" src="extracted/6324919/fig/cartoon_image.jpg" width="131"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.1.1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.1.1.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.2.1.1.1">
<span class="ltx_p" id="A2.1.1.1.1.2.1.1.1.1" style="width:46.9pt;">User</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.1.1.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.2.1.2.1">
<span class="ltx_p" id="A2.1.1.1.1.2.1.2.1.1" style="width:217.7pt;">Here’s a formula for a Stable Diffusion image prompt: a cartoon-style image of <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.1" style="color:#FF8000;">[adjective]</span> <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.2" style="color:#0000FF;">[subject]</span> <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.3" style="color:#BF0040;">[haircut]</span> <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.4" style="color:#BF8040;">[clothing]</span> <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.5" style="color:#FF0000;">[doing action]</span>, <span class="ltx_text" id="A2.1.1.1.1.2.1.2.1.1.6" style="color:#00FF00;">[color scheme]</span>, detailed, trending on artstation. Generate the prompt for this image.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.1.1.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.1.1.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.3.2.1.1">
<span class="ltx_p" id="A2.1.1.1.1.3.2.1.1.1" style="width:46.9pt;">w/o ShortV</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.1.1.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.3.2.2.1">
<span class="ltx_p" id="A2.1.1.1.1.3.2.2.1.1" style="width:217.7pt;">A cartoon-style image of <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.1" style="color:#FF8000;">a young</span> <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.2" style="color:#0000FF;">girl</span> <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.3" style="color:#BF0040;">with a bob haircut</span>, <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.4" style="color:#BF8040;">wearing a white kimono</span>, <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.5" style="color:#FF0000;">holding a stuffed animal, and posing for a picture</span>, <span class="ltx_text" id="A2.1.1.1.1.3.2.2.1.1.6" style="color:#50C878;">with a color scheme of pink and white</span>, detailed, and trending on artstation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.1.1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.1.1.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.4.3.1.1">
<span class="ltx_p" id="A2.1.1.1.1.4.3.1.1.1" style="width:46.9pt;">w/ ShortV</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.1.1.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.1.1.1.1.4.3.2.1">
<span class="ltx_p" id="A2.1.1.1.1.4.3.2.1.1" style="width:217.7pt;">A cartoon-style image of <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.1" style="color:#FF8000;">a young</span> <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.2" style="color:#0000FF;">girl</span> <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.3" style="color:#BF0040;">with a bob haircut</span>, <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.4" style="color:#BF8040;">wearing a pink and white kimono</span>, <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.5" style="color:#FF0000;">holding a stuffed animal, and posing for a picture</span>, <span class="ltx_text" id="A2.1.1.1.1.4.3.2.1.1.6" style="color:#50C878;">with a color scheme of pink and white</span>, detailed, and trending on artstation.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a qualitative comparison of the responses generated by two models: the original LLaVA-1.5-13B and the same model but with ShortV applied (N=24).  Both models were tasked with generating prompts for Stable Diffusion image generation based on a user-provided formula. The comparison highlights how ShortV affects the generated prompts, focusing on the prompts' ability to retain important details and maintain coherent sentence structures, while aiming to demonstrate that ShortV improves efficiency without sacrificing the quality of prompt generation.
> <details>
> <summary>read the caption</summary>
> Table 9: Responses comparison between the vanilla LLaVA-1.5-13B model and the LLaVA-1.5-13B model with ShortV (N𝑁Nitalic_N=24), on constrained Stable Diffusion prompt generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.2.1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.2.1.1.1.1">
<td class="ltx_td ltx_align_top ltx_border_tt" id="A2.2.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.2.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.1.1.1">
<span class="ltx_p" id="A2.2.1.1.1.1.1.1.1" style="width:217.7pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="138" id="A2.2.1.1.1.1.1.1.1.g1" src="extracted/6324919/fig/fig_tricky_waikiki.jpg" width="206"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.2.1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.2.1.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.2.1.1.1">
<span class="ltx_p" id="A2.2.1.1.1.2.1.1.1.1" style="width:46.9pt;">User</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.2.1.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.2.1.2.1">
<span class="ltx_p" id="A2.2.1.1.1.2.1.2.1.1" style="width:217.7pt;">If there are factual errors in the questions, point it out; if not, proceed to answering the question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.2.1.1.1.3.2">
<td class="ltx_td ltx_align_top" id="A2.2.1.1.1.3.2.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.2.1.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.3.2.2.1">
<span class="ltx_p" id="A2.2.1.1.1.3.2.2.1.1" style="width:217.7pt;">What’s happening in the desert?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.2.1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.2.1.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.4.3.1.1">
<span class="ltx_p" id="A2.2.1.1.1.4.3.1.1.1" style="width:46.9pt;">w/o ShortV</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.2.1.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.4.3.2.1">
<span class="ltx_p" id="A2.2.1.1.1.4.3.2.1.1" style="width:217.7pt;">There are no deserts in the image. The image features a beach with palm trees, a city skyline, and a large body of water.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.2.1.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.2.1.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.5.4.1.1">
<span class="ltx_p" id="A2.2.1.1.1.5.4.1.1.1" style="width:46.9pt;">w/ ShortV</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.2.1.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.2.1.1.1.5.4.2.1">
<span class="ltx_p" id="A2.2.1.1.1.5.4.2.1.1" style="width:217.7pt;">There are no deserts in the image. The image features a beach with a large body of water, a city skyline, and palm trees.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the responses of the vanilla LLaVA-1.5-13B model and the same model but with ShortV (N=24) applied to a question that is challenging for the model.  It demonstrates how ShortV affects the model's ability to handle a tricky question while maintaining a level of performance.
> <details>
> <summary>read the caption</summary>
> Table 10: Responses comparison between the vanilla LLaVA-1.5-13B model and the LLaVA-1.5-13B model with ShortV (N𝑁Nitalic_N=24), on a tricky question.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T11.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T11.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A4.T11.1.1.2.1.1"><span class="ltx_text" id="A4.T11.1.1.2.1.1.1" style="font-size:90%;"># ShortV</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.2" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.2.1" style="font-size:90%;">TFLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.3"><span class="ltx_text" id="A4.T11.1.1.2.1.3.1" style="font-size:90%;">FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.4" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.4.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.5"><span class="ltx_text" id="A4.T11.1.1.2.1.5.1" style="font-size:90%;">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.6"><span class="ltx_text" id="A4.T11.1.1.2.1.6.1" style="font-size:90%;">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.7" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.7.1" style="font-size:90%;">MMStar</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.8"><span class="ltx_text" id="A4.T11.1.1.2.1.8.1" style="font-size:90%;">SEED-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.9" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.9.1" style="font-size:90%;">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.10"><span class="ltx_text" id="A4.T11.1.1.2.1.10.1" style="font-size:90%;">Flickr30K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.11" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.11.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.1.1.2.1.12" rowspan="2"><span class="ltx_text" id="A4.T11.1.1.2.1.12.1" style="font-size:90%;">Per.</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.1.1">
<span class="ltx_text" id="A4.T11.1.1.1.1.1" style="font-size:90%;">Layers (</span><math alttext="N" class="ltx_Math" display="inline" id="A4.T11.1.1.1.1.m1.1"><semantics id="A4.T11.1.1.1.1.m1.1a"><mi id="A4.T11.1.1.1.1.m1.1.1" mathsize="90%" xref="A4.T11.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A4.T11.1.1.1.1.m1.1b"><ci id="A4.T11.1.1.1.1.m1.1.1.cmml" xref="A4.T11.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A4.T11.1.1.1.1.m1.1d">italic_N</annotation></semantics></math><span class="ltx_text" id="A4.T11.1.1.1.1.2" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.2"><span class="ltx_text" id="A4.T11.1.1.1.2.1" style="font-size:90%;">Ratio</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.3"><span class="ltx_text" id="A4.T11.1.1.1.3.1" style="font-size:90%;">EN</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.4"><span class="ltx_text" id="A4.T11.1.1.1.4.1" style="font-size:90%;">(val)</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.5"><span class="ltx_text" id="A4.T11.1.1.1.5.1" style="font-size:90%;">Bench</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.6"><span class="ltx_text ltx_font_italic" id="A4.T11.1.1.1.6.1" style="font-size:90%;">CIDEr</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.3.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A4.T11.1.1.3.2.1"><span class="ltx_text ltx_font_italic" id="A4.T11.1.1.3.2.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-1.5-7B (32 layers)</span></th>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.4.3.1"><span class="ltx_text" id="A4.T11.1.1.4.3.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.2"><span class="ltx_text" id="A4.T11.1.1.4.3.2.1" style="font-size:90%;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.3"><span class="ltx_text" id="A4.T11.1.1.4.3.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.4"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.3.4.1" style="font-size:90%;">1510.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.5"><span class="ltx_text" id="A4.T11.1.1.4.3.5.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.6"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.3.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.7"><span class="ltx_text" id="A4.T11.1.1.4.3.7.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.8"><span class="ltx_text" id="A4.T11.1.1.4.3.8.1" style="font-size:90%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.3.9.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.10"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.4.3.10.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.11"><span class="ltx_text" id="A4.T11.1.1.4.3.11.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.4.3.12"><span class="ltx_text" id="A4.T11.1.1.4.3.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.5.4.1"><span class="ltx_text" id="A4.T11.1.1.5.4.1.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.2"><span class="ltx_text" id="A4.T11.1.1.5.4.2.1" style="font-size:90%;">7.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.3"><span class="ltx_text" id="A4.T11.1.1.5.4.3.1" style="font-size:90%;">91%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.4"><span class="ltx_text" id="A4.T11.1.1.5.4.4.1" style="font-size:90%;">1507.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.5"><span class="ltx_text" id="A4.T11.1.1.5.4.5.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.6"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.5.4.6.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.7"><span class="ltx_text" id="A4.T11.1.1.5.4.7.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.5.4.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.5.4.9.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.10"><span class="ltx_text" id="A4.T11.1.1.5.4.10.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.11"><span class="ltx_text" id="A4.T11.1.1.5.4.11.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.5.4.12"><span class="ltx_text" id="A4.T11.1.1.5.4.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.6.5.1"><span class="ltx_text" id="A4.T11.1.1.6.5.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.2"><span class="ltx_text" id="A4.T11.1.1.6.5.2.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.3"><span class="ltx_text" id="A4.T11.1.1.6.5.3.1" style="font-size:90%;">81%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.4"><span class="ltx_text" id="A4.T11.1.1.6.5.4.1" style="font-size:90%;">1508.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.5"><span class="ltx_text" id="A4.T11.1.1.6.5.5.1" style="font-size:90%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.6"><span class="ltx_text" id="A4.T11.1.1.6.5.6.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.7"><span class="ltx_text" id="A4.T11.1.1.6.5.7.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.6.5.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.9"><span class="ltx_text" id="A4.T11.1.1.6.5.9.1" style="font-size:90%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.10"><span class="ltx_text" id="A4.T11.1.1.6.5.10.1" style="font-size:90%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.11"><span class="ltx_text" id="A4.T11.1.1.6.5.11.1" style="font-size:90%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.6.5.12"><span class="ltx_text" id="A4.T11.1.1.6.5.12.1" style="font-size:90%;">99.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.7.6.1"><span class="ltx_text" id="A4.T11.1.1.7.6.1.1" style="font-size:90%;">12</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.2"><span class="ltx_text" id="A4.T11.1.1.7.6.2.1" style="font-size:90%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.3"><span class="ltx_text" id="A4.T11.1.1.7.6.3.1" style="font-size:90%;">72%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.4"><span class="ltx_text" id="A4.T11.1.1.7.6.4.1" style="font-size:90%;">1495.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.5"><span class="ltx_text" id="A4.T11.1.1.7.6.5.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.6"><span class="ltx_text" id="A4.T11.1.1.7.6.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.7"><span class="ltx_text" id="A4.T11.1.1.7.6.7.1" style="font-size:90%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.7.6.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.9"><span class="ltx_text" id="A4.T11.1.1.7.6.9.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.10"><span class="ltx_text" id="A4.T11.1.1.7.6.10.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.11"><span class="ltx_text" id="A4.T11.1.1.7.6.11.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.7.6.12"><span class="ltx_text" id="A4.T11.1.1.7.6.12.1" style="font-size:90%;">99.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.8.7.1"><span class="ltx_text" id="A4.T11.1.1.8.7.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.2"><span class="ltx_text" id="A4.T11.1.1.8.7.2.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.3"><span class="ltx_text" id="A4.T11.1.1.8.7.3.1" style="font-size:90%;">62%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.4"><span class="ltx_text" id="A4.T11.1.1.8.7.4.1" style="font-size:90%;">1487.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.8.7.5.1" style="font-size:90%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.6"><span class="ltx_text" id="A4.T11.1.1.8.7.6.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.7"><span class="ltx_text" id="A4.T11.1.1.8.7.7.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.8"><span class="ltx_text" id="A4.T11.1.1.8.7.8.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.9"><span class="ltx_text" id="A4.T11.1.1.8.7.9.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.10"><span class="ltx_text" id="A4.T11.1.1.8.7.10.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.11"><span class="ltx_text" id="A4.T11.1.1.8.7.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.8.7.12"><span class="ltx_text" id="A4.T11.1.1.8.7.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.9.8.1"><span class="ltx_text" id="A4.T11.1.1.9.8.1.1" style="font-size:90%;">19</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.2"><span class="ltx_text" id="A4.T11.1.1.9.8.2.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.3"><span class="ltx_text" id="A4.T11.1.1.9.8.3.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.4"><span class="ltx_text" id="A4.T11.1.1.9.8.4.1" style="font-size:90%;">1503.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.5"><span class="ltx_text" id="A4.T11.1.1.9.8.5.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.6"><span class="ltx_text" id="A4.T11.1.1.9.8.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.7"><span class="ltx_text" id="A4.T11.1.1.9.8.7.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.9.8.8.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.9"><span class="ltx_text" id="A4.T11.1.1.9.8.9.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.10"><span class="ltx_text" id="A4.T11.1.1.9.8.10.1" style="font-size:90%;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.11"><span class="ltx_text" id="A4.T11.1.1.9.8.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.9.8.12"><span class="ltx_text" id="A4.T11.1.1.9.8.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.10.9.1"><span class="ltx_text" id="A4.T11.1.1.10.9.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.2"><span class="ltx_text" id="A4.T11.1.1.10.9.2.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.3"><span class="ltx_text" id="A4.T11.1.1.10.9.3.1" style="font-size:90%;">53%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.4"><span class="ltx_text" id="A4.T11.1.1.10.9.4.1" style="font-size:90%;">1466.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.5"><span class="ltx_text" id="A4.T11.1.1.10.9.5.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.6"><span class="ltx_text" id="A4.T11.1.1.10.9.6.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.7"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.10.9.7.1" style="font-size:90%;">34.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.8"><span class="ltx_text" id="A4.T11.1.1.10.9.8.1" style="font-size:90%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.9"><span class="ltx_text" id="A4.T11.1.1.10.9.9.1" style="font-size:90%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.10"><span class="ltx_text" id="A4.T11.1.1.10.9.10.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.11"><span class="ltx_text" id="A4.T11.1.1.10.9.11.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.10.9.12"><span class="ltx_text" id="A4.T11.1.1.10.9.12.1" style="font-size:90%;">97.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.11.10.1"><span class="ltx_text" id="A4.T11.1.1.11.10.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.2"><span class="ltx_text" id="A4.T11.1.1.11.10.2.1" style="font-size:90%;">3.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.3"><span class="ltx_text" id="A4.T11.1.1.11.10.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.4"><span class="ltx_text" id="A4.T11.1.1.11.10.4.1" style="font-size:90%;">1341.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.5"><span class="ltx_text" id="A4.T11.1.1.11.10.5.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.6"><span class="ltx_text" id="A4.T11.1.1.11.10.6.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.7"><span class="ltx_text" id="A4.T11.1.1.11.10.7.1" style="font-size:90%;">33.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.8"><span class="ltx_text" id="A4.T11.1.1.11.10.8.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.9"><span class="ltx_text" id="A4.T11.1.1.11.10.9.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.10"><span class="ltx_text" id="A4.T11.1.1.11.10.10.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.11"><span class="ltx_text" id="A4.T11.1.1.11.10.11.1" style="font-size:90%;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.11.10.12"><span class="ltx_text" id="A4.T11.1.1.11.10.12.1" style="font-size:90%;">92.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.12.11.1"><span class="ltx_text" id="A4.T11.1.1.12.11.1.1" style="font-size:90%;">28</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.2"><span class="ltx_text" id="A4.T11.1.1.12.11.2.1" style="font-size:90%;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.3"><span class="ltx_text" id="A4.T11.1.1.12.11.3.1" style="font-size:90%;">34%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.4"><span class="ltx_text" id="A4.T11.1.1.12.11.4.1" style="font-size:90%;">1079.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.5"><span class="ltx_text" id="A4.T11.1.1.12.11.5.1" style="font-size:90%;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.6"><span class="ltx_text" id="A4.T11.1.1.12.11.6.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.7"><span class="ltx_text" id="A4.T11.1.1.12.11.7.1" style="font-size:90%;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.8"><span class="ltx_text" id="A4.T11.1.1.12.11.8.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.9"><span class="ltx_text" id="A4.T11.1.1.12.11.9.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.10"><span class="ltx_text" id="A4.T11.1.1.12.11.10.1" style="font-size:90%;">53.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.11"><span class="ltx_text" id="A4.T11.1.1.12.11.11.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.12.11.12"><span class="ltx_text" id="A4.T11.1.1.12.11.12.1" style="font-size:90%;">81.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.13.12" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A4.T11.1.1.13.12.1"><span class="ltx_text ltx_font_italic" id="A4.T11.1.1.13.12.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-1.5-13B (40 layers)</span></th>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.14.13.1"><span class="ltx_text" id="A4.T11.1.1.14.13.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.2"><span class="ltx_text" id="A4.T11.1.1.14.13.2.1" style="font-size:90%;">16.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.3"><span class="ltx_text" id="A4.T11.1.1.14.13.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.4"><span class="ltx_text" id="A4.T11.1.1.14.13.4.1" style="font-size:90%;">1531.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.14.13.5.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.6"><span class="ltx_text" id="A4.T11.1.1.14.13.6.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.7"><span class="ltx_text" id="A4.T11.1.1.14.13.7.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.14.13.8.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.14.13.9.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.10"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.14.13.10.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.11"><span class="ltx_text" id="A4.T11.1.1.14.13.11.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.14.13.12"><span class="ltx_text" id="A4.T11.1.1.14.13.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.15.14.1"><span class="ltx_text" id="A4.T11.1.1.15.14.1.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.2"><span class="ltx_text" id="A4.T11.1.1.15.14.2.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.3"><span class="ltx_text" id="A4.T11.1.1.15.14.3.1" style="font-size:90%;">92%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.4"><span class="ltx_text" id="A4.T11.1.1.15.14.4.1" style="font-size:90%;">1521.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.5"><span class="ltx_text" id="A4.T11.1.1.15.14.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.6"><span class="ltx_text" id="A4.T11.1.1.15.14.6.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.7"><span class="ltx_text" id="A4.T11.1.1.15.14.7.1" style="font-size:90%;">36.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.15.14.8.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.15.14.9.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.10"><span class="ltx_text" id="A4.T11.1.1.15.14.10.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.11"><span class="ltx_text" id="A4.T11.1.1.15.14.11.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.15.14.12"><span class="ltx_text" id="A4.T11.1.1.15.14.12.1" style="font-size:90%;">99.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.16.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.16.15.1"><span class="ltx_text" id="A4.T11.1.1.16.15.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.2"><span class="ltx_text" id="A4.T11.1.1.16.15.2.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.3"><span class="ltx_text" id="A4.T11.1.1.16.15.3.1" style="font-size:90%;">85%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.4"><span class="ltx_text" id="A4.T11.1.1.16.15.4.1" style="font-size:90%;">1521.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.5"><span class="ltx_text" id="A4.T11.1.1.16.15.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.6"><span class="ltx_text" id="A4.T11.1.1.16.15.6.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.7"><span class="ltx_text" id="A4.T11.1.1.16.15.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.16.15.8.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.9"><span class="ltx_text" id="A4.T11.1.1.16.15.9.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.10"><span class="ltx_text" id="A4.T11.1.1.16.15.10.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.11"><span class="ltx_text" id="A4.T11.1.1.16.15.11.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.16.15.12"><span class="ltx_text" id="A4.T11.1.1.16.15.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.17.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.17.16.1"><span class="ltx_text" id="A4.T11.1.1.17.16.1.1" style="font-size:90%;">12</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.2"><span class="ltx_text" id="A4.T11.1.1.17.16.2.1" style="font-size:90%;">12.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.3"><span class="ltx_text" id="A4.T11.1.1.17.16.3.1" style="font-size:90%;">77%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.4"><span class="ltx_text" id="A4.T11.1.1.17.16.4.1" style="font-size:90%;">1521.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.5"><span class="ltx_text" id="A4.T11.1.1.17.16.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.6"><span class="ltx_text" id="A4.T11.1.1.17.16.6.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.7"><span class="ltx_text" id="A4.T11.1.1.17.16.7.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.8"><span class="ltx_text" id="A4.T11.1.1.17.16.8.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.9"><span class="ltx_text" id="A4.T11.1.1.17.16.9.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.10"><span class="ltx_text" id="A4.T11.1.1.17.16.10.1" style="font-size:90%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.11"><span class="ltx_text" id="A4.T11.1.1.17.16.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.17.16.12"><span class="ltx_text" id="A4.T11.1.1.17.16.12.1" style="font-size:90%;">99.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.18.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.18.17.1"><span class="ltx_text" id="A4.T11.1.1.18.17.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.2"><span class="ltx_text" id="A4.T11.1.1.18.17.2.1" style="font-size:90%;">11.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.3"><span class="ltx_text" id="A4.T11.1.1.18.17.3.1" style="font-size:90%;">70%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.4"><span class="ltx_text" id="A4.T11.1.1.18.17.4.1" style="font-size:90%;">1534.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.5"><span class="ltx_text" id="A4.T11.1.1.18.17.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.6"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.18.17.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.7"><span class="ltx_text" id="A4.T11.1.1.18.17.7.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.8"><span class="ltx_text" id="A4.T11.1.1.18.17.8.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.9"><span class="ltx_text" id="A4.T11.1.1.18.17.9.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.10"><span class="ltx_text" id="A4.T11.1.1.18.17.10.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.11"><span class="ltx_text" id="A4.T11.1.1.18.17.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.18.17.12"><span class="ltx_text" id="A4.T11.1.1.18.17.12.1" style="font-size:90%;">99.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.19.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.19.18.1"><span class="ltx_text" id="A4.T11.1.1.19.18.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.2"><span class="ltx_text" id="A4.T11.1.1.19.18.2.1" style="font-size:90%;">10.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.3"><span class="ltx_text" id="A4.T11.1.1.19.18.3.1" style="font-size:90%;">62%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.4"><span class="ltx_text" id="A4.T11.1.1.19.18.4.1" style="font-size:90%;">1533.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.5"><span class="ltx_text" id="A4.T11.1.1.19.18.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.6"><span class="ltx_text" id="A4.T11.1.1.19.18.6.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.7"><span class="ltx_text" id="A4.T11.1.1.19.18.7.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.8"><span class="ltx_text" id="A4.T11.1.1.19.18.8.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.9"><span class="ltx_text" id="A4.T11.1.1.19.18.9.1" style="font-size:90%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.10"><span class="ltx_text" id="A4.T11.1.1.19.18.10.1" style="font-size:90%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.11"><span class="ltx_text" id="A4.T11.1.1.19.18.11.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.19.18.12"><span class="ltx_text" id="A4.T11.1.1.19.18.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.20.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.20.19.1"><span class="ltx_text" id="A4.T11.1.1.20.19.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.2"><span class="ltx_text" id="A4.T11.1.1.20.19.2.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.3"><span class="ltx_text" id="A4.T11.1.1.20.19.3.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.4"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.20.19.4.1" style="font-size:90%;">1535.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.5"><span class="ltx_text" id="A4.T11.1.1.20.19.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.6"><span class="ltx_text" id="A4.T11.1.1.20.19.6.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.7"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.20.19.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.8"><span class="ltx_text" id="A4.T11.1.1.20.19.8.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.9"><span class="ltx_text" id="A4.T11.1.1.20.19.9.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.10"><span class="ltx_text" id="A4.T11.1.1.20.19.10.1" style="font-size:90%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.11"><span class="ltx_text" id="A4.T11.1.1.20.19.11.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.20.19.12"><span class="ltx_text" id="A4.T11.1.1.20.19.12.1" style="font-size:90%;">99.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.21.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.21.20.1"><span class="ltx_text" id="A4.T11.1.1.21.20.1.1" style="font-size:90%;">28</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.2"><span class="ltx_text" id="A4.T11.1.1.21.20.2.1" style="font-size:90%;">7.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.3"><span class="ltx_text" id="A4.T11.1.1.21.20.3.1" style="font-size:90%;">47%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.4"><span class="ltx_text" id="A4.T11.1.1.21.20.4.1" style="font-size:90%;">1417.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.5"><span class="ltx_text" id="A4.T11.1.1.21.20.5.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.6"><span class="ltx_text" id="A4.T11.1.1.21.20.6.1" style="font-size:90%;">34.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.7"><span class="ltx_text" id="A4.T11.1.1.21.20.7.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.8"><span class="ltx_text" id="A4.T11.1.1.21.20.8.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.9"><span class="ltx_text" id="A4.T11.1.1.21.20.9.1" style="font-size:90%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.10"><span class="ltx_text" id="A4.T11.1.1.21.20.10.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.11"><span class="ltx_text" id="A4.T11.1.1.21.20.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.21.20.12"><span class="ltx_text" id="A4.T11.1.1.21.20.12.1" style="font-size:90%;">95.3</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.22.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.22.21.1"><span class="ltx_text" id="A4.T11.1.1.22.21.1.1" style="font-size:90%;">32</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.2"><span class="ltx_text" id="A4.T11.1.1.22.21.2.1" style="font-size:90%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.3"><span class="ltx_text" id="A4.T11.1.1.22.21.3.1" style="font-size:90%;">40%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.4"><span class="ltx_text" id="A4.T11.1.1.22.21.4.1" style="font-size:90%;">1298.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.5"><span class="ltx_text" id="A4.T11.1.1.22.21.5.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.6"><span class="ltx_text" id="A4.T11.1.1.22.21.6.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.7"><span class="ltx_text" id="A4.T11.1.1.22.21.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.8"><span class="ltx_text" id="A4.T11.1.1.22.21.8.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.9"><span class="ltx_text" id="A4.T11.1.1.22.21.9.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.10"><span class="ltx_text" id="A4.T11.1.1.22.21.10.1" style="font-size:90%;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.11"><span class="ltx_text" id="A4.T11.1.1.22.21.11.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.22.21.12"><span class="ltx_text" id="A4.T11.1.1.22.21.12.1" style="font-size:90%;">91.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.23.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.23.22.1"><span class="ltx_text" id="A4.T11.1.1.23.22.1.1" style="font-size:90%;">36</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.2"><span class="ltx_text" id="A4.T11.1.1.23.22.2.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.3"><span class="ltx_text" id="A4.T11.1.1.23.22.3.1" style="font-size:90%;">32%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.4"><span class="ltx_text" id="A4.T11.1.1.23.22.4.1" style="font-size:90%;">1259.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.5"><span class="ltx_text" id="A4.T11.1.1.23.22.5.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.6"><span class="ltx_text" id="A4.T11.1.1.23.22.6.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.7"><span class="ltx_text" id="A4.T11.1.1.23.22.7.1" style="font-size:90%;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.8"><span class="ltx_text" id="A4.T11.1.1.23.22.8.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.9"><span class="ltx_text" id="A4.T11.1.1.23.22.9.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.10"><span class="ltx_text" id="A4.T11.1.1.23.22.10.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.11"><span class="ltx_text" id="A4.T11.1.1.23.22.11.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.23.22.12"><span class="ltx_text" id="A4.T11.1.1.23.22.12.1" style="font-size:90%;">88.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.24.23" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A4.T11.1.1.24.23.1"><span class="ltx_text ltx_font_italic" id="A4.T11.1.1.24.23.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-NeXT-7B (32 layers)</span></th>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.25.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.25.24.1"><span class="ltx_text" id="A4.T11.1.1.25.24.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.2"><span class="ltx_text" id="A4.T11.1.1.25.24.2.1" style="font-size:90%;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.3"><span class="ltx_text" id="A4.T11.1.1.25.24.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.4"><span class="ltx_text" id="A4.T11.1.1.25.24.4.1" style="font-size:90%;">1519.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.5"><span class="ltx_text" id="A4.T11.1.1.25.24.5.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.6"><span class="ltx_text" id="A4.T11.1.1.25.24.6.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.7"><span class="ltx_text" id="A4.T11.1.1.25.24.7.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.8"><span class="ltx_text" id="A4.T11.1.1.25.24.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.25.24.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.10"><span class="ltx_text" id="A4.T11.1.1.25.24.10.1" style="font-size:90%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.11"><span class="ltx_text" id="A4.T11.1.1.25.24.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.25.24.12"><span class="ltx_text" id="A4.T11.1.1.25.24.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.26.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.26.25.1"><span class="ltx_text" id="A4.T11.1.1.26.25.1.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.2"><span class="ltx_text" id="A4.T11.1.1.26.25.2.1" style="font-size:90%;">38.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.3"><span class="ltx_text" id="A4.T11.1.1.26.25.3.1" style="font-size:90%;">90%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.4"><span class="ltx_text" id="A4.T11.1.1.26.25.4.1" style="font-size:90%;">1519.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.26.25.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.6"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.26.25.6.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.7"><span class="ltx_text" id="A4.T11.1.1.26.25.7.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.26.25.8.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.26.25.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.10"><span class="ltx_text" id="A4.T11.1.1.26.25.10.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.11"><span class="ltx_text" id="A4.T11.1.1.26.25.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.26.25.12"><span class="ltx_text" id="A4.T11.1.1.26.25.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.27.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.27.26.1"><span class="ltx_text" id="A4.T11.1.1.27.26.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.2"><span class="ltx_text" id="A4.T11.1.1.27.26.2.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.3"><span class="ltx_text" id="A4.T11.1.1.27.26.3.1" style="font-size:90%;">79%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.4"><span class="ltx_text" id="A4.T11.1.1.27.26.4.1" style="font-size:90%;">1515.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.27.26.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.6"><span class="ltx_text" id="A4.T11.1.1.27.26.6.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.7"><span class="ltx_text" id="A4.T11.1.1.27.26.7.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.8"><span class="ltx_text" id="A4.T11.1.1.27.26.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.27.26.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.10"><span class="ltx_text" id="A4.T11.1.1.27.26.10.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.11"><span class="ltx_text" id="A4.T11.1.1.27.26.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.27.26.12"><span class="ltx_text" id="A4.T11.1.1.27.26.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.28.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.28.27.1"><span class="ltx_text" id="A4.T11.1.1.28.27.1.1" style="font-size:90%;">12</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.2"><span class="ltx_text" id="A4.T11.1.1.28.27.2.1" style="font-size:90%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.3"><span class="ltx_text" id="A4.T11.1.1.28.27.3.1" style="font-size:90%;">69%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.4"><span class="ltx_text" id="A4.T11.1.1.28.27.4.1" style="font-size:90%;">1476.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.5"><span class="ltx_text" id="A4.T11.1.1.28.27.5.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.6"><span class="ltx_text" id="A4.T11.1.1.28.27.6.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.7"><span class="ltx_text" id="A4.T11.1.1.28.27.7.1" style="font-size:90%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.8"><span class="ltx_text" id="A4.T11.1.1.28.27.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.9"><span class="ltx_text" id="A4.T11.1.1.28.27.9.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.10"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.28.27.10.1" style="font-size:90%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.11"><span class="ltx_text" id="A4.T11.1.1.28.27.11.1" style="font-size:90%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.28.27.12"><span class="ltx_text" id="A4.T11.1.1.28.27.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.29.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.29.28.1"><span class="ltx_text" id="A4.T11.1.1.29.28.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.2"><span class="ltx_text" id="A4.T11.1.1.29.28.2.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.3"><span class="ltx_text" id="A4.T11.1.1.29.28.3.1" style="font-size:90%;">58%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.4"><span class="ltx_text" id="A4.T11.1.1.29.28.4.1" style="font-size:90%;">1476.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.29.28.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.6"><span class="ltx_text" id="A4.T11.1.1.29.28.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.7"><span class="ltx_text" id="A4.T11.1.1.29.28.7.1" style="font-size:90%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.8"><span class="ltx_text" id="A4.T11.1.1.29.28.8.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.9"><span class="ltx_text" id="A4.T11.1.1.29.28.9.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.10"><span class="ltx_text" id="A4.T11.1.1.29.28.10.1" style="font-size:90%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.11"><span class="ltx_text" id="A4.T11.1.1.29.28.11.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.29.28.12"><span class="ltx_text" id="A4.T11.1.1.29.28.12.1" style="font-size:90%;">98.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.30.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.30.29.1"><span class="ltx_text" id="A4.T11.1.1.30.29.1.1" style="font-size:90%;">19</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.2"><span class="ltx_text" id="A4.T11.1.1.30.29.2.1" style="font-size:90%;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.3"><span class="ltx_text" id="A4.T11.1.1.30.29.3.1" style="font-size:90%;">51%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.4"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.30.29.4.1" style="font-size:90%;">1525.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.30.29.5.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.6"><span class="ltx_text" id="A4.T11.1.1.30.29.6.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.7"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.30.29.7.1" style="font-size:90%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.8"><span class="ltx_text" id="A4.T11.1.1.30.29.8.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.9"><span class="ltx_text" id="A4.T11.1.1.30.29.9.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.10"><span class="ltx_text" id="A4.T11.1.1.30.29.10.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.11"><span class="ltx_text" id="A4.T11.1.1.30.29.11.1" style="font-size:90%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.30.29.12"><span class="ltx_text" id="A4.T11.1.1.30.29.12.1" style="font-size:90%;">99.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.31.30">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.31.30.1"><span class="ltx_text" id="A4.T11.1.1.31.30.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.2"><span class="ltx_text" id="A4.T11.1.1.31.30.2.1" style="font-size:90%;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.3"><span class="ltx_text" id="A4.T11.1.1.31.30.3.1" style="font-size:90%;">48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.4"><span class="ltx_text" id="A4.T11.1.1.31.30.4.1" style="font-size:90%;">1505.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.5"><span class="ltx_text" id="A4.T11.1.1.31.30.5.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.6"><span class="ltx_text" id="A4.T11.1.1.31.30.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.7"><span class="ltx_text" id="A4.T11.1.1.31.30.7.1" style="font-size:90%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.8"><span class="ltx_text" id="A4.T11.1.1.31.30.8.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.9"><span class="ltx_text" id="A4.T11.1.1.31.30.9.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.10"><span class="ltx_text" id="A4.T11.1.1.31.30.10.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.11"><span class="ltx_text" id="A4.T11.1.1.31.30.11.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.31.30.12"><span class="ltx_text" id="A4.T11.1.1.31.30.12.1" style="font-size:90%;">98.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.32.31">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.32.31.1"><span class="ltx_text" id="A4.T11.1.1.32.31.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.2"><span class="ltx_text" id="A4.T11.1.1.32.31.2.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.3"><span class="ltx_text" id="A4.T11.1.1.32.31.3.1" style="font-size:90%;">37%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.4"><span class="ltx_text" id="A4.T11.1.1.32.31.4.1" style="font-size:90%;">1504.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.5"><span class="ltx_text" id="A4.T11.1.1.32.31.5.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.6"><span class="ltx_text" id="A4.T11.1.1.32.31.6.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.7"><span class="ltx_text" id="A4.T11.1.1.32.31.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.8"><span class="ltx_text" id="A4.T11.1.1.32.31.8.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.9"><span class="ltx_text" id="A4.T11.1.1.32.31.9.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.10"><span class="ltx_text" id="A4.T11.1.1.32.31.10.1" style="font-size:90%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.11"><span class="ltx_text" id="A4.T11.1.1.32.31.11.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.32.31.12"><span class="ltx_text" id="A4.T11.1.1.32.31.12.1" style="font-size:90%;">96.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.33.32" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A4.T11.1.1.33.32.1"><span class="ltx_text ltx_font_italic" id="A4.T11.1.1.33.32.1.1" style="font-size:90%;background-color:#ECECEC;">LLaVA-NeXT-13B (40 layers)</span></th>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.34.33">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.34.33.1"><span class="ltx_text" id="A4.T11.1.1.34.33.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.2"><span class="ltx_text" id="A4.T11.1.1.34.33.2.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.3"><span class="ltx_text" id="A4.T11.1.1.34.33.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.4"><span class="ltx_text" id="A4.T11.1.1.34.33.4.1" style="font-size:90%;">1570.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.5"><span class="ltx_text" id="A4.T11.1.1.34.33.5.1" style="font-size:90%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.6"><span class="ltx_text" id="A4.T11.1.1.34.33.6.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.7"><span class="ltx_text" id="A4.T11.1.1.34.33.7.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.34.33.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.9"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.34.33.9.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.10"><span class="ltx_text" id="A4.T11.1.1.34.33.10.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.11"><span class="ltx_text" id="A4.T11.1.1.34.33.11.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.34.33.12"><span class="ltx_text" id="A4.T11.1.1.34.33.12.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.35.34">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.35.34.1"><span class="ltx_text" id="A4.T11.1.1.35.34.1.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.2"><span class="ltx_text" id="A4.T11.1.1.35.34.2.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.3"><span class="ltx_text" id="A4.T11.1.1.35.34.3.1" style="font-size:90%;">92%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.4"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.35.34.4.1" style="font-size:90%;">1574.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.35.34.5.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.6"><span class="ltx_text" id="A4.T11.1.1.35.34.6.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.7"><span class="ltx_text" id="A4.T11.1.1.35.34.7.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.35.34.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.9"><span class="ltx_text" id="A4.T11.1.1.35.34.9.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.10"><span class="ltx_text" id="A4.T11.1.1.35.34.10.1" style="font-size:90%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.11"><span class="ltx_text" id="A4.T11.1.1.35.34.11.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.35.34.12"><span class="ltx_text" id="A4.T11.1.1.35.34.12.1" style="font-size:90%;">99.7</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.36.35">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.36.35.1"><span class="ltx_text" id="A4.T11.1.1.36.35.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.2"><span class="ltx_text" id="A4.T11.1.1.36.35.2.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.3"><span class="ltx_text" id="A4.T11.1.1.36.35.3.1" style="font-size:90%;">83%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.4"><span class="ltx_text" id="A4.T11.1.1.36.35.4.1" style="font-size:90%;">1552.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.5"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.36.35.5.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.6"><span class="ltx_text" id="A4.T11.1.1.36.35.6.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.7"><span class="ltx_text" id="A4.T11.1.1.36.35.7.1" style="font-size:90%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.36.35.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.9"><span class="ltx_text" id="A4.T11.1.1.36.35.9.1" style="font-size:90%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.10"><span class="ltx_text" id="A4.T11.1.1.36.35.10.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.11"><span class="ltx_text" id="A4.T11.1.1.36.35.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.36.35.12"><span class="ltx_text" id="A4.T11.1.1.36.35.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.37.36">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.37.36.1"><span class="ltx_text" id="A4.T11.1.1.37.36.1.1" style="font-size:90%;">12</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.2"><span class="ltx_text" id="A4.T11.1.1.37.36.2.1" style="font-size:90%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.3"><span class="ltx_text" id="A4.T11.1.1.37.36.3.1" style="font-size:90%;">75%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.4"><span class="ltx_text" id="A4.T11.1.1.37.36.4.1" style="font-size:90%;">1568.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.5"><span class="ltx_text" id="A4.T11.1.1.37.36.5.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.6"><span class="ltx_text" id="A4.T11.1.1.37.36.6.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.7"><span class="ltx_text" id="A4.T11.1.1.37.36.7.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.37.36.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.9"><span class="ltx_text" id="A4.T11.1.1.37.36.9.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.10"><span class="ltx_text" id="A4.T11.1.1.37.36.10.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.11"><span class="ltx_text" id="A4.T11.1.1.37.36.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.37.36.12"><span class="ltx_text" id="A4.T11.1.1.37.36.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.38.37">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.38.37.1"><span class="ltx_text" id="A4.T11.1.1.38.37.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.2"><span class="ltx_text" id="A4.T11.1.1.38.37.2.1" style="font-size:90%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.3"><span class="ltx_text" id="A4.T11.1.1.38.37.3.1" style="font-size:90%;">67%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.4"><span class="ltx_text" id="A4.T11.1.1.38.37.4.1" style="font-size:90%;">1561.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.5"><span class="ltx_text" id="A4.T11.1.1.38.37.5.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.6"><span class="ltx_text" id="A4.T11.1.1.38.37.6.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.7"><span class="ltx_text" id="A4.T11.1.1.38.37.7.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.8"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.38.37.8.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.9"><span class="ltx_text" id="A4.T11.1.1.38.37.9.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.10"><span class="ltx_text" id="A4.T11.1.1.38.37.10.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.11"><span class="ltx_text" id="A4.T11.1.1.38.37.11.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.38.37.12"><span class="ltx_text" id="A4.T11.1.1.38.37.12.1" style="font-size:90%;">99.3</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.39.38">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.39.38.1"><span class="ltx_text" id="A4.T11.1.1.39.38.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.2"><span class="ltx_text" id="A4.T11.1.1.39.38.2.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.3"><span class="ltx_text" id="A4.T11.1.1.39.38.3.1" style="font-size:90%;">58%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.4"><span class="ltx_text" id="A4.T11.1.1.39.38.4.1" style="font-size:90%;">1565.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.5"><span class="ltx_text" id="A4.T11.1.1.39.38.5.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.6"><span class="ltx_text" id="A4.T11.1.1.39.38.6.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.7"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.39.38.7.1" style="font-size:90%;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.8"><span class="ltx_text" id="A4.T11.1.1.39.38.8.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.9"><span class="ltx_text" id="A4.T11.1.1.39.38.9.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.10"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.39.38.10.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.11"><span class="ltx_text" id="A4.T11.1.1.39.38.11.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.39.38.12"><span class="ltx_text" id="A4.T11.1.1.39.38.12.1" style="font-size:90%;">99.8</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.40.39">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.40.39.1"><span class="ltx_text" id="A4.T11.1.1.40.39.1.1" style="font-size:90%;">24</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.2"><span class="ltx_text" id="A4.T11.1.1.40.39.2.1" style="font-size:90%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.3"><span class="ltx_text" id="A4.T11.1.1.40.39.3.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.4"><span class="ltx_text" id="A4.T11.1.1.40.39.4.1" style="font-size:90%;">1553.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.5"><span class="ltx_text" id="A4.T11.1.1.40.39.5.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.6"><span class="ltx_text ltx_font_bold" id="A4.T11.1.1.40.39.6.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.7"><span class="ltx_text" id="A4.T11.1.1.40.39.7.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.8"><span class="ltx_text" id="A4.T11.1.1.40.39.8.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.9"><span class="ltx_text" id="A4.T11.1.1.40.39.9.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.10"><span class="ltx_text" id="A4.T11.1.1.40.39.10.1" style="font-size:90%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.11"><span class="ltx_text" id="A4.T11.1.1.40.39.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.40.39.12"><span class="ltx_text" id="A4.T11.1.1.40.39.12.1" style="font-size:90%;">99.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.41.40">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T11.1.1.41.40.1"><span class="ltx_text" id="A4.T11.1.1.41.40.1.1" style="font-size:90%;">28</span></th>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.2"><span class="ltx_text" id="A4.T11.1.1.41.40.2.1" style="font-size:90%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.3"><span class="ltx_text" id="A4.T11.1.1.41.40.3.1" style="font-size:90%;">42%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.4"><span class="ltx_text" id="A4.T11.1.1.41.40.4.1" style="font-size:90%;">1536.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.5"><span class="ltx_text" id="A4.T11.1.1.41.40.5.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.6"><span class="ltx_text" id="A4.T11.1.1.41.40.6.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.7"><span class="ltx_text" id="A4.T11.1.1.41.40.7.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.8"><span class="ltx_text" id="A4.T11.1.1.41.40.8.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.9"><span class="ltx_text" id="A4.T11.1.1.41.40.9.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.10"><span class="ltx_text" id="A4.T11.1.1.41.40.10.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.11"><span class="ltx_text" id="A4.T11.1.1.41.40.11.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.41.40.12"><span class="ltx_text" id="A4.T11.1.1.41.40.12.1" style="font-size:90%;">98.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.1.1.42.41">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A4.T11.1.1.42.41.1"><span class="ltx_text" id="A4.T11.1.1.42.41.1.1" style="font-size:90%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.2"><span class="ltx_text" id="A4.T11.1.1.42.41.2.1" style="font-size:90%;">27.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.3"><span class="ltx_text" id="A4.T11.1.1.42.41.3.1" style="font-size:90%;">34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.4"><span class="ltx_text" id="A4.T11.1.1.42.41.4.1" style="font-size:90%;">1468.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.5"><span class="ltx_text" id="A4.T11.1.1.42.41.5.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.6"><span class="ltx_text" id="A4.T11.1.1.42.41.6.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.7"><span class="ltx_text" id="A4.T11.1.1.42.41.7.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.8"><span class="ltx_text" id="A4.T11.1.1.42.41.8.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.9"><span class="ltx_text" id="A4.T11.1.1.42.41.9.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.10"><span class="ltx_text" id="A4.T11.1.1.42.41.10.1" style="font-size:90%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.11"><span class="ltx_text" id="A4.T11.1.1.42.41.11.1" style="font-size:90%;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.1.1.42.41.12"><span class="ltx_text" id="A4.T11.1.1.42.41.12.1" style="font-size:90%;">93.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents a comprehensive analysis of the trade-off between model efficiency and performance achieved by ShortV, a method for enhancing the efficiency of Multimodal Large Language Models (MLLMs).  It systematically varies the number of ShortV layers (N), which represent layers where visual token updates are frozen.  The table displays the resulting changes in TFLOPs (Tera Floating Point Operations, a measure of computational cost), FLOPs Ratio (the proportion of FLOPs retained compared to the original model), and average performance across several vision-language benchmarks (MMBench, MMMU, SEED-Bench, Flickr30K, MME, MMStar, GQA).  Average performance (Avg.) is normalized, and Relative Performance Retention (Per.) shows the performance relative to the vanilla (unmodified) model. This allows for a clear visualization of how many layers can be replaced with ShortV layers while maintaining a high level of performance, thus demonstrating ShortV's effectiveness in reducing computational cost without significant accuracy loss.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance vs. Efficiency Balance of ShortV under different configurations. # ShortV Layers (N𝑁Nitalic_N): the number of ShortV layers, Avg.: a normalized average score on benchmarks, Per.: the relative performance retention compared with the vanilla models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00502/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00502/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}