---
title: "3CAD: A Large-Scale Real-World 3C Product Dataset for Unsupervised Anomaly"
summary: "3CAD: A new large-scale, real-world dataset with diverse 3C product anomalies boosts unsupervised anomaly detection, enabling superior algorithm development via a novel Coarse-to-Fine framework."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Shanghai University",]
showSummary: true
date: 2025-02-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05761 {{< /keyword >}}
{{< keyword icon="writer" >}} Enquan Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05761" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05761" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05761/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current industrial anomaly detection datasets suffer from limitations like insufficient defect samples, unrealistic defect types and lack of real-world scenarios, hindering the development of highly accurate detection algorithms.  This paper introduces a solution by creating 3CAD, a large-scale, real-world dataset of 3C products with diverse anomalies.  The images in 3CAD have pixel-level anomaly labels and contain multiple anomaly types per image. 

To handle the challenges posed by 3CAD, this paper also proposes a new anomaly detection framework called CFRG (Coarse-to-Fine detection paradigm with Recovery Guidance). CFRG uses a coarse-to-fine approach, leveraging heterogeneous distillation for coarse localization followed by fine localization via segmentation and a recovery network to better capture normal patterns. Experiments on 3CAD and benchmark datasets show that CFRG is competitive and provides a significant improvement compared to state-of-the-art methods.  The availability of this challenging dataset will foster future research in unsupervised anomaly detection and encourage more robust solutions. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The 3CAD dataset is a significant contribution, addressing limitations of existing datasets by providing real-world, high-resolution images of 3C products with diverse anomalies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed CFRG framework (Coarse-to-Fine detection with Recovery Guidance) improves unsupervised anomaly detection accuracy and localization, particularly for small and subtle defects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The results demonstrate CFRG's strong performance on both 3CAD and other benchmark datasets, highlighting the dataset's value as a challenging benchmark and the framework's effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in anomaly detection because **it introduces a new, large-scale, real-world dataset (3CAD) specifically for 3C product quality control.**  This addresses the limitations of existing datasets which often lack real-world defects, hindering the development of robust and practical algorithms.  Further, **the proposed CFRG framework offers a novel approach to unsupervised anomaly detection**, improving accuracy and localization. This work thus **opens new avenues for algorithm development and benchmark testing**, advancing the field considerably.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05761/x1.png)

