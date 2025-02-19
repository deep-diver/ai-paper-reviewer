---
title: "RealSyn: An Effective and Scalable Multimodal Interleaved Document Transformation Paradigm"
summary: "RealSyn: A new, scalable multimodal dataset revolutionizes vision-language learning by effectively using interleaved image-text documents."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Sydney",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12513 {{< /keyword >}}
{{< keyword icon="writer" >}} Tiancheng Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12513" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12513" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12513/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current vision-language models struggle to leverage the wealth of information available in unpaired multimodal data, especially interleaved image-text documents. These documents present a challenge because images and text aren't explicitly linked.  This limits the effectiveness of existing training methods. 



The researchers tackle this problem by creating RealSyn, a new dataset.  They developed methods to effectively link images and texts within these complex documents and even generate synthetic text to enhance the data.  Their experiments show that models trained on RealSyn achieve excellent performance on various tasks and scale efficiently. This highlights RealSyn's potential as a valuable resource for advancing research in vision-language representation learning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RealSyn, a large-scale multimodal dataset (15M, 30M, and 100M versions) effectively advances vision-language representation learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RealSyn's hierarchical retrieval and image semantic augmented generation methods efficiently extract high-quality image-text pairs from interleaved documents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Models pre-trained on RealSyn achieve state-of-the-art performance on various downstream vision-language tasks, demonstrating strong scalability. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in computer vision and natural language processing due to its introduction of **RealSyn**, a novel large-scale multimodal dataset.  **RealSyn addresses the underutilization of unpaired, interleaved image-text documents**, a significant limitation in current vision-language representation learning. The dataset's innovative construction methods, combining realistic and synthetic data, open exciting avenues for future work, particularly in improving scalability and handling long-tail concepts. The readily available dataset and pre-trained model weights significantly boost the accessibility and reproducibility of future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12513/x1.png)

> 🔼 This figure illustrates the challenge of using multimodal interleaved documents for vision-language representation learning.  These documents contain images and text intermixed without explicit pairings, making it difficult to directly use them for training models that learn relationships between images and text. The figure shows a proposed solution involving a pipeline. First, a data extraction step is performed to isolate image and text content. A hierarchical retrieval method then links each image with semantically relevant text segments. Finally, to improve the quality and amount of training data, an image semantic augmented generation module produces synthetic texts, ensuring that each image has multiple associated texts. This process generates distinct image-text pairs suitable for training vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Multimodal interleaved documents are unsuitable for vision-language representation learning. We construct distinct image-text pairs from such documents via retrieval and generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="23" id="S3.T1.1.1.1.1" style="padding:-1pt 2.3pt;"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.1" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.2.1.1" style="background-color:#E8E8E8;">Data Scale</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.3" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.3.1" style="width:6.9pt;height:36.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.3.1.1">Food101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.4" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.4.1" style="width:6.8pt;height:41.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-17.14pt,-17.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.4.1.1">CIFAR10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.5" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.5.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.5.1.1">CIFAR100</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.6" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.6.1" style="width:8.9pt;height:39.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:39.4pt;transform:translate(-15.25pt,-12.33pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.6.1.1">Birdsnap</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.7" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.7.1" style="width:6.8pt;height:35.6pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.36pt,-14.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.7.1.1">SUN397</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.8" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.8.1" style="width:6.8pt;height:20.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-6.63pt,-6.63pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.8.1.1">Cars</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.9" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.9.1" style="width:6.9pt;height:34.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:34.5pt;transform:translate(-13.78pt,-13.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.9.1.1">Aircraft</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.10" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.10.1" style="width:6.8pt;height:22.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:22.5pt;transform:translate(-7.83pt,-7.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.10.1.1">DTD</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.11" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.11.1" style="width:6.8pt;height:18.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-5.99pt,-5.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.11.1.1">Pets</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.12" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.12.1" style="width:6.9pt;height:33.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.1pt;transform:translate(-13.06pt,-13.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.12.1.1">Caltech</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.13" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.13.1" style="width:6.9pt;height:33.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.3pt;transform:translate(-13.17pt,-13.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.13.1.1">Flowers</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.14" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.14.1" style="width:6.8pt;height:29pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-11.1pt,-11.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.14.1.1">STL10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.15" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.15.1" style="width:6.8pt;height:40.7pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:40.7pt;transform:translate(-16.94pt,-16.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.15.1.1">EuroSAT</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.16" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.16.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.16.1.1">RESISC45</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.17" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.17.1" style="width:6.8pt;height:29.4pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.31pt,-11.31pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.17.1.1">KITTI</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.18" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.18.1" style="width:8.8pt;height:36.1pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.1pt;transform:translate(-13.68pt,-10.76pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.18.1.1">Country</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.19" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.19.1" style="width:6.8pt;height:36.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.3pt;transform:translate(-14.71pt,-14.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.19.1.1">UCF101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.20" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.20.1" style="width:6.8pt;height:30.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-11.75pt,-11.75pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.20.1.1">Memes</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.21" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.21.1" style="width:6.8pt;height:23.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:23.3pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.21.1.1">SST2</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.22" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.22.1" style="width:8.8pt;height:42.2pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:42.2pt;transform:translate(-16.72pt,-13.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.22.1.1">ImageNet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2.23" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.23.1" style="width:8.8pt;height:35.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.3pt;transform:translate(-13.26pt,-10.35pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.23.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.23.1.1.1">Average</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="23" id="S3.T1.1.1.3.1" style="padding:-1pt 2.3pt;"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.1" rowspan="3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.1.1">15M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.2" style="padding:-1pt 2.3pt;">YFCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.3" style="padding:-1pt 2.3pt;">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4" style="padding:-1pt 2.3pt;">90.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.5" style="padding:-1pt 2.3pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.6.1" style="background-color:#D8ECD1;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.7" style="padding:-1pt 2.3pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.8" style="padding:-1pt 2.3pt;">23.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.9" style="padding:-1pt 2.3pt;">29.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.10" style="padding:-1pt 2.3pt;">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.11" style="padding:-1pt 2.3pt;">65.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.12" style="padding:-1pt 2.3pt;">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.13.1" style="background-color:#D8ECD1;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.14" style="padding:-1pt 2.3pt;">94.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.15" style="padding:-1pt 2.3pt;">94.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.16" style="padding:-1pt 2.3pt;">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.17.1" style="background-color:#D8ECD1;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.4.18.1" style="background-color:#D8ECD1;">18.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.19" style="padding:-1pt 2.3pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.20" style="padding:-1pt 2.3pt;">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.21" style="padding:-1pt 2.3pt;">56.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.22" style="padding:-1pt 2.3pt;">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.23" style="padding:-1pt 2.3pt;">64.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.1" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.2" style="padding:-1pt 2.3pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3" style="padding:-1pt 2.3pt;">93.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4" style="padding:-1pt 2.3pt;">78.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5" style="padding:-1pt 2.3pt;">41.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.6" style="padding:-1pt 2.3pt;">66.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.7" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.5.7.1" style="background-color:#D8ECD1;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.5.8.1" style="background-color:#D8ECD1;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.9" style="padding:-1pt 2.3pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.10" style="padding:-1pt 2.3pt;">74.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.11" style="padding:-1pt 2.3pt;">87.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.12" style="padding:-1pt 2.3pt;">88.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.13" style="padding:-1pt 2.3pt;">93.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.14" style="padding:-1pt 2.3pt;">95.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.15" style="padding:-1pt 2.3pt;">82.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.16" style="padding:-1pt 2.3pt;">72.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.17" style="padding:-1pt 2.3pt;">13.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.18" style="padding:-1pt 2.3pt;">75.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.19" style="padding:-1pt 2.3pt;">55.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.20" style="padding:-1pt 2.3pt;">57.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.21" style="padding:-1pt 2.3pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.22" style="padding:-1pt 2.3pt;">69.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.1.6.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.2.1" style="background-color:#D8ECD1;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.3.1" style="background-color:#D8ECD1;">94.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.4.1" style="background-color:#D8ECD1;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.5" style="padding:-1pt 2.3pt;">43.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.6.1" style="background-color:#D8ECD1;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.7" style="padding:-1pt 2.3pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.8" style="padding:-1pt 2.3pt;">42.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.9.1" style="background-color:#D8ECD1;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.10.1" style="background-color:#D8ECD1;">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.11.1" style="background-color:#D8ECD1;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.12" style="padding:-1pt 2.3pt;">88.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.13.1" style="background-color:#D8ECD1;">96.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.14.1" style="background-color:#D8ECD1;">96.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.15.1" style="background-color:#D8ECD1;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.16" style="padding:-1pt 2.3pt;">72.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.17" style="padding:-1pt 2.3pt;">16.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.18.1" style="background-color:#D8ECD1;">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.19" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.19.1" style="background-color:#D8ECD1;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.20" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.20.1" style="background-color:#D8ECD1;">57.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.21.1" style="background-color:#D8ECD1;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.6.22.1" style="background-color:#D8ECD1;">71.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.1" rowspan="2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.1.1">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.2" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.3" style="padding:-1pt 2.3pt;">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.4" style="padding:-1pt 2.3pt;">94.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.5" style="padding:-1pt 2.3pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.6" style="padding:-1pt 2.3pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.7" style="padding:-1pt 2.3pt;">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.8.1" style="background-color:#D8ECD1;">82.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.9.1" style="background-color:#D8ECD1;">45.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.10.1" style="background-color:#D8ECD1;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.11" style="padding:-1pt 2.3pt;">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.12" style="padding:-1pt 2.3pt;">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.13" style="padding:-1pt 2.3pt;">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.14" style="padding:-1pt 2.3pt;">95.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.15" style="padding:-1pt 2.3pt;">95.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.16" style="padding:-1pt 2.3pt;">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.17" style="padding:-1pt 2.3pt;">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.18" style="padding:-1pt 2.3pt;">15.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.19" style="padding:-1pt 2.3pt;">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.20" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.20.1" style="background-color:#D8ECD1;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.7.21.1" style="background-color:#D8ECD1;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.22" style="padding:-1pt 2.3pt;">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.23" style="padding:-1pt 2.3pt;">72.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.1.8.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.2.1" style="background-color:#D8ECD1;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.3.1" style="background-color:#D8ECD1;">95.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.4.1" style="background-color:#D8ECD1;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.5" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.5.1" style="background-color:#D8ECD1;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.6.1" style="background-color:#D8ECD1;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.7" style="padding:-1pt 2.3pt;">73.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8" style="padding:-1pt 2.3pt;">45.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.9" style="padding:-1pt 2.3pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.10.1" style="background-color:#D8ECD1;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.11.1" style="background-color:#D8ECD1;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.12" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.12.1" style="background-color:#D8ECD1;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.13.1" style="background-color:#D8ECD1;">97.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.14.1" style="background-color:#D8ECD1;">96.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.15.1" style="background-color:#D8ECD1;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.16" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.16.1" style="background-color:#D8ECD1;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.17.1" style="background-color:#D8ECD1;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.18.1" style="background-color:#D8ECD1;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.19" style="padding:-1pt 2.3pt;">55.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.20" style="padding:-1pt 2.3pt;">56.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.21.1" style="background-color:#D8ECD1;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.8.22.1" style="background-color:#D8ECD1;">73.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.9.1" rowspan="2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.9.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.2" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.3" style="padding:-1pt 2.3pt;">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.4" style="padding:-1pt 2.3pt;">95.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.5" style="padding:-1pt 2.3pt;">82.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.6" style="padding:-1pt 2.3pt;">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.7" style="padding:-1pt 2.3pt;">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.9.8.1" style="background-color:#D8ECD1;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.9" style="padding:-1pt 2.3pt;">46.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.10" style="padding:-1pt 2.3pt;">75.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.11" style="padding:-1pt 2.3pt;">83.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.12" style="padding:-1pt 2.3pt;">91.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.9.13.1" style="background-color:#D8ECD1;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.14" style="padding:-1pt 2.3pt;">96.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.15" style="padding:-1pt 2.3pt;">95.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.16" style="padding:-1pt 2.3pt;">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.17" style="padding:-1pt 2.3pt;">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.18" style="padding:-1pt 2.3pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.19" style="padding:-1pt 2.3pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.20" style="padding:-1pt 2.3pt;">57.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.9.21.1" style="background-color:#D8ECD1;">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.22" style="padding:-1pt 2.3pt;">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.23" style="padding:-1pt 2.3pt;">74.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.1.1.10.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.2.1" style="background-color:#D8ECD1;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.3.1" style="background-color:#D8ECD1;">96.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.4.1" style="background-color:#D8ECD1;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.5" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.5.1" style="background-color:#D8ECD1;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.6.1" style="background-color:#D8ECD1;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.7" style="padding:-1pt 2.3pt;">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.8.1" style="background-color:#D8ECD1;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.9.1" style="background-color:#D8ECD1;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.1" style="background-color:#D8ECD1;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.11.1" style="background-color:#D8ECD1;">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.12" style="padding:-1pt 2.3pt;">91.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.13.1" style="background-color:#D8ECD1;">97.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.14.1" style="background-color:#D8ECD1;">96.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.15.1" style="background-color:#D8ECD1;">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.16" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.16.1" style="background-color:#D8ECD1;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.17.1" style="background-color:#D8ECD1;">21.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.18.1" style="background-color:#D8ECD1;">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.19" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.19.1" style="background-color:#D8ECD1;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.20" style="padding:-1pt 2.3pt;">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.21.1" style="background-color:#D8ECD1;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T1.1.1.10.22.1" style="background-color:#D8ECD1;">75.8</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of a linear probe evaluation on 20 downstream datasets.  The experiment involved pre-training a Vision Transformer (ViT-B/32) model on the RealSyn dataset and then evaluating its performance on these diverse benchmark datasets.  The performance is measured in terms of accuracy. The table shows that pre-training on RealSyn leads to an average improvement in performance, ranging from 1.3% to 6.9%, demonstrating the effectiveness of RealSyn for vision-language representation learning.
> <details>
> <summary>read the caption</summary>
> Table 1: Linear probe on 20 downstream datasets. Pre-training ViT-B/32 on RealSyn achieves 1.3%-6.9% average performance improvement.
> </details>





### In-depth insights


#### Multimodal Doc Use
Utilizing multimodal documents presents a unique challenge and opportunity in vision-language research.  The inherent **interleaving of images and text** necessitates innovative approaches beyond simple paired data strategies.  A key consideration is the development of robust methods for associating images with relevant textual segments, perhaps employing **hierarchical retrieval techniques** that account for semantic context within the documents.  Furthermore, **addressing noisy or incomplete data** is crucial, as real-world documents often contain inconsistencies.  This might involve data cleaning, filtering, or advanced techniques like semantic filtering to ensure high-quality image-text pairings for pre-training. The potential reward, however, is significant:  leveraging this rich, often underutilized resource could unlock substantial improvements in vision-language model performance, particularly for tasks involving complex, real-world scenarios.  The successful utilization of multimodal documents will depend greatly on overcoming these technical hurdles and effectively harnessing the diverse information inherent in these rich data sources.

#### Hierarchical Retrieval
Hierarchical retrieval, in the context of multimodal document processing, is a crucial technique for efficiently associating images with relevant text from a massive corpus.  The core idea is to avoid the computationally expensive task of comparing each image to every text in a large dataset. Instead, a **hierarchical structure** is introduced, likely involving clustering of the text data based on semantic similarity. This allows for a two-stage retrieval process. First, the system identifies the most relevant cluster of texts based on image features.  Then, a finer search is performed within that selected cluster, considerably reducing the search space and improving efficiency. This approach is **especially important** when dealing with large-scale datasets like the RealSyn dataset which contains a massive number of interleaved image-text documents.  The hierarchical method allows for significant computational savings which makes the entire system **scalable** and makes it feasible to work with datasets of this size. The specific implementation details, such as the clustering algorithm and similarity metric used, would determine the effectiveness of this retrieval strategy. The success depends critically on the quality of the initial clustering to ensure that semantically relevant texts are grouped together efficiently.

#### Synthetic Text Gen
The concept of 'Synthetic Text Gen' within a multimodal learning research paper is crucial for augmenting datasets.  **Generating synthetic text offers a way to address the scarcity of real-world paired image-text data**, especially for niche or rare concepts. By creating artificial text descriptions for existing images, researchers can significantly expand the scale and diversity of their training data.  This is particularly important for vision-language models, which often benefit from massive amounts of data to perform well. However, **care must be taken to ensure that the generated synthetic text is high-quality and semantically consistent with the corresponding image.**  Poorly generated text can lead to inaccurate model learning and hinder downstream performance. Therefore, strategies like **fine-tuning large language models (LLMs)** or using **advanced generative models** are often employed to enhance realism and semantic accuracy.  The methods used for synthetic text generation are critical to the overall success of the research, as **poorly generated text can negatively impact model accuracy.**  **Careful evaluation of the synthetic data**, possibly including human evaluation, is essential to determine its quality and usefulness before incorporating it into the training pipeline.

