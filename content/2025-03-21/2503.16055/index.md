---
title: "SALT: Singular Value Adaptation with Low-Rank Transformation"
summary: "SALT: Fine-tuning SAM for medical images using Singular Value Adaptation with Low-Rank Transformation for efficient, robust segmentation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Mohamed bin Zayed University of Artificial Intelligence",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16055 {{< /keyword >}}
{{< keyword icon="writer" >}} Abdelrahman Elsayed et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16055" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16055" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16055/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Medical image segmentation demands specialized models. Large foundation models offer flexibility but are costly to fine-tune. Parameter-Efficient Fine-Tuning (PEFT) methods like LORA update weights efficiently but can underfit. SVD methods comprehensively update but lack flexibility. The complex nature of medical image segmentation calls for models that are specifically designed to capture detailed, domain-specific features. Large foundation models offer considerable flexibility, yet the cost of fine-tuning these models remains a significant barrier.



This paper introduces **SALT**, a method that adapts singular values using trainable parameters and low-rank updates. This hybrid approach combines the advantages of LoRA and SVD, enabling effective adaptation without increasing model size or depth. Evaluated on five medical datasets, SALT outperforms state-of-the-art PEFT methods by 2-5% in Dice with only 3.9% trainable parameters. The proposed approach enables **effective adaptation without relying on increasing model size or depth**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SALT (Singular Value Adaptation with Low-Rank Transformation) outperforms existing PEFT methods like LoRA and SVD in medical image segmentation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SALT achieves state-of-the-art performance with only 3.9% trainable parameters, demonstrating robust adaptation in low-resource settings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SALT combines SVD-based scaling and shifting with low-rank updates for efficient and flexible adaptation of the Segment Anything Model (SAM). {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces SALT, a parameter-efficient fine-tuning method, that can **enhance medical image segmentation**. The proposed solution **addresses the limitations of existing methods** and **offers a promising direction for future research** in medical imaging and foundation model adaptation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16055/x1.png)

