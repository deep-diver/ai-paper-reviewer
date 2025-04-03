---
title: "Enhanced OoD Detection through Cross-Modal Alignment of Multi-Modal Representations"
summary: "Enhance OoD detection with Cross-Modal Alignment, achieving state-of-the-art performance by bridging the modality gap in vision-language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Object Detection", "🏢 Seoul National University of Science and Technology",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18817 {{< /keyword >}}
{{< keyword icon="writer" >}} Jeonghyeon Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18817" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18817" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18817/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing Out-of-Distribution Detection (OoDD) methods mainly use single-modality models. Recent techniques use vision-language models (VLMs) like CLIP, which offer multi-modal representations via zero-shot learning. But, these methods often freeze or only partially tune pretrained weights, which isn't ideal for downstream tasks and maintaining high ID accuracy. The core issue is a modality gap within in-distribution (ID) embeddings, where images and texts are unexpectedly separated in representation space, thus, limiting how well they can leverage the textual knowledge.



To address this, this paper introduces Cross-Modal Alignment (CMA), which fine-tunes image and text encoders to improve both OoDD performance and ID accuracy. CMA enhances cross-modal alignment by regularizing the distances between image and text embeddings of ID data. This method aligns similar semantics from different modalities (text and image) more closely in the hyperspherical representation space. Experiment results show that CMA achieves SOTA performance on multiple benchmark datasets.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Cross-Modal Alignment (CMA) effectively aligns image-text embeddings on a hypersphere. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method is equivalent to maximizing the log-likelihood of a joint energy-based model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach achieves state-of-the-art performance on OoD benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **enhances OoD detection by bridging the modality gap in VLMs**, leading to SOTA performance. It offers a practical solution with theoretical grounding for **improving model reliability in open-world applications** and inspires further research into cross-modal alignment strategies. By integrating a generative term into contrastive learning, this work **opens new avenues for interpretable and effective OoDD in multimodal settings**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18817/x1.png)

