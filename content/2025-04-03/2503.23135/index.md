---
title: "LSNet: See Large, Focus Small"
summary: "LSNet: a novel 'See Large, Focus Small' network, enhances lightweight vision by mimicking human vision's heteroscale processing."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Classification", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23135 {{< /keyword >}}
{{< keyword icon="writer" >}} Ao Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23135" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23135" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23135/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision network designs have advanced the field of computer vision; however, complex computations can be challenging for practical deployments. Lightweight models leverage self-attention and convolutions for token mixing which poses limitations in effectiveness and efficiency. This dependence brings limitations in perception and aggregation, hindering the balance between performance and efficiency under limited computational budgets.



To address these issues, this paper draws inspiration from the human visual system by introducing the **"See Large, Focus Small"** strategy for lightweight vision network design. To enable this strategy, the authors introduce **LS (Large-Small) convolution**, combining large-kernel perception and small-kernel aggregation. Based on LS convolution, the authors present a new family of lightweight models, **LSNet**. Results demonstrate that LSNet can achieve superior performance and efficiency over existing lightweight networks in various vision tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LSNet introduces Large-Small (LS) convolution, inspired by human vision, for efficient feature extraction and aggregation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LS convolution combines large-kernel perception with small-kernel aggregation to balance performance and computational cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show LSNet achieves superior performance and efficiency compared to existing lightweight networks on various vision tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **LSNet**, which is effective for lightweight vision network designs. The novel method **combines perception and aggregation**, which balances performance and efficiency. It can **inspire researchers** in this field to explore new methods and designs for lightweight vision networks.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23135/x1.png)

> 🔼 Figure 1 illustrates the mechanisms of self-attention and convolution, highlighting their differences in perception and aggregation.  Panel (a) shows self-attention's global perception and aggregation, while (b) depicts convolution's localized approach.  Panel (c) contrasts this with the human visual system's ability to simultaneously 'see large' (peripheral vision) and 'focus small' (central vision).  This dual-scale processing is enabled by the different distribution and functions of rod and cone cells in the retina, as detailed in panel (d), which shows the density of these cells across the retina's eccentricity from the fovea.
> <details>
> <summary>read the caption</summary>
> Figure 1: The mechanism of self attention (a) and convolution (b). (c) shows that the human vision system can “See Large” through the peripheral vision, and “Focus Small” through the central vision. (d) shows the distribution of rods and cones depending on the eccentricity from the fovea of the human eye. They contribute to the formation of extensive peripheral vision and focal central vision.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tr class="ltx_tr" id="S3.T1.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.1.2.1"></span><span class="ltx_text" id="S3.T1.5.1.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.5.1.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.1.2.3.1">
<span class="ltx_tr" id="S3.T1.5.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.2.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Params</span></span>
<span class="ltx_tr" id="S3.T1.5.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.2.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">(M)</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.1.2.4"></span><span class="ltx_text" id="S3.T1.5.1.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.1.3.1"></span><span class="ltx_text" id="S3.T1.5.1.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.5.1.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.1.3.3.1">
<span class="ltx_tr" id="S3.T1.5.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">FLOPs</span></span>
<span class="ltx_tr" id="S3.T1.5.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">(G)</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.1.3.4"></span><span class="ltx_text" id="S3.T1.5.1.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.1.4.1"></span><span class="ltx_text" id="S3.T1.5.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.5.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.1.4.3.1">
<span class="ltx_tr" id="S3.T1.5.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Throughput</span></span>
<span class="ltx_tr" id="S3.T1.5.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">(img/s)</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.1.4.4"></span><span class="ltx_text" id="S3.T1.5.1.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.1.5.1"></span><span class="ltx_text" id="S3.T1.5.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S3.T1.5.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.1.5.3.1">
<span class="ltx_tr" id="S3.T1.5.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Top-1</span></span>
<span class="ltx_tr" id="S3.T1.5.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.1.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">(%)</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.1.5.4"></span><span class="ltx_text" id="S3.T1.5.1.5.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.5.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.2.1.1" style="font-size:90%;">EdgeNeXt-XXS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T1.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.2.2.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.2.3.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.2.4.1" style="font-size:90%;">5089</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.2.5.1" style="font-size:90%;">71.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.3">
<td class="ltx_td ltx_align_left" id="S3.T1.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.3.1.1" style="font-size:90%;">FasterNet-T0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S3.T1.5.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.3.2.1" style="font-size:90%;">3.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.3.3.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.3.4.1" style="font-size:90%;">14467</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.3.5.1" style="font-size:90%;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T1.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.4.1.1" style="font-size:90%;">ShuffleNetV2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S3.T1.5.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.4.2.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.4.3.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.4.4.1" style="font-size:90%;">9593</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.4.5.1" style="font-size:90%;">72.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.5.1.1" style="font-size:90%;">AFFNet-ET </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S3.T1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.5.2.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.5.3.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.5.4.1" style="font-size:90%;">2877</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.5.5.1" style="font-size:90%;">73.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6">
<td class="ltx_td ltx_align_left" id="S3.T1.5.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.6.1.1" style="font-size:90%;">EfficientViT-M3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S3.T1.5.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.6.2.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.6.3.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.6.4.1" style="font-size:90%;">14613</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.6.5.1" style="font-size:90%;">73.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7">
<td class="ltx_td ltx_align_left" id="S3.T1.5.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.7.1.1" style="font-size:90%;">StarNet-S1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S3.T1.5.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.7.2.1" style="font-size:90%;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.7.3.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.7.4.1" style="font-size:90%;">5034</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.7.5.1" style="font-size:90%;">73.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S3.T1.5.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.8.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.8.2.1" style="font-size:90%;background-color:#EBEBEB;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.8.3.1" style="font-size:90%;background-color:#EBEBEB;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.8.4.1" style="font-size:90%;background-color:#EBEBEB;">14708</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.8.5.1" style="font-size:90%;background-color:#EBEBEB;">74.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S3.T1.5.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.9.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-T<span class="ltx_text ltx_font_medium" id="S3.T1.5.9.1.1.1">*</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.9.2.1" style="font-size:90%;background-color:#EBEBEB;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.9.3.1" style="font-size:90%;background-color:#EBEBEB;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.9.4.1" style="font-size:90%;background-color:#EBEBEB;">14708</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.9.5.1" style="font-size:90%;background-color:#EBEBEB;">76.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.10.1.1" style="font-size:90%;">EdgeNeXt-XS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T1.5.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.10.2.1" style="font-size:90%;">2.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.10.3.1" style="font-size:90%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.10.4.1" style="font-size:90%;">3118</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.10.5.1" style="font-size:90%;">75.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11">
<td class="ltx_td ltx_align_left" id="S3.T1.5.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.11.1.1" style="font-size:90%;">PVT-Tiny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S3.T1.5.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.11.2.1" style="font-size:90%;">13.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.11.3.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.11.4.1" style="font-size:90%;">2125</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.11.5.1" style="font-size:90%;">75.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12">
<td class="ltx_td ltx_align_left" id="S3.T1.5.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.12.1.1" style="font-size:90%;">MobileNetV3-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S3.T1.5.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.12.2.1" style="font-size:90%;">5.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.12.3.1" style="font-size:90%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.12.4.1" style="font-size:90%;">7921</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.12.5.1" style="font-size:90%;">75.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13">
<td class="ltx_td ltx_align_left" id="S3.T1.5.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.13.1.1" style="font-size:90%;">FastViT-T8 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S3.T1.5.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.13.2.1" style="font-size:90%;">3.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.13.3.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.13.4.1" style="font-size:90%;">3909</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.13.5.1" style="font-size:90%;">75.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.14">
<td class="ltx_td ltx_align_left" id="S3.T1.5.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.14.1.1" style="font-size:90%;">EFormerV2-S0* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S3.T1.5.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.14.2.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.14.3.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.14.4.1" style="font-size:90%;">1329</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.14.5.1" style="font-size:90%;">75.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.15">
<td class="ltx_td ltx_align_left" id="S3.T1.5.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.15.1.1" style="font-size:90%;">FasterNet-T1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S3.T1.5.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.15.2.1" style="font-size:90%;">7.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.15.3.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.15.4.1" style="font-size:90%;">8660</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.15.5.1" style="font-size:90%;">76.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.16">
<td class="ltx_td ltx_align_left" id="S3.T1.5.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.16.1.1" style="font-size:90%;">UniRepLKNet-A </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T1.5.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.16.2.1" style="font-size:90%;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.16.3.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.16.4.1" style="font-size:90%;">3931</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.16.5.1" style="font-size:90%;">77.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.17">
<td class="ltx_td ltx_align_left" id="S3.T1.5.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.17.1.1" style="font-size:90%;">EfficientNet-B0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S3.T1.5.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.17.2.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.17.3.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.17.4.1" style="font-size:90%;">4481</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.17.5.1" style="font-size:90%;">77.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.18">
<td class="ltx_td ltx_align_left" id="S3.T1.5.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.18.1.1" style="font-size:90%;">PoolFormer-S12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S3.T1.5.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.18.2.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.18.3.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.18.4.1" style="font-size:90%;">2769</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.18.5.1" style="font-size:90%;">77.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.19">
<td class="ltx_td ltx_align_left" id="S3.T1.5.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.19.1.1" style="font-size:90%;">SHViT-S3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S3.T1.5.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.19.2.1" style="font-size:90%;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.19.3.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.19.4.1" style="font-size:90%;">8993</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.19.5.1" style="font-size:90%;">77.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.20">
<td class="ltx_td ltx_align_left" id="S3.T1.5.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.20.1.1" style="font-size:90%;">RepViT-M0.9 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S3.T1.5.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.20.2.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.20.3.1" style="font-size:90%;">0.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.20.4.1" style="font-size:90%;">4817</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.20.5.1" style="font-size:90%;">77.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.21" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S3.T1.5.21.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.21.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-S</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.21.2.1" style="font-size:90%;background-color:#EBEBEB;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.21.3.1" style="font-size:90%;background-color:#EBEBEB;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.21.4.1" style="font-size:90%;background-color:#EBEBEB;">9023</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.21.5.1" style="font-size:90%;background-color:#EBEBEB;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.22" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S3.T1.5.22.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.22.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-S<span class="ltx_text ltx_font_medium" id="S3.T1.5.22.1.1.1">*</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.22.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.22.2.1" style="font-size:90%;background-color:#EBEBEB;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.22.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.22.3.1" style="font-size:90%;background-color:#EBEBEB;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.22.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.22.4.1" style="font-size:90%;background-color:#EBEBEB;">9023</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.22.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.22.5.1" style="font-size:90%;background-color:#EBEBEB;">79.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.23.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.23.1.1" style="font-size:90%;">EdgeViT-XS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S3.T1.5.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.23.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.23.2.1" style="font-size:90%;">6.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.23.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.23.3.1" style="font-size:90%;">1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.23.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.23.4.1" style="font-size:90%;">2751</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.23.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.23.5.1" style="font-size:90%;">77.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.24">
<td class="ltx_td ltx_align_left" id="S3.T1.5.24.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.24.1.1" style="font-size:90%;">SwiftFormer-S* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S3.T1.5.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.24.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.24.2.1" style="font-size:90%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.24.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.24.3.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.24.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.24.4.1" style="font-size:90%;">3376</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.24.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.24.5.1" style="font-size:90%;">78.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.25">
<td class="ltx_td ltx_align_left" id="S3.T1.5.25.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.25.1.1" style="font-size:90%;">UniRepLKNet-F </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T1.5.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.25.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.25.2.1" style="font-size:90%;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.25.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.25.3.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.25.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.25.4.1" style="font-size:90%;">3209</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.25.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.25.5.1" style="font-size:90%;">78.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.26">
<td class="ltx_td ltx_align_left" id="S3.T1.5.26.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.26.1.1" style="font-size:90%;">FastViT-T12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.26.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S3.T1.5.26.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.26.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.26.2.1" style="font-size:90%;">6.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.26.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.26.3.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.26.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.26.4.1" style="font-size:90%;">2586</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.26.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.26.5.1" style="font-size:90%;">79.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.27">
<td class="ltx_td ltx_align_left" id="S3.T1.5.27.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.27.1.1" style="font-size:90%;">EFormer-L1* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.27.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S3.T1.5.27.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.27.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.27.2.1" style="font-size:90%;">12.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.27.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.27.3.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.27.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.27.4.1" style="font-size:90%;">3280</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.27.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.27.5.1" style="font-size:90%;">79.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.28">
<td class="ltx_td ltx_align_left" id="S3.T1.5.28.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.28.1.1" style="font-size:90%;">EdgeNeXt-S </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.28.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T1.5.28.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.28.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.28.2.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.28.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.28.3.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.28.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.28.4.1" style="font-size:90%;">2128</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.28.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.28.5.1" style="font-size:90%;">79.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.29">
<td class="ltx_td ltx_align_left" id="S3.T1.5.29.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.29.1.1" style="font-size:90%;">RepViT-M1.1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.29.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S3.T1.5.29.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.29.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.29.2.1" style="font-size:90%;">8.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.29.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.29.3.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.29.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.29.4.1" style="font-size:90%;">3604</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.29.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.29.5.1" style="font-size:90%;">79.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.30">
<td class="ltx_td ltx_align_left" id="S3.T1.5.30.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.30.1.1" style="font-size:90%;">PVT-Small </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.30.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S3.T1.5.30.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.30.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.30.2.1" style="font-size:90%;">24.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.30.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.30.3.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.30.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.30.4.1" style="font-size:90%;">1160</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.30.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.30.5.1" style="font-size:90%;">79.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.31">
<td class="ltx_td ltx_align_left" id="S3.T1.5.31.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.31.1.1" style="font-size:90%;">AFFNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.31.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S3.T1.5.31.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.31.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.31.2.1" style="font-size:90%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.31.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.31.3.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.31.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.31.4.1" style="font-size:90%;">1355</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.31.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.31.5.1" style="font-size:90%;">79.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.32" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S3.T1.5.32.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.32.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.32.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.32.2.1" style="font-size:90%;background-color:#EBEBEB;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.32.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.32.3.1" style="font-size:90%;background-color:#EBEBEB;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.32.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.32.4.1" style="font-size:90%;background-color:#EBEBEB;">3996</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.32.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.32.5.1" style="font-size:90%;background-color:#EBEBEB;">80.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.33" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.5.33.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.33.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-B<span class="ltx_text ltx_font_medium" id="S3.T1.5.33.1.1.1">*</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.33.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.33.2.1" style="font-size:90%;background-color:#EBEBEB;">23.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.33.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.33.3.1" style="font-size:90%;background-color:#EBEBEB;">1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.33.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.5.33.4.1" style="font-size:90%;background-color:#EBEBEB;">3996</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.33.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.33.5.1" style="font-size:90%;background-color:#EBEBEB;">81.6</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various lightweight model architectures on the ImageNet-1K image classification benchmark.  The metrics reported include the number of model parameters (in millions), the number of floating point operations (FLOPs) required for inference (in billions), the inference throughput achieved on an Nvidia RTX 3090 GPU (images per second), and the top-1 accuracy.  Results are shown for both standard training and knowledge distillation (indicated by a '*' in the table), where a pre-trained RegNetY-16GF model serves as the teacher.  The table highlights the trade-off between model size/complexity, speed, and accuracy, allowing for comparison against several state-of-the-art lightweight models, including EfficientFormer (EFormer) variants.
> <details>
> <summary>read the caption</summary>
> Table 1: Classification results on ImageNet-1K. The throughput is tested on a Nvidia RTX3090 with maximum power-of-two batch size that fits in memory, following [51, 36]. * denotes the results with distillation using the RegNetY-16GF [68] with 82.9% top-1 accuracy as the teacher model. EFormer denotes EfficientFormer.
> </details>