> 🔼 Figure 1 illustrates the SALT (Singular Value Adaptation with Low-Rank Transformation) architecture, which enhances the Segment Anything Model (SAM) for medical image segmentation.  The diagram shows the overall model workflow, starting with the input image and prompt, progressing through the image encoder, Multi-Head Attention layers, and decoder to produce the final segmentation mask.  The detailed view focuses on the SALT mechanism integrated into the Multi-Head Attention layers of the image encoder.  This mechanism is key to the algorithm's parameter efficiency and ability to adapt the SAM to the unique characteristics of medical images.  SALT achieves this by selectively scaling and shifting the most influential singular values while simultaneously adding a low-rank update for the remaining values, thus improving performance without increasing the overall model size.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the SALT architecture. Starting from the segmentation model and providing a detailed view of the SALT mechanism within the Multi-Head Attention layers of the image encoder.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.12.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.12.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.2.1">Rank</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.12.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.3.1">%Trainable</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.4.1">ARCADE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.5.1">DIAS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.6.1">ROSE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.7.1">XRay-Angio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.8.1">Drive</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.12.12.13.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.13.1.9.1">Average</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.12.12.12.13"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.12.12.12.14"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T1.12.12.12.15"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.m1.1b"><ci id="S4.T1.3.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.4.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.m1.1b"><ci id="S4.T1.4.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.5.5.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.1.m1.1b"><ci id="S4.T1.5.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.6.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.1.m1.1b"><ci id="S4.T1.6.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.7.7.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.1.m1.1"><semantics id="S4.T1.7.7.7.7.1.m1.1a"><mo id="S4.T1.7.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.1.m1.1b"><ci id="S4.T1.7.7.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.8.8.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.1.m1.1"><semantics id="S4.T1.8.8.8.8.1.m1.1a"><mo id="S4.T1.8.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.1.m1.1b"><ci id="S4.T1.8.8.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.9.9.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.1.m1.1"><semantics id="S4.T1.9.9.9.9.1.m1.1a"><mo id="S4.T1.9.9.9.9.1.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.1.m1.1b"><ci id="S4.T1.9.9.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.10.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.1.m1.1"><semantics id="S4.T1.10.10.10.10.1.m1.1a"><mo id="S4.T1.10.10.10.10.1.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.1.m1.1b"><ci id="S4.T1.10.10.10.10.1.m1.1.1.cmml" xref="S4.T1.10.10.10.10.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.11.11.1">Dice <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.1.m1.1"><semantics id="S4.T1.11.11.11.11.1.m1.1a"><mo id="S4.T1.11.11.11.11.1.m1.1.1" stretchy="false" xref="S4.T1.11.11.11.11.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.1.m1.1b"><ci id="S4.T1.11.11.11.11.1.m1.1.1.cmml" xref="S4.T1.11.11.11.11.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.12.12.12.12"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.12.12.1">HD95 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.1.m1.1"><semantics id="S4.T1.12.12.12.12.1.m1.1a"><mo id="S4.T1.12.12.12.12.1.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.1.m1.1b"><ci id="S4.T1.12.12.12.12.1.m1.1.1.cmml" xref="S4.T1.12.12.12.12.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="15" id="S4.T1.12.12.14.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.14.2.1.1">Traditional DL Methods</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.12.12.15.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.12.12.15.1.1">U-Net <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.3">100% / 6.5M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.4">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.5">157.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.6">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.7">262.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.8">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.15.1.9.1">8.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.10">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.11">30.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.12">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.15.1.13">84.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.14">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.15.1.15">108.54</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.16.2">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.16.2.1">UNETR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.3">100% / 91M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.4">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.5">162.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.6">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.7">183.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.8">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.9">8.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.10">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.11">20.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.12">0.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.16.2.13">33.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.14">0.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.16.2.15">81.91</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.17.3">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.17.3.1">RegUnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.3">100% / 7.8M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.4">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.5">247.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.6">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.7">172.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.8">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.9">58.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.10">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.11">79.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.12">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.17.3.13">72.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.14">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.17.3.15">126.08</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.18.4">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.18.4.1">SegNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.3">100% / 29M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.4">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.5">231.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.6">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.7">295.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.8">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.9">9.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.10">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.11">110.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.12">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.18.4.13">79.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.14">0.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.18.4.15">145.05</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.19.5">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.19.5.1">DeepLabV3+ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib3" title="">3</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.3">100% / 45M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.4">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.5">103.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.6">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.7">77.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.8">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.9">12.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.10">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.11"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.19.5.11.1">14.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.12">0.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.19.5.13">27.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.14">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.19.5.15">47.12</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.20.6">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.20.6.1">Segformer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib24" title="">24</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.3">100% / 43M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.4">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.5">113.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.6">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.7">73.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.8">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.9">11.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.10">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.11">16.55</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.12">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.20.6.13">36.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.14">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.20.6.15">50.47</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.21.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T1.12.12.21.7.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.12.12.21.7.1.1">SAM-Based PEFT Methods</span> <span class="ltx_text ltx_font_bold" id="S4.T1.12.12.21.7.1.2">(241M)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.22.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.12.12.22.8.1">SAM w/ text prompts</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.3">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.6">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.8">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.10">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.12">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.12.12.22.8.13">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.14">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.12.12.22.8.15">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.23.9">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.23.9.1">S-SAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib16" title="">16</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.3">0.40% / 1M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.4">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.5">52.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.6">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.7">42.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.8">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.9">12.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.10">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.11">27.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.12">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.23.9.13">15.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.14">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.23.9.15">30.12</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.24.10">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.24.10.1">LoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib7" title="">7</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.2">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.3">0.64% / 1.5M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.4">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.5">39.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.6">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.7">27.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.8">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.9">16.26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.10">0.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.11">26.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.12">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.24.10.13">21.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.14">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.24.10.15">26.29</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.25.11">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.25.11.1">LoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16055v1#bib.bib7" title="">7</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.2">256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.3">14.08% / 33.9M</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.4"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.25.11.4.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.25.11.5.1">36.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.6">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.7">34.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.8">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.9">14.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.10">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.11">24.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.12">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.25.11.13">19.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.14">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.25.11.15">25.94</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.26.12" style="background-color:#00F2FB;">
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.26.12.1"><span class="ltx_text" id="S4.T1.12.12.26.12.1.1" style="background-color:#00F2FB;">SALT (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.2"><span class="ltx_text" id="S4.T1.12.12.26.12.2.1" style="background-color:#00F2FB;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.3"><span class="ltx_text" id="S4.T1.12.12.26.12.3.1" style="background-color:#00F2FB;">0.46% / 1.1M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.4"><span class="ltx_text" id="S4.T1.12.12.26.12.4.1" style="background-color:#00F2FB;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.5"><span class="ltx_text" id="S4.T1.12.12.26.12.5.1" style="background-color:#00F2FB;">51.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.6"><span class="ltx_text" id="S4.T1.12.12.26.12.6.1" style="background-color:#00F2FB;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.7"><span class="ltx_text" id="S4.T1.12.12.26.12.7.1" style="background-color:#00F2FB;">39.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.8"><span class="ltx_text" id="S4.T1.12.12.26.12.8.1" style="background-color:#00F2FB;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.9"><span class="ltx_text" id="S4.T1.12.12.26.12.9.1" style="background-color:#00F2FB;">12.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.10"><span class="ltx_text" id="S4.T1.12.12.26.12.10.1" style="background-color:#00F2FB;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.11"><span class="ltx_text" id="S4.T1.12.12.26.12.11.1" style="background-color:#00F2FB;">29.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.12"><span class="ltx_text" id="S4.T1.12.12.26.12.12.1" style="background-color:#00F2FB;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.26.12.13"><span class="ltx_text" id="S4.T1.12.12.26.12.13.1" style="background-color:#00F2FB;">16.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.14"><span class="ltx_text" id="S4.T1.12.12.26.12.14.1" style="background-color:#00F2FB;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.26.12.15"><span class="ltx_text" id="S4.T1.12.12.26.12.15.1" style="background-color:#00F2FB;">29.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.27.13" style="background-color:#00F2FB;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.12.12.27.13.1"><span class="ltx_text" id="S4.T1.12.12.27.13.1.1" style="background-color:#00F2FB;">SALT (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.2"><span class="ltx_text" id="S4.T1.12.12.27.13.2.1" style="background-color:#00F2FB;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.3"><span class="ltx_text" id="S4.T1.12.12.27.13.3.1" style="background-color:#00F2FB;">3.9% / 9.4M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.4" style="background-color:#00F2FB;"><span class="ltx_text" id="S4.T1.12.12.27.13.4.1" style="background-color:#00F2FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.4.1.1">0.81</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.5"><span class="ltx_text" id="S4.T1.12.12.27.13.5.1" style="background-color:#00F2FB;">42.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.6"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.6.1" style="background-color:#00F2FB;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.7"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.7.1" style="background-color:#00F2FB;">27.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.8"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.8.1" style="background-color:#00F2FB;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.9"><span class="ltx_text" id="S4.T1.12.12.27.13.9.1" style="background-color:#00F2FB;">12.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.10"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.10.1" style="background-color:#00F2FB;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.11"><span class="ltx_text" id="S4.T1.12.12.27.13.11.1" style="background-color:#00F2FB;">23.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.12"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.12.1" style="background-color:#00F2FB;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.12.12.27.13.13"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.13.1" style="background-color:#00F2FB;">13.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.14"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.14.1" style="background-color:#00F2FB;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.12.12.27.13.15"><span class="ltx_text ltx_font_bold" id="S4.T1.12.12.27.13.15.1" style="background-color:#00F2FB;">23.87</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different deep learning (DL) models and parameter-efficient fine-tuning (PEFT) methods for medical image segmentation.  It evaluates the performance of traditional DL models (U-Net, UNETR, RegUnet, SegNet, DeepLabV3+, Segformer) against SAM-based PEFT approaches (S-SAM and LoRA), and finally the proposed SALT method. The models are assessed across five diverse medical image segmentation datasets, using Dice coefficient (Dice) and 95th percentile Hausdorff Distance (HD95) as evaluation metrics.  The table displays the Dice scores (higher is better) and HD95 values (lower is better) achieved by each method on each dataset, alongside the percentage of trainable parameters for each PEFT method.  This allows for comparison of performance relative to the number of parameters modified during fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison of traditional DL and SAM-based PEFT methods using Dice and HD95 metrics on a variety of medical segmentation datasets.
> </details>





