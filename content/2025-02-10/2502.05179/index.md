---
title: "FlashVideo:Flowing Fidelity to Detail for Efficient High-Resolution Video Generation"
summary: "FlashVideo: Generate stunning high-resolution videos efficiently using a two-stage framework prioritizing fidelity and detail, achieving state-of-the-art results."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05179 {{< /keyword >}}
{{< keyword icon="writer" >}} Shilong Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05179" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05179" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05179/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-to-video (T2V) models struggle to generate high-resolution videos with high fidelity and motion, often requiring extensive computing resources.  This is primarily due to the high computational cost of 3D attention mechanisms and the need for numerous function evaluations (NFEs). Single-stage models amplify these issues when generating high-resolution outputs, demanding considerable model capacity and NFEs. This creates challenges for practical applications. 

FlashVideo tackles these issues with a novel two-stage approach. The first stage uses a large model and sufficient NFEs to prioritize prompt fidelity at a lower resolution, focusing on generating accurate content and motion. The second stage leverages flow matching between low and high resolutions to add fine details, requiring only a few NFEs. This method dramatically reduces computational costs and wait times while improving efficiency, allowing for the generation of high-quality, high-resolution videos with reduced parameters and NFEs. This significantly enhances the commercial viability of T2V technology.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FlashVideo uses a two-stage approach to balance computational cost and visual quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Flow matching efficiently generates fine details with minimal function evaluations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FlashVideo achieves state-of-the-art results with superior computational efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **FlashVideo**, a novel two-stage framework for high-resolution video generation that significantly improves efficiency while maintaining high quality.  It addresses the critical challenge of balancing computational cost and visual fidelity in text-to-video generation, a key area of current research. The **two-stage design**, **flow-matching technique**, and focus on **computational efficiency** offer valuable insights and new avenues for future research in this field.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05179/extracted/6185701/figure/teaserv3.png)

