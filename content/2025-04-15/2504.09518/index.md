---
title: "3D CoCa: Contrastive Learners are 3D Captioners"
summary: "3D CoCa: A unified framework for 3D captioning that leverages contrastive learning, achieving state-of-the-art results by aligning 3D and textual representations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai University of Engineering Science",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09518 {{< /keyword >}}
{{< keyword icon="writer" >}} Ting Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09518" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09518" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09518/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods in 3D captioning face challenges due to point cloud sparsity and weak cross-modal alignment. These methods depend on object proposals and struggle to connect visual data and language. In vision-language research, models such as CoCa have shown the effectiveness of contrastive pre-training. Inspired by this, the paper aims to bring powerful priors into 3D captioning to improve performance and generalization.



The study introduces **3D CoCa**, a unified framework integrating contrastive learning and caption generation for 3D scenes. It leverages a frozen CLIP vision-language backbone, a spatially-aware 3D scene encoder, and a multimodal decoder. 3D CoCa jointly optimizes contrastive and captioning objectives, eliminating external detectors. Experiments on ScanRefer and Nr3D show significant performance improvements over existing methods, demonstrating stronger spatial reasoning and semantic grounding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} 3D CoCa is the first end-to-end framework unifying contrastive learning with 3D captioning, eliminating the need for external 3D object detectors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model leverages large-scale image-text pretraining to enhance semantic understanding and cross-modal alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate state-of-the-art captioning performance on Nr3D and ScanRefer benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach, **3D CoCa**, that significantly improves 3D scene understanding by unifying contrastive learning and captioning. It provides a new direction and baseline for future studies in 3D vision-language tasks, enabling richer and more accurate scene interpretations.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09518/x1.png)

