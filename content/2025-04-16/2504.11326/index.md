---
title: "PVUW 2025 Challenge Report: Advances in Pixel-level Understanding of Complex Videos in the Wild"
summary: "PVUW 2025 challenge advances pixel-level video understanding using complex, real-world data for MOSE/MeViS tasks, pushing the boundaries of dynamic scene analysis."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Fudan University",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11326 {{< /keyword >}}
{{< keyword icon="writer" >}} Henghui Ding et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11326" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11326" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11326/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The Pixel-level Video Understanding in the Wild (PVUW) Challenge held in conjunction with CVPR, addresses the gap between **static and dynamic scene understanding** by focusing on real-world video segmentation. It aims to encourage robust algorithms that can handle diverse, time-varying visual conditions. This year’s challenge features two tracks: MOSE, which centers on complex scene video object segmentation, and MeViS, targeting motion-guided, language-based video segmentation. The new datasets are designed to better reflect real-world scenarios, offering valuable insights into complex video segmentation. 



The challenge employs state-of-the-art methodologies to offer a benchmark for evaluating models. A range of approaches were used including multi-model inference to process frames independently, **adaptive pseudo-labeling** to create comprehensive baselines and dynamic model recommendation. Top solutions leveraged models like SAM2 and TMO, fine-tuning them for complex environments.  The benchmarks and comprehensive analysis provide valuable insights and suggest future directions in complex video segmentation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PVUW 2025 tackles complex video understanding with two tracks: MOSE for complex scene video object segmentation, and MeViS for motion-guided, language-based video segmentation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The challenge introduces new, challenging datasets that mirror real-world scenarios, advancing current models and identifying performance gaps in complex environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Top solutions leverage ensemble methods, adaptive pseudo-labeling, and multi-modal large language models to enhance segmentation accuracy and robustness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
The PVUW 2025 challenge pushes video understanding by introducing real-world datasets. Benchmarking advances in MOSE/MeViS tasks and datasets fosters innovation, and multi-modal LLMs enhance accuracy, creating new research pathways in dynamic scene analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11326/extracted/6362130/figures/m1_2.jpg)