> 🔼 Figure 1 compares three different text-to-video generation approaches: a single-stage diffusion model, a vanilla cascade model, and the proposed FlashVideo model.  The single-stage model shows a dramatic increase in computation time (from 30 seconds to 2150 seconds) when increasing the output resolution from 270p to 1080p. The vanilla cascade reduces model size at high resolution but still requires a significant amount of time (571.5 seconds for 1080p), as it samples from Gaussian noise and only uses the first-stage results as a condition. In contrast, FlashVideo achieves substantial computational efficiency by using a two-stage process.  The first stage generates a low-resolution video using a large model and many function evaluations to ensure high fidelity, and then the second stage leverages flow matching to generate a high-resolution video from the low-resolution output using a smaller model and only 4 function evaluations. This process results in a significant reduction in computation time (102.3 seconds for 1080p), while still maintaining high visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comparison between FlashVideo and other text-to-video generation paradigms. (a) Single Stage DiT suffers from an explosive increase in computation cost when generating at large resolutions, rising from 30s to 2150s (circle in (d)) when increasing the resolution from 270p to 1080p. (b) Though the vanilla cascade can reduce the model size in the high resolution, its second stage still samples from Gaussian noise and only uses the first-stage results as a condition. This approach cannot effectively reduce the number of function evaluations at high resolution and still costs 571.5s (square in (d)) to generate a 1080p video. (c) In contrast, FlashVideo not only decreases the model size in the second stage but also starts sampling from the first-stage results, requiring only 4 function evaluations at high resolution while integrating a wealth of visually pleasant details, which can generate 1080P video with only 102.3s (triangle in (d)). Details on obtaining these statistics are provided in our Supplementary Materials.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.2">
<tr class="ltx_tr" id="S4.T1.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.3.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.2.1"></span> <span class="ltx_text" id="S4.T1.2.3.2.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.2.2.1">
<span class="ltx_tr" id="S4.T1.2.3.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.2.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.2.2.1.1.1.1" style="width:19.6pt;height:49.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:49.8pt;transform:translate(-15.08pt,-21.45pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.2.2.1.1.1.1.1">Total Score</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.2.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.3.1"></span> <span class="ltx_text" id="S4.T1.2.3.3.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.3.2.1">
<span class="ltx_tr" id="S4.T1.2.3.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.3.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.3.2.1.1.1.1" style="width:24.0pt;height:59.7pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:59.5pt;transform:translate(-17.75pt,-23.95pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.3.2.1.1.1.1.1">Quality Score</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.3.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.3.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.4.1"></span> <span class="ltx_text" id="S4.T1.2.3.4.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.4.2.1">
<span class="ltx_tr" id="S4.T1.2.3.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.4.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.4.2.1.1.1.1" style="width:23.8pt;height:65.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:66.4pt;transform:translate(-21.31pt,-29.54pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.4.2.1.1.1.1.1">Semantic Score</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.4.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.5.1"></span> <span class="ltx_text" id="S4.T1.2.3.5.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.5.2.1">
<span class="ltx_tr" id="S4.T1.2.3.5.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.5.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.5.2.1.1.1.1" style="width:30.3pt;height:83.5pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:84.1pt;transform:translate(-26.86pt,-35.83pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.5.2.1.1.1.1.1">subject consistency</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.5.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.6.1"></span> <span class="ltx_text" id="S4.T1.2.3.6.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.6.2.1">
<span class="ltx_tr" id="S4.T1.2.3.6.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.6.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.6.2.1.1.1.1" style="width:35.3pt;height:102pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:103.2pt;transform:translate(-33.95pt,-45.07pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.6.2.1.1.1.1.1">background consistency</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.6.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.7" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.7.1"></span> <span class="ltx_text" id="S4.T1.2.3.7.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.7.2.1">
<span class="ltx_tr" id="S4.T1.2.3.7.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.7.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.7.2.1.1.1.1" style="width:29.8pt;height:81.5pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:82.0pt;transform:translate(-26.1pt,-34.83pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.7.2.1.1.1.1.1">temporal flickering</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.7.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.8.1"></span> <span class="ltx_text" id="S4.T1.2.3.8.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.8.2.1">
<span class="ltx_tr" id="S4.T1.2.3.8.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.8.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.8.2.1.1.1.1" style="width:28.4pt;height:82.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:83.8pt;transform:translate(-27.69pt,-37.89pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.8.2.1.1.1.1.1">motion smoothness</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.8.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.9" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.9.1"></span> <span class="ltx_text" id="S4.T1.2.3.9.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.9.2.1">
<span class="ltx_tr" id="S4.T1.2.3.9.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.9.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.9.2.1.1.1.1" style="width:26.2pt;height:68.1pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:68.1pt;transform:translate(-20.94pt,-28.11pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.9.2.1.1.1.1.1">dynamic degree</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.9.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.10" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.10.1"></span> <span class="ltx_text" id="S4.T1.2.3.10.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.10.2.1">
<span class="ltx_tr" id="S4.T1.2.3.10.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.10.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.10.2.1.1.1.1" style="width:27.2pt;height:71.8pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:72.0pt;transform:translate(-22.39pt,-30pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.10.2.1.1.1.1.1">aesthetic quality</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.10.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.11" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.11.1"></span> <span class="ltx_text" id="S4.T1.2.3.11.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.11.2.1">
<span class="ltx_tr" id="S4.T1.2.3.11.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.11.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.11.2.1.1.1.1" style="width:26.2pt;height:68pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:68.1pt;transform:translate(-20.93pt,-28.1pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.11.2.1.1.1.1.1">imaging quality</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.11.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.12" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.12.1"></span> <span class="ltx_text" id="S4.T1.2.3.12.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.12.2.1">
<span class="ltx_tr" id="S4.T1.2.3.12.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.12.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.12.2.1.1.1.1" style="width:21.6pt;height:51pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:50.4pt;transform:translate(-14.38pt,-19.57pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.12.2.1.1.1.1.1">object class</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.12.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.13" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.13.1"></span> <span class="ltx_text" id="S4.T1.2.3.13.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.13.2.1">
<span class="ltx_tr" id="S4.T1.2.3.13.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.13.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.13.2.1.1.1.1" style="width:26.7pt;height:70pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:70.1pt;transform:translate(-21.67pt,-29.06pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.13.2.1.1.1.1.1">multiple objects</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.13.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.14" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.14.1"></span> <span class="ltx_text" id="S4.T1.2.3.14.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.14.2.1">
<span class="ltx_tr" id="S4.T1.2.3.14.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.14.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.14.2.1.1.1.1" style="width:22.2pt;height:59.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:59.7pt;transform:translate(-18.78pt,-26.27pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.14.2.1.1.1.1.1">human action</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.14.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.15" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.15.1"></span> <span class="ltx_text" id="S4.T1.2.3.15.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.15.2.1">
<span class="ltx_tr" id="S4.T1.2.3.15.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.15.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.15.2.1.1.1.1" style="width:12.2pt;height:22.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.1pt;transform:translate(-4.48pt,-7.64pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.15.2.1.1.1.1.1">color</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.15.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.16" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.16.1"></span> <span class="ltx_text" id="S4.T1.2.3.16.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.16.2.1">
<span class="ltx_tr" id="S4.T1.2.3.16.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.16.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.16.2.1.1.1.1" style="width:30.2pt;height:82.9pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:83.5pt;transform:translate(-26.64pt,-35.54pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.16.2.1.1.1.1.1">spatial relationship</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.16.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.17" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.17.1"></span> <span class="ltx_text" id="S4.T1.2.3.17.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.17.2.1">
<span class="ltx_tr" id="S4.T1.2.3.17.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.17.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.17.2.1.1.1.1" style="width:10.1pt;height:23.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.8pt;transform:translate(-6.38pt,-9.43pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.17.2.1.1.1.1.1">scene</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.17.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.18" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.18.1"></span> <span class="ltx_text" id="S4.T1.2.3.18.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.18.2.1">
<span class="ltx_tr" id="S4.T1.2.3.18.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.18.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.18.2.1.1.1.1" style="width:27.4pt;height:72.4pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:72.6pt;transform:translate(-22.61pt,-30.29pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.18.2.1.1.1.1.1">appearance style</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.18.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.19" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.19.1"></span> <span class="ltx_text" id="S4.T1.2.3.19.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.19.2.1">
<span class="ltx_tr" id="S4.T1.2.3.19.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.19.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.19.2.1.1.1.1" style="width:24.8pt;height:62.7pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:62.6pt;transform:translate(-18.9pt,-25.46pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.19.2.1.1.1.1.1">temporal style</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.19.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.3.20" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.2.3.20.1"></span> <span class="ltx_text" id="S4.T1.2.3.20.2">
<span class="ltx_tabular ltx_align_bottom" id="S4.T1.2.3.20.2.1">
<span class="ltx_tr" id="S4.T1.2.3.20.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.3.20.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.2.3.20.2.1.1.1.1" style="width:29.6pt;height:80.8pt;vertical-align:-0.5pt;"><span class="ltx_transformed_inner" style="width:81.3pt;transform:translate(-25.82pt,-34.47pt) rotate(-75deg) ;">
<span class="ltx_p" id="S4.T1.2.3.20.2.1.1.1.1.1">overall consistency</span>
</span></span></span></span>
</span></span><span class="ltx_text" id="S4.T1.2.3.20.3"></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.4.1" style="padding-left:1.5pt;padding-right:1.5pt;">Vchitect(VEnhancer)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.4.2" style="padding-left:1.5pt;padding-right:1.5pt;">82.24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.3" style="padding-left:1.5pt;padding-right:1.5pt;">83.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.4.4" style="padding-left:1.5pt;padding-right:1.5pt;">77.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.6" style="padding-left:1.5pt;padding-right:1.5pt;">96.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.9" style="padding-left:1.5pt;padding-right:1.5pt;">63.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.10" style="padding-left:1.5pt;padding-right:1.5pt;">60.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.11" style="padding-left:1.5pt;padding-right:1.5pt;">65.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.12" style="padding-left:1.5pt;padding-right:1.5pt;">86.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.13" style="padding-left:1.5pt;padding-right:1.5pt;">68.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.14" style="padding-left:1.5pt;padding-right:1.5pt;">97.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.15" style="padding-left:1.5pt;padding-right:1.5pt;">87.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.16" style="padding-left:1.5pt;padding-right:1.5pt;">57.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.17" style="padding-left:1.5pt;padding-right:1.5pt;">56.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.18" style="padding-left:1.5pt;padding-right:1.5pt;">23.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.4.20" style="padding-left:1.5pt;padding-right:1.5pt;">27.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.5.1" style="padding-left:1.5pt;padding-right:1.5pt;">CogVideoX-1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.5.2" style="padding-left:1.5pt;padding-right:1.5pt;">82.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.5.4" style="padding-left:1.5pt;padding-right:1.5pt;">79.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.6" style="padding-left:1.5pt;padding-right:1.5pt;">97.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.9" style="padding-left:1.5pt;padding-right:1.5pt;">50.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.10" style="padding-left:1.5pt;padding-right:1.5pt;">62.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.11" style="padding-left:1.5pt;padding-right:1.5pt;">65.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.12" style="padding-left:1.5pt;padding-right:1.5pt;">87.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.13" style="padding-left:1.5pt;padding-right:1.5pt;">69.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.14" style="padding-left:1.5pt;padding-right:1.5pt;">97.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.15" style="padding-left:1.5pt;padding-right:1.5pt;">87.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.16" style="padding-left:1.5pt;padding-right:1.5pt;">80.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.17" style="padding-left:1.5pt;padding-right:1.5pt;">52.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.18" style="padding-left:1.5pt;padding-right:1.5pt;">24.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.5.20" style="padding-left:1.5pt;padding-right:1.5pt;">27.30</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.6.1" style="padding-left:1.5pt;padding-right:1.5pt;">CogVideoX-5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.6.2" style="padding-left:1.5pt;padding-right:1.5pt;">81.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.6.4" style="padding-left:1.5pt;padding-right:1.5pt;">77.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.6" style="padding-left:1.5pt;padding-right:1.5pt;">96.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.8" style="padding-left:1.5pt;padding-right:1.5pt;">96.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.9" style="padding-left:1.5pt;padding-right:1.5pt;">70.97</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.10" style="padding-left:1.5pt;padding-right:1.5pt;">61.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.11" style="padding-left:1.5pt;padding-right:1.5pt;">62.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.12" style="padding-left:1.5pt;padding-right:1.5pt;">85.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.13" style="padding-left:1.5pt;padding-right:1.5pt;">62.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.14" style="padding-left:1.5pt;padding-right:1.5pt;">99.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.15" style="padding-left:1.5pt;padding-right:1.5pt;">82.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.16" style="padding-left:1.5pt;padding-right:1.5pt;">66.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.17" style="padding-left:1.5pt;padding-right:1.5pt;">53.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.18" style="padding-left:1.5pt;padding-right:1.5pt;">24.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.6.20" style="padding-left:1.5pt;padding-right:1.5pt;">27.59</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.7.1" style="padding-left:1.5pt;padding-right:1.5pt;">CogVideoX-2B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.7.2" style="padding-left:1.5pt;padding-right:1.5pt;">81.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.7.4" style="padding-left:1.5pt;padding-right:1.5pt;">77.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.42</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.6" style="padding-left:1.5pt;padding-right:1.5pt;">96.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.8" style="padding-left:1.5pt;padding-right:1.5pt;">97.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.9" style="padding-left:1.5pt;padding-right:1.5pt;">58.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.10" style="padding-left:1.5pt;padding-right:1.5pt;">61.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.11" style="padding-left:1.5pt;padding-right:1.5pt;">65.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.12" style="padding-left:1.5pt;padding-right:1.5pt;">87.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.13" style="padding-left:1.5pt;padding-right:1.5pt;">69.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.14" style="padding-left:1.5pt;padding-right:1.5pt;">97.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.15" style="padding-left:1.5pt;padding-right:1.5pt;">86.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.16" style="padding-left:1.5pt;padding-right:1.5pt;">54.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.17" style="padding-left:1.5pt;padding-right:1.5pt;">57.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.18" style="padding-left:1.5pt;padding-right:1.5pt;">24.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.7.20" style="padding-left:1.5pt;padding-right:1.5pt;">28.01</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.8.1" style="padding-left:1.5pt;padding-right:1.5pt;">Mochi-1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.8.2" style="padding-left:1.5pt;padding-right:1.5pt;">80.13</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.8.4" style="padding-left:1.5pt;padding-right:1.5pt;">70.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.99</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.6" style="padding-left:1.5pt;padding-right:1.5pt;">97.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.7" style="padding-left:1.5pt;padding-right:1.5pt;">99.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.8" style="padding-left:1.5pt;padding-right:1.5pt;">99.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.9" style="padding-left:1.5pt;padding-right:1.5pt;">61.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.10" style="padding-left:1.5pt;padding-right:1.5pt;">56.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.11" style="padding-left:1.5pt;padding-right:1.5pt;">60.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.12" style="padding-left:1.5pt;padding-right:1.5pt;">86.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.13" style="padding-left:1.5pt;padding-right:1.5pt;">50.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.14" style="padding-left:1.5pt;padding-right:1.5pt;">94.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.15" style="padding-left:1.5pt;padding-right:1.5pt;">79.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.16" style="padding-left:1.5pt;padding-right:1.5pt;">69.24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.17" style="padding-left:1.5pt;padding-right:1.5pt;">36.99</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.18" style="padding-left:1.5pt;padding-right:1.5pt;">20.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.19" style="padding-left:1.5pt;padding-right:1.5pt;">23.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.8.20" style="padding-left:1.5pt;padding-right:1.5pt;">25.15</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.9.1" style="padding-left:1.5pt;padding-right:1.5pt;">LTX-Video</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.9.2" style="padding-left:1.5pt;padding-right:1.5pt;">80.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.9.4" style="padding-left:1.5pt;padding-right:1.5pt;">70.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.6" style="padding-left:1.5pt;padding-right:1.5pt;">97.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.7" style="padding-left:1.5pt;padding-right:1.5pt;">99.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.9" style="padding-left:1.5pt;padding-right:1.5pt;">54.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.10" style="padding-left:1.5pt;padding-right:1.5pt;">59.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.11" style="padding-left:1.5pt;padding-right:1.5pt;">60.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.12" style="padding-left:1.5pt;padding-right:1.5pt;">83.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.13" style="padding-left:1.5pt;padding-right:1.5pt;">45.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.14" style="padding-left:1.5pt;padding-right:1.5pt;">92.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.15" style="padding-left:1.5pt;padding-right:1.5pt;">81.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.16" style="padding-left:1.5pt;padding-right:1.5pt;">65.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.17" style="padding-left:1.5pt;padding-right:1.5pt;">51.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.18" style="padding-left:1.5pt;padding-right:1.5pt;">21.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.19" style="padding-left:1.5pt;padding-right:1.5pt;">22.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.9.20" style="padding-left:1.5pt;padding-right:1.5pt;">25.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.10.1" style="padding-left:1.5pt;padding-right:1.5pt;">OpenSora-1.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.10.2" style="padding-left:1.5pt;padding-right:1.5pt;">80.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.10.4" style="padding-left:1.5pt;padding-right:1.5pt;">70.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.6" style="padding-left:1.5pt;padding-right:1.5pt;">97.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.7" style="padding-left:1.5pt;padding-right:1.5pt;">99.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.9" style="padding-left:1.5pt;padding-right:1.5pt;">54.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.10" style="padding-left:1.5pt;padding-right:1.5pt;">59.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.11" style="padding-left:1.5pt;padding-right:1.5pt;">60.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.12" style="padding-left:1.5pt;padding-right:1.5pt;">83.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.13" style="padding-left:1.5pt;padding-right:1.5pt;">45.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.14" style="padding-left:1.5pt;padding-right:1.5pt;">92.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.15" style="padding-left:1.5pt;padding-right:1.5pt;">81.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.16" style="padding-left:1.5pt;padding-right:1.5pt;">65.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.17" style="padding-left:1.5pt;padding-right:1.5pt;">51.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.18" style="padding-left:1.5pt;padding-right:1.5pt;">21.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.19" style="padding-left:1.5pt;padding-right:1.5pt;">22.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.10.20" style="padding-left:1.5pt;padding-right:1.5pt;">25.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.11.1" style="padding-left:1.5pt;padding-right:1.5pt;">OpenSoraPlan-V1.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.11.2" style="padding-left:1.5pt;padding-right:1.5pt;">78.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.3" style="padding-left:1.5pt;padding-right:1.5pt;">80.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T1.2.11.4" style="padding-left:1.5pt;padding-right:1.5pt;">66.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.5" style="padding-left:1.5pt;padding-right:1.5pt;">95.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.6" style="padding-left:1.5pt;padding-right:1.5pt;">96.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.7" style="padding-left:1.5pt;padding-right:1.5pt;">99.03</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.9" style="padding-left:1.5pt;padding-right:1.5pt;">47.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.10" style="padding-left:1.5pt;padding-right:1.5pt;">56.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.11" style="padding-left:1.5pt;padding-right:1.5pt;">62.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.12" style="padding-left:1.5pt;padding-right:1.5pt;">76.30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.13" style="padding-left:1.5pt;padding-right:1.5pt;">40.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.14" style="padding-left:1.5pt;padding-right:1.5pt;">86.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.15" style="padding-left:1.5pt;padding-right:1.5pt;">89.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.16" style="padding-left:1.5pt;padding-right:1.5pt;">53.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.17" style="padding-left:1.5pt;padding-right:1.5pt;">27.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.18" style="padding-left:1.5pt;padding-right:1.5pt;">22.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.19" style="padding-left:1.5pt;padding-right:1.5pt;">23.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.11.20" style="padding-left:1.5pt;padding-right:1.5pt;">26.52</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">FlashVideo<math alttext="{}_{\scalebox{0.75}{$\scriptscriptstyle 8fps$}}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><msub id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.m1.1.1a" xref="S4.T1.1.1.1.m1.1.1.cmml"></mi><mpadded depth="0.5pt" height="1.8pt" id="S4.T1.1.1.1.m1.1.1.1" width="5.4pt" xref="S4.T1.1.1.1.m1.1.1.1.cmml"><mn id="S4.T1.1.1.1.m1.1.1.1.3" mathsize="50%" xref="S4.T1.1.1.1.m1.1.1.1.3.cmml">8</mn><mo id="S4.T1.1.1.1.m1.1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.1.1.1.m1.1.1.1.4" mathsize="50%" xref="S4.T1.1.1.1.m1.1.1.1.4.cmml">f</mi><mo id="S4.T1.1.1.1.m1.1.1.1.2a" xref="S4.T1.1.1.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.1.1.1.m1.1.1.1.5" mathsize="50%" xref="S4.T1.1.1.1.m1.1.1.1.5.cmml">p</mi><mo id="S4.T1.1.1.1.m1.1.1.1.2b" xref="S4.T1.1.1.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.1.1.1.m1.1.1.1.6" mathsize="50%" xref="S4.T1.1.1.1.m1.1.1.1.6.cmml">s</mi></mpadded></msub><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><apply id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1"><times id="S4.T1.1.1.1.m1.1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.1.2"></times><cn id="S4.T1.1.1.1.m1.1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.m1.1.1.1.3">8</cn><ci id="S4.T1.1.1.1.m1.1.1.1.4.cmml" xref="S4.T1.1.1.1.m1.1.1.1.4">𝑓</ci><ci id="S4.T1.1.1.1.m1.1.1.1.5.cmml" xref="S4.T1.1.1.1.m1.1.1.1.5">𝑝</ci><ci id="S4.T1.1.1.1.m1.1.1.1.6.cmml" xref="S4.T1.1.1.1.m1.1.1.1.6">𝑠</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">{}_{\scalebox{0.75}{$\scriptscriptstyle 8fps$}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">start_FLOATSUBSCRIPT 8 italic_f italic_p italic_s end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;">82.49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">82.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">82.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">96.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.6" style="padding-left:1.5pt;padding-right:1.5pt;">96.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.8" style="padding-left:1.5pt;padding-right:1.5pt;">97.01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.9" style="padding-left:1.5pt;padding-right:1.5pt;">59.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.10" style="padding-left:1.5pt;padding-right:1.5pt;">62.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.11" style="padding-left:1.5pt;padding-right:1.5pt;">66.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.12" style="padding-left:1.5pt;padding-right:1.5pt;">89.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.13" style="padding-left:1.5pt;padding-right:1.5pt;">80.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.14" style="padding-left:1.5pt;padding-right:1.5pt;">99.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.15" style="padding-left:1.5pt;padding-right:1.5pt;">85.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.16" style="padding-left:1.5pt;padding-right:1.5pt;">83.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.17" style="padding-left:1.5pt;padding-right:1.5pt;">57.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.18" style="padding-left:1.5pt;padding-right:1.5pt;">24.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.1.20" style="padding-left:1.5pt;padding-right:1.5pt;">27.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">FlashVideo<math alttext="{}_{\scalebox{0.75}{$\scriptscriptstyle 24fps$}}" class="ltx_Math" display="inline" id="S4.T1.2.2.1.m1.1"><semantics id="S4.T1.2.2.1.m1.1a"><msub id="S4.T1.2.2.1.m1.1.1" xref="S4.T1.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.1.m1.1.1a" xref="S4.T1.2.2.1.m1.1.1.cmml"></mi><mpadded depth="0.5pt" height="1.8pt" id="S4.T1.2.2.1.m1.1.1.1" width="6.7pt" xref="S4.T1.2.2.1.m1.1.1.1.cmml"><mn id="S4.T1.2.2.1.m1.1.1.1.3" mathsize="50%" xref="S4.T1.2.2.1.m1.1.1.1.3.cmml">24</mn><mo id="S4.T1.2.2.1.m1.1.1.1.2" xref="S4.T1.2.2.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.2.2.1.m1.1.1.1.4" mathsize="50%" xref="S4.T1.2.2.1.m1.1.1.1.4.cmml">f</mi><mo id="S4.T1.2.2.1.m1.1.1.1.2a" xref="S4.T1.2.2.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.2.2.1.m1.1.1.1.5" mathsize="50%" xref="S4.T1.2.2.1.m1.1.1.1.5.cmml">p</mi><mo id="S4.T1.2.2.1.m1.1.1.1.2b" xref="S4.T1.2.2.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S4.T1.2.2.1.m1.1.1.1.6" mathsize="50%" xref="S4.T1.2.2.1.m1.1.1.1.6.cmml">s</mi></mpadded></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.1.m1.1b"><apply id="S4.T1.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.1.m1.1.1"><apply id="S4.T1.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.1.m1.1.1.1"><times id="S4.T1.2.2.1.m1.1.1.1.2.cmml" xref="S4.T1.2.2.1.m1.1.1.1.2"></times><cn id="S4.T1.2.2.1.m1.1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.1.m1.1.1.1.3">24</cn><ci id="S4.T1.2.2.1.m1.1.1.1.4.cmml" xref="S4.T1.2.2.1.m1.1.1.1.4">𝑓</ci><ci id="S4.T1.2.2.1.m1.1.1.1.5.cmml" xref="S4.T1.2.2.1.m1.1.1.1.5">𝑝</ci><ci id="S4.T1.2.2.1.m1.1.1.1.6.cmml" xref="S4.T1.2.2.1.m1.1.1.1.6">𝑠</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.1.m1.1c">{}_{\scalebox{0.75}{$\scriptscriptstyle 24fps$}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.1.m1.1d">start_FLOATSUBSCRIPT 24 italic_f italic_p italic_s end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;">82.99</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.3" style="padding-left:1.5pt;padding-right:1.5pt;">83.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.2.4" style="padding-left:1.5pt;padding-right:1.5pt;">81.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.5" style="padding-left:1.5pt;padding-right:1.5pt;">97.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.6" style="padding-left:1.5pt;padding-right:1.5pt;">97.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.7" style="padding-left:1.5pt;padding-right:1.5pt;">98.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.8" style="padding-left:1.5pt;padding-right:1.5pt;">98.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.9" style="padding-left:1.5pt;padding-right:1.5pt;">56.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.10" style="padding-left:1.5pt;padding-right:1.5pt;">62.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.11" style="padding-left:1.5pt;padding-right:1.5pt;">65.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.12" style="padding-left:1.5pt;padding-right:1.5pt;">88.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.13" style="padding-left:1.5pt;padding-right:1.5pt;">78.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.14" style="padding-left:1.5pt;padding-right:1.5pt;">99.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.15" style="padding-left:1.5pt;padding-right:1.5pt;">84.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.16" style="padding-left:1.5pt;padding-right:1.5pt;">82.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.17" style="padding-left:1.5pt;padding-right:1.5pt;">57.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.18" style="padding-left:1.5pt;padding-right:1.5pt;">24.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.19" style="padding-left:1.5pt;padding-right:1.5pt;">25.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.2.2.20" style="padding-left:1.5pt;padding-right:1.5pt;">27.59</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of FlashVideo against several state-of-the-art open-source text-to-video generation models using the VBench-Long benchmark.  The benchmark assesses video quality across various aspects, including semantic meaning, aesthetic appeal, and technical aspects like temporal consistency.  Models compared include Vchitect-2.0 (with VEnhancer), multiple versions of CogVideoX, Mochi-1, LTX-Video, OpenSora, and OpenSoraPlan. The table highlights FlashVideo's superior performance in achieving high semantic fidelity and overall quality, achieved through its unique two-stage cascade approach.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with state-of-the-art open-source models on VBench-Long benchmark [Huang et al. 2024]. This includes the recent Vchitect-2.0 incorporated with VEnhancer [He et al. 2024], varying versions of CogVideoX [Yang et al. 2024], Mochi-1 [Team 2024a], LTX-Video [HaCohen et al. 2024], OpenSora [Zheng et al. 2024b] and OpenSoraPlan [Lin et al. 2024a]. FlashVideo employs a cascade paradigm to deliver top-tier semantic fidelity and quality.
> </details>





### In-depth insights


#### Two-Stage DiT
A two-stage Diffusion Transformer (DiT) approach for video generation offers a compelling strategy to balance high-resolution quality with computational efficiency.  The core idea is to decouple the generation process. The first stage prioritizes prompt fidelity using a large model at lower resolution, focusing on accurate content and motion representation. This stage leverages a substantial number of function evaluations (NFEs) to capture semantic details efficiently. In the second stage, a smaller model refines the low-resolution output to achieve higher resolution, focusing on detail enhancement via techniques like flow matching. This two-stage approach reduces computational demands significantly by shifting the bulk of NFEs to the less computationally intensive low-resolution stage.  **By strategically allocating model resources and NFEs across the two stages, this method efficiently generates high-quality videos, overcoming challenges associated with high-resolution, single-stage DiTs.**  Furthermore, the two-stage design allows for an early preview of the video before committing to full-resolution generation, reducing wait times and providing better user control. The effectiveness of this approach hinges on careful selection of models, resolutions, and optimization strategies for each stage.  **This architecture showcases an important tradeoff between computational cost and fidelity.** The two-stage approach highlights a practical pathway towards more commercially viable and responsive high-resolution video generation systems.

#### Flow Matching
The concept of 'flow matching' in the context of high-resolution video generation is a crucial innovation.  It cleverly addresses the computational challenges of traditional methods by **avoiding redundant sampling from Gaussian noise** in the high-resolution stage. Instead, it leverages the low-resolution output as a starting point, effectively using it to guide the generation of higher-resolution details through a flow-matching process. This technique minimizes the number of function evaluations needed, resulting in **significant computational savings** while simultaneously ensuring a smooth transition between low and high resolutions.  The core idea is to find a mapping (a 'flow') from the low-resolution latent space to the high-resolution space, directly guiding the generation process rather than starting from scratch.  This approach likely relies on techniques that efficiently learn and represent this flow, possibly involving neural networks trained to predict or optimize the trajectory in the latent space, allowing for a smooth and accurate enhancement of video quality. **The straight ODE trajectories** further enhance efficiency by simplifying the optimization process.  Ultimately, flow matching proves to be a powerful tool to balance fidelity and efficiency in high-resolution video generation, making it a promising avenue for future research in computationally expensive generative models.

#### High-Res Video
Generating high-resolution videos presents significant challenges in text-to-video (T2V) models.  **Computational costs explode** as resolution increases due to the complexity of 3D attention mechanisms and the need for numerous function evaluations.  Many existing single-stage models struggle with this tradeoff between fidelity and efficiency, often requiring extensive processing power and time.  Two-stage approaches offer a potential solution by separating the generation into low-resolution fidelity and high-resolution detail stages.  This allows for more efficient use of model capacity and computation. **Flow matching** is a technique that can further enhance efficiency by directly traversing from low-resolution outputs to high-resolution ones, minimizing the need for additional steps.  However, **carefully designed training data** is crucial, employing techniques like latent and pixel degradation to adequately balance the tradeoff between fine details and preserving the integrity of the source video.  Furthermore, **human preference alignment** in the final stages is important for achieving visually appealing and desirable results. The successful integration of these techniques results in high-quality high-resolution video generation with superior computational efficiency compared to single-stage approaches.

#### Computational Efficiency
The research paper emphasizes **computational efficiency** as a critical factor in high-resolution video generation.  Traditional single-stage diffusion models suffer from excessively high computational costs, especially when generating high-resolution outputs. The proposed two-stage framework, FlashVideo, directly addresses this issue by strategically allocating computational resources across stages. The first stage prioritizes prompt fidelity by generating a low-resolution video using a larger model but fewer function evaluations.  The second stage leverages flow matching to efficiently enhance visual quality at high resolution with minimal computational overhead. This two-stage approach is shown to significantly reduce computational costs and generation times compared to existing methods, making high-resolution video generation more commercially viable. **Flow matching** is key to the efficiency gains of Stage II.  The design choices, including model sizing and the number of function evaluations, are carefully considered to achieve an optimal balance between speed and quality.  **Careful training strategies**, like coarse-to-fine training and human preference alignment, further contribute to the efficiency and efficacy of the model.

#### Future Directions
Future research should prioritize **improving efficiency** for longer videos and higher resolutions.  Addressing the computational demands of 3D attention mechanisms is crucial, perhaps through exploring more efficient attention strategies like sparse attention or windowed attention.  **Improving robustness** to fast motion and varied video lengths is also critical.  This may involve data augmentation techniques focused on these challenging scenarios or architectural innovations that better handle temporal dynamics.  Further exploration of **latent degradation techniques** and their optimal settings for different video qualities and characteristics is needed.  Finally, investigating the potential of **FlashVideo as a general enhancement model**—extending beyond its current two-stage design to accommodate varied resolutions and frame counts—is a significant area for future work.  This could involve refining the latent matching process for superior adaptability and scaling up the model capacity to handle more complex videos.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05179/extracted/6185701/figure/methodv3.png)

