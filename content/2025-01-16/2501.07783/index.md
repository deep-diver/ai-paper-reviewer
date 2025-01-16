---
title: "Parameter-Inverted Image Pyramid Networks for Visual Perception and Multimodal Understanding"
summary: "Parameter-Inverted Image Pyramid Networks (PIIP) drastically cut visual model computing costs without sacrificing accuracy by using smaller models for higher-resolution images and larger models for lo..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.07783 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhaokai Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.07783" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.07783" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.07783/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image pyramids use the same large model for all image resolutions, resulting in high computational costs.  This is a major bottleneck for high-resolution image processing, especially with large vision models and emerging multimodal large language models.  Existing methods like feature pyramids attempt to mitigate this, but top-performing models still rely on inefficient image pyramids due to their performance advantages.  The paper also explores the issue in multimodal understanding, as scaling up the resolution helps but incurs a high computational cost.

The paper proposes a novel architecture called Parameter-Inverted Image Pyramid Networks (PIIP) to address this issue. **PIIP employs pretrained models of varying sizes for different image resolutions, with smaller models processing higher-resolution images and larger models handling lower-resolution ones**. This parameter-inverted approach significantly reduces computation while maintaining accuracy.   The paper also introduces a novel cross-branch feature interaction mechanism to better integrate information from different scales. Experiments show PIIP outperforms existing methods on object detection, semantic segmentation, image classification, and multimodal understanding with significantly lower computation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PIIP significantly reduces computational costs in visual perception and multimodal understanding tasks compared to traditional methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PIIP's parameter-inverted design effectively balances computational cost and performance across different image resolutions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PIIP demonstrates superior performance on various tasks, including object detection, segmentation, image classification, and multimodal understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel and efficient approach to building image pyramids for visual perception and multimodal understanding.  **This significantly reduces computational costs without sacrificing performance**, a critical advancement in the field of large-scale vision models. The parameter-inverted design and cross-branch feature interaction mechanism offer new avenues for optimizing model architectures and improving efficiency.  **Researchers can use this work as a foundation for developing more cost-effective and high-performing vision systems** for various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.07783/x1.png)

> 🔼 Figure 1 illustrates various multi-resolution approaches used in visual perception and multimodal understanding tasks.  (a) and (e) show basic network architectures lacking multi-scale feature processing.  (b), (c), and (f) depict traditional image pyramid methods, which use the same large model across all image resolutions, leading to high computational costs.  This is done either through weight sharing or with separate weights for each resolution, with some sort of feature interaction. (d) demonstrates a parameter-direct approach using large models for high-resolution images, again causing high computational costs.  (g) presents multi-resolution strategies applied to multimodal understanding, often involving image partitioning.  Finally, (h) introduces the authors' proposed Parameter-Inverted Image Pyramid Network (PIIP), which uses smaller models for higher-resolution images and larger models for lower-resolution images, leading to improved efficiency and performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Different multi-resolution designs in visual perception and multimodal understanding. (a)(e) Plain network without multi-scale features. (b)(c)(f) Inefficient image pyramid networks using equivalently large models for all scales, either with shared weights or with separate weights and interactions. (d) Parameter-direct image pyramid network which processes high-resolution images with large models, leading to high computational cost. (g) Multi-resolution approaches on multimodal tasks based on grid partition. (h) Our efficient and effective parameter-inverted image pyramid network (PIIP), which pairs models of increasing parameter sizes inversely with images of decreasing resolution. It achieves better performance with much lower computational cost.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.7">
<tr class="ltx_tr" id="S3.T1.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.1.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.3" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.3.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.4" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.4.1">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.1.1.5" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.5.1">#FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.1">Mask R-CNN 1<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.1.m1.1.1" xref="S3.T1.5.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.1.m1.1b"><times id="S3.T1.5.1.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.1.m1.1d">×</annotation></semantics></math> schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.7">
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S3.T1.6.2.2.1.m1.1"><semantics id="S3.T1.6.2.2.1.m1.1a"><msup id="S3.T1.6.2.2.1.m1.1.1" xref="S3.T1.6.2.2.1.m1.1.1.cmml"><mi id="S3.T1.6.2.2.1.m1.1.1.2" xref="S3.T1.6.2.2.1.m1.1.1.2.cmml">AP</mi><mi id="S3.T1.6.2.2.1.m1.1.1.3" mathvariant="normal" xref="S3.T1.6.2.2.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.6.2.2.1.m1.1b"><apply id="S3.T1.6.2.2.1.m1.1.1.cmml" xref="S3.T1.6.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.6.2.2.1.m1.1.1.1.cmml" xref="S3.T1.6.2.2.1.m1.1.1">superscript</csymbol><ci id="S3.T1.6.2.2.1.m1.1.1.2.cmml" xref="S3.T1.6.2.2.1.m1.1.1.2">AP</ci><ci id="S3.T1.6.2.2.1.m1.1.1.3.cmml" xref="S3.T1.6.2.2.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.2.2.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.2.2.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{50}" class="ltx_Math" display="inline" id="S3.T1.7.3.3.2.m1.1"><semantics id="S3.T1.7.3.3.2.m1.1a"><msubsup id="S3.T1.7.3.3.2.m1.1.1" xref="S3.T1.7.3.3.2.m1.1.1.cmml"><mi id="S3.T1.7.3.3.2.m1.1.1.2.2" xref="S3.T1.7.3.3.2.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T1.7.3.3.2.m1.1.1.3" xref="S3.T1.7.3.3.2.m1.1.1.3.cmml">50</mn><mi id="S3.T1.7.3.3.2.m1.1.1.2.3" mathvariant="normal" xref="S3.T1.7.3.3.2.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.7.3.3.2.m1.1b"><apply id="S3.T1.7.3.3.2.m1.1.1.cmml" xref="S3.T1.7.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.7.3.3.2.m1.1.1.1.cmml" xref="S3.T1.7.3.3.2.m1.1.1">subscript</csymbol><apply id="S3.T1.7.3.3.2.m1.1.1.2.cmml" xref="S3.T1.7.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.7.3.3.2.m1.1.1.2.1.cmml" xref="S3.T1.7.3.3.2.m1.1.1">superscript</csymbol><ci id="S3.T1.7.3.3.2.m1.1.1.2.2.cmml" xref="S3.T1.7.3.3.2.m1.1.1.2.2">AP</ci><ci id="S3.T1.7.3.3.2.m1.1.1.2.3.cmml" xref="S3.T1.7.3.3.2.m1.1.1.2.3">b</ci></apply><cn id="S3.T1.7.3.3.2.m1.1.1.3.cmml" type="integer" xref="S3.T1.7.3.3.2.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.3.3.2.m1.1c">\rm AP^{b}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.3.3.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.3" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{75}" class="ltx_Math" display="inline" id="S3.T1.8.4.4.3.m1.1"><semantics id="S3.T1.8.4.4.3.m1.1a"><msubsup id="S3.T1.8.4.4.3.m1.1.1" xref="S3.T1.8.4.4.3.m1.1.1.cmml"><mi id="S3.T1.8.4.4.3.m1.1.1.2.2" xref="S3.T1.8.4.4.3.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T1.8.4.4.3.m1.1.1.3" xref="S3.T1.8.4.4.3.m1.1.1.3.cmml">75</mn><mi id="S3.T1.8.4.4.3.m1.1.1.2.3" mathvariant="normal" xref="S3.T1.8.4.4.3.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.8.4.4.3.m1.1b"><apply id="S3.T1.8.4.4.3.m1.1.1.cmml" xref="S3.T1.8.4.4.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.8.4.4.3.m1.1.1.1.cmml" xref="S3.T1.8.4.4.3.m1.1.1">subscript</csymbol><apply id="S3.T1.8.4.4.3.m1.1.1.2.cmml" xref="S3.T1.8.4.4.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.8.4.4.3.m1.1.1.2.1.cmml" xref="S3.T1.8.4.4.3.m1.1.1">superscript</csymbol><ci id="S3.T1.8.4.4.3.m1.1.1.2.2.cmml" xref="S3.T1.8.4.4.3.m1.1.1.2.2">AP</ci><ci id="S3.T1.8.4.4.3.m1.1.1.2.3.cmml" xref="S3.T1.8.4.4.3.m1.1.1.2.3">b</ci></apply><cn id="S3.T1.8.4.4.3.m1.1.1.3.cmml" type="integer" xref="S3.T1.8.4.4.3.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.4.4.3.m1.1c">\rm AP^{b}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.4.4.3.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.4" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S3.T1.9.5.5.4.m1.1"><semantics id="S3.T1.9.5.5.4.m1.1a"><msup id="S3.T1.9.5.5.4.m1.1.1" xref="S3.T1.9.5.5.4.m1.1.1.cmml"><mi id="S3.T1.9.5.5.4.m1.1.1.2" xref="S3.T1.9.5.5.4.m1.1.1.2.cmml">AP</mi><mi id="S3.T1.9.5.5.4.m1.1.1.3" mathvariant="normal" xref="S3.T1.9.5.5.4.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.9.5.5.4.m1.1b"><apply id="S3.T1.9.5.5.4.m1.1.1.cmml" xref="S3.T1.9.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.9.5.5.4.m1.1.1.1.cmml" xref="S3.T1.9.5.5.4.m1.1.1">superscript</csymbol><ci id="S3.T1.9.5.5.4.m1.1.1.2.cmml" xref="S3.T1.9.5.5.4.m1.1.1.2">AP</ci><ci id="S3.T1.9.5.5.4.m1.1.1.3.cmml" xref="S3.T1.9.5.5.4.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.5.5.4.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.5.5.4.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.5" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{50}" class="ltx_Math" display="inline" id="S3.T1.10.6.6.5.m1.1"><semantics id="S3.T1.10.6.6.5.m1.1a"><msubsup id="S3.T1.10.6.6.5.m1.1.1" xref="S3.T1.10.6.6.5.m1.1.1.cmml"><mi id="S3.T1.10.6.6.5.m1.1.1.2.2" xref="S3.T1.10.6.6.5.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T1.10.6.6.5.m1.1.1.3" xref="S3.T1.10.6.6.5.m1.1.1.3.cmml">50</mn><mi id="S3.T1.10.6.6.5.m1.1.1.2.3" mathvariant="normal" xref="S3.T1.10.6.6.5.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.10.6.6.5.m1.1b"><apply id="S3.T1.10.6.6.5.m1.1.1.cmml" xref="S3.T1.10.6.6.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.6.6.5.m1.1.1.1.cmml" xref="S3.T1.10.6.6.5.m1.1.1">subscript</csymbol><apply id="S3.T1.10.6.6.5.m1.1.1.2.cmml" xref="S3.T1.10.6.6.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.6.6.5.m1.1.1.2.1.cmml" xref="S3.T1.10.6.6.5.m1.1.1">superscript</csymbol><ci id="S3.T1.10.6.6.5.m1.1.1.2.2.cmml" xref="S3.T1.10.6.6.5.m1.1.1.2.2">AP</ci><ci id="S3.T1.10.6.6.5.m1.1.1.2.3.cmml" xref="S3.T1.10.6.6.5.m1.1.1.2.3">m</ci></apply><cn id="S3.T1.10.6.6.5.m1.1.1.3.cmml" type="integer" xref="S3.T1.10.6.6.5.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.6.6.5.m1.1c">\rm AP^{m}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.6.6.5.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.7.6" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{75}" class="ltx_Math" display="inline" id="S3.T1.11.7.7.6.m1.1"><semantics id="S3.T1.11.7.7.6.m1.1a"><msubsup id="S3.T1.11.7.7.6.m1.1.1" xref="S3.T1.11.7.7.6.m1.1.1.cmml"><mi id="S3.T1.11.7.7.6.m1.1.1.2.2" xref="S3.T1.11.7.7.6.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T1.11.7.7.6.m1.1.1.3" xref="S3.T1.11.7.7.6.m1.1.1.3.cmml">75</mn><mi id="S3.T1.11.7.7.6.m1.1.1.2.3" mathvariant="normal" xref="S3.T1.11.7.7.6.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.11.7.7.6.m1.1b"><apply id="S3.T1.11.7.7.6.m1.1.1.cmml" xref="S3.T1.11.7.7.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.11.7.7.6.m1.1.1.1.cmml" xref="S3.T1.11.7.7.6.m1.1.1">subscript</csymbol><apply id="S3.T1.11.7.7.6.m1.1.1.2.cmml" xref="S3.T1.11.7.7.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.11.7.7.6.m1.1.1.2.1.cmml" xref="S3.T1.11.7.7.6.m1.1.1">superscript</csymbol><ci id="S3.T1.11.7.7.6.m1.1.1.2.2.cmml" xref="S3.T1.11.7.7.6.m1.1.1.2.2">AP</ci><ci id="S3.T1.11.7.7.6.m1.1.1.2.3.cmml" xref="S3.T1.11.7.7.6.m1.1.1.2.3">m</ci></apply><cn id="S3.T1.11.7.7.6.m1.1.1.3.cmml" type="integer" xref="S3.T1.11.7.7.6.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.7.7.6.m1.1c">\rm AP^{m}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.7.7.6.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.7.8.1" style="padding-top:1pt;padding-bottom:1pt;">ViTDet-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib68" title="">68</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.2" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.3" style="padding-top:1pt;padding-bottom:1pt;">90M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.7.8.4" style="padding-top:1pt;padding-bottom:1pt;">463G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.5" style="padding-top:1pt;padding-bottom:1pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.6" style="padding-top:1pt;padding-bottom:1pt;">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.7" style="padding-top:1pt;padding-bottom:1pt;">47.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.8" style="padding-top:1pt;padding-bottom:1pt;">39.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.9" style="padding-top:1pt;padding-bottom:1pt;">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.8.10" style="padding-top:1pt;padding-bottom:1pt;">42.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.9">
<td class="ltx_td ltx_border_r" id="S3.T1.11.7.9.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.2.1" style="background-color:#F2F2F2;">1120/896/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.3.1" style="background-color:#F2F2F2;">146M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.4.1" style="background-color:#F2F2F2;">243G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.9.5.1" style="background-color:#F2F2F2;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.6.1" style="background-color:#F2F2F2;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.7.1" style="background-color:#F2F2F2;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.8.1" style="color:#A6A6A6;background-color:#F2F2F2;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.9.1" style="color:#A6A6A6;background-color:#F2F2F2;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.9.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.9.10.1" style="color:#A6A6A6;background-color:#F2F2F2;">40.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.2.1" style="background-color:#F2F2F2;">1568/896/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.3.1" style="background-color:#F2F2F2;">147M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.4.1" style="background-color:#F2F2F2;">287G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.5.1" style="color:#A6A6A6;background-color:#F2F2F2;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.6.1" style="color:#A6A6A6;background-color:#F2F2F2;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.7.1" style="color:#A6A6A6;background-color:#F2F2F2;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.10.8.1" style="background-color:#F2F2F2;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.9.1" style="background-color:#F2F2F2;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.10.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.10.10.1" style="background-color:#F2F2F2;">42.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.11">
<td class="ltx_td ltx_border_r" id="S3.T1.11.7.11.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.2.1" style="background-color:#F2F2F2;">1568/1120/672</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.3.1" style="background-color:#F2F2F2;">149M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.11.4.1" style="background-color:#F2F2F2;">453G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.7.11.5.1" style="background-color:#F2F2F2;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.6.1" style="background-color:#F2F2F2;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.7.1" style="background-color:#F2F2F2;">51.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.7.11.8.1" style="background-color:#F2F2F2;">41.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.9.1" style="background-color:#F2F2F2;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.11.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.11.10.1" style="background-color:#F2F2F2;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.7.12.1" style="padding-top:1pt;padding-bottom:1pt;">ViTDet-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib68" title="">68</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.2" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.3" style="padding-top:1pt;padding-bottom:1pt;">308M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.7.12.4" style="padding-top:1pt;padding-bottom:1pt;">1542G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.5" style="padding-top:1pt;padding-bottom:1pt;">46.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.6" style="padding-top:1pt;padding-bottom:1pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.7" style="padding-top:1pt;padding-bottom:1pt;">51.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.8" style="padding-top:1pt;padding-bottom:1pt;">42.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.9" style="padding-top:1pt;padding-bottom:1pt;">67.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.7.12.10" style="padding-top:1pt;padding-bottom:1pt;">45.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.13">
<td class="ltx_td ltx_border_r" id="S3.T1.11.7.13.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.2.1" style="background-color:#F2F2F2;">1120/672/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.3.1" style="background-color:#F2F2F2;">493M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.13.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.4.1" style="background-color:#F2F2F2;">727G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.13.5.1" style="background-color:#F2F2F2;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.6.1" style="background-color:#F2F2F2;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.7.1" style="background-color:#F2F2F2;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.8.1" style="color:#A6A6A6;background-color:#F2F2F2;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.9.1" style="color:#A6A6A6;background-color:#F2F2F2;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.13.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.13.10.1" style="color:#A6A6A6;background-color:#F2F2F2;">42.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.14" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.14.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.2.1" style="background-color:#F2F2F2;">1344/896/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.3.1" style="background-color:#F2F2F2;">495M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.14.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.4.1" style="background-color:#F2F2F2;">1002G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.5.1" style="color:#A6A6A6;background-color:#F2F2F2;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.6.1" style="color:#A6A6A6;background-color:#F2F2F2;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.7.1" style="color:#A6A6A6;background-color:#F2F2F2;">52.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.14.8.1" style="background-color:#F2F2F2;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.9.1" style="background-color:#F2F2F2;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.14.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.14.10.1" style="background-color:#F2F2F2;">45.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.15">
<td class="ltx_td ltx_border_r" id="S3.T1.11.7.15.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.2.1" style="background-color:#F2F2F2;">1568/896/672</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.3.1" style="background-color:#F2F2F2;">497M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.15.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.15.4.1" style="background-color:#F2F2F2;">1464G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.5.1" style="background-color:#F2F2F2;">49.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.6.1" style="background-color:#F2F2F2;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.7.1" style="background-color:#F2F2F2;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.8.1" style="background-color:#F2F2F2;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.9.1" style="background-color:#F2F2F2;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.15.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.15.10.1" style="background-color:#F2F2F2;">46.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.16">
<td class="ltx_td ltx_border_r" id="S3.T1.11.7.16.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.2.1" style="background-color:#F2F2F2;">1344/896/672/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.3.1" style="background-color:#F2F2F2;">506M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.4.1" style="background-color:#F2F2F2;">755G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.16.5.1" style="background-color:#F2F2F2;">46.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.6.1" style="background-color:#F2F2F2;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.7.1" style="background-color:#F2F2F2;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.8.1" style="color:#A6A6A6;background-color:#F2F2F2;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.9.1" style="color:#A6A6A6;background-color:#F2F2F2;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.16.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.16.10.1" style="color:#A6A6A6;background-color:#F2F2F2;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.17" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.17.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.1.1" style="background-color:#F2F2F2;">PIIP-TSBL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.2.1" style="background-color:#F2F2F2;">1568/1120/672/448</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.3.1" style="background-color:#F2F2F2;">507M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.7.17.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.4.1" style="background-color:#F2F2F2;">861G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.5.1" style="color:#A6A6A6;background-color:#F2F2F2;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.6.1" style="color:#A6A6A6;background-color:#F2F2F2;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.7.1" style="color:#A6A6A6;background-color:#F2F2F2;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.17.8.1" style="background-color:#F2F2F2;">42.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.9.1" style="background-color:#F2F2F2;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.7.17.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.17.10.1" style="background-color:#F2F2F2;">45.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.18">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S3.T1.11.7.18.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.2.1" style="background-color:#F2F2F2;">1792/1568/1120/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.3.1" style="background-color:#F2F2F2;">512M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.11.7.18.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.7.18.4.1" style="background-color:#F2F2F2;">1535G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.7.18.5.1" style="background-color:#F2F2F2;">49.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.6.1" style="background-color:#F2F2F2;">72.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.7.1" style="background-color:#F2F2F2;">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.7.18.8.1" style="background-color:#F2F2F2;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.9.1" style="background-color:#F2F2F2;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.7.18.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T1.11.7.18.10.1" style="background-color:#F2F2F2;">47.5</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table I presents a comparison of the proposed Parameter-Inverted Image Pyramid Networks (PIIP) model with baseline models on the COCO val2017 dataset for object detection.  It shows the number of parameters and FLOPs (floating point operations) for each backbone network architecture.  Key performance metrics, including box Average Precision (APb) and mask Average Precision (APm), are reported for both 50 and 75 IoU thresholds. Underlined values indicate performance metrics or FLOPs comparable to the baseline.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison with baseline on COCO val2017. We report the number of parameters and FLOPs of the backbone. Underline indicates FLOPs or metrics on par with the baseline. APbsuperscriptAPb\rm AP^{b}roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT and APmsuperscriptAPm\rm AP^{m}roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT represent box AP and mask AP, respectively.
> </details>