> 🔼 This figure illustrates the difference between the traditional reverse distillation method for anomaly detection and the novel approach proposed in the paper. The traditional method (left panel) involves distilling knowledge from a teacher network trained on abnormal data to a student network for anomaly detection. In contrast, the proposed method (right panel) uses a heterogeneous distillation paradigm with recovery guidance. This new method involves using both normal and abnormal samples to train teacher networks with different architectures. These teachers extract diverse features that are then combined in a student network, improving the localization of defects. Furthermore, a recovery network is used to restore the normal features from abnormal ones which helps capture normal patterns and guide the detection process. This novel approach is especially useful for detecting small defects which are commonly missed by traditional methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of previous anomaly detection distillation paradigm with our paradigm. First row: Left: reverse distillation; Right: our proposed paradigm.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx3.T1.32">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx3.T1.32.33.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="Sx3.T1.32.33.1.1">Category</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.2">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.2.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.2.1.1.1">Training</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.2.1.2.1">Images</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.3">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.3.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.3.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.3.1.2.1">Images(all)</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.4">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.4.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.4.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.4.1.2.1">Images(good)</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.5">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.5.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.5.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.5.1.2.1">Images(defect)</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.6">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.6.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.6.1.1.1">Defect</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.6.1.2.1">types</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.7">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.7.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.7.1.1.1">Image</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.7.1.2.1">Height</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.8">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.8.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.8.1.1.1">Image</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.8.1.2.1">Width</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx3.T1.32.33.1.9">
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.9.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.9.1.1.1">NE</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.9.1.2.1">/ TE</td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx3.T1.4.4.5">ACC</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.6">784</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.7">1446</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.8">369</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.9">1077</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.10">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.1.1">288<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.1.1.1.m1.1"><semantics id="Sx3.T1.1.1.1.m1.1a"><mo id="Sx3.T1.1.1.1.m1.1.1" xref="Sx3.T1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.1.1.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.1.1.1.m1.1.1.cmml" xref="Sx3.T1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.1.1.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.2.2.2">288<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.2.2.2.m1.1"><semantics id="Sx3.T1.2.2.2.m1.1a"><mo id="Sx3.T1.2.2.2.m1.1.1" xref="Sx3.T1.2.2.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.2.2.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.2.2.2.m1.1.1.cmml" xref="Sx3.T1.2.2.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.2.2.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.2.2.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.4.4.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.3.3.3.m1.1"><semantics id="Sx3.T1.3.3.3.m1.1a"><mo id="Sx3.T1.3.3.3.m1.1.1" xref="Sx3.T1.3.3.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.3.3.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.3.3.3.m1.1.1.cmml" xref="Sx3.T1.3.3.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.3.3.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.3.3.3.m1.1d">∼</annotation></semantics></math>6/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.4.4.4.m2.1"><semantics id="Sx3.T1.4.4.4.m2.1a"><mo id="Sx3.T1.4.4.4.m2.1.1" xref="Sx3.T1.4.4.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.4.4.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.4.4.4.m2.1.1.cmml" xref="Sx3.T1.4.4.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.4.4.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.4.4.4.m2.1d">∼</annotation></semantics></math>1</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.8.8.5">AI</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.6">2096</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.7">2047</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.8">913</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.9">1134</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.10">3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.5.5.1">760<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.5.5.1.m1.1"><semantics id="Sx3.T1.5.5.1.m1.1a"><mo id="Sx3.T1.5.5.1.m1.1.1" xref="Sx3.T1.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.5.5.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.5.5.1.m1.1.1.cmml" xref="Sx3.T1.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.5.5.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.6.6.2">600<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.6.6.2.m1.1"><semantics id="Sx3.T1.6.6.2.m1.1a"><mo id="Sx3.T1.6.6.2.m1.1.1" xref="Sx3.T1.6.6.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.6.6.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.6.6.2.m1.1.1.cmml" xref="Sx3.T1.6.6.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.6.6.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.6.6.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.8.8.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.7.7.3.m1.1"><semantics id="Sx3.T1.7.7.3.m1.1a"><mo id="Sx3.T1.7.7.3.m1.1.1" xref="Sx3.T1.7.7.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.7.7.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.7.7.3.m1.1.1.cmml" xref="Sx3.T1.7.7.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.7.7.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.7.7.3.m1.1d">∼</annotation></semantics></math>10/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.8.8.4.m2.1"><semantics id="Sx3.T1.8.8.4.m2.1a"><mo id="Sx3.T1.8.8.4.m2.1.1" xref="Sx3.T1.8.8.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.8.8.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.8.8.4.m2.1.1.cmml" xref="Sx3.T1.8.8.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.8.8.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.8.8.4.m2.1d">∼</annotation></semantics></math>2</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.12.12.5">AMF</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.6">1548</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.7">1479</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.8">731</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.9">748</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.10">5</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.9.9.1">540<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.9.9.1.m1.1"><semantics id="Sx3.T1.9.9.1.m1.1a"><mo id="Sx3.T1.9.9.1.m1.1.1" xref="Sx3.T1.9.9.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.9.9.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.9.9.1.m1.1.1.cmml" xref="Sx3.T1.9.9.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.9.9.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.9.9.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.10.10.2">800<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.10.10.2.m1.1"><semantics id="Sx3.T1.10.10.2.m1.1a"><mo id="Sx3.T1.10.10.2.m1.1.1" xref="Sx3.T1.10.10.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.10.10.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.10.10.2.m1.1.1.cmml" xref="Sx3.T1.10.10.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.10.10.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.10.10.2.m1.1d">∼</annotation></semantics></math>950</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.12.12.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.11.11.3.m1.1"><semantics id="Sx3.T1.11.11.3.m1.1a"><mo id="Sx3.T1.11.11.3.m1.1.1" xref="Sx3.T1.11.11.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.11.11.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.11.11.3.m1.1.1.cmml" xref="Sx3.T1.11.11.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.11.11.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.11.11.3.m1.1d">∼</annotation></semantics></math>9/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.12.12.4.m2.1"><semantics id="Sx3.T1.12.12.4.m2.1a"><mo id="Sx3.T1.12.12.4.m2.1.1" xref="Sx3.T1.12.12.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.12.12.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.12.12.4.m2.1.1.cmml" xref="Sx3.T1.12.12.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.12.12.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.12.12.4.m2.1d">∼</annotation></semantics></math>4</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.16.16.5">ANMF</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.6">1072</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.7">1406</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.8">670</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.9">736</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.10">6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.13.13.1">400<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.13.13.1.m1.1"><semantics id="Sx3.T1.13.13.1.m1.1a"><mo id="Sx3.T1.13.13.1.m1.1.1" xref="Sx3.T1.13.13.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.13.13.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.13.13.1.m1.1.1.cmml" xref="Sx3.T1.13.13.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.13.13.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.13.13.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.14.14.2">430<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.14.14.2.m1.1"><semantics id="Sx3.T1.14.14.2.m1.1a"><mo id="Sx3.T1.14.14.2.m1.1.1" xref="Sx3.T1.14.14.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.14.14.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.14.14.2.m1.1.1.cmml" xref="Sx3.T1.14.14.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.14.14.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.14.14.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.16.16.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.15.15.3.m1.1"><semantics id="Sx3.T1.15.15.3.m1.1a"><mo id="Sx3.T1.15.15.3.m1.1.1" xref="Sx3.T1.15.15.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.15.15.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.15.15.3.m1.1.1.cmml" xref="Sx3.T1.15.15.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.15.15.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.15.15.3.m1.1d">∼</annotation></semantics></math>6/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.16.16.4.m2.1"><semantics id="Sx3.T1.16.16.4.m2.1a"><mo id="Sx3.T1.16.16.4.m2.1.1" xref="Sx3.T1.16.16.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.16.16.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.16.16.4.m2.1.1.cmml" xref="Sx3.T1.16.16.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.16.16.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.16.16.4.m2.1d">∼</annotation></semantics></math>2</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.20.20.5">ANI</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.6">2233</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.7">4936</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.8">999</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.9">3937</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.10">4</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.17.17.1">420<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.17.17.1.m1.1"><semantics id="Sx3.T1.17.17.1.m1.1a"><mo id="Sx3.T1.17.17.1.m1.1.1" xref="Sx3.T1.17.17.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.17.17.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.17.17.1.m1.1.1.cmml" xref="Sx3.T1.17.17.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.17.17.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.17.17.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.18.18.2">580<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.18.18.2.m1.1"><semantics id="Sx3.T1.18.18.2.m1.1a"><mo id="Sx3.T1.18.18.2.m1.1.1" xref="Sx3.T1.18.18.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.18.18.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.18.18.2.m1.1.1.cmml" xref="Sx3.T1.18.18.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.18.18.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.18.18.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.20.20.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.19.19.3.m1.1"><semantics id="Sx3.T1.19.19.3.m1.1a"><mo id="Sx3.T1.19.19.3.m1.1.1" xref="Sx3.T1.19.19.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.19.19.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.19.19.3.m1.1.1.cmml" xref="Sx3.T1.19.19.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.19.19.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.19.19.3.m1.1d">∼</annotation></semantics></math>23/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.20.20.4.m2.1"><semantics id="Sx3.T1.20.20.4.m2.1a"><mo id="Sx3.T1.20.20.4.m2.1.1" xref="Sx3.T1.20.20.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.20.20.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.20.20.4.m2.1.1.cmml" xref="Sx3.T1.20.20.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.20.20.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.20.20.4.m2.1d">∼</annotation></semantics></math>2</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.24.24.5">AP</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.6">1698</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.7">3161</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.8">911</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.9">2250</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.10">14</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.21.21.1">430<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.21.21.1.m1.1"><semantics id="Sx3.T1.21.21.1.m1.1a"><mo id="Sx3.T1.21.21.1.m1.1.1" xref="Sx3.T1.21.21.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.21.21.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.21.21.1.m1.1.1.cmml" xref="Sx3.T1.21.21.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.21.21.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.21.21.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.22.22.2">409<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.22.22.2.m1.1"><semantics id="Sx3.T1.22.22.2.m1.1a"><mo id="Sx3.T1.22.22.2.m1.1.1" xref="Sx3.T1.22.22.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.22.22.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.22.22.2.m1.1.1.cmml" xref="Sx3.T1.22.22.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.22.22.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.22.22.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.24.24.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.23.23.3.m1.1"><semantics id="Sx3.T1.23.23.3.m1.1a"><mo id="Sx3.T1.23.23.3.m1.1.1" xref="Sx3.T1.23.23.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.23.23.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.23.23.3.m1.1.1.cmml" xref="Sx3.T1.23.23.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.23.23.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.23.23.3.m1.1d">∼</annotation></semantics></math>12/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.24.24.4.m2.1"><semantics id="Sx3.T1.24.24.4.m2.1a"><mo id="Sx3.T1.24.24.4.m2.1.1" xref="Sx3.T1.24.24.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.24.24.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.24.24.4.m2.1.1.cmml" xref="Sx3.T1.24.24.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.24.24.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.24.24.4.m2.1d">∼</annotation></semantics></math>3</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.28.28.5">CS</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.6">409</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.7">959</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.8">196</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.9">763</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.10">1</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.25.25.1">1024<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.25.25.1.m1.1"><semantics id="Sx3.T1.25.25.1.m1.1a"><mo id="Sx3.T1.25.25.1.m1.1.1" xref="Sx3.T1.25.25.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.25.25.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.25.25.1.m1.1.1.cmml" xref="Sx3.T1.25.25.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.25.25.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.25.25.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.26.26.2">1024<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.26.26.2.m1.1"><semantics id="Sx3.T1.26.26.2.m1.1a"><mo id="Sx3.T1.26.26.2.m1.1.1" xref="Sx3.T1.26.26.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.26.26.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.26.26.2.m1.1.1.cmml" xref="Sx3.T1.26.26.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.26.26.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.26.26.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.28.28.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.27.27.3.m1.1"><semantics id="Sx3.T1.27.27.3.m1.1a"><mo id="Sx3.T1.27.27.3.m1.1.1" xref="Sx3.T1.27.27.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.27.27.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.27.27.3.m1.1.1.cmml" xref="Sx3.T1.27.27.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.27.27.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.27.27.3.m1.1d">∼</annotation></semantics></math>9/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.28.28.4.m2.1"><semantics id="Sx3.T1.28.28.4.m2.1a"><mo id="Sx3.T1.28.28.4.m2.1.1" xref="Sx3.T1.28.28.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.28.28.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.28.28.4.m2.1.1.cmml" xref="Sx3.T1.28.28.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.28.28.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.28.28.4.m2.1d">∼</annotation></semantics></math>1</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx3.T1.32.32.5">IS</th>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.6">653</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.7">1112</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.8">295</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.9">817</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.10">4</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.29.29.1">1024<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.29.29.1.m1.1"><semantics id="Sx3.T1.29.29.1.m1.1a"><mo id="Sx3.T1.29.29.1.m1.1.1" xref="Sx3.T1.29.29.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.29.29.1.m1.1b"><csymbol cd="latexml" id="Sx3.T1.29.29.1.m1.1.1.cmml" xref="Sx3.T1.29.29.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.29.29.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.29.29.1.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.30.30.2">1024<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.30.30.2.m1.1"><semantics id="Sx3.T1.30.30.2.m1.1a"><mo id="Sx3.T1.30.30.2.m1.1.1" xref="Sx3.T1.30.30.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.30.30.2.m1.1b"><csymbol cd="latexml" id="Sx3.T1.30.30.2.m1.1.1.cmml" xref="Sx3.T1.30.30.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.30.30.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.30.30.2.m1.1d">∼</annotation></semantics></math>1024</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.32.32.4">1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.31.31.3.m1.1"><semantics id="Sx3.T1.31.31.3.m1.1a"><mo id="Sx3.T1.31.31.3.m1.1.1" xref="Sx3.T1.31.31.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.31.31.3.m1.1b"><csymbol cd="latexml" id="Sx3.T1.31.31.3.m1.1.1.cmml" xref="Sx3.T1.31.31.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.31.31.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.31.31.3.m1.1d">∼</annotation></semantics></math>12/1<math alttext="\sim" class="ltx_Math" display="inline" id="Sx3.T1.32.32.4.m2.1"><semantics id="Sx3.T1.32.32.4.m2.1a"><mo id="Sx3.T1.32.32.4.m2.1.1" xref="Sx3.T1.32.32.4.m2.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="Sx3.T1.32.32.4.m2.1b"><csymbol cd="latexml" id="Sx3.T1.32.32.4.m2.1.1.cmml" xref="Sx3.T1.32.32.4.m2.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T1.32.32.4.m2.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="Sx3.T1.32.32.4.m2.1d">∼</annotation></semantics></math>2</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.34.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="Sx3.T1.32.34.1.1">All</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.2">10493</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.3">16546</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.4">5084</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.5">11462</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.6">47</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T1.32.34.1.9">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a statistical summary of the 3CAD dataset, a newly introduced large-scale dataset for unsupervised anomaly detection.  It details the number of images, categorized by product type, available for both training and testing.  For each product category, the table shows the count of normal and defective images.  Critically, the final columns ('NE' and 'TE') provide information about the complexity of defects within each defective image.  'NE' represents the number of anomalous regions (separate areas with defects) present in an image, while 'TE' indicates the number of different types of anomalies present in a single defective image. This helps quantify the difficulty of the anomaly detection task, showcasing the potential of 3CAD for benchmarking algorithm performance.
> <details>
> <summary>read the caption</summary>
> Table 1:  Statistical overview of the 3CAD dataset. The NE and TE in the last column indicate the number of anomalous regions and the number of anomalous types present in each defective image, respectively.
> </details>