#### RealSyn Dataset
The RealSyn dataset represents a **significant advancement** in multimodal learning by addressing the limitations of existing vision-language datasets. Its novelty lies in its methodology for leveraging unpaired, interleaved image-text documents, a previously underutilized resource. The creation of RealSyn involved a multi-step process including **real-world data extraction**, **hierarchical retrieval** to match images with relevant texts, and **image semantic augmented generation** to produce synthetic texts that balance the dataset.  The dataset's hierarchical retrieval method addresses the computational challenge of associating images with texts from large corpora, thus enhancing its **scalability**.  The inclusion of both realistic and synthetic texts makes RealSyn a **robust and versatile resource**, particularly well-suited for pre-training vision-language models. The availability of RealSyn in three scales (15M, 30M, and 100M) further underscores its practical value for research, promising improved downstream task performance and facilitating future advancements in multimodal understanding.

#### Future Work
Future research directions stemming from this work could explore several promising avenues.  **Extending RealSyn to encompass a broader range of document types and languages** is crucial for enhanced generalizability.  Investigating **more sophisticated methods for synthetic data generation**, potentially incorporating generative models conditioned on both image and text features, could improve the quality and diversity of the training data. A deeper dive into **optimal sampling strategies** beyond semantic balance sampling is warranted, aiming for more efficient and effective data utilization. Finally, a thorough investigation into **the impact of different model architectures and pre-training strategies on RealSyn** would reveal further valuable insights into vision-language representation learning and the strengths and limitations of this novel dataset.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12513/x2.png)

> 🔼 This figure illustrates the Real-World Data Extraction pipeline, a multi-stage process designed to extract high-quality images and text from a large corpus of interleaved image-text documents.  The pipeline begins with the extraction of images and text segments from the original documents.  Then, it proceeds through several filtering steps to remove low-quality, redundant, and semantically irrelevant data. Image filtering includes steps based on aspect ratio, resolution, and perceptual/semantic redundancy.  Sentence filtering similarly includes criteria related to length, complexity, the presence of URLs or emojis, and information entropy to ensure high-quality, meaningful text.  The result of this pipeline is a refined dataset comprising high-quality images and text ready for further use in training vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: The Real-World Data Extraction pipeline to extract high-quality images and texts from interleaved image-text documents.
> </details>



![](https://arxiv.org/html/2502.12513/x3.png)

> 🔼 This figure illustrates the framework used to generate image-text pairs from real-world, interleaved documents.  The process begins with extracting images and texts from the documents, followed by text semantic clustering to group similar texts. A hierarchical retrieval method then efficiently associates images with semantically relevant texts from various clusters. Finally, an image semantic augmented generation module produces synthetic text captions, enhancing image understanding. This entire framework produces high-quality image-text pairs suitable for vision-language model training.
> <details>
> <summary>read the caption</summary>
> Figure 3: The architecture of our proposed framework, which constructs distinct image-text pairs from real-world data extracted from interleaved documents via retrieval and generation.
> </details>



![](https://arxiv.org/html/2502.12513/x4.png)

> 🔼 This figure visualizes the distribution of topics within the RealSyn dataset using t-SNE dimensionality reduction on LDA topic modeling results.  A random subset of 1 million samples from the RealSyn dataset was used for this analysis. The visualization helps understand the diversity of topics covered in the dataset. Each point represents a sample, and the clusters show groupings of semantically similar samples.
> <details>
> <summary>read the caption</summary>
> Figure 4: A T-SNE Van der Maaten and Hinton (2008) projection of LDA Blei et al. (2003) topic cluster from a randomly selected 1M samples from RealSyn.
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/data_richness/diversity_analysis.png)

> 🔼 This figure compares the richness of various datasets in terms of image-text similarity and token distribution.  It shows that the RealSyn dataset, especially when including both realistic and synthetic texts, has a richer textual context and more diverse vocabulary than datasets solely based on realistic web data, thereby enriching its potential for vision-language representation learning.
> <details>
> <summary>read the caption</summary>
> (a) Richness assessment comparison
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/model_scaling/model_scaling_combined.png)

> 🔼 This figure compares the diversity of different datasets by showing the number of unique entities present in their captions.  A higher number of unique entities indicates greater diversity in the data.  The figure visually demonstrates that the RealSyn dataset has substantially more diverse captions compared to the LAION and YFCC datasets, as represented by the significantly higher count of unique tokens present in its captions. This diversity is beneficial for training robust and generalizable vision-language models.
> <details>
> <summary>read the caption</summary>
> (b) Diversity assessment comparison
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/image_captioning/coco2017_name.png)

> 🔼 Figure 5 presents a comparison of the richness and diversity of four datasets: YFCC15M, LAION, RealSyn-R1 (using only the most relevant realistic text retrieved for each image), and RealSyn-S1 (incorporating both the most relevant realistic text and its semantically augmented synthetic counterpart).  The richness is assessed by calculating the cosine similarity between image and text embeddings, and the distribution of token counts in the text captions.  The diversity is analyzed using the number of unique entities mentioned in the captions.  The figure shows that RealSyn, especially when using both realistic and synthetic texts, exhibits higher richness and diversity compared to the other datasets.
> <details>
> <summary>read the caption</summary>
> Figure 5: The richness assessment and diversity assessment on different datasets. RealSyn-R1: the most relevant retrieved realistic text. RealSyn-S1: the semantic augmented synthetic text based on RealSyn-R1.
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/image_captioning/flickr30K_name.png)

> 🔼 Figure 6 presents a comparison of model scaling capabilities between two large-scale image-text datasets: LAION30M and RealSyn30M.  It demonstrates how performance varies across different model sizes (ViT-B/32, ViT-B/16, ViT-L/14) when pre-trained on each dataset. The results are shown across three key metrics: linear probe performance on downstream tasks, zero-shot transfer learning performance, and robustness. This visualization allows assessing which dataset is more effective at improving model scaling and performance on downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Model scaling capability. We compare the models pre-trained on LAION30M and RealSyn30M.
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/concept_balance/Image_concept_balance_resize.png)

> 🔼 Figure 7 presents a comparison of image captioning performance on the COCO2017 and Flickr30k datasets.  The results are shown for different models, with performance evaluated using four metrics: BLEU (B4), METEOR (MT.), ROUGE-L (RL.), and CIDEr (Cd.).  This allows for a comprehensive assessment of caption quality across various models and datasets.
> <details>
> <summary>read the caption</summary>
> Figure 7: Image captioning comparisons on COCO2017 and Flickr30k. B4, MT., RL. and Cd. represent the metric of BLEU, METEOR, ROUGE-L, and Cider.
> </details>