### In-depth insights


#### Inverted Image Pyramids
The concept of "Inverted Image Pyramids" presents a compelling alternative to traditional approaches in image processing and multimodal understanding.  Instead of using large models to process all image resolutions, which is computationally expensive, **an inverted pyramid architecture utilizes smaller models for high-resolution images and progressively larger models for lower resolutions.** This approach leverages the observation that high-resolution images benefit from detailed local feature extraction, which can be efficiently accomplished by smaller models. In contrast, lower resolution images allow for capturing richer semantic context that may be better modeled using larger parameter sets.  The key advantages of this strategy are **enhanced efficiency and computational savings** without necessarily sacrificing accuracy. **Effective feature fusion** strategies are crucial to integrate features from different resolutions, enabling the network to learn robust multi-scale representations. While promising, further exploration is needed to fully understand the limitations and optimal architectural design principles for inverted image pyramids across diverse visual perception tasks.

#### Cross-Branch Fusion
Cross-branch fusion, in the context of a multi-scale image processing network like the one described, is crucial for effective visual perception and understanding.  It's a method to integrate features from different spatial scales and semantic levels extracted by multiple branches of the network, each processing a different resolution of the same image. **Effective fusion is key to achieving accurate multi-scale feature representations that are both computationally efficient and highly performative**. The fusion mechanism employed (e.g., attention, concatenation) should be designed carefully to minimize redundancy and maximize information exchange between branches.  The choice of fusion method directly impacts overall accuracy, efficiency, and the model's ability to leverage the strengths of both high and low-resolution feature maps. **Strategies for balancing computational cost against accuracy are vital** since it directly affects both the number of branches used and the complexity of the fusion operations.  A parameter-inverted pyramid, where larger models process lower-resolution images and vice-versa, would necessitate careful design of the fusion to ensure that low-level details aren't lost. **Optimal fusion strategies likely require considering feature dimensionality and semantic relevance across scales** for effective integration.

#### Multimodal LLM gains
Multimodal LLMs, integrating vision and language, offer significant advantages.  **Improved accuracy in tasks like visual question answering and image captioning** results from the fusion of visual and textual data, surpassing the capabilities of unimodal models.  The integration also unlocks **enhanced contextual understanding**, allowing the model to generate more relevant and accurate responses by considering both image content and the accompanying textual context.  **High-resolution image processing** capabilities represent another area of substantial gain, leading to improved detail capture and finer-grained analyses within multimodal tasks. However, challenges remain, including **efficient computation and model scaling**, especially with large high-resolution images.  Successfully addressing these challenges will unlock even more impressive advancements in multimodal AI applications.  Further research focusing on **data efficiency** and **robustness** will be crucial to the future development of this technology.