> 🔼 Figure 1 is a two-part figure illustrating the 3D CoCa model. The left panel shows a schematic diagram of the model's architecture, highlighting its unified framework that integrates contrastive learning and multimodal captioning.  The right panel presents a radar chart comparing the performance of 3D CoCa against several other state-of-the-art 3D captioning methods (Scan2Cap, 3DJCG, 3D-VLP, Vote2Cap-DETR, and Vote2Cap-DETR++) on the ScanRefer benchmark dataset.  The radar chart visually represents the relative strengths and weaknesses of each model across multiple evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Figure 1. Conceptual homepage figure for 3D CoCa, highlighting its architecture (left) and performance (right). Left: The 3D CoCa model unifies contrastive learning and multimodal captioning in one framework. Right:Radar chart comparison of 3D CoCa and previous methods Scan2Cap (Chen et al., 2021a), 3DJCG (Cai et al., 2022), 3D-VLP (Zhang et al., 2024a), Vote2Cap-DETR (Chen et al., 2023b), Vote2Cap-DETR++ (Chen et al., 2024b) on the ScanRefer (Chen et al., 2020a) benchmark.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.16.16.16">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.16.16.16.17.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.16.16.16.17.1.1" rowspan="3"><span class="ltx_text" id="S3.T1.16.16.16.17.1.1.1">Method</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.16.16.16.17.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="S3.T1.16.16.16.17.1.3">w/o additional 2D input</td>
<td class="ltx_td ltx_border_tt" id="S3.T1.16.16.16.17.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="S3.T1.16.16.16.17.1.5">w/ additional 2D input</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.18.2">
<td class="ltx_td" id="S3.T1.16.16.16.18.2.1"></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.16.16.16.18.2.2">IoU = 0.25</td>
<td class="ltx_td" id="S3.T1.16.16.16.18.2.3"></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.16.16.16.18.2.4">IoU = 0.50</td>
<td class="ltx_td" id="S3.T1.16.16.16.18.2.5"></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.16.16.16.18.2.6">IoU = 0.25</td>
<td class="ltx_td" id="S3.T1.16.16.16.18.2.7"></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S3.T1.16.16.16.18.2.8">IoU = 0.50</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.16">
<td class="ltx_td" id="S3.T1.16.16.16.16.17"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.1">C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2.2">B-4<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3.3">M<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4.4">R<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.16.18"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5.5">C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6.6">B-4<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.7.7">M<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.7.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8.8">R<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.8.8.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.16.19"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.9.9">C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.9.9.m1.1a"><mo id="S3.T1.9.9.9.9.9.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.9.9.m1.1b"><ci id="S3.T1.9.9.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.10.10">B-4<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.10.10.10.10.10.m1.1"><semantics id="S3.T1.10.10.10.10.10.m1.1a"><mo id="S3.T1.10.10.10.10.10.m1.1.1" stretchy="false" xref="S3.T1.10.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.10.10.m1.1b"><ci id="S3.T1.10.10.10.10.10.m1.1.1.cmml" xref="S3.T1.10.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.11.11.11">M<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.11.11.11.11.11.m1.1"><semantics id="S3.T1.11.11.11.11.11.m1.1a"><mo id="S3.T1.11.11.11.11.11.m1.1.1" stretchy="false" xref="S3.T1.11.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.11.11.m1.1b"><ci id="S3.T1.11.11.11.11.11.m1.1.1.cmml" xref="S3.T1.11.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.12.12.12">R<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.12.12.12.12.12.m1.1"><semantics id="S3.T1.12.12.12.12.12.m1.1a"><mo id="S3.T1.12.12.12.12.12.m1.1.1" stretchy="false" xref="S3.T1.12.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.12.12.m1.1b"><ci id="S3.T1.12.12.12.12.12.m1.1.1.cmml" xref="S3.T1.12.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.16.20"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.13.13.13.13.13">C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.13.13.13.13.13.m1.1"><semantics id="S3.T1.13.13.13.13.13.m1.1a"><mo id="S3.T1.13.13.13.13.13.m1.1.1" stretchy="false" xref="S3.T1.13.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.13.13.m1.1b"><ci id="S3.T1.13.13.13.13.13.m1.1.1.cmml" xref="S3.T1.13.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.13.13.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.14.14.14.14.14">B-4<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.14.14.14.14.14.m1.1"><semantics id="S3.T1.14.14.14.14.14.m1.1a"><mo id="S3.T1.14.14.14.14.14.m1.1.1" stretchy="false" xref="S3.T1.14.14.14.14.14.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.14.14.m1.1b"><ci id="S3.T1.14.14.14.14.14.m1.1.1.cmml" xref="S3.T1.14.14.14.14.14.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.14.14.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.14.14.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.15.15.15.15.15">M<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.15.15.15.15.15.m1.1"><semantics id="S3.T1.15.15.15.15.15.m1.1a"><mo id="S3.T1.15.15.15.15.15.m1.1.1" stretchy="false" xref="S3.T1.15.15.15.15.15.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.15.15.m1.1b"><ci id="S3.T1.15.15.15.15.15.m1.1.1.cmml" xref="S3.T1.15.15.15.15.15.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.15.15.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.15.15.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.16.16">R<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.16.16.16.16.16.m1.1"><semantics id="S3.T1.16.16.16.16.16.m1.1a"><mo id="S3.T1.16.16.16.16.16.m1.1.1" stretchy="false" xref="S3.T1.16.16.16.16.16.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.16.16.m1.1b"><ci id="S3.T1.16.16.16.16.16.m1.1.1.cmml" xref="S3.T1.16.16.16.16.16.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.16.16.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.16.16.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.19.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.1">Scan2Cap <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib7" title="">2021a</a>)</cite>
</td>
<td class="ltx_td ltx_border_t" id="S3.T1.16.16.16.19.3.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.3">53.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.4">34.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.5">26.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.6">54.95</td>
<td class="ltx_td ltx_border_t" id="S3.T1.16.16.16.19.3.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.8">35.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.9">22.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.10">21.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.11">43.57</td>
<td class="ltx_td ltx_border_t" id="S3.T1.16.16.16.19.3.12"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.13">56.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.14">34.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.15">26.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.16">55.27</td>
<td class="ltx_td ltx_border_t" id="S3.T1.16.16.16.19.3.17"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.18">39.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.19">23.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.20">21.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.16.16.16.19.3.21">44.78</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.20.4">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.1">MORE <cite class="ltx_cite ltx_citemacro_citep">(Jiao et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib20" title="">2022</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.20.4.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.3">58.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.4">35.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.5">26.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.6">55.41</td>
<td class="ltx_td" id="S3.T1.16.16.16.20.4.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.8">38.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.9">23.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.10">21.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.11">44.33</td>
<td class="ltx_td" id="S3.T1.16.16.16.20.4.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.13">62.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.14">36.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.15">26.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.16">56.33</td>
<td class="ltx_td" id="S3.T1.16.16.16.20.4.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.18">40.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.19">22.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.20">21.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.20.4.21">44.42</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.21.5">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.1">SpaCap3d <cite class="ltx_cite ltx_citemacro_citep">(Wang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib37" title="">2022</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.21.5.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.3">58.06</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.4">35.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.5">26.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.6">55.03</td>
<td class="ltx_td" id="S3.T1.16.16.16.21.5.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.8">42.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.9">25.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.10">22.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.11">45.66</td>
<td class="ltx_td" id="S3.T1.16.16.16.21.5.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.13">63.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.14">36.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.15">26.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.16">55.71</td>
<td class="ltx_td" id="S3.T1.16.16.16.21.5.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.18">44.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.19">25.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.20">22.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.21.5.21">45.36</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.22.6">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.1">3DJCG <cite class="ltx_cite ltx_citemacro_citep">(Cai et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib4" title="">2022</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.22.6.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.3">60.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.4">39.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.5">27.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.6">59.02</td>
<td class="ltx_td" id="S3.T1.16.16.16.22.6.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.8">47.68</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.9">31.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.10">24.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.11">51.80</td>
<td class="ltx_td" id="S3.T1.16.16.16.22.6.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.13">64.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.14">40.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.15">27.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.16">59.23</td>
<td class="ltx_td" id="S3.T1.16.16.16.22.6.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.18">49.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.19">31.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.20">24.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.22.6.21">50.80</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.23.7">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.1">D3Net <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib10" title="">2021d</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.23.7.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.6">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.23.7.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.10">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.11">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.23.7.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.13">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.14">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.15">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.16">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.23.7.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.18">46.07</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.19">30.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.20">24.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.23.7.21">51.67</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.24.8">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.1">3D-VLP <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib44" title="">2024a</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.24.8.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.3">64.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.4">39.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.5">27.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.6">58.78</td>
<td class="ltx_td" id="S3.T1.16.16.16.24.8.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.8">50.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.9">31.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.10">24.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.11">51.17</td>
<td class="ltx_td" id="S3.T1.16.16.16.24.8.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.13">70.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.14">41.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.15">28.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.16">59.72</td>
<td class="ltx_td" id="S3.T1.16.16.16.24.8.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.18">54.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.19">32.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.20">24.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.24.8.21">51.51</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.25.9">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.1">Vote2Cap-DETR <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib13" title="">2023b</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.25.9.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.3">71.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.4">39.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.5">28.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.6">59.33</td>
<td class="ltx_td" id="S3.T1.16.16.16.25.9.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.8">61.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.9">34.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.10">26.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.11">54.40</td>
<td class="ltx_td" id="S3.T1.16.16.16.25.9.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.13">72.79</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.14">39.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.15">28.06</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.16">59.23</td>
<td class="ltx_td" id="S3.T1.16.16.16.25.9.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.18">59.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.19">32.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.20">25.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.25.9.21">52.53</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.26.10">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.1">Unit3D <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib8" title="">2023a</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.26.10.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.6">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.26.10.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.10">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.11">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.26.10.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.13">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.14">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.15">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.16">-</td>
<td class="ltx_td" id="S3.T1.16.16.16.26.10.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.18">46.69</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.19">27.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.20">21.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.26.10.21">45.98</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.27.11">
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.1">Vote2Cap-DETR++ <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib14" title="">2024b</a>)</cite>
</td>
<td class="ltx_td" id="S3.T1.16.16.16.27.11.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.3">76.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.4">41.37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.5">28.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.6">60.00</td>
<td class="ltx_td" id="S3.T1.16.16.16.27.11.7"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.8">67.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.9">37.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.10">26.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.11">55.64</td>
<td class="ltx_td" id="S3.T1.16.16.16.27.11.12"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.13">77.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.14">40.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.15">28.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.16">59.59</td>
<td class="ltx_td" id="S3.T1.16.16.16.27.11.17"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.18">64.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.19">34.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.20">26.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.27.11.21">53.67</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16.28.12" style="background-color:#E0F0F9;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.1"><span class="ltx_text" id="S3.T1.16.16.16.28.12.1.1" style="background-color:#E0F0F9;">3D CoCa (Ours)</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.3"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.3.1" style="background-color:#E0F0F9;">85.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.4"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.4.1" style="background-color:#E0F0F9;">45.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.5"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.5.1" style="background-color:#E0F0F9;">30.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.6"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.6.1" style="background-color:#E0F0F9;">61.98</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.8"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.8.1" style="background-color:#E0F0F9;">77.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.9"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.9.1" style="background-color:#E0F0F9;">41.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.10"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.10.1" style="background-color:#E0F0F9;">28.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.11"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.11.1" style="background-color:#E0F0F9;">57.40</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.12"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.13"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.13.1" style="background-color:#E0F0F9;">86.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.14"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.14.1" style="background-color:#E0F0F9;">44.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.15"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.15.1" style="background-color:#E0F0F9;">30.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.16"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.16.1" style="background-color:#E0F0F9;">61.45</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.17"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.18"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.18.1" style="background-color:#E0F0F9;">74.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.19"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.19.1" style="background-color:#E0F0F9;">38.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.20"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.20.1" style="background-color:#E0F0F9;">28.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.16.16.16.28.12.21"><span class="ltx_text ltx_font_bold" id="S3.T1.16.16.16.28.12.21.1" style="background-color:#E0F0F9;">55.23</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of different 3D object captioning methods on the ScanRefer benchmark dataset.  The table assesses the performance of each method under various conditions.  These conditions include whether or not supplementary 2D image input is used, and different Intersection over Union (IoU) thresholds (0.25 and 0.5) for evaluating the accuracy of object localization within the 3D scene. The comparison is based on four widely-used evaluation metrics: CIDEr, BLEU-4, METEOR, and ROUGE-L, which capture different aspects of caption quality, from n-gram overlap to semantic similarity and consensus among human judges. The results show that the proposed 3D CoCa model outperforms all other methods across all experimental settings.
> <details>
> <summary>read the caption</summary>
> Table 1.  Comparison of various methods on the ScanRefer dataset (Chen et al., 2020a). We evaluate the performance of each method, with and without additional 2D input, at IoU thresholds of 0.25 and 0.5. Metrics include CIDEr (C) (Vedantam et al., 2015), BLEU-4 (B-4) (Papineni et al., 2002), METEOR (M) (Banerjee and Lavie, 2005), and ROUGE-L (R) (Lin, 2004). Our proposed 3D CoCa achieves state-of-the-art results across all settings.
> </details>