![](https://arxiv.org/html/2502.12513/x5.png)

> 🔼 Figure 8 presents a comparative analysis of data distribution obtained from two sampling methods: random sampling and semantic balanced sampling.  The x-axis represents the cluster number, and the y-axis denotes the count of samples within each cluster.  Two distinct curves illustrate the distribution of 15 million data points from each sampling technique. The plot visually demonstrates how semantic balanced sampling, in contrast to random sampling, leads to a more uniform and balanced distribution of data across clusters, mitigating potential biases towards certain clusters and improving the model's ability to learn from diverse data.
> <details>
> <summary>read the caption</summary>
> Figure 8: Clustering distribution of 15M data obtained from random sampling and semantic balanced sampling.
> </details>



![](https://arxiv.org/html/2502.12513/extracted/6212411/Figures/data_scaling_law.png)

> 🔼 Figure 9 visualizes the transformation of an interleaved document into image-text pairs.  It shows the original, unstructured document alongside extracted high-quality images.  The figure then highlights how a hierarchical retrieval system identifies multiple semantically relevant realistic texts associated with each image.  Finally, it displays synthetic texts generated to augment the image's semantic information.  These synthetic texts are created using a large language model and aim to provide fine-grained details that may be missing from the original text. The image semantic-related information in both the realistic and synthetic texts is highlighted in green, demonstrating how this information is preserved and enriched throughout the process.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of the raw interleaved document, the retrieved realistic text, and synthetic text. Image semantic-related information is highlighted in green.
> </details>



![](https://arxiv.org/html/2502.12513/x6.png)

> 🔼 This figure illustrates the performance scaling of the Vision Transformer (ViT-B/32) model when pre-trained on the RealSyn dataset at various scales.  It visually represents how the model's performance changes as the amount of training data increases. This allows for an evaluation of the dataset's scalability and efficiency, showing whether performance gains plateau or continue to improve with larger datasets.
> <details>
> <summary>read the caption</summary>
> Figure 10: Data Scaling Analysis. Pre-training ViT-B/32 on RealSyn in different data scales.
> </details>



![](https://arxiv.org/html/2502.12513/x7.png)

> 🔼 This figure visualizes examples from the RealSyn dataset, showcasing the integration of realistic and synthetic image-text pairs.  Each row displays a raw image, followed by multiple realistic text descriptions (T<sup>k</sup><sub>r</sub>) retrieved from the original interleaved documents.  These are then complemented by corresponding synthetic texts (T<sup>k</sup><sub>s</sub>) generated to enhance fine-grained semantic details using the model and the original realistic texts. The generated synthetic texts aim to improve the representation learning by adding semantic richness and diversity. Green highlights indicate portions of the synthetic text directly related to image semantics.
> <details>
> <summary>read the caption</summary>
> Figure 11: Visualization of image-text pairs in our proposed RealSyn dataset. Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT: the k𝑘kitalic_k-th retrieved realistic text. Tsksubscriptsuperscript𝑇𝑘𝑠T^{k}_{s}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT: the image semantic augmented synthetic text for Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT. Image semantic-related information is highlighted in green.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="23" id="S3.T2.1.1.1.1" style="padding:-1pt 2.3pt;"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.1" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.2.1.1" style="background-color:#E8E8E8;">Data Scale</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.3" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.3.1" style="width:6.9pt;height:36.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.3.1.1">Food101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.4" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.4.1" style="width:6.8pt;height:41.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-17.14pt,-17.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.4.1.1">CIFAR10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.5" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.5.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.5.1.1">CIFAR100</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.6" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.6.1" style="width:8.9pt;height:39.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:39.4pt;transform:translate(-15.25pt,-12.33pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.6.1.1">Birdsnap</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.7" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.7.1" style="width:6.8pt;height:35.6pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.36pt,-14.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.7.1.1">SUN397</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.8" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.8.1" style="width:6.8pt;height:20.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-6.63pt,-6.63pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.8.1.1">Cars</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.9" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.9.1" style="width:6.9pt;height:34.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:34.5pt;transform:translate(-13.78pt,-13.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.9.1.1">Aircraft</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.10" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.10.1" style="width:6.8pt;height:22.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:22.5pt;transform:translate(-7.83pt,-7.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.10.1.1">DTD</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.11" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.11.1" style="width:6.8pt;height:18.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-5.99pt,-5.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.11.1.1">Pets</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.12" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.12.1" style="width:6.9pt;height:33.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.1pt;transform:translate(-13.06pt,-13.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.12.1.1">Caltech</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.13" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.13.1" style="width:6.9pt;height:33.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.3pt;transform:translate(-13.17pt,-13.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.13.1.1">Flowers</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.14" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.14.1" style="width:6.8pt;height:29pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-11.1pt,-11.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.14.1.1">STL10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.15" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.15.1" style="width:6.8pt;height:40.7pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:40.7pt;transform:translate(-16.94pt,-16.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.15.1.1">EuroSAT</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.16" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.16.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.16.1.1">RESISC45</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.17" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.17.1" style="width:6.8pt;height:29.4pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.31pt,-11.31pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.17.1.1">KITTI</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.18" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.18.1" style="width:8.8pt;height:36.1pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.1pt;transform:translate(-13.68pt,-10.76pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.18.1.1">Country</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.19" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.19.1" style="width:6.8pt;height:36.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.3pt;transform:translate(-14.71pt,-14.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.19.1.1">UCF101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.20" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.20.1" style="width:6.8pt;height:30.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-11.75pt,-11.75pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.20.1.1">Memes</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.21" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.21.1" style="width:6.8pt;height:23.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:23.3pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.21.1.1">SST2</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.22" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.22.1" style="width:8.8pt;height:42.2pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:42.2pt;transform:translate(-16.72pt,-13.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.22.1.1">ImageNet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.23" style="padding:-1pt 2.3pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T2.1.1.2.23.1" style="width:8.8pt;height:35.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.3pt;transform:translate(-13.26pt,-10.35pt) rotate(-90deg) ;">
<p class="ltx_p" id="S3.T2.1.1.2.23.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.23.1.1.1">Average</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="23" id="S3.T2.1.1.3.1" style="padding:-1pt 2.3pt;"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.1" rowspan="3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.4.1.1">15M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.2" style="padding:-1pt 2.3pt;">YFCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.3" style="padding:-1pt 2.3pt;">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4" style="padding:-1pt 2.3pt;">74.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.5" style="padding:-1pt 2.3pt;">40.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.4.6.1" style="background-color:#D8ECD1;">19.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.7" style="padding:-1pt 2.3pt;">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.8" style="padding:-1pt 2.3pt;">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.9" style="padding:-1pt 2.3pt;">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.10" style="padding:-1pt 2.3pt;">12.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.11" style="padding:-1pt 2.3pt;">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.12" style="padding:-1pt 2.3pt;">59.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.4.13.1" style="background-color:#D8ECD1;">48.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.14" style="padding:-1pt 2.3pt;">87.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.15" style="padding:-1pt 2.3pt;">21.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.16" style="padding:-1pt 2.3pt;">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.17" style="padding:-1pt 2.3pt;">23.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.18" style="padding:-1pt 2.3pt;">5.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.19" style="padding:-1pt 2.3pt;">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.20" style="padding:-1pt 2.3pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.21" style="padding:-1pt 2.3pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.22" style="padding:-1pt 2.3pt;">32.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.23" style="padding:-1pt 2.3pt;">33.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.1" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.2" style="padding:-1pt 2.3pt;">49.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.3" style="padding:-1pt 2.3pt;">85.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4" style="padding:-1pt 2.3pt;">56.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5" style="padding:-1pt 2.3pt;">11.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.6" style="padding:-1pt 2.3pt;">45.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.7" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.5.7.1" style="background-color:#D8ECD1;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.8" style="padding:-1pt 2.3pt;">3.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.9" style="padding:-1pt 2.3pt;">25.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.10" style="padding:-1pt 2.3pt;">54.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.11" style="padding:-1pt 2.3pt;">78.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.12" style="padding:-1pt 2.3pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.13" style="padding:-1pt 2.3pt;">89.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.14" style="padding:-1pt 2.3pt;">36.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.15" style="padding:-1pt 2.3pt;">36.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.16" style="padding:-1pt 2.3pt;">21.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.17" style="padding:-1pt 2.3pt;">5.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.18" style="padding:-1pt 2.3pt;">38.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.19" style="padding:-1pt 2.3pt;">48.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.20" style="padding:-1pt 2.3pt;">49.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.21" style="padding:-1pt 2.3pt;">37.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.22" style="padding:-1pt 2.3pt;">42.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.6.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.2.1" style="background-color:#D8ECD1;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.3.1" style="background-color:#D8ECD1;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.4.1" style="background-color:#D8ECD1;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5" style="padding:-1pt 2.3pt;">10.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.6.1" style="background-color:#D8ECD1;">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.7" style="padding:-1pt 2.3pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.8.1" style="background-color:#D8ECD1;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.9.1" style="background-color:#D8ECD1;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.10.1" style="background-color:#D8ECD1;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.11.1" style="background-color:#D8ECD1;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.12" style="padding:-1pt 2.3pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.13.1" style="background-color:#D8ECD1;">92.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.14.1" style="background-color:#D8ECD1;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.15.1" style="background-color:#D8ECD1;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.16" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.16.1" style="background-color:#D8ECD1;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.17.1" style="background-color:#D8ECD1;">8.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.18.1" style="background-color:#D8ECD1;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.19" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.19.1" style="background-color:#D8ECD1;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.20" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.20.1" style="background-color:#D8ECD1;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.21.1" style="background-color:#D8ECD1;">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.6.22.1" style="background-color:#D8ECD1;">47.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.1" rowspan="2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.7.1.1">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.2" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.3" style="padding:-1pt 2.3pt;">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.4" style="padding:-1pt 2.3pt;">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.5" style="padding:-1pt 2.3pt;">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.7.6.1" style="background-color:#D8ECD1;">17.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.7" style="padding:-1pt 2.3pt;">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.7.8.1" style="background-color:#D8ECD1;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.9" style="padding:-1pt 2.3pt;">4.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.10" style="padding:-1pt 2.3pt;">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.11" style="padding:-1pt 2.3pt;">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.12" style="padding:-1pt 2.3pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.13" style="padding:-1pt 2.3pt;">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.14" style="padding:-1pt 2.3pt;">91.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.15" style="padding:-1pt 2.3pt;">40.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.16" style="padding:-1pt 2.3pt;">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.17" style="padding:-1pt 2.3pt;">24.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.18" style="padding:-1pt 2.3pt;">7.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.19" style="padding:-1pt 2.3pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.20" style="padding:-1pt 2.3pt;">51.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.21" style="padding:-1pt 2.3pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.22" style="padding:-1pt 2.3pt;">44.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.7.23" style="padding:-1pt 2.3pt;">48.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.8.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.2.1" style="background-color:#D8ECD1;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.3" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.3.1" style="background-color:#D8ECD1;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.4.1" style="background-color:#D8ECD1;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.5" style="padding:-1pt 2.3pt;">15.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.6.1" style="background-color:#D8ECD1;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7" style="padding:-1pt 2.3pt;">39.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.8.1" style="background-color:#D8ECD1;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.9.1" style="background-color:#D8ECD1;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.10.1" style="background-color:#D8ECD1;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.11.1" style="background-color:#D8ECD1;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.12" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.12.1" style="background-color:#D8ECD1;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.13.1" style="background-color:#D8ECD1;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.14.1" style="background-color:#D8ECD1;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.15.1" style="background-color:#D8ECD1;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.16" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.16.1" style="background-color:#D8ECD1;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.17.1" style="background-color:#D8ECD1;">10.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.18.1" style="background-color:#D8ECD1;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.19" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.19.1" style="background-color:#D8ECD1;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.20" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.20.1" style="background-color:#D8ECD1;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.21.1" style="background-color:#D8ECD1;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.8.22.1" style="background-color:#D8ECD1;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.9.1" rowspan="2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.9.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.2" style="padding:-1pt 2.3pt;">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.3" style="padding:-1pt 2.3pt;">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.9.4.1" style="background-color:#D8ECD1;">90.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.5" style="padding:-1pt 2.3pt;">68.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.9.6.1" style="background-color:#D8ECD1;">23.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.7" style="padding:-1pt 2.3pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.9.8.1" style="background-color:#D8ECD1;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.9" style="padding:-1pt 2.3pt;">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.10" style="padding:-1pt 2.3pt;">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.11" style="padding:-1pt 2.3pt;">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.12" style="padding:-1pt 2.3pt;">87.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.13" style="padding:-1pt 2.3pt;">47.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.14" style="padding:-1pt 2.3pt;">94.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.15" style="padding:-1pt 2.3pt;">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.16" style="padding:-1pt 2.3pt;">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.17" style="padding:-1pt 2.3pt;">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.18" style="padding:-1pt 2.3pt;">10.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.19" style="padding:-1pt 2.3pt;">54.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.20" style="padding:-1pt 2.3pt;">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.21" style="padding:-1pt 2.3pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.22" style="padding:-1pt 2.3pt;">52.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.23" style="padding:-1pt 2.3pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.1" style="padding:-1pt 2.3pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.10.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.2" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.2.1" style="background-color:#D8ECD1;">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.3" style="padding:-1pt 2.3pt;">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.4" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.4.1" style="background-color:#D8ECD1;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.5" style="padding:-1pt 2.3pt;">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.6" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.6.1" style="background-color:#D8ECD1;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.7" style="padding:-1pt 2.3pt;">48.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.8" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.8.1" style="background-color:#D8ECD1;">10.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.9" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.9.1" style="background-color:#D8ECD1;">46.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.10" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.10.1" style="background-color:#D8ECD1;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.11" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.11.1" style="background-color:#D8ECD1;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.12" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.12.1" style="background-color:#D8ECD1;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.13" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.13.1" style="background-color:#D8ECD1;">94.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.14" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.14.1" style="background-color:#D8ECD1;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.15" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.15.1" style="background-color:#D8ECD1;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.16" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.16.1" style="background-color:#D8ECD1;">24.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.17" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.17.1" style="background-color:#D8ECD1;">12.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.18" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.18.1" style="background-color:#D8ECD1;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.19" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.19.1" style="background-color:#D8ECD1;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.20" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.20.1" style="background-color:#D8ECD1;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.21" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.21.1" style="background-color:#D8ECD1;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.10.22" style="padding:-1pt 2.3pt;"><span class="ltx_text" id="S3.T2.1.1.10.22.1" style="background-color:#D8ECD1;">56.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a zero-shot transfer experiment conducted on 20 different downstream datasets.  The experiment evaluated the performance of a Vision Transformer (ViT-B/32) model pre-trained on the RealSyn dataset.  The table shows the performance (likely accuracy or other relevant metrics) achieved on each downstream dataset, comparing the results obtained with the RealSyn pre-trained model against results using models pre-trained on other datasets (likely YFCC15M and LAION). The table highlights that pre-training with RealSyn leads to significant performance improvements, ranging from 2.3% to 14.3% on average, demonstrating the effectiveness of the RealSyn dataset in improving the generalizability of vision-language models.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot transfer on 20 downstream datasets. Pre-training ViT-B/32 on RealSyn achieves 2.3%-14.3% average performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="14" id="S4.T3.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td" id="S4.T3.1.1.2.1"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2"></td>
<td class="ltx_td ltx_align_center" colspan="6" id="S4.T3.1.1.2.3"><span class="ltx_text" id="S4.T3.1.1.2.3.1" style="background-color:#E8E8E8;">Text Retrieval</span></td>
<td class="ltx_td ltx_align_center" colspan="6" id="S4.T3.1.1.2.4"><span class="ltx_text" id="S4.T3.1.1.2.4.1" style="background-color:#E8E8E8;">Image Retrieval</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td" id="S4.T3.1.1.3.1"></td>
<td class="ltx_td" id="S4.T3.1.1.3.2"></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.T3.1.1.3.3"><span class="ltx_text" id="S4.T3.1.1.3.3.1" style="background-color:#E8E8E8;">Flickr30k</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.T3.1.1.3.4"><span class="ltx_text" id="S4.T3.1.1.3.4.1" style="background-color:#E8E8E8;">MSCOCO</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.T3.1.1.3.5"><span class="ltx_text" id="S4.T3.1.1.3.5.1" style="background-color:#E8E8E8;">Flickr30k</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.T3.1.1.3.6"><span class="ltx_text" id="S4.T3.1.1.3.6.1" style="background-color:#E8E8E8;">MSCOCO</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.1"><span class="ltx_text" id="S4.T3.1.1.4.1.1" style="background-color:#E8E8E8;">Data Scale</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2"><span class="ltx_text" id="S4.T3.1.1.4.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3"><span class="ltx_text" id="S4.T3.1.1.4.3.1" style="background-color:#E8E8E8;">R@1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4"><span class="ltx_text" id="S4.T3.1.1.4.4.1" style="background-color:#E8E8E8;">R@5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.5"><span class="ltx_text" id="S4.T3.1.1.4.5.1" style="background-color:#E8E8E8;">R@10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.6"><span class="ltx_text" id="S4.T3.1.1.4.6.1" style="background-color:#E8E8E8;">R@1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.7"><span class="ltx_text" id="S4.T3.1.1.4.7.1" style="background-color:#E8E8E8;">R@5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.8"><span class="ltx_text" id="S4.T3.1.1.4.8.1" style="background-color:#E8E8E8;">R@10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.9"><span class="ltx_text" id="S4.T3.1.1.4.9.1" style="background-color:#E8E8E8;">R@1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.10"><span class="ltx_text" id="S4.T3.1.1.4.10.1" style="background-color:#E8E8E8;">R@5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.11"><span class="ltx_text" id="S4.T3.1.1.4.11.1" style="background-color:#E8E8E8;">R@10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.12"><span class="ltx_text" id="S4.T3.1.1.4.12.1" style="background-color:#E8E8E8;">R@1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.13"><span class="ltx_text" id="S4.T3.1.1.4.13.1" style="background-color:#E8E8E8;">R@5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.14"><span class="ltx_text" id="S4.T3.1.1.4.14.1" style="background-color:#E8E8E8;">R@10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="14" id="S4.T3.1.1.5.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.1.6.1.1">15M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.2">YFCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.3">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.4">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.5">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.7">45.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.8">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.9">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.10">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.11">58.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.12">13.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.13">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.14">43.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.1">LAION</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.2">49.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.3">76.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.4">84.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.5">28.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.8">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.9">60.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.10">70.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.11">17.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.12">38.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.13">49.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.8.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.2"><span class="ltx_text" id="S4.T3.1.1.8.2.1" style="background-color:#D8ECD1;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.3"><span class="ltx_text" id="S4.T3.1.1.8.3.1" style="background-color:#D8ECD1;">91.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.4"><span class="ltx_text" id="S4.T3.1.1.8.4.1" style="background-color:#D8ECD1;">95.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.5"><span class="ltx_text" id="S4.T3.1.1.8.5.1" style="background-color:#D8ECD1;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.6"><span class="ltx_text" id="S4.T3.1.1.8.6.1" style="background-color:#D8ECD1;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.7"><span class="ltx_text" id="S4.T3.1.1.8.7.1" style="background-color:#D8ECD1;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.8"><span class="ltx_text" id="S4.T3.1.1.8.8.1" style="background-color:#D8ECD1;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.9"><span class="ltx_text" id="S4.T3.1.1.8.9.1" style="background-color:#D8ECD1;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.10"><span class="ltx_text" id="S4.T3.1.1.8.10.1" style="background-color:#D8ECD1;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.11"><span class="ltx_text" id="S4.T3.1.1.8.11.1" style="background-color:#D8ECD1;">25.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.12"><span class="ltx_text" id="S4.T3.1.1.8.12.1" style="background-color:#D8ECD1;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.13"><span class="ltx_text" id="S4.T3.1.1.8.13.1" style="background-color:#D8ECD1;">62.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.1" rowspan="2"><span class="ltx_text" id="S4.T3.1.1.9.1.1">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.3">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.4">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.5">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.6">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.7">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.8">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.9">42.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.10">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.11">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.12">22.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.13">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.9.14">57.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.10.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.2"><span class="ltx_text" id="S4.T3.1.1.10.2.1" style="background-color:#D8ECD1;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.3"><span class="ltx_text" id="S4.T3.1.1.10.3.1" style="background-color:#D8ECD1;">93.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.4"><span class="ltx_text" id="S4.T3.1.1.10.4.1" style="background-color:#D8ECD1;">96.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.5"><span class="ltx_text" id="S4.T3.1.1.10.5.1" style="background-color:#D8ECD1;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.6"><span class="ltx_text" id="S4.T3.1.1.10.6.1" style="background-color:#D8ECD1;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.7"><span class="ltx_text" id="S4.T3.1.1.10.7.1" style="background-color:#D8ECD1;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.8"><span class="ltx_text" id="S4.T3.1.1.10.8.1" style="background-color:#D8ECD1;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9"><span class="ltx_text" id="S4.T3.1.1.10.9.1" style="background-color:#D8ECD1;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10"><span class="ltx_text" id="S4.T3.1.1.10.10.1" style="background-color:#D8ECD1;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.11"><span class="ltx_text" id="S4.T3.1.1.10.11.1" style="background-color:#D8ECD1;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.12"><span class="ltx_text" id="S4.T3.1.1.10.12.1" style="background-color:#D8ECD1;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.13"><span class="ltx_text" id="S4.T3.1.1.10.13.1" style="background-color:#D8ECD1;">66.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.11.1" rowspan="2"><span class="ltx_text" id="S4.T3.1.1.11.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.3">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.4">87.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.5">93.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.6">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.7">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.8">78.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.9">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.10">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.11">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.12">27.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.13">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.11.14">63.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.12.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.2"><span class="ltx_text" id="S4.T3.1.1.12.2.1" style="background-color:#D8ECD1;">81.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.3"><span class="ltx_text" id="S4.T3.1.1.12.3.1" style="background-color:#D8ECD1;">96.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.4"><span class="ltx_text" id="S4.T3.1.1.12.4.1" style="background-color:#D8ECD1;">97.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.5"><span class="ltx_text" id="S4.T3.1.1.12.5.1" style="background-color:#D8ECD1;">52.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.6"><span class="ltx_text" id="S4.T3.1.1.12.6.1" style="background-color:#D8ECD1;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.7"><span class="ltx_text" id="S4.T3.1.1.12.7.1" style="background-color:#D8ECD1;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.8"><span class="ltx_text" id="S4.T3.1.1.12.8.1" style="background-color:#D8ECD1;">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.9"><span class="ltx_text" id="S4.T3.1.1.12.9.1" style="background-color:#D8ECD1;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.10"><span class="ltx_text" id="S4.T3.1.1.12.10.1" style="background-color:#D8ECD1;">90.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.11"><span class="ltx_text" id="S4.T3.1.1.12.11.1" style="background-color:#D8ECD1;">32.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.12"><span class="ltx_text" id="S4.T3.1.1.12.12.1" style="background-color:#D8ECD1;">58.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.12.13"><span class="ltx_text" id="S4.T3.1.1.12.13.1" style="background-color:#D8ECD1;">70.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot image-text retrieval experiments conducted on two benchmark datasets: Flickr30k and MSCOCO.  The experiments evaluated the performance of the CLIP-B/32 model pre-trained on the RealSyn dataset.  The table shows Recall@1, Recall@5, and Recall@10 metrics for both image retrieval and text retrieval tasks across three different scales of the RealSyn dataset (15M, 30M, and 100M). The results demonstrate the significant improvement in zero-shot image-text retrieval performance achieved by pre-training on the RealSyn dataset compared to results from other large-scale pre-training datasets such as LAION and YFCC.
> <details>
> <summary>read the caption</summary>
> Table 3: Zero-shot image-text retrieval performance on Flickr30k and MSCOCO. Pre-training CLIP-B/32 on RealSyn dataset achieves a significant improvement on all metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="8" id="S4.T4.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.1"><span class="ltx_text" id="S4.T4.1.1.2.1.1" style="background-color:#E8E8E8;">Data Scale</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2"><span class="ltx_text" id="S4.T4.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.3"><span class="ltx_text" id="S4.T4.1.1.2.3.1" style="background-color:#E8E8E8;">IN-V2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.4"><span class="ltx_text" id="S4.T4.1.1.2.4.1" style="background-color:#E8E8E8;">IN-A</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.5"><span class="ltx_text" id="S4.T4.1.1.2.5.1" style="background-color:#E8E8E8;">IN-R</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.6"><span class="ltx_text" id="S4.T4.1.1.2.6.1" style="background-color:#E8E8E8;">ObjectNet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.7"><span class="ltx_text" id="S4.T4.1.1.2.7.1" style="background-color:#E8E8E8;">IN-Sketch</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.8.1" style="background-color:#E8E8E8;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="8" id="S4.T4.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.1.4.1.1">15M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.2">YFCC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.3">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.4">12.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.5">20.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.6">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.7">6.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.8">18.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.1">LAION</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3">6.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4">46.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.6">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.7">27.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.6.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.2"><span class="ltx_text" id="S4.T4.1.1.6.2.1" style="background-color:#D8ECD1;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.3"><span class="ltx_text" id="S4.T4.1.1.6.3.1" style="background-color:#D8ECD1;">12.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.4"><span class="ltx_text" id="S4.T4.1.1.6.4.1" style="background-color:#D8ECD1;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5"><span class="ltx_text" id="S4.T4.1.1.6.5.1" style="background-color:#D8ECD1;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6"><span class="ltx_text" id="S4.T4.1.1.6.6.1" style="background-color:#D8ECD1;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.7"><span class="ltx_text" id="S4.T4.1.1.6.7.1" style="background-color:#D8ECD1;">31.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.1" rowspan="2"><span class="ltx_text" id="S4.T4.1.1.7.1.1">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.3">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.4">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.5">54.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.6">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.7">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.8">33.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.8.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.2"><span class="ltx_text" id="S4.T4.1.1.8.2.1" style="background-color:#D8ECD1;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.3"><span class="ltx_text" id="S4.T4.1.1.8.3.1" style="background-color:#D8ECD1;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.4"><span class="ltx_text" id="S4.T4.1.1.8.4.1" style="background-color:#D8ECD1;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.5"><span class="ltx_text" id="S4.T4.1.1.8.5.1" style="background-color:#D8ECD1;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.6"><span class="ltx_text" id="S4.T4.1.1.8.6.1" style="background-color:#D8ECD1;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7"><span class="ltx_text" id="S4.T4.1.1.8.7.1" style="background-color:#D8ECD1;">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.1.9.1" rowspan="2"><span class="ltx_text" id="S4.T4.1.1.9.1.1">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.3">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.4">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.5">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.6">42.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.7">37.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8">39.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.10.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.2"><span class="ltx_text" id="S4.T4.1.1.10.2.1" style="background-color:#D8ECD1;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.3"><span class="ltx_text" id="S4.T4.1.1.10.3.1" style="background-color:#D8ECD1;">19.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.4"><span class="ltx_text" id="S4.T4.1.1.10.4.1" style="background-color:#D8ECD1;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.5"><span class="ltx_text" id="S4.T4.1.1.10.5.1" style="background-color:#D8ECD1;">45.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.6"><span class="ltx_text" id="S4.T4.1.1.10.6.1" style="background-color:#D8ECD1;">37.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.10.7"><span class="ltx_text" id="S4.T4.1.1.10.7.1" style="background-color:#D8ECD1;">42.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a zero-shot robustness comparison across various datasets, showcasing the performance of the CLIP-B/32 model pre-trained on the RealSyn dataset.  It compares the model's performance on datasets representing various levels of visual complexity and noise, such as images with fine-grained details (ImageNet), images with more visual noise and ambiguity (ObjectNet), and sketch-style images (IN-Sketch).  Superior performance on all these diverse datasets indicates the increased robustness of the RealSyn-pretrained model against variations in visual input quality and style.
> <details>
> <summary>read the caption</summary>
> Table 4: Zero-shot robustness comparison. Pre-training CLIP-B/32 on RealSyn demonstrates superior robustness across all datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="5" id="S5.T5.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.2.1"><span class="ltx_text" id="S5.T5.1.1.2.1.1" style="background-color:#E8E8E8;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.2.2">
<span class="ltx_inline-block" id="S5.T5.1.1.2.2.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T5.1.1.2.2.1.1">Dataset</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.2.3">
<span class="ltx_inline-block" id="S5.T5.1.1.2.3.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T5.1.1.2.3.1.1">Linear probe</span>
<span class="ltx_p" id="S5.T5.1.1.2.3.1.2">Avg</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.2.4">
<span class="ltx_inline-block" id="S5.T5.1.1.2.4.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T5.1.1.2.4.1.1">Transfer</span>
<span class="ltx_p" id="S5.T5.1.1.2.4.1.2">Avg</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.2.5">
<span class="ltx_inline-block" id="S5.T5.1.1.2.5.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T5.1.1.2.5.1.1">Robustness</span>
<span class="ltx_p" id="S5.T5.1.1.2.5.1.2">Avg</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="5" id="S5.T5.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.1.1.4.1" rowspan="4"><span class="ltx_text" id="S5.T5.1.1.4.1.1">CLIP-B/32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.2"><span class="ltx_text" id="S5.T5.1.1.4.2.1" style="color:#B3B3B3;">YFCC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.3"><span class="ltx_text" id="S5.T5.1.1.4.3.1" style="color:#B3B3B3;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4"><span class="ltx_text" id="S5.T5.1.1.4.4.1" style="color:#B3B3B3;">33.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.5"><span class="ltx_text" id="S5.T5.1.1.4.5.1" style="color:#B3B3B3;">18.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.1"><span class="ltx_text" id="S5.T5.1.1.5.1.1" style="color:#B3B3B3;">LAION</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.2"><span class="ltx_text" id="S5.T5.1.1.5.2.1" style="color:#B3B3B3;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.3"><span class="ltx_text" id="S5.T5.1.1.5.3.1" style="color:#B3B3B3;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.4"><span class="ltx_text" id="S5.T5.1.1.5.4.1" style="color:#B3B3B3;">27.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.1">
<span class="ltx_text ltx_font_italic" id="S5.T5.1.1.6.1.1">RealSyn</span>-Random</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.2">70.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.3">46.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.4">30.5</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.7.1">
<span class="ltx_text ltx_font_italic" id="S5.T5.1.1.7.1.1">RealSyn</span>-Balance</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.7.2"><span class="ltx_text" id="S5.T5.1.1.7.2.1" style="background-color:#D8ECD1;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.7.3"><span class="ltx_text" id="S5.T5.1.1.7.3.1" style="background-color:#D8ECD1;">47.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.7.4"><span class="ltx_text" id="S5.T5.1.1.7.4.1" style="background-color:#D8ECD1;">31.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of two sampling methods, concept balance sampling and random sampling, used in creating the 15M subset of the RealSyn dataset.  It shows the average performance of each sampling method on three downstream tasks (linear probe, zero-shot transfer, and zero-shot robustness) to demonstrate the effectiveness of concept balance sampling in improving model performance.  The results illustrate the impact of the sampling technique on the dataset's ability to generalize across different tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of concept balance sampling and random sampling on the 15M dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.5.5.5">
<tr class="ltx_tr" id="S5.T6.5.5.5.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="6" id="S5.T6.5.5.5.6.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.5" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.1.1.1"><math alttext="T^{1}_{r}" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.1.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.1.1.1.1.1.m1.1a"><msubsup id="S5.T6.1.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T6.1.1.1.1.1.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.1.1.1.1.1.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.1.1.1.1.1.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.1.1.1.1.1.m1.1.1.3.cmml">r</mi><mn id="S5.T6.1.1.1.1.1.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.1.1.1.1.1.m1.1.1.2.3.cmml">1</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.1.m1.1b"><apply id="S5.T6.1.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1">subscript</csymbol><apply id="S5.T6.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.1.1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S5.T6.1.1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.1.1.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.1.1.1.1.1.m1.1.1.2.3">1</cn></apply><ci id="S5.T6.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T6.1.1.1.1.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.1.m1.1c">T^{1}_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.1.m1.1d">italic_T start_POSTSUPERSCRIPT 1 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.2.2.2.2"><math alttext="T^{2}_{r}" class="ltx_Math" display="inline" id="S5.T6.2.2.2.2.2.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.2.2.2.2.2.m1.1a"><msubsup id="S5.T6.2.2.2.2.2.m1.1.1" xref="S5.T6.2.2.2.2.2.m1.1.1.cmml"><mi id="S5.T6.2.2.2.2.2.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.2.2.2.2.2.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.2.2.2.2.2.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.2.2.2.2.2.m1.1.1.3.cmml">r</mi><mn id="S5.T6.2.2.2.2.2.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.2.2.2.2.2.m1.1.1.2.3.cmml">2</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.2.2.m1.1b"><apply id="S5.T6.2.2.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.2.2.2.2.2.m1.1.1.1.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1">subscript</csymbol><apply id="S5.T6.2.2.2.2.2.m1.1.1.2.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.2.2.2.2.2.m1.1.1.2.1.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S5.T6.2.2.2.2.2.m1.1.1.2.2.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.2.2.2.2.2.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.2.2.2.2.2.m1.1.1.2.3">2</cn></apply><ci id="S5.T6.2.2.2.2.2.m1.1.1.3.cmml" xref="S5.T6.2.2.2.2.2.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.2.2.m1.1c">T^{2}_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.2.2.m1.1d">italic_T start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.3.3.3.3"><math alttext="T^{3}_{r}" class="ltx_Math" display="inline" id="S5.T6.3.3.3.3.3.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.3.3.3.3.3.m1.1a"><msubsup id="S5.T6.3.3.3.3.3.m1.1.1" xref="S5.T6.3.3.3.3.3.m1.1.1.cmml"><mi id="S5.T6.3.3.3.3.3.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.3.3.3.3.3.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.3.3.3.3.3.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.3.3.3.3.3.m1.1.1.3.cmml">r</mi><mn id="S5.T6.3.3.3.3.3.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.3.3.3.3.3.m1.1.1.2.3.cmml">3</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.3.3.m1.1b"><apply id="S5.T6.3.3.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.3.3.3.3.3.m1.1.1.1.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1">subscript</csymbol><apply id="S5.T6.3.3.3.3.3.m1.1.1.2.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.3.3.3.3.3.m1.1.1.2.1.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1">superscript</csymbol><ci id="S5.T6.3.3.3.3.3.m1.1.1.2.2.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.3.3.3.3.3.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.3.3.3.3.3.m1.1.1.2.3">3</cn></apply><ci id="S5.T6.3.3.3.3.3.m1.1.1.3.cmml" xref="S5.T6.3.3.3.3.3.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.3.3.m1.1c">T^{3}_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.3.3.m1.1d">italic_T start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4.4.4"><math alttext="T^{4}_{r}" class="ltx_Math" display="inline" id="S5.T6.4.4.4.4.4.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.4.4.4.4.4.m1.1a"><msubsup id="S5.T6.4.4.4.4.4.m1.1.1" xref="S5.T6.4.4.4.4.4.m1.1.1.cmml"><mi id="S5.T6.4.4.4.4.4.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.4.4.4.4.4.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.4.4.4.4.4.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.4.4.4.4.4.m1.1.1.3.cmml">r</mi><mn id="S5.T6.4.4.4.4.4.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.4.4.4.4.4.m1.1.1.2.3.cmml">4</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.4.4.m1.1b"><apply id="S5.T6.4.4.4.4.4.m1.1.1.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.4.4.4.4.4.m1.1.1.1.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1">subscript</csymbol><apply id="S5.T6.4.4.4.4.4.m1.1.1.2.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.4.4.4.4.4.m1.1.1.2.1.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1">superscript</csymbol><ci id="S5.T6.4.4.4.4.4.m1.1.1.2.2.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.4.4.4.4.4.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.4.4.4.4.4.m1.1.1.2.3">4</cn></apply><ci id="S5.T6.4.4.4.4.4.m1.1.1.3.cmml" xref="S5.T6.4.4.4.4.4.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.4.4.m1.1c">T^{4}_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.4.4.m1.1d">italic_T start_POSTSUPERSCRIPT 4 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.5.5"><math alttext="T^{5}_{r}" class="ltx_Math" display="inline" id="S5.T6.5.5.5.5.5.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.5.5.5.5.5.m1.1a"><msubsup id="S5.T6.5.5.5.5.5.m1.1.1" xref="S5.T6.5.5.5.5.5.m1.1.1.cmml"><mi id="S5.T6.5.5.5.5.5.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.5.5.5.5.5.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.5.5.5.5.5.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.5.5.5.5.5.m1.1.1.3.cmml">r</mi><mn id="S5.T6.5.5.5.5.5.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.5.5.5.5.5.m1.1.1.2.3.cmml">5</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.5.5.5.m1.1b"><apply id="S5.T6.5.5.5.5.5.m1.1.1.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.5.5.5.5.5.m1.1.1.1.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1">subscript</csymbol><apply id="S5.T6.5.5.5.5.5.m1.1.1.2.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.5.5.5.5.5.m1.1.1.2.1.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S5.T6.5.5.5.5.5.m1.1.1.2.2.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.5.5.5.5.5.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.5.5.5.5.5.m1.1.1.2.3">5</cn></apply><ci id="S5.T6.5.5.5.5.5.m1.1.1.3.cmml" xref="S5.T6.5.5.5.5.5.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.5.5.5.m1.1c">T^{5}_{r}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT 5 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.5.6">
<span class="ltx_inline-block" id="S5.T6.5.5.5.5.6.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T6.5.5.5.5.6.1.1">Linear probe</span>
<span class="ltx_p" id="S5.T6.5.5.5.5.6.1.2">Avg</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="6" id="S5.T6.5.5.5.7.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.5.5.8.1">✓</td>
<td class="ltx_td ltx_border_t" id="S5.T6.5.5.5.8.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.5.5.5.8.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.5.5.5.8.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.5.5.5.8.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.5.5.8.6">70.3</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.9">
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.9.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.9.2">✓</td>
<td class="ltx_td" id="S5.T6.5.5.5.9.3"></td>
<td class="ltx_td" id="S5.T6.5.5.5.9.4"></td>
<td class="ltx_td" id="S5.T6.5.5.5.9.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.9.6">71.0</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.10">
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.10.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.10.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.10.3">✓</td>
<td class="ltx_td" id="S5.T6.5.5.5.10.4"></td>
<td class="ltx_td" id="S5.T6.5.5.5.10.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.10.6"><span class="ltx_text" id="S5.T6.5.5.5.10.6.1" style="background-color:#D8ECD1;">71.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.11">
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11.4">✓</td>
<td class="ltx_td" id="S5.T6.5.5.5.11.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.5.11.6">70.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5.5.12">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.5.5.5.12.6">70.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different text types on the performance of a vision-language model trained on the 15M subset of the RealSyn dataset.  Specifically, it examines the effect of using varying numbers of retrieved realistic texts (denoted as T<sup>k</sup><sub>r</sub>, where k represents the k-th retrieved text) and their corresponding image-semantic augmented synthetic texts (denoted as T<sup>k</sup><sub>s</sub>) on the model's performance. The results help determine the optimal combination of realistic and synthetic texts for achieving the best performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation experiment results using different types of text on the 15M dataset. Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT: the k𝑘kitalic_k-th retrieved semantic relevant realistic text. Tsksubscriptsuperscript𝑇𝑘𝑠T^{k}_{s}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT: the image semantic augmented synthetic text for Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.10.5.5">
<tr class="ltx_tr" id="S5.T6.10.5.5.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="6" id="S5.T6.10.5.5.6.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.5" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="S5.T6.6.1.1.1.1"><math alttext="T^{1}_{s}" class="ltx_Math" display="inline" id="S5.T6.6.1.1.1.1.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.6.1.1.1.1.m1.1a"><msubsup id="S5.T6.6.1.1.1.1.m1.1.1" xref="S5.T6.6.1.1.1.1.m1.1.1.cmml"><mi id="S5.T6.6.1.1.1.1.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.6.1.1.1.1.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.6.1.1.1.1.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.6.1.1.1.1.m1.1.1.3.cmml">s</mi><mn id="S5.T6.6.1.1.1.1.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.6.1.1.1.1.m1.1.1.2.3.cmml">1</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.6.1.1.1.1.m1.1b"><apply id="S5.T6.6.1.1.1.1.m1.1.1.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.6.1.1.1.1.m1.1.1.1.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1">subscript</csymbol><apply id="S5.T6.6.1.1.1.1.m1.1.1.2.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.6.1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S5.T6.6.1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.6.1.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.6.1.1.1.1.m1.1.1.2.3">1</cn></apply><ci id="S5.T6.6.1.1.1.1.m1.1.1.3.cmml" xref="S5.T6.6.1.1.1.1.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.1.1.1.1.m1.1c">T^{1}_{s}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.1.1.1.1.m1.1d">italic_T start_POSTSUPERSCRIPT 1 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.2.2.2.2"><math alttext="T^{2}_{s}" class="ltx_Math" display="inline" id="S5.T6.7.2.2.2.2.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.7.2.2.2.2.m1.1a"><msubsup id="S5.T6.7.2.2.2.2.m1.1.1" xref="S5.T6.7.2.2.2.2.m1.1.1.cmml"><mi id="S5.T6.7.2.2.2.2.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.7.2.2.2.2.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.7.2.2.2.2.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.7.2.2.2.2.m1.1.1.3.cmml">s</mi><mn id="S5.T6.7.2.2.2.2.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.7.2.2.2.2.m1.1.1.2.3.cmml">2</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.7.2.2.2.2.m1.1b"><apply id="S5.T6.7.2.2.2.2.m1.1.1.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.7.2.2.2.2.m1.1.1.1.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1">subscript</csymbol><apply id="S5.T6.7.2.2.2.2.m1.1.1.2.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.7.2.2.2.2.m1.1.1.2.1.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S5.T6.7.2.2.2.2.m1.1.1.2.2.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.7.2.2.2.2.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.7.2.2.2.2.m1.1.1.2.3">2</cn></apply><ci id="S5.T6.7.2.2.2.2.m1.1.1.3.cmml" xref="S5.T6.7.2.2.2.2.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.2.2.2.2.m1.1c">T^{2}_{s}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.2.2.2.2.m1.1d">italic_T start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.3.3.3.3"><math alttext="T^{3}_{s}" class="ltx_Math" display="inline" id="S5.T6.8.3.3.3.3.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.8.3.3.3.3.m1.1a"><msubsup id="S5.T6.8.3.3.3.3.m1.1.1" xref="S5.T6.8.3.3.3.3.m1.1.1.cmml"><mi id="S5.T6.8.3.3.3.3.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.8.3.3.3.3.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.8.3.3.3.3.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.8.3.3.3.3.m1.1.1.3.cmml">s</mi><mn id="S5.T6.8.3.3.3.3.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.8.3.3.3.3.m1.1.1.2.3.cmml">3</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.8.3.3.3.3.m1.1b"><apply id="S5.T6.8.3.3.3.3.m1.1.1.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.8.3.3.3.3.m1.1.1.1.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1">subscript</csymbol><apply id="S5.T6.8.3.3.3.3.m1.1.1.2.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.8.3.3.3.3.m1.1.1.2.1.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1">superscript</csymbol><ci id="S5.T6.8.3.3.3.3.m1.1.1.2.2.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.8.3.3.3.3.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.8.3.3.3.3.m1.1.1.2.3">3</cn></apply><ci id="S5.T6.8.3.3.3.3.m1.1.1.3.cmml" xref="S5.T6.8.3.3.3.3.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.8.3.3.3.3.m1.1c">T^{3}_{s}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.8.3.3.3.3.m1.1d">italic_T start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.4.4.4.4"><math alttext="T^{4}_{s}" class="ltx_Math" display="inline" id="S5.T6.9.4.4.4.4.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.9.4.4.4.4.m1.1a"><msubsup id="S5.T6.9.4.4.4.4.m1.1.1" xref="S5.T6.9.4.4.4.4.m1.1.1.cmml"><mi id="S5.T6.9.4.4.4.4.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.9.4.4.4.4.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.9.4.4.4.4.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.9.4.4.4.4.m1.1.1.3.cmml">s</mi><mn id="S5.T6.9.4.4.4.4.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.9.4.4.4.4.m1.1.1.2.3.cmml">4</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.9.4.4.4.4.m1.1b"><apply id="S5.T6.9.4.4.4.4.m1.1.1.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.9.4.4.4.4.m1.1.1.1.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1">subscript</csymbol><apply id="S5.T6.9.4.4.4.4.m1.1.1.2.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.9.4.4.4.4.m1.1.1.2.1.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1">superscript</csymbol><ci id="S5.T6.9.4.4.4.4.m1.1.1.2.2.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.9.4.4.4.4.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.9.4.4.4.4.m1.1.1.2.3">4</cn></apply><ci id="S5.T6.9.4.4.4.4.m1.1.1.3.cmml" xref="S5.T6.9.4.4.4.4.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.9.4.4.4.4.m1.1c">T^{4}_{s}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.9.4.4.4.4.m1.1d">italic_T start_POSTSUPERSCRIPT 4 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.5.5"><math alttext="T^{5}_{s}" class="ltx_Math" display="inline" id="S5.T6.10.5.5.5.5.m1.1" style="background-color:#E8E8E8;"><semantics id="S5.T6.10.5.5.5.5.m1.1a"><msubsup id="S5.T6.10.5.5.5.5.m1.1.1" xref="S5.T6.10.5.5.5.5.m1.1.1.cmml"><mi id="S5.T6.10.5.5.5.5.m1.1.1.2.2" mathbackground="#E8E8E8" xref="S5.T6.10.5.5.5.5.m1.1.1.2.2.cmml">T</mi><mi id="S5.T6.10.5.5.5.5.m1.1.1.3" mathbackground="#E8E8E8" xref="S5.T6.10.5.5.5.5.m1.1.1.3.cmml">s</mi><mn id="S5.T6.10.5.5.5.5.m1.1.1.2.3" mathbackground="#E8E8E8" xref="S5.T6.10.5.5.5.5.m1.1.1.2.3.cmml">5</mn></msubsup><annotation-xml encoding="MathML-Content" id="S5.T6.10.5.5.5.5.m1.1b"><apply id="S5.T6.10.5.5.5.5.m1.1.1.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.10.5.5.5.5.m1.1.1.1.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1">subscript</csymbol><apply id="S5.T6.10.5.5.5.5.m1.1.1.2.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.10.5.5.5.5.m1.1.1.2.1.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S5.T6.10.5.5.5.5.m1.1.1.2.2.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1.2.2">𝑇</ci><cn id="S5.T6.10.5.5.5.5.m1.1.1.2.3.cmml" type="integer" xref="S5.T6.10.5.5.5.5.m1.1.1.2.3">5</cn></apply><ci id="S5.T6.10.5.5.5.5.m1.1.1.3.cmml" xref="S5.T6.10.5.5.5.5.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.10.5.5.5.5.m1.1c">T^{5}_{s}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.10.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT 5 end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.5.6">
<span class="ltx_inline-block" id="S5.T6.10.5.5.5.6.1" style="background-color:#E8E8E8;">
<span class="ltx_p" id="S5.T6.10.5.5.5.6.1.1">Linear probe</span>
<span class="ltx_p" id="S5.T6.10.5.5.5.6.1.2">Avg</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="6" id="S5.T6.10.5.5.7.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.5.5.8.1">✓</td>
<td class="ltx_td ltx_border_t" id="S5.T6.10.5.5.8.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.10.5.5.8.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.10.5.5.8.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T6.10.5.5.8.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.5.5.8.6"><span class="ltx_text" id="S5.T6.10.5.5.8.6.1" style="background-color:#D8ECD1;">70.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.9">
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.9.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.9.2">✓</td>
<td class="ltx_td" id="S5.T6.10.5.5.9.3"></td>
<td class="ltx_td" id="S5.T6.10.5.5.9.4"></td>
<td class="ltx_td" id="S5.T6.10.5.5.9.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.9.6">70.0</td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.10">
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.10.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.10.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.10.3">✓</td>
<td class="ltx_td" id="S5.T6.10.5.5.10.4"></td>
<td class="ltx_td" id="S5.T6.10.5.5.10.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.10.6">69.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.11">
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.11.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.11.2">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.11.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.11.4">✓</td>
<td class="ltx_td" id="S5.T6.10.5.5.11.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.5.5.11.6">69.4</td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.5.5.12">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.10.5.5.12.6">69.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the pre-training phase of the CLIP model.  It lists each hyperparameter (e.g., initial temperature, weight decay, batch size, learning rate, learning rate scheduler, and Adam optimizer settings), along with its corresponding value. These settings are crucial for reproducing the experimental results presented in the paper and understanding the model's training process.  The table provides a concise overview of the model's training configuration.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyperparameters used for CLIP pre-training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.9.9">
<tr class="ltx_tr" id="A1.T7.9.9.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T7.9.9.10.1">Hyperparameter</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.9.9.10.2">Value</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.1.2">Initial temperature</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.1.1"><math alttext="0.07" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><mn id="A1.T7.1.1.1.1.m1.1.1" xref="A1.T7.1.1.1.1.m1.1.1.cmml">0.07</mn><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><cn id="A1.T7.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T7.1.1.1.1.m1.1.1">0.07</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">0.07</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">0.07</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.2.2.2.2">Weight decay</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.2.1"><math alttext="0.2" class="ltx_Math" display="inline" id="A1.T7.2.2.2.1.m1.1"><semantics id="A1.T7.2.2.2.1.m1.1a"><mn id="A1.T7.2.2.2.1.m1.1.1" xref="A1.T7.2.2.2.1.m1.1.1.cmml">0.2</mn><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.1.m1.1b"><cn id="A1.T7.2.2.2.1.m1.1.1.cmml" type="float" xref="A1.T7.2.2.2.1.m1.1.1">0.2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.1.m1.1c">0.2</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.1.m1.1d">0.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.9.9.11.1">Batch size</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.11.2">4096</td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.9.9.12.1">Learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.12.2">0.001</td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.9.9.13.1">Learning rate scheduler</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.13.2">OneCycleLR</td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.9.9.14.1">Pct start</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.14.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.9.9.15.1">Training epochs</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.15.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.3.3.3.2">GPU</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.3.1">
<math alttext="8\times" class="ltx_math_unparsed" display="inline" id="A1.T7.3.3.3.1.m1.1"><semantics id="A1.T7.3.3.3.1.m1.1a"><mrow id="A1.T7.3.3.3.1.m1.1b"><mn id="A1.T7.3.3.3.1.m1.1.1">8</mn><mo id="A1.T7.3.3.3.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A1.T7.3.3.3.1.m1.1c">8\times</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.1.m1.1d">8 ×</annotation></semantics></math>A100</td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.4.4.1">Adam <math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T7.4.4.4.1.m1.1"><semantics id="A1.T7.4.4.4.1.m1.1a"><msub id="A1.T7.4.4.4.1.m1.1.1" xref="A1.T7.4.4.4.1.m1.1.1.cmml"><mi id="A1.T7.4.4.4.1.m1.1.1.2" xref="A1.T7.4.4.4.1.m1.1.1.2.cmml">β</mi><mn id="A1.T7.4.4.4.1.m1.1.1.3" xref="A1.T7.4.4.4.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.1.m1.1b"><apply id="A1.T7.4.4.4.1.m1.1.1.cmml" xref="A1.T7.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.4.4.4.1.m1.1.1.1.cmml" xref="A1.T7.4.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T7.4.4.4.1.m1.1.1.2.cmml" xref="A1.T7.4.4.4.1.m1.1.1.2">𝛽</ci><cn id="A1.T7.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.4.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.2"><math alttext="0.9" class="ltx_Math" display="inline" id="A1.T7.5.5.5.2.m1.1"><semantics id="A1.T7.5.5.5.2.m1.1a"><mn id="A1.T7.5.5.5.2.m1.1.1" xref="A1.T7.5.5.5.2.m1.1.1.cmml">0.9</mn><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.5.2.m1.1b"><cn id="A1.T7.5.5.5.2.m1.1.1.cmml" type="float" xref="A1.T7.5.5.5.2.m1.1.1">0.9</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.5.2.m1.1c">0.9</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.5.2.m1.1d">0.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.6.6.6.1">Adam <math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T7.6.6.6.1.m1.1"><semantics id="A1.T7.6.6.6.1.m1.1a"><msub id="A1.T7.6.6.6.1.m1.1.1" xref="A1.T7.6.6.6.1.m1.1.1.cmml"><mi id="A1.T7.6.6.6.1.m1.1.1.2" xref="A1.T7.6.6.6.1.m1.1.1.2.cmml">β</mi><mn id="A1.T7.6.6.6.1.m1.1.1.3" xref="A1.T7.6.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.6.1.m1.1b"><apply id="A1.T7.6.6.6.1.m1.1.1.cmml" xref="A1.T7.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.6.6.6.1.m1.1.1.1.cmml" xref="A1.T7.6.6.6.1.m1.1.1">subscript</csymbol><ci id="A1.T7.6.6.6.1.m1.1.1.2.cmml" xref="A1.T7.6.6.6.1.m1.1.1.2">𝛽</ci><cn id="A1.T7.6.6.6.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.6.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.6.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.6.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.7.2"><math alttext="0.98" class="ltx_Math" display="inline" id="A1.T7.7.7.7.2.m1.1"><semantics id="A1.T7.7.7.7.2.m1.1a"><mn id="A1.T7.7.7.7.2.m1.1.1" xref="A1.T7.7.7.7.2.m1.1.1.cmml">0.98</mn><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.7.2.m1.1b"><cn id="A1.T7.7.7.7.2.m1.1.1.cmml" type="float" xref="A1.T7.7.7.7.2.m1.1.1">0.98</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.7.2.m1.1c">0.98</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.7.2.m1.1d">0.98</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.8.8.8.1">Adam <math alttext="\epsilon" class="ltx_Math" display="inline" id="A1.T7.8.8.8.1.m1.1"><semantics id="A1.T7.8.8.8.1.m1.1a"><mi id="A1.T7.8.8.8.1.m1.1.1" xref="A1.T7.8.8.8.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A1.T7.8.8.8.1.m1.1b"><ci id="A1.T7.8.8.8.1.m1.1.1.cmml" xref="A1.T7.8.8.8.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.8.8.8.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A1.T7.8.8.8.1.m1.1d">italic_ϵ</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.9.9.9.2"><math alttext="10^{-6}" class="ltx_Math" display="inline" id="A1.T7.9.9.9.2.m1.1"><semantics id="A1.T7.9.9.9.2.m1.1a"><msup id="A1.T7.9.9.9.2.m1.1.1" xref="A1.T7.9.9.9.2.m1.1.1.cmml"><mn id="A1.T7.9.9.9.2.m1.1.1.2" xref="A1.T7.9.9.9.2.m1.1.1.2.cmml">10</mn><mrow id="A1.T7.9.9.9.2.m1.1.1.3" xref="A1.T7.9.9.9.2.m1.1.1.3.cmml"><mo id="A1.T7.9.9.9.2.m1.1.1.3a" xref="A1.T7.9.9.9.2.m1.1.1.3.cmml">−</mo><mn id="A1.T7.9.9.9.2.m1.1.1.3.2" xref="A1.T7.9.9.9.2.m1.1.1.3.2.cmml">6</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A1.T7.9.9.9.2.m1.1b"><apply id="A1.T7.9.9.9.2.m1.1.1.cmml" xref="A1.T7.9.9.9.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.9.9.9.2.m1.1.1.1.cmml" xref="A1.T7.9.9.9.2.m1.1.1">superscript</csymbol><cn id="A1.T7.9.9.9.2.m1.1.1.2.cmml" type="integer" xref="A1.T7.9.9.9.2.m1.1.1.2">10</cn><apply id="A1.T7.9.9.9.2.m1.1.1.3.cmml" xref="A1.T7.9.9.9.2.m1.1.1.3"><minus id="A1.T7.9.9.9.2.m1.1.1.3.1.cmml" xref="A1.T7.9.9.9.2.m1.1.1.3"></minus><cn id="A1.T7.9.9.9.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T7.9.9.9.2.m1.1.1.3.2">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.9.9.9.2.m1.1c">10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.9.9.9.2.m1.1d">10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 20 downstream datasets used for the linear probe evaluation. For each dataset, it shows the number of classes, training set size, test set size, and the evaluation metric used (accuracy or mean per-class accuracy).  The datasets encompass diverse visual domains, including food, objects, scenes, and more, enabling a comprehensive evaluation of model performance.
> <details>
> <summary>read the caption</summary>
> Table 8: List of linear probe datasets with the data distribution and evaluation metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.2">Classes</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.3">Train size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.4">Test size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.5">Evaluation metric</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.1.2.1">Food101</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.2">102</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.3">75,750</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.4">25,250</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T8.1.1.2.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.3">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.3.1">CIFAR10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.2">10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.3">50,000</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.4">10,000</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.3.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.4.1">CIFAR100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.3">50,000</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.4">10,000</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.4.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.5">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.5.1">Birdsnap</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.2">500</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.3">42,138</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.4">2,149</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.5.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.6">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.6.1">SUN397</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.2">397</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.3">19,850</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.4">19,850</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.6.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.7">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.7.1">Cars</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.7.2">196</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.7.3">8,144</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.7.4">8,041</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.7.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.8">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.8.1">Aircraft</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.8.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.8.3">6,667</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.8.4">3,333</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.8.5">mean per class</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.9">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.9.1">DTD</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.9.2">47</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.9.3">3,760</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.9.4">1,880</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.9.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.10">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.10.1">Pets</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.10.2">37</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.10.3">3,680</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.10.4">3,669</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.10.5">mean per class</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.11">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.11.1">Caltech101</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.11.2">101</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.11.3">3,000</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.11.4">5,677</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.11.5">mean per class</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.12">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.12.1">Flowers</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.12.2">102</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.12.3">2,040</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.12.4">6,149</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.12.5">mean per class</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.13">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.13.1">STL10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.13.2">10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.13.3">5,000</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.13.4">8,000</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.13.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.14">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.14.1">EuroSAT</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.14.2">10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.14.3">10,000</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.14.4">5,000</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.14.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.15">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.15.1">RESISC45</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.15.2">45</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.15.3">3,150</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.15.4">25,200</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.15.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.16">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.16.1">KITTI</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.16.2">4</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.16.3">6770</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.16.4">711</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.16.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.17">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.17.1">Country211</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.17.2">211</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.17.3">42,200</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.17.4">21,100</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.17.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.18">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.18.1">UCF101</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.18.2">101</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.18.3">9,537</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.18.4">1,794</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.18.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.19">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.19.1">Memes</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.19.2">2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.19.3">8,500</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.19.4">500</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.19.5">ROC AUC</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.20">
<td class="ltx_td ltx_align_left" id="A2.T8.1.1.20.1">SST2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.20.2">2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.20.3">7,792</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.20.4">1,821</td>
<td class="ltx_td ltx_align_right" id="A2.T8.1.1.20.5">accuracy</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.1.1.21.1">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.21.2">1000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.21.3">1,281,167</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.21.4">50,000</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A2.T8.1.1.21.5">accuracy</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a linear probe evaluation on 20 downstream datasets.  The evaluation compares the performance of CLIP models pre-trained on RealSyn30M and LAION30M.  The table shows the performance (likely accuracy or another relevant metric) for each dataset and model, allowing for a comparison of the effectiveness of the two datasets in pre-training CLIP models at different scales (ViT-B/32, ViT-B/16, ViT-L/14).  The caption highlights that RealSyn30M consistently shows improvement over LAION30M, ranging from 1.3% to 3.0% on average.
> <details>
> <summary>read the caption</summary>
> Table 9: Linear probe on 20 downstream datasets. Pre-training different scale CLIP models on RealSyn30M and LAION30M, achieves 1.3%-3.0% average performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T9.1.1">
<tr class="ltx_tr" id="A2.T9.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="23" id="A2.T9.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.1"><span class="ltx_text" id="A2.T9.1.1.2.1.1" style="background-color:#E8E8E8;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.2"><span class="ltx_text" id="A2.T9.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.3.1" style="width:6.9pt;height:36.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.3.1.1">Food101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.4.1" style="width:6.8pt;height:41.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-17.14pt,-17.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.4.1.1">CIFAR10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.5.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.5.1.1">CIFAR100</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.6.1" style="width:8.9pt;height:39.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:39.4pt;transform:translate(-15.25pt,-12.33pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.6.1.1">Birdsnap</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.7.1" style="width:6.8pt;height:35.6pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.36pt,-14.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.7.1.1">SUN397</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.8.1" style="width:6.8pt;height:20.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-6.63pt,-6.63pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.8.1.1">Cars</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.9.1" style="width:6.9pt;height:34.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:34.5pt;transform:translate(-13.78pt,-13.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.9.1.1">Aircraft</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.10.1" style="width:6.8pt;height:22.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:22.5pt;transform:translate(-7.83pt,-7.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.10.1.1">DTD</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.11.1" style="width:6.8pt;height:18.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-5.99pt,-5.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.11.1.1">Pets</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.12.1" style="width:6.9pt;height:33.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.1pt;transform:translate(-13.06pt,-13.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.12.1.1">Caltech</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.13">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.13.1" style="width:6.9pt;height:33.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.3pt;transform:translate(-13.17pt,-13.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.13.1.1">Flowers</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.14">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.14.1" style="width:6.8pt;height:29pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-11.1pt,-11.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.14.1.1">STL10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.15">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.15.1" style="width:6.8pt;height:40.7pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:40.7pt;transform:translate(-16.94pt,-16.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.15.1.1">EuroSAT</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.16">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.16.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.16.1.1">RESISC45</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.17">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.17.1" style="width:6.8pt;height:29.4pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.31pt,-11.31pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.17.1.1">KITTI</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.18">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.18.1" style="width:8.8pt;height:36.1pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.1pt;transform:translate(-13.68pt,-10.76pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.18.1.1">Country</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.19">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.19.1" style="width:6.8pt;height:36.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.3pt;transform:translate(-14.71pt,-14.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.19.1.1">UCF101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.20">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.20.1" style="width:6.8pt;height:30.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-11.75pt,-11.75pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.20.1.1">Memes</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.21">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.21.1" style="width:6.8pt;height:23.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:23.3pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.21.1.1">SST2</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.22">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.22.1" style="width:8.8pt;height:42.2pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:42.2pt;transform:translate(-16.72pt,-13.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.22.1.1">ImageNet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.2.23">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T9.1.1.2.23.1" style="width:8.8pt;height:35.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.3pt;transform:translate(-13.26pt,-10.35pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T9.1.1.2.23.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.2.23.1.1.1">Average</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="23" id="A2.T9.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.1" rowspan="2"><span class="ltx_text" id="A2.T9.1.1.4.1.1">ViT-B/32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.3">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.4">94.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.5">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.6">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.7">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.8"><span class="ltx_text" id="A2.T9.1.1.4.8.1" style="background-color:#D8ECD1;">82.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.9"><span class="ltx_text" id="A2.T9.1.1.4.9.1" style="background-color:#D8ECD1;">45.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.10"><span class="ltx_text" id="A2.T9.1.1.4.10.1" style="background-color:#D8ECD1;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.11">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.12">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.13">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.14">95.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.15">95.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.16">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.17">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.18">15.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.19">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.20"><span class="ltx_text" id="A2.T9.1.1.4.20.1" style="background-color:#D8ECD1;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.21"><span class="ltx_text" id="A2.T9.1.1.4.21.1" style="background-color:#D8ECD1;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.22">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.4.23">72.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.1"><span class="ltx_text ltx_font_italic" id="A2.T9.1.1.5.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.2"><span class="ltx_text" id="A2.T9.1.1.5.2.1" style="background-color:#D8ECD1;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.3"><span class="ltx_text" id="A2.T9.1.1.5.3.1" style="background-color:#D8ECD1;">95.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.4"><span class="ltx_text" id="A2.T9.1.1.5.4.1" style="background-color:#D8ECD1;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.5"><span class="ltx_text" id="A2.T9.1.1.5.5.1" style="background-color:#D8ECD1;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.6"><span class="ltx_text" id="A2.T9.1.1.5.6.1" style="background-color:#D8ECD1;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.7">73.4</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.8">45.2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.9">74.2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.10"><span class="ltx_text" id="A2.T9.1.1.5.10.1" style="background-color:#D8ECD1;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.11"><span class="ltx_text" id="A2.T9.1.1.5.11.1" style="background-color:#D8ECD1;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.12"><span class="ltx_text" id="A2.T9.1.1.5.12.1" style="background-color:#D8ECD1;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.13"><span class="ltx_text" id="A2.T9.1.1.5.13.1" style="background-color:#D8ECD1;">97.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.14"><span class="ltx_text" id="A2.T9.1.1.5.14.1" style="background-color:#D8ECD1;">96.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.15"><span class="ltx_text" id="A2.T9.1.1.5.15.1" style="background-color:#D8ECD1;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.16"><span class="ltx_text" id="A2.T9.1.1.5.16.1" style="background-color:#D8ECD1;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.17"><span class="ltx_text" id="A2.T9.1.1.5.17.1" style="background-color:#D8ECD1;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.18"><span class="ltx_text" id="A2.T9.1.1.5.18.1" style="background-color:#D8ECD1;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.19">55.0</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.20">56.2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.21"><span class="ltx_text" id="A2.T9.1.1.5.21.1" style="background-color:#D8ECD1;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.22"><span class="ltx_text" id="A2.T9.1.1.5.22.1" style="background-color:#D8ECD1;">73.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.1" rowspan="2"><span class="ltx_text" id="A2.T9.1.1.6.1.1">ViT-B/16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.3">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.4">95.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.5">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.6">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.7">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.8"><span class="ltx_text" id="A2.T9.1.1.6.8.1" style="background-color:#D8ECD1;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.9">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.10">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.11">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.12">91.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.13">92.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.14">96.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.15">95.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.16">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.17">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.18">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.19">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.20">59.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.21"><span class="ltx_text" id="A2.T9.1.1.6.21.1" style="background-color:#D8ECD1;">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.22">68.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.6.23">75.5</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.7">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.1"><span class="ltx_text ltx_font_italic" id="A2.T9.1.1.7.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.2"><span class="ltx_text" id="A2.T9.1.1.7.2.1" style="background-color:#D8ECD1;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.3"><span class="ltx_text" id="A2.T9.1.1.7.3.1" style="background-color:#D8ECD1;">95.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.4"><span class="ltx_text" id="A2.T9.1.1.7.4.1" style="background-color:#D8ECD1;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.5"><span class="ltx_text" id="A2.T9.1.1.7.5.1" style="background-color:#D8ECD1;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.6"><span class="ltx_text" id="A2.T9.1.1.7.6.1" style="background-color:#D8ECD1;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.7">81.0</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.8"><span class="ltx_text" id="A2.T9.1.1.7.8.1" style="background-color:#D8ECD1;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.9"><span class="ltx_text" id="A2.T9.1.1.7.9.1" style="background-color:#D8ECD1;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.10"><span class="ltx_text" id="A2.T9.1.1.7.10.1" style="background-color:#D8ECD1;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.11"><span class="ltx_text" id="A2.T9.1.1.7.11.1" style="background-color:#D8ECD1;">92.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.12"><span class="ltx_text" id="A2.T9.1.1.7.12.1" style="background-color:#D8ECD1;">94.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.13"><span class="ltx_text" id="A2.T9.1.1.7.13.1" style="background-color:#D8ECD1;">98.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.14"><span class="ltx_text" id="A2.T9.1.1.7.14.1" style="background-color:#D8ECD1;">96.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.15"><span class="ltx_text" id="A2.T9.1.1.7.15.1" style="background-color:#D8ECD1;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.16"><span class="ltx_text" id="A2.T9.1.1.7.16.1" style="background-color:#D8ECD1;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.17"><span class="ltx_text" id="A2.T9.1.1.7.17.1" style="background-color:#D8ECD1;">22.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.18"><span class="ltx_text" id="A2.T9.1.1.7.18.1" style="background-color:#D8ECD1;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.19"><span class="ltx_text" id="A2.T9.1.1.7.19.1" style="background-color:#D8ECD1;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.20">64.7</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.21"><span class="ltx_text" id="A2.T9.1.1.7.21.1" style="background-color:#D8ECD1;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.7.22"><span class="ltx_text" id="A2.T9.1.1.7.22.1" style="background-color:#D8ECD1;">77.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.1.1.8.1" rowspan="2"><span class="ltx_text" id="A2.T9.1.1.8.1.1">ViT-L/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.3">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.4">96.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.5">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.6">59.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.7">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.8"><span class="ltx_text" id="A2.T9.1.1.8.8.1" style="background-color:#D8ECD1;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.9">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.10">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.11">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.12">92.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.13">94.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.14">97.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.15">95.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.16">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.17">71.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.18">18.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.19">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.20">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.21">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.22">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.8.23">76.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.1"><span class="ltx_text ltx_font_italic" id="A2.T9.1.1.9.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.2"><span class="ltx_text" id="A2.T9.1.1.9.2.1" style="background-color:#D8ECD1;">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.3"><span class="ltx_text" id="A2.T9.1.1.9.3.1" style="background-color:#D8ECD1;">97.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.4"><span class="ltx_text" id="A2.T9.1.1.9.4.1" style="background-color:#D8ECD1;">86.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.5"><span class="ltx_text" id="A2.T9.1.1.9.5.1" style="background-color:#D8ECD1;">64.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.6"><span class="ltx_text" id="A2.T9.1.1.9.6.1" style="background-color:#D8ECD1;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.7">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.8"><span class="ltx_text" id="A2.T9.1.1.9.8.1" style="background-color:#D8ECD1;">51.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.9"><span class="ltx_text" id="A2.T9.1.1.9.9.1" style="background-color:#D8ECD1;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.10"><span class="ltx_text" id="A2.T9.1.1.9.10.1" style="background-color:#D8ECD1;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.11"><span class="ltx_text" id="A2.T9.1.1.9.11.1" style="background-color:#D8ECD1;">94.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.12"><span class="ltx_text" id="A2.T9.1.1.9.12.1" style="background-color:#D8ECD1;">94.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.13"><span class="ltx_text" id="A2.T9.1.1.9.13.1" style="background-color:#D8ECD1;">98.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.14"><span class="ltx_text" id="A2.T9.1.1.9.14.1" style="background-color:#D8ECD1;">96.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.15"><span class="ltx_text" id="A2.T9.1.1.9.15.1" style="background-color:#D8ECD1;">92.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.16"><span class="ltx_text" id="A2.T9.1.1.9.16.1" style="background-color:#D8ECD1;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.17"><span class="ltx_text" id="A2.T9.1.1.9.17.1" style="background-color:#D8ECD1;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.18"><span class="ltx_text" id="A2.T9.1.1.9.18.1" style="background-color:#D8ECD1;">86.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.19"><span class="ltx_text" id="A2.T9.1.1.9.19.1" style="background-color:#D8ECD1;">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.20"><span class="ltx_text" id="A2.T9.1.1.9.20.1" style="background-color:#D8ECD1;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.21"><span class="ltx_text" id="A2.T9.1.1.9.21.1" style="background-color:#D8ECD1;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.9.22"><span class="ltx_text" id="A2.T9.1.1.9.22.1" style="background-color:#D8ECD1;">79.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot transfer learning experiments across 20 diverse downstream datasets.  Two different large-scale pre-trained CLIP models (ViT-B/32 and ViT-L/14) were evaluated after being pre-trained on either the RealSyn30M or LAION30M datasets.  The results showcase the performance improvements achieved by using the RealSyn30M dataset for pre-training compared to using the LAION30M dataset. The improvements range from 3.5% to 5.5% on average across the various downstream tasks, highlighting the effectiveness of RealSyn30M in improving transfer learning capabilities across a wide spectrum of visual recognition tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Zero-shot transfer on 20 downstream datasets. Pre-training different scale CLIP models on RealSyn30M and LAION30M, achieves 3.5%-5.5% average performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T10.1.1">
<tr class="ltx_tr" id="A2.T10.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="23" id="A2.T10.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.1"><span class="ltx_text" id="A2.T10.1.1.2.1.1" style="background-color:#E8E8E8;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.2"><span class="ltx_text" id="A2.T10.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.3.1" style="width:6.9pt;height:36.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.3.1.1">Food101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.4.1" style="width:6.8pt;height:41.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-17.14pt,-17.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.4.1.1">CIFAR10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.5.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.5.1.1">CIFAR100</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.6.1" style="width:8.9pt;height:39.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:39.4pt;transform:translate(-15.25pt,-12.33pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.6.1.1">Birdsnap</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.7.1" style="width:6.8pt;height:35.6pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.36pt,-14.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.7.1.1">SUN397</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.8.1" style="width:6.8pt;height:20.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-6.63pt,-6.63pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.8.1.1">Cars</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.9.1" style="width:6.9pt;height:34.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:34.5pt;transform:translate(-13.78pt,-13.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.9.1.1">Aircraft</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.10.1" style="width:6.8pt;height:22.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:22.5pt;transform:translate(-7.83pt,-7.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.10.1.1">DTD</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.11.1" style="width:6.8pt;height:18.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-5.99pt,-5.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.11.1.1">Pets</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.12.1" style="width:6.9pt;height:33.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.1pt;transform:translate(-13.06pt,-13.06pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.12.1.1">Caltech</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.13">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.13.1" style="width:6.9pt;height:33.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.3pt;transform:translate(-13.17pt,-13.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.13.1.1">Flowers</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.14">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.14.1" style="width:6.8pt;height:29pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-11.1pt,-11.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.14.1.1">STL10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.15">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.15.1" style="width:6.8pt;height:40.7pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:40.7pt;transform:translate(-16.94pt,-16.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.15.1.1">EuroSAT</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.16">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.16.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.16.1.1">RESISC45</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.17">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.17.1" style="width:6.8pt;height:29.4pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.31pt,-11.31pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.17.1.1">KITTI</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.18">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.18.1" style="width:8.8pt;height:36.1pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.1pt;transform:translate(-13.68pt,-10.76pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.18.1.1">Country</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.19">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.19.1" style="width:6.8pt;height:36.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.3pt;transform:translate(-14.71pt,-14.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.19.1.1">UCF101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.20">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.20.1" style="width:6.8pt;height:30.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-11.75pt,-11.75pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.20.1.1">Memes</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.21">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.21.1" style="width:6.8pt;height:23.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:23.3pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.21.1.1">SST2</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.22">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.22.1" style="width:8.8pt;height:42.2pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:42.2pt;transform:translate(-16.72pt,-13.81pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.22.1.1">ImageNet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2.23">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T10.1.1.2.23.1" style="width:8.8pt;height:35.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.3pt;transform:translate(-13.26pt,-10.35pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T10.1.1.2.23.1.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.2.23.1.1.1">Average</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="23" id="A2.T10.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.1" rowspan="2"><span class="ltx_text" id="A2.T10.1.1.4.1.1">ViT-B/32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.3">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.4">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.5">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.6"><span class="ltx_text" id="A2.T10.1.1.4.6.1" style="background-color:#D8ECD1;">17.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.7">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.8"><span class="ltx_text" id="A2.T10.1.1.4.8.1" style="background-color:#D8ECD1;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.9">4.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.10">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.11">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.12">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.13">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.14">91.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.15">40.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.16">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.17">24.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.18">7.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.19">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.20">51.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.21">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.22">44.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.4.23">48.6</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.1"><span class="ltx_text ltx_font_italic" id="A2.T10.1.1.5.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.2"><span class="ltx_text" id="A2.T10.1.1.5.2.1" style="background-color:#D8ECD1;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.3"><span class="ltx_text" id="A2.T10.1.1.5.3.1" style="background-color:#D8ECD1;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.4"><span class="ltx_text" id="A2.T10.1.1.5.4.1" style="background-color:#D8ECD1;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.5">15.0</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.6"><span class="ltx_text" id="A2.T10.1.1.5.6.1" style="background-color:#D8ECD1;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.7">39.2</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.8"><span class="ltx_text" id="A2.T10.1.1.5.8.1" style="background-color:#D8ECD1;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.9"><span class="ltx_text" id="A2.T10.1.1.5.9.1" style="background-color:#D8ECD1;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.10"><span class="ltx_text" id="A2.T10.1.1.5.10.1" style="background-color:#D8ECD1;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.11"><span class="ltx_text" id="A2.T10.1.1.5.11.1" style="background-color:#D8ECD1;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.12"><span class="ltx_text" id="A2.T10.1.1.5.12.1" style="background-color:#D8ECD1;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.13"><span class="ltx_text" id="A2.T10.1.1.5.13.1" style="background-color:#D8ECD1;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.14"><span class="ltx_text" id="A2.T10.1.1.5.14.1" style="background-color:#D8ECD1;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.15"><span class="ltx_text" id="A2.T10.1.1.5.15.1" style="background-color:#D8ECD1;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.16"><span class="ltx_text" id="A2.T10.1.1.5.16.1" style="background-color:#D8ECD1;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.17"><span class="ltx_text" id="A2.T10.1.1.5.17.1" style="background-color:#D8ECD1;">10.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.18"><span class="ltx_text" id="A2.T10.1.1.5.18.1" style="background-color:#D8ECD1;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.19"><span class="ltx_text" id="A2.T10.1.1.5.19.1" style="background-color:#D8ECD1;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.20"><span class="ltx_text" id="A2.T10.1.1.5.20.1" style="background-color:#D8ECD1;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.21"><span class="ltx_text" id="A2.T10.1.1.5.21.1" style="background-color:#D8ECD1;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.5.22"><span class="ltx_text" id="A2.T10.1.1.5.22.1" style="background-color:#D8ECD1;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.1" rowspan="2"><span class="ltx_text" id="A2.T10.1.1.6.1.1">ViT-B/16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.3">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.4">89.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.5">63.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.6"><span class="ltx_text" id="A2.T10.1.1.6.6.1" style="background-color:#D8ECD1;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.7">55.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.8"><span class="ltx_text" id="A2.T10.1.1.6.8.1" style="background-color:#D8ECD1;">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.9">5.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.10">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.11">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.12">84.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.13">42.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.14">94.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.15">31.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.16">45.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.17"><span class="ltx_text" id="A2.T10.1.1.6.17.1" style="background-color:#D8ECD1;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.18">8.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.19">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.20">54.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.21">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.22">49.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.6.23">51.3</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.7">
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.1"><span class="ltx_text ltx_font_italic" id="A2.T10.1.1.7.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.2"><span class="ltx_text" id="A2.T10.1.1.7.2.1" style="background-color:#D8ECD1;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.3"><span class="ltx_text" id="A2.T10.1.1.7.3.1" style="background-color:#D8ECD1;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.4"><span class="ltx_text" id="A2.T10.1.1.7.4.1" style="background-color:#D8ECD1;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.5">18.9</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.6"><span class="ltx_text" id="A2.T10.1.1.7.6.1" style="background-color:#D8ECD1;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.7">48.2</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.8"><span class="ltx_text" id="A2.T10.1.1.7.8.1" style="background-color:#D8ECD1;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.9"><span class="ltx_text" id="A2.T10.1.1.7.9.1" style="background-color:#D8ECD1;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.10"><span class="ltx_text" id="A2.T10.1.1.7.10.1" style="background-color:#D8ECD1;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.11"><span class="ltx_text" id="A2.T10.1.1.7.11.1" style="background-color:#D8ECD1;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.12"><span class="ltx_text" id="A2.T10.1.1.7.12.1" style="background-color:#D8ECD1;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.13"><span class="ltx_text" id="A2.T10.1.1.7.13.1" style="background-color:#D8ECD1;">95.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.14"><span class="ltx_text" id="A2.T10.1.1.7.14.1" style="background-color:#D8ECD1;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.15"><span class="ltx_text" id="A2.T10.1.1.7.15.1" style="background-color:#D8ECD1;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.16">27.1</td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.17"><span class="ltx_text" id="A2.T10.1.1.7.17.1" style="background-color:#D8ECD1;">13.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.18"><span class="ltx_text" id="A2.T10.1.1.7.18.1" style="background-color:#D8ECD1;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.19"><span class="ltx_text" id="A2.T10.1.1.7.19.1" style="background-color:#D8ECD1;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.20"><span class="ltx_text" id="A2.T10.1.1.7.20.1" style="background-color:#D8ECD1;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.21"><span class="ltx_text" id="A2.T10.1.1.7.21.1" style="background-color:#D8ECD1;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.7.22"><span class="ltx_text" id="A2.T10.1.1.7.22.1" style="background-color:#D8ECD1;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T10.1.1.8.1" rowspan="2"><span class="ltx_text" id="A2.T10.1.1.8.1.1">ViT-L/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.3">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.4">88.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.5">69.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.6"><span class="ltx_text" id="A2.T10.1.1.8.6.1" style="background-color:#D8ECD1;">22.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.7">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.8"><span class="ltx_text" id="A2.T10.1.1.8.8.1" style="background-color:#D8ECD1;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.9">4.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.10">40.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.11">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.12">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.13">42.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.14">95.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.15">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.16">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.17">25.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.18">10.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.19">54.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.20">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.21">51.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.22">51.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.1.8.23">53.3</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.1"><span class="ltx_text ltx_font_italic" id="A2.T10.1.1.9.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.2"><span class="ltx_text" id="A2.T10.1.1.9.2.1" style="background-color:#D8ECD1;">80.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.3"><span class="ltx_text" id="A2.T10.1.1.9.3.1" style="background-color:#D8ECD1;">94.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.4"><span class="ltx_text" id="A2.T10.1.1.9.4.1" style="background-color:#D8ECD1;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.5">20.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.6"><span class="ltx_text" id="A2.T10.1.1.9.6.1" style="background-color:#D8ECD1;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.7">53.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.8"><span class="ltx_text" id="A2.T10.1.1.9.8.1" style="background-color:#D8ECD1;">10.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.9"><span class="ltx_text" id="A2.T10.1.1.9.9.1" style="background-color:#D8ECD1;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.10"><span class="ltx_text" id="A2.T10.1.1.9.10.1" style="background-color:#D8ECD1;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.11"><span class="ltx_text" id="A2.T10.1.1.9.11.1" style="background-color:#D8ECD1;">89.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.12"><span class="ltx_text" id="A2.T10.1.1.9.12.1" style="background-color:#D8ECD1;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.13"><span class="ltx_text" id="A2.T10.1.1.9.13.1" style="background-color:#D8ECD1;">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.14"><span class="ltx_text" id="A2.T10.1.1.9.14.1" style="background-color:#D8ECD1;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.15"><span class="ltx_text" id="A2.T10.1.1.9.15.1" style="background-color:#D8ECD1;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.16"><span class="ltx_text" id="A2.T10.1.1.9.16.1" style="background-color:#D8ECD1;">32.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.17"><span class="ltx_text" id="A2.T10.1.1.9.17.1" style="background-color:#D8ECD1;">15.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.18"><span class="ltx_text" id="A2.T10.1.1.9.18.1" style="background-color:#D8ECD1;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.19"><span class="ltx_text" id="A2.T10.1.1.9.19.1" style="background-color:#D8ECD1;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.20"><span class="ltx_text" id="A2.T10.1.1.9.20.1" style="background-color:#D8ECD1;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.21"><span class="ltx_text" id="A2.T10.1.1.9.21.1" style="background-color:#D8ECD1;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.1.9.22"><span class="ltx_text" id="A2.T10.1.1.9.22.1" style="background-color:#D8ECD1;">58.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot robustness across different CLIP models (ViT-B/32, ViT-B/16, ViT-L/14) trained on RealSyn30M and LAION30M datasets.  The zero-shot robustness is evaluated on various image datasets (IN-V2, IN-A, IN-R, ObjectNet, IN-Sketch).  The results show that models pre-trained on RealSyn30M consistently outperform those trained on LAION30M, demonstrating a significant improvement in robustness. The average performance improvement ranges from 4.2% to 8.6%, highlighting the effectiveness of the RealSyn dataset in enhancing model robustness.
> <details>
> <summary>read the caption</summary>
> Table 11: Zero-shot robustness comparison. Pre-training different scale CLIP models on RealSyn30M and LAION30M, achieves 4.2%-8.6% average performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T11.1.1">
<tr class="ltx_tr" id="A2.T11.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="8" id="A2.T11.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.1"><span class="ltx_text" id="A2.T11.1.1.2.1.1" style="background-color:#E8E8E8;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.2"><span class="ltx_text" id="A2.T11.1.1.2.2.1" style="background-color:#E8E8E8;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.3"><span class="ltx_text" id="A2.T11.1.1.2.3.1" style="background-color:#E8E8E8;">IN-V2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.4"><span class="ltx_text" id="A2.T11.1.1.2.4.1" style="background-color:#E8E8E8;">IN-A</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.5"><span class="ltx_text" id="A2.T11.1.1.2.5.1" style="background-color:#E8E8E8;">IN-R</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.6"><span class="ltx_text" id="A2.T11.1.1.2.6.1" style="background-color:#E8E8E8;">ObjectNet</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.7"><span class="ltx_text" id="A2.T11.1.1.2.7.1" style="background-color:#E8E8E8;">IN-Sketch</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.2.8"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.2.8.1" style="background-color:#E8E8E8;">Average</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="8" id="A2.T11.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.1" rowspan="2"><span class="ltx_text" id="A2.T11.1.1.4.1.1">ViT-B/32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.3">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.4">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.5">54.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.6">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.7">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.4.8">33.6</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.1"><span class="ltx_text ltx_font_italic" id="A2.T11.1.1.5.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.2"><span class="ltx_text" id="A2.T11.1.1.5.2.1" style="background-color:#D8ECD1;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.3"><span class="ltx_text" id="A2.T11.1.1.5.3.1" style="background-color:#D8ECD1;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.4"><span class="ltx_text" id="A2.T11.1.1.5.4.1" style="background-color:#D8ECD1;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.5"><span class="ltx_text" id="A2.T11.1.1.5.5.1" style="background-color:#D8ECD1;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.6"><span class="ltx_text" id="A2.T11.1.1.5.6.1" style="background-color:#D8ECD1;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.5.7"><span class="ltx_text" id="A2.T11.1.1.5.7.1" style="background-color:#D8ECD1;">37.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.1" rowspan="2"><span class="ltx_text" id="A2.T11.1.1.6.1.1">ViT-B/16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.3">42.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.4">12.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.5">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.6">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.7">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.6.8">38.1</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.7">
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.1"><span class="ltx_text ltx_font_italic" id="A2.T11.1.1.7.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.2"><span class="ltx_text" id="A2.T11.1.1.7.2.1" style="background-color:#D8ECD1;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.3"><span class="ltx_text" id="A2.T11.1.1.7.3.1" style="background-color:#D8ECD1;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.4"><span class="ltx_text" id="A2.T11.1.1.7.4.1" style="background-color:#D8ECD1;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.5"><span class="ltx_text" id="A2.T11.1.1.7.5.1" style="background-color:#D8ECD1;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.6"><span class="ltx_text" id="A2.T11.1.1.7.6.1" style="background-color:#D8ECD1;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.1.1.7.7"><span class="ltx_text" id="A2.T11.1.1.7.7.1" style="background-color:#D8ECD1;">43.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T11.1.1.8.1" rowspan="2"><span class="ltx_text" id="A2.T11.1.1.8.1.1">ViT-L/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.2">LAION</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.3">45.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.4">17.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.5">64.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.6">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.7">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.1.1.8.8">41.8</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.1"><span class="ltx_text ltx_font_italic" id="A2.T11.1.1.9.1.1">RealSyn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.2"><span class="ltx_text" id="A2.T11.1.1.9.2.1" style="background-color:#D8ECD1;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.3"><span class="ltx_text" id="A2.T11.1.1.9.3.1" style="background-color:#D8ECD1;">34.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.4"><span class="ltx_text" id="A2.T11.1.1.9.4.1" style="background-color:#D8ECD1;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.5"><span class="ltx_text" id="A2.T11.1.1.9.5.1" style="background-color:#D8ECD1;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.6"><span class="ltx_text" id="A2.T11.1.1.9.6.1" style="background-color:#D8ECD1;">42.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.1.1.9.7"><span class="ltx_text" id="A2.T11.1.1.9.7.1" style="background-color:#D8ECD1;">50.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a linear probe evaluation on 12 downstream datasets.  The experiment involved pre-training a CLIP model using ResNet50 as the image encoder.  The model was trained on image-text pairs, and the table shows the performance (likely accuracy) achieved on each of the 12 different tasks after this pre-training.  A 2.1% average performance improvement is reported compared to some baseline.
> <details>
> <summary>read the caption</summary>
> Table 12: Linear probe on 12 downstream datasets. Pre-training CLIP (ResNet50) on image-text pairs achieves 2.1% performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T12.1.1">
<tr class="ltx_tr" id="A2.T12.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" colspan="15" id="A2.T12.1.1.1.1"><span class="ltx_rule" style="width:100%;height:2.8pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T12.1.1.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.1"><span class="ltx_text" id="A2.T12.1.1.2.1.1" style="background-color:#E8E8E8;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.2"><span class="ltx_text" id="A2.T12.1.1.2.2.1" style="background-color:#E8E8E8;">Method</span></td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.3.1" style="width:6.9pt;height:36.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:36.8pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.3.1.1">Food101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.4.1" style="width:6.8pt;height:41.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-17.14pt,-17.14pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.4.1.1">CIFAR10</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.5.1" style="width:6.8pt;height:46.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:46.1pt;transform:translate(-19.64pt,-19.64pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.5.1.1">CIFAR100</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.6.1" style="width:8.9pt;height:39.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:39.4pt;transform:translate(-15.25pt,-12.33pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.6.1.1">Birdsnap</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.7.1" style="width:6.8pt;height:35.6pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.36pt,-14.36pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.7.1.1">SUN397</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.8.1" style="width:6.8pt;height:20.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-6.63pt,-6.63pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.8.1.1">Cars</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.9.1" style="width:6.9pt;height:34.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:34.5pt;transform:translate(-13.78pt,-13.78pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.9.1.1">Aircraft</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.10.1" style="width:6.8pt;height:42.2pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:42.2pt;transform:translate(-17.69pt,-17.69pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.10.1.1">VOC2007</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.11.1" style="width:6.8pt;height:22.5pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:22.5pt;transform:translate(-7.83pt,-7.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.11.1.1">DTD</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.12.1" style="width:6.8pt;height:18.8pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-5.99pt,-5.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.12.1.1">Pets</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.13">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.13.1" style="width:6.9pt;height:48.1pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:48.1pt;transform:translate(-20.56pt,-20.56pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.13.1.1">Caltech101</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.14">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.14.1" style="width:6.9pt;height:33.3pt;vertical-align:-0.0pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:33.3pt;transform:translate(-13.17pt,-13.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.14.1.1">Flowers</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A2.T12.1.1.2.15">
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T12.1.1.2.15.1" style="width:8.8pt;height:35.3pt;vertical-align:-1.9pt;background-color:#E8E8E8;"><span class="ltx_transformed_inner" style="width:35.3pt;transform:translate(-13.26pt,-10.35pt) rotate(-90deg) ;">
<p class="ltx_p" id="A2.T12.1.1.2.15.1.1"><span class="ltx_text ltx_font_bold" id="A2.T12.1.1.2.15.1.1.1">Average</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T12.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="15" id="A2.T12.1.1.3.1"><span class="ltx_rule" style="width:100%;height:1.7pt;color:#E8E8E8;background:#E8E8E8;display:inline-block;"> </span></td>
</tr>
<tr class="ltx_tr" id="A2.T12.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T12.1.1.4.1" rowspan="2"><span class="ltx_text" id="A2.T12.1.1.4.1.1">ResNet50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.2">SimCLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.3">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.4"><span class="ltx_text" id="A2.T12.1.1.4.4.1" style="background-color:#D8ECD1;">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.5"><span class="ltx_text" id="A2.T12.1.1.4.5.1" style="background-color:#D8ECD1;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.6">37.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.7">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.8">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.9"><span class="ltx_text" id="A2.T12.1.1.4.9.1" style="background-color:#D8ECD1;">50.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.10">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.11"><span class="ltx_text" id="A2.T12.1.1.4.11.1" style="background-color:#D8ECD1;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.12">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.13"><span class="ltx_text" id="A2.T12.1.1.4.13.1" style="background-color:#D8ECD1;">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.14"><span class="ltx_text" id="A2.T12.1.1.4.14.1" style="background-color:#D8ECD1;">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.1.1.4.15">70.6</td>
</tr>
<tr class="ltx_tr" id="A2.T12.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.1">Real&amp;Syn Texts</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.2"><span class="ltx_text" id="A2.T12.1.1.5.2.1" style="background-color:#D8ECD1;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.3">89.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.4">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.5"><span class="ltx_text" id="A2.T12.1.1.5.5.1" style="background-color:#D8ECD1;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.6"><span class="ltx_text" id="A2.T12.1.1.5.6.1" style="background-color:#D8ECD1;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.7"><span class="ltx_text" id="A2.T12.1.1.5.7.1" style="background-color:#D8ECD1;">51.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.8">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.9"><span class="ltx_text" id="A2.T12.1.1.5.9.1" style="background-color:#D8ECD1;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.10">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.11"><span class="ltx_text" id="A2.T12.1.1.5.11.1" style="background-color:#D8ECD1;">90.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.12">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.13">88.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.1.1.5.14"><span class="ltx_text" id="A2.T12.1.1.5.14.1" style="background-color:#D8ECD1;">72.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares RealSyn with other large-scale image-text datasets used for pre-training vision-language models.  It shows the number of images, average number of tokens per image, average number of texts per image, the type of text (realistic or synthetic), and the source of the data for each dataset. The datasets compared are CC12M, YFCC15M, CapsFusion, LAION400M, and three variations of RealSyn (15M, 30M, and 100M).  This allows for a direct comparison of dataset characteristics and helps to understand the relative size and composition of RealSyn in the context of existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 13: Current Dataset Comparison. Comparison with large-scale image-text pre-training datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T13.11.11">
<tr class="ltx_tr" id="A2.T13.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T13.2.2.2.3">
<span class="ltx_inline-block" id="A2.T13.2.2.2.3.1">
<span class="ltx_p" id="A2.T13.2.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.3.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.2.2.4">
<span class="ltx_inline-block" id="A2.T13.2.2.2.4.1">
<span class="ltx_p" id="A2.T13.2.2.2.4.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.4.1.1.1">#Images</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.1.1.1.1">
<span class="ltx_inline-block" id="A2.T13.1.1.1.1.1">
<span class="ltx_p" id="A2.T13.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.1.1.1.1.1.1.1">#Avg Tokens </span><math alttext="/" class="ltx_Math" display="inline" id="A2.T13.1.1.1.1.1.1.m1.1"><semantics id="A2.T13.1.1.1.1.1.1.m1.1a"><mo id="A2.T13.1.1.1.1.1.1.m1.1.1" xref="A2.T13.1.1.1.1.1.1.m1.1.1.cmml">/</mo><annotation-xml encoding="MathML-Content" id="A2.T13.1.1.1.1.1.1.m1.1b"><divide id="A2.T13.1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T13.1.1.1.1.1.1.m1.1.1"></divide></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.1.1.1.1.1.1.m1.1c">/</annotation><annotation encoding="application/x-llamapun" id="A2.T13.1.1.1.1.1.1.m1.1d">/</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T13.1.1.1.1.1.1.2"> Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T13.2.2.2.2">
<span class="ltx_inline-block" id="A2.T13.2.2.2.2.1">
<span class="ltx_p" id="A2.T13.2.2.2.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.2.1.1.1">#Avg Texts </span><math alttext="/" class="ltx_Math" display="inline" id="A2.T13.2.2.2.2.1.1.m1.1"><semantics id="A2.T13.2.2.2.2.1.1.m1.1a"><mo id="A2.T13.2.2.2.2.1.1.m1.1.1" xref="A2.T13.2.2.2.2.1.1.m1.1.1.cmml">/</mo><annotation-xml encoding="MathML-Content" id="A2.T13.2.2.2.2.1.1.m1.1b"><divide id="A2.T13.2.2.2.2.1.1.m1.1.1.cmml" xref="A2.T13.2.2.2.2.1.1.m1.1.1"></divide></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.2.2.2.2.1.1.m1.1c">/</annotation><annotation encoding="application/x-llamapun" id="A2.T13.2.2.2.2.1.1.m1.1d">/</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.2.1.1.2"> Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.2.2.5">
<span class="ltx_inline-block" id="A2.T13.2.2.2.5.1">
<span class="ltx_p" id="A2.T13.2.2.2.5.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.5.1.1.1">Text Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T13.2.2.2.6">
<span class="ltx_inline-block" id="A2.T13.2.2.2.6.1">
<span class="ltx_p" id="A2.T13.2.2.2.6.1.1"><span class="ltx_text ltx_font_bold" id="A2.T13.2.2.2.6.1.1.1">Source Type</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T13.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T13.4.4.4.3">CC12M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.3.3.3.1"><math alttext="12\,000\,000" class="ltx_Math" display="inline" id="A2.T13.3.3.3.1.m1.1"><semantics id="A2.T13.3.3.3.1.m1.1a"><mn id="A2.T13.3.3.3.1.m1.1.1" xref="A2.T13.3.3.3.1.m1.1.1.cmml">12 000 000</mn><annotation-xml encoding="MathML-Content" id="A2.T13.3.3.3.1.m1.1b"><cn id="A2.T13.3.3.3.1.m1.1.1.cmml" type="integer" xref="A2.T13.3.3.3.1.m1.1.1">12000000</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.3.3.3.1.m1.1c">12\,000\,000</annotation><annotation encoding="application/x-llamapun" id="A2.T13.3.3.3.1.m1.1d">12 000 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.4.4.2"><math alttext="-" class="ltx_Math" display="inline" id="A2.T13.4.4.4.2.m1.1"><semantics id="A2.T13.4.4.4.2.m1.1a"><mo id="A2.T13.4.4.4.2.m1.1.1" xref="A2.T13.4.4.4.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A2.T13.4.4.4.2.m1.1b"><minus id="A2.T13.4.4.4.2.m1.1.1.cmml" xref="A2.T13.4.4.4.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.4.4.4.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A2.T13.4.4.4.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T13.4.4.4.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.4.4.5">Realistic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.4.4.6">Website</td>
</tr>
<tr class="ltx_tr" id="A2.T13.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T13.5.5.5.2">YFCC15M</td>
<td class="ltx_td ltx_align_center" id="A2.T13.5.5.5.1"><math alttext="15\,000\,000" class="ltx_Math" display="inline" id="A2.T13.5.5.5.1.m1.1"><semantics id="A2.T13.5.5.5.1.m1.1a"><mn id="A2.T13.5.5.5.1.m1.1.1" xref="A2.T13.5.5.5.1.m1.1.1.cmml">15 000 000</mn><annotation-xml encoding="MathML-Content" id="A2.T13.5.5.5.1.m1.1b"><cn id="A2.T13.5.5.5.1.m1.1.1.cmml" type="integer" xref="A2.T13.5.5.5.1.m1.1.1">15000000</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.5.5.5.1.m1.1c">15\,000\,000</annotation><annotation encoding="application/x-llamapun" id="A2.T13.5.5.5.1.m1.1d">15 000 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T13.5.5.5.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T13.5.5.5.4">1</td>
<td class="ltx_td ltx_align_center" id="A2.T13.5.5.5.5">Realistic</td>
<td class="ltx_td ltx_align_center" id="A2.T13.5.5.5.6">Website</td>
</tr>
<tr class="ltx_tr" id="A2.T13.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T13.7.7.7.3">CapsFusion</td>
<td class="ltx_td ltx_align_center" id="A2.T13.6.6.6.1"><math alttext="120\,000\,000" class="ltx_Math" display="inline" id="A2.T13.6.6.6.1.m1.1"><semantics id="A2.T13.6.6.6.1.m1.1a"><mn id="A2.T13.6.6.6.1.m1.1.1" xref="A2.T13.6.6.6.1.m1.1.1.cmml">120 000 000</mn><annotation-xml encoding="MathML-Content" id="A2.T13.6.6.6.1.m1.1b"><cn id="A2.T13.6.6.6.1.m1.1.1.cmml" type="integer" xref="A2.T13.6.6.6.1.m1.1.1">120000000</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.6.6.6.1.m1.1c">120\,000\,000</annotation><annotation encoding="application/x-llamapun" id="A2.T13.6.6.6.1.m1.1d">120 000 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T13.7.7.7.2"><math alttext="-" class="ltx_Math" display="inline" id="A2.T13.7.7.7.2.m1.1"><semantics id="A2.T13.7.7.7.2.m1.1a"><mo id="A2.T13.7.7.7.2.m1.1.1" xref="A2.T13.7.7.7.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A2.T13.7.7.7.2.m1.1b"><minus id="A2.T13.7.7.7.2.m1.1.1.cmml" xref="A2.T13.7.7.7.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.7.7.7.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A2.T13.7.7.7.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T13.7.7.7.4">1</td>
<td class="ltx_td ltx_align_center" id="A2.T13.7.7.7.5">Synthetic</td>
<td class="ltx_td ltx_align_center" id="A2.T13.7.7.7.6">Image-Text Pair</td>
</tr>
<tr class="ltx_tr" id="A2.T13.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T13.8.8.8.2">LAION400M</td>
<td class="ltx_td ltx_align_center" id="A2.T13.8.8.8.1"><math alttext="400\,000\,000" class="ltx_Math" display="inline" id="A2.T13.8.8.8.1.m1.1"><semantics id="A2.T13.8.8.8.1.m1.1a"><mn id="A2.T13.8.8.8.1.m1.1.1" xref="A2.T13.8.8.8.1.m1.1.1.cmml">400 000 000</mn><annotation-xml encoding="MathML-Content" id="A2.T13.8.8.8.1.m1.1b"><cn id="A2.T13.8.8.8.1.m1.1.1.cmml" type="integer" xref="A2.T13.8.8.8.1.m1.1.1">400000000</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.8.8.8.1.m1.1c">400\,000\,000</annotation><annotation encoding="application/x-llamapun" id="A2.T13.8.8.8.1.m1.1d">400 000 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T13.8.8.8.3">27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T13.8.8.8.4">1</td>
<td class="ltx_td ltx_align_center" id="A2.T13.8.8.8.5">Realistic</td>
<td class="ltx_td ltx_align_center" id="A2.T13.8.8.8.6">Website</td>
</tr>
<tr class="ltx_tr" id="A2.T13.9.9.9" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T13.9.9.9.2"><span class="ltx_text ltx_font_italic" id="A2.T13.9.9.9.2.1" style="background-color:#EBEBEB;">RealSyn<span class="ltx_text ltx_font_upright" id="A2.T13.9.9.9.2.1.1">15M</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.9.9.9.1"><math alttext="15\,239\,498" class="ltx_Math" display="inline" id="A2.T13.9.9.9.1.m1.1" style="background-color:#EBEBEB;"><semantics id="A2.T13.9.9.9.1.m1.1a"><mn id="A2.T13.9.9.9.1.m1.1.1" mathbackground="#EBEBEB" xref="A2.T13.9.9.9.1.m1.1.1.cmml">15 239 498</mn><annotation-xml encoding="MathML-Content" id="A2.T13.9.9.9.1.m1.1b"><cn id="A2.T13.9.9.9.1.m1.1.1.cmml" type="integer" xref="A2.T13.9.9.9.1.m1.1.1">15239498</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.9.9.9.1.m1.1c">15\,239\,498</annotation><annotation encoding="application/x-llamapun" id="A2.T13.9.9.9.1.m1.1d">15 239 498</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T13.9.9.9.3"><span class="ltx_text" id="A2.T13.9.9.9.3.1" style="background-color:#EBEBEB;">40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T13.9.9.9.4"><span class="ltx_text" id="A2.T13.9.9.9.4.1" style="background-color:#EBEBEB;">4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.9.9.9.5"><span class="ltx_text" id="A2.T13.9.9.9.5.1" style="background-color:#EBEBEB;">Realistic &amp; Synthetic</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.9.9.9.6"><span class="ltx_text" id="A2.T13.9.9.9.6.1" style="background-color:#EBEBEB;">Interleaved Image-Text</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.10.10.10" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T13.10.10.10.2"><span class="ltx_text ltx_font_italic" id="A2.T13.10.10.10.2.1" style="background-color:#EBEBEB;">RealSyn<span class="ltx_text ltx_font_upright" id="A2.T13.10.10.10.2.1.1">30M</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.10.10.10.1"><math alttext="30\,328\,852" class="ltx_Math" display="inline" id="A2.T13.10.10.10.1.m1.1" style="background-color:#EBEBEB;"><semantics id="A2.T13.10.10.10.1.m1.1a"><mn id="A2.T13.10.10.10.1.m1.1.1" mathbackground="#EBEBEB" xref="A2.T13.10.10.10.1.m1.1.1.cmml">30 328 852</mn><annotation-xml encoding="MathML-Content" id="A2.T13.10.10.10.1.m1.1b"><cn id="A2.T13.10.10.10.1.m1.1.1.cmml" type="integer" xref="A2.T13.10.10.10.1.m1.1.1">30328852</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.10.10.10.1.m1.1c">30\,328\,852</annotation><annotation encoding="application/x-llamapun" id="A2.T13.10.10.10.1.m1.1d">30 328 852</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T13.10.10.10.3"><span class="ltx_text" id="A2.T13.10.10.10.3.1" style="background-color:#EBEBEB;">38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T13.10.10.10.4"><span class="ltx_text" id="A2.T13.10.10.10.4.1" style="background-color:#EBEBEB;">4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.10.10.10.5"><span class="ltx_text" id="A2.T13.10.10.10.5.1" style="background-color:#EBEBEB;">Realistic &amp; Synthetic</span></td>
<td class="ltx_td ltx_align_center" id="A2.T13.10.10.10.6"><span class="ltx_text" id="A2.T13.10.10.10.6.1" style="background-color:#EBEBEB;">Interleaved Image-Text</span></td>
</tr>
<tr class="ltx_tr" id="A2.T13.11.11.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T13.11.11.11.2"><span class="ltx_text ltx_font_italic" id="A2.T13.11.11.11.2.1" style="background-color:#EBEBEB;">RealSyn<span class="ltx_text ltx_font_upright" id="A2.T13.11.11.11.2.1.1">100M</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.11.11.11.1"><math alttext="100\,862\,786" class="ltx_Math" display="inline" id="A2.T13.11.11.11.1.m1.1" style="background-color:#EBEBEB;"><semantics id="A2.T13.11.11.11.1.m1.1a"><mn id="A2.T13.11.11.11.1.m1.1.1" mathbackground="#EBEBEB" xref="A2.T13.11.11.11.1.m1.1.1.cmml">100 862 786</mn><annotation-xml encoding="MathML-Content" id="A2.T13.11.11.11.1.m1.1b"><cn id="A2.T13.11.11.11.1.m1.1.1.cmml" type="integer" xref="A2.T13.11.11.11.1.m1.1.1">100862786</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.11.11.11.1.m1.1c">100\,862\,786</annotation><annotation encoding="application/x-llamapun" id="A2.T13.11.11.11.1.m1.1d">100 862 786</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.11.11.11.3"><span class="ltx_text" id="A2.T13.11.11.11.3.1" style="background-color:#EBEBEB;">36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T13.11.11.11.4"><span class="ltx_text" id="A2.T13.11.11.11.4.1" style="background-color:#EBEBEB;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.11.11.11.5"><span class="ltx_text" id="A2.T13.11.11.11.5.1" style="background-color:#EBEBEB;">Realistic &amp; Synthetic</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.11.11.11.6"><span class="ltx_text" id="A2.T13.11.11.11.6.1" style="background-color:#EBEBEB;">Interleaved Image-Text</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 14 presents ablation study results focusing on the impact of different text types within the RealSyn15M dataset.  It compares the performance of models trained using varying combinations of realistic texts (retrieved from the dataset) and synthetic texts (generated by the model, augmented with image semantics). This allows researchers to isolate the contributions of each text type to model performance.  The results show the effects of using different numbers of realistic and synthetic texts in the training process.
> <details>
> <summary>read the caption</summary>
> Table 14: Ablation experiment results using different types of text on RealSyn15M. Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT: the k𝑘kitalic_k-th retrieved semantic relevant realistic text. Tsksubscriptsuperscript𝑇𝑘𝑠T^{k}_{s}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT: the image semantic augmented synthetic text for Trksubscriptsuperscript𝑇𝑘𝑟T^{k}_{r}italic_T start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12513/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12513/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}