> 🔼 Figure 1 illustrates the Adaptive Pseudo-labels Guided Model Refinement Pipeline (PGMR), a key component of the BrainyBots' solution for the MOSE track.  The pipeline begins with multi-model inference, where five separate models (SAM2, TMO, Cutie, XMem, and LiVOS) independently process the video frames. Each model generates segmentation masks, tracking IDs, and confidence scores. These individual results are then fused into a comprehensive pseudo-label using a weighted voting scheme that considers both the consistency of model predictions and their associated confidence. This pseudo-label acts as a baseline for further refinement. A model recommendation mechanism dynamically selects the optimal model for each video frame, based on features extracted from the frame and the historical performance of each model. The selection is guided by the pseudo-label and aims to leverage the unique strengths of each model for optimal performance in different video content scenarios.  The resulting segmentation masks represent the final output of the PGMR pipeline.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the PGMR Framework. Inference and Pseudo-Label-Based Model Selection: Employing five models to conduct inference operations, and the model with optimal performance for different video contents is intelligently selected.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.3">
<tr class="ltx_tr" id="S2.T1.3.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S2.T1.3.3.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.3.4.1" style="font-size:80%;">Rank</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.3.3.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.3.5.1" style="font-size:80%;">Team</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1" style="padding:0.4pt 10.0pt;"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S2.T1.1.1.1.m1.1.1" mathsize="80%" xref="S2.T1.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><ci id="S2.T1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.2.2" style="padding:0.4pt 10.0pt;"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S2.T1.2.2.2.m1.1"><semantics id="S2.T1.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S2.T1.2.2.2.m1.1.1" mathsize="80%" xref="S2.T1.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.m1.1b"><ci id="S2.T1.2.2.2.m1.1.1.cmml" xref="S2.T1.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.3.3.3" style="padding:0.4pt 10.0pt;"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S2.T1.3.3.3.m1.1"><semantics id="S2.T1.3.3.3.m1.1a"><mrow id="S2.T1.3.3.3.m1.1.1" xref="S2.T1.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S2.T1.3.3.3.m1.1.1.2" mathsize="80%" xref="S2.T1.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S2.T1.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="80%" rspace="0.222em" xref="S2.T1.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S2.T1.3.3.3.m1.1.1.3" mathsize="80%" xref="S2.T1.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.m1.1b"><apply id="S2.T1.3.3.3.m1.1.1.cmml" xref="S2.T1.3.3.3.m1.1.1"><and id="S2.T1.3.3.3.m1.1.1.1.cmml" xref="S2.T1.3.3.3.m1.1.1.1"></and><ci id="S2.T1.3.3.3.m1.1.1.2.cmml" xref="S2.T1.3.3.3.m1.1.1.2">𝒥</ci><ci id="S2.T1.3.3.3.m1.1.1.3.cmml" xref="S2.T1.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.4">
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.3.4.1" style="padding:0.4pt 10.0pt;">
<span class="ltx_ERROR undefined" id="S2.T1.3.4.1.1">\faTrophy</span><span class="ltx_text" id="S2.T1.3.4.1.2" style="font-size:80%;"> 1</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.3.4.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.4.2.1" style="font-size:80%;">BrainyBots</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.4.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.4.3.1" style="font-size:80%;">83.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.4.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.4.4.1" style="font-size:80%;">90.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.4.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.4.5.1" style="font-size:80%;">87.26</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.5">
<td class="ltx_td ltx_align_right" id="S2.T1.3.5.1" style="padding:0.4pt 10.0pt;">
<span class="ltx_ERROR undefined" id="S2.T1.3.5.1.1">\faMedal</span><span class="ltx_text" id="S2.T1.3.5.1.2" style="font-size:80%;"> 2</span>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.5.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.5.2.1" style="font-size:80%;">DeepSegMa</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.5.3.1" style="font-size:80%;">82.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.5.4.1" style="font-size:80%;">90.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.5.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.5.5.1" style="font-size:80%;">86.28</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.6">
<td class="ltx_td ltx_align_right" id="S2.T1.3.6.1" style="padding:0.4pt 10.0pt;">
<span class="ltx_ERROR undefined" id="S2.T1.3.6.1.1">\faMedal</span><span class="ltx_text" id="S2.T1.3.6.1.2" style="font-size:80%;"> 3</span>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.6.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.6.2.1" style="font-size:80%;">JIO</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.6.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.6.3.1" style="font-size:80%;">80.28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.6.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.6.4.1" style="font-size:80%;">87.57</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.6.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.6.5.1" style="font-size:80%;">83.92</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.7">
<td class="ltx_td ltx_align_right" id="S2.T1.3.7.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.7.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.7.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.7.2.1" style="font-size:80%;">SCU_Leung</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.7.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.7.3.1" style="font-size:80%;">79.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.7.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.7.4.1" style="font-size:80%;">87.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.7.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.7.5.1" style="font-size:80%;">83.63</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.8">
<td class="ltx_td ltx_align_right" id="S2.T1.3.8.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.8.1.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.8.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.8.2.1" style="font-size:80%;">wulutuluman</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.8.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.8.3.1" style="font-size:80%;">79.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.8.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.8.4.1" style="font-size:80%;">87.21</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.8.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.8.5.1" style="font-size:80%;">83.55</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.9">
<td class="ltx_td ltx_align_right" id="S2.T1.3.9.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.9.1.1" style="font-size:80%;">6</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.9.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.9.2.1" style="font-size:80%;">mima</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.9.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.9.3.1" style="font-size:80%;">79.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.9.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.9.4.1" style="font-size:80%;">87.21</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.9.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.9.5.1" style="font-size:80%;">83.51</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.10">
<td class="ltx_td ltx_align_right" id="S2.T1.3.10.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.10.1.1" style="font-size:80%;">7</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.10.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.10.2.1" style="font-size:80%;">LK186******96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.10.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.10.3.1" style="font-size:80%;">79.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.10.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.10.4.1" style="font-size:80%;">87.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.10.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.10.5.1" style="font-size:80%;">83.45</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.11">
<td class="ltx_td ltx_align_right" id="S2.T1.3.11.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.11.1.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.11.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.11.2.1" style="font-size:80%;">STELATOS9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.11.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.11.3.1" style="font-size:80%;">79.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.11.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.11.4.1" style="font-size:80%;">87.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.11.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.11.5.1" style="font-size:80%;">83.41</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.12">
<td class="ltx_td ltx_align_right" id="S2.T1.3.12.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.12.1.1" style="font-size:80%;">9</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.12.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.12.2.1" style="font-size:80%;">MaxBitter</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.12.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.12.3.1" style="font-size:80%;">79.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.12.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.12.4.1" style="font-size:80%;">87.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.12.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.12.5.1" style="font-size:80%;">83.37</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.13">
<td class="ltx_td ltx_align_right" id="S2.T1.3.13.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.13.1.1" style="font-size:80%;">10</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.13.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.13.2.1" style="font-size:80%;">XiaomiYU7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.13.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.13.3.1" style="font-size:80%;">79.47</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.13.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.13.4.1" style="font-size:80%;">86.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.13.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.13.5.1" style="font-size:80%;">83.20</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.14">
<td class="ltx_td ltx_align_right" id="S2.T1.3.14.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.14.1.1" style="font-size:80%;">11</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.14.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.14.2.1" style="font-size:80%;">menghaoran</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.14.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.14.3.1" style="font-size:80%;">79.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.14.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.14.4.1" style="font-size:80%;">86.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.14.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.14.5.1" style="font-size:80%;">83.19</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.15">
<td class="ltx_td ltx_align_right" id="S2.T1.3.15.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.15.1.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.15.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.15.2.1" style="font-size:80%;">zjy05140514</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.15.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.15.3.1" style="font-size:80%;">79.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.15.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.15.4.1" style="font-size:80%;">86.85</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.15.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.15.5.1" style="font-size:80%;">83.15</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.16">
<td class="ltx_td ltx_align_right" id="S2.T1.3.16.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.16.1.1" style="font-size:80%;">13</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.16.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.16.2.1" style="font-size:80%;">keeper</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.16.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.16.3.1" style="font-size:80%;">79.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.16.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.16.4.1" style="font-size:80%;">86.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.16.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.16.5.1" style="font-size:80%;">83.15</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.17">
<td class="ltx_td ltx_align_right" id="S2.T1.3.17.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.17.1.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.17.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.17.2.1" style="font-size:80%;">zhaojinhui</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.17.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.17.3.1" style="font-size:80%;">79.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.17.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.17.4.1" style="font-size:80%;">86.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.17.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.17.5.1" style="font-size:80%;">83.14</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.18">
<td class="ltx_td ltx_align_right" id="S2.T1.3.18.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.18.1.1" style="font-size:80%;">15</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.18.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.18.2.1" style="font-size:80%;">LuxeedR7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.18.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.18.3.1" style="font-size:80%;">79.40</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.18.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.18.4.1" style="font-size:80%;">86.85</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.18.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.18.5.1" style="font-size:80%;">83.12</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.19">
<td class="ltx_td ltx_align_right" id="S2.T1.3.19.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.19.1.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.19.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.19.2.1" style="font-size:80%;">HuaweiAITOM9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.19.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.19.3.1" style="font-size:80%;">79.23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.19.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.19.4.1" style="font-size:80%;">86.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.19.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.19.5.1" style="font-size:80%;">82.91</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.20">
<td class="ltx_td ltx_align_right" id="S2.T1.3.20.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.20.1.1" style="font-size:80%;">17</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.20.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.20.2.1" style="font-size:80%;">YuLinLin</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.20.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.20.3.1" style="font-size:80%;">79.15</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.20.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.20.4.1" style="font-size:80%;">86.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.20.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.20.5.1" style="font-size:80%;">82.85</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.21">
<td class="ltx_td ltx_align_right" id="S2.T1.3.21.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.21.1.1" style="font-size:80%;">18</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.21.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.21.2.1" style="font-size:80%;">ccHub</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.21.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.21.3.1" style="font-size:80%;">78.93</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.21.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.21.4.1" style="font-size:80%;">86.68</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.21.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.21.5.1" style="font-size:80%;">82.80</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.22">
<td class="ltx_td ltx_align_right" id="S2.T1.3.22.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.22.1.1" style="font-size:80%;">19</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.3.22.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.22.2.1" style="font-size:80%;">ZhiMu</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.22.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.22.3.1" style="font-size:80%;">78.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.22.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.22.4.1" style="font-size:80%;">86.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.22.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.22.5.1" style="font-size:80%;">82.69</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.23">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.3.23.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.23.1.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.3.23.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.23.2.1" style="font-size:80%;">ppbb</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.3.23.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.23.3.1" style="font-size:80%;">78.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.3.23.4" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.23.4.1" style="font-size:80%;">86.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.3.23.5" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="S2.T1.3.23.5.1" style="font-size:80%;">82.40</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of the MOSE (Motion Expression guided Video Segmentation) track of the PVUW (Pixel-level Video Understanding in the Wild) 2025 challenge.  It shows the top 20 performing teams, ranked by their final scores.  The scores are based on a combination of metrics, J (region similarity), F (contour accuracy), and J&F (their average), reflecting the performance of the teams' video object segmentation models on the MOSE dataset. The dataset is described in Section 2.1 and focuses on complex scenarios.  This table allows for comparison of different approaches to complex video object segmentation.
> <details>
> <summary>read the caption</summary>
> Table 1: MOSE Track results and top 20 of the final rankings.
> </details>