> 🔼 This figure illustrates the concept of Cross-Modal Alignment (CMA) in a hyperspherical embedding space.  Initially, the embedding space shows a bipartite separation between image and text embeddings.  Through CMA, in-distribution (ID) images and texts are brought closer together in the hypersphere while maintaining a clear separation from out-of-distribution (OoD) texts. This alignment enhances the discriminability of ID data from OoD data and negative examples, improving both in-distribution accuracy and out-of-distribution detection performance.
> <details>
> <summary>read the caption</summary>
> (a) Illustration of CMA
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.35">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.35.32.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S3.T1.35.32.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.35.32.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.32.1.2.1" style="font-size:90%;">iNaturalist</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.35.32.1.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.32.1.3.1" style="font-size:90%;">SUN</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.35.32.1.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.32.1.4.1" style="font-size:90%;">Places</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.35.32.1.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.32.1.5.1" style="font-size:90%;">Textures</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.35.32.1.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.32.1.6.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.14.10.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.14.10.11.1" style="font-size:90%;">Methods</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.5.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.5.1.1.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.m1.1b"><ci id="S3.T1.5.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.6.2.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.6.2.2.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.2.2.1.m1.1"><semantics id="S3.T1.6.2.2.1.m1.1a"><mo id="S3.T1.6.2.2.1.m1.1.1" stretchy="false" xref="S3.T1.6.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.2.2.1.m1.1b"><ci id="S3.T1.6.2.2.1.m1.1.1.cmml" xref="S3.T1.6.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.3.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.7.3.3.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.7.3.3.1.m1.1"><semantics id="S3.T1.7.3.3.1.m1.1a"><mo id="S3.T1.7.3.3.1.m1.1.1" stretchy="false" xref="S3.T1.7.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.3.3.1.m1.1b"><ci id="S3.T1.7.3.3.1.m1.1.1.cmml" xref="S3.T1.7.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.8.4.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.8.4.4.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.4.4.1.m1.1"><semantics id="S3.T1.8.4.4.1.m1.1a"><mo id="S3.T1.8.4.4.1.m1.1.1" stretchy="false" xref="S3.T1.8.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.4.4.1.m1.1b"><ci id="S3.T1.8.4.4.1.m1.1.1.cmml" xref="S3.T1.8.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.5.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.9.5.5.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.5.5.1.m1.1"><semantics id="S3.T1.9.5.5.1.m1.1a"><mo id="S3.T1.9.5.5.1.m1.1.1" stretchy="false" xref="S3.T1.9.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.5.5.1.m1.1b"><ci id="S3.T1.9.5.5.1.m1.1.1.cmml" xref="S3.T1.9.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.5.5.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.10.6.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.10.6.6.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.10.6.6.1.m1.1"><semantics id="S3.T1.10.6.6.1.m1.1a"><mo id="S3.T1.10.6.6.1.m1.1.1" stretchy="false" xref="S3.T1.10.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.6.6.1.m1.1b"><ci id="S3.T1.10.6.6.1.m1.1.1.cmml" xref="S3.T1.10.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.11.7.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.11.7.7.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.11.7.7.1.m1.1"><semantics id="S3.T1.11.7.7.1.m1.1a"><mo id="S3.T1.11.7.7.1.m1.1.1" stretchy="false" xref="S3.T1.11.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.7.7.1.m1.1b"><ci id="S3.T1.11.7.7.1.m1.1.1.cmml" xref="S3.T1.11.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.12.8.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.12.8.8.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.12.8.8.1.m1.1"><semantics id="S3.T1.12.8.8.1.m1.1a"><mo id="S3.T1.12.8.8.1.m1.1.1" stretchy="false" xref="S3.T1.12.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.8.8.1.m1.1b"><ci id="S3.T1.12.8.8.1.m1.1.1.cmml" xref="S3.T1.12.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.13.9.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.13.9.9.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.13.9.9.1.m1.1"><semantics id="S3.T1.13.9.9.1.m1.1a"><mo id="S3.T1.13.9.9.1.m1.1.1" stretchy="false" xref="S3.T1.13.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.9.9.1.m1.1b"><ci id="S3.T1.13.9.9.1.m1.1.1.cmml" xref="S3.T1.13.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.9.9.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.14.10.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.14.10.10.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.14.10.10.1.m1.1"><semantics id="S3.T1.14.10.10.1.m1.1a"><mo id="S3.T1.14.10.10.1.m1.1.1" stretchy="false" xref="S3.T1.14.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.10.10.1.m1.1b"><ci id="S3.T1.14.10.10.1.m1.1.1.cmml" xref="S3.T1.14.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.33.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.35.33.2.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.35.33.2.1.1" style="font-size:90%;">Zero-Shot (ZS)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.3" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.4" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.5" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.6" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.7" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.8" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.9" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.10" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.33.2.11" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.34.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.35.34.3.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.1.1" style="font-size:90%;">MCM</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.2.1" style="font-size:90%;">32.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.3.1" style="font-size:90%;">94.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.4.1" style="font-size:90%;">39.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.5.1" style="font-size:90%;">92.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.6.1" style="font-size:90%;">44.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.7.1" style="font-size:90%;">89.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.8.1" style="font-size:90%;">57.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.9.1" style="font-size:90%;">85.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.10.1" style="font-size:90%;">43.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.34.3.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.34.3.11.1" style="font-size:90%;">90.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.35.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.35.35.4.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.1.1" style="font-size:90%;">CLIPN</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.2.1" style="font-size:90%;">23.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.3.1" style="font-size:90%;">95.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.4.1" style="font-size:90%;">26.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.5.1" style="font-size:90%;">93.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.6.1" style="font-size:90%;">33.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.7.1" style="font-size:90%;">92.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.8.1" style="font-size:90%;">40.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.9.1" style="font-size:90%;">90.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.10.1" style="font-size:90%;">31.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.35.4.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.35.4.11.1" style="font-size:90%;">93.10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.36.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.35.36.5.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.1.1" style="font-size:90%;">NegLabel</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.35.36.5.2.1" style="font-size:90%;">2.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.3.1" style="font-size:90%;">99.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.4.1" style="font-size:90%;">23.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.35.36.5.5.1" style="font-size:90%;">95.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.6.1" style="font-size:90%;">39.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.7.1" style="font-size:90%;">90.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.8.1" style="font-size:90%;">46.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.9.1" style="font-size:90%;">89.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.10.1" style="font-size:90%;">27.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.35.36.5.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.36.5.11.1" style="font-size:90%;">93.78</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.37.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.35.37.6.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.35.37.6.1.1" style="font-size:90%;">Prompt Learning (PL)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.3" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.4" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.5" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.6" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.7" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.8" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.9" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.10" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.37.6.11" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.15.11.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.15.11.1.1" style="font-size:90%;">CoOp</span><span class="ltx_text ltx_markedasmath" id="S3.T1.15.11.1.2" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.2.1" style="font-size:90%;">26.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.3.1" style="font-size:90%;">94.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.4.1" style="font-size:90%;">35.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.5.1" style="font-size:90%;">92.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.6.1" style="font-size:90%;">43.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.7.1" style="font-size:90%;">89.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.8.1" style="font-size:90%;">41.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.9.1" style="font-size:90%;">90.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.10.1" style="font-size:90%;">36.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.15.11.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.15.11.11.1" style="font-size:90%;">91.84</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.16.12.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.16.12.1.1" style="font-size:90%;">CoOp</span><span class="ltx_text ltx_markedasmath" id="S3.T1.16.12.1.2" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.2.1" style="font-size:90%;">4.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.3.1" style="font-size:90%;">98.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.4.1" style="font-size:90%;">25.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.5.1" style="font-size:90%;">94.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.16.12.6.1" style="font-size:90%;">30.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.16.12.7.1" style="font-size:90%;">93.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.8.1" style="font-size:90%;">44.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.9.1" style="font-size:90%;">89.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.16.12.10.1" style="font-size:90%;">26.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.16.12.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.16.12.11.1" style="font-size:90%;">94.10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.17.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.17.13.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.17.13.1.1" style="font-size:90%;">LoCoOp</span><span class="ltx_text ltx_markedasmath" id="S3.T1.17.13.1.2" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.2.1" style="font-size:90%;">23.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.3.1" style="font-size:90%;">95.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.4.1" style="font-size:90%;">33.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.5.1" style="font-size:90%;">93.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.6.1" style="font-size:90%;">40.74</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.7.1" style="font-size:90%;">90.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.8.1" style="font-size:90%;">40.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.17.13.9.1" style="font-size:90%;">91.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.10.1" style="font-size:90%;">34.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.17.13.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.17.13.11.1" style="font-size:90%;">92.59</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.18.14.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.18.14.1.1" style="font-size:90%;">LoCoOp</span><span class="ltx_text ltx_markedasmath" id="S3.T1.18.14.1.2" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.2.1" style="font-size:90%;">3.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.3.1" style="font-size:90%;">99.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.4.1" style="font-size:90%;">46.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.5.1" style="font-size:90%;">90.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.6.1" style="font-size:90%;">55.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.7.1" style="font-size:90%;">87.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.8.1" style="font-size:90%;">46.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.9.1" style="font-size:90%;">89.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.10.1" style="font-size:90%;">37.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.18.14.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.18.14.11.1" style="font-size:90%;">91.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.38.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.35.38.7.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.35.38.7.1.1" style="font-size:90%;">Single-modal Fine-tuning (SMFT)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.3" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.4" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.5" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.6" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.7" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.8" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.9" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.10" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.38.7.11" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.19.15.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.19.15.1.1" style="font-size:90%;">LP</span><span class="ltx_text ltx_markedasmath" id="S3.T1.19.15.1.2" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.2.1" style="font-size:90%;">41.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.3.1" style="font-size:90%;">90.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.4.1" style="font-size:90%;">67.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.5.1" style="font-size:90%;">81.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.6.1" style="font-size:90%;">66.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.7.1" style="font-size:90%;">81.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.8.1" style="font-size:90%;">62.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.9.1" style="font-size:90%;">81.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.10.1" style="font-size:90%;">59.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.19.15.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.19.15.11.1" style="font-size:90%;">83.66</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.20.16.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.20.16.1.1" style="font-size:90%;">LP</span><span class="ltx_text ltx_markedasmath" id="S3.T1.20.16.1.2" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.2.1" style="font-size:90%;">28.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.3.1" style="font-size:90%;">94.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.4.1" style="font-size:90%;">51.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.5.1" style="font-size:90%;">89.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.6.1" style="font-size:90%;">51.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.7.1" style="font-size:90%;">88.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.8.1" style="font-size:90%;">53.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.9.1" style="font-size:90%;">86.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.10.1" style="font-size:90%;">46.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.20.16.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.20.16.11.1" style="font-size:90%;">89.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.21.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.21.17.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.21.17.1.1" style="font-size:90%;">LP</span><span class="ltx_text ltx_markedasmath" id="S3.T1.21.17.1.2" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.2.1" style="font-size:90%;">31.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.3.1" style="font-size:90%;">94.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.4.1" style="font-size:90%;">58.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.5.1" style="font-size:90%;">86.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.6.1" style="font-size:90%;">65.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.7.1" style="font-size:90%;">83.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.8.1" style="font-size:90%;">75.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.9.1" style="font-size:90%;">78.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.10.1" style="font-size:90%;">57.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.21.17.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.21.17.11.1" style="font-size:90%;">85.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.22.18.1.1" style="font-size:90%;">FFT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.22.18.1.2" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.2.1" style="font-size:90%;">51.66</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.3.1" style="font-size:90%;">87.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.4.1" style="font-size:90%;">70.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.5.1" style="font-size:90%;">79.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.6.1" style="font-size:90%;">71.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.7.1" style="font-size:90%;">79.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.8.1" style="font-size:90%;">70.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.9.1" style="font-size:90%;">78.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.10.1" style="font-size:90%;">66.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.22.18.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.22.18.11.1" style="font-size:90%;">81.39</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.23.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.23.19.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.23.19.1.1" style="font-size:90%;">FFT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.23.19.1.2" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.2.1" style="font-size:90%;">19.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.3.1" style="font-size:90%;">96.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.4.1" style="font-size:90%;">39.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.5.1" style="font-size:90%;">90.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.6.1" style="font-size:90%;">46.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.7.1" style="font-size:90%;">88.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.8.1" style="font-size:90%;">52.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.9.1" style="font-size:90%;">85.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.10.1" style="font-size:90%;">39.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.23.19.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.23.19.11.1" style="font-size:90%;">90.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.24.20.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.24.20.1.1" style="font-size:90%;">FFT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.24.20.1.2" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.2.1" style="font-size:90%;">24.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.3.1" style="font-size:90%;">95.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.4.1" style="font-size:90%;">58.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.5.1" style="font-size:90%;">84.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.6.1" style="font-size:90%;">59.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.7.1" style="font-size:90%;">83.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.8.1" style="font-size:90%;">55.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.9.1" style="font-size:90%;">84.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.10.1" style="font-size:90%;">49.74</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.24.20.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.24.20.11.1" style="font-size:90%;">87.18</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.25.21.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.25.21.1.1" style="font-size:90%;">LP-FT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.25.21.1.2" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.2.1" style="font-size:90%;">44.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.3.1" style="font-size:90%;">89.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.4.1" style="font-size:90%;">66.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.5.1" style="font-size:90%;">80.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.6.1" style="font-size:90%;">69.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.7.1" style="font-size:90%;">80.06</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.8.1" style="font-size:90%;">65.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.9.1" style="font-size:90%;">79.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.10.1" style="font-size:90%;">61.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.25.21.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.25.21.11.1" style="font-size:90%;">82.52</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.26.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.26.22.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.26.22.1.1" style="font-size:90%;">LP-FT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.26.22.1.2" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.2.1" style="font-size:90%;">27.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.3.1" style="font-size:90%;">94.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.4.1" style="font-size:90%;">46.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.5.1" style="font-size:90%;">87.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.6.1" style="font-size:90%;">52.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.7.1" style="font-size:90%;">86.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.8.1" style="font-size:90%;">53.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.9.1" style="font-size:90%;">84.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.10.1" style="font-size:90%;">44.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.26.22.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.26.22.11.1" style="font-size:90%;">88.06</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.27.23">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.27.23.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.27.23.1.1" style="font-size:90%;">LP-FT</span><span class="ltx_text ltx_markedasmath" id="S3.T1.27.23.1.2" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.2.1" style="font-size:90%;">29.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.3.1" style="font-size:90%;">93.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.4.1" style="font-size:90%;">48.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.5.1" style="font-size:90%;">87.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.6.1" style="font-size:90%;">53.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.7.1" style="font-size:90%;">85.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.8.1" style="font-size:90%;">54.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.9.1" style="font-size:90%;">83.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.10.1" style="font-size:90%;">46.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.27.23.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.27.23.11.1" style="font-size:90%;">87.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.39.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.35.39.8.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.35.39.8.1.1" style="font-size:90%;">Multi-modal Fine-tuning (MMFT)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.3" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.4" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.5" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.6" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.7" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.8" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.9" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.10" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T1.35.39.8.11" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.28.24.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.28.24.1.1" style="font-size:90%;">FLYP</span><span class="ltx_text ltx_markedasmath" id="S3.T1.28.24.1.2" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.2.1" style="font-size:90%;">24.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.3.1" style="font-size:90%;">94.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.4.1" style="font-size:90%;">39.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.5.1" style="font-size:90%;">90.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.6.1" style="font-size:90%;">47.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.7.1" style="font-size:90%;">87.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.8.1" style="font-size:90%;">41.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.9.1" style="font-size:90%;">89.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.10.1" style="font-size:90%;">38.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.28.24.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.28.24.11.1" style="font-size:90%;">90.36</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.29.25">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.29.25.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_text" id="S3.T1.29.25.1.1" style="font-size:90%;">FLYP</span><span class="ltx_text ltx_markedasmath" id="S3.T1.29.25.1.2" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.2.1" style="font-size:90%;">3.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.3.1" style="font-size:90%;">99.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.4.1" style="font-size:90%;">23.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.5.1" style="font-size:90%;">94.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.6.1" style="font-size:90%;">37.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.7.1" style="font-size:90%;">90.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.8.1" style="font-size:90%;">41.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.9.1" style="font-size:90%;">89.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.10.1" style="font-size:90%;">26.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.29.25.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.29.25.11.1" style="font-size:90%;">93.57</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.31.27">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.31.27.2" style="padding-left:1.1pt;padding-right:1.1pt;">
<math alttext="m^{2}" class="ltx_Math" display="inline" id="S3.T1.30.26.1.m1.1"><semantics id="S3.T1.30.26.1.m1.1a"><msup id="S3.T1.30.26.1.m1.1.1" xref="S3.T1.30.26.1.m1.1.1.cmml"><mi id="S3.T1.30.26.1.m1.1.1.2" mathsize="90%" xref="S3.T1.30.26.1.m1.1.1.2.cmml">m</mi><mn id="S3.T1.30.26.1.m1.1.1.3" mathsize="90%" xref="S3.T1.30.26.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S3.T1.30.26.1.m1.1b"><apply id="S3.T1.30.26.1.m1.1.1.cmml" xref="S3.T1.30.26.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.30.26.1.m1.1.1.1.cmml" xref="S3.T1.30.26.1.m1.1.1">superscript</csymbol><ci id="S3.T1.30.26.1.m1.1.1.2.cmml" xref="S3.T1.30.26.1.m1.1.1.2">𝑚</ci><cn id="S3.T1.30.26.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.30.26.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.30.26.1.m1.1c">m^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.30.26.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S3.T1.31.27.2.1" style="font-size:90%;">-mix</span><span class="ltx_text ltx_markedasmath" id="S3.T1.31.27.2.2" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.3.1" style="font-size:90%;">22.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.4.1" style="font-size:90%;">95.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.5.1" style="font-size:90%;">39.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.6.1" style="font-size:90%;">91.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.7.1" style="font-size:90%;">47.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.8.1" style="font-size:90%;">88.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.9.1" style="font-size:90%;">43.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.10.1" style="font-size:90%;">90.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.11.1" style="font-size:90%;">38.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.31.27.12" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.31.27.12.1" style="font-size:90%;">91.58</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.33.29">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.33.29.2" style="padding-left:1.1pt;padding-right:1.1pt;">
<math alttext="m^{2}" class="ltx_Math" display="inline" id="S3.T1.32.28.1.m1.1"><semantics id="S3.T1.32.28.1.m1.1a"><msup id="S3.T1.32.28.1.m1.1.1" xref="S3.T1.32.28.1.m1.1.1.cmml"><mi id="S3.T1.32.28.1.m1.1.1.2" mathsize="90%" xref="S3.T1.32.28.1.m1.1.1.2.cmml">m</mi><mn id="S3.T1.32.28.1.m1.1.1.3" mathsize="90%" xref="S3.T1.32.28.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S3.T1.32.28.1.m1.1b"><apply id="S3.T1.32.28.1.m1.1.1.cmml" xref="S3.T1.32.28.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.32.28.1.m1.1.1.1.cmml" xref="S3.T1.32.28.1.m1.1.1">superscript</csymbol><ci id="S3.T1.32.28.1.m1.1.1.2.cmml" xref="S3.T1.32.28.1.m1.1.1.2">𝑚</ci><cn id="S3.T1.32.28.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.32.28.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.32.28.1.m1.1c">m^{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.32.28.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S3.T1.33.29.2.1" style="font-size:90%;">-mix</span><span class="ltx_text ltx_markedasmath" id="S3.T1.33.29.2.2" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.3.1" style="font-size:90%;">2.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.33.29.4.1" style="font-size:90%;">99.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.33.29.5.1" style="font-size:90%;">23.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.6.1" style="font-size:90%;">94.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.7.1" style="font-size:90%;">35.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.8.1" style="font-size:90%;">91.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.33.29.9.1" style="font-size:90%;">36.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.10.1" style="font-size:90%;">90.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.33.29.11.1" style="font-size:90%;">24.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.33.29.12" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.33.29.12.1" style="font-size:90%;">94.05</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.34.30" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.34.30.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.1.1" style="font-size:90%;background-color:#E6E6E6;">CMA<span class="ltx_text ltx_markedasmath" id="S3.T1.34.30.1.1.1" style="font-size:78%;background-color:#E6E6E6;">MCM</span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.2.1" style="font-size:90%;background-color:#E6E6E6;">22.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.3.1" style="font-size:90%;background-color:#E6E6E6;">95.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.4.1" style="font-size:90%;background-color:#E6E6E6;">40.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.5.1" style="font-size:90%;background-color:#E6E6E6;">91.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.6.1" style="font-size:90%;background-color:#E6E6E6;">48.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.7.1" style="font-size:90%;background-color:#E6E6E6;">88.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.8.1" style="font-size:90%;background-color:#E6E6E6;">44.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.9.1" style="font-size:90%;background-color:#E6E6E6;">89.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.10.1" style="font-size:90%;background-color:#E6E6E6;">39.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.34.30.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.34.30.11.1" style="font-size:90%;background-color:#E6E6E6;">91.43</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.35.31" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.35.31.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S3.T1.35.31.1.1" style="font-size:90%;background-color:#E6E6E6;">CMA<span class="ltx_text ltx_markedasmath" id="S3.T1.35.31.1.1.1" style="font-size:78%;background-color:#E6E6E6;">NegLabel</span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.2.1" style="font-size:90%;background-color:#E6E6E6;">1.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.3.1" style="font-size:90%;background-color:#E6E6E6;">99.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.4.1" style="font-size:90%;background-color:#E6E6E6;">16.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.5.1" style="font-size:90%;background-color:#E6E6E6;">96.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.6.1" style="font-size:90%;background-color:#E6E6E6;">27.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.7.1" style="font-size:90%;background-color:#E6E6E6;">93.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.8.1" style="font-size:90%;background-color:#E6E6E6;">33.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.9" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.9.1" style="font-size:90%;background-color:#E6E6E6;">91.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.10" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.10.1" style="font-size:90%;background-color:#E6E6E6;">19.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.35.31.11" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.35.31.11.1" style="font-size:90%;background-color:#E6E6E6;">95.13</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of various Out-of-Distribution Detection (OoDD) methods on the Multi-modal Out-of-Distribution benchmark (MOS).  The table evaluates each method's performance across multiple metrics, including False Positive Rate at 95% True Positive Rate (FPR95) and Area Under the Receiver Operating Characteristic curve (AUROC) for five different out-of-distribution (OoD) datasets: iNaturalist, SUN, Places, Textures, and an average across all five.  Lower FPR95 and higher AUROC values indicate better performance. The table also showcases In-Distribution (ID) accuracy for each method, highlighting the trade-off between OoDD performance and ID accuracy.  The results are categorized by method type (Zero-Shot, Prompt Learning, Single-modal Fine-tuning, and Multi-modal Fine-tuning), offering insights into the effectiveness of various approaches.  Performance is compared using arrows indicating whether higher or lower values are better for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of OoDD performance on the MOS benchmark dataset. ↑↑\uparrow↑ and ↓↓\downarrow↓ denote that higher and lower values are better, respectively. The highest values are highlighted in bold, and the second-highest values are underlined.
> </details>





### In-depth insights


#### MMFT for OoDD
**Multi-Modal Fine-Tuning (MMFT) for Out-of-Distribution Detection (OoDD)** holds significant promise, leveraging the synergy between vision and language models. Unlike single-modality approaches, MMFT harnesses the rich information encoded in both images and text, potentially leading to more robust and accurate OoDD. The key idea is to fine-tune pre-trained vision-language models, adapting them to specific downstream tasks while preserving their generalization capabilities. This involves simultaneously adjusting the image and text encoders to create a shared representation space where in-distribution (ID) data is easily distinguishable from OoD samples. MMFT methods can exploit textual information to enhance OoDD performance. For instance, negative prompts or adversarial attacks on the text encoder can help the model learn to identify unusual or unexpected inputs. By aligning image and text representations, MMFT can effectively capture the semantic relationships between objects and their descriptions, enabling the model to detect anomalies based on mismatches or inconsistencies. This approach offers a flexible and powerful way to improve OoDD, leveraging the strengths of both vision and language modalities.

#### CMA: Aligning V+L
**Cross-Modal Alignment (CMA)**, focusing on Vision (V) and Language (L), aims to bridge the gap between visual and textual representations. This alignment is vital for tasks requiring a deep understanding of both modalities, like image captioning, visual question answering, and, as highlighted in this paper, **out-of-distribution detection (OoDD)**. The core idea is to bring the embeddings of semantically related images and text closer in a shared representation space. This not only enhances the model's ability to understand the content of each modality but also to relate them effectively. By encouraging **modality alignment**, CMA allows the model to better leverage the information present in both the image and text, leading to improved performance across various tasks. Crucially, the strength of alignment needs careful tuning, avoiding over-alignment that could diminish the distinctiveness of individual representations. This balance is key to effective cross-modal understanding.

#### EBM on Hypersphere
Discussing Energy-Based Models (EBMs) on a hypersphere entails several key insights. **EBMs learn an energy function that assigns a scalar value to each data point, reflecting its compatibility with the learned distribution.** By constraining data to a hypersphere (e.g., using normalized embeddings), we gain benefits. Firstly, **it simplifies the partition function**, a notorious challenge in EBM training, as the volume is fixed. Secondly, a hyperspherical representation **promotes uniformity and improves out-of-distribution (OoD) detection**. The energy can relate to cosine similarity. High similarity implies low energy and in-distribution, while the converse suggests an anomaly. Contrastive learning implicitly shapes this energy landscape. Furthermore, incorporating generative terms alongside discriminative loss in EBMs could enhance data generation. The EBM framework facilitates the **integration of diverse modalities** via a joint energy function, offering flexibility in modeling complex data relationships. However, we must cautiously pick the **hyperparameters** to weight them correctly to obtain a reliable output.

#### Mitigating Gap
The concept of "mitigating the gap" in the context of multimodal learning, specifically for out-of-distribution detection (OoDD), is a crucial area. **This gap often refers to the discrepancy between how different modalities (e.g., image and text) are represented in the embedding space**. A large modality gap can hinder the effective transfer of knowledge between modalities, leading to suboptimal performance, especially in OoDD tasks.  **Bridging this gap involves aligning the representations of different modalities** so that similar semantic information from different sources is mapped closer together in the embedding space. Techniques like contrastive learning, regularization terms that encourage cross-modal alignment, and joint fine-tuning strategies are key to achieving this. **Successful mitigation of the modality gap should improve OoDD performance** by enabling better utilization of pretrained knowledge and enhancing the discriminability between in-distribution and out-of-distribution samples.

#### CMA for MMFT++
If "CMA for MMFT++" represents an advanced approach to cross-modal alignment (CMA) within multi-modal fine-tuning (MMFT), it suggests a significant progression in the field. The "++" implies enhancements beyond standard MMFT, possibly addressing its limitations in leveraging pre-trained knowledge or mitigating modality gaps. **CMA likely refines how image and text embeddings are aligned**, aiming for a more cohesive representation space. This could involve novel regularization techniques, loss functions, or architectural modifications. The goal is to improve both in-distribution (ID) accuracy and out-of-distribution (OoD) detection. **Effective CMA would lead to better utilization of textual information** in vision-language models (VLMs), enabling more robust OoDD performance. This advanced CMA likely addresses challenges such as preventing overfitting during fine-tuning, ensuring sufficient separability between ID and OoD data, and adapting to diverse downstream datasets. The approach might incorporate adaptive weighting schemes or curriculum learning strategies to optimize the alignment process. Ultimately, "CMA for MMFT++" aims to achieve **state-of-the-art OoDD performance** while maintaining high ID accuracy, making VLMs more reliable and safe in open-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18817/x2.png)