### In-depth insights


#### Efficient Tuning
**Efficient tuning** is critical in adapting large models to specific tasks, especially when computational resources are limited. Parameter-efficient fine-tuning (PEFT) methods, like **LoRA**, address this by updating only a small subset of parameters, reducing computational overhead. However, PEFT methods may struggle to capture domain-specific nuances with very low ranks, leading to underfitting. The challenge lies in balancing parameter efficiency with the ability to effectively learn complex patterns. Methods like **SVD** offer comprehensive updates but can lack flexibility and show variable performance. A hybrid approach could offer benefits, selectively updating the most crucial parameters while using low-rank adaptations for the remaining subspace, potentially achieving a better trade-off between efficiency and accuracy. The **goal is robust adaptation without significantly increasing model size**.

#### SALT Architecture
SALT's architecture, as depicted in the research paper, presents a novel approach to parameter-efficient fine-tuning, particularly in the context of medical image segmentation. The core idea revolves around selectively adapting the most influential singular values obtained through Singular Value Decomposition (SVD) of weight matrices within a pre-trained model, such as the Segment Anything Model (SAM). This adaptation is achieved using trainable scale and shift parameters, allowing for fine-grained control over the contribution of these dominant singular values. Complementing this selective adaptation is a low-rank update applied to the remaining subspace, leveraging techniques like Low-Rank Adaptation (LoRA). This hybrid approach intelligently combines the strengths of both SVD and LoRA, enabling effective domain adaptation without drastically increasing the number of trainable parameters or relying on deeper or wider models. By strategically allocating trainable parameters to the most critical components of the weight matrices, SALT achieves a balance between preserving pre-trained knowledge and capturing domain-specific nuances, ultimately leading to improved segmentation performance on medical images.