#### Computational Efficiency
The research paper emphasizes **computational efficiency** as a critical design goal.  Traditional image pyramid networks are computationally expensive because they process images at multiple scales using the same large model, leading to a quadratic increase in computational cost.  **The proposed Parameter-Inverted Image Pyramid Network (PIIP)** directly addresses this by employing smaller models for higher-resolution images and larger models for lower-resolution images.  This approach effectively balances computational cost and performance, achieving **superior performance with significantly reduced computational overhead**. The paper also validates the effectiveness of PIIP in various visual perception tasks and multimodal understanding.  The core idea is to leverage the complementary nature of features at different scales to avoid redundancy, enhancing efficiency without sacrificing accuracy.

#### Future Research
Future research directions stemming from this Parameter-Inverted Image Pyramid Network (PIIP) research could explore several promising avenues.  **Extending PIIP to even larger vision foundation models** is crucial to assess scalability and performance gains on more demanding tasks.  **Investigating alternative cross-branch interaction mechanisms** beyond the current deformable attention could potentially unlock further performance improvements or enable more computationally efficient designs.  A particularly interesting avenue would be to **explore the application of PIIP in other computer vision modalities**, such as video understanding or 3D vision, adapting the multi-resolution strategy to temporal or volumetric data.  Finally, a deeper investigation into the **optimal design choices for the number of branches and the specific model choices for each branch** could lead to even more efficient and effective PIIP architectures, tailored to specific computational budgets and task requirements.  The successful extension of PIIP to multimodal large language models (MLLMs) opens doors for research on combining PIIP with other novel MLLM architectures for enhanced multimodal understanding.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.07783/x2.png)

> 🔼 The figure illustrates the architecture of Parameter-Inverted Image Pyramid Networks (PIIP).  PIIP uses multiple branches to process images at different resolutions, a key innovation being that higher resolution images are processed by smaller models to optimize computational efficiency. Each branch employs a pre-trained Vision Transformer (ViT) or Convolutional Neural Network (CNN).  Interaction units connect adjacent branches to facilitate information exchange across different scales. A branch merging mechanism combines the features from all branches, either at the end of all processing blocks or at intermediate stages, depending on the specific task. This design balances computational cost and performance by using smaller, less computationally expensive models on the high-resolution inputs where a smaller receptive field is sufficient to extract important details and larger, richer models for lower resolution data which provides more contextual information.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall architecture of PIIP. We use multi-resolution branches to process images of different resolutions, where larger images are handled by smaller models. Each branch leverages pretrained ViTs or CNNs. Interaction units build connections between adjacent branches. Branch merging is inserted after all the blocks or within certain intermediate blocks to combine the features of all branches.
> </details>