> 🔼 FlashVideo uses a two-stage approach. Stage I uses a large 5-billion parameter model at low resolution (270p) with many function evaluations (NFEs) to prioritize accuracy and high fidelity.  Stage II employs a smaller 2-billion parameter model at high resolution (1080p) to refine details using a flow matching technique that requires only a few NFEs.  Both stages utilize 3D RoPE for efficient spatiotemporal modeling.  The training data for Stage I consists of random Gaussian noise and low-resolution video latents, while Stage II's training data is created by degrading high-quality videos to obtain low-quality latents that are then paired with their high-quality counterparts. During inference, Stage I generates a low-resolution video (with 50 NFEs), which is then upscaled and further processed by Stage II (with 4 NFEs) to produce the final high-resolution video.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The overall pipeline of FlashVideo. FlashVideo adopts a cascade paradigm comprised of a 5-billion-parameter DiT at the low resolution (i.e., Stage \Romannum1) and a 2-billion-parameter DiT at a higher resolution (i.e., Stage \Romannum2). The 3D RoPE is employed at both stages to model the global and relative spatiotemporal distances efficiently. We construct training data pairs for Stage \Romannum1 by randomly sampling Gaussian noise and low-resolution video latent. For Stage \Romannum2, we apply both pixel and latent degradation to high-quality videos to obtain low-quality latent values. These are then paired with high-quality latents to serve as training data. During inference, we retain a sufficient N⁢F⁢E=50𝑁𝐹𝐸50NFE=50italic_N italic_F italic_E = 50 at a low resolution of 270p for Stage \Romannum1. The generated videos retains high fidelity and seamless motion, albeit with detail loss. These videos are then upscaled to a higher resolution of 1080p and processed by latent degradation. With only 4 steps, our Stage \Romannum2 regenerates accurate structures and rich high-frequency details.
> </details>