#### Medical PEFT SOTA
The paper addresses the challenge of adapting large foundation models, like SAM, to medical image segmentation through parameter-efficient fine-tuning (PEFT). It acknowledges that while models like U-Net and nnU-Net achieve SOTA performance, they often rely on large parameter counts, limiting adaptability. The limitations of directly applying SAM to medical data are also highlighted, showing inferiority to specialized models. Existing PEFT methods, such as LoRA, may struggle to capture both dominant and nuanced features specific to medical images. To overcome these, the paper introduces a novel PEFT framework that synergizes SVD and low-rank adaptation. The **SALT** approach selectively scales critical singular values, while applying trainable low-rank transformations to residual components. The research emphasizes balancing minimal parameter overhead, computational feasibility, and preserving pre-trained knowledge while addressing unique medical imaging challenges. This enables efficient adaptation to medical domains with minimal parameter overhead, leading to improved segmentation accuracy and robustness in low-resource settings.

#### Adaptation Study
While the provided text lacks a specific section titled 'Adaptation Study,' the core concept of adaptation permeates the entire paper, focusing on adapting the Segment Anything Model (SAM) for medical image segmentation. The authors address the limitations of directly applying SAM to medical images due to the domain gap, prompting the development of SALT (Singular Value Adaptation with Low-Rank Transformation). **SALT is explicitly designed to facilitate adaptation**, improving performance compared to traditional fine-tuning methods and other parameter-efficient techniques like LoRA and S-SAM. The research emphasizes the **importance of adapting pre-trained models** to specialized domains. The study explores how manipulating singular values and integrating low-rank updates can effectively transfer knowledge and enhance segmentation accuracy in medical imaging. This is a comprehensive, insightful approach into understanding adaptation, and the details provided will lead to greater domain adaptation.