### In-depth insights


#### 3C Anomaly Dataset
The creation of a new large-scale, real-world 3C product anomaly detection dataset is a significant contribution.  **The 3C Anomaly Dataset addresses limitations of existing datasets**, such as limited defect types and the artificial nature of anomalies.  The dataset's **real-world relevance**, derived from actual production lines, enhances its value for research.  **Its size (27,039 images) and diversity of defects (eight types, multiple anomalies per image)** provide a robust benchmark for evaluating anomaly detection algorithms.  The inclusion of varied defect sizes and morphologies adds complexity, making it a challenging yet valuable resource for advancing the field of unsupervised anomaly detection in industrial settings.  **Researchers can leverage this dataset to develop and test more robust and accurate methods for identifying subtle defects**, thus improving quality control and efficiency in 3C manufacturing.

#### CFRG Framework
The Coarse-to-Fine with Recovery Guidance (CFRG) framework represents a novel approach to unsupervised anomaly detection, particularly designed to address the challenges posed by datasets like 3CAD which features small and complex defects.  **Its core strength lies in combining heterogeneous distillation for coarse localization with a recovery network and segmentation for fine-grained localization.** The heterogeneous distillation leverages the strengths of different teacher-student network architectures to capture diverse features, improving the identification of subtle anomalies.  **The recovery network is crucial, as it focuses on restoring normal features from abnormal ones**, helping the model better understand normal patterns and reducing bias associated with the use of synthetically generated anomalies for training.  Finally, the segmentation model refines localization, using the combined insights from distillation and recovery to achieve pixel-level accuracy. This multi-stage approach is **particularly well-suited for complex real-world industrial datasets**, demonstrating a significant advance over methods that rely solely on a single type of anomaly detection technique. The framework's performance highlights the effectiveness of this integrated strategy in dealing with the nuanced nature of real-world anomalies.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper would ideally present a rigorous comparison of the proposed method against existing state-of-the-art techniques.  This would involve selecting relevant and established benchmark datasets, employing standardized evaluation metrics, and clearly presenting the quantitative results.  **Careful consideration of the chosen metrics is crucial**, as different metrics might highlight different aspects of the method's performance. For example, precision, recall, F1-score, and AUROC provide diverse perspectives on the model's accuracy and robustness.  Beyond simple numerical comparisons, a strong 'Benchmark Results' section would **include insightful analysis** of the results, explaining any discrepancies or unexpected findings.  It should clearly articulate the **strengths and weaknesses** of the proposed approach compared to existing methods, perhaps in terms of computational cost, robustness to noise, or generalization ability.  Visualizations, such as graphs or tables, can be powerful tools to effectively communicate complex results. Finally, discussing the limitations of the benchmark datasets and suggesting avenues for future research based on the results strengthens the overall impact of this section.