![](https://arxiv.org/html/2502.05179/x1.png)

> 🔼 This figure demonstrates the impact of different data augmentation techniques on the quality of video generation.  The input video is generated by the first stage of the FlashVideo model and is relatively low resolution.  The image shows three versions of the same video:   1. **Input:** The original output of the first-stage model, showing the basic scene and motion but lacking fine details. 2. **DEGpixel:** The result after applying only pixel-space degradation to the input video. This enhances the high-frequency details, resulting in a sharper video. 3. **DEGpixel & DEGlatent:** The result after applying both pixel-space and latent-space degradation techniques to the input. This further improves the fine details (e.g., small tree branches), demonstrating the added benefit of the latent degradation approach.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visual showcase of D⁢E⁢Gp⁢i⁢x⁢e⁢l𝐷𝐸subscript𝐺𝑝𝑖𝑥𝑒𝑙DEG_{pixel}italic_D italic_E italic_G start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT and D⁢E⁢Gl⁢a⁢t⁢e⁢n⁢t𝐷𝐸subscript𝐺𝑙𝑎𝑡𝑒𝑛𝑡DEG_{latent}italic_D italic_E italic_G start_POSTSUBSCRIPT italic_l italic_a italic_t italic_e italic_n italic_t end_POSTSUBSCRIPT impact on quality enhancement. From left to right, the first is the i⁢n⁢p⁢u⁢t𝑖𝑛𝑝𝑢𝑡inputitalic_i italic_n italic_p italic_u italic_t, generated by the first-stage model. The term D⁢E⁢Gp⁢i⁢x⁢e⁢l𝐷𝐸subscript𝐺𝑝𝑖𝑥𝑒𝑙DEG_{pixel}italic_D italic_E italic_G start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT stands for the improved result yielded from the model trained only with pixel-space degradation, which adds high-frequency details to the i⁢n⁢p⁢u⁢t𝑖𝑛𝑝𝑢𝑡inputitalic_i italic_n italic_p italic_u italic_t. Further, D⁢E⁢Gp⁢i⁢x⁢e⁢l𝐷𝐸subscript𝐺𝑝𝑖𝑥𝑒𝑙DEG_{pixel}italic_D italic_E italic_G start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT & D⁢E⁢Gl⁢a⁢t⁢e⁢n⁢t𝐷𝐸subscript𝐺𝑙𝑎𝑡𝑒𝑛𝑡DEG_{latent}italic_D italic_E italic_G start_POSTSUBSCRIPT italic_l italic_a italic_t italic_e italic_n italic_t end_POSTSUBSCRIPT refers to the enhanced result with model trained under both types of degradation, which further improves small structures, such as generating branches for small trees. The improvement is significantly apparent when compared to pixel degradation only.
> </details>



![](https://arxiv.org/html/2502.05179/x2.png)

> 🔼 This figure showcases the two-stage video generation process of the FlashVideo model.  The top row displays the output from Stage 1, which prioritizes accurate representation of the text prompt (shown in bold). While the videos exhibit natural motion and good overall fidelity, they lack fine details in smaller objects and high-frequency textures (highlighted by a red box). The bottom row shows the output from Stage 2, which refines the Stage 1 output. This stage significantly enhances the visual details (highlighted by a green box) while ensuring high consistency with the initial, prompt-focused output. Note that these are compressed visualizations; higher-resolution versions are available on the project's GitHub page.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generated videos of FlashVideo. The results in the top and bottom rows are from Stage \Romannum1 and Stage \Romannum2, respectively. Stage \Romannum1 generates videos with natural motion and high prompt fidelity, as evident from the visual elements (bold in prompts). However, they lack detailed structures for small objects and high-frequency textures (see the red box). In Stage \Romannum2, details are significantly enriched (see the green box), while content remains highly consistent with the original. Visualization results are compressed. More uncompressed cases can be found on our project page.
> </details>



![](https://arxiv.org/html/2502.05179/x3.png)

> 🔼 Figure 5 presents a visual comparison showcasing the improvements achieved by Stage II of the FlashVideo model.  The left column displays the outputs of Stage I, highlighting areas with artifacts and missing details using red boxes. The right column shows the corresponding results after processing with Stage II, where enhanced regions are marked with green boxes. Specifically, the figure demonstrates improved visual quality through several examples: (a) enhanced detail and clarity in oil-painted sunflowers, (b) refined wrinkles and hair, (c) and (d) richer textures in animals and plants, and (e) correction of facial and object artifacts.  The comparison visually emphasizes the enhancement in fine details and overall visual quality resulting from the two-stage process.
> <details>
> <summary>read the caption</summary>
> Figure 5: Quality improvements in Stage \Romannum2 . We mark regions with artifacts and lacking detail in the first-stage videos using red boxes, while improvements from the second stage are highlighted in green. Zoom in for a better view. Our Stage \Romannum2 significantly elevates visual quality across diverse content—enhancing oil painting–style sunflowers in (a), refining wrinkles and hair in (b), enriching texture structures of animals and plants in (c) and (d), and mitigating facial and object artifacts in (e).
> </details>



![](https://arxiv.org/html/2502.05179/x4.png)

> 🔼 Figure 6 shows a comparison of FlashVideo's high-resolution video generation results with those of four other state-of-the-art video enhancement methods.  The comparison uses the low-resolution output from FlashVideo's first stage as input to each of the other methods to highlight the relative performance gains of FlashVideo's two-stage approach.  The figure visually demonstrates the enhanced detail and overall visual quality achieved by FlashVideo compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visual comparison with various video enhancement methods. We present our results alongside enhanced versions, derived from the first-stage outputs, of four video enhancement methods.
> </details>



![](https://arxiv.org/html/2502.05179/x5.png)

> 🔼 This figure compares the long-range detail consistency of two different video generation models in videos containing significant motion and substantial scale variation. Three key frames are extracted from a video generated by the first stage of the FlashVideo model, showcasing a girl whose size changes considerably from distant to close-up views.  The comparison highlights that VEnhancer, using a spatial-temporal module and time slicing, struggles to maintain consistent facial identity and detail over these changes. In contrast, the FlashVideo model, which leverages 3D full attention, successfully preserves facial identity and texture details throughout.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of long-range detail consistency in large-motion videos. We select a first-stage generated video with significant motion and sample three key frames. The girl in this video undergoes substantial scale variation from distant to close-up views. VEhancer He et al. [2024], with spatial-temporal module and time slicing, fails to preserve identity and detail consistency. In contrast, FlashVideo leverages 3D full attention to maintain consistent facial identity and texture details.
> </details>



![](https://arxiv.org/html/2502.05179/x6.png)

> 🔼 This figure compares the performance of two different positional encoding methods, absolute sinusoidal positional embedding and Rotary Position Embedding (RoPE), in handling resolution extrapolation in a diffusion model for video generation.  Both methods perform well within the training resolution.  However, when the model is asked to generate videos at resolutions beyond those it was trained on, absolute sinusoidal positional embedding produces noticeable artifacts, while RoPE maintains the quality of detail enhancement. This demonstrates RoPE's robustness in handling unseen resolutions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Results of resolution extrapolation using absolute sinusoidal and RoPE position embeddings. Both settings perform well at the training resolution. However, while RoPE preserves detail enhancement at higher resolutions, absolute position embedding introduces noticeable artifacts beyond the training range.
> </details>



![](https://arxiv.org/html/2502.05179/extracted/6185701/figure/cfg_step.png)

> 🔼 This table presents the results of the FlashVideo model when varying the number of function evaluations (NFEs).  The NFEs represent the number of iterative denoising steps in the diffusion model.  The table shows how different numbers of NFEs impact the quality of the generated videos, measured using various metrics such as MUSIQ, MANIQA, CLIPIQA, and NIQE. The gray highlighted range indicates the recommended number of NFEs for optimal video quality and computational efficiency.  The results show a balance between improving video quality and keeping the computation cost reasonable, since very high NFEs lead to high quality but are computationally expensive.
> <details>
> <summary>read the caption</summary>
> Table 8: Results of FlashVideo under different numbers of function evaluations (NFEs). The recommended range is highlighted in gray.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.6">
<tr class="ltx_tr" id="S4.T2.6.7">
<td class="ltx_td ltx_border_tt" id="S4.T2.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T2.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.3.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.6.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.4.1">Video Quality</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td" id="S4.T2.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;">#NFE / Time</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">Stage <span class="ltx_ERROR undefined" id="S4.T2.6.8.1.1">\Romannum</span>1  (270p)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">50 / 30.1s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">24.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.232</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.336</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">11.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">7.693</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.8.8" style="padding-left:5.0pt;padding-right:5.0pt;">96.81</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">Stage <span class="ltx_ERROR undefined" id="S4.T2.6.9.1.1">\Romannum</span>2 (1080p)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">4 / 72.2s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.3.1">54.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.4.1">0.312</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.5.1">0.438</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.6.1">5.363</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.7.1">11.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.9.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.9.8.1">98.29</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the video quality generated by FlashVideo's two-stage approach using the VBench-Long benchmark.  It contrasts the quality metrics (MUSIQ, MANIQA, CLIPIQA, NIQE, Technical, Aesthetic) of the low-resolution outputs from Stage I against the high-resolution outputs from Stage II.  The results show the improvements achieved in video quality in the second stage while also highlighting the difference in computational cost (number of function evaluations (NFEs) and time taken) between stages.  Bold values indicate the best performance in each metric.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of frame quality and video quality between two stages with Vbench-Long prompts.The best results are emphasized in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.6">
<tr class="ltx_tr" id="S4.T3.6.7">
<td class="ltx_td ltx_border_tt" id="S4.T3.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T3.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.3.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.6.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.4.1">Video Quality</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td" id="S4.T3.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;">#NFE / Time</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">RealbasicVSR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">1 / 71.5s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.8.3.1">54.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.272</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.8.5.1">0.418</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.8.6.1">5.281</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">10.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.8.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.8.1">99.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9">
<td class="ltx_td ltx_align_left" id="S4.T3.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">Upscale-A-Video</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">30 / 376.6s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">23.67</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.201</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.285</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;">12.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;">7.690</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.8" style="padding-left:5.0pt;padding-right:5.0pt;">97.61</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10">
<td class="ltx_td ltx_align_left" id="S4.T3.6.10.1" style="padding-left:5.0pt;padding-right:5.0pt;">VEnhancer</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">30 / 549.2s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">51.69</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.10.4.1">0.280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.385</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.6" style="padding-left:5.0pt;padding-right:5.0pt;">5.330</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.10.7.1">11.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.10.8" style="padding-left:5.0pt;padding-right:5.0pt;">98.39</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.6.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">FlashVideo (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">4 / 72.2s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.11.3.1">58.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.11.4.1">0.296</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.11.5.1">0.439</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.11.6.1">4.501</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.11.7.1">11.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.11.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.11.8.1">98.92</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the visual quality improvements achieved by different video enhancement methods applied to the first-stage outputs.  Specifically, it shows the results of applying several state-of-the-art video enhancement methods, including VEnhancer, Upscale-a-Video, and RealBasicVSR, to videos generated by Stage I of the FlashVideo model.  Multiple metrics are used to assess both frame-level quality (MUSIQ, MANIQA, CLIPIQA, and NIQE) and overall video quality (Technical and Aesthetic scores from DOVER). The table highlights the best and second-best performing methods for each metric, allowing for a direct comparison of the effectiveness of different enhancement approaches in improving various aspects of video quality.
> <details>
> <summary>read the caption</summary>
> Table 3:  Frame and video quality across various video enhancement methods. The best results are highlighted in bold and the second-best in underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.6">
<tr class="ltx_tr" id="S5.T4.6.7">
<td class="ltx_td ltx_border_tt" id="S5.T4.6.7.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.6.7.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.2.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.6.7.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.3.1">Video Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.6.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.4.1">Sematics</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6">
<td class="ltx_td" id="S5.T4.6.6.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.5.5">Object Class(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.m1.1a"><mo id="S5.T4.5.5.5.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.m1.1b"><ci id="S5.T4.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.6">Overall Consistency(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.m1.1a"><mo id="S5.T4.6.6.6.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.m1.1b"><ci id="S5.T4.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.6.8.1">Full Fine-Tuning</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.2">20.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.3">0.273</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.4">8.531</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.5">97.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.6">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.7">26.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.6.9.1">LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.2.1">23.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.3.1">0.286</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.4.1">8.569</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.5"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.5.1">97.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.6"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.6.1">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.7"><span class="ltx_text ltx_font_bold" id="S5.T4.6.9.7.1">27.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of two different fine-tuning methods for a low-resolution stage of a video generation model.  It compares LoRA (Low-Rank Adaptation) and full parameter fine-tuning in terms of their impact on frame quality metrics (MUSIQ, CLIPIQA), video quality metrics (Technical, Aesthetic), and semantic scores (Object Class, Overall Consistency). The results show the effectiveness of LoRA compared to full parameter fine-tuning, particularly in terms of achieving higher quality results while maintaining efficiency.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of LoRA and full parameter fine-tuning in Stage \Romannum1. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.6">
<tr class="ltx_tr" id="S5.T5.6.7">
<td class="ltx_td ltx_border_tt" id="S5.T5.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S5.T5.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T5.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.3.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T5.6.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.4.1">Video Quality</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6">
<td class="ltx_td" id="S5.T5.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;">#NFE / Time</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.m1.1"><semantics id="S5.T5.5.5.5.m1.1a"><mo id="S5.T5.5.5.5.m1.1.1" stretchy="false" xref="S5.T5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.m1.1b"><ci id="S5.T5.5.5.5.m1.1.1.cmml" xref="S5.T5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.m1.1"><semantics id="S5.T5.6.6.6.m1.1a"><mo id="S5.T5.6.6.6.m1.1.1" stretchy="false" xref="S5.T5.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.m1.1b"><ci id="S5.T5.6.6.6.m1.1.1.cmml" xref="S5.T5.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">FlashVideo-1080p</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">4 / 72.2s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">58.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.296</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.439</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">4.501</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">11.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.8.8" style="padding-left:5.0pt;padding-right:5.0pt;">98.92</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">FlashVideo-2K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">4 / 209.8s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.3.1">62.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.4.1">0.354</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.5.1">0.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.6.1">4.463</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.7.1">12.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.9.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.9.8.1">99.20</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of scaling the inference resolution of the FlashVideo model, using the Rotary Position Embedding (RoPE) technique. It compares the performance metrics (MUSIQ, MANIQA, CLIPIQA, NIQE, Technical, and Aesthetic) at two different resolutions: 1080p and 2K (higher resolution).  The number of function evaluations (NFEs) and inference time are also reported for each resolution. The best performance in each metric is highlighted in bold, demonstrating the impact of higher resolution on the model's output quality while noting the increased computational cost.
> <details>
> <summary>read the caption</summary>
> Table 5: Inference resolution scaling results of FlashVideo with RoPE. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.8">
<tr class="ltx_tr" id="S5.T6.8.9">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T6.8.9.1"><span class="ltx_text ltx_font_bold" id="S5.T6.8.9.1.1">Degradation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T6.8.9.2"><span class="ltx_text ltx_font_bold" id="S5.T6.8.9.2.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T6.8.9.3"><span class="ltx_text ltx_font_bold" id="S5.T6.8.9.3.1">Video Quality</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T6.8.9.4"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.1"><math alttext="DEG_{pixel}" class="ltx_Math" display="inline" id="S5.T6.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.m1.1a"><mrow id="S5.T6.1.1.1.m1.1.1" xref="S5.T6.1.1.1.m1.1.1.cmml"><mi id="S5.T6.1.1.1.m1.1.1.2" xref="S5.T6.1.1.1.m1.1.1.2.cmml">D</mi><mo id="S5.T6.1.1.1.m1.1.1.1" xref="S5.T6.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.m1.1.1.3" xref="S5.T6.1.1.1.m1.1.1.3.cmml">E</mi><mo id="S5.T6.1.1.1.m1.1.1.1a" xref="S5.T6.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S5.T6.1.1.1.m1.1.1.4" xref="S5.T6.1.1.1.m1.1.1.4.cmml"><mi id="S5.T6.1.1.1.m1.1.1.4.2" xref="S5.T6.1.1.1.m1.1.1.4.2.cmml">G</mi><mrow id="S5.T6.1.1.1.m1.1.1.4.3" xref="S5.T6.1.1.1.m1.1.1.4.3.cmml"><mi id="S5.T6.1.1.1.m1.1.1.4.3.2" xref="S5.T6.1.1.1.m1.1.1.4.3.2.cmml">p</mi><mo id="S5.T6.1.1.1.m1.1.1.4.3.1" xref="S5.T6.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.m1.1.1.4.3.3" xref="S5.T6.1.1.1.m1.1.1.4.3.3.cmml">i</mi><mo id="S5.T6.1.1.1.m1.1.1.4.3.1a" xref="S5.T6.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.m1.1.1.4.3.4" xref="S5.T6.1.1.1.m1.1.1.4.3.4.cmml">x</mi><mo id="S5.T6.1.1.1.m1.1.1.4.3.1b" xref="S5.T6.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.m1.1.1.4.3.5" xref="S5.T6.1.1.1.m1.1.1.4.3.5.cmml">e</mi><mo id="S5.T6.1.1.1.m1.1.1.4.3.1c" xref="S5.T6.1.1.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.m1.1.1.4.3.6" xref="S5.T6.1.1.1.m1.1.1.4.3.6.cmml">l</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.m1.1b"><apply id="S5.T6.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1"><times id="S5.T6.1.1.1.m1.1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1.1"></times><ci id="S5.T6.1.1.1.m1.1.1.2.cmml" xref="S5.T6.1.1.1.m1.1.1.2">𝐷</ci><ci id="S5.T6.1.1.1.m1.1.1.3.cmml" xref="S5.T6.1.1.1.m1.1.1.3">𝐸</ci><apply id="S5.T6.1.1.1.m1.1.1.4.cmml" xref="S5.T6.1.1.1.m1.1.1.4"><csymbol cd="ambiguous" id="S5.T6.1.1.1.m1.1.1.4.1.cmml" xref="S5.T6.1.1.1.m1.1.1.4">subscript</csymbol><ci id="S5.T6.1.1.1.m1.1.1.4.2.cmml" xref="S5.T6.1.1.1.m1.1.1.4.2">𝐺</ci><apply id="S5.T6.1.1.1.m1.1.1.4.3.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3"><times id="S5.T6.1.1.1.m1.1.1.4.3.1.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.1"></times><ci id="S5.T6.1.1.1.m1.1.1.4.3.2.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.2">𝑝</ci><ci id="S5.T6.1.1.1.m1.1.1.4.3.3.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.3">𝑖</ci><ci id="S5.T6.1.1.1.m1.1.1.4.3.4.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.4">𝑥</ci><ci id="S5.T6.1.1.1.m1.1.1.4.3.5.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.5">𝑒</ci><ci id="S5.T6.1.1.1.m1.1.1.4.3.6.cmml" xref="S5.T6.1.1.1.m1.1.1.4.3.6">𝑙</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.m1.1c">DEG_{pixel}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.m1.1d">italic_D italic_E italic_G start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2"><math alttext="DEG_{latent}" class="ltx_Math" display="inline" id="S5.T6.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.m1.1a"><mrow id="S5.T6.2.2.2.m1.1.1" xref="S5.T6.2.2.2.m1.1.1.cmml"><mi id="S5.T6.2.2.2.m1.1.1.2" xref="S5.T6.2.2.2.m1.1.1.2.cmml">D</mi><mo id="S5.T6.2.2.2.m1.1.1.1" xref="S5.T6.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.3" xref="S5.T6.2.2.2.m1.1.1.3.cmml">E</mi><mo id="S5.T6.2.2.2.m1.1.1.1a" xref="S5.T6.2.2.2.m1.1.1.1.cmml">⁢</mo><msub id="S5.T6.2.2.2.m1.1.1.4" xref="S5.T6.2.2.2.m1.1.1.4.cmml"><mi id="S5.T6.2.2.2.m1.1.1.4.2" xref="S5.T6.2.2.2.m1.1.1.4.2.cmml">G</mi><mrow id="S5.T6.2.2.2.m1.1.1.4.3" xref="S5.T6.2.2.2.m1.1.1.4.3.cmml"><mi id="S5.T6.2.2.2.m1.1.1.4.3.2" xref="S5.T6.2.2.2.m1.1.1.4.3.2.cmml">l</mi><mo id="S5.T6.2.2.2.m1.1.1.4.3.1" xref="S5.T6.2.2.2.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.4.3.3" xref="S5.T6.2.2.2.m1.1.1.4.3.3.cmml">a</mi><mo id="S5.T6.2.2.2.m1.1.1.4.3.1a" xref="S5.T6.2.2.2.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.4.3.4" xref="S5.T6.2.2.2.m1.1.1.4.3.4.cmml">t</mi><mo id="S5.T6.2.2.2.m1.1.1.4.3.1b" xref="S5.T6.2.2.2.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.4.3.5" xref="S5.T6.2.2.2.m1.1.1.4.3.5.cmml">e</mi><mo id="S5.T6.2.2.2.m1.1.1.4.3.1c" xref="S5.T6.2.2.2.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.4.3.6" xref="S5.T6.2.2.2.m1.1.1.4.3.6.cmml">n</mi><mo id="S5.T6.2.2.2.m1.1.1.4.3.1d" xref="S5.T6.2.2.2.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.m1.1.1.4.3.7" xref="S5.T6.2.2.2.m1.1.1.4.3.7.cmml">t</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.m1.1b"><apply id="S5.T6.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.m1.1.1"><times id="S5.T6.2.2.2.m1.1.1.1.cmml" xref="S5.T6.2.2.2.m1.1.1.1"></times><ci id="S5.T6.2.2.2.m1.1.1.2.cmml" xref="S5.T6.2.2.2.m1.1.1.2">𝐷</ci><ci id="S5.T6.2.2.2.m1.1.1.3.cmml" xref="S5.T6.2.2.2.m1.1.1.3">𝐸</ci><apply id="S5.T6.2.2.2.m1.1.1.4.cmml" xref="S5.T6.2.2.2.m1.1.1.4"><csymbol cd="ambiguous" id="S5.T6.2.2.2.m1.1.1.4.1.cmml" xref="S5.T6.2.2.2.m1.1.1.4">subscript</csymbol><ci id="S5.T6.2.2.2.m1.1.1.4.2.cmml" xref="S5.T6.2.2.2.m1.1.1.4.2">𝐺</ci><apply id="S5.T6.2.2.2.m1.1.1.4.3.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3"><times id="S5.T6.2.2.2.m1.1.1.4.3.1.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.1"></times><ci id="S5.T6.2.2.2.m1.1.1.4.3.2.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.2">𝑙</ci><ci id="S5.T6.2.2.2.m1.1.1.4.3.3.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.3">𝑎</ci><ci id="S5.T6.2.2.2.m1.1.1.4.3.4.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.4">𝑡</ci><ci id="S5.T6.2.2.2.m1.1.1.4.3.5.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.5">𝑒</ci><ci id="S5.T6.2.2.2.m1.1.1.4.3.6.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.6">𝑛</ci><ci id="S5.T6.2.2.2.m1.1.1.4.3.7.cmml" xref="S5.T6.2.2.2.m1.1.1.4.3.7">𝑡</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.m1.1c">DEG_{latent}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.m1.1d">italic_D italic_E italic_G start_POSTSUBSCRIPT italic_l italic_a italic_t italic_e italic_n italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.3.3">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.3.3.3.m1.1"><semantics id="S5.T6.3.3.3.m1.1a"><mo id="S5.T6.3.3.3.m1.1.1" stretchy="false" xref="S5.T6.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.m1.1b"><ci id="S5.T6.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.4">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.4.4.4.m1.1"><semantics id="S5.T6.4.4.4.m1.1a"><mo id="S5.T6.4.4.4.m1.1.1" stretchy="false" xref="S5.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.m1.1b"><ci id="S5.T6.4.4.4.m1.1.1.cmml" xref="S5.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.5.5">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.5.5.5.m1.1"><semantics id="S5.T6.5.5.5.m1.1a"><mo id="S5.T6.5.5.5.m1.1.1" stretchy="false" xref="S5.T6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.5.m1.1b"><ci id="S5.T6.5.5.5.m1.1.1.cmml" xref="S5.T6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.6.6.6">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.6.6.6.m1.1"><semantics id="S5.T6.6.6.6.m1.1a"><mo id="S5.T6.6.6.6.m1.1.1" stretchy="false" xref="S5.T6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.6.6.6.m1.1b"><ci id="S5.T6.6.6.6.m1.1.1.cmml" xref="S5.T6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.6.6.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.7.7.7">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.7.7.7.m1.1"><semantics id="S5.T6.7.7.7.m1.1a"><mo id="S5.T6.7.7.7.m1.1.1" stretchy="false" xref="S5.T6.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.7.7.7.m1.1b"><ci id="S5.T6.7.7.7.m1.1.1.cmml" xref="S5.T6.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.7.7.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.8.8">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.8.8.8.m1.1"><semantics id="S5.T6.8.8.8.m1.1a"><mo id="S5.T6.8.8.8.m1.1.1" stretchy="false" xref="S5.T6.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.8.8.8.m1.1b"><ci id="S5.T6.8.8.8.m1.1.1.cmml" xref="S5.T6.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.8.8.8.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td" id="S5.T6.8.8.9"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.10">
<td class="ltx_td ltx_border_t" id="S5.T6.8.10.1"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.8.10.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.3">23.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.4">0.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.5">0.286</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.6">12.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.7">6.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.10.8">97.32</td>
<td class="ltx_td ltx_border_t" id="S5.T6.8.10.9"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.11">
<td class="ltx_td ltx_align_left" id="S5.T6.8.11.1">✓</td>
<td class="ltx_td" id="S5.T6.8.11.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.3">49.12</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.4">0.253</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.5">0.364</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.6">4.95</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.7">7.12</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.11.8">99.02</td>
<td class="ltx_td" id="S5.T6.8.11.9"></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.8.12.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.3"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.3.1">55.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.4"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.4.1">0.273</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.5"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.5.1">0.409</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.6"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.6.1">4.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.7"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.7.1">9.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.12.8"><span class="ltx_text ltx_font_bold" id="S5.T6.8.12.8.1">98.96</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T6.8.12.9"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of frame and video quality metrics when different data augmentation methods are used during the training of the high-resolution stage.  The methods compared are using pixel-space degradation only (DEGpixel) and a combination of pixel-space and latent-space degradation (DEGlatent).  The metrics used to evaluate quality include MUSIQ, MANIQA, CLIPIQA, and NIQE, reflecting both objective and subjective image quality aspects. Additionally, technical and aesthetic scores are included to provide a comprehensive evaluation of the generated videos. The best performing method for each metric is highlighted in bold, allowing for a direct comparison of the effectiveness of each degradation technique.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of frame quality and video quality when applying different degradations. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.6">
<tr class="ltx_tr" id="S5.T7.6.7">
<td class="ltx_td ltx_border_tt" id="S5.T7.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T7.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.7.2.1">Frame Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T7.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.7.3.1">Video Quality</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.6.6">
<td class="ltx_td" id="S5.T7.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T7.1.1.1.m1.1"><semantics id="S5.T7.1.1.1.m1.1a"><mo id="S5.T7.1.1.1.m1.1.1" stretchy="false" xref="S5.T7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T7.1.1.1.m1.1b"><ci id="S5.T7.1.1.1.m1.1.1.cmml" xref="S5.T7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T7.2.2.2.m1.1"><semantics id="S5.T7.2.2.2.m1.1a"><mo id="S5.T7.2.2.2.m1.1.1" stretchy="false" xref="S5.T7.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T7.2.2.2.m1.1b"><ci id="S5.T7.2.2.2.m1.1.1.cmml" xref="S5.T7.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T7.3.3.3.m1.1"><semantics id="S5.T7.3.3.3.m1.1a"><mo id="S5.T7.3.3.3.m1.1.1" stretchy="false" xref="S5.T7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T7.3.3.3.m1.1b"><ci id="S5.T7.3.3.3.m1.1.1.cmml" xref="S5.T7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T7.4.4.4.m1.1"><semantics id="S5.T7.4.4.4.m1.1a"><mo id="S5.T7.4.4.4.m1.1.1" stretchy="false" xref="S5.T7.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T7.4.4.4.m1.1b"><ci id="S5.T7.4.4.4.m1.1.1.cmml" xref="S5.T7.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.4.4.4.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">Technical(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T7.5.5.5.m1.1"><semantics id="S5.T7.5.5.5.m1.1a"><mo id="S5.T7.5.5.5.m1.1.1" stretchy="false" xref="S5.T7.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T7.5.5.5.m1.1b"><ci id="S5.T7.5.5.5.m1.1.1.cmml" xref="S5.T7.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">Aesthetic(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T7.6.6.6.m1.1"><semantics id="S5.T7.6.6.6.m1.1a"><mo id="S5.T7.6.6.6.m1.1.1" stretchy="false" xref="S5.T7.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T7.6.6.6.m1.1b"><ci id="S5.T7.6.6.6.m1.1.1.cmml" xref="S5.T7.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T7.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T7.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">Before</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">55.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.278</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.427</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">4.667</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">11.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;">98.90</td>
</tr>
<tr class="ltx_tr" id="S5.T7.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T7.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">After</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.2.1">58.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.3.1">0.296</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.4.1">0.439</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.5.1">4.501</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.6.1">11.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.6.9.7.1">98.92</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of FlashVideo's performance before and after incorporating human preference alignment during fine-tuning.  It shows improvements in various metrics related to both frame-level quality (MUSIQ, MANIQA, CLIPIQA, NIQE) and overall video quality (Technical and Aesthetic), indicating that aligning the model with human preferences enhances its ability to generate visually appealing and high-quality videos.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison of FlashVideo before and after human preference alignment. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T9.6.6.6">
<tr class="ltx_tr" id="S5.T9.6.6.6.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S5.T9.6.6.6.7.1" style="padding-left:0.6pt;padding-right:0.6pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S5.T9.6.6.6.7.2" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.6.6.6.7.2.1">Frame Quality</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S5.T9.6.6.6.7.3" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.6.6.6.7.3.1">Video Quality</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.6.7" style="padding-left:0.6pt;padding-right:0.6pt;">NFE</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.1.1.1.1.1" style="padding-left:0.6pt;padding-right:0.6pt;">MUSIQ(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T9.1.1.1.1.1.m1.1"><semantics id="S5.T9.1.1.1.1.1.m1.1a"><mo id="S5.T9.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T9.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T9.1.1.1.1.1.m1.1b"><ci id="S5.T9.1.1.1.1.1.m1.1.1.cmml" xref="S5.T9.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.2.2.2.2.2" style="padding-left:0.6pt;padding-right:0.6pt;">MANIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T9.2.2.2.2.2.m1.1"><semantics id="S5.T9.2.2.2.2.2.m1.1a"><mo id="S5.T9.2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T9.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T9.2.2.2.2.2.m1.1b"><ci id="S5.T9.2.2.2.2.2.m1.1.1.cmml" xref="S5.T9.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.3.3.3.3.3" style="padding-left:0.6pt;padding-right:0.6pt;">CLIPIQA(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T9.3.3.3.3.3.m1.1"><semantics id="S5.T9.3.3.3.3.3.m1.1a"><mo id="S5.T9.3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T9.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T9.3.3.3.3.3.m1.1b"><ci id="S5.T9.3.3.3.3.3.m1.1.1.cmml" xref="S5.T9.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.4.4.4.4.4" style="padding-left:0.6pt;padding-right:0.6pt;">NIQE(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T9.4.4.4.4.4.m1.1"><semantics id="S5.T9.4.4.4.4.4.m1.1a"><mo id="S5.T9.4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T9.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T9.4.4.4.4.4.m1.1b"><ci id="S5.T9.4.4.4.4.4.m1.1.1.cmml" xref="S5.T9.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.5.5.5.5.5" style="padding-left:0.6pt;padding-right:0.6pt;">Tech(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T9.5.5.5.5.5.m1.1"><semantics id="S5.T9.5.5.5.5.5.m1.1a"><mo id="S5.T9.5.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T9.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T9.5.5.5.5.5.m1.1b"><ci id="S5.T9.5.5.5.5.5.m1.1.1.cmml" xref="S5.T9.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.6.6" style="padding-left:0.6pt;padding-right:0.6pt;">Aesth(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T9.6.6.6.6.6.m1.1"><semantics id="S5.T9.6.6.6.6.6.m1.1a"><mo id="S5.T9.6.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T9.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T9.6.6.6.6.6.m1.1b"><ci id="S5.T9.6.6.6.6.6.m1.1.1.cmml" xref="S5.T9.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T9.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S5.T9.6.6.6.8.1" style="padding-left:0.6pt;padding-right:0.6pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.2" style="padding-left:0.6pt;padding-right:0.6pt;">48.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.3" style="padding-left:0.6pt;padding-right:0.6pt;">0.253</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.4" style="padding-left:0.6pt;padding-right:0.6pt;">0.307</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.5" style="padding-left:0.6pt;padding-right:0.6pt;">5.148</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.6" style="padding-left:0.6pt;padding-right:0.6pt;">8.643</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T9.6.6.6.8.7" style="padding-left:0.6pt;padding-right:0.6pt;">98.03</td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.9.1" style="padding-left:0.6pt;padding-right:0.6pt;">2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.2" style="padding-left:0.6pt;padding-right:0.6pt;">55.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.3" style="padding-left:0.6pt;padding-right:0.6pt;">0.287</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.4" style="padding-left:0.6pt;padding-right:0.6pt;">0.390</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.5" style="padding-left:0.6pt;padding-right:0.6pt;">4.730</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.6" style="padding-left:0.6pt;padding-right:0.6pt;">10.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.9.7" style="padding-left:0.6pt;padding-right:0.6pt;">98.38</td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.10.1" style="padding-left:0.6pt;padding-right:0.6pt;">3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.2" style="padding-left:0.6pt;padding-right:0.6pt;">57.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.3" style="padding-left:0.6pt;padding-right:0.6pt;">0.290</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.4" style="padding-left:0.6pt;padding-right:0.6pt;">0.418</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.5" style="padding-left:0.6pt;padding-right:0.6pt;">4.543</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.6" style="padding-left:0.6pt;padding-right:0.6pt;">11.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.10.7" style="padding-left:0.6pt;padding-right:0.6pt;">98.62</td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.11" style="background-color:#CCCCCC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.11.1" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.1.1" style="background-color:#CCCCCC;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.2" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.2.1" style="background-color:#CCCCCC;">58.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.3" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.3.1" style="background-color:#CCCCCC;">0.296</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.4" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.4.1" style="background-color:#CCCCCC;">0.439</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.5" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.5.1" style="background-color:#CCCCCC;">4.501</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.6" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.6.1" style="background-color:#CCCCCC;">11.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.11.7" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.11.7.1" style="background-color:#CCCCCC;">98.92</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.12" style="background-color:#CCCCCC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.12.1" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.1.1" style="background-color:#CCCCCC;">5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.2" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.2.1" style="background-color:#CCCCCC;">59.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.3" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.3.1" style="background-color:#CCCCCC;">0.299</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.4" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.4.1" style="background-color:#CCCCCC;">0.441</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.5" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.5.1" style="background-color:#CCCCCC;">4.492</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.6" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.6.1" style="background-color:#CCCCCC;">12.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.12.7" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.12.7.1" style="background-color:#CCCCCC;">99.05</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.13" style="background-color:#CCCCCC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.13.1" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.1.1" style="background-color:#CCCCCC;">6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.2" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.2.1" style="background-color:#CCCCCC;">59.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.3" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.3.1" style="background-color:#CCCCCC;">0.295</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.4" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.4.1" style="background-color:#CCCCCC;">0.440</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.5" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.5.1" style="background-color:#CCCCCC;">4.521</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.6" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.6.1" style="background-color:#CCCCCC;">12.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.13.7" style="padding-left:0.6pt;padding-right:0.6pt;"><span class="ltx_text" id="S5.T9.6.6.6.13.7.1" style="background-color:#CCCCCC;">99.05</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T9.6.6.6.14.1" style="padding-left:0.6pt;padding-right:0.6pt;">7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.2" style="padding-left:0.6pt;padding-right:0.6pt;">59.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.3" style="padding-left:0.6pt;padding-right:0.6pt;">0.298</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.4" style="padding-left:0.6pt;padding-right:0.6pt;">0.445</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.5" style="padding-left:0.6pt;padding-right:0.6pt;">4.578</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.6" style="padding-left:0.6pt;padding-right:0.6pt;">12.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T9.6.6.6.14.7" style="padding-left:0.6pt;padding-right:0.6pt;">99.01</td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6.6.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S5.T9.6.6.6.15.1" style="padding-left:0.6pt;padding-right:0.6pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.2" style="padding-left:0.6pt;padding-right:0.6pt;">59.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.3" style="padding-left:0.6pt;padding-right:0.6pt;">0.298</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.4" style="padding-left:0.6pt;padding-right:0.6pt;">0.451</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.5" style="padding-left:0.6pt;padding-right:0.6pt;">4.554</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.6" style="padding-left:0.6pt;padding-right:0.6pt;">12.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T9.6.6.6.15.7" style="padding-left:0.6pt;padding-right:0.6pt;">99.16</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted to determine the optimal latent degradation strength for the FlashVideo model. During the initial training phase, a wide range of noise steps (600-900) was tested.  The table shows the model's performance across this range, indicating that a narrower range of 650-750 consistently produces satisfactory results.  This optimized range was then used in subsequent training phases. The upper half of the table displays results from the initial broader range, and the lower half shows the results from the refined, optimal range, highlighting the improvement in model performance after focusing on this narrower range.
> <details>
> <summary>read the caption</summary>
> Table 10: Results of FlashVideo under different latent degradation strengths. During initial training, a noise step range of 600–900 is applied, with model performance evaluated across different steps. The range of 650–750 consistently yields satisfactory results (see upper half of Table). This refined range is then adopted for subsequent training, with final performance presented in the lower half of Table.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05179/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05179/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}