#### Future Extentions
While the paper doesn't explicitly discuss 'Future Extensions,' we can infer potential areas for future work. One avenue is extending SALT to other foundation models beyond SAM, exploring its applicability to diverse tasks. **Dynamic rank selection** could optimize parameter allocation by adjusting ranks based on dataset complexity. Investigating the impact of varying scales for the top singular values to enhance adaptability to different feature representations could also improve accuracy. More extensive ablation studies could evaluate the impact of different architectural components to enhance the design of SALT. Another extension of SALT involves refining the weight update using different scaling and low rank adaptation factors.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16055/x2.png)

> 🔼 Figure 2 illustrates four different parameter-efficient fine-tuning (PEFT) methods for adapting pre-trained models to new datasets. (A) Full fine-tuning, the most computationally expensive method, updates all the model's parameters. (B) LoRA (Low-Rank Adaptation) uses low-rank matrices for efficient updates, only modifying a small subset of parameters. (C) SVD (Singular Value Decomposition)-based methods update the model's singular values, representing another efficient update strategy. (D) SALT (Singular Value Adaptation with Low-Rank Transformation), the proposed method, combines the strengths of both LoRA and SVD by selectively fine-tuning the most important singular values with scale and shift parameters, and also applying low-rank updates to the remaining subspace.  This hybrid approach aims for better adaptation compared to using only LoRA or SVD.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of PEFT methods: (A) Full fine-tuning updates all W𝑊Witalic_W parameters. (B) LoRA updates low-rank matrices. (C) SVD fine-tunes scale and shift components of W𝑊Witalic_W. (D) SALT (Ours) integrates scale, shift, and low-rank updates for singular values.
> </details>



![](https://arxiv.org/html/2503.16055/x3.png)

> 🔼 Figure 3 showcases a qualitative comparison of vessel segmentation results across five different medical datasets: ARCADE [17], ROSE [14], DIAS [12], X-ray Angio [2], and DRIVE [22].  Each row represents a single dataset and shows the original image, the ground truth segmentation, and segmentation results from several different methods.  These methods include U-Net, UNETR, LoRA, S-SAM (other SAM-based PEFT methods), and the proposed SALT method. The predicted masks are shown in white, while any false negatives (areas missed by the segmentation) are highlighted in red. This visual comparison demonstrates SALT's performance relative to other state-of-the-art segmentation techniques in diverse medical imaging scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative Vessel Segmentation. The figure displays segmentation results for five datasets (Arcade [17], Rose [14], Dias [12], X-ray Angio [2], Drive [22]). Columns show the ground truth, SALT, SAM-based PEFT methods, and traditional DL models. Predicted masks are white, and false negatives are red.
> </details>



![](https://arxiv.org/html/2503.16055/x4.png)

> 🔼 The figure shows an ablation study on SALT configurations and adaptability to SAM2.  Subfigure (a) presents a comparison of Dice scores across different combinations of LoRA and SALT ranks for Multi-Head Attention (MHA), convolutional layers, and MLP modules. Circle size corresponds to the percentage of trainable parameters.  This illustrates the impact of varying the rank (the number of top singular values modified using scale and shift) on model performance and parameter efficiency.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.16055/x5.png)

> 🔼 The figure shows an ablation study on SALT configurations and their adaptability to SAM2.  It compares the performance of different methods (SALT, LoRA, SVD) on two datasets of varying sizes by assessing Dice scores and the number of trainable parameters used. The x-axis indicates various rank combinations for convolutional, MLP, and multi-head attention layers, illustrating the impact of rank selection on performance. The y-axis represents the Dice score. Circle size is proportional to the percentage of trainable parameters.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16055/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16055/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}