### In-depth insights


#### Wild Video Focus
Focusing on "wild" videos signifies a shift towards **real-world complexities** in computer vision. This entails addressing challenges like **unconstrained environments**, diverse illumination, occlusions, and dynamic backgrounds, moving beyond simplified lab settings. This focus is crucial for deploying robust video understanding systems in applications like autonomous driving or surveillance. A 'Wild Video Focus' also necessitate developing algorithms robust to varying quality and formats, reflecting the diverse nature of user-generated content. It also opens opportunities for unsupervised or self-supervised learning techniques to leverage the massive amount of unannotated data available in the wild. **Ethical considerations** related to privacy and bias become paramount when dealing with real-world video data, making it important to develop methods that are fair and transparent, and to adhere to ethical data collection.

#### PGMR Framework
The Adaptive Pseudo-labels Guided Model Refinement Pipeline (**PGMR**) is presented as a way to improve video object segmentation, especially in scenarios where a single model struggles. The core idea is to use an ensemble of models, generating a set of predicted masks. These masks are then combined to create **rich pseudo-labels**, which act as a baseline for subsequent optimization. The PGMR framework involves multiple stages, including Multi-Model Inference, Pseudo-Label Fusion, and Model Recommendation. Multi-Model Inference uses independent processing and result collection. Then, it creates a comprehensive pseudo-label, which involves **consistency checks**, confidence weighting, and a voting mechanism. Finally, Model Recommendation happens to allocate tasks to the most suitable model.