#### Ablation Studies
The Ablation Studies section of a research paper is crucial for understanding the contribution of individual components within a proposed model or system.  In this context, it would systematically evaluate the impact of removing or modifying specific parts of the proposed anomaly detection framework. This might include removing the recovery branch to assess its contribution to accurate localization, especially for subtle defects. Similarly, disabling the segmentation module would reveal its role in achieving fine-grained localization.  **Analyzing the results of these ablation experiments provides valuable insights into the design choices and their effectiveness.**  By comparing the performance metrics (like AUROC, P-PRO, AP) with and without these components, researchers can quantitatively demonstrate the importance of each element in achieving the overall performance.  **Furthermore, a study on different distillation paradigms, such as evaluating the effect of enforcing a feature distance between teacher and student networks, can further illuminate critical design decisions.**  Ultimately, the goal is to provide a clear, data-driven justification for the model architecture and parameter settings selected, contributing to the overall credibility and robustness of the research.

#### Future Work
Future research directions stemming from this 3CAD dataset and CFRG framework could explore several promising avenues.  **Improving the CFRG model's robustness** to various lighting conditions and complex defect morphologies is crucial.  This could involve incorporating more sophisticated feature extraction techniques or exploring advanced attention mechanisms.  Another key area is **expanding the dataset's scope**, including more diverse 3C product types and a broader range of defect categories, improving the model's generalizability.  Furthermore, research on **more efficient anomaly detection methods** is warranted, focusing on reducing computational costs and memory footprint, particularly crucial for real-time applications in manufacturing settings.  Finally, investigating **the integration of CFRG with other anomaly detection techniques** or developing hybrid approaches could lead to further performance improvements.  Specifically, exploring how the recovery guidance component of CFRG can be applied to other techniques is promising.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05761/x2.png)