> 🔼 The figure shows a scatter plot comparing the in-distribution accuracy (ID ACC) against the out-of-distribution detection performance (1 - FPR95) on four different out-of-distribution datasets using the MOS benchmark.  Each point represents a different method. The top-right corner indicates superior performance (high ID accuracy and high OoD detection rate). The plot illustrates the trade-off between ID accuracy and OoD performance across various methods, including zero-shot, prompt learning, single-modality fine-tuning, and multi-modality fine-tuning approaches.
> <details>
> <summary>read the caption</summary>
> (b) MOS benchmark: ID ACC vs. 1-FPR95
> </details>



![](https://arxiv.org/html/2503.18817/x3.png)

> 🔼 Figure 1(a) shows how the hyperspherical embedding space changes before and after applying the proposed Cross-Modal Alignment (CMA) method.  Before CMA, image and text embeddings are distinctly separated (a phenomenon called modality gap). After CMA, in-distribution (ID) image and text embeddings (e.g., 'dog' image and 'A photo of a dog' text) are brought closer together, while out-of-distribution (OoD) text embeddings remain separated. This improved alignment enhances the model's ability to distinguish ID data from OoD data, leading to better out-of-distribution detection (OoDD) performance. Figure 1(b) compares different OoD detection methods (MCM and NegLabel). Our method (CMA) improves upon both, particularly improving NegLabel's effectiveness. The top-right corner represents high ID accuracy and OoDD performance, showing that CMA achieves state-of-the-art results.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) illustrates the hyperspherical embedding space and the corresponding cosine similarity values between the “dog” image and “A photo of a <label>expectationlabel<\textit{label}>< label >” text embeddings. Initially, the embedding space shows a bipartite separation between images and texts (top) [26, 35, 39]. Through CMA, ID images and texts are brought closer together while maintaining a clear separation from OoD texts (bottom). This alignment enhances the discriminability of ID data from negative concepts (i.e., OoD labels), thereby improving OoDD performance. In (b), uncolored shapes represent MCM, while colored shapes denote NegLabel. The arrows indicate the effect of NegLabel compared to MCM, demonstrating that our method enhances its effectiveness. Points closer to the top right indicate better ID accuracy and OoDD performance.
> </details>