#### MOSE+ Dataset
Based on the context, the "MOSE+ Dataset" appears to be an **augmented version of the original MOSE dataset**. Its creation is motivated by the need to **improve the generalization and target modeling capabilities of video segmentation models**, particularly in complex scenarios. The key strategy involves **integrating video segments from multiple public VOS datasets** (BURST, DAVIS, OVIS, and YouTubeVIS) carefully selected to match the challenging characteristics of MOSE, such as frequent occlusions, dense small objects, object reappearance, and high similarity among targets. This process involves **unifying annotations and resolution formats to ensure seamless merging with MOSE**. The resulting MOSE+ dataset aims to **enhance semantic understanding and robustness** of models, addressing the limitations of training solely on the original MOSE data. The dataset plays a crucial role in the challenge by providing a more representative and difficult training environment.

#### Sa2VA & LLMs
Based on the provided text, the integration of Sa2VA with Large Language Models (LLMs) seems to be a crucial element for advancing video understanding, particularly in tasks like Referring Video Object Segmentation (RVOS). Sa2VA leverages the power of pre-trained LLMs to encode visual and textual information, enabling it to generate context-aware segmentation masks. A key aspect is the use of a special token, '[SEG]', which acts as a bridge between the LLM and the SAM2 segmentation module. **This token encapsulates the LLM's understanding of the video content and guides SAM2 in generating accurate masks.** The architecture adopts a decoupled design, preventing direct integration of SAM2's output into the LLM, which maintains simplicity and avoids extra computation. Furthermore, the use of memory mechanisms and test-time augmentation techniques, such as Long-Interleaved Inference, helps Sa2VA capture temporal dependencies and handle variations in object appearance and scene context, thereby **enhancing the model's robustness in complex video scenarios**. Finally, the model ensembling highlights the importance of integrating diverse methods to overcome limitations of individual configurations for more robust results.