### In-depth insights


#### Heteroscale Vision
**Heteroscale vision** describes visual systems, like the human eye, that process information at different scales simultaneously. This approach allows for both broad contextual awareness and detailed focus. In the context of computer vision, this concept inspires architectures that mimic this capability, using different kernel sizes or receptive fields to capture both global and local features. By combining a wide-angle view with specific attention to detail, **heteroscale models** aim to improve efficiency and accuracy. Such systems process global context for quick assessment, while also precisely analyzing details. This design reflects the human eye's strategy, where peripheral vision identifies the environment and central vision focuses on points of interest. The goal is to improve performance by emulating the dual-processing power of natural vision. **Balancing these scales** is essential for effectively applying heteroscale vision to artificial intelligence, enhancing both perception and response.

#### LS Conv: Details
While “LS Conv: Details” isn't explicitly present, I can discuss the core concept of the Large-Small Convolution (LS Conv) as presented in the paper. LS Conv is designed to mimic the human vision system's “See Large, Focus Small” strategy. **It combines a large-kernel static convolution for wide-ranging perception with a small-kernel dynamic convolution for precise feature aggregation.** The large kernel captures broad contextual information, enabling better spatial relationship modeling. The small kernel then refines this by adaptively integrating features within a highly related visual field. This approach allows the network to capture both the overall context and fine-grained details efficiently, leading to improved performance and efficiency in lightweight models. The innovation lies in effectively guiding adaptive feature fusion within a highly related context via enriched, large-field visual perception.

#### LSNet Architecture
While the provided text doesn't explicitly have a section titled "LSNet Architecture," the paper details the LSNet design. **LSNet leverages LS convolution** as its core operation, combining large-kernel perception (LKP) for broad contextual understanding and small-kernel aggregation (SKA) for fine-grained feature fusion. **Skip connections** are utilized to ease optimization. Extra depth-wise convolution and **SE layers** enhance local inductive bias. A feed-forward network (FFN) handles channel mixing. LSNet employs **overlapping patch embedding** to project the input image. Downsampling is achieved using depth-wise and point-wise convolutions. LS blocks are stacked in the initial stages, while MSA blocks capture long-range dependencies in the later stages, due to the smaller resolution. The three LSNet variants – Tiny, Small, and Base – cater to different computational budgets, demonstrating a scalable architecture.

#### Robust Token Mixing
While not explicitly defined as 'Robust Token Mixing,' the paper implicitly addresses this concept by emphasizing architectural choices that enhance both performance and efficiency in lightweight vision networks. Traditional approaches, like self-attention, can be computationally expensive and may overemphasize less informative regions. Similarly, convolutions, while efficient, lack the adaptability to varying contextual neighborhoods. To address these limitations, the authors introduce LS convolution, which mimics the human visual system by integrating large-kernel perception for broad contextual understanding and small-kernel aggregation for focused feature extraction. This 'See Large, Focus Small' strategy results in more **discriminative feature representations** and **improved robustness** by dynamically adapting to the relevant visual field and by extension create a system for robust token mixing, reducing the dependence on potentially noisy or irrelevant tokens.

#### Broader Scenarios
While the paper focuses on lightweight network design, the potential for **broader applications** is considerable. The core ideas of "See Large, Focus Small" could be extended beyond image classification, object detection, and segmentation.  Specifically, the adaptive, heteroscale approach has strong implications for **real-time processing** in resource-constrained environments such as mobile robotics, autonomous vehicles, and IoT devices.  The principles of the LS convolution have the ability to process a wider range of data modalities, including video, audio, and even time-series data, opening doors for **multimodal learning** and efficient processing of diverse data streams. The human-inspired design could influence the development of more **explainable and interpretable AI** models by offering a framework to mimic human perception.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23135/x2.png)

> 🔼 This figure compares the token mixing mechanisms of self-attention, convolution, and the proposed LS convolution.  It illustrates how each method handles perception (capturing contextual relationships) and aggregation (integrating token features) differently.  Self-attention uses global perception and aggregation, convolution uses local perception and aggregation with fixed kernel weights, and LS convolution combines large-kernel perception for a broad overview with small-kernel dynamic aggregation for precise feature fusion in local regions. This approach mimics the human visual system’s ability to simultaneously ‘see large’ and ‘focus small.’
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of self-attention, convolution, and LS conv.
> </details>



![](https://arxiv.org/html/2503.23135/x3.png)

> 🔼 Figure 3(a) shows the LS convolution which combines large-kernel perception and small-kernel aggregation to efficiently capture a wide range of perceptual information and achieve precise feature aggregation. Figure 3(b) shows the LSNet architecture which uses LS convolution as the building block. The network consists of four stages with progressively decreasing resolutions (H/8*W/8, H/16*W/16, H/32*W/32, H/64*W/64), each stage comprising multiple LS blocks.  The number of channels increases with each stage.  Normalization and activation functions are omitted for simplicity.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) The illustration of our proposed LS convolution. (b) The illustration of our proposed LSNet. LSNet has four stages with H8×W8𝐻8𝑊8\frac{H}{8}\times\frac{W}{8}divide start_ARG italic_H end_ARG start_ARG 8 end_ARG × divide start_ARG italic_W end_ARG start_ARG 8 end_ARG, H16×W16𝐻16𝑊16\frac{H}{16}\times\frac{W}{16}divide start_ARG italic_H end_ARG start_ARG 16 end_ARG × divide start_ARG italic_W end_ARG start_ARG 16 end_ARG, H32×W32𝐻32𝑊32\frac{H}{32}\times\frac{W}{32}divide start_ARG italic_H end_ARG start_ARG 32 end_ARG × divide start_ARG italic_W end_ARG start_ARG 32 end_ARG, and H64×W64𝐻64𝑊64\frac{H}{64}\times\frac{W}{64}divide start_ARG italic_H end_ARG start_ARG 64 end_ARG × divide start_ARG italic_W end_ARG start_ARG 64 end_ARG resolutions respectively, where H𝐻Hitalic_H and W𝑊Witalic_W denote the width and height of the input image. C𝐶Citalic_C represents the channel dimension. The norm layer and nonlinearity are omitted for simplicity.
> </details>



![](https://arxiv.org/html/2503.23135/x4.png)

> 🔼 This figure shows a comparison of three token mixing approaches in lightweight vision networks: self-attention, convolution, and the proposed LS convolution.  Self-attention (a) uses a global perception of all tokens, and a global aggregation, which can be inefficient with many tokens and insensitive to less important connections. Convolution (b) uses local perception and aggregation, using a fixed kernel, leading to limited perception range and contextual insensitivity. LS convolution (c) combines large-kernel perception to capture a wide range of context, followed by small-kernel aggregation which focuses on more precise features, mimicking the human vision system’s ability to see large areas and then focus on details.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.23135/x5.png)

> 🔼 This figure shows the architecture of LSNet, a lightweight vision network based on the proposed LS convolution. LSNet consists of four stages with decreasing resolutions (H x W) from 64x64 to 8x8, reflecting the processing of information through the network from a larger field of view (See Large) to a smaller focus (Focus Small). Each stage consists of multiple LS blocks. The number of blocks and channels differ between LSNet variants (tiny, small, base) based on the computational resources available.  A stem module processes the input image into a feature map. Downsampling techniques reduce the spatial resolution between stages.  The MSA block at the end of the final stage incorporates multi-head self-attention, which accounts for long-range dependencies in the lower resolution feature maps.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.23135/x6.png)

> 🔼 This figure visualizes the effective receptive fields of different convolution methods.  RepMixer (a) and CGA (b), representing typical convolution and self-attention methods, respectively, show unnatural, irregular patterns in their receptive fields.  In contrast, the LS convolution (c) demonstrates a more natural receptive field, combining both a wide peripheral view (similar to human peripheral vision) and a focused central area (similar to human foveal vision).  The final image (d) shows that removing the large kernel perception (LKP) component from the LS convolution results in a much smaller receptive field, highlighting the importance of LKP in achieving the wide perceptual range of the LS convolution.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of the effective receptive field. Best viewed when zoomed in. (a) and (b) show that RepMixer and CGA exhibit unnatural patterns in the effective receptive field. (c) illustrates that LS convolution enables broad peripheral perception and central view focusing simultaneously. (d) shows that without LKP, LS convolution presents a smaller receptive field compared with (c), indicating the effectiveness of LKP.
> </details>