![](https://arxiv.org/html/2503.18817/x4.png)

> 🔼 Figure 4 visualizes the embedding space learned by different models using PCA on ImageNet-1k data.  Subfigures (a) through (d) show the embedding space produced by Zero-Shot, FLYP, m²-mix, and the proposed CMA method, respectively.  In each subfigure, orange points represent ID image embeddings, and blue points represent ID text embeddings. The visualization helps to illustrate how the different methods position ID image and text embeddings in the embedding space and shows the effectiveness of the proposed CMA method in aligning image and text embeddings.
> <details>
> <summary>read the caption</summary>
> (a) Zero-Shot
> </details>



![](https://arxiv.org/html/2503.18817/x5.png)

> 🔼 This figure shows the visualization of image and text embeddings using Principal Component Analysis (PCA) on the ImageNet-1k dataset and negative texts.  The visualization specifically focuses on the results obtained using the FLYP method. Orange and blue points represent in-distribution (ID) image and text embeddings respectively, while red points depict the negative text embeddings.  The visualization helps illustrate how FLYP handles the multi-modal representation space and the separation between ID and OOD data.
> <details>
> <summary>read the caption</summary>
> (b) FLYP
> </details>



![](https://arxiv.org/html/2503.18817/x6.png)

> 🔼 The figure displays the results of the m2-mix method on the hyperspherical embedding space.  It visually demonstrates how m2-mix, a multi-modal fine-tuning method, affects the arrangement of image and text embeddings. In particular, it likely shows the distribution of image and text embeddings in a hyperspherical space, highlighting the impact of modality gap reduction on out-of-distribution (OoD) detection performance.  The visualization may use techniques like t-SNE or PCA to reduce the dimensionality of the high-dimensional embedding space for easier interpretation.
> <details>
> <summary>read the caption</summary>
> (c) m2superscript𝑚2m^{2}italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT-mix
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.35">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.35.36.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S4.T2.35.36.1.1" style="padding-left:0.3pt;padding-right:0.3pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.2" style="padding-left:0.3pt;padding-right:0.3pt;">SSB-hard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.3" style="padding-left:0.3pt;padding-right:0.3pt;">NINCO</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.4" style="padding-left:0.3pt;padding-right:0.3pt;">Near-OoD</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.5" style="padding-left:0.3pt;padding-right:0.3pt;">iNaturalist</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.6" style="padding-left:0.3pt;padding-right:0.3pt;">Textures</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.7" style="padding-left:0.3pt;padding-right:0.3pt;">Openimage-O</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.35.36.1.8" style="padding-left:0.3pt;padding-right:0.3pt;">Far-OoD</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.14.14.15" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.15.1">Methods</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.3.3.3" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.5.5.5" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.6.6.6" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.6.6.6.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.7.7.7" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.7.7.7.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.8.8" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.8.8.8.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.9.9.9" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.9.9.9.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.1.m1.1a"><mo id="S4.T2.9.9.9.1.m1.1.1" stretchy="false" xref="S4.T2.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.10.10.10" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.10.10.10.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.1.m1.1a"><mo id="S4.T2.10.10.10.1.m1.1.1" stretchy="false" xref="S4.T2.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.1.m1.1b"><ci id="S4.T2.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.11.11.11" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.11.11.11.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.11.11.11.1.m1.1"><semantics id="S4.T2.11.11.11.1.m1.1a"><mo id="S4.T2.11.11.11.1.m1.1.1" stretchy="false" xref="S4.T2.11.11.11.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.1.m1.1b"><ci id="S4.T2.11.11.11.1.m1.1.1.cmml" xref="S4.T2.11.11.11.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.12.12.12" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.12.12.12.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.12.12.1.m1.1"><semantics id="S4.T2.12.12.12.1.m1.1a"><mo id="S4.T2.12.12.12.1.m1.1.1" stretchy="false" xref="S4.T2.12.12.12.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.1.m1.1b"><ci id="S4.T2.12.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.12.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.13.13.13" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.13.13.13.1" style="font-size:70%;">FPR95<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.13.13.13.1.m1.1"><semantics id="S4.T2.13.13.13.1.m1.1a"><mo id="S4.T2.13.13.13.1.m1.1.1" stretchy="false" xref="S4.T2.13.13.13.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.1.m1.1b"><ci id="S4.T2.13.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.14.14.14" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.14.14.14.1" style="font-size:70%;">AUROC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.14.14.1.m1.1"><semantics id="S4.T2.14.14.14.1.m1.1a"><mo id="S4.T2.14.14.14.1.m1.1.1" stretchy="false" xref="S4.T2.14.14.14.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.1.m1.1b"><ci id="S4.T2.14.14.14.1.m1.1.1.cmml" xref="S4.T2.14.14.14.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.37.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.35.37.2.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.35.37.2.1.1">Zero-Shot (ZS)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.2" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.3" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.4" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.5" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.6" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.7" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.8" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.9" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.10" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.11" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.12" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.13" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.14" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.37.2.15" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.38.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.35.38.3.1" style="padding-left:0.3pt;padding-right:0.3pt;">MCM</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.2" style="padding-left:0.3pt;padding-right:0.3pt;">88.32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.3" style="padding-left:0.3pt;padding-right:0.3pt;">65.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.4" style="padding-left:0.3pt;padding-right:0.3pt;">79.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.5" style="padding-left:0.3pt;padding-right:0.3pt;">74.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.6" style="padding-left:0.3pt;padding-right:0.3pt;">83.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.7" style="padding-left:0.3pt;padding-right:0.3pt;">69.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.8" style="padding-left:0.3pt;padding-right:0.3pt;">32.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.10" style="padding-left:0.3pt;padding-right:0.3pt;">55.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.11" style="padding-left:0.3pt;padding-right:0.3pt;">87.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.12" style="padding-left:0.3pt;padding-right:0.3pt;">44.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.13" style="padding-left:0.3pt;padding-right:0.3pt;">91.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.14" style="padding-left:0.3pt;padding-right:0.3pt;">44.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.38.3.15" style="padding-left:0.3pt;padding-right:0.3pt;">90.92</td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.39.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.35.39.4.1" style="padding-left:0.3pt;padding-right:0.3pt;">NegLabel</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.2" style="padding-left:0.3pt;padding-right:0.3pt;">81.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.3" style="padding-left:0.3pt;padding-right:0.3pt;">71.32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.4" style="padding-left:0.3pt;padding-right:0.3pt;">69.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.5" style="padding-left:0.3pt;padding-right:0.3pt;">77.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.6" style="padding-left:0.3pt;padding-right:0.3pt;">75.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.7" style="padding-left:0.3pt;padding-right:0.3pt;">74.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.8" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.35.39.4.8.1">2.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.9" style="padding-left:0.3pt;padding-right:0.3pt;">99.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.10" style="padding-left:0.3pt;padding-right:0.3pt;">44.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.11" style="padding-left:0.3pt;padding-right:0.3pt;">90.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.12" style="padding-left:0.3pt;padding-right:0.3pt;">31.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.13" style="padding-left:0.3pt;padding-right:0.3pt;">93.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.14" style="padding-left:0.3pt;padding-right:0.3pt;">26.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.35.39.4.15" style="padding-left:0.3pt;padding-right:0.3pt;">94.34</td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.40.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.35.40.5.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.35.40.5.1.1">Prompt Learning (PL)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.2" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.3" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.4" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.5" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.6" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.7" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.8" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.9" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.10" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.11" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.12" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.13" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.14" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.40.5.15" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.15.15.1" style="padding-left:0.3pt;padding-right:0.3pt;">CoOp<span class="ltx_text ltx_markedasmath" id="S4.T2.15.15.1.1" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.2" style="padding-left:0.3pt;padding-right:0.3pt;">86.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.3" style="padding-left:0.3pt;padding-right:0.3pt;">67.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.4" style="padding-left:0.3pt;padding-right:0.3pt;">77.24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.5" style="padding-left:0.3pt;padding-right:0.3pt;">74.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.6" style="padding-left:0.3pt;padding-right:0.3pt;">81.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.7" style="padding-left:0.3pt;padding-right:0.3pt;">71.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.8" style="padding-left:0.3pt;padding-right:0.3pt;">26.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.10" style="padding-left:0.3pt;padding-right:0.3pt;">38.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.11" style="padding-left:0.3pt;padding-right:0.3pt;">91.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.12" style="padding-left:0.3pt;padding-right:0.3pt;">37.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.13" style="padding-left:0.3pt;padding-right:0.3pt;">92.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.14" style="padding-left:0.3pt;padding-right:0.3pt;">34.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.15.15.15" style="padding-left:0.3pt;padding-right:0.3pt;">92.83</td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.16.16.1" style="padding-left:0.3pt;padding-right:0.3pt;">CoOp<span class="ltx_text ltx_markedasmath" id="S4.T2.16.16.1.1" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.2" style="padding-left:0.3pt;padding-right:0.3pt;">68.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.3" style="padding-left:0.3pt;padding-right:0.3pt;">78.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.4" style="padding-left:0.3pt;padding-right:0.3pt;">57.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.5" style="padding-left:0.3pt;padding-right:0.3pt;">84.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.6" style="padding-left:0.3pt;padding-right:0.3pt;">62.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.7" style="padding-left:0.3pt;padding-right:0.3pt;">81.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.8" style="padding-left:0.3pt;padding-right:0.3pt;">4.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.9" style="padding-left:0.3pt;padding-right:0.3pt;">98.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.10" style="padding-left:0.3pt;padding-right:0.3pt;">42.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.11" style="padding-left:0.3pt;padding-right:0.3pt;">90.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.12" style="padding-left:0.3pt;padding-right:0.3pt;">23.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.13" style="padding-left:0.3pt;padding-right:0.3pt;">95.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.14" style="padding-left:0.3pt;padding-right:0.3pt;">23.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.16.16.15" style="padding-left:0.3pt;padding-right:0.3pt;">94.81</td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.17.17.1" style="padding-left:0.3pt;padding-right:0.3pt;">LoCoOp<span class="ltx_text ltx_markedasmath" id="S4.T2.17.17.1.1" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.2" style="padding-left:0.3pt;padding-right:0.3pt;">87.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.3" style="padding-left:0.3pt;padding-right:0.3pt;">66.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.4" style="padding-left:0.3pt;padding-right:0.3pt;">77.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.5" style="padding-left:0.3pt;padding-right:0.3pt;">73.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.6" style="padding-left:0.3pt;padding-right:0.3pt;">82.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.7" style="padding-left:0.3pt;padding-right:0.3pt;">69.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.8" style="padding-left:0.3pt;padding-right:0.3pt;">22.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.9" style="padding-left:0.3pt;padding-right:0.3pt;">95.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.10" style="padding-left:0.3pt;padding-right:0.3pt;">37.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.11" style="padding-left:0.3pt;padding-right:0.3pt;">92.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.12" style="padding-left:0.3pt;padding-right:0.3pt;">37.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.13" style="padding-left:0.3pt;padding-right:0.3pt;">92.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.14" style="padding-left:0.3pt;padding-right:0.3pt;">32.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.17.17.15" style="padding-left:0.3pt;padding-right:0.3pt;">93.28</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.18.18.1" style="padding-left:0.3pt;padding-right:0.3pt;">LoCoOp<span class="ltx_text ltx_markedasmath" id="S4.T2.18.18.1.1" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.2" style="padding-left:0.3pt;padding-right:0.3pt;">76.03</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.3" style="padding-left:0.3pt;padding-right:0.3pt;">74.42</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.4" style="padding-left:0.3pt;padding-right:0.3pt;">66.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.5" style="padding-left:0.3pt;padding-right:0.3pt;">80.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.6" style="padding-left:0.3pt;padding-right:0.3pt;">71.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.7" style="padding-left:0.3pt;padding-right:0.3pt;">77.69</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.8" style="padding-left:0.3pt;padding-right:0.3pt;">3.70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.9" style="padding-left:0.3pt;padding-right:0.3pt;">99.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.10" style="padding-left:0.3pt;padding-right:0.3pt;">43.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.11" style="padding-left:0.3pt;padding-right:0.3pt;">90.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.12" style="padding-left:0.3pt;padding-right:0.3pt;">29.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.13" style="padding-left:0.3pt;padding-right:0.3pt;">93.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.14" style="padding-left:0.3pt;padding-right:0.3pt;">25.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.18.18.15" style="padding-left:0.3pt;padding-right:0.3pt;">94.47</td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.41.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.35.41.6.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.35.41.6.1.1">Single-modal Fine-tuning (SMFT)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.2" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.3" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.4" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.5" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.6" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.7" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.8" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.9" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.10" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.11" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.12" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.13" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.14" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.41.6.15" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.19.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.19.19.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP<span class="ltx_text ltx_markedasmath" id="S4.T2.19.19.1.1" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.2" style="padding-left:0.3pt;padding-right:0.3pt;">85.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.3" style="padding-left:0.3pt;padding-right:0.3pt;">68.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.4" style="padding-left:0.3pt;padding-right:0.3pt;">73.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.5" style="padding-left:0.3pt;padding-right:0.3pt;">79.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.6" style="padding-left:0.3pt;padding-right:0.3pt;">79.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.7" style="padding-left:0.3pt;padding-right:0.3pt;">73.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.8" style="padding-left:0.3pt;padding-right:0.3pt;">41.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.9" style="padding-left:0.3pt;padding-right:0.3pt;">90.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.10" style="padding-left:0.3pt;padding-right:0.3pt;">60.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.11" style="padding-left:0.3pt;padding-right:0.3pt;">84.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.12" style="padding-left:0.3pt;padding-right:0.3pt;">52.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.13" style="padding-left:0.3pt;padding-right:0.3pt;">87.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.14" style="padding-left:0.3pt;padding-right:0.3pt;">51.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.19.19.15" style="padding-left:0.3pt;padding-right:0.3pt;">87.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.20.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.20.20.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP<span class="ltx_text ltx_markedasmath" id="S4.T2.20.20.1.1" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.2" style="padding-left:0.3pt;padding-right:0.3pt;">85.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.3" style="padding-left:0.3pt;padding-right:0.3pt;">71.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.4" style="padding-left:0.3pt;padding-right:0.3pt;">75.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.5" style="padding-left:0.3pt;padding-right:0.3pt;">81.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.6" style="padding-left:0.3pt;padding-right:0.3pt;">80.12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.7" style="padding-left:0.3pt;padding-right:0.3pt;">76.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.8" style="padding-left:0.3pt;padding-right:0.3pt;">28.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.10" style="padding-left:0.3pt;padding-right:0.3pt;">50.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.11" style="padding-left:0.3pt;padding-right:0.3pt;">88.68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.12" style="padding-left:0.3pt;padding-right:0.3pt;">41.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.13" style="padding-left:0.3pt;padding-right:0.3pt;">91.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.14" style="padding-left:0.3pt;padding-right:0.3pt;">40.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.20.20.15" style="padding-left:0.3pt;padding-right:0.3pt;">91.82</td>
</tr>
<tr class="ltx_tr" id="S4.T2.21.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.21.21.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP<span class="ltx_text ltx_markedasmath" id="S4.T2.21.21.1.1" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.2" style="padding-left:0.3pt;padding-right:0.3pt;">87.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.3" style="padding-left:0.3pt;padding-right:0.3pt;">68.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.4" style="padding-left:0.3pt;padding-right:0.3pt;">79.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.5" style="padding-left:0.3pt;padding-right:0.3pt;">78.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.6" style="padding-left:0.3pt;padding-right:0.3pt;">83.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.7" style="padding-left:0.3pt;padding-right:0.3pt;">73.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.8" style="padding-left:0.3pt;padding-right:0.3pt;">31.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.10" style="padding-left:0.3pt;padding-right:0.3pt;">73.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.11" style="padding-left:0.3pt;padding-right:0.3pt;">80.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.12" style="padding-left:0.3pt;padding-right:0.3pt;">58.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.13" style="padding-left:0.3pt;padding-right:0.3pt;">88.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.14" style="padding-left:0.3pt;padding-right:0.3pt;">54.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.21.21.15" style="padding-left:0.3pt;padding-right:0.3pt;">87.72</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.22.22.1" style="padding-left:0.3pt;padding-right:0.3pt;">FFT<span class="ltx_text ltx_markedasmath" id="S4.T2.22.22.1.1" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.2" style="padding-left:0.3pt;padding-right:0.3pt;">81.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.3" style="padding-left:0.3pt;padding-right:0.3pt;">72.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.4" style="padding-left:0.3pt;padding-right:0.3pt;">69.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.5" style="padding-left:0.3pt;padding-right:0.3pt;">81.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.6" style="padding-left:0.3pt;padding-right:0.3pt;">75.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.7" style="padding-left:0.3pt;padding-right:0.3pt;">77.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.8" style="padding-left:0.3pt;padding-right:0.3pt;">51.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.9" style="padding-left:0.3pt;padding-right:0.3pt;">87.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.10" style="padding-left:0.3pt;padding-right:0.3pt;">68.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.11" style="padding-left:0.3pt;padding-right:0.3pt;">80.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.12" style="padding-left:0.3pt;padding-right:0.3pt;">56.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.13" style="padding-left:0.3pt;padding-right:0.3pt;">86.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.14" style="padding-left:0.3pt;padding-right:0.3pt;">58.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.22.22.15" style="padding-left:0.3pt;padding-right:0.3pt;">84.88</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.23">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.23.23.1" style="padding-left:0.3pt;padding-right:0.3pt;">FFT<span class="ltx_text ltx_markedasmath" id="S4.T2.23.23.1.1" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.2" style="padding-left:0.3pt;padding-right:0.3pt;">65.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.3" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.23.3.1">82.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.4" style="padding-left:0.3pt;padding-right:0.3pt;">56.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.5" style="padding-left:0.3pt;padding-right:0.3pt;">87.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.6" style="padding-left:0.3pt;padding-right:0.3pt;">60.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.7" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.23.7.1">85.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.8" style="padding-left:0.3pt;padding-right:0.3pt;">19.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.9" style="padding-left:0.3pt;padding-right:0.3pt;">96.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.10" style="padding-left:0.3pt;padding-right:0.3pt;">49.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.11" style="padding-left:0.3pt;padding-right:0.3pt;">87.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.12" style="padding-left:0.3pt;padding-right:0.3pt;">25.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.13" style="padding-left:0.3pt;padding-right:0.3pt;">94.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.14" style="padding-left:0.3pt;padding-right:0.3pt;">31.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.23.23.15" style="padding-left:0.3pt;padding-right:0.3pt;">92.91</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.24.24.1" style="padding-left:0.3pt;padding-right:0.3pt;">FFT<span class="ltx_text ltx_markedasmath" id="S4.T2.24.24.1.1" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.2" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.2.1">54.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.3" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.3.1">85.91</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.4" style="padding-left:0.3pt;padding-right:0.3pt;">55.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.5" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.24.24.5.1">87.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.6" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.6.1">54.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.7" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.7.1">86.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.8" style="padding-left:0.3pt;padding-right:0.3pt;">24.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.9" style="padding-left:0.3pt;padding-right:0.3pt;">95.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.10" style="padding-left:0.3pt;padding-right:0.3pt;">52.97</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.11" style="padding-left:0.3pt;padding-right:0.3pt;">86.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.12" style="padding-left:0.3pt;padding-right:0.3pt;">29.32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.13" style="padding-left:0.3pt;padding-right:0.3pt;">93.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.14" style="padding-left:0.3pt;padding-right:0.3pt;">35.61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.15" style="padding-left:0.3pt;padding-right:0.3pt;">91.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.25.25.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP-FT<span class="ltx_text ltx_markedasmath" id="S4.T2.25.25.1.1" style="font-size:70%;">MSP</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.2" style="padding-left:0.3pt;padding-right:0.3pt;">80.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.3" style="padding-left:0.3pt;padding-right:0.3pt;">72.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.4" style="padding-left:0.3pt;padding-right:0.3pt;">69.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.5" style="padding-left:0.3pt;padding-right:0.3pt;">80.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.6" style="padding-left:0.3pt;padding-right:0.3pt;">74.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.7" style="padding-left:0.3pt;padding-right:0.3pt;">76.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.8" style="padding-left:0.3pt;padding-right:0.3pt;">43.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.9" style="padding-left:0.3pt;padding-right:0.3pt;">89.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.10" style="padding-left:0.3pt;padding-right:0.3pt;">63.24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.11" style="padding-left:0.3pt;padding-right:0.3pt;">81.49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.12" style="padding-left:0.3pt;padding-right:0.3pt;">50.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.13" style="padding-left:0.3pt;padding-right:0.3pt;">87.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.14" style="padding-left:0.3pt;padding-right:0.3pt;">52.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.25.25.15" style="padding-left:0.3pt;padding-right:0.3pt;">86.36</td>
</tr>
<tr class="ltx_tr" id="S4.T2.26.26">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.26.26.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP-FT<span class="ltx_text ltx_markedasmath" id="S4.T2.26.26.1.1" style="font-size:70%;">ODIN</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.2" style="padding-left:0.3pt;padding-right:0.3pt;">73.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.3" style="padding-left:0.3pt;padding-right:0.3pt;">77.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.4" style="padding-left:0.3pt;padding-right:0.3pt;">64.13</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.5" style="padding-left:0.3pt;padding-right:0.3pt;">82.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.6" style="padding-left:0.3pt;padding-right:0.3pt;">68.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.7" style="padding-left:0.3pt;padding-right:0.3pt;">80.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.8" style="padding-left:0.3pt;padding-right:0.3pt;">27.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.10" style="padding-left:0.3pt;padding-right:0.3pt;">50.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.11" style="padding-left:0.3pt;padding-right:0.3pt;">86.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.12" style="padding-left:0.3pt;padding-right:0.3pt;">32.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.13" style="padding-left:0.3pt;padding-right:0.3pt;">93.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.14" style="padding-left:0.3pt;padding-right:0.3pt;">37.01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.26.26.15" style="padding-left:0.3pt;padding-right:0.3pt;">91.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.27.27">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.27.27.1" style="padding-left:0.3pt;padding-right:0.3pt;">LP-FT<span class="ltx_text ltx_markedasmath" id="S4.T2.27.27.1.1" style="font-size:70%;">Energy</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.2" style="padding-left:0.3pt;padding-right:0.3pt;">75.81</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.3" style="padding-left:0.3pt;padding-right:0.3pt;">76.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.4" style="padding-left:0.3pt;padding-right:0.3pt;">65.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.5" style="padding-left:0.3pt;padding-right:0.3pt;">82.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.6" style="padding-left:0.3pt;padding-right:0.3pt;">70.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.7" style="padding-left:0.3pt;padding-right:0.3pt;">79.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.8" style="padding-left:0.3pt;padding-right:0.3pt;">29.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.9" style="padding-left:0.3pt;padding-right:0.3pt;">93.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.10" style="padding-left:0.3pt;padding-right:0.3pt;">51.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.11" style="padding-left:0.3pt;padding-right:0.3pt;">86.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.12" style="padding-left:0.3pt;padding-right:0.3pt;">34.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.13" style="padding-left:0.3pt;padding-right:0.3pt;">92.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.14" style="padding-left:0.3pt;padding-right:0.3pt;">38.47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.27.27.15" style="padding-left:0.3pt;padding-right:0.3pt;">90.94</td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.42.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.35.42.7.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.35.42.7.1.1">Multi-modal Fine-tuning (MMFT)</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.2" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.3" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.4" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.5" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.6" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.7" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.8" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.9" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.10" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.11" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.12" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.13" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.14" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T2.35.42.7.15" style="padding-left:0.3pt;padding-right:0.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.28.28.1" style="padding-left:0.3pt;padding-right:0.3pt;">FLYP<span class="ltx_text ltx_markedasmath" id="S4.T2.28.28.1.1" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.2" style="padding-left:0.3pt;padding-right:0.3pt;">73.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.3" style="padding-left:0.3pt;padding-right:0.3pt;">75.13</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.4" style="padding-left:0.3pt;padding-right:0.3pt;">61.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.5" style="padding-left:0.3pt;padding-right:0.3pt;">79.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.6" style="padding-left:0.3pt;padding-right:0.3pt;">67.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.7" style="padding-left:0.3pt;padding-right:0.3pt;">77.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.8" style="padding-left:0.3pt;padding-right:0.3pt;">24.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.9" style="padding-left:0.3pt;padding-right:0.3pt;">94.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.10" style="padding-left:0.3pt;padding-right:0.3pt;">37.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.11" style="padding-left:0.3pt;padding-right:0.3pt;">90.42</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.12" style="padding-left:0.3pt;padding-right:0.3pt;">29.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.13" style="padding-left:0.3pt;padding-right:0.3pt;">93.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.14" style="padding-left:0.3pt;padding-right:0.3pt;">30.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.28.28.15" style="padding-left:0.3pt;padding-right:0.3pt;">92.66</td>
</tr>
<tr class="ltx_tr" id="S4.T2.29.29">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.29.29.1" style="padding-left:0.3pt;padding-right:0.3pt;">FLYP<span class="ltx_text ltx_markedasmath" id="S4.T2.29.29.1.1" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.2" style="padding-left:0.3pt;padding-right:0.3pt;">67.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.3" style="padding-left:0.3pt;padding-right:0.3pt;">80.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.4" style="padding-left:0.3pt;padding-right:0.3pt;">59.76</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.5" style="padding-left:0.3pt;padding-right:0.3pt;">83.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.6" style="padding-left:0.3pt;padding-right:0.3pt;">63.66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.7" style="padding-left:0.3pt;padding-right:0.3pt;">81.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.8" style="padding-left:0.3pt;padding-right:0.3pt;">3.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.9" style="padding-left:0.3pt;padding-right:0.3pt;">99.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.10" style="padding-left:0.3pt;padding-right:0.3pt;">37.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.11" style="padding-left:0.3pt;padding-right:0.3pt;">91.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.12" style="padding-left:0.3pt;padding-right:0.3pt;">22.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.13" style="padding-left:0.3pt;padding-right:0.3pt;">94.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.14" style="padding-left:0.3pt;padding-right:0.3pt;">21.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.29.29.15" style="padding-left:0.3pt;padding-right:0.3pt;">94.86</td>
</tr>
<tr class="ltx_tr" id="S4.T2.31.31">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.31.31.2" style="padding-left:0.3pt;padding-right:0.3pt;">
<math alttext="m^{2}" class="ltx_Math" display="inline" id="S4.T2.30.30.1.m1.1"><semantics id="S4.T2.30.30.1.m1.1a"><msup id="S4.T2.30.30.1.m1.1.1" xref="S4.T2.30.30.1.m1.1.1.cmml"><mi id="S4.T2.30.30.1.m1.1.1.2" xref="S4.T2.30.30.1.m1.1.1.2.cmml">m</mi><mn id="S4.T2.30.30.1.m1.1.1.3" xref="S4.T2.30.30.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.1.m1.1b"><apply id="S4.T2.30.30.1.m1.1.1.cmml" xref="S4.T2.30.30.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.30.30.1.m1.1.1.1.cmml" xref="S4.T2.30.30.1.m1.1.1">superscript</csymbol><ci id="S4.T2.30.30.1.m1.1.1.2.cmml" xref="S4.T2.30.30.1.m1.1.1.2">𝑚</ci><cn id="S4.T2.30.30.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.30.30.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.1.m1.1c">m^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>-mix<span class="ltx_text ltx_markedasmath" id="S4.T2.31.31.2.1" style="font-size:70%;">MCM</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.3" style="padding-left:0.3pt;padding-right:0.3pt;">77.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.4" style="padding-left:0.3pt;padding-right:0.3pt;">77.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.5" style="padding-left:0.3pt;padding-right:0.3pt;">66.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.6" style="padding-left:0.3pt;padding-right:0.3pt;">83.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.7" style="padding-left:0.3pt;padding-right:0.3pt;">71.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.8" style="padding-left:0.3pt;padding-right:0.3pt;">80.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.9" style="padding-left:0.3pt;padding-right:0.3pt;">22.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.10" style="padding-left:0.3pt;padding-right:0.3pt;">95.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.11" style="padding-left:0.3pt;padding-right:0.3pt;">43.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.12" style="padding-left:0.3pt;padding-right:0.3pt;">90.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.13" style="padding-left:0.3pt;padding-right:0.3pt;">29.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.14" style="padding-left:0.3pt;padding-right:0.3pt;">94.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.15" style="padding-left:0.3pt;padding-right:0.3pt;">31.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.31.31.16" style="padding-left:0.3pt;padding-right:0.3pt;">93.64</td>
</tr>
<tr class="ltx_tr" id="S4.T2.33.33">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.33.33.2" style="padding-left:0.3pt;padding-right:0.3pt;">
<math alttext="m^{2}" class="ltx_Math" display="inline" id="S4.T2.32.32.1.m1.1"><semantics id="S4.T2.32.32.1.m1.1a"><msup id="S4.T2.32.32.1.m1.1.1" xref="S4.T2.32.32.1.m1.1.1.cmml"><mi id="S4.T2.32.32.1.m1.1.1.2" xref="S4.T2.32.32.1.m1.1.1.2.cmml">m</mi><mn id="S4.T2.32.32.1.m1.1.1.3" xref="S4.T2.32.32.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T2.32.32.1.m1.1b"><apply id="S4.T2.32.32.1.m1.1.1.cmml" xref="S4.T2.32.32.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.32.32.1.m1.1.1.1.cmml" xref="S4.T2.32.32.1.m1.1.1">superscript</csymbol><ci id="S4.T2.32.32.1.m1.1.1.2.cmml" xref="S4.T2.32.32.1.m1.1.1.2">𝑚</ci><cn id="S4.T2.32.32.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.32.32.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.32.1.m1.1c">m^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.32.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>-mix<span class="ltx_text ltx_markedasmath" id="S4.T2.33.33.2.1" style="font-size:70%;">NegLabel</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.3" style="padding-left:0.3pt;padding-right:0.3pt;">66.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.4" style="padding-left:0.3pt;padding-right:0.3pt;">79.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.5" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.5.1">54.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.6" style="padding-left:0.3pt;padding-right:0.3pt;">84.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.7" style="padding-left:0.3pt;padding-right:0.3pt;">60.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.8" style="padding-left:0.3pt;padding-right:0.3pt;">82.32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.9" style="padding-left:0.3pt;padding-right:0.3pt;">2.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.10" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.10.1">99.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.11" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.11.1">32.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.12" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.12.1">92.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.13" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.13.1">17.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.14" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.14.1">95.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.15" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.15.1">17.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.33.33.16" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.33.33.16.1">95.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.34.34.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.1.1" style="background-color:#E6E6E6;">CMA<span class="ltx_text ltx_markedasmath" id="S4.T2.34.34.1.1.1" style="font-size:70%;background-color:#E6E6E6;">MCM</span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.2" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.2.1" style="background-color:#E6E6E6;">78.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.3" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.3.1" style="background-color:#E6E6E6;">74.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.4" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.4.1" style="background-color:#E6E6E6;">65.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.5" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.5.1" style="background-color:#E6E6E6;">82.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.6" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.6.1" style="background-color:#E6E6E6;">71.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.7" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.7.1" style="background-color:#E6E6E6;">78.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.8" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.8.1" style="background-color:#E6E6E6;">23.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.9" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.9.1" style="background-color:#E6E6E6;">95.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.10" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.10.1" style="background-color:#E6E6E6;">41.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.11" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.11.1" style="background-color:#E6E6E6;">91.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.12" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.12.1" style="background-color:#E6E6E6;">29.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.13" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.13.1" style="background-color:#E6E6E6;">94.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.14" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.14.1" style="background-color:#E6E6E6;">31.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.34.34.15" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.34.34.15.1" style="background-color:#E6E6E6;">93.72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.35" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.35.35.1" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.35.35.1.1" style="background-color:#E6E6E6;">CMA<span class="ltx_text ltx_markedasmath" id="S4.T2.35.35.1.1.1" style="font-size:70%;background-color:#E6E6E6;">NegLabel</span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.2" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.35.35.2.1" style="background-color:#E6E6E6;">62.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.3" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.35.35.3.1" style="background-color:#E6E6E6;">81.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.4" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.4.1" style="background-color:#E6E6E6;">49.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.5" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.5.1" style="background-color:#E6E6E6;">87.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.6" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.35.35.6.1" style="background-color:#E6E6E6;">56.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.7" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text" id="S4.T2.35.35.7.1" style="background-color:#E6E6E6;">84.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.8" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.8.1" style="background-color:#E6E6E6;">1.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.9" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.9.1" style="background-color:#E6E6E6;">99.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.10" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.10.1" style="background-color:#E6E6E6;">29.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.11" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.11.1" style="background-color:#E6E6E6;">93.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.12" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.12.1" style="background-color:#E6E6E6;">14.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.13" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.13.1" style="background-color:#E6E6E6;">96.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.14" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.14.1" style="background-color:#E6E6E6;">15.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.35.35.15" style="padding-left:0.3pt;padding-right:0.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.35.35.15.1" style="background-color:#E6E6E6;">96.47</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of various methods' performance on out-of-distribution detection (OoDD) using the OpenOOD v1.5 benchmark dataset.  It breaks down the results into two main categories: Near-OoD (out-of-distribution data that is semantically similar to in-distribution data) and Far-OoD (out-of-distribution data that is semantically different from in-distribution data). For each category, it shows the average performance across multiple datasets, reported as false positive rate at 95% true positive rate (FPR95) and area under the receiver operating characteristic curve (AUROC). Lower FPR95 and higher AUROC values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of OoDD performance on the OpenOOD v1.5 benchmark dataset. The terms Near-OoD and Far-OoD refer to the average OoDD performance across datasets in each respective scenario.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.2.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.1.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.2.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.2.1.2.1" style="font-size:90%;">ID Acc.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.3.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.1.3.1.1.1" style="font-size:90%;">Zero-Shot (ZS)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.1.3.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.4.2.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.4.2.1.1" style="font-size:90%;">MCM &amp; NegLabel</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.4.2.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.4.2.2.1" style="font-size:90%;">66.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.5.3.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.1.5.3.1.1" style="font-size:90%;">Prompt Learning (PL)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.1.5.3.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.6.4.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.6.4.1.1" style="font-size:90%;">CoOp</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.6.4.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.6.4.2.1" style="font-size:90%;">71.95</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.7.5.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.7.5.1.1" style="font-size:90%;">LoCoOp</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.7.5.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.7.5.2.1" style="font-size:90%;">71.72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.8.6.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.1.8.6.1.1" style="font-size:90%;">Single-modal Fine-tuning (SMFT)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.1.8.6.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.9.7.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.9.7.1.1" style="font-size:90%;">LP</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.9.7.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.9.7.2.1" style="font-size:90%;">79.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.10.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.10.8.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.10.8.1.1" style="font-size:90%;">FFT</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.10.8.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.10.8.2.1" style="font-size:90%;">81.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.11.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.11.9.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.11.9.1.1" style="font-size:90%;">LP-FT</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.11.9.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.11.9.2.1" style="font-size:90%;">81.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.12.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.12.10.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.1.12.10.1.1" style="font-size:90%;">Multi-modal Fine-tuning (MMFT)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.1.12.10.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.13.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.13.11.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.13.11.1.1" style="font-size:90%;">FLYP</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.13.11.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.13.11.2.1" style="font-size:90%;">82.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.1" style="padding-left:1.1pt;padding-right:1.1pt;">
<math alttext="m^{2}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><msup id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" mathsize="90%" xref="S4.T3.1.1.1.m1.1.1.2.cmml">m</mi><mn id="S4.T3.1.1.1.m1.1.1.3" mathsize="90%" xref="S4.T3.1.1.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">𝑚</ci><cn id="S4.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">m^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">-mix</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1" style="font-size:90%;">82.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.14.12" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.14.12.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S4.T3.1.14.12.1.1" style="font-size:90%;background-color:#E6E6E6;">CMA</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.1.14.12.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.14.12.2.1" style="font-size:90%;background-color:#E6E6E6;">82.64</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ImageNet-1k in-distribution (ID) accuracy for various out-of-distribution detection (OoDD) methods.  The methods are categorized into zero-shot (ZS), prompt learning (PL), single-modal fine-tuning (SMFT), and multi-modal fine-tuning (MMFT) approaches.  The ID accuracy metric provides a crucial measure of a model's performance on known data, complementing OoDD metrics and indicating whether OoDD gains come at the cost of reduced ID performance.  Higher ID accuracy values generally indicate better overall model reliability and robustness.
> <details>
> <summary>read the caption</summary>
> Table 3: ID Accuracy on ImageNet-1k
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S5.T4.1.2.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S5.T4.1.2.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.2.1">Uniformity</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T4.1.2.1.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.3.1">Alignment</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S5.T4.1.3.2.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.1.1">Methods</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.2" style="padding-left:1.1pt;padding-right:1.1pt;">Uni-All</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.3" style="padding-left:1.1pt;padding-right:1.1pt;">Uni-I</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.4" style="padding-left:1.1pt;padding-right:1.1pt;">Uni-T</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.5" style="padding-left:1.1pt;padding-right:1.1pt;">Uni-CM</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.6" style="padding-left:1.1pt;padding-right:1.1pt;">Uni-CMM</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.7" style="padding-left:1.1pt;padding-right:1.1pt;">Align-ID</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.3.2.8" style="padding-left:1.1pt;padding-right:1.1pt;">Align-OoD</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.4.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.4.1.1" style="padding-left:1.1pt;padding-right:1.1pt;">ZS</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.2" style="padding-left:1.1pt;padding-right:1.1pt;">1.594</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.3" style="padding-left:1.1pt;padding-right:1.1pt;">0.874</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.4" style="padding-left:1.1pt;padding-right:1.1pt;">1.320</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.5" style="padding-left:1.1pt;padding-right:1.1pt;">2.346</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.6" style="padding-left:1.1pt;padding-right:1.1pt;">2.141</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.7" style="padding-left:1.1pt;padding-right:1.1pt;">0.023</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.4.1.8" style="padding-left:1.1pt;padding-right:1.1pt;">0.035</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.5.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.5.2.1" style="padding-left:1.1pt;padding-right:1.1pt;">CoOp</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.2" style="padding-left:1.1pt;padding-right:1.1pt;">1.702</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.3" style="padding-left:1.1pt;padding-right:1.1pt;">0.874</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.4" style="padding-left:1.1pt;padding-right:1.1pt;">1.701</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.5" style="padding-left:1.1pt;padding-right:1.1pt;">2.343</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.6" style="padding-left:1.1pt;padding-right:1.1pt;">2.073</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.7" style="padding-left:1.1pt;padding-right:1.1pt;">0.032</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.5.2.8" style="padding-left:1.1pt;padding-right:1.1pt;">0.069</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.6.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.6.3.1" style="padding-left:1.1pt;padding-right:1.1pt;">LoCoOp</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.2" style="padding-left:1.1pt;padding-right:1.1pt;">1.419</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.3" style="padding-left:1.1pt;padding-right:1.1pt;">0.874</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.4" style="padding-left:1.1pt;padding-right:1.1pt;">0.904</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.5" style="padding-left:1.1pt;padding-right:1.1pt;">2.290</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.6" style="padding-left:1.1pt;padding-right:1.1pt;">2.080</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.7" style="padding-left:1.1pt;padding-right:1.1pt;">0.024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.6.3.8" style="padding-left:1.1pt;padding-right:1.1pt;">0.066</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.7.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.7.4.1" style="padding-left:1.1pt;padding-right:1.1pt;">FLYP</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.2" style="padding-left:1.1pt;padding-right:1.1pt;">1.821</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.3" style="padding-left:1.1pt;padding-right:1.1pt;">1.395</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.4" style="padding-left:1.1pt;padding-right:1.1pt;">1.215</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.5" style="padding-left:1.1pt;padding-right:1.1pt;">2.437</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.6" style="padding-left:1.1pt;padding-right:1.1pt;">2.124</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.7" style="padding-left:1.1pt;padding-right:1.1pt;">0.052</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.7.4.8" style="padding-left:1.1pt;padding-right:1.1pt;">0.068</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"><math alttext="m^{2}\text{-mix}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml"><msup id="S5.T4.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.m1.1.1.2.cmml"><mi id="S5.T4.1.1.1.m1.1.1.2.2" xref="S5.T4.1.1.1.m1.1.1.2.2.cmml">m</mi><mn id="S5.T4.1.1.1.m1.1.1.2.3" xref="S5.T4.1.1.1.m1.1.1.2.3.cmml">2</mn></msup><mo id="S5.T4.1.1.1.m1.1.1.1" xref="S5.T4.1.1.1.m1.1.1.1.cmml">⁢</mo><mtext id="S5.T4.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.m1.1.1.3a.cmml">-mix</mtext></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1"><times id="S5.T4.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1.1"></times><apply id="S5.T4.1.1.1.m1.1.1.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.1.1.2.1.cmml" xref="S5.T4.1.1.1.m1.1.1.2">superscript</csymbol><ci id="S5.T4.1.1.1.m1.1.1.2.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2.2">𝑚</ci><cn id="S5.T4.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S5.T4.1.1.1.m1.1.1.2.3">2</cn></apply><ci id="S5.T4.1.1.1.m1.1.1.3a.cmml" xref="S5.T4.1.1.1.m1.1.1.3"><mtext id="S5.T4.1.1.1.m1.1.1.3.cmml" xref="S5.T4.1.1.1.m1.1.1.3">-mix</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">m^{2}\text{-mix}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">italic_m start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT -mix</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.2" style="padding-left:1.1pt;padding-right:1.1pt;">1.208</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.3" style="padding-left:1.1pt;padding-right:1.1pt;">0.947</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.4" style="padding-left:1.1pt;padding-right:1.1pt;">1.441</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.5" style="padding-left:1.1pt;padding-right:1.1pt;">1.584</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.6" style="padding-left:1.1pt;padding-right:1.1pt;">1.014</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.7" style="padding-left:1.1pt;padding-right:1.1pt;">0.104</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.8" style="padding-left:1.1pt;padding-right:1.1pt;">0.130</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.8.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.8.5.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.1.1" style="background-color:#E6E6E6;">CMA</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.2.1" style="background-color:#E6E6E6;">0.862</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.3.1" style="background-color:#E6E6E6;">0.719</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.4.1" style="background-color:#E6E6E6;">0.993</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.5.1" style="background-color:#E6E6E6;">1.323</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.6.1" style="background-color:#E6E6E6;">0.725</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.7" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.7.1" style="background-color:#E6E6E6;">0.114</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.8.5.8" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S5.T4.1.8.5.8.1" style="background-color:#E6E6E6;">0.138</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the modality gap and cross-modal alignment in the hyperspherical embedding space produced by different methods.  Uniformity metrics (Uni-All, Uni-I, Uni-T, Uni-CM, Uni-CMM) measure the distribution of image and text embeddings, indicating the spread and separation between modalities.  Lower values suggest better uniformity and reduced modality gaps. Alignment metrics (Align-ID, Align-OoD) evaluate the separability of ID (in-distribution) and OoD (out-of-distribution) embeddings.  Higher values for Align-OoD indicate better separation between ID and OoD data, implying more effective OoD detection. The table compares these metrics across various methods (Zero-Shot, CoOp, LoCoOp, FLYP, m²-mix, and the proposed CMA method), providing insight into how effectively each method aligns image and text embeddings, and thus influences OoD detection performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of uniformity and alignment values
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18817/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18817/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}