> 🔼 This figure showcases sample images from the 3CAD dataset. The top row displays examples of normal, defect-free 3C product parts.  Each image represents a different product category from the dataset (e.g., aluminum camera cover, aluminum ipad, etc.). The bottom row shows corresponding images of the same products but with various types of manufacturing defects. This visual comparison highlights the differences between normal and anomalous samples within the 3CAD dataset, emphasizing the diversity of defects and their visual characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 2: 3CAD dataset samples. The first row shows normal images, while the second row displays defective images.
> </details>



![](https://arxiv.org/html/2502.05761/x4.png)

> 🔼 Figure 3 presents a statistical analysis of the 3CAD dataset, focusing on the characteristics of the defective regions.  Subfigure (a) shows the distribution of the area ratio for defects, representing the proportion of the image occupied by a defect.  This indicates the prevalence of small, subtle defects within the dataset.  Subfigure (b) shows the aspect ratio distribution of the minimum bounding rectangles that encompass the defect areas. This aspect ratio indicates the shape of defects (whether elongated or more square) and gives insight into the diversity of shapes that exist within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistics of the proposed 3CAD dataset: a) Defect area ratio. b) Aspect ratio of the minimum bounding rectangle for the defect area.
> </details>



![](https://arxiv.org/html/2502.05761/x5.png)

> 🔼 The figure illustrates the Coarse-to-Fine detection paradigm with Recovery Guidance (CFRG) framework for unsupervised anomaly detection.  CFRG consists of two main stages: 1) Coarse Localization and 2) Fine Localization. The first stage uses a teacher-student network approach where both normal (x<sub>n</sub>) and anomaly (x<sub>a</sub>) images are fed into the teacher network, while only the anomaly image is fed into the student network.  The distillation loss is calculated between the teacher and student networks to achieve coarse localization of the anomaly.  The second stage utilizes a recovery branch which learns to reconstruct normal features from anomalous ones. The output of this recovery branch, combined with the teacher's weighted features from the first stage, is then fed into a segmentation network to achieve a refined, pixel-level localization (final anomaly map). The output of the recovery branch during testing combines with the output of the segmentation network to achieve the final anomaly map.
> <details>
> <summary>read the caption</summary>
> Figure 4: The proposed CFRG framework comprises two components: 1) a distilled localization network and 2) a refined segmentation network with restored hints. During training, in the first stage, xasubscript𝑥𝑎x_{a}italic_x start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT and xnsubscript𝑥𝑛x_{n}italic_x start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT are input into the teacher network, while xasubscript𝑥𝑎x_{a}italic_x start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT is input into the student network, and the distillation loss between the teacher and the student is calculated. In the second stage, the teacher’s features are weighted using the first-stage localization weights and the recovery branch’s hint weights, then input into the segmentation network. During testing, the recovery branch generates the localization result from the input and {Fir}i=1Ksuperscriptsubscriptsuperscriptsubscript𝐹𝑖𝑟𝑖1𝐾\{F_{i}^{r}\}_{i=1}^{K}{ italic_F start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_r end_POSTSUPERSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_K end_POSTSUPERSCRIPT, which is then added to the output So⁢u⁢tsubscript𝑆𝑜𝑢𝑡S_{out}italic_S start_POSTSUBSCRIPT italic_o italic_u italic_t end_POSTSUBSCRIPT of the segmentation network to obtain the final anomaly map.
> </details>



![](https://arxiv.org/html/2502.05761/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of anomaly detection results on the 3CAD dataset. It shows several examples of images with anomalies, highlighting the performance of different methods.  The ground truth (GT) shows the actual anomaly locations in each image, whereas the results from the proposed method (Ours), CRAD, and RD illustrate the predicted anomaly locations. This visualization emphasizes the strength of the proposed method in localizing small and complex anomalies more accurately compared to CRAD and RD.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative illustration on 3CAD dataset.
> </details>



![](https://arxiv.org/html/2502.05761/x7.png)

> 🔼 Figure 6 presents a visualization of the 3CAD dataset, focusing on the normal images of the different products. Each column represents a unique type of 3C product included in the dataset (e.g., aluminum camera cover, aluminum iPad, etc.). Within each column, multiple rows showcase different industrial images of the same product. This allows for a visual inspection of the normal appearance variations within each product category, highlighting the natural variability present even in defect-free items.
> <details>
> <summary>read the caption</summary>
> Figure 6: Normal visualization in 3CAD: Each column represents a product, and each row displays a different industrial image of that same product.
> </details>



![](https://arxiv.org/html/2502.05761/x8.png)

> 🔼 Figure 7 visualizes different types of anomalies present in the 3CAD dataset. Each row showcases a specific anomaly type (bump, scratch, bruise, upper line, scrape, outer warping, inner warping, and discoloration) across various products and locations within those products.  This demonstrates the diversity of anomalies captured in the dataset, showing variations in appearance and location even within the same anomaly category.
> <details>
> <summary>read the caption</summary>
> Figure 7: Anomaly visualization in 3CAD: Each row represents a different anomaly category across various products and locations. From top to bottom, the categories are bump, scratch, bruise, upper line, scrape, outer warping, inner warping, and discoloration, respectively.
> </details>



![](https://arxiv.org/html/2502.05761/x9.png)

> 🔼 Figure 8 presents a visual representation of various anomaly types within the 3CAD dataset. Each row showcases a specific anomaly category, with multiple examples across different products and locations. The anomalies are: uneven surface, deformation, iron core airflow issues, whitening, black spots, watermarks, overwashing, and dirt. This figure highlights the dataset's diversity in terms of defect types, their appearance on various products, and their varied locations within the products.
> <details>
> <summary>read the caption</summary>
> Figure 8: Anomaly visualization in 3CAD: Each row represents a different anomaly category across various products and locations. From top to bottom, the categories are uneven, deformation, iron core airflow, whitening, black spots, watermarks, overwashing, dirt, respectively.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.2.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.2.1.1.1">Training</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.2.1.2.1">Images</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 compares the 3CAD dataset to other popular industrial anomaly detection datasets, highlighting key differences in characteristics such as data source (real-world vs. synthetic), the presence of multiple defect instances in a single image (MDI), the presence of multiple defect types in one image (MDT), and the overall dataset size.  The table uses checkmarks (✓) to indicate satisfaction of a given characteristic for each dataset and 'X' to indicate that the characteristic is not present.
> <details>
> <summary>read the caption</summary>
> Table 2:  Comparison with the current popular IAD datasets. ✓: Satisfied. ✗: Not satisfied. MDI: Multiple Defect Instances in One Image; MDT: Multiple Defect Types in One Image.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.3.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.3.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.3.1.2.1">Images(all)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various popular anomaly detection algorithms (including the proposed CFRG method) on the 3CAD dataset.  The performance of each algorithm is evaluated for eight different product categories within 3CAD. The metrics used are P-AUROC (pixel-level Area Under the Receiver Operating Characteristic curve) and AP (Average Precision), both of which are commonly used to assess the accuracy of object detection and localization.  Higher values for both metrics indicate better performance, demonstrating improved ability of an algorithm to correctly identify and locate anomalies in the images.
> <details>
> <summary>read the caption</summary>
> Table 3:  Performance of popular IAD algorithms and our paradigm on 3CAD. We report the P-AUROC (%) and AP (%) metrics for each class, along with the average across all classes. Higher values indicate better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.4.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.4.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.4.1.2.1">Images(good)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive comparison of various popular unsupervised anomaly detection algorithms (including the proposed CFRG method) on the 3CAD dataset.  For each of the eight product categories within 3CAD, the table shows the Image-level Area Under the Receiver Operating Characteristic curve (I-AUROC) and Pixel-wise Precision-Recall curve (P-PRO) metrics.  These metrics assess the algorithm's ability to accurately detect anomalies at both the image and pixel levels, respectively. The average performance across all eight categories is also provided. Higher I-AUROC and P-PRO values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 4:  Performance of popular IAD algorithms and our paradigm on 3CAD. We report the I-AUROC (%) and P-PRO (%) metrics for each class, along with the average across all classes. Higher values indicate better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.5.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.5.1.1.1">Test</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.5.1.2.1">Images(defect)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several popular anomaly detection algorithms on the MVTec-AD dataset.  The performance is averaged across all categories within the dataset.  The metrics used for comparison include Area Under the Receiver Operating Characteristic Curve (AUROC), both at the image level (I-AUROC) and pixel-level (P-AUROC), Average Precision (AP), and Pixel-wise Per-Region Overlap (P-PRO).  A dash (-) indicates that a specific metric was not reported in the original paper for that algorithm.
> <details>
> <summary>read the caption</summary>
> Table 5:  Performance comparison of popular IAD algorithms on MVTec-AD, averaged across all categories. (-) indicates unavailable metrics in the official paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.6.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.6.1.1.1">Defect</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.6.1.2.1">types</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies performed on the Coarse-to-Fine detection paradigm with Recovery Guidance (CFRG) framework.  It shows the impact of removing key components of the CFRG model (recovery branch, segmentation module) and altering the distillation paradigm on the model's performance. The performance is measured using four metrics: Area Under the Receiver Operating Characteristic curve (AUROC), Pixel-wise Per-Region Overlap (P-PRO), Average Precision (AP), all indicating the effectiveness of anomaly detection and localization.  The table allows for a quantitative analysis of the contribution of each component to the overall framework's performance.
> <details>
> <summary>read the caption</summary>
> Table 6:  Ablation studies of CFRG with AUROC, P-PRO, and AP metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.7.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.7.1.1.1">Image</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.7.1.2.1">Height</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a detailed performance evaluation of the proposed CFRG (Coarse-to-Fine detection paradigm with Recovery Guidance) method on the widely used MVTec AD dataset.  It shows the achieved metrics for each category within the dataset (bottle, cable, capsule, hazelnut, metal nut, pill, screw, toothbrush, transistor, zipper), including P-AUROC (Pixel-level Area Under the Receiver Operating Characteristic curve), I-AUROC (Image-level AUROC), P-PRO (Pixel-wise Per-Region Overlap), and AP (Average Precision). These comprehensive results demonstrate the effectiveness and robustness of the CFRG method across diverse object categories, thus highlighting its generalizability and strong performance even on benchmarks beyond the main 3CAD dataset.
> <details>
> <summary>read the caption</summary>
> Table 7:  The detailed metrics of our method on the MVTec AD dataset demonstrate that CFRG also delivers strong performance on widely used datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.8.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.8.1.1.1">Image</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.8.1.2.1">Width</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a detailed performance evaluation of the CFRG method on the widely used MVTec AD dataset.  It provides a comprehensive breakdown of the method's effectiveness across various metrics including P-AUROC, I-AUROC, P-PRO, and AP, for both object and texture categories within the dataset. This allows for a thorough comparison of CFRG against other state-of-the-art anomaly detection methods and showcases its robustness and generalizability.
> <details>
> <summary>read the caption</summary>
> Table 8:  The detailed metrics of our method on the MVTec AD dataset demonstrate that CFRG also delivers strong performance on widely used datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx3.T1.32.33.1.9.1">
<tr class="ltx_tr" id="Sx3.T1.32.33.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.9.1.1.1">NE</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.32.33.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="Sx3.T1.32.33.1.9.1.2.1">/ TE</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of varying the loss weights (distillation loss, recovery loss, and segmentation loss) in the CFRG model. It shows how changes in the weight of each loss affect the model's performance across different metrics: Area Under the Receiver Operator Curve (AUROC), Pixel-wise Per-Region Overlap (P-PRO), and Average Precision (AP). By examining these results, the researchers aim to identify the optimal balance of loss weights for superior anomaly detection performance.
> <details>
> <summary>read the caption</summary>
> Table 9:  Studies of Loss weight with AUROC, P-PRO, and AP metrics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05761/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05761/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}