![](https://arxiv.org/html/2501.07783/x3.png)

> 🔼 PIIP-LLaVA is a multimodal large language model that uses a parameter-inverted image pyramid network for efficient and effective high-resolution understanding.  The figure illustrates the architecture.  Visual input is passed through multiple branches of the network, each handling a different resolution of the image. Lower resolution images are processed by higher capacity branches, while higher resolution images are processed by smaller capacity branches. This parameter-inverted design balances computational cost and performance. Each branch uses a projector to align the resulting features with the language embedding space of a large language model (LLM). The aligned features from all branches are then combined to produce a comprehensive visual representation for the LLM to use in multimodal understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of PIIP-LLaVA for multimodal understanding. We use one projector after each branch to align the visual features with the language embedding space of the LLM, and combine the features to obtain the visual features.
> </details>



![](https://arxiv.org/html/2501.07783/x4.png)

> 🔼 This figure details the architecture of the interaction unit, a crucial component within the Parameter-Inverted Image Pyramid Network (PIIP).  The interaction unit facilitates communication and feature integration between adjacent branches of the PIIP, which process images at different resolutions. As shown, the unit employs two deformable attention mechanisms. Each deformable attention mechanism consists of a fully-connected layer (FC) for feature projection, the deformable attention operation itself, and a feed-forward network (FFN) for channel-wise feature fusion. This multi-step process ensures that features from different scales are effectively combined, improving the overall representational power of the network.
> <details>
> <summary>read the caption</summary>
> Figure 4: Detailed structure of the interaction unit. It consists of two deformable attentions with fully-connect layers and feed-forward networks.
> </details>



![](https://arxiv.org/html/2501.07783/x5.png)

> 🔼 Figure 5 illustrates how feature maps from multiple branches of the Parameter-Inverted Image Pyramid Network (PIIP) are integrated for different downstream tasks.  In object detection, segmentation, and multimodal understanding, features from each branch undergo projection and upsampling to match dimensions before being combined and fed into a Feature Pyramid Network (FPN) or a Large Language Model (LLM). This fusion step leverages the complementary information extracted from various resolutions.  For image classification, however, the original classification heads of each branch are used independently, and their predictions are averaged to produce the final result.
> <details>
> <summary>read the caption</summary>
> Figure 5: Detailed design of branch merging in different tasks. For detection, segmentation and multimodal understanding, output features from all branches are fused together with projection and upsampling, and fed into the subsequent FPN or LLM. For classification, we employ the original classification heads to compute logits, and average them as the final prediction.
> </details>



![](https://arxiv.org/html/2501.07783/extracted/6128466/figures/interaction_types/inter_type_v4.png)

> 🔼 This figure displays qualitative results of object detection using the proposed Parameter-Inverted Image Pyramid Networks (PIIP).  The images showcase the model's ability to accurately detect objects at various scales, even small ones, as demonstrated by the bounding boxes around objects in several images.
> <details>
> <summary>read the caption</summary>
> (a) Object detection
> </details>



![](https://arxiv.org/html/2501.07783/x6.png)

> 🔼 This figure displays instance segmentation results from the PIIP-SBL model.  The images showcase the model's ability to accurately identify and delineate the boundaries of multiple objects within complex scenes.  High-resolution processing allows the model to detect even small objects, which are clearly identified and outlined with masks. The results demonstrate a high degree of accuracy and detail in segmenting different objects, highlighting the model's effectiveness in instance segmentation tasks.
> <details>
> <summary>read the caption</summary>
> (b) Instance segmentation
> </details>



![](https://arxiv.org/html/2501.07783/x7.png)

> 🔼 This figure shows the performance of different Parameter-Inverted Image Pyramid Network (PIIP) variants on object detection and instance segmentation tasks.  The x-axis represents the computational cost (GFLOPS), and the y-axis shows the performance in terms of Average Precision (AP) for both box AP (APb) and mask AP (APm).  Different colors represent different PIIP network configurations (with varying model sizes and input image resolutions). The figure demonstrates the impact of adjusting input image resolutions on the overall performance and computational cost for different PIIP models, showcasing a tradeoff between computational efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance of different PIIP variants by adjusting input resolutions on object detection and instance segmentation.
> </details>



![](https://arxiv.org/html/2501.07783/x8.png)

> 🔼 Table V presents the results of experiments conducted to assess the impact of using different pre-trained weights on the performance of the Parameter-Inverted Image Pyramid Networks (PIIP) model.  Specifically, the table focuses on the PIIP-SBL model configuration with a resolution of 1568/1120/672.  This configuration is one of the multiple variations of the PIIP model.  The table shows how using different pre-trained ViT weights (from various sources like AugReg, DeiT III, MAE, Uni-Perceiver, DINOv2, and BEiTv2) as initial weights affected the model's performance on the COCO val2017 dataset for object detection. The performance is measured in terms of Average Precision (AP) for both bounding boxes (APb) and masks (APm).  By comparing the APb and APm scores across different pre-trained weights, the study aimed to determine the influence of the initial weight choice on the final model's accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> TABLE V: Experiments of initializing with different pre-trained weights on COCO val2017 with PIIP-SBL 1568/1120/672.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.7.7">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.2" rowspan="2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.1.1.1.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Branches</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.4" rowspan="2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.5" rowspan="2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1">#FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Mask R-CNN 1<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><times id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">×</annotation></semantics></math> schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3">
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">Tiny</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3.4" style="padding-top:2pt;padding-bottom:2pt;">Small</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.3.3.5" style="padding-top:2pt;padding-bottom:2pt;">Base</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.1" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.m1.1"><semantics id="S3.T2.2.2.2.1.m1.1a"><msup id="S3.T2.2.2.2.1.m1.1.1" xref="S3.T2.2.2.2.1.m1.1.1.cmml"><mi id="S3.T2.2.2.2.1.m1.1.1.2" xref="S3.T2.2.2.2.1.m1.1.1.2.cmml">AP</mi><mi id="S3.T2.2.2.2.1.m1.1.1.3" mathvariant="normal" xref="S3.T2.2.2.2.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.m1.1b"><apply id="S3.T2.2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.2.2.2.1.m1.1.1.1.cmml" xref="S3.T2.2.2.2.1.m1.1.1">superscript</csymbol><ci id="S3.T2.2.2.2.1.m1.1.1.2.cmml" xref="S3.T2.2.2.2.1.m1.1.1.2">AP</ci><ci id="S3.T2.2.2.2.1.m1.1.1.3.cmml" xref="S3.T2.2.2.2.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3.2" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S3.T2.3.3.3.2.m1.1"><semantics id="S3.T2.3.3.3.2.m1.1a"><msup id="S3.T2.3.3.3.2.m1.1.1" xref="S3.T2.3.3.3.2.m1.1.1.cmml"><mi id="S3.T2.3.3.3.2.m1.1.1.2" xref="S3.T2.3.3.3.2.m1.1.1.2.cmml">AP</mi><mi id="S3.T2.3.3.3.2.m1.1.1.3" mathvariant="normal" xref="S3.T2.3.3.3.2.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.2.m1.1b"><apply id="S3.T2.3.3.3.2.m1.1.1.cmml" xref="S3.T2.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.3.3.3.2.m1.1.1.1.cmml" xref="S3.T2.3.3.3.2.m1.1.1">superscript</csymbol><ci id="S3.T2.3.3.3.2.m1.1.1.2.cmml" xref="S3.T2.3.3.3.2.m1.1.1.2">AP</ci><ci id="S3.T2.3.3.3.2.m1.1.1.3.cmml" xref="S3.T2.3.3.3.2.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.2.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.5.5.3" style="padding-top:2pt;padding-bottom:2pt;">ViTDet-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib68" title="">68</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.4.1" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.4.4.4.1.m1.1"><semantics id="S3.T2.4.4.4.1.m1.1a"><mo id="S3.T2.4.4.4.1.m1.1.1" xref="S3.T2.4.4.4.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.1.m1.1b"><minus id="S3.T2.4.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.4.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.2" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.5.5.5.2.m1.1"><semantics id="S3.T2.5.5.5.2.m1.1a"><mo id="S3.T2.5.5.5.2.m1.1.1" xref="S3.T2.5.5.5.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.2.m1.1b"><minus id="S3.T2.5.5.5.2.m1.1.1.cmml" xref="S3.T2.5.5.5.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.5.5.4" style="padding-top:2pt;padding-bottom:2pt;">ViT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5" style="padding-top:2pt;padding-bottom:2pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.5.5.6" style="padding-top:2pt;padding-bottom:2pt;">463G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.7" style="padding-top:2pt;padding-bottom:2pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.8" style="padding-top:2pt;padding-bottom:2pt;">39.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.7.3" style="padding-top:2pt;padding-bottom:2pt;">ConvNeXt-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6.1" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.6.6.6.1.m1.1"><semantics id="S3.T2.6.6.6.1.m1.1a"><mo id="S3.T2.6.6.6.1.m1.1.1" xref="S3.T2.6.6.6.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.1.m1.1b"><minus id="S3.T2.6.6.6.1.m1.1.1.cmml" xref="S3.T2.6.6.6.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.2" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="-" class="ltx_Math" display="inline" id="S3.T2.7.7.7.2.m1.1"><semantics id="S3.T2.7.7.7.2.m1.1a"><mo id="S3.T2.7.7.7.2.m1.1.1" xref="S3.T2.7.7.7.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.2.m1.1b"><minus id="S3.T2.7.7.7.2.m1.1.1.cmml" xref="S3.T2.7.7.7.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.7.4" style="padding-top:2pt;padding-bottom:2pt;">ConvNeXt</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.5" style="padding-top:2pt;padding-bottom:2pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.7.6" style="padding-top:2pt;padding-bottom:2pt;">321G</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.7" style="padding-top:2pt;padding-bottom:2pt;">42.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7.8" style="padding-top:2pt;padding-bottom:2pt;">38.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.8">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.8.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.8.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.2.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.8.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.3.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.8.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.4.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.8.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.8.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.6.1" style="background-color:#F2F2F2;">225G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.8.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.7.1" style="background-color:#F2F2F2;">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.8.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.8.8.1" style="background-color:#F2F2F2;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.9">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.9.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.2.1" style="background-color:#F2F2F2;">ConvNeXt</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.3.1" style="background-color:#F2F2F2;">ConvNeXt</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.9.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.4.1" style="background-color:#F2F2F2;">ConvNeXt</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.9.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.6.1" style="background-color:#F2F2F2;">326G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.7.1" style="background-color:#F2F2F2;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.9.8.1" style="background-color:#F2F2F2;">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.10">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.10.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.2.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.3.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.10.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.4.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.10.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.6.1" style="background-color:#F2F2F2;">373G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.7.1" style="background-color:#F2F2F2;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.10.8.1" style="background-color:#F2F2F2;">42.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.11">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.11.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.2.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.3.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.11.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.4.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.11.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.6.1" style="background-color:#F2F2F2;">431G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.7.1" style="background-color:#F2F2F2;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.11.8.1" style="background-color:#F2F2F2;">42.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.12">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.12.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.12.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.2.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.12.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.3.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.12.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.4.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.12.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.12.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.6.1" style="background-color:#F2F2F2;">297G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.12.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.7.1" style="background-color:#F2F2F2;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.12.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.12.8.1" style="background-color:#F2F2F2;">42.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.13">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.13.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.13.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.2.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.13.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.3.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.13.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.4.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.13.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.13.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.6.1" style="background-color:#F2F2F2;">291G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.13.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.7.1" style="background-color:#F2F2F2;">45.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.13.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.13.8.1" style="background-color:#F2F2F2;">40.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.14">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.14.1" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.14.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.2.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.14.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.3.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.14.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.4.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.14.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.14.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.6.1" style="background-color:#F2F2F2;">231G</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.14.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.7.1" style="background-color:#F2F2F2;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.14.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.14.8.1" style="background-color:#F2F2F2;">40.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.15" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.7.15.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.15.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.2.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.15.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.3.1" style="background-color:#F2F2F2;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.7.15.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.4.1" style="background-color:#F2F2F2;">ConvNext</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.15.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.5.1" style="background-color:#F2F2F2;">1024/672/448</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.7.15.6" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.6.1" style="background-color:#F2F2F2;">193G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.15.7" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.7.1" style="background-color:#F2F2F2;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.15.8" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="S3.T2.7.7.15.8.1" style="background-color:#F2F2F2;">40.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of object detection and instance segmentation performance on the COCO val2017 dataset using different model architectures.  It shows the results for several models, including the baseline ViTDet-B, and variations of the PIIP model using different combinations of CNNs and Vision Transformers (ViTs), along with various numbers of branches in the multi-resolution architecture.  The table highlights the impact of architectural choices and the trade-off between computational cost (#FLOPS) and performance (APb, APm).
> <details>
> <summary>read the caption</summary>
> TABLE II: Performance of CNN-based and heterogeneous models on COCO val2017.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.9.9.9">
<tr class="ltx_tr" id="S3.T3.6.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.6.6.6.6.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.6.6.7.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.1.m1.1a"><msup id="S3.T3.1.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T3.1.1.1.1.1.m1.1.1.2" xref="S3.T3.1.1.1.1.1.m1.1.1.2.cmml">AP</mi><mi id="S3.T3.1.1.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.T3.1.1.1.1.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.1.m1.1b"><apply id="S3.T3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S3.T3.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1.2">AP</ci><ci id="S3.T3.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{50}" class="ltx_Math" display="inline" id="S3.T3.2.2.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.2.2.m1.1a"><msubsup id="S3.T3.2.2.2.2.2.m1.1.1" xref="S3.T3.2.2.2.2.2.m1.1.1.cmml"><mi id="S3.T3.2.2.2.2.2.m1.1.1.2.2" xref="S3.T3.2.2.2.2.2.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.2.2.2.2.2.m1.1.1.3" xref="S3.T3.2.2.2.2.2.m1.1.1.3.cmml">50</mn><mi id="S3.T3.2.2.2.2.2.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.2.2.2.2.2.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.2.2.m1.1b"><apply id="S3.T3.2.2.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.2.2.2.2.2.m1.1.1.1.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1">subscript</csymbol><apply id="S3.T3.2.2.2.2.2.m1.1.1.2.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.2.2.2.2.2.m1.1.1.2.1.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S3.T3.2.2.2.2.2.m1.1.1.2.2.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1.2.2">AP</ci><ci id="S3.T3.2.2.2.2.2.m1.1.1.2.3.cmml" xref="S3.T3.2.2.2.2.2.m1.1.1.2.3">b</ci></apply><cn id="S3.T3.2.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T3.2.2.2.2.2.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.2.2.m1.1c">\rm AP^{b}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.2.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.3.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{75}" class="ltx_Math" display="inline" id="S3.T3.3.3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.3.3.m1.1a"><msubsup id="S3.T3.3.3.3.3.3.m1.1.1" xref="S3.T3.3.3.3.3.3.m1.1.1.cmml"><mi id="S3.T3.3.3.3.3.3.m1.1.1.2.2" xref="S3.T3.3.3.3.3.3.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.3.3.3.3.3.m1.1.1.3" xref="S3.T3.3.3.3.3.3.m1.1.1.3.cmml">75</mn><mi id="S3.T3.3.3.3.3.3.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.3.3.3.3.3.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.3.3.m1.1b"><apply id="S3.T3.3.3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.3.3.3.3.3.m1.1.1.1.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1">subscript</csymbol><apply id="S3.T3.3.3.3.3.3.m1.1.1.2.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.3.3.3.3.3.m1.1.1.2.1.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1">superscript</csymbol><ci id="S3.T3.3.3.3.3.3.m1.1.1.2.2.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1.2.2">AP</ci><ci id="S3.T3.3.3.3.3.3.m1.1.1.2.3.cmml" xref="S3.T3.3.3.3.3.3.m1.1.1.2.3">b</ci></apply><cn id="S3.T3.3.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T3.3.3.3.3.3.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.3.3.m1.1c">\rm AP^{b}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.3.3.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S3.T3.4.4.4.4.4.m1.1"><semantics id="S3.T3.4.4.4.4.4.m1.1a"><msup id="S3.T3.4.4.4.4.4.m1.1.1" xref="S3.T3.4.4.4.4.4.m1.1.1.cmml"><mi id="S3.T3.4.4.4.4.4.m1.1.1.2" xref="S3.T3.4.4.4.4.4.m1.1.1.2.cmml">AP</mi><mi id="S3.T3.4.4.4.4.4.m1.1.1.3" mathvariant="normal" xref="S3.T3.4.4.4.4.4.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.4.4.m1.1b"><apply id="S3.T3.4.4.4.4.4.m1.1.1.cmml" xref="S3.T3.4.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.4.4.4.4.4.m1.1.1.1.cmml" xref="S3.T3.4.4.4.4.4.m1.1.1">superscript</csymbol><ci id="S3.T3.4.4.4.4.4.m1.1.1.2.cmml" xref="S3.T3.4.4.4.4.4.m1.1.1.2">AP</ci><ci id="S3.T3.4.4.4.4.4.m1.1.1.3.cmml" xref="S3.T3.4.4.4.4.4.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.4.4.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.4.4.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.5.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{50}" class="ltx_Math" display="inline" id="S3.T3.5.5.5.5.5.m1.1"><semantics id="S3.T3.5.5.5.5.5.m1.1a"><msubsup id="S3.T3.5.5.5.5.5.m1.1.1" xref="S3.T3.5.5.5.5.5.m1.1.1.cmml"><mi id="S3.T3.5.5.5.5.5.m1.1.1.2.2" xref="S3.T3.5.5.5.5.5.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.5.5.5.5.5.m1.1.1.3" xref="S3.T3.5.5.5.5.5.m1.1.1.3.cmml">50</mn><mi id="S3.T3.5.5.5.5.5.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.5.5.5.5.5.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.5.5.m1.1b"><apply id="S3.T3.5.5.5.5.5.m1.1.1.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.5.5.5.5.5.m1.1.1.1.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1">subscript</csymbol><apply id="S3.T3.5.5.5.5.5.m1.1.1.2.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.5.5.5.5.5.m1.1.1.2.1.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S3.T3.5.5.5.5.5.m1.1.1.2.2.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1.2.2">AP</ci><ci id="S3.T3.5.5.5.5.5.m1.1.1.2.3.cmml" xref="S3.T3.5.5.5.5.5.m1.1.1.2.3">m</ci></apply><cn id="S3.T3.5.5.5.5.5.m1.1.1.3.cmml" type="integer" xref="S3.T3.5.5.5.5.5.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.5.5.m1.1c">\rm AP^{m}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.5.5.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{75}" class="ltx_Math" display="inline" id="S3.T3.6.6.6.6.6.m1.1"><semantics id="S3.T3.6.6.6.6.6.m1.1a"><msubsup id="S3.T3.6.6.6.6.6.m1.1.1" xref="S3.T3.6.6.6.6.6.m1.1.1.cmml"><mi id="S3.T3.6.6.6.6.6.m1.1.1.2.2" xref="S3.T3.6.6.6.6.6.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.6.6.6.6.6.m1.1.1.3" xref="S3.T3.6.6.6.6.6.m1.1.1.3.cmml">75</mn><mi id="S3.T3.6.6.6.6.6.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.6.6.6.6.6.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.6.6.m1.1b"><apply id="S3.T3.6.6.6.6.6.m1.1.1.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.6.6.6.6.6.m1.1.1.1.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1">subscript</csymbol><apply id="S3.T3.6.6.6.6.6.m1.1.1.2.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.6.6.6.6.6.m1.1.1.2.1.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1">superscript</csymbol><ci id="S3.T3.6.6.6.6.6.m1.1.1.2.2.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1.2.2">AP</ci><ci id="S3.T3.6.6.6.6.6.m1.1.1.2.3.cmml" xref="S3.T3.6.6.6.6.6.m1.1.1.2.3">m</ci></apply><cn id="S3.T3.6.6.6.6.6.m1.1.1.3.cmml" type="integer" xref="S3.T3.6.6.6.6.6.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.6.6.m1.1c">\rm AP^{m}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.6.6.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.7.7">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.7.7.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T3.7.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.7.7.1.1">Mask R-CNN 1<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.7.7.7.7.1.1.m1.1"><semantics id="S3.T3.7.7.7.7.1.1.m1.1a"><mo id="S3.T3.7.7.7.7.1.1.m1.1.1" xref="S3.T3.7.7.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.7.1.1.m1.1b"><times id="S3.T3.7.7.7.7.1.1.m1.1.1.cmml" xref="S3.T3.7.7.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.7.1.1.m1.1d">×</annotation></semantics></math> schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.10.1" style="padding-top:1pt;padding-bottom:1pt;">PVTv2-B5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib66" title="">66</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.2" style="padding-top:1pt;padding-bottom:1pt;">47.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.3" style="padding-top:1pt;padding-bottom:1pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.4" style="padding-top:1pt;padding-bottom:1pt;">51.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.5" style="padding-top:1pt;padding-bottom:1pt;">42.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.6" style="padding-top:1pt;padding-bottom:1pt;">65.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.10.7" style="padding-top:1pt;padding-bottom:1pt;">46.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.11.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib72" title="">72</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.2" style="padding-top:1pt;padding-bottom:1pt;">42.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.3" style="padding-top:1pt;padding-bottom:1pt;">65.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.4" style="padding-top:1pt;padding-bottom:1pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.5" style="padding-top:1pt;padding-bottom:1pt;">39.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.6" style="padding-top:1pt;padding-bottom:1pt;">62.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.11.7" style="padding-top:1pt;padding-bottom:1pt;">42.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.12.1" style="padding-top:1pt;padding-bottom:1pt;">ViTDet-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib68" title="">68</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2" style="padding-top:1pt;padding-bottom:1pt;">43.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.3" style="padding-top:1pt;padding-bottom:1pt;">65.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.4" style="padding-top:1pt;padding-bottom:1pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.5" style="padding-top:1pt;padding-bottom:1pt;">39.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.6" style="padding-top:1pt;padding-bottom:1pt;">62.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.7" style="padding-top:1pt;padding-bottom:1pt;">41.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.13.1" style="padding-top:1pt;padding-bottom:1pt;">Swin-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.2" style="padding-top:1pt;padding-bottom:1pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.5" style="padding-top:1pt;padding-bottom:1pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.6" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.7" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.14.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-Adapter-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.2" style="padding-top:1pt;padding-bottom:1pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.3" style="padding-top:1pt;padding-bottom:1pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4" style="padding-top:1pt;padding-bottom:1pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.5" style="padding-top:1pt;padding-bottom:1pt;">41.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.6" style="padding-top:1pt;padding-bottom:1pt;">65.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.7" style="padding-top:1pt;padding-bottom:1pt;">44.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.15" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.15.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.2.1" style="background-color:#F2F2F2;">47.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.3.1" style="background-color:#F2F2F2;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.4.1" style="background-color:#F2F2F2;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.5.1" style="background-color:#F2F2F2;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.6.1" style="background-color:#F2F2F2;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.15.7.1" style="background-color:#F2F2F2;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.16">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.9.9.9.16.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib72" title="">72</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.2" style="padding-top:1pt;padding-bottom:1pt;">45.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.3" style="padding-top:1pt;padding-bottom:1pt;">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.4" style="padding-top:1pt;padding-bottom:1pt;">49.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.5" style="padding-top:1pt;padding-bottom:1pt;">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.6" style="padding-top:1pt;padding-bottom:1pt;">65.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.16.7" style="padding-top:1pt;padding-bottom:1pt;">44.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.17.1" style="padding-top:1pt;padding-bottom:1pt;">ViTDet-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib68" title="">68</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.2" style="padding-top:1pt;padding-bottom:1pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.3" style="padding-top:1pt;padding-bottom:1pt;">69.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.4" style="padding-top:1pt;padding-bottom:1pt;">50.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.5" style="padding-top:1pt;padding-bottom:1pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.6" style="padding-top:1pt;padding-bottom:1pt;">65.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7" style="padding-top:1pt;padding-bottom:1pt;">44.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.18.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-Adapter-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.2" style="padding-top:1pt;padding-bottom:1pt;">48.7</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.3" style="padding-top:1pt;padding-bottom:1pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.4" style="padding-top:1pt;padding-bottom:1pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.5" style="padding-top:1pt;padding-bottom:1pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.6" style="padding-top:1pt;padding-bottom:1pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.18.7" style="padding-top:1pt;padding-bottom:1pt;">46.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.19" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.19.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.2.1" style="background-color:#F2F2F2;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.3.1" style="background-color:#F2F2F2;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.4.1" style="background-color:#F2F2F2;">54.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.5.1" style="background-color:#F2F2F2;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.6.1" style="background-color:#F2F2F2;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.19.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.19.7.1" style="background-color:#F2F2F2;">47.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.20">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.9.9.9.20.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T3.9.9.9.20.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.9.9.20.2.1">DINO + MS schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.8.8" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.8.8.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.1.1" style="background-color:#F2F2F2;">PIIP-SBL-3<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.8.8.8.8.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S3.T3.8.8.8.8.1.1.m1.1a"><mo id="S3.T3.8.8.8.8.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.8.8.8.8.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.8.8.1.1.m1.1b"><times id="S3.T3.8.8.8.8.1.1.m1.1.1.cmml" xref="S3.T3.8.8.8.8.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.8.8.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.8.8.1.1.m1.1d">×</annotation></semantics></math> (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.2.1" style="background-color:#F2F2F2;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.3.1" style="background-color:#F2F2F2;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.4.1" style="background-color:#F2F2F2;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.5.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.6.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.8.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.8.8.8.8.7.1" style="background-color:#F2F2F2;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.9" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.9.9.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.1.1" style="background-color:#F2F2F2;">PIIP-H6B-1<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.9.9.9.9.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S3.T3.9.9.9.9.1.1.m1.1a"><mo id="S3.T3.9.9.9.9.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T3.9.9.9.9.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.9.9.1.1.m1.1b"><times id="S3.T3.9.9.9.9.1.1.m1.1.1.cmml" xref="S3.T3.9.9.9.9.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.9.9.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.9.9.1.1.m1.1d">×</annotation></semantics></math> (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.2.1" style="background-color:#F2F2F2;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.3.1" style="background-color:#F2F2F2;">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.4.1" style="background-color:#F2F2F2;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.5.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.6.1" style="background-color:#F2F2F2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.9.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.9.9.9.9.7.1" style="background-color:#F2F2F2;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table III presents a comparison of different models' performance on object detection and instance segmentation tasks using the COCO val2017 dataset.  The table shows the Average Precision (AP) scores at different intersection over union (IoU) thresholds (AP50, AP75, AP, APm) for various models.  The 'MS' column indicates whether AutoAugment [71] was used for multi-scale training, enhancing the model's ability to handle objects of various sizes.  Large-size models in this table utilize ViT weights pretrained on the larger ImageNet-21K dataset, improving their overall performance compared to models trained on the standard ImageNet dataset. Note that some results included in this table are taken from a previous study [21].
> <details>
> <summary>read the caption</summary>
> TABLE III: Object detection and instance segmentation performance on COCO val2017. ‘MS’ means using AutoAugment [71] for multi-scale training. Large-size models use ViT weights trained on ImageNet-21K. Some results are from [21].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.17.8.8">
<tr class="ltx_tr" id="S3.T3.15.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.15.6.6.6.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.15.6.6.6.7.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S3.T3.10.1.1.1.1.m1.1"><semantics id="S3.T3.10.1.1.1.1.m1.1a"><msup id="S3.T3.10.1.1.1.1.m1.1.1" xref="S3.T3.10.1.1.1.1.m1.1.1.cmml"><mi id="S3.T3.10.1.1.1.1.m1.1.1.2" xref="S3.T3.10.1.1.1.1.m1.1.1.2.cmml">AP</mi><mi id="S3.T3.10.1.1.1.1.m1.1.1.3" mathvariant="normal" xref="S3.T3.10.1.1.1.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T3.10.1.1.1.1.m1.1b"><apply id="S3.T3.10.1.1.1.1.m1.1.1.cmml" xref="S3.T3.10.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.10.1.1.1.1.m1.1.1.1.cmml" xref="S3.T3.10.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S3.T3.10.1.1.1.1.m1.1.1.2.cmml" xref="S3.T3.10.1.1.1.1.m1.1.1.2">AP</ci><ci id="S3.T3.10.1.1.1.1.m1.1.1.3.cmml" xref="S3.T3.10.1.1.1.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.1.1.1.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.1.1.1.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.11.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{50}" class="ltx_Math" display="inline" id="S3.T3.11.2.2.2.2.m1.1"><semantics id="S3.T3.11.2.2.2.2.m1.1a"><msubsup id="S3.T3.11.2.2.2.2.m1.1.1" xref="S3.T3.11.2.2.2.2.m1.1.1.cmml"><mi id="S3.T3.11.2.2.2.2.m1.1.1.2.2" xref="S3.T3.11.2.2.2.2.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.11.2.2.2.2.m1.1.1.3" xref="S3.T3.11.2.2.2.2.m1.1.1.3.cmml">50</mn><mi id="S3.T3.11.2.2.2.2.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.11.2.2.2.2.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.11.2.2.2.2.m1.1b"><apply id="S3.T3.11.2.2.2.2.m1.1.1.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.11.2.2.2.2.m1.1.1.1.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1">subscript</csymbol><apply id="S3.T3.11.2.2.2.2.m1.1.1.2.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.11.2.2.2.2.m1.1.1.2.1.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S3.T3.11.2.2.2.2.m1.1.1.2.2.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1.2.2">AP</ci><ci id="S3.T3.11.2.2.2.2.m1.1.1.2.3.cmml" xref="S3.T3.11.2.2.2.2.m1.1.1.2.3">b</ci></apply><cn id="S3.T3.11.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T3.11.2.2.2.2.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.2.2.2.2.m1.1c">\rm AP^{b}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.2.2.2.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.12.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{b}_{75}" class="ltx_Math" display="inline" id="S3.T3.12.3.3.3.3.m1.1"><semantics id="S3.T3.12.3.3.3.3.m1.1a"><msubsup id="S3.T3.12.3.3.3.3.m1.1.1" xref="S3.T3.12.3.3.3.3.m1.1.1.cmml"><mi id="S3.T3.12.3.3.3.3.m1.1.1.2.2" xref="S3.T3.12.3.3.3.3.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.12.3.3.3.3.m1.1.1.3" xref="S3.T3.12.3.3.3.3.m1.1.1.3.cmml">75</mn><mi id="S3.T3.12.3.3.3.3.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.12.3.3.3.3.m1.1.1.2.3.cmml">b</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.12.3.3.3.3.m1.1b"><apply id="S3.T3.12.3.3.3.3.m1.1.1.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.12.3.3.3.3.m1.1.1.1.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1">subscript</csymbol><apply id="S3.T3.12.3.3.3.3.m1.1.1.2.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.12.3.3.3.3.m1.1.1.2.1.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1">superscript</csymbol><ci id="S3.T3.12.3.3.3.3.m1.1.1.2.2.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1.2.2">AP</ci><ci id="S3.T3.12.3.3.3.3.m1.1.1.2.3.cmml" xref="S3.T3.12.3.3.3.3.m1.1.1.2.3">b</ci></apply><cn id="S3.T3.12.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T3.12.3.3.3.3.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.3.3.3.3.m1.1c">\rm AP^{b}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.3.3.3.3.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.13.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S3.T3.13.4.4.4.4.m1.1"><semantics id="S3.T3.13.4.4.4.4.m1.1a"><msup id="S3.T3.13.4.4.4.4.m1.1.1" xref="S3.T3.13.4.4.4.4.m1.1.1.cmml"><mi id="S3.T3.13.4.4.4.4.m1.1.1.2" xref="S3.T3.13.4.4.4.4.m1.1.1.2.cmml">AP</mi><mi id="S3.T3.13.4.4.4.4.m1.1.1.3" mathvariant="normal" xref="S3.T3.13.4.4.4.4.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T3.13.4.4.4.4.m1.1b"><apply id="S3.T3.13.4.4.4.4.m1.1.1.cmml" xref="S3.T3.13.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.13.4.4.4.4.m1.1.1.1.cmml" xref="S3.T3.13.4.4.4.4.m1.1.1">superscript</csymbol><ci id="S3.T3.13.4.4.4.4.m1.1.1.2.cmml" xref="S3.T3.13.4.4.4.4.m1.1.1.2">AP</ci><ci id="S3.T3.13.4.4.4.4.m1.1.1.3.cmml" xref="S3.T3.13.4.4.4.4.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.13.4.4.4.4.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.13.4.4.4.4.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.14.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{50}" class="ltx_Math" display="inline" id="S3.T3.14.5.5.5.5.m1.1"><semantics id="S3.T3.14.5.5.5.5.m1.1a"><msubsup id="S3.T3.14.5.5.5.5.m1.1.1" xref="S3.T3.14.5.5.5.5.m1.1.1.cmml"><mi id="S3.T3.14.5.5.5.5.m1.1.1.2.2" xref="S3.T3.14.5.5.5.5.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.14.5.5.5.5.m1.1.1.3" xref="S3.T3.14.5.5.5.5.m1.1.1.3.cmml">50</mn><mi id="S3.T3.14.5.5.5.5.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.14.5.5.5.5.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.14.5.5.5.5.m1.1b"><apply id="S3.T3.14.5.5.5.5.m1.1.1.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.14.5.5.5.5.m1.1.1.1.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1">subscript</csymbol><apply id="S3.T3.14.5.5.5.5.m1.1.1.2.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.14.5.5.5.5.m1.1.1.2.1.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S3.T3.14.5.5.5.5.m1.1.1.2.2.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1.2.2">AP</ci><ci id="S3.T3.14.5.5.5.5.m1.1.1.2.3.cmml" xref="S3.T3.14.5.5.5.5.m1.1.1.2.3">m</ci></apply><cn id="S3.T3.14.5.5.5.5.m1.1.1.3.cmml" type="integer" xref="S3.T3.14.5.5.5.5.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.14.5.5.5.5.m1.1c">\rm AP^{m}_{50}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.14.5.5.5.5.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.15.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\rm AP^{m}_{75}" class="ltx_Math" display="inline" id="S3.T3.15.6.6.6.6.m1.1"><semantics id="S3.T3.15.6.6.6.6.m1.1a"><msubsup id="S3.T3.15.6.6.6.6.m1.1.1" xref="S3.T3.15.6.6.6.6.m1.1.1.cmml"><mi id="S3.T3.15.6.6.6.6.m1.1.1.2.2" xref="S3.T3.15.6.6.6.6.m1.1.1.2.2.cmml">AP</mi><mn id="S3.T3.15.6.6.6.6.m1.1.1.3" xref="S3.T3.15.6.6.6.6.m1.1.1.3.cmml">75</mn><mi id="S3.T3.15.6.6.6.6.m1.1.1.2.3" mathvariant="normal" xref="S3.T3.15.6.6.6.6.m1.1.1.2.3.cmml">m</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T3.15.6.6.6.6.m1.1b"><apply id="S3.T3.15.6.6.6.6.m1.1.1.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.15.6.6.6.6.m1.1.1.1.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1">subscript</csymbol><apply id="S3.T3.15.6.6.6.6.m1.1.1.2.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.15.6.6.6.6.m1.1.1.2.1.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1">superscript</csymbol><ci id="S3.T3.15.6.6.6.6.m1.1.1.2.2.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1.2.2">AP</ci><ci id="S3.T3.15.6.6.6.6.m1.1.1.2.3.cmml" xref="S3.T3.15.6.6.6.6.m1.1.1.2.3">m</ci></apply><cn id="S3.T3.15.6.6.6.6.m1.1.1.3.cmml" type="integer" xref="S3.T3.15.6.6.6.6.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.15.6.6.6.6.m1.1c">\rm AP^{m}_{75}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.15.6.6.6.6.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.7.7.7">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.16.7.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T3.16.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.16.7.7.7.1.1">Cascade R-CNN 1<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.16.7.7.7.1.1.m1.1"><semantics id="S3.T3.16.7.7.7.1.1.m1.1a"><mo id="S3.T3.16.7.7.7.1.1.m1.1.1" xref="S3.T3.16.7.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.16.7.7.7.1.1.m1.1b"><times id="S3.T3.16.7.7.7.1.1.m1.1.1.cmml" xref="S3.T3.16.7.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.16.7.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.16.7.7.7.1.1.m1.1d">×</annotation></semantics></math> schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.9.1" style="padding-top:1pt;padding-bottom:1pt;">Swin-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.2" style="padding-top:1pt;padding-bottom:1pt;">51.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.3" style="padding-top:1pt;padding-bottom:1pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.4" style="padding-top:1pt;padding-bottom:1pt;">56.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.5" style="padding-top:1pt;padding-bottom:1pt;">44.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.6" style="padding-top:1pt;padding-bottom:1pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.9.7" style="padding-top:1pt;padding-bottom:1pt;">48.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.10.1" style="padding-top:1pt;padding-bottom:1pt;">ConvNeXt-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.2" style="padding-top:1pt;padding-bottom:1pt;">53.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.3" style="padding-top:1pt;padding-bottom:1pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.4" style="padding-top:1pt;padding-bottom:1pt;">58.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.5" style="padding-top:1pt;padding-bottom:1pt;">46.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.6" style="padding-top:1pt;padding-bottom:1pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.10.7" style="padding-top:1pt;padding-bottom:1pt;">50.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.11" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.2.1" style="background-color:#F2F2F2;">53.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.3.1" style="background-color:#F2F2F2;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.4.1" style="background-color:#F2F2F2;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.5.1" style="background-color:#F2F2F2;">46.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.6.1" style="background-color:#F2F2F2;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.11.7.1" style="background-color:#F2F2F2;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.8">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.17.8.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T3.17.8.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.17.8.8.8.1.1">Cascade R-CNN 3<math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.17.8.8.8.1.1.m1.1"><semantics id="S3.T3.17.8.8.8.1.1.m1.1a"><mo id="S3.T3.17.8.8.8.1.1.m1.1.1" xref="S3.T3.17.8.8.8.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.17.8.8.8.1.1.m1.1b"><times id="S3.T3.17.8.8.8.1.1.m1.1.1.cmml" xref="S3.T3.17.8.8.8.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.17.8.8.8.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.17.8.8.8.1.1.m1.1d">×</annotation></semantics></math> + MS schedule</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.12.1" style="padding-top:1pt;padding-bottom:1pt;">Swin-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.2" style="padding-top:1pt;padding-bottom:1pt;">51.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.3" style="padding-top:1pt;padding-bottom:1pt;">70.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.4" style="padding-top:1pt;padding-bottom:1pt;">57.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.6" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.12.7" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.13.1" style="padding-top:1pt;padding-bottom:1pt;">Shuffle-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib73" title="">73</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.2" style="padding-top:1pt;padding-bottom:1pt;">52.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.3" style="padding-top:1pt;padding-bottom:1pt;">71.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.4" style="padding-top:1pt;padding-bottom:1pt;">57.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.6" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.13.7" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.14.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib72" title="">72</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.2" style="padding-top:1pt;padding-bottom:1pt;">50.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.3" style="padding-top:1pt;padding-bottom:1pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.4" style="padding-top:1pt;padding-bottom:1pt;">54.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.6" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.14.7" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.15.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-Adapter-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.2" style="padding-top:1pt;padding-bottom:1pt;">52.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.3" style="padding-top:1pt;padding-bottom:1pt;">70.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.4" style="padding-top:1pt;padding-bottom:1pt;">56.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.6" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.15.7" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.16" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.16.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.2.1" style="background-color:#F2F2F2;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.3.1" style="background-color:#F2F2F2;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.4.1" style="background-color:#F2F2F2;">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.5.1" style="background-color:#F2F2F2;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.6.1" style="background-color:#F2F2F2;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.16.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.16.7.1" style="background-color:#F2F2F2;">51.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.17.8.8.17.1" style="padding-top:1pt;padding-bottom:1pt;">Swin-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.2" style="padding-top:1pt;padding-bottom:1pt;">53.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.3" style="padding-top:1pt;padding-bottom:1pt;">72.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.4" style="padding-top:1pt;padding-bottom:1pt;">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.5" style="padding-top:1pt;padding-bottom:1pt;">46.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.6" style="padding-top:1pt;padding-bottom:1pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.8.8.17.7" style="padding-top:1pt;padding-bottom:1pt;">50.8</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.18.1" style="padding-top:1pt;padding-bottom:1pt;">RepLKNet-31L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.2" style="padding-top:1pt;padding-bottom:1pt;">53.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.3" style="padding-top:1pt;padding-bottom:1pt;">72.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.4" style="padding-top:1pt;padding-bottom:1pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.5" style="padding-top:1pt;padding-bottom:1pt;">46.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.6" style="padding-top:1pt;padding-bottom:1pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.18.7" style="padding-top:1pt;padding-bottom:1pt;">50.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.8.8.19.1" style="padding-top:1pt;padding-bottom:1pt;">ConvNeXt-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.2" style="padding-top:1pt;padding-bottom:1pt;">54.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.3" style="padding-top:1pt;padding-bottom:1pt;">73.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.4" style="padding-top:1pt;padding-bottom:1pt;">59.8</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.5" style="padding-top:1pt;padding-bottom:1pt;">47.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.6" style="padding-top:1pt;padding-bottom:1pt;">71.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.8.8.19.7" style="padding-top:1pt;padding-bottom:1pt;">51.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.8.8.20" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.17.8.8.20.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.2.1" style="background-color:#F2F2F2;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.3.1" style="background-color:#F2F2F2;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.4.1" style="background-color:#F2F2F2;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.5.1" style="background-color:#F2F2F2;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.6.1" style="background-color:#F2F2F2;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.8.8.20.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.17.8.8.20.7.1" style="background-color:#F2F2F2;">52.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted using the InternViT-6B, a large-scale vision foundation model. It compares the performance of the InternViT-6B model with and without the proposed Parameter-Inverted Image Pyramid Networks (PIIP) on object detection and semantic segmentation tasks.  The table shows the model's parameters, FLOPs (floating point operations), resolution, and performance metrics (APb for bounding box average precision and APm for mask average precision). This allows for a direct comparison of the computational cost and performance gains achieved by incorporating PIIP into the InternViT-6B architecture.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Experiments on the large-scale vision foundation model InternViT-6B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.3">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.2" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.3" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1" style="font-size:90%;">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T4.1.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1" style="font-size:90%;">Mask R-CNN 1<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><times id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">×</annotation></semantics></math> schedule</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.1.1.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1" style="font-size:90%;">UperNet 160k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:90%;">#FLOPs</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.3.4.1" style="font-size:90%;">Resolution</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><msup id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><mi id="S4.T4.2.2.2.1.m1.1.1.2" mathsize="90%" xref="S4.T4.2.2.2.1.m1.1.1.2.cmml">AP</mi><mi id="S4.T4.2.2.2.1.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">superscript</csymbol><ci id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2">AP</ci><ci id="S4.T4.2.2.2.1.m1.1.1.3.cmml" xref="S4.T4.2.2.2.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.3.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.2.m1.1"><semantics id="S4.T4.3.3.3.2.m1.1a"><msup id="S4.T4.3.3.3.2.m1.1.1" xref="S4.T4.3.3.3.2.m1.1.1.cmml"><mi id="S4.T4.3.3.3.2.m1.1.1.2" mathsize="90%" xref="S4.T4.3.3.3.2.m1.1.1.2.cmml">AP</mi><mi id="S4.T4.3.3.3.2.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T4.3.3.3.2.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.2.m1.1b"><apply id="S4.T4.3.3.3.2.m1.1.1.cmml" xref="S4.T4.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.2.m1.1.1.1.cmml" xref="S4.T4.3.3.3.2.m1.1.1">superscript</csymbol><ci id="S4.T4.3.3.3.2.m1.1.1.2.cmml" xref="S4.T4.3.3.3.2.m1.1.1.2">AP</ci><ci id="S4.T4.3.3.3.2.m1.1.1.3.cmml" xref="S4.T4.3.3.3.2.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.2.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.3.5.1" style="font-size:90%;">Crop Size</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.3.6.1" style="font-size:90%;">#FLOPs</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.3.7.1" style="font-size:90%;">mIoU</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T4.3.3.4.1.1" style="font-size:90%;">InternViT-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.3.3.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib39" title="">39</a><span class="ltx_text" id="S4.T4.3.3.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.4.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.2.1" style="font-size:90%;">5919M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.3.1" style="font-size:90%;">24418G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.4.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.5.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.4.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.6.1" style="font-size:90%;">48.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.7.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.8.1" style="font-size:90%;">6105G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.4.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.4.9.1" style="font-size:90%;">58.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.5">
<td class="ltx_td" id="S4.T4.3.3.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.5.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.2.1" style="font-size:90%;background-color:#F2F2F2;">7269M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.3.1" style="font-size:90%;background-color:#F2F2F2;">5643G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.4.1" style="font-size:90%;background-color:#F2F2F2;">1280/1024/256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.5.1" style="font-size:90%;background-color:#F2F2F2;">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.5.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.6.1" style="font-size:90%;background-color:#F2F2F2;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.7.1" style="font-size:90%;background-color:#F2F2F2;">640/512/192</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.8.1" style="font-size:90%;background-color:#F2F2F2;">1903G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.5.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.5.9.1" style="font-size:90%;background-color:#F2F2F2;">57.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.1.1" style="font-size:90%;background-color:#F2F2F2;">PIIP-LH6B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.6.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.2.1" style="font-size:90%;background-color:#F2F2F2;">7271M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.3.1" style="font-size:90%;background-color:#F2F2F2;">10368G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.4.1" style="font-size:90%;background-color:#F2F2F2;">1280/1024/512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.5.1" style="font-size:90%;background-color:#F2F2F2;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.6.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.6.1" style="font-size:90%;background-color:#F2F2F2;">47.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.7.1" style="font-size:90%;background-color:#F2F2F2;">640/512/256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.8.1" style="font-size:90%;background-color:#F2F2F2;">2592G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.6.9.1" style="font-size:90%;background-color:#F2F2F2;">58.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.7">
<td class="ltx_td ltx_border_bb" id="S4.T4.3.3.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.7.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.7.2.1" style="font-size:90%;background-color:#F2F2F2;">7273M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.7.3.1" style="font-size:90%;background-color:#F2F2F2;">13911G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.7.4.1" style="font-size:90%;background-color:#F2F2F2;">1280/1024/640</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.5.1" style="font-size:90%;background-color:#F2F2F2;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.7.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.6.1" style="font-size:90%;background-color:#F2F2F2;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.7.7.1" style="font-size:90%;background-color:#F2F2F2;">640/512/384</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T4.3.3.7.8.1" style="font-size:90%;background-color:#F2F2F2;">4560G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.7.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.9.1" style="font-size:90%;background-color:#F2F2F2;">59.65</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table X details the configurations and performance of a model trained from scratch using a parameter-inverted image pyramid design. It breaks down the model architecture into three branches, specifying the number of layers, dimensions, heads, and resolution for each.  The table contrasts these architectural settings against the total number of parameters and floating-point operations (FLOPs) required. Finally, it presents the resulting top-1 accuracy achieved on the ImageNet-1K benchmark, offering a quantitative evaluation of the proposed parameter-inverted approach in a from-scratch pretraining context.
> <details>
> <summary>read the caption</summary>
> TABLE X: From-scratch pre-training settings and results on ImageNet-1K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.2.2.2">
<tr class="ltx_tr" id="S4.T7.2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.2.2.2.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.2.2.2.3.1" style="font-size:90%;">ViT-S</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.2.2.2.2.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.2.2.2.4.1" style="font-size:90%;">ViT-B / ViT-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.1.1.1.1.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.1.m1.1a"><msup id="S4.T7.1.1.1.1.1.m1.1.1" xref="S4.T7.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T7.1.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S4.T7.1.1.1.1.1.m1.1.1.2.cmml">AP</mi><mi id="S4.T7.1.1.1.1.1.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T7.1.1.1.1.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.1.m1.1b"><apply id="S4.T7.1.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T7.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T7.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.2">AP</ci><ci id="S4.T7.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.2.2.2.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.2.m1.1a"><msup id="S4.T7.2.2.2.2.2.m1.1.1" xref="S4.T7.2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T7.2.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S4.T7.2.2.2.2.2.m1.1.1.2.cmml">AP</mi><mi id="S4.T7.2.2.2.2.2.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="S4.T7.2.2.2.2.2.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.2.m1.1b"><apply id="S4.T7.2.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T7.2.2.2.2.2.m1.1.1.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S4.T7.2.2.2.2.2.m1.1.1.2.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.2">AP</ci><ci id="S4.T7.2.2.2.2.2.m1.1.1.3.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.2.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2.3.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.3.1.1" style="font-size:90%;">AugReg </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib4" title="">4</a><span class="ltx_text" id="S4.T7.2.2.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.2.2.2.3.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.3.2.1" style="font-size:90%;">AugReg </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib4" title="">4</a><span class="ltx_text" id="S4.T7.2.2.2.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2.3.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.3.3.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2.3.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.3.4.1" style="font-size:90%;">42.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.4">
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.4.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.4.1.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.2.2.4.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.4.2.1" style="font-size:90%;">Uni-Perceiver </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib81" title="">81</a><span class="ltx_text" id="S4.T7.2.2.2.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.4.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.4.3.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.4.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.4.4.1" style="font-size:90%;">42.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.5">
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.5.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.5.1.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.2.2.5.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.5.2.1" style="font-size:90%;">MAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib76" title="">76</a><span class="ltx_text" id="S4.T7.2.2.2.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.5.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.5.3.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.5.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.5.4.1" style="font-size:90%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.6">
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.6.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.6.1.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.2.2.6.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.6.2.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.6.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.6.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.6.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.6.4.1" style="font-size:90%;">44.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.7">
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.7.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.7.1.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.2.2.7.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.7.2.1" style="font-size:90%;">DINOv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib82" title="">82</a><span class="ltx_text" id="S4.T7.2.2.2.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.7.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.7.3.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.2.7.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.7.4.1" style="font-size:90%;">44.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.2.2.8.1" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.8.1.1" style="font-size:90%;">DeiT III </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T7.2.2.2.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.2.2.2.8.2" style="padding-top:1.35pt;padding-bottom:1.35pt;">
<span class="ltx_text" id="S4.T7.2.2.2.8.2.1" style="font-size:90%;">BEiTv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.2.2.2.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib83" title="">83</a><span class="ltx_text" id="S4.T7.2.2.2.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.2.2.8.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.8.3.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.2.2.8.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.2.2.8.4.1" style="font-size:90%;">45.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several multimodal large language models (MLLMs) on various benchmark datasets.  The models use different multi-resolution approaches for processing images, and the comparison highlights the impact of different strategies on the overall performance and efficiency.  The key metrics include several benchmark scores (MMBEN, MMVet, TextVQA, SQA, GQA, VQAv2, SEED, POPE) reflecting various aspects of multimodal understanding.  The table also shows the number of FLOPs (floating-point operations) used by the vision encoders of each model, indicating computational cost. All models were trained using the same LLaVA-1.5 training data for consistency.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Comparison with multi-resolution baselines on multimodal benchmarks. All models are trained with LLaVA-1.5 [24] training data. We report #FLOPs of the vision encoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.2.10.1">
<tr class="ltx_tr" id="S4.T7.2.10.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.2.10.1.1.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.10.1.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.2.10.1.1.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.10.1.1.2.1" style="font-size:90%;">Crop Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.10.1.1.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.10.1.1.3.1" style="font-size:90%;">#FLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.10.1.1.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.10.1.1.4.1" style="font-size:90%;">mIoU</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.10.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.2.10.1.2.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.2.1.1" style="font-size:90%;">ViT-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.2.10.1.2.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.2.2.1" style="font-size:90%;">640</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.10.1.2.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.2.3.1" style="font-size:90%;">159G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.10.1.2.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.2.4.1" style="font-size:90%;">51.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.10.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.10.1.3.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.3.1.1" style="font-size:90%;background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.2.10.1.3.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.3.2.1" style="font-size:90%;background-color:#F2F2F2;">896/448/336</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.10.1.3.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.3.3.1" style="font-size:90%;background-color:#F2F2F2;">118G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.10.1.3.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.3.4.1" style="font-size:90%;background-color:#F2F2F2;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.10.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.2.10.1.4.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.4.1.1" style="font-size:90%;">ViT-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.2.10.1.4.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.4.2.1" style="font-size:90%;">640</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.10.1.4.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.4.3.1" style="font-size:90%;">545G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.10.1.4.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.4.4.1" style="font-size:90%;">53.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.10.1.5" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.2.10.1.5.1" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.5.1.1" style="font-size:90%;background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.2.10.1.5.2" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.5.2.1" style="font-size:90%;background-color:#F2F2F2;">1120/448/336</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.10.1.5.3" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.5.3.1" style="font-size:90%;background-color:#F2F2F2;">456G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.10.1.5.4" style="padding-top:1.35pt;padding-bottom:1.35pt;"><span class="ltx_text" id="S4.T7.2.10.1.5.4.1" style="font-size:90%;background-color:#F2F2F2;">54.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table XII presents a comparison of the PIIP-LLaVA model's performance against other existing large multimodal language models (MLLMs) across various benchmark datasets.  The benchmarks evaluate different aspects of multimodal understanding, including visual perception, question answering, and visual reasoning.  The table includes the vision encoder used by each model, its input image resolution, the language model employed, the amount of training data used, and the performance scores achieved on each benchmark.  Note that the SQA-IMG test set contains images also present in the training data, thus affecting the result and average score for this specific benchmark; these are indicated in gray.
> <details>
> <summary>read the caption</summary>
> TABLE XII:  Comparison with existing MLLMs on multimodal benchmarks. “Data” denotes the data size of all training stages. *Images from SQA-IMG test set are observed in training, so we mark its result and Avg in gray.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.fig1.3.1">
<tr class="ltx_tr" id="S4.T7.fig1.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.fig1.3.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.fig1.3.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.fig1.3.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.fig1.3.1.1.2.1">Crop Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.fig1.3.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.fig1.3.1.1.3.1">mIoU</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.fig1.3.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Swin-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.fig1.3.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.fig1.3.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">48.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">ConvNeXt-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">49.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">RepLKNet-31B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">49.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">SLaK-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib84" title="">84</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">50.2</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">InternImage-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">50.2</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T7.fig1.3.1.7.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T7.fig1.3.1.7.2.1" style="background-color:#F2F2F2;">896/448/336</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.fig1.3.1.7.3.1" style="background-color:#F2F2F2;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.fig1.3.1.8.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Swin-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib65" title="">65</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.fig1.3.1.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">640</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.fig1.3.1.8.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">52.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">RepLKNet-31L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">640</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">52.4</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.10.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">ConvNeXt-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.10.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">640</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.10.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.2</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.11.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">ConvNeXt-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.11.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">640</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.11.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.6</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.12.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">InternImage-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.fig1.3.1.12.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">640</td>
<td class="ltx_td ltx_align_center" id="S4.T7.fig1.3.1.12.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.fig1.3.1.13" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.fig1.3.1.13.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T7.fig1.3.1.13.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.fig1.3.1.13.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T7.fig1.3.1.13.2.1" style="background-color:#F2F2F2;">1120/448/336</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.fig1.3.1.13.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.fig1.3.1.13.3.1" style="background-color:#F2F2F2;">54.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different design choices in the PIIP-LLaVA model on its performance in multimodal understanding tasks.  Specifically, it investigates the effects of varying the number of interactions between vision branches and the number of unfrozen modules during pretraining, while controlling computational costs by adjusting input resolution.  The results demonstrate the optimal configurations for maximizing performance in different multimodal tasks.
> <details>
> <summary>read the caption</summary>
> TABLE XIII: Ablation on multimodal understanding with CLIP-B, CLIP-L and Vicuna-7B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T9.fig1.5.1">
<tr class="ltx_tr" id="S4.T9.fig1.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.fig1.5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.fig1.5.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.fig1.5.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.fig1.5.1.1.2.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.fig1.5.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.fig1.5.1.1.3.1">#FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.fig1.5.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.fig1.5.1.1.4.1">Top-1 Acc</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.fig1.5.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">DeiT-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib2" title="">2</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">224</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">17.2G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">81.8</td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.fig1.5.1.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.3.1.1" style="background-color:#F2F2F2;">PIIP-TSB (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.3.2.1" style="background-color:#F2F2F2;">368/192/128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T9.fig1.5.1.3.3.1" style="background-color:#F2F2F2;">17.4G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.3.4.1" style="background-color:#F2F2F2;">82.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.fig1.5.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib4" title="">4</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">224</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">61.6G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.fig1.5.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">84.0</td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.fig1.5.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">ViT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.07783v1#bib.bib4" title="">4</a>]</cite> (our impl.)</td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">224</td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">61.6G</td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">85.2</td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.fig1.5.1.6.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.6.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.6.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.6.2.1" style="background-color:#F2F2F2;">320/160/96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.6.3.1" style="background-color:#F2F2F2;">39.0G</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.fig1.5.1.6.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T9.fig1.5.1.6.4.1" style="background-color:#F2F2F2;">85.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.fig1.5.1.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.fig1.5.1.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.7.1.1" style="background-color:#F2F2F2;">PIIP-SBL (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.fig1.5.1.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.7.2.1" style="background-color:#F2F2F2;">384/192/128</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.fig1.5.1.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T9.fig1.5.1.7.3.1" style="background-color:#F2F2F2;">61.2G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.fig1.5.1.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T9.fig1.5.1.7.4.1" style="background-color:#F2F2F2;">85.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different design choices within the image pyramid network architecture. It investigates the impact of three key components: the parameter-inverted design (PI), the traditional image pyramid approach (IP), and the cross-branch interaction mechanism (Inter.).  The table shows how variations in these components affect performance (measured by APb, APm, etc.) on the MS COCO dataset.  The multi-scale training strategy from reference [71] is also considered.  Different model configurations (e.g., using the same sized model for all branches or different sized models) and input resolutions are compared. The baseline (Fig. 1(a)) is a standard network without any multi-scale features, while others introduce image pyramids and/or parameter inversion and compare performance under similar computational budgets. This provides insights into which design choices are most effective for improving both accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> TABLE XIV: Ablation on image pyramid and parameter-inverted design. ‘PI’, ‘IP’ and ‘Inter.’ represent parameter-inverted, image pyramid and interactions. ‘MS’ means multi-scale training, following [71].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T9.2.2.2">
<tr class="ltx_tr" id="S4.T9.2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.2.2.2.2.3" style="padding-top:0.1pt;padding-bottom:0.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.2.2.2.3.1">Out Branch</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.1.1.1.1.1" style="padding-top:0.1pt;padding-bottom:0.1pt;"><math alttext="\rm AP^{b}" class="ltx_Math" display="inline" id="S4.T9.1.1.1.1.1.m1.1"><semantics id="S4.T9.1.1.1.1.1.m1.1a"><msup id="S4.T9.1.1.1.1.1.m1.1.1" xref="S4.T9.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T9.1.1.1.1.1.m1.1.1.2" xref="S4.T9.1.1.1.1.1.m1.1.1.2.cmml">AP</mi><mi id="S4.T9.1.1.1.1.1.m1.1.1.3" mathvariant="normal" xref="S4.T9.1.1.1.1.1.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T9.1.1.1.1.1.m1.1b"><apply id="S4.T9.1.1.1.1.1.m1.1.1.cmml" xref="S4.T9.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T9.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T9.1.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T9.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T9.1.1.1.1.1.m1.1.1.2">AP</ci><ci id="S4.T9.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T9.1.1.1.1.1.m1.1.1.3">b</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.1.1.1.1.1.m1.1c">\rm AP^{b}</annotation><annotation encoding="application/x-llamapun" id="S4.T9.1.1.1.1.1.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_b end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.2.2.2.2.2" style="padding-top:0.1pt;padding-bottom:0.1pt;"><math alttext="\rm AP^{m}" class="ltx_Math" display="inline" id="S4.T9.2.2.2.2.2.m1.1"><semantics id="S4.T9.2.2.2.2.2.m1.1a"><msup id="S4.T9.2.2.2.2.2.m1.1.1" xref="S4.T9.2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T9.2.2.2.2.2.m1.1.1.2" xref="S4.T9.2.2.2.2.2.m1.1.1.2.cmml">AP</mi><mi id="S4.T9.2.2.2.2.2.m1.1.1.3" mathvariant="normal" xref="S4.T9.2.2.2.2.2.m1.1.1.3.cmml">m</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T9.2.2.2.2.2.m1.1b"><apply id="S4.T9.2.2.2.2.2.m1.1.1.cmml" xref="S4.T9.2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T9.2.2.2.2.2.m1.1.1.1.cmml" xref="S4.T9.2.2.2.2.2.m1.1.1">superscript</csymbol><ci id="S4.T9.2.2.2.2.2.m1.1.1.2.cmml" xref="S4.T9.2.2.2.2.2.m1.1.1.2">AP</ci><ci id="S4.T9.2.2.2.2.2.m1.1.1.3.cmml" xref="S4.T9.2.2.2.2.2.m1.1.1.3">m</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.2.2.2.2.2.m1.1c">\rm AP^{m}</annotation><annotation encoding="application/x-llamapun" id="S4.T9.2.2.2.2.2.m1.1d">roman_AP start_POSTSUPERSCRIPT roman_m end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.2.2.2.3.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.2.2.3.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.2.2.3.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">37.0</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.2.2.2.4.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">S</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.4.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">44.7</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.4.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">39.1</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.2.2.2.5.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">T</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.5.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">45.6</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.5.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">40.6</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.2.2.2.6.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">B+S</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.6.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">45.4</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.6.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">39.8</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.2.2.2.7.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">B+T</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.7.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">46.3</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.7.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">41.1</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T9.2.2.2.8.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">S+T</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.8.2" style="padding-top:0.1pt;padding-bottom:0.1pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.8.3" style="padding-top:0.1pt;padding-bottom:0.1pt;">40.9</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.2.2.2.9.1" style="padding-top:0.1pt;padding-bottom:0.1pt;">B+S+T</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.2.2.9.2" style="padding-top:0.1pt;padding-bottom:0.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.2.2.9.2.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.2.2.9.3" style="padding-top:0.1pt;padding-bottom:0.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.2.2.9.3.1">41.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of a baseline model (ViTDet-L) with higher input resolution (1792) against the same model with lower resolution (1024) and the PIIP-TSBL model also with 1792 resolution.  It demonstrates the impact of increased resolution on performance and computational cost, highlighting the efficiency of the PIIP approach.
> <details>
> <summary>read the caption</summary>
> TABLE XV: Baseline with higher resolution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F7.sf1.2.1">
<tr class="ltx_tr" id="S4.F7.sf1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F7.sf1.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.1.1">Module</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf1.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.2.1">#Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf1.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.3.1">Dim</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf1.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.4.1">#Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F7.sf1.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.5.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf1.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.6.1">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf1.2.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf1.2.1.1.7.1">#FLOPs</span></td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.F7.sf1.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Branch 1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf1.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf1.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">640</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf1.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.F7.sf1.2.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">128</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf1.2.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">59.6M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf1.2.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">3.8G</td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf1.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Branch 2</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">320</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">256</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">15.1M</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">4.3G</td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Branch 3</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">160</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">512</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">4.0M</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">4.9G</td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf1.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">Interactions</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.F7.sf1.2.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">21.2M</td>
<td class="ltx_td ltx_align_center" id="S4.F7.sf1.2.1.5.7" style="padding-top:1pt;padding-bottom:1pt;">5.1G</td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.F7.sf1.2.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">Branch Merging</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf1.2.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf1.2.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf1.2.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.F7.sf1.2.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf1.2.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.3M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf1.2.1.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.2G</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the PIIP-TSB model (with resolution 1120/896/448) to analyze the impact of different attention mechanisms and varying numbers of cross-branch interactions on object detection performance.  It compares the performance using regular attention versus deformable attention, and shows how performance changes as the number of interactions increases from zero to twelve.  The metrics evaluated are AP (average precision) for various object sizes (box AP, small object AP, medium object AP, and large object AP), and FLOPs (floating-point operations), which reflects computational cost.
> <details>
> <summary>read the caption</summary>
> TABLE XVI: Ablation on attention implementation and number of interactions with PIIP-TSB 1120/896/448.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F7.sf2.2.1">
<tr class="ltx_tr" id="S4.F7.sf2.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.F7.sf2.2.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf2.2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf2.2.1.1.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf2.2.1.1.2.1">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf2.2.1.1.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf2.2.1.1.3.1">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf2.2.1.1.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf2.2.1.1.4.1">#FLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F7.sf2.2.1.1.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F7.sf2.2.1.1.5.1">Top-1 Acc</span></td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.F7.sf2.2.1.2.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">ViT-B (our impl.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf2.2.1.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">224</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf2.2.1.2.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf2.2.1.2.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">17.5G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F7.sf2.2.1.2.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">82.0</td>
</tr>
<tr class="ltx_tr" id="S4.F7.sf2.2.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.F7.sf2.2.1.3.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S4.F7.sf2.2.1.3.1.1" style="background-color:#F2F2F2;">PIIP-B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf2.2.1.3.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S4.F7.sf2.2.1.3.2.1" style="background-color:#F2F2F2;">512/256/128</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf2.2.1.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S4.F7.sf2.2.1.3.3.1" style="background-color:#F2F2F2;">100M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf2.2.1.3.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S4.F7.sf2.2.1.3.4.1" style="background-color:#F2F2F2;">18.4G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F7.sf2.2.1.3.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S4.F7.sf2.2.1.3.5.1" style="background-color:#F2F2F2;">82.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on different cross-branch interaction strategies within the PIIP-TSB model. It shows the impact of various interaction designs on the model's performance in terms of APb and APm metrics, while maintaining a consistent resolution of 1120/896/448.  The different types represent different patterns of information flow between branches, such as unidirectional from higher to lower resolution, and bidirectional exchange.  The FLOPS (floating point operations) are also provided to assess computational cost.
> <details>
> <summary>read the caption</summary>
> TABLE XVII: Ablation on interaction directions with PIIP-TSB under resolution 1120/896/448.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.07783/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.07783/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}