### In-depth insights


#### 3D CoCa Intro
The introduction of "3D CoCa" addresses the challenge of 3D scene understanding and captioning. **It highlights the limitations of existing methods** due to point cloud sparsity and weak cross-modal alignment. **The core idea is to unify contrastive vision-language learning with 3D caption generation** within a single architecture, leveraging a frozen CLIP backbone for semantic priors, a spatially-aware 3D scene encoder, and a multimodal decoder. Unlike two-stage approaches relying on object proposals, 3D CoCa jointly optimizes contrastive and captioning objectives in a shared feature space, eliminating external detectors. **This joint training enhances spatial reasoning and semantic grounding by aligning 3D and textual representations**, leading to significant performance improvements on benchmarks.

#### Contrast. Learn.
The paper consistently emphasizes the vital role of contrastive learning in bridging the gap between 3D visual data and natural language. **Contrastive learning helps align the 3D scene and textual representations** in a shared feature space, enhancing spatial reasoning and semantic grounding. By jointly training the model with contrastive and captioning objectives, the need for external 3D object detectors is eliminated. The alignment ensures visual encoder produce features readily attended by the text decoder, while captioning refines the shared embedding space. Overall, **contrastive learning is essential for improved semantic understanding and cross-modal alignment**, leading to richer and more accurate captions.