#### LII for MeViS
Based on the context, 'LII for MeViS' refers to a Long-Interleaved Inference strategy applied to the MeViS dataset within the Sa2VA framework. The core idea addresses a limitation in the naive Ref-VOS inference pipeline, which relies on the first few frames as keyframes. This can be suboptimal when the initial frames lack sufficient context for accurate reference embedding, particularly when language prompts require longer temporal reasoning. **LII aims to mitigate this by interleaving keyframes across a longer temporal window instead of consecutively selecting them from the beginning.** By sampling keyframes at fixed intervals throughout the video, both early and late contextual signals are incorporated into the reference embedding. This modification encourages the model to capture long-term dependencies and is especially beneficial when object appearance or scene context changes over time. The approach keeps the method simple and avoids over-parameterization by using the same sampling interval for all videos. **Effectively, LII serves as a test-time augmentation strategy to enhance Sa2VA's performance on MeViS by providing a more comprehensive temporal context for reference.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11326/extracted/6362130/figures/m2.png)

> 🔼 Team DeepSegMa's method for video object segmentation involves several key components: a transformer-based baseline model enhanced with a multi-task loss function; a targeted data augmentation strategy to handle real-world variations; a mask confidence control mechanism and temporal fusion for inference; and finally, the construction of a tailored training dataset, MOSE+, to improve model generalization.  The figure visually depicts the workflow, highlighting the integration of these components.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Team DeepSegMa’s method.
> </details>



![](https://arxiv.org/html/2504.11326/x1.png)

> 🔼 The figure shows the network architecture of FVOS (Fast Video Object Segmentation), which consists of three main components: model fine-tuning training, morphological post-processing, and multi-scale segmentation result fusion.  The architecture primarily uses Transformers for feature extraction and attention computation.  The process begins with fine-tuning a pre-trained model on the MOSE dataset.  Then morphological post-processing addresses gaps between adjacent objects by using dilation operations.  Finally, multi-scale segmentation results are fused to improve overall accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Network Architecture of FVOS.
> </details>



![](https://arxiv.org/html/2504.11326/extracted/6362130/figures/m3_3.png)

> 🔼 This figure demonstrates the test-time data augmentation techniques used to enhance the robustness and generalization of the model.  The original image (a) undergoes several transformations: rotation by 90° (b), 180° (c), and 270° (d); horizontal flipping (e); and multi-scale magnification (f). These augmentations help the model to better handle variations in viewpoint and scale during inference, ultimately improving its performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Test time data augmentation and multi-scale magnification operations. (a) original image. (b) clockwise by 90∘. (c) clockwise by 180∘. (d) clockwise by 270∘. (e) horizontal flipping. (f) multi-scale magnification.
> </details>



![](https://arxiv.org/html/2504.11326/x2.png)

> 🔼 Figure 5 illustrates the Sa2VA model's architecture [46], which processes input text, visual prompts, images, and videos.  First, these inputs are encoded into token embeddings.  These embeddings are then fed into a large language model (LLM). The LLM processes these tokens and generates output text tokens, which are used to create a special '[SEG]' token along with associated language outputs.  These outputs, along with image and video features from the SAM 2 encoder, are sent to the SAM 2 decoder.  Finally, the SAM 2 decoder generates the corresponding image and video masks.
> <details>
> <summary>read the caption</summary>
> Figure 5: The architecture of Sa2VA [46]. The model first encodes the input texts, visual prompts, images, and videos into token embeddings. These tokens are then processed through a large language model (LLM). The output text tokens are used to generate the “[SEG]” token and associated language outputs. The SAM 2 decoder receives the image and video features from the SAM 2 encoder, along with the “[SEG]” token, to generate corresponding image and video masks.
> </details>



![](https://arxiv.org/html/2504.11326/x3.png)

> 🔼 ReferDINO-Plus refines object segmentation in videos.  It starts by using ReferDINO to generate initial masks (Mr) and their corresponding confidence scores (Sr) for each frame given a video and its textual description. The mask with the highest score is selected and used as input to SAM2 to produce refined masks (Ms). Finally, these refined masks (Ms) and the original masks (Mr) are combined using a conditional fusion strategy to generate the final segmentation masks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Overview of ReferDINO-Plus. For each video-description pair, we input it into ReferDINO to derive the object masks Mrsubscript𝑀𝑟M_{r}italic_M start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT and the corresponding scores Srsubscript𝑆𝑟S_{r}italic_S start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT across the frames. Then, we select the mask with the highest score as the prompt for SAM2, producing refined masks Mssubscript𝑀𝑠M_{s}italic_M start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT. Finally, we fuse the two series of masks through the conditional mask fusion strategy.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11326/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11326/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}