![](https://arxiv.org/html/2503.23135/x7.png)

> 🔼 This figure visualizes the aggregation weights learned by the LS convolution, a novel method for efficiently capturing both broad contextual information and fine-grained details. The top row displays input images. The second row shows heatmaps of aggregation weights.  These heatmaps demonstrate that the weights are strongly correlated with semantically meaningful regions in the input image. The bottom row shows the same visualization, but when the Large-Kernel Perception (LKP) component is removed from the LS convolution. Comparing the second and third rows reveals that integrating LKP significantly enhances the precision of the aggregation weights, enabling the LS convolution to capture more precise visual patterns and improve contextual information.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of the aggregation weights in LS convolution. The second row shows that the aggregation weights are well correlated with semantic relevant areas. The third row indicates that integrating LKP enables LS convolution to capture more precise visual patterns with improved contextual information.
> </details>



![](https://arxiv.org/html/2503.23135/x8.png)

> 🔼 Figure 6 visualizes the feature maps generated by the Large Kernel Perception (LKP) and Small Kernel Aggregation (SKA) modules of the LS convolution.  The left column shows the input image. The middle column displays the feature maps produced by LKP, demonstrating its ability to capture a wide, contextual view of the scene. The right column shows the feature maps produced by SKA, illustrating its ability to extract more subtle and detailed features from the scene using the information provided by LKP.  This figure highlights the complementary nature of LKP and SKA in capturing both global context and local details.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of the feature maps of LKP and SKA. The second column in each part shows that LKP can encompass a broad view of the scene. The third column in each part indicates that based on LKP, SKA can further grasp more subtle features and detailed patterns.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.17.11">
<tr class="ltx_tr" id="S4.T2.17.11.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.17.11.12.1" rowspan="2"><span class="ltx_text" id="S4.T2.17.11.12.1.1" style="font-size:90%;">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.17.11.12.2" rowspan="2"><span class="ltx_text" id="S4.T2.17.11.12.2.1" style="font-size:90%;">FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S4.T2.17.11.12.3"><span class="ltx_text" id="S4.T2.17.11.12.3.1" style="font-size:90%;">RetinaNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T2.17.11.12.4"><span class="ltx_text" id="S4.T2.17.11.12.4.1" style="font-size:90%;">Mask R-CNN</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.11.12"><span class="ltx_text" id="S4.T2.17.11.11.12.1" style="font-size:90%;">AP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.1.1.1">
<span class="ltx_text" id="S4.T2.7.1.1.1.1" style="font-size:90%;">AP</span><sub class="ltx_sub" id="S4.T2.7.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.7.1.1.1.2.1" style="font-size:90%;">50</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.2.2.2">
<span class="ltx_text" id="S4.T2.8.2.2.2.1" style="font-size:90%;">AP</span><sub class="ltx_sub" id="S4.T2.8.2.2.2.2"><span class="ltx_text ltx_font_italic" id="S4.T2.8.2.2.2.2.1" style="font-size:90%;">75</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.3.3">
<span class="ltx_text" id="S4.T2.9.3.3.3.1" style="font-size:90%;">AP</span><sub class="ltx_sub" id="S4.T2.9.3.3.3.2"><span class="ltx_text ltx_font_italic" id="S4.T2.9.3.3.3.2.1" style="font-size:90%;">S</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.4.4">
<span class="ltx_text" id="S4.T2.10.4.4.4.1" style="font-size:90%;">AP</span><sub class="ltx_sub" id="S4.T2.10.4.4.4.2"><span class="ltx_text ltx_font_italic" id="S4.T2.10.4.4.4.2.1" style="font-size:90%;">M</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.5.5.5">
<span class="ltx_text" id="S4.T2.11.5.5.5.1" style="font-size:90%;">AP</span><sub class="ltx_sub" id="S4.T2.11.5.5.5.2"><span class="ltx_text ltx_font_italic" id="S4.T2.11.5.5.5.2.1" style="font-size:90%;">L</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.6.6">
<span class="ltx_text" id="S4.T2.12.6.6.6.1" style="font-size:90%;">AP</span><sup class="ltx_sup" id="S4.T2.12.6.6.6.2"><span class="ltx_text" id="S4.T2.12.6.6.6.2.1" style="font-size:90%;">b</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.7.7.7">
<span class="ltx_text" id="S4.T2.13.7.7.7.1" style="font-size:90%;">AP</span><math alttext="{}_{50}^{\rm b}" class="ltx_Math" display="inline" id="S4.T2.13.7.7.7.m1.1"><semantics id="S4.T2.13.7.7.7.m1.1a"><mmultiscripts id="S4.T2.13.7.7.7.m1.1.1" xref="S4.T2.13.7.7.7.m1.1.1.cmml"><mi id="S4.T2.13.7.7.7.m1.1.1.2.2" xref="S4.T2.13.7.7.7.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T2.13.7.7.7.m1.1.1a" xref="S4.T2.13.7.7.7.m1.1.1.cmml"></mprescripts><mrow id="S4.T2.13.7.7.7.m1.1.1b" xref="S4.T2.13.7.7.7.m1.1.1.cmml"></mrow><mi id="S4.T2.13.7.7.7.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T2.13.7.7.7.m1.1.1.3.cmml">b</mi><mn id="S4.T2.13.7.7.7.m1.1.1.2.3" mathsize="90%" xref="S4.T2.13.7.7.7.m1.1.1.2.3.cmml">50</mn><mrow id="S4.T2.13.7.7.7.m1.1.1c" xref="S4.T2.13.7.7.7.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T2.13.7.7.7.m1.1b"><apply id="S4.T2.13.7.7.7.m1.1.1.cmml" xref="S4.T2.13.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.13.7.7.7.m1.1.1.1.cmml" xref="S4.T2.13.7.7.7.m1.1.1">superscript</csymbol><apply id="S4.T2.13.7.7.7.m1.1.1.2.cmml" xref="S4.T2.13.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.13.7.7.7.m1.1.1.2.1.cmml" xref="S4.T2.13.7.7.7.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S4.T2.13.7.7.7.m1.1.1.2.2.cmml" xref="S4.T2.13.7.7.7.m1.1.1.2.2">absent</csymbol><cn id="S4.T2.13.7.7.7.m1.1.1.2.3.cmml" type="integer" xref="S4.T2.13.7.7.7.m1.1.1.2.3">50</cn></apply><ci id="S4.T2.13.7.7.7.m1.1.1.3.cmml" xref="S4.T2.13.7.7.7.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.7.7.7.m1.1c">{}_{50}^{\rm b}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.7.7.7.m1.1d">start_FLOATSUBSCRIPT 50 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.14.8.8.8">
<span class="ltx_text" id="S4.T2.14.8.8.8.1" style="font-size:90%;">AP</span><math alttext="{}_{75}^{\rm b}" class="ltx_Math" display="inline" id="S4.T2.14.8.8.8.m1.1"><semantics id="S4.T2.14.8.8.8.m1.1a"><mmultiscripts id="S4.T2.14.8.8.8.m1.1.1" xref="S4.T2.14.8.8.8.m1.1.1.cmml"><mi id="S4.T2.14.8.8.8.m1.1.1.2.2" xref="S4.T2.14.8.8.8.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T2.14.8.8.8.m1.1.1a" xref="S4.T2.14.8.8.8.m1.1.1.cmml"></mprescripts><mrow id="S4.T2.14.8.8.8.m1.1.1b" xref="S4.T2.14.8.8.8.m1.1.1.cmml"></mrow><mi id="S4.T2.14.8.8.8.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T2.14.8.8.8.m1.1.1.3.cmml">b</mi><mn id="S4.T2.14.8.8.8.m1.1.1.2.3" mathsize="90%" xref="S4.T2.14.8.8.8.m1.1.1.2.3.cmml">75</mn><mrow id="S4.T2.14.8.8.8.m1.1.1c" xref="S4.T2.14.8.8.8.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T2.14.8.8.8.m1.1b"><apply id="S4.T2.14.8.8.8.m1.1.1.cmml" xref="S4.T2.14.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.14.8.8.8.m1.1.1.1.cmml" xref="S4.T2.14.8.8.8.m1.1.1">superscript</csymbol><apply id="S4.T2.14.8.8.8.m1.1.1.2.cmml" xref="S4.T2.14.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.14.8.8.8.m1.1.1.2.1.cmml" xref="S4.T2.14.8.8.8.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S4.T2.14.8.8.8.m1.1.1.2.2.cmml" xref="S4.T2.14.8.8.8.m1.1.1.2.2">absent</csymbol><cn id="S4.T2.14.8.8.8.m1.1.1.2.3.cmml" type="integer" xref="S4.T2.14.8.8.8.m1.1.1.2.3">75</cn></apply><ci id="S4.T2.14.8.8.8.m1.1.1.3.cmml" xref="S4.T2.14.8.8.8.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.8.8.8.m1.1c">{}_{75}^{\rm b}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.8.8.8.m1.1d">start_FLOATSUBSCRIPT 75 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.9.9">
<span class="ltx_text" id="S4.T2.15.9.9.9.1" style="font-size:90%;">AP</span><sup class="ltx_sup" id="S4.T2.15.9.9.9.2"><span class="ltx_text" id="S4.T2.15.9.9.9.2.1" style="font-size:90%;">m</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.10.10.10">
<span class="ltx_text" id="S4.T2.16.10.10.10.1" style="font-size:90%;">AP</span><math alttext="{}_{50}^{\rm m}" class="ltx_Math" display="inline" id="S4.T2.16.10.10.10.m1.1"><semantics id="S4.T2.16.10.10.10.m1.1a"><mmultiscripts id="S4.T2.16.10.10.10.m1.1.1" xref="S4.T2.16.10.10.10.m1.1.1.cmml"><mi id="S4.T2.16.10.10.10.m1.1.1.2.2" xref="S4.T2.16.10.10.10.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T2.16.10.10.10.m1.1.1a" xref="S4.T2.16.10.10.10.m1.1.1.cmml"></mprescripts><mrow id="S4.T2.16.10.10.10.m1.1.1b" xref="S4.T2.16.10.10.10.m1.1.1.cmml"></mrow><mi id="S4.T2.16.10.10.10.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T2.16.10.10.10.m1.1.1.3.cmml">m</mi><mn id="S4.T2.16.10.10.10.m1.1.1.2.3" mathsize="90%" xref="S4.T2.16.10.10.10.m1.1.1.2.3.cmml">50</mn><mrow id="S4.T2.16.10.10.10.m1.1.1c" xref="S4.T2.16.10.10.10.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T2.16.10.10.10.m1.1b"><apply id="S4.T2.16.10.10.10.m1.1.1.cmml" xref="S4.T2.16.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.16.10.10.10.m1.1.1.1.cmml" xref="S4.T2.16.10.10.10.m1.1.1">superscript</csymbol><apply id="S4.T2.16.10.10.10.m1.1.1.2.cmml" xref="S4.T2.16.10.10.10.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.16.10.10.10.m1.1.1.2.1.cmml" xref="S4.T2.16.10.10.10.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S4.T2.16.10.10.10.m1.1.1.2.2.cmml" xref="S4.T2.16.10.10.10.m1.1.1.2.2">absent</csymbol><cn id="S4.T2.16.10.10.10.m1.1.1.2.3.cmml" type="integer" xref="S4.T2.16.10.10.10.m1.1.1.2.3">50</cn></apply><ci id="S4.T2.16.10.10.10.m1.1.1.3.cmml" xref="S4.T2.16.10.10.10.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.10.10.10.m1.1c">{}_{50}^{\rm m}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.10.10.10.m1.1d">start_FLOATSUBSCRIPT 50 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.11.11">
<span class="ltx_text" id="S4.T2.17.11.11.11.1" style="font-size:90%;">AP</span><math alttext="{}_{75}^{\rm m}" class="ltx_Math" display="inline" id="S4.T2.17.11.11.11.m1.1"><semantics id="S4.T2.17.11.11.11.m1.1a"><mmultiscripts id="S4.T2.17.11.11.11.m1.1.1" xref="S4.T2.17.11.11.11.m1.1.1.cmml"><mi id="S4.T2.17.11.11.11.m1.1.1.2.2" xref="S4.T2.17.11.11.11.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T2.17.11.11.11.m1.1.1a" xref="S4.T2.17.11.11.11.m1.1.1.cmml"></mprescripts><mrow id="S4.T2.17.11.11.11.m1.1.1b" xref="S4.T2.17.11.11.11.m1.1.1.cmml"></mrow><mi id="S4.T2.17.11.11.11.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T2.17.11.11.11.m1.1.1.3.cmml">m</mi><mn id="S4.T2.17.11.11.11.m1.1.1.2.3" mathsize="90%" xref="S4.T2.17.11.11.11.m1.1.1.2.3.cmml">75</mn><mrow id="S4.T2.17.11.11.11.m1.1.1c" xref="S4.T2.17.11.11.11.m1.1.1.cmml"></mrow></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T2.17.11.11.11.m1.1b"><apply id="S4.T2.17.11.11.11.m1.1.1.cmml" xref="S4.T2.17.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.17.11.11.11.m1.1.1.1.cmml" xref="S4.T2.17.11.11.11.m1.1.1">superscript</csymbol><apply id="S4.T2.17.11.11.11.m1.1.1.2.cmml" xref="S4.T2.17.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.17.11.11.11.m1.1.1.2.1.cmml" xref="S4.T2.17.11.11.11.m1.1.1">subscript</csymbol><csymbol cd="latexml" id="S4.T2.17.11.11.11.m1.1.1.2.2.cmml" xref="S4.T2.17.11.11.11.m1.1.1.2.2">absent</csymbol><cn id="S4.T2.17.11.11.11.m1.1.1.2.3.cmml" type="integer" xref="S4.T2.17.11.11.11.m1.1.1.2.3">75</cn></apply><ci id="S4.T2.17.11.11.11.m1.1.1.3.cmml" xref="S4.T2.17.11.11.11.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.11.11.11.m1.1c">{}_{75}^{\rm m}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.11.11.11.m1.1d">start_FLOATSUBSCRIPT 75 end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.17.11.13.1">
<span class="ltx_text" id="S4.T2.17.11.13.1.1" style="font-size:90%;">MobileNetV2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S4.T2.17.11.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.17.11.13.2"><span class="ltx_text" id="S4.T2.17.11.13.2.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.3"><span class="ltx_text" id="S4.T2.17.11.13.3.1" style="font-size:90%;">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.4"><span class="ltx_text" id="S4.T2.17.11.13.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.17.11.13.5"><span class="ltx_text" id="S4.T2.17.11.13.5.1" style="font-size:90%;">29.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.6"><span class="ltx_text" id="S4.T2.17.11.13.6.1" style="font-size:90%;">14.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.7"><span class="ltx_text" id="S4.T2.17.11.13.7.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.17.11.13.8"><span class="ltx_text" id="S4.T2.17.11.13.8.1" style="font-size:90%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.9"><span class="ltx_text" id="S4.T2.17.11.13.9.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.10"><span class="ltx_text" id="S4.T2.17.11.13.10.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.17.11.13.11"><span class="ltx_text" id="S4.T2.17.11.13.11.1" style="font-size:90%;">31.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.12"><span class="ltx_text" id="S4.T2.17.11.13.12.1" style="font-size:90%;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.13"><span class="ltx_text" id="S4.T2.17.11.13.13.1" style="font-size:90%;">45.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.17.11.13.14"><span class="ltx_text" id="S4.T2.17.11.13.14.1" style="font-size:90%;">28.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.14.1">
<span class="ltx_text" id="S4.T2.17.11.14.1.1" style="font-size:90%;">MobileNetV3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S4.T2.17.11.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.14.2"><span class="ltx_text" id="S4.T2.17.11.14.2.1" style="font-size:90%;">1.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.3"><span class="ltx_text" id="S4.T2.17.11.14.3.1" style="font-size:90%;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.4"><span class="ltx_text" id="S4.T2.17.11.14.4.1" style="font-size:90%;">49.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.14.5"><span class="ltx_text" id="S4.T2.17.11.14.5.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.6"><span class="ltx_text" id="S4.T2.17.11.14.6.1" style="font-size:90%;">14.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.7"><span class="ltx_text" id="S4.T2.17.11.14.7.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.14.8"><span class="ltx_text" id="S4.T2.17.11.14.8.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.9"><span class="ltx_text" id="S4.T2.17.11.14.9.1" style="font-size:90%;">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.10"><span class="ltx_text" id="S4.T2.17.11.14.10.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.14.11"><span class="ltx_text" id="S4.T2.17.11.14.11.1" style="font-size:90%;">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.12"><span class="ltx_text" id="S4.T2.17.11.14.12.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.13"><span class="ltx_text" id="S4.T2.17.11.14.13.1" style="font-size:90%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.14.14"><span class="ltx_text" id="S4.T2.17.11.14.14.1" style="font-size:90%;">28.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.15.1">
<span class="ltx_text" id="S4.T2.17.11.15.1.1" style="font-size:90%;">FairNAS-C </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T2.17.11.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.15.2"><span class="ltx_text" id="S4.T2.17.11.15.2.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.3"><span class="ltx_text" id="S4.T2.17.11.15.3.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.4"><span class="ltx_text" id="S4.T2.17.11.15.4.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.15.5"><span class="ltx_text" id="S4.T2.17.11.15.5.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.6"><span class="ltx_text" id="S4.T2.17.11.15.6.1" style="font-size:90%;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.7"><span class="ltx_text" id="S4.T2.17.11.15.7.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.15.8"><span class="ltx_text" id="S4.T2.17.11.15.8.1" style="font-size:90%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.9"><span class="ltx_text" id="S4.T2.17.11.15.9.1" style="font-size:90%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.10"><span class="ltx_text" id="S4.T2.17.11.15.10.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.15.11"><span class="ltx_text" id="S4.T2.17.11.15.11.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.12"><span class="ltx_text" id="S4.T2.17.11.15.12.1" style="font-size:90%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.13"><span class="ltx_text" id="S4.T2.17.11.15.13.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.15.14"><span class="ltx_text" id="S4.T2.17.11.15.14.1" style="font-size:90%;">31.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.16.1">
<span class="ltx_text" id="S4.T2.17.11.16.1.1" style="font-size:90%;">EfficientViT-M4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T2.17.11.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.16.2"><span class="ltx_text" id="S4.T2.17.11.16.2.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.3"><span class="ltx_text" id="S4.T2.17.11.16.3.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.4"><span class="ltx_text" id="S4.T2.17.11.16.4.1" style="font-size:90%;">52.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.16.5"><span class="ltx_text" id="S4.T2.17.11.16.5.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.6"><span class="ltx_text" id="S4.T2.17.11.16.6.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.7"><span class="ltx_text" id="S4.T2.17.11.16.7.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.16.8"><span class="ltx_text" id="S4.T2.17.11.16.8.1" style="font-size:90%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.9"><span class="ltx_text" id="S4.T2.17.11.16.9.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.10"><span class="ltx_text" id="S4.T2.17.11.16.10.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.16.11"><span class="ltx_text" id="S4.T2.17.11.16.11.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.12"><span class="ltx_text" id="S4.T2.17.11.16.12.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.13"><span class="ltx_text" id="S4.T2.17.11.16.13.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.16.14"><span class="ltx_text" id="S4.T2.17.11.16.14.1" style="font-size:90%;">32.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.17.1">
<span class="ltx_text" id="S4.T2.17.11.17.1.1" style="font-size:90%;">StarNet-S1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T2.17.11.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.17.2"><span class="ltx_text" id="S4.T2.17.11.17.2.1" style="font-size:90%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.3"><span class="ltx_text" id="S4.T2.17.11.17.3.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.4"><span class="ltx_text" id="S4.T2.17.11.17.4.1" style="font-size:90%;">53.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.17.5"><span class="ltx_text" id="S4.T2.17.11.17.5.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.17.6.1" style="font-size:90%;">18.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.7"><span class="ltx_text" id="S4.T2.17.11.17.7.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.17.8"><span class="ltx_text" id="S4.T2.17.11.17.8.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.9"><span class="ltx_text" id="S4.T2.17.11.17.9.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.10"><span class="ltx_text" id="S4.T2.17.11.17.10.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.17.11"><span class="ltx_text" id="S4.T2.17.11.17.11.1" style="font-size:90%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.12"><span class="ltx_text" id="S4.T2.17.11.17.12.1" style="font-size:90%;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.13"><span class="ltx_text" id="S4.T2.17.11.17.13.1" style="font-size:90%;">52.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.17.14"><span class="ltx_text" id="S4.T2.17.11.17.14.1" style="font-size:90%;">33.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.18" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.18.1"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.18.2"><span class="ltx_text" id="S4.T2.17.11.18.2.1" style="font-size:90%;background-color:#EBEBEB;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.3"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.3.1" style="font-size:90%;background-color:#EBEBEB;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.4"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.4.1" style="font-size:90%;background-color:#EBEBEB;">54.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.18.5"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.5.1" style="font-size:90%;background-color:#EBEBEB;">35.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.6"><span class="ltx_text" id="S4.T2.17.11.18.6.1" style="font-size:90%;background-color:#EBEBEB;">17.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.7"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.7.1" style="font-size:90%;background-color:#EBEBEB;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.18.8"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.8.1" style="font-size:90%;background-color:#EBEBEB;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.9"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.9.1" style="font-size:90%;background-color:#EBEBEB;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.10"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.10.1" style="font-size:90%;background-color:#EBEBEB;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.18.11"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.11.1" style="font-size:90%;background-color:#EBEBEB;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.12"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.12.1" style="font-size:90%;background-color:#EBEBEB;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.13"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.13.1" style="font-size:90%;background-color:#EBEBEB;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.18.14"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.18.14.1" style="font-size:90%;background-color:#EBEBEB;">34.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.17.11.19.1">
<span class="ltx_text" id="S4.T2.17.11.19.1.1" style="font-size:90%;">ResNet18 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T2.17.11.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.19.2"><span class="ltx_text" id="S4.T2.17.11.19.2.1" style="font-size:90%;">9.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.3"><span class="ltx_text" id="S4.T2.17.11.19.3.1" style="font-size:90%;">31.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.4"><span class="ltx_text" id="S4.T2.17.11.19.4.1" style="font-size:90%;">49.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.19.5"><span class="ltx_text" id="S4.T2.17.11.19.5.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.6"><span class="ltx_text" id="S4.T2.17.11.19.6.1" style="font-size:90%;">16.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.7"><span class="ltx_text" id="S4.T2.17.11.19.7.1" style="font-size:90%;">34.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.19.8"><span class="ltx_text" id="S4.T2.17.11.19.8.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.9"><span class="ltx_text" id="S4.T2.17.11.19.9.1" style="font-size:90%;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.10"><span class="ltx_text" id="S4.T2.17.11.19.10.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.19.11"><span class="ltx_text" id="S4.T2.17.11.19.11.1" style="font-size:90%;">36.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.12"><span class="ltx_text" id="S4.T2.17.11.19.12.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.13"><span class="ltx_text" id="S4.T2.17.11.19.13.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.19.14"><span class="ltx_text" id="S4.T2.17.11.19.14.1" style="font-size:90%;">32.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.20.1">
<span class="ltx_text" id="S4.T2.17.11.20.1.1" style="font-size:90%;">DFvT-T </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T2.17.11.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.20.2"><span class="ltx_text" id="S4.T2.17.11.20.2.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.3"><span class="ltx_text" id="S4.T2.17.11.20.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.4"><span class="ltx_text" id="S4.T2.17.11.20.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.20.5"><span class="ltx_text" id="S4.T2.17.11.20.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.6"><span class="ltx_text" id="S4.T2.17.11.20.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.7"><span class="ltx_text" id="S4.T2.17.11.20.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.20.8"><span class="ltx_text" id="S4.T2.17.11.20.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.9"><span class="ltx_text" id="S4.T2.17.11.20.9.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.10"><span class="ltx_text" id="S4.T2.17.11.20.10.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.20.11"><span class="ltx_text" id="S4.T2.17.11.20.11.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.12"><span class="ltx_text" id="S4.T2.17.11.20.12.1" style="font-size:90%;">32.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.13"><span class="ltx_text" id="S4.T2.17.11.20.13.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.20.14"><span class="ltx_text" id="S4.T2.17.11.20.14.1" style="font-size:90%;">34.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.21.1">
<span class="ltx_text" id="S4.T2.17.11.21.1.1" style="font-size:90%;">EfficientViT-M5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T2.17.11.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.21.2"><span class="ltx_text" id="S4.T2.17.11.21.2.1" style="font-size:90%;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.3"><span class="ltx_text" id="S4.T2.17.11.21.3.1" style="font-size:90%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.4"><span class="ltx_text" id="S4.T2.17.11.21.4.1" style="font-size:90%;">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.21.5"><span class="ltx_text" id="S4.T2.17.11.21.5.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.6"><span class="ltx_text" id="S4.T2.17.11.21.6.1" style="font-size:90%;">18.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.7"><span class="ltx_text" id="S4.T2.17.11.21.7.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.21.8"><span class="ltx_text" id="S4.T2.17.11.21.8.1" style="font-size:90%;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.9"><span class="ltx_text" id="S4.T2.17.11.21.9.1" style="font-size:90%;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.10"><span class="ltx_text" id="S4.T2.17.11.21.10.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.21.11"><span class="ltx_text" id="S4.T2.17.11.21.11.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.12"><span class="ltx_text" id="S4.T2.17.11.21.12.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.13"><span class="ltx_text" id="S4.T2.17.11.21.13.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.21.14"><span class="ltx_text" id="S4.T2.17.11.21.14.1" style="font-size:90%;">34.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.22.1">
<span class="ltx_text" id="S4.T2.17.11.22.1.1" style="font-size:90%;">SHViT-S3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S4.T2.17.11.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.22.2"><span class="ltx_text" id="S4.T2.17.11.22.2.1" style="font-size:90%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.3"><span class="ltx_text" id="S4.T2.17.11.22.3.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.4"><span class="ltx_text" id="S4.T2.17.11.22.4.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.22.5"><span class="ltx_text" id="S4.T2.17.11.22.5.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.6"><span class="ltx_text" id="S4.T2.17.11.22.6.1" style="font-size:90%;">19.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.7"><span class="ltx_text" id="S4.T2.17.11.22.7.1" style="font-size:90%;">39.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.22.8"><span class="ltx_text" id="S4.T2.17.11.22.8.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.9"><span class="ltx_text" id="S4.T2.17.11.22.9.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.10"><span class="ltx_text" id="S4.T2.17.11.22.10.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.22.11"><span class="ltx_text" id="S4.T2.17.11.22.11.1" style="font-size:90%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.12"><span class="ltx_text" id="S4.T2.17.11.22.12.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.13"><span class="ltx_text" id="S4.T2.17.11.22.13.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.22.14"><span class="ltx_text" id="S4.T2.17.11.22.14.1" style="font-size:90%;">36.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.23" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.23.1"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.23.2"><span class="ltx_text" id="S4.T2.17.11.23.2.1" style="font-size:90%;background-color:#EBEBEB;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.3"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.3.1" style="font-size:90%;background-color:#EBEBEB;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.4"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.4.1" style="font-size:90%;background-color:#EBEBEB;">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.23.5"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.5.1" style="font-size:90%;background-color:#EBEBEB;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.6"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.6.1" style="font-size:90%;background-color:#EBEBEB;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.7"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.7.1" style="font-size:90%;background-color:#EBEBEB;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.23.8"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.8.1" style="font-size:90%;background-color:#EBEBEB;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.9"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.9.1" style="font-size:90%;background-color:#EBEBEB;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.10"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.10.1" style="font-size:90%;background-color:#EBEBEB;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.23.11"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.11.1" style="font-size:90%;background-color:#EBEBEB;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.12"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.12.1" style="font-size:90%;background-color:#EBEBEB;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.13"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.13.1" style="font-size:90%;background-color:#EBEBEB;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.23.14"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.23.14.1" style="font-size:90%;background-color:#EBEBEB;">36.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.17.11.24.1">
<span class="ltx_text" id="S4.T2.17.11.24.1.1" style="font-size:90%;">ResNet50 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T2.17.11.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.24.2"><span class="ltx_text" id="S4.T2.17.11.24.2.1" style="font-size:90%;">21.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.3"><span class="ltx_text" id="S4.T2.17.11.24.3.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.4"><span class="ltx_text" id="S4.T2.17.11.24.4.1" style="font-size:90%;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.24.5"><span class="ltx_text" id="S4.T2.17.11.24.5.1" style="font-size:90%;">38.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.6"><span class="ltx_text" id="S4.T2.17.11.24.6.1" style="font-size:90%;">19.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.7"><span class="ltx_text" id="S4.T2.17.11.24.7.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.24.8"><span class="ltx_text" id="S4.T2.17.11.24.8.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.9"><span class="ltx_text" id="S4.T2.17.11.24.9.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.10"><span class="ltx_text" id="S4.T2.17.11.24.10.1" style="font-size:90%;">58.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.17.11.24.11"><span class="ltx_text" id="S4.T2.17.11.24.11.1" style="font-size:90%;">41.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.12"><span class="ltx_text" id="S4.T2.17.11.24.12.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.13"><span class="ltx_text" id="S4.T2.17.11.24.13.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.11.24.14"><span class="ltx_text" id="S4.T2.17.11.24.14.1" style="font-size:90%;">36.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.25.1">
<span class="ltx_text" id="S4.T2.17.11.25.1.1" style="font-size:90%;">PVT-Tiny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S4.T2.17.11.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.25.2"><span class="ltx_text" id="S4.T2.17.11.25.2.1" style="font-size:90%;">11.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.3"><span class="ltx_text" id="S4.T2.17.11.25.3.1" style="font-size:90%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.4"><span class="ltx_text" id="S4.T2.17.11.25.4.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.25.5"><span class="ltx_text" id="S4.T2.17.11.25.5.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.6"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.25.6.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.7"><span class="ltx_text" id="S4.T2.17.11.25.7.1" style="font-size:90%;">38.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.25.8"><span class="ltx_text" id="S4.T2.17.11.25.8.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.9"><span class="ltx_text" id="S4.T2.17.11.25.9.1" style="font-size:90%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.10"><span class="ltx_text" id="S4.T2.17.11.25.10.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.25.11"><span class="ltx_text" id="S4.T2.17.11.25.11.1" style="font-size:90%;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.12"><span class="ltx_text" id="S4.T2.17.11.25.12.1" style="font-size:90%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.13"><span class="ltx_text" id="S4.T2.17.11.25.13.1" style="font-size:90%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.25.14"><span class="ltx_text" id="S4.T2.17.11.25.14.1" style="font-size:90%;">37.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.26.1">
<span class="ltx_text" id="S4.T2.17.11.26.1.1" style="font-size:90%;">PoolFormer-S12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.26.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S4.T2.17.11.26.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.26.2"><span class="ltx_text" id="S4.T2.17.11.26.2.1" style="font-size:90%;">9.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.3"><span class="ltx_text" id="S4.T2.17.11.26.3.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.4"><span class="ltx_text" id="S4.T2.17.11.26.4.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.26.5"><span class="ltx_text" id="S4.T2.17.11.26.5.1" style="font-size:90%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.6"><span class="ltx_text" id="S4.T2.17.11.26.6.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.7"><span class="ltx_text" id="S4.T2.17.11.26.7.1" style="font-size:90%;">39.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.26.8"><span class="ltx_text" id="S4.T2.17.11.26.8.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.9"><span class="ltx_text" id="S4.T2.17.11.26.9.1" style="font-size:90%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.10"><span class="ltx_text" id="S4.T2.17.11.26.10.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.26.11"><span class="ltx_text" id="S4.T2.17.11.26.11.1" style="font-size:90%;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.12"><span class="ltx_text" id="S4.T2.17.11.26.12.1" style="font-size:90%;">34.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.13"><span class="ltx_text" id="S4.T2.17.11.26.13.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.26.14"><span class="ltx_text" id="S4.T2.17.11.26.14.1" style="font-size:90%;">36.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.27.1">
<span class="ltx_text" id="S4.T2.17.11.27.1.1" style="font-size:90%;">FasterNet-S </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.27.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T2.17.11.27.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.27.2"><span class="ltx_text" id="S4.T2.17.11.27.2.1" style="font-size:90%;">23.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.3"><span class="ltx_text" id="S4.T2.17.11.27.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.4"><span class="ltx_text" id="S4.T2.17.11.27.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.27.5"><span class="ltx_text" id="S4.T2.17.11.27.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.6"><span class="ltx_text" id="S4.T2.17.11.27.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.7"><span class="ltx_text" id="S4.T2.17.11.27.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.27.8"><span class="ltx_text" id="S4.T2.17.11.27.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.9"><span class="ltx_text" id="S4.T2.17.11.27.9.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.10"><span class="ltx_text" id="S4.T2.17.11.27.10.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.27.11"><span class="ltx_text" id="S4.T2.17.11.27.11.1" style="font-size:90%;">43.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.12"><span class="ltx_text" id="S4.T2.17.11.27.12.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.13"><span class="ltx_text" id="S4.T2.17.11.27.13.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.27.14"><span class="ltx_text" id="S4.T2.17.11.27.14.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.28.1">
<span class="ltx_text" id="S4.T2.17.11.28.1.1" style="font-size:90%;">FastViT-SA12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.28.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S4.T2.17.11.28.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.28.2"><span class="ltx_text" id="S4.T2.17.11.28.2.1" style="font-size:90%;">7.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.3"><span class="ltx_text" id="S4.T2.17.11.28.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.4"><span class="ltx_text" id="S4.T2.17.11.28.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.28.5"><span class="ltx_text" id="S4.T2.17.11.28.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.6"><span class="ltx_text" id="S4.T2.17.11.28.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.7"><span class="ltx_text" id="S4.T2.17.11.28.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.28.8"><span class="ltx_text" id="S4.T2.17.11.28.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.9"><span class="ltx_text" id="S4.T2.17.11.28.9.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.10"><span class="ltx_text" id="S4.T2.17.11.28.10.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.28.11"><span class="ltx_text" id="S4.T2.17.11.28.11.1" style="font-size:90%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.12"><span class="ltx_text" id="S4.T2.17.11.28.12.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.13"><span class="ltx_text" id="S4.T2.17.11.28.13.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.28.14"><span class="ltx_text" id="S4.T2.17.11.28.14.1" style="font-size:90%;">38.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.11.29.1">
<span class="ltx_text" id="S4.T2.17.11.29.1.1" style="font-size:90%;">RepViT-M1.1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.17.11.29.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S4.T2.17.11.29.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.29.2"><span class="ltx_text" id="S4.T2.17.11.29.2.1" style="font-size:90%;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.3"><span class="ltx_text" id="S4.T2.17.11.29.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.4"><span class="ltx_text" id="S4.T2.17.11.29.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.29.5"><span class="ltx_text" id="S4.T2.17.11.29.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.6"><span class="ltx_text" id="S4.T2.17.11.29.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.7"><span class="ltx_text" id="S4.T2.17.11.29.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.29.8"><span class="ltx_text" id="S4.T2.17.11.29.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.9"><span class="ltx_text" id="S4.T2.17.11.29.9.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.10"><span class="ltx_text" id="S4.T2.17.11.29.10.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.11.29.11"><span class="ltx_text" id="S4.T2.17.11.29.11.1" style="font-size:90%;">43.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.12"><span class="ltx_text" id="S4.T2.17.11.29.12.1" style="font-size:90%;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.13"><span class="ltx_text" id="S4.T2.17.11.29.13.1" style="font-size:90%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.29.14"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.29.14.1" style="font-size:90%;">40.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.11.30" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.17.11.30.1"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.17.11.30.2"><span class="ltx_text" id="S4.T2.17.11.30.2.1" style="font-size:90%;background-color:#EBEBEB;">6.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.3"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.3.1" style="font-size:90%;background-color:#EBEBEB;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.4"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.4.1" style="font-size:90%;background-color:#EBEBEB;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.17.11.30.5"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.5.1" style="font-size:90%;background-color:#EBEBEB;">41.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.6"><span class="ltx_text" id="S4.T2.17.11.30.6.1" style="font-size:90%;background-color:#EBEBEB;">22.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.7"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.7.1" style="font-size:90%;background-color:#EBEBEB;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.17.11.30.8"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.8.1" style="font-size:90%;background-color:#EBEBEB;">52.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.9"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.9.1" style="font-size:90%;background-color:#EBEBEB;">40.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.10"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.10.1" style="font-size:90%;background-color:#EBEBEB;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.17.11.30.11"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.11.1" style="font-size:90%;background-color:#EBEBEB;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.12"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.12.1" style="font-size:90%;background-color:#EBEBEB;">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.13"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.13.1" style="font-size:90%;background-color:#EBEBEB;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.17.11.30.14"><span class="ltx_text ltx_font_bold" id="S4.T2.17.11.30.14.1" style="font-size:90%;background-color:#EBEBEB;">40.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance comparison of different models on the COCO dataset for object detection and instance segmentation tasks.  It shows the model's FLOPs (floating point operations), bounding box average precision (APb), and mask average precision (APm), along with variations such as AP50 and AP75.  The FLOPs are calculated following common practices in the field, using image crops of 512x512 pixels. The table helps illustrate the trade-off between computational cost (FLOPs) and detection/segmentation accuracy (APb and APm).
> <details>
> <summary>read the caption</summary>
> Table 2: Object detection and instance segmentation results on COCO. APb and APm indicate bounding box AP and mask AP, respectively. Following common convention [80], FLOPs (G) of backbone is measured on image crops of 512×\times×512.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F3.sf1.2.1">
<tr class="ltx_tr" id="S4.F3.sf1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.F3.sf1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.1.1.1" style="font-size:90%;">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F3.sf1.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.1.2.1" style="font-size:90%;">FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.sf1.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.1.3.1" style="font-size:90%;">mIoU</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.F3.sf1.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.2.1.1" style="font-size:90%;">StarNet-S1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F3.sf1.2.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.2.2.1" style="font-size:90%;">2.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.sf1.2.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.2.3.1" style="font-size:90%;">36.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.3.1.1" style="font-size:90%;">MobileNetV3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.3.2.1" style="font-size:90%;">1.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.3.3.1" style="font-size:90%;">37.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.4.1.1" style="font-size:90%;">PVTv2-B0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.4.2.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.4.3.1" style="font-size:90%;">37.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.5.1.1" style="font-size:90%;">VAN-B0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.5.2.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.5.3.1" style="font-size:90%;">38.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.6" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf1.2.1.6.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.6.2.1" style="font-size:90%;background-color:#EBEBEB;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf1.2.1.6.3.1" style="font-size:90%;background-color:#EBEBEB;">40.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.F3.sf1.2.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.7.1.1" style="font-size:90%;">EdgeViT-XXS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.F3.sf1.2.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.7.2.1" style="font-size:90%;">3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F3.sf1.2.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.7.3.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.8.1.1" style="font-size:90%;">SHViT-S3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.8.2.1" style="font-size:90%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.8.3.1" style="font-size:90%;">40.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.9.1.1" style="font-size:90%;">FastViT-SA12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.9.2.1" style="font-size:90%;">7.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.9.3.1" style="font-size:90%;">38.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf1.2.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.10.1.1" style="font-size:90%;">RepViT-M1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf1.2.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.10.2.1" style="font-size:90%;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf1.2.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.10.3.1" style="font-size:90%;">40.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf1.2.1.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.F3.sf1.2.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf1.2.1.11.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.F3.sf1.2.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf1.2.1.11.2.1" style="font-size:90%;background-color:#EBEBEB;">2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F3.sf1.2.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf1.2.1.11.3.1" style="font-size:90%;background-color:#EBEBEB;">41.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of semantic segmentation experiments performed on the ADE20K dataset.  It compares the performance of various models, including the proposed LSNet, in terms of mean Intersection over Union (mIoU).  The models' computational cost, measured in Giga Floating Point Operations (GFLOPs) for a 512x512 image crop, is also provided, allowing for a comparison of accuracy and efficiency across different architectures.  Higher mIoU indicates better segmentation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Semantic segmentation on ADE20K. Following [80], FLOPs (G) of backbone are measured on image crops of 512×\times×512.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F3.sf2.2.1">
<tr class="ltx_tr" id="S4.F3.sf2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.F3.sf2.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.1.1.1" style="font-size:90%;">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F3.sf2.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.1.2.1" style="font-size:90%;">FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.sf2.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.1.3.1" style="font-size:90%;">mIoU</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.F3.sf2.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.2.1.1" style="font-size:90%;">EFormer-L1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F3.sf2.2.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.2.2.1" style="font-size:90%;">6.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F3.sf2.2.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.2.3.1" style="font-size:90%;">38.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.3.1.1" style="font-size:90%;">PVT-Small</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.3.2.1" style="font-size:90%;">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.3.3.1" style="font-size:90%;">39.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.4.1.1" style="font-size:90%;">PoolFormer-S24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.4.2.1" style="font-size:90%;">17.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.4.3.1" style="font-size:90%;">40.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.5.1.1" style="font-size:90%;">FastViT-SA24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.5.2.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.5.3.1" style="font-size:90%;">41.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.6.1.1" style="font-size:90%;">EdgeViT-XS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.6.2.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.6.3.1" style="font-size:90%;">41.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.7.1.1" style="font-size:90%;">SwiftFormer-L1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.7.2.1" style="font-size:90%;">8.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.7.3.1" style="font-size:90%;">41.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.8.1.1" style="font-size:90%;">Swin-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.8.2.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.8.3.1" style="font-size:90%;">41.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.9.1.1" style="font-size:90%;">EFormerV2-S2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.9.2.1" style="font-size:90%;">7.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.9.3.1" style="font-size:90%;">42.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.F3.sf2.2.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.10.1.1" style="font-size:90%;">PVTv2-B1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F3.sf2.2.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.10.2.1" style="font-size:90%;">12.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.F3.sf2.2.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.10.3.1" style="font-size:90%;">42.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.sf2.2.1.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.F3.sf2.2.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf2.2.1.11.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.F3.sf2.2.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.F3.sf2.2.1.11.2.1" style="font-size:90%;background-color:#EBEBEB;">6.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F3.sf2.2.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.sf2.2.1.11.3.1" style="font-size:90%;background-color:#EBEBEB;">43.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a robustness analysis of various lightweight vision network models on four benchmark datasets: ImageNet-C, ImageNet-A, ImageNet-R, and ImageNet-Sketch.  ImageNet-C evaluates robustness to common corruptions and perturbations, ImageNet-A assesses adversarial examples, ImageNet-R tests generalization to real-world images, and ImageNet-Sketch measures performance on sketch images. For ImageNet-C, the mean corruption error (mCE) is reported (lower is better). For the other three datasets, the top-1 accuracy is shown.  The results demonstrate the models' resilience to different types of image variations and their generalization capability across various domains.
> <details>
> <summary>read the caption</summary>
> Table 4: Robustness evaluation results on benchmark datasets, where we report mCE for ImageNet-C and top-1 accuracies for ImageNet-A, ImageNet-R, and ImageNet-Sketch.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:90%;">FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:90%;">C (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1.2" style="font-size:90%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:90%;">A</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.6"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:90%;">SK</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.2.1">
<span class="ltx_text" id="S4.T4.1.1.2.1.1" style="font-size:90%;">FasterNet-T0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T4.1.1.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.2"><span class="ltx_text" id="S4.T4.1.1.2.2.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.3"><span class="ltx_text" id="S4.T4.1.1.2.3.1" style="font-size:90%;">89.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.4"><span class="ltx_text" id="S4.T4.1.1.2.4.1" style="font-size:90%;">2.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.5"><span class="ltx_text" id="S4.T4.1.1.2.5.1" style="font-size:90%;">28.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.6"><span class="ltx_text" id="S4.T4.1.1.2.6.1" style="font-size:90%;">16.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.3.1">
<span class="ltx_text" id="S4.T4.1.1.3.1.1" style="font-size:90%;">EdgeNeXt-XXS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T4.1.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2"><span class="ltx_text" id="S4.T4.1.1.3.2.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.3"><span class="ltx_text" id="S4.T4.1.1.3.3.1" style="font-size:90%;">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.4"><span class="ltx_text" id="S4.T4.1.1.3.4.1" style="font-size:90%;">3.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.5"><span class="ltx_text" id="S4.T4.1.1.3.5.1" style="font-size:90%;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.6"><span class="ltx_text" id="S4.T4.1.1.3.6.1" style="font-size:90%;">18.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.1">
<span class="ltx_text" id="S4.T4.1.1.4.1.1" style="font-size:90%;">EfficientViT-M3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T4.1.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2"><span class="ltx_text" id="S4.T4.1.1.4.2.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3"><span class="ltx_text" id="S4.T4.1.1.4.3.1" style="font-size:90%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4"><span class="ltx_text" id="S4.T4.1.1.4.4.1" style="font-size:90%;">5.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.5"><span class="ltx_text" id="S4.T4.1.1.4.5.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.6"><span class="ltx_text" id="S4.T4.1.1.4.6.1" style="font-size:90%;">23.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.5.1">
<span class="ltx_text" id="S4.T4.1.1.5.1.1" style="font-size:90%;">StarNet-S1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T4.1.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2"><span class="ltx_text" id="S4.T4.1.1.5.2.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3"><span class="ltx_text" id="S4.T4.1.1.5.3.1" style="font-size:90%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4"><span class="ltx_text" id="S4.T4.1.1.5.4.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5"><span class="ltx_text" id="S4.T4.1.1.5.5.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.6"><span class="ltx_text" id="S4.T4.1.1.5.6.1" style="font-size:90%;">21.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.2"><span class="ltx_text" id="S4.T4.1.1.6.2.1" style="font-size:90%;background-color:#EBEBEB;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.3.1" style="font-size:90%;background-color:#EBEBEB;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.4.1" style="font-size:90%;background-color:#EBEBEB;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.5.1" style="font-size:90%;background-color:#EBEBEB;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.6.1" style="font-size:90%;background-color:#EBEBEB;">25.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.7.1">
<span class="ltx_text" id="S4.T4.1.1.7.1.1" style="font-size:90%;">FastViT-T8 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S4.T4.1.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.2"><span class="ltx_text" id="S4.T4.1.1.7.2.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.3"><span class="ltx_text" id="S4.T4.1.1.7.3.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.4"><span class="ltx_text" id="S4.T4.1.1.7.4.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.5"><span class="ltx_text" id="S4.T4.1.1.7.5.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6"><span class="ltx_text" id="S4.T4.1.1.7.6.1" style="font-size:90%;">25.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.8.1">
<span class="ltx_text" id="S4.T4.1.1.8.1.1" style="font-size:90%;">PVTv2-B0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S4.T4.1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.2"><span class="ltx_text" id="S4.T4.1.1.8.2.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.3"><span class="ltx_text" id="S4.T4.1.1.8.3.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.4"><span class="ltx_text" id="S4.T4.1.1.8.4.1" style="font-size:90%;">4.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.5"><span class="ltx_text" id="S4.T4.1.1.8.5.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.6"><span class="ltx_text" id="S4.T4.1.1.8.6.1" style="font-size:90%;">21.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.9.1">
<span class="ltx_text" id="S4.T4.1.1.9.1.1" style="font-size:90%;">EdgeNeXt-XS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T4.1.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.2"><span class="ltx_text" id="S4.T4.1.1.9.2.1" style="font-size:90%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.3"><span class="ltx_text" id="S4.T4.1.1.9.3.1" style="font-size:90%;">88.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.4"><span class="ltx_text" id="S4.T4.1.1.9.4.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.5"><span class="ltx_text" id="S4.T4.1.1.9.5.1" style="font-size:90%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.6"><span class="ltx_text" id="S4.T4.1.1.9.6.1" style="font-size:90%;">22.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.10.1">
<span class="ltx_text" id="S4.T4.1.1.10.1.1" style="font-size:90%;">UniRepLKNet-A </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S4.T4.1.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.2"><span class="ltx_text" id="S4.T4.1.1.10.2.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.3"><span class="ltx_text" id="S4.T4.1.1.10.3.1" style="font-size:90%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.4"><span class="ltx_text" id="S4.T4.1.1.10.4.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.5"><span class="ltx_text" id="S4.T4.1.1.10.5.1" style="font-size:90%;">37.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.6"><span class="ltx_text" id="S4.T4.1.1.10.6.1" style="font-size:90%;">26.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.2"><span class="ltx_text" id="S4.T4.1.1.11.2.1" style="font-size:90%;background-color:#EBEBEB;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.3.1" style="font-size:90%;background-color:#EBEBEB;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.4.1" style="font-size:90%;background-color:#EBEBEB;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.5.1" style="font-size:90%;background-color:#EBEBEB;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.6.1" style="font-size:90%;background-color:#EBEBEB;">27.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.12.1">
<span class="ltx_text" id="S4.T4.1.1.12.1.1" style="font-size:90%;">PVT-Tiny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S4.T4.1.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.2"><span class="ltx_text" id="S4.T4.1.1.12.2.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.3"><span class="ltx_text" id="S4.T4.1.1.12.3.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.4"><span class="ltx_text" id="S4.T4.1.1.12.4.1" style="font-size:90%;">7.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.5"><span class="ltx_text" id="S4.T4.1.1.12.5.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.6"><span class="ltx_text" id="S4.T4.1.1.12.6.1" style="font-size:90%;">21.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.13.1">
<span class="ltx_text" id="S4.T4.1.1.13.1.1" style="font-size:90%;">PoolFormer-S12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S4.T4.1.1.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.2"><span class="ltx_text" id="S4.T4.1.1.13.2.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.3"><span class="ltx_text" id="S4.T4.1.1.13.3.1" style="font-size:90%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.4"><span class="ltx_text" id="S4.T4.1.1.13.4.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.5"><span class="ltx_text" id="S4.T4.1.1.13.5.1" style="font-size:90%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.6"><span class="ltx_text" id="S4.T4.1.1.13.6.1" style="font-size:90%;">25.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.14.1">
<span class="ltx_text" id="S4.T4.1.1.14.1.1" style="font-size:90%;">FasterNet-T2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T4.1.1.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.2"><span class="ltx_text" id="S4.T4.1.1.14.2.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.3"><span class="ltx_text" id="S4.T4.1.1.14.3.1" style="font-size:90%;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.4"><span class="ltx_text" id="S4.T4.1.1.14.4.1" style="font-size:90%;">8.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.5"><span class="ltx_text" id="S4.T4.1.1.14.5.1" style="font-size:90%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.6"><span class="ltx_text" id="S4.T4.1.1.14.6.1" style="font-size:90%;">27.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.15.1">
<span class="ltx_text" id="S4.T4.1.1.15.1.1" style="font-size:90%;">EdgeNeXt-S </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T4.1.1.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.2"><span class="ltx_text" id="S4.T4.1.1.15.2.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.3"><span class="ltx_text" id="S4.T4.1.1.15.3.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.4"><span class="ltx_text" id="S4.T4.1.1.15.4.1" style="font-size:90%;">11.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.5"><span class="ltx_text" id="S4.T4.1.1.15.5.1" style="font-size:90%;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.6"><span class="ltx_text" id="S4.T4.1.1.15.6.1" style="font-size:90%;">28.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.16">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.16.1">
<span class="ltx_text" id="S4.T4.1.1.16.1.1" style="font-size:90%;">PVTv2-B1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S4.T4.1.1.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.2"><span class="ltx_text" id="S4.T4.1.1.16.2.1" style="font-size:90%;">2.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.3"><span class="ltx_text" id="S4.T4.1.1.16.3.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.4"><span class="ltx_text" id="S4.T4.1.1.16.4.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.5"><span class="ltx_text" id="S4.T4.1.1.16.5.1" style="font-size:90%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.6"><span class="ltx_text" id="S4.T4.1.1.16.6.1" style="font-size:90%;">28.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.17">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.17.1">
<span class="ltx_text" id="S4.T4.1.1.17.1.1" style="font-size:90%;">FastViT-T12 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.1.1.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S4.T4.1.1.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.2"><span class="ltx_text" id="S4.T4.1.1.17.2.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.3"><span class="ltx_text" id="S4.T4.1.1.17.3.1" style="font-size:90%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.4"><span class="ltx_text" id="S4.T4.1.1.17.4.1" style="font-size:90%;">14.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.5"><span class="ltx_text" id="S4.T4.1.1.17.5.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.6"><span class="ltx_text" id="S4.T4.1.1.17.6.1" style="font-size:90%;">27.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.18" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.1.18.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.1.1" style="font-size:90%;background-color:#EBEBEB;">LSNet-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.18.2"><span class="ltx_text" id="S4.T4.1.1.18.2.1" style="font-size:90%;background-color:#EBEBEB;">1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.18.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.3.1" style="font-size:90%;background-color:#EBEBEB;">59.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.18.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.4.1" style="font-size:90%;background-color:#EBEBEB;">17.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.18.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.5.1" style="font-size:90%;background-color:#EBEBEB;">43.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.18.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.6.1" style="font-size:90%;background-color:#EBEBEB;">30.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of a vision model using the proposed LS convolution against the same model without LS convolution. It demonstrates the improvement in top-1 accuracy achieved by incorporating the LS convolution, highlighting its effectiveness as a token mixing method.
> <details>
> <summary>read the caption</summary>
> Table 5: Superiority of LS conv.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS4.1.fig1.1.1">
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.SS4.1.fig1.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.1.fig1.1.1.1.2">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.1.fig1.1.1.1.3">Top-1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS4.1.fig1.1.1.2.1">w/o LS conv.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.1.fig1.1.1.2.2">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.1.fig1.1.1.2.3">69.3</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.3" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left" id="S4.SS4.1.fig1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.SS4.1.fig1.1.1.3.1.1" style="background-color:#EBEBEB;">LS conv.</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.3.2"><span class="ltx_text" id="S4.SS4.1.fig1.1.1.3.2.1" style="background-color:#EBEBEB;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.SS4.1.fig1.1.1.3.3.1" style="background-color:#EBEBEB;">71.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.1.fig1.1.1.4.1">(S)W-SA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.1.fig1.1.1.4.2">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.1.fig1.1.1.4.3">70.8</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.SS4.1.fig1.1.1.5.1">SDTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.5.2">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.5.3">70.6</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.SS4.1.fig1.1.1.6.1">LSRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.6.2">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.6.3">70.5</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.SS4.1.fig1.1.1.7.1">RepMixer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.7.2">0.29</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.7.3">69.7</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.SS4.1.fig1.1.1.8.1">CGA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.8.2">0.32</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.1.fig1.1.1.8.3">70.5</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.1.fig1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS4.1.fig1.1.1.9.1">AFF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.1.fig1.1.1.9.2">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.1.fig1.1.1.9.3">69.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of different convolution operations in terms of their computational cost (FLOPs) and top-1 accuracy on ImageNet-1K.  It compares the proposed LS convolution with other state-of-the-art convolutions such as (S)W-SA, SDTA, LSRA, RepMixer, and CGA, as well as some more basic convolutions, providing a comprehensive analysis of their relative performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparing other conv.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS4.2.fig2.1.1">
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.SS4.2.fig2.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.2.fig2.1.1.1.2">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.2.fig2.1.1.1.3">Top-1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.2" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS4.2.fig2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.SS4.2.fig2.1.1.2.1.1" style="background-color:#EBEBEB;">LS conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.2.fig2.1.1.2.2"><span class="ltx_text" id="S4.SS4.2.fig2.1.1.2.2.1" style="background-color:#EBEBEB;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.2.fig2.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.SS4.2.fig2.1.1.2.3.1" style="background-color:#EBEBEB;">71.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.2.fig2.1.1.3.1">CondConv <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.2.fig2.1.1.3.2">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.2.fig2.1.1.3.3">69.8</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS4.2.fig2.1.1.4.1">DY-Conv <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.4.2">0.29</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.4.3">70.0</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.SS4.2.fig2.1.1.5.1">Involution <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.5.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.5.3">70.3</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.SS4.2.fig2.1.1.6.1">DCD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.6.2">0.29</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.6.3">69.8</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.SS4.2.fig2.1.1.7.1">CoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.7.2">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.2.fig2.1.1.7.3">71.1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.2.fig2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS4.2.fig2.1.1.8.1">ODConv <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23135v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.2.fig2.1.1.8.2">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.2.fig2.1.1.8.3">70.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the ablation study of the LS convolution, comparing the impact of removing the large-kernel perception (LKP) and the small-kernel aggregation (SKA) components. It also shows results with different kernel sizes for LKP and SKA to find the optimal settings for the LS convolution.  Results are shown in terms of FLOPs and top-1 accuracy on ImageNet.
> <details>
> <summary>read the caption</summary>
> Table 7: LKP and SKA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS4.7.5.5.5">
<tr class="ltx_tr" id="S4.SS4.7.5.5.5.6">
<td class="ltx_td ltx_border_tt" id="S4.SS4.7.5.5.5.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.7.5.5.5.6.2">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.7.5.5.5.6.3">Top-1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.7.5.5.5.7" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS4.7.5.5.5.7.1"><span class="ltx_text ltx_font_bold" id="S4.SS4.7.5.5.5.7.1.1" style="background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.7.5.5.5.7.2"><span class="ltx_text" id="S4.SS4.7.5.5.5.7.2.1" style="background-color:#EBEBEB;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.7.5.5.5.7.3"><span class="ltx_text ltx_font_bold" id="S4.SS4.7.5.5.5.7.3.1" style="background-color:#EBEBEB;">71.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.7.5.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.7.5.5.5.8.1">w/o LKP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.7.5.5.5.8.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.7.5.5.5.8.3">70.5</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.3.1.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.SS4.3.1.1.1.1.1"><math alttext="K_{L}=3" class="ltx_Math" display="inline" id="S4.SS4.3.1.1.1.1.1.m1.1"><semantics id="S4.SS4.3.1.1.1.1.1.m1.1a"><mrow id="S4.SS4.3.1.1.1.1.1.m1.1.1" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.cmml"><msub id="S4.SS4.3.1.1.1.1.1.m1.1.1.2" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2.cmml"><mi id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.2" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2.2.cmml">K</mi><mi id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.3" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2.3.cmml">L</mi></msub><mo id="S4.SS4.3.1.1.1.1.1.m1.1.1.1" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.3.1.1.1.1.1.m1.1.1.3" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.3.1.1.1.1.1.m1.1b"><apply id="S4.SS4.3.1.1.1.1.1.m1.1.1.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1"><eq id="S4.SS4.3.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.1"></eq><apply id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.1.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.2.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2.2">𝐾</ci><ci id="S4.SS4.3.1.1.1.1.1.m1.1.1.2.3.cmml" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.2.3">𝐿</ci></apply><cn id="S4.SS4.3.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.3.1.1.1.1.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.3.1.1.1.1.1.m1.1c">K_{L}=3</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.3.1.1.1.1.1.m1.1d">italic_K start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT = 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.3.1.1.1.1.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.3.1.1.1.1.3">70.9</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.4.2.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.SS4.4.2.2.2.2.1"><math alttext="K_{L}=5" class="ltx_Math" display="inline" id="S4.SS4.4.2.2.2.2.1.m1.1"><semantics id="S4.SS4.4.2.2.2.2.1.m1.1a"><mrow id="S4.SS4.4.2.2.2.2.1.m1.1.1" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.cmml"><msub id="S4.SS4.4.2.2.2.2.1.m1.1.1.2" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2.cmml"><mi id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.2" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2.2.cmml">K</mi><mi id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.3" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2.3.cmml">L</mi></msub><mo id="S4.SS4.4.2.2.2.2.1.m1.1.1.1" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.4.2.2.2.2.1.m1.1.1.3" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.4.2.2.2.2.1.m1.1b"><apply id="S4.SS4.4.2.2.2.2.1.m1.1.1.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1"><eq id="S4.SS4.4.2.2.2.2.1.m1.1.1.1.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.1"></eq><apply id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.1.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2">subscript</csymbol><ci id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.2.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2.2">𝐾</ci><ci id="S4.SS4.4.2.2.2.2.1.m1.1.1.2.3.cmml" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.2.3">𝐿</ci></apply><cn id="S4.SS4.4.2.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.4.2.2.2.2.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.4.2.2.2.2.1.m1.1c">K_{L}=5</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.4.2.2.2.2.1.m1.1d">italic_K start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT = 5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.4.2.2.2.2.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.4.2.2.2.2.3">71.2</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.5.3.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.SS4.5.3.3.3.3.1"><math alttext="K_{L}=9" class="ltx_Math" display="inline" id="S4.SS4.5.3.3.3.3.1.m1.1"><semantics id="S4.SS4.5.3.3.3.3.1.m1.1a"><mrow id="S4.SS4.5.3.3.3.3.1.m1.1.1" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.cmml"><msub id="S4.SS4.5.3.3.3.3.1.m1.1.1.2" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2.cmml"><mi id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.2" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2.2.cmml">K</mi><mi id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.3" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2.3.cmml">L</mi></msub><mo id="S4.SS4.5.3.3.3.3.1.m1.1.1.1" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.5.3.3.3.3.1.m1.1.1.3" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.3.cmml">9</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.5.3.3.3.3.1.m1.1b"><apply id="S4.SS4.5.3.3.3.3.1.m1.1.1.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1"><eq id="S4.SS4.5.3.3.3.3.1.m1.1.1.1.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.1"></eq><apply id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.1.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2">subscript</csymbol><ci id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.2.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2.2">𝐾</ci><ci id="S4.SS4.5.3.3.3.3.1.m1.1.1.2.3.cmml" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.2.3">𝐿</ci></apply><cn id="S4.SS4.5.3.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.5.3.3.3.3.1.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.5.3.3.3.3.1.m1.1c">K_{L}=9</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.5.3.3.3.3.1.m1.1d">italic_K start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT = 9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.5.3.3.3.3.2">0.32</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.5.3.3.3.3.3">71.5</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.7.5.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.7.5.5.5.9.1">w/o SKA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.7.5.5.5.9.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.7.5.5.5.9.3">70.1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.6.4.4.4.4">
<td class="ltx_td ltx_align_left" id="S4.SS4.6.4.4.4.4.1"><math alttext="K_{S}=1" class="ltx_Math" display="inline" id="S4.SS4.6.4.4.4.4.1.m1.1"><semantics id="S4.SS4.6.4.4.4.4.1.m1.1a"><mrow id="S4.SS4.6.4.4.4.4.1.m1.1.1" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.cmml"><msub id="S4.SS4.6.4.4.4.4.1.m1.1.1.2" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2.cmml"><mi id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.2" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2.2.cmml">K</mi><mi id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.3" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2.3.cmml">S</mi></msub><mo id="S4.SS4.6.4.4.4.4.1.m1.1.1.1" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.6.4.4.4.4.1.m1.1.1.3" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.6.4.4.4.4.1.m1.1b"><apply id="S4.SS4.6.4.4.4.4.1.m1.1.1.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1"><eq id="S4.SS4.6.4.4.4.4.1.m1.1.1.1.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.1"></eq><apply id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.1.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2">subscript</csymbol><ci id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.2.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2.2">𝐾</ci><ci id="S4.SS4.6.4.4.4.4.1.m1.1.1.2.3.cmml" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.2.3">𝑆</ci></apply><cn id="S4.SS4.6.4.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.6.4.4.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.6.4.4.4.4.1.m1.1c">K_{S}=1</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.6.4.4.4.4.1.m1.1d">italic_K start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT = 1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.4.4.4.4.2">0.30</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.6.4.4.4.4.3">69.6</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.7.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS4.7.5.5.5.5.1"><math alttext="K_{S}=5" class="ltx_Math" display="inline" id="S4.SS4.7.5.5.5.5.1.m1.1"><semantics id="S4.SS4.7.5.5.5.5.1.m1.1a"><mrow id="S4.SS4.7.5.5.5.5.1.m1.1.1" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.cmml"><msub id="S4.SS4.7.5.5.5.5.1.m1.1.1.2" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2.cmml"><mi id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.2" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2.2.cmml">K</mi><mi id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.3" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2.3.cmml">S</mi></msub><mo id="S4.SS4.7.5.5.5.5.1.m1.1.1.1" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.7.5.5.5.5.1.m1.1.1.3" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.7.5.5.5.5.1.m1.1b"><apply id="S4.SS4.7.5.5.5.5.1.m1.1.1.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1"><eq id="S4.SS4.7.5.5.5.5.1.m1.1.1.1.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.1"></eq><apply id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.1.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2">subscript</csymbol><ci id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.2.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2.2">𝐾</ci><ci id="S4.SS4.7.5.5.5.5.1.m1.1.1.2.3.cmml" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.2.3">𝑆</ci></apply><cn id="S4.SS4.7.5.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.7.5.5.5.5.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.7.5.5.5.5.1.m1.1c">K_{S}=5</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.7.5.5.5.5.1.m1.1d">italic_K start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT = 5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.7.5.5.5.5.2">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.7.5.5.5.5.3">71.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents an ablation study on the design choices within the LSNet model. It explores the effects of removing key components or modifying certain parameters on the model's performance, specifically on ImageNet-1K.  The table shows the impact of removing the large kernel perception (LKP), changing the channel group size (C/G), altering the small kernel size (Ks), and removing the depth-wise convolution or squeeze-and-excitation (SE) layer within the LSNet-T model. This allows researchers to understand the contribution of each component to the overall accuracy and efficiency of the LSNet architecture.
> <details>
> <summary>read the caption</summary>
> Table 8: Other designs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS4.11.9.4.4">
<tr class="ltx_tr" id="S4.SS4.11.9.4.4.5">
<td class="ltx_td ltx_border_tt" id="S4.SS4.11.9.4.4.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.11.9.4.4.5.2">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.11.9.4.4.5.3">Top-1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.11.9.4.4.6" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS4.11.9.4.4.6.1"><span class="ltx_text ltx_font_bold" id="S4.SS4.11.9.4.4.6.1.1" style="background-color:#EBEBEB;">LSNet-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.11.9.4.4.6.2"><span class="ltx_text" id="S4.SS4.11.9.4.4.6.2.1" style="background-color:#EBEBEB;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS4.11.9.4.4.6.3"><span class="ltx_text ltx_font_bold" id="S4.SS4.11.9.4.4.6.3.1" style="background-color:#EBEBEB;">71.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS4.8.6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.8.6.1.1.1.1"><math alttext="C/G=1" class="ltx_Math" display="inline" id="S4.SS4.8.6.1.1.1.1.m1.1"><semantics id="S4.SS4.8.6.1.1.1.1.m1.1a"><mrow id="S4.SS4.8.6.1.1.1.1.m1.1.1" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.cmml"><mrow id="S4.SS4.8.6.1.1.1.1.m1.1.1.2" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.cmml"><mi id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.2" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.2.cmml">C</mi><mo id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.1" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.1.cmml">/</mo><mi id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.3" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.3.cmml">G</mi></mrow><mo id="S4.SS4.8.6.1.1.1.1.m1.1.1.1" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.8.6.1.1.1.1.m1.1.1.3" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.8.6.1.1.1.1.m1.1b"><apply id="S4.SS4.8.6.1.1.1.1.m1.1.1.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1"><eq id="S4.SS4.8.6.1.1.1.1.m1.1.1.1.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.1"></eq><apply id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2"><divide id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.1.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.1"></divide><ci id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.2.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.2">𝐶</ci><ci id="S4.SS4.8.6.1.1.1.1.m1.1.1.2.3.cmml" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.2.3">𝐺</ci></apply><cn id="S4.SS4.8.6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.8.6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.8.6.1.1.1.1.m1.1c">C/G=1</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.8.6.1.1.1.1.m1.1d">italic_C / italic_G = 1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.8.6.1.1.1.2">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.8.6.1.1.1.3">71.7</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.9.7.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.SS4.9.7.2.2.2.1"><math alttext="C/G=4" class="ltx_Math" display="inline" id="S4.SS4.9.7.2.2.2.1.m1.1"><semantics id="S4.SS4.9.7.2.2.2.1.m1.1a"><mrow id="S4.SS4.9.7.2.2.2.1.m1.1.1" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.cmml"><mrow id="S4.SS4.9.7.2.2.2.1.m1.1.1.2" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.cmml"><mi id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.2" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.2.cmml">C</mi><mo id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.1" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.1.cmml">/</mo><mi id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.3" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.3.cmml">G</mi></mrow><mo id="S4.SS4.9.7.2.2.2.1.m1.1.1.1" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.9.7.2.2.2.1.m1.1.1.3" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.9.7.2.2.2.1.m1.1b"><apply id="S4.SS4.9.7.2.2.2.1.m1.1.1.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1"><eq id="S4.SS4.9.7.2.2.2.1.m1.1.1.1.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.1"></eq><apply id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2"><divide id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.1.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.1"></divide><ci id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.2.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.2">𝐶</ci><ci id="S4.SS4.9.7.2.2.2.1.m1.1.1.2.3.cmml" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.2.3">𝐺</ci></apply><cn id="S4.SS4.9.7.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.9.7.2.2.2.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.9.7.2.2.2.1.m1.1c">C/G=4</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.9.7.2.2.2.1.m1.1d">italic_C / italic_G = 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.9.7.2.2.2.2">0.33</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.9.7.2.2.2.3">71.6</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.10.8.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.SS4.10.8.3.3.3.1"><math alttext="C/G=16" class="ltx_Math" display="inline" id="S4.SS4.10.8.3.3.3.1.m1.1"><semantics id="S4.SS4.10.8.3.3.3.1.m1.1a"><mrow id="S4.SS4.10.8.3.3.3.1.m1.1.1" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.cmml"><mrow id="S4.SS4.10.8.3.3.3.1.m1.1.1.2" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.cmml"><mi id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.2" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.2.cmml">C</mi><mo id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.1" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.1.cmml">/</mo><mi id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.3" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.3.cmml">G</mi></mrow><mo id="S4.SS4.10.8.3.3.3.1.m1.1.1.1" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.10.8.3.3.3.1.m1.1.1.3" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.10.8.3.3.3.1.m1.1b"><apply id="S4.SS4.10.8.3.3.3.1.m1.1.1.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1"><eq id="S4.SS4.10.8.3.3.3.1.m1.1.1.1.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.1"></eq><apply id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2"><divide id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.1.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.1"></divide><ci id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.2.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.2">𝐶</ci><ci id="S4.SS4.10.8.3.3.3.1.m1.1.1.2.3.cmml" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.2.3">𝐺</ci></apply><cn id="S4.SS4.10.8.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.10.8.3.3.3.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.10.8.3.3.3.1.m1.1c">C/G=16</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.10.8.3.3.3.1.m1.1d">italic_C / italic_G = 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.10.8.3.3.3.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.10.8.3.3.3.3">71.3</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.11.9.4.4.4">
<td class="ltx_td ltx_align_left" id="S4.SS4.11.9.4.4.4.1"><math alttext="C/G=32" class="ltx_Math" display="inline" id="S4.SS4.11.9.4.4.4.1.m1.1"><semantics id="S4.SS4.11.9.4.4.4.1.m1.1a"><mrow id="S4.SS4.11.9.4.4.4.1.m1.1.1" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.cmml"><mrow id="S4.SS4.11.9.4.4.4.1.m1.1.1.2" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.cmml"><mi id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.2" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.2.cmml">C</mi><mo id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.1" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.1.cmml">/</mo><mi id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.3" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.3.cmml">G</mi></mrow><mo id="S4.SS4.11.9.4.4.4.1.m1.1.1.1" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.SS4.11.9.4.4.4.1.m1.1.1.3" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.SS4.11.9.4.4.4.1.m1.1b"><apply id="S4.SS4.11.9.4.4.4.1.m1.1.1.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1"><eq id="S4.SS4.11.9.4.4.4.1.m1.1.1.1.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.1"></eq><apply id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2"><divide id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.1.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.1"></divide><ci id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.2.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.2">𝐶</ci><ci id="S4.SS4.11.9.4.4.4.1.m1.1.1.2.3.cmml" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.2.3">𝐺</ci></apply><cn id="S4.SS4.11.9.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.SS4.11.9.4.4.4.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.SS4.11.9.4.4.4.1.m1.1c">C/G=32</annotation><annotation encoding="application/x-llamapun" id="S4.SS4.11.9.4.4.4.1.m1.1d">italic_C / italic_G = 32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.SS4.11.9.4.4.4.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.SS4.11.9.4.4.4.3">70.9</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.11.9.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS4.11.9.4.4.7.1">w/o DW</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.11.9.4.4.7.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS4.11.9.4.4.7.3">71.1</td>
</tr>
<tr class="ltx_tr" id="S4.SS4.11.9.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS4.11.9.4.4.8.1">w/o SE</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.11.9.4.4.8.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS4.11.9.4.4.8.3">71.3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table demonstrates the effectiveness and generalizability of the LS convolution by comparing its performance on ResNet and DeiT architectures when replacing standard 3x3 convolutions and self-attention mechanisms with LS convolutions.  The results showcase how LS convolutions improve the performance of these well-established architectures.
> <details>
> <summary>read the caption</summary>
> Table 9: Generalization ability of LS convolution on other architectures. We simply replace 3×\times×3 convolution and self-attention with LS convolution for ResNet and DeiT, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T9.4.2">
<tr class="ltx_tr" id="S4.T9.4.2.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.4.2.3.1"><span class="ltx_text" id="S4.T9.4.2.3.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.4.2.3.2"><span class="ltx_text" id="S4.T9.4.2.3.2.1" style="font-size:90%;">LS conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.4.2.3.3"><span class="ltx_text" id="S4.T9.4.2.3.3.1" style="font-size:90%;">FLOPs (G)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.4.2.3.4"><span class="ltx_text" id="S4.T9.4.2.3.4.1" style="font-size:90%;">Top-1 (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.3.1.1.2"><span class="ltx_text" id="S4.T9.3.1.1.2.1" style="font-size:90%;">ResNet50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.3.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T9.3.1.1.1.m1.1"><semantics id="S4.T9.3.1.1.1.m1.1a"><mo id="S4.T9.3.1.1.1.m1.1.1" mathsize="90%" xref="S4.T9.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T9.3.1.1.1.m1.1b"><times id="S4.T9.3.1.1.1.m1.1.1.cmml" xref="S4.T9.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T9.3.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.3.1.1.3"><span class="ltx_text" id="S4.T9.3.1.1.3.1" style="font-size:90%;">4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.3.1.1.4"><span class="ltx_text" id="S4.T9.3.1.1.4.1" style="font-size:90%;">78.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.4.2.4">
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.4.1"><span class="ltx_text" id="S4.T9.4.2.4.1.1" style="font-size:90%;">ResNet50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.4.2"><span class="ltx_text" id="S4.T9.4.2.4.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.4.3"><span class="ltx_text" id="S4.T9.4.2.4.3.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.4.4"><span class="ltx_text" id="S4.T9.4.2.4.4.1" style="font-size:90%;">80.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.4.2.2">
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.2.2"><span class="ltx_text" id="S4.T9.4.2.2.2.1" style="font-size:90%;">DeiT-T</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.2.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T9.4.2.2.1.m1.1"><semantics id="S4.T9.4.2.2.1.m1.1a"><mo id="S4.T9.4.2.2.1.m1.1.1" mathsize="90%" xref="S4.T9.4.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T9.4.2.2.1.m1.1b"><times id="S4.T9.4.2.2.1.m1.1.1.cmml" xref="S4.T9.4.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.4.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T9.4.2.2.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.2.3"><span class="ltx_text" id="S4.T9.4.2.2.3.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.2.2.4"><span class="ltx_text" id="S4.T9.4.2.2.4.1" style="font-size:90%;">72.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.4.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.4.2.5.1"><span class="ltx_text" id="S4.T9.4.2.5.1.1" style="font-size:90%;">DeiT-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.4.2.5.2"><span class="ltx_text" id="S4.T9.4.2.5.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.4.2.5.3"><span class="ltx_text" id="S4.T9.4.2.5.3.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.4.2.5.4"><span class="ltx_text" id="S4.T9.4.2.5.4.1" style="font-size:90%;">73.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 provides detailed hyperparameters and data augmentation techniques used for training LSNet models on the ImageNet-1K dataset. It includes specifications for the optimizer (AdamW), batch size, number of training epochs, learning rate schedule (cosine), initial learning rate, learning rate warm-up epochs, weight decay, and various data augmentation methods (RandAugment, random erasing, color jitter, Mixup, CutMix, gradient clipping, and label smoothing).  Each augmentation technique's parameter settings are also listed.
> <details>
> <summary>read the caption</summary>
> Table 10: Training details on ImageNet-1K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T10.4">
<tr class="ltx_tr" id="A1.T10.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.4.1.1"><span class="ltx_text" id="A1.T10.4.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.4.1.2"><span class="ltx_text" id="A1.T10.4.1.2.1" style="font-size:90%;">LSNet-T/S/B</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.4.2.1"><span class="ltx_text" id="A1.T10.4.2.1.1" style="font-size:90%;">optimizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.4.2.2"><span class="ltx_text" id="A1.T10.4.2.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.3">
<td class="ltx_td ltx_align_center" id="A1.T10.4.3.1"><span class="ltx_text" id="A1.T10.4.3.1.1" style="font-size:90%;">batch size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.3.2"><span class="ltx_text" id="A1.T10.4.3.2.1" style="font-size:90%;">2048</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.4">
<td class="ltx_td ltx_align_center" id="A1.T10.4.4.1"><span class="ltx_text" id="A1.T10.4.4.1.1" style="font-size:90%;">training epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.4.2"><span class="ltx_text" id="A1.T10.4.4.2.1" style="font-size:90%;">300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.5">
<td class="ltx_td ltx_align_center" id="A1.T10.4.5.1"><span class="ltx_text" id="A1.T10.4.5.1.1" style="font-size:90%;">LR schedule</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.5.2"><span class="ltx_text" id="A1.T10.4.5.2.1" style="font-size:90%;">cosine</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.6">
<td class="ltx_td ltx_align_center" id="A1.T10.4.6.1"><span class="ltx_text" id="A1.T10.4.6.1.1" style="font-size:90%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.6.2"><span class="ltx_text" id="A1.T10.4.6.2.1" style="font-size:90%;">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.7">
<td class="ltx_td ltx_align_center" id="A1.T10.4.7.1"><span class="ltx_text" id="A1.T10.4.7.1.1" style="font-size:90%;">warmup epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.7.2"><span class="ltx_text" id="A1.T10.4.7.2.1" style="font-size:90%;">5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.8">
<td class="ltx_td ltx_align_center" id="A1.T10.4.8.1"><span class="ltx_text" id="A1.T10.4.8.1.1" style="font-size:90%;">weight decay</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.8.2"><span class="ltx_text" id="A1.T10.4.8.2.1" style="font-size:90%;">0.025/0.025/0.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.9">
<td class="ltx_td ltx_align_center" id="A1.T10.4.9.1"><span class="ltx_text" id="A1.T10.4.9.1.1" style="font-size:90%;">augmentation</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.9.2"><span class="ltx_text" id="A1.T10.4.9.2.1" style="font-size:90%;">RandAug(9, 0.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.10">
<td class="ltx_td ltx_align_center" id="A1.T10.4.10.1"><span class="ltx_text" id="A1.T10.4.10.1.1" style="font-size:90%;">random erase</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.10.2"><span class="ltx_text" id="A1.T10.4.10.2.1" style="font-size:90%;">0.25</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.11">
<td class="ltx_td ltx_align_center" id="A1.T10.4.11.1"><span class="ltx_text" id="A1.T10.4.11.1.1" style="font-size:90%;">color jitter</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.11.2"><span class="ltx_text" id="A1.T10.4.11.2.1" style="font-size:90%;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.12">
<td class="ltx_td ltx_align_center" id="A1.T10.4.12.1"><span class="ltx_text" id="A1.T10.4.12.1.1" style="font-size:90%;">mixup</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.12.2"><span class="ltx_text" id="A1.T10.4.12.2.1" style="font-size:90%;">0.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.13">
<td class="ltx_td ltx_align_center" id="A1.T10.4.13.1"><span class="ltx_text" id="A1.T10.4.13.1.1" style="font-size:90%;">cutmix</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.13.2"><span class="ltx_text" id="A1.T10.4.13.2.1" style="font-size:90%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.14">
<td class="ltx_td ltx_align_center" id="A1.T10.4.14.1"><span class="ltx_text" id="A1.T10.4.14.1.1" style="font-size:90%;">gradient clip</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.4.14.2"><span class="ltx_text" id="A1.T10.4.14.2.1" style="font-size:90%;">0.02</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.15">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T10.4.15.1"><span class="ltx_text" id="A1.T10.4.15.1.1" style="font-size:90%;">label smooth</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T10.4.15.2"><span class="ltx_text" id="A1.T10.4.15.2.1" style="font-size:90%;">0.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 provides detailed architectural specifications for three variants of the LSNet model: LSNet-T (tiny), LSNet-S (small), and LSNet-B (base).  Each row represents a stage in the network, indicating the type of convolution (standard or LS Block), number of channels, number of blocks in that stage and the output spatial resolution.  The table helps clarify the differences in model complexity and computational cost across the different LSNet variants.
> <details>
> <summary>read the caption</summary>
> Table 11: Architectural details of LSNet variants.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23135/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23135/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}