#### Spatial Grounding
**Spatial grounding** is the critical process of linking language to the physical world, specifically within a 3D environment. It involves understanding and representing the spatial relationships between objects, locations, and entities described in natural language. Effective spatial grounding enables machines to perceive and reason about the arrangement of elements within a scene, interpret spatial prepositions (e.g., 'on', 'under', 'next to'), and ultimately generate descriptions that accurately reflect the physical configuration. The lack of cross-modal interaction poses challenges on achieving good performance. It's essential for tasks like robot navigation, scene understanding, and augmented reality, where language instructions must be translated into concrete actions and spatial arrangements. Robust spatial reasoning capabilities is important to generate captions with the precise spatial context.

#### No Detectors
The absence of object detectors marks a significant shift in the landscape of 3D captioning. Traditional methods often rely on a two-stage process: first detecting objects and then describing them. Bypassing this detection stage offers several advantages. It **simplifies the architecture**, creating a more streamlined end-to-end system. This can lead to **increased efficiency** by eliminating the computational overhead associated with object detection. More importantly, a 'no detector' approach fosters **holistic scene understanding**. Instead of focusing on individual objects, the model learns to perceive the scene as a whole, capturing the complex relationships and contextual cues that are crucial for generating accurate and descriptive captions. By jointly learning to localize and describe, the model can potentially overcome the limitations of relying on potentially noisy or inaccurate object proposals, leading to **robust and context-aware captioning performance**.

#### CLIP Benefits
The paper leverages CLIP (Contrastive Language-Image Pre-training) in several key ways to enhance its 3D captioning model. **Freezing the weights of the pre-trained CLIP vision and text encoders** allows the model to tap into the robust visual and linguistic representations learned from massive image-text datasets, providing strong semantic priors for understanding 3D scenes. This mitigates the need for training these foundational components from scratch, **saving computational resources and improving generalization**. The shared embedding space learned by CLIP enables **effective cross-modal alignment** between 3D visual features and textual descriptions, facilitating more accurate and contextually relevant caption generation. By building upon CLIP, the model gains the ability to recognize a wide range of concepts and associate them with appropriate words, leading to improved spatial reasoning and richer semantic grounding. Furthermore, CLIP's pre-trained knowledge helps the model handle the inherent sparsity of 3D point clouds and the challenges of weak cross-modal alignment, resulting in state-of-the-art performance in 3D captioning tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09518/x2.png)

> 🔼 Figure 2 illustrates the 3D CoCa model architecture, a multi-modal Transformer designed for 3D vision-language understanding.  The process begins with a point cloud and a textual description as inputs.  These are separately processed by CLIP Vision and Text Encoders to extract relevant features.  A cross-attention mechanism within a Multi-Modal Decoder then integrates these visual and textual features. This fusion allows the model to generate descriptive captions that accurately reflect the 3D scene.  The model's training is optimized using both contrastive and captioning loss functions to ensure effective alignment between the visual and textual modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2. Illustration of a multi-modal Transformer architecture for 3D vision-language understanding. The input point cloud and textual description are processed by CLIP Vision and Text Encoders, respectively. Cross-attention mechanisms fuse these features within a Multi-Modal Decoder, enabling the generation of descriptive captions. The model training is guided by contrastive and captioning losses, promoting effective alignment between visual and textual modalities.
> </details>



![](https://arxiv.org/html/2504.09518/x3.png)

> 🔼 Figure 3 presents a qualitative comparison of 3D scene descriptions generated by three different methods: Vote2Cap-DETR++, the proposed 3D CoCa model, and the ground truth.  The figure showcases several indoor scenes from the ScanRefer dataset, with each scene accompanied by three captions: one generated by Vote2Cap-DETR++, one generated by the authors' model (labeled 'Ours'), and the ground truth caption. This visual comparison helps highlight the differences in descriptive accuracy and style between the models and underscores the ability of the proposed 3D CoCa method to generate more comprehensive and accurate descriptions than the baseline method.
> <details>
> <summary>read the caption</summary>
> Figure 3. A visual comparison on the ScanRefer (Chen et al., 2020a) dataset showcasing indoor scenes described by Vote2Cap-DETR++ (Chen et al., 2024b), our method (Ours), and the ground truth (GT), highlighting differences in descriptive accuracy and style.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1">C@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2">B-4@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3">M@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4">R@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.1">Scan2Cap <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib7" title="">2021a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.2">27.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.3">17.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.4">21.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.5">49.06</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.6.2">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.1">SpaCap3d <cite class="ltx_cite ltx_citemacro_citep">(Wang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib37" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.2">33.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.3">19.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.4">22.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.5">50.50</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.7.3">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.1">D3Net <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib10" title="">2021d</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.2">33.85</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.3">20.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.4">23.13</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.5">53.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.8.4">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.1">3DJCG <cite class="ltx_cite ltx_citemacro_citep">(Cai et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib4" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.2">38.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.3">22.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.4">23.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.5">52.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.9.5">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5.1">Vote2Cap-DETR <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib13" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5.2">43.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5.3">26.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5.4">25.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.9.5.5">54.43</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.10.6">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.1">Vote2Cap-DETR++ <cite class="ltx_cite ltx_citemacro_citep">(Chen et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.09518v1#bib.bib14" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.2">47.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.3">27.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.4">25.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.5">55.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.11.7" style="background-color:#E0F0F9;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.7.1"><span class="ltx_text" id="S4.T2.4.4.11.7.1.1" style="background-color:#E0F0F9;">3D CoCa (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.11.7.2.1" style="background-color:#E0F0F9;">52.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.11.7.3.1" style="background-color:#E0F0F9;">29.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.11.7.4.1" style="background-color:#E0F0F9;">25.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.11.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.11.7.5.1" style="background-color:#E0F0F9;">56.43</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the 3D CoCa model's performance against other existing methods on the Nr3D dataset.  The comparison focuses on the results at an Intersection over Union (IoU) threshold of 0.5, a common evaluation metric in object detection tasks.  The table uses four widely accepted metrics to evaluate caption quality: CIDEr, BLEU-4, METEOR, and ROUGE-L.  These metrics assess different aspects of generated captions, including consensus among human judgments (CIDEr), n-gram overlap (BLEU-4), semantic similarity (METEOR), and longest common subsequence length (ROUGE-L). The results show that the 3D CoCa model significantly outperforms the other methods on all four metrics, highlighting its effectiveness in generating high-quality 3D scene descriptions.
> <details>
> <summary>read the caption</summary>
> Table 2. Comparison on Nr3D (Achlioptas et al., 2020) at IoU=0.5. Our model outperforms existing methods, demonstrating higher CIDEr (C) (Vedantam et al., 2015), BLEU-4 (B-4) (Papineni et al., 2002), METEOR (M) (Banerjee and Lavie, 2005), and ROUGE-L (R) (Lin, 2004) scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.7.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.7.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.1.1.1">
<math alttext="\lambda" class="ltx_Math" display="inline" id="S4.T3.3.1.1.1.m1.1"><semantics id="S4.T3.3.1.1.1.m1.1a"><mi id="S4.T3.3.1.1.1.m1.1.1" xref="S4.T3.3.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.1.m1.1b"><ci id="S4.T3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.1.m1.1d">italic_λ</annotation></semantics></math> (Contrastive Weight)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.2.2.2">C@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.2.2.2.m1.1"><semantics id="S4.T3.4.2.2.2.m1.1a"><mo id="S4.T3.4.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.2.m1.1b"><ci id="S4.T3.4.2.2.2.m1.1.1.cmml" xref="S4.T3.4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.3.3.3">B-4@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.3.3.3.m1.1"><semantics id="S4.T3.5.3.3.3.m1.1a"><mo id="S4.T3.5.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.3.3.m1.1b"><ci id="S4.T3.5.3.3.3.m1.1.1.cmml" xref="S4.T3.5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.4.4.4">M@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.4.4.4.m1.1"><semantics id="S4.T3.6.4.4.4.m1.1a"><mo id="S4.T3.6.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.4.4.m1.1b"><ci id="S4.T3.6.4.4.4.m1.1.1.cmml" xref="S4.T3.6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.5.5.5">R@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.5.5.5.m1.1"><semantics id="S4.T3.7.5.5.5.m1.1a"><mo id="S4.T3.7.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.7.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.5.5.5.m1.1b"><ci id="S4.T3.7.5.5.5.m1.1.1.cmml" xref="S4.T3.7.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.7.5.6.1.1">0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.6.1.2">74.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.6.1.3">40.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.6.1.4">27.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.6.1.5">58.76</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.7.5.7.2.1">0.1</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.7.2.2">77.30</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.7.2.3">41.80</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.7.2.4">28.10</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.7.2.5">59.60</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.7.5.8.3.1">0.5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.8.3.2">79.55</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.8.3.3">42.55</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.8.3.4">28.75</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.8.3.5">60.40</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.9.4" style="background-color:#E0F0F9;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.7.5.9.4.1"><span class="ltx_text" id="S4.T3.7.5.9.4.1.1" style="background-color:#E0F0F9;">1.0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.9.4.2"><span class="ltx_text" id="S4.T3.7.5.9.4.2.1" style="background-color:#E0F0F9;">85.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.9.4.3"><span class="ltx_text" id="S4.T3.7.5.9.4.3.1" style="background-color:#E0F0F9;">45.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.9.4.4"><span class="ltx_text" id="S4.T3.7.5.9.4.4.1" style="background-color:#E0F0F9;">30.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.9.4.5"><span class="ltx_text" id="S4.T3.7.5.9.4.5.1" style="background-color:#E0F0F9;">61.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.7.5.10.5.1">2.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.5.10.5.2">76.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.5.10.5.3">41.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.5.10.5.4">28.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.5.10.5.5">59.30</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the effect of the contrastive learning loss weight (lambda) on the model's performance in generating 3D scene captions.  It shows how varying the weight of the contrastive loss influences four key evaluation metrics: CIDEr, BLEU-4, METEOR, and ROUGE-L.  These metrics assess different aspects of caption quality, including consensus among human judges, n-gram overlap with reference captions, semantic similarity, and longest common subsequence length, respectively. The results demonstrate the optimal weight for balancing the contrastive loss with the caption generation loss to achieve the best captioning performance.
> <details>
> <summary>read the caption</summary>
> Table 3.  The impact of Contrastive Learning Loss weight λ𝜆\lambdaitalic_λ on the model description performance. Four evaluation indicators, CIDEr(C) (Vedantam et al., 2015), BLEU-4(B-4) (Papineni et al., 2002), METEOR(M) (Banerjee and Lavie, 2005), and ROUGE-L(R) (Lin, 2004) are listed.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.4.4.5">Encoder Architecture</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1">C@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2">B-4@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3">M@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4.4">R@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.4.5.1.1">PointNet++ (Baseline)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.2">72.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.3">38.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.4">26.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.5">56.30</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6.2" style="background-color:#E0F0F9;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.4.6.2.1"><span class="ltx_text" id="S4.T4.4.4.6.2.1.1" style="background-color:#E0F0F9;">EPCL (Proposed)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.6.2.2"><span class="ltx_text" id="S4.T4.4.4.6.2.2.1" style="background-color:#E0F0F9;">85.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.6.2.3"><span class="ltx_text" id="S4.T4.4.4.6.2.3.1" style="background-color:#E0F0F9;">45.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.6.2.4"><span class="ltx_text" id="S4.T4.4.4.6.2.4.1" style="background-color:#E0F0F9;">30.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.6.2.5"><span class="ltx_text" id="S4.T4.4.4.6.2.5.1" style="background-color:#E0F0F9;">61.98</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two different 3D point cloud encoder architectures on a 3D scene description task.  The performance is measured using four metrics: CIDEr, BLEU-4, METEOR, and ROUGE-L. One architecture is the traditional PointNet++, while the other is the novel EPCL encoder proposed in the paper. The results illustrate the improvement in 3D scene description quality achieved by the EPCL encoder.
> <details>
> <summary>read the caption</summary>
> Table 4.  Comparison of the impact of different 3D point cloud encoder architectures on description performance. “EPCL” is the encoder proposed in this paper, and “PointNet++” is the traditional point cloud encoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.4.4.4.5">Caption Decoder</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1">C@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.2">B-4@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.3">M@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.4.4.4.4">R@0.5<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.5.1.1">GPT-2 Captioner (Baseline)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.5.1.2">76.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.5.1.3">41.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.5.1.4">27.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.5.1.5">59.50</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.6.2" style="background-color:#E0F0F9;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.6.2.1"><span class="ltx_text" id="S4.T5.4.4.6.2.1.1" style="background-color:#E0F0F9;">CoCa Transformer (Proposed)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.6.2.2"><span class="ltx_text" id="S4.T5.4.4.6.2.2.1" style="background-color:#E0F0F9;">85.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.6.2.3"><span class="ltx_text" id="S4.T5.4.4.6.2.3.1" style="background-color:#E0F0F9;">45.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.6.2.4"><span class="ltx_text" id="S4.T5.4.4.6.2.4.1" style="background-color:#E0F0F9;">30.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.6.2.5"><span class="ltx_text" id="S4.T5.4.4.6.2.5.1" style="background-color:#E0F0F9;">61.98</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of two different caption generation decoder architectures within the 3D CoCa model. The first decoder is a standard GPT-2 text generation model, while the second is a CoCa-style multimodal Transformer decoder. Both decoders use the same visual features as input. The table compares the performance of both decoders using four metrics: CIDEr, BLEU-4, METEOR, and ROUGE-L.  This allows for an evaluation of how the choice of decoder impacts the quality of generated captions.
> <details>
> <summary>read the caption</summary>
> Table 5.  The impact of different caption generation decoders on model performance. Comparison of the description indicators of the original GPT-2 generator and the CoCa-style multimodal decoder in this paper under the same visual features.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09518/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09518/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}