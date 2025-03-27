---
title: "DINeMo: Learning Neural Mesh Models with no 3D Annotations"
summary: "DINeMo: Learns 3D models with no 3D annotations, leveraging pseudo-correspondence from visual foundation models for enhanced pose estimation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Johns Hopkins University",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20220 {{< /keyword >}}
{{< keyword icon="writer" >}} Weijie Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20220" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20220" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20220/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for 3D scene understanding rely on neural mesh models, which require extensive 3D annotations for part-contrastive learning. This limits their scalability and applicability to a broader range of objects. To address this, DINeMo is introduced which trains a novel neural mesh model without any 3D annotations, but instead leverages the power of visual foundation models to learn object relationships.



DINeMo uses a bidirectional pseudo-correspondence generation method, combining local appearance features and global context information for enhanced performance. This approach allows DINeMo to outperform existing zero- and few-shot 3D pose estimation methods, narrowing the gap with fully-supervised approaches, while also scaling effectively with more unlabeled data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DINeMo leverages visual foundation models to train neural mesh models without 3D annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel bidirectional pseudo-correspondence generation method enhances 3D pose estimation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DINeMo demonstrates superior performance in zero- and few-shot 3D pose estimation, scaling effectively with more unlabeled data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is important because it presents a new method that **significantly reduces the reliance on expensive 3D annotations for training neural mesh models.** This enables the use of more abundant unlabeled data, paving the way for more scalable and robust 3D object understanding systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/teaser_dino.jpg)

> 🔼 This figure illustrates the architecture of DINeMo, a novel neural mesh model.  It highlights the model's training process, which leverages pseudo-correspondence generated from large visual foundation models instead of relying on traditional 3D annotations.  The diagram shows how pseudo-correspondences (positive and negative) are derived from the foundation models and used to train the neural mesh.  The use of pseudo-correspondence allows the model to learn from large unlabeled datasets, enabling efficient scaling and improved robustness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of DINeMo, a novel neural mesh model trained on pseudo-correspondence obtained from large visual foundation models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.8.8.9.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.8.8.9.1.1.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.8.8.9.1.2">L0</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.8.8.9.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.8.8.9.1.4">L1</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.8.8.9.1.5"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.8.8.9.1.6">L2</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.8.8.9.1.7"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.8.8.9.1.8">L3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1">Acc@<math alttext="{\frac{\pi}{6}}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mfrac id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.m1.1.1.2.cmml">π</mi><mn id="S4.T1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.m1.1.1.3.cmml">6</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"><divide id="S4.T1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"></divide><ci id="S4.T1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2">𝜋</ci><cn id="S4.T1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">{\frac{\pi}{6}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">divide start_ARG italic_π end_ARG start_ARG 6 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2">Acc@<math alttext="{\frac{\pi}{18}}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mfrac id="S4.T1.2.2.2.2.m1.1.1" xref="S4.T1.2.2.2.2.m1.1.1.cmml"><mi id="S4.T1.2.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.2.m1.1.1.2.cmml">π</mi><mn id="S4.T1.2.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.2.m1.1.1.3.cmml">18</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1"><divide id="S4.T1.2.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1"></divide><ci id="S4.T1.2.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.2.m1.1.1.2">𝜋</ci><cn id="S4.T1.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.2.2.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">{\frac{\pi}{18}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">divide start_ARG italic_π end_ARG start_ARG 18 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td" id="S4.T1.8.8.8.9"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.3">Acc@<math alttext="{\frac{\pi}{6}}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mfrac id="S4.T1.3.3.3.3.m1.1.1" xref="S4.T1.3.3.3.3.m1.1.1.cmml"><mi id="S4.T1.3.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.3.m1.1.1.2.cmml">π</mi><mn id="S4.T1.3.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.3.m1.1.1.3.cmml">6</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1"><divide id="S4.T1.3.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1"></divide><ci id="S4.T1.3.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.3.m1.1.1.2">𝜋</ci><cn id="S4.T1.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S4.T1.3.3.3.3.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">{\frac{\pi}{6}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">divide start_ARG italic_π end_ARG start_ARG 6 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.4">Acc@<math alttext="{\frac{\pi}{18}}" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mfrac id="S4.T1.4.4.4.4.m1.1.1" xref="S4.T1.4.4.4.4.m1.1.1.cmml"><mi id="S4.T1.4.4.4.4.m1.1.1.2" xref="S4.T1.4.4.4.4.m1.1.1.2.cmml">π</mi><mn id="S4.T1.4.4.4.4.m1.1.1.3" xref="S4.T1.4.4.4.4.m1.1.1.3.cmml">18</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1"><divide id="S4.T1.4.4.4.4.m1.1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1"></divide><ci id="S4.T1.4.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.4.m1.1.1.2">𝜋</ci><cn id="S4.T1.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="S4.T1.4.4.4.4.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">{\frac{\pi}{18}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">divide start_ARG italic_π end_ARG start_ARG 18 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td" id="S4.T1.8.8.8.10"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.5">Acc@<math alttext="{\frac{\pi}{6}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mfrac id="S4.T1.5.5.5.5.m1.1.1" xref="S4.T1.5.5.5.5.m1.1.1.cmml"><mi id="S4.T1.5.5.5.5.m1.1.1.2" xref="S4.T1.5.5.5.5.m1.1.1.2.cmml">π</mi><mn id="S4.T1.5.5.5.5.m1.1.1.3" xref="S4.T1.5.5.5.5.m1.1.1.3.cmml">6</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1"><divide id="S4.T1.5.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1"></divide><ci id="S4.T1.5.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.5.m1.1.1.2">𝜋</ci><cn id="S4.T1.5.5.5.5.m1.1.1.3.cmml" type="integer" xref="S4.T1.5.5.5.5.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">{\frac{\pi}{6}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">divide start_ARG italic_π end_ARG start_ARG 6 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.6">Acc@<math alttext="{\frac{\pi}{18}}" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mfrac id="S4.T1.6.6.6.6.m1.1.1" xref="S4.T1.6.6.6.6.m1.1.1.cmml"><mi id="S4.T1.6.6.6.6.m1.1.1.2" xref="S4.T1.6.6.6.6.m1.1.1.2.cmml">π</mi><mn id="S4.T1.6.6.6.6.m1.1.1.3" xref="S4.T1.6.6.6.6.m1.1.1.3.cmml">18</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><apply id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1"><divide id="S4.T1.6.6.6.6.m1.1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1"></divide><ci id="S4.T1.6.6.6.6.m1.1.1.2.cmml" xref="S4.T1.6.6.6.6.m1.1.1.2">𝜋</ci><cn id="S4.T1.6.6.6.6.m1.1.1.3.cmml" type="integer" xref="S4.T1.6.6.6.6.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">{\frac{\pi}{18}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">divide start_ARG italic_π end_ARG start_ARG 18 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td" id="S4.T1.8.8.8.11"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.7">Acc@<math alttext="{\frac{\pi}{6}}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mfrac id="S4.T1.7.7.7.7.m1.1.1" xref="S4.T1.7.7.7.7.m1.1.1.cmml"><mi id="S4.T1.7.7.7.7.m1.1.1.2" xref="S4.T1.7.7.7.7.m1.1.1.2.cmml">π</mi><mn id="S4.T1.7.7.7.7.m1.1.1.3" xref="S4.T1.7.7.7.7.m1.1.1.3.cmml">6</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><apply id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1"><divide id="S4.T1.7.7.7.7.m1.1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1"></divide><ci id="S4.T1.7.7.7.7.m1.1.1.2.cmml" xref="S4.T1.7.7.7.7.m1.1.1.2">𝜋</ci><cn id="S4.T1.7.7.7.7.m1.1.1.3.cmml" type="integer" xref="S4.T1.7.7.7.7.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">{\frac{\pi}{6}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">divide start_ARG italic_π end_ARG start_ARG 6 end_ARG</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.8">Acc@<math alttext="{\frac{\pi}{18}}" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mfrac id="S4.T1.8.8.8.8.m1.1.1" xref="S4.T1.8.8.8.8.m1.1.1.cmml"><mi id="S4.T1.8.8.8.8.m1.1.1.2" xref="S4.T1.8.8.8.8.m1.1.1.2.cmml">π</mi><mn id="S4.T1.8.8.8.8.m1.1.1.3" xref="S4.T1.8.8.8.8.m1.1.1.3.cmml">18</mn></mfrac><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m1.1b"><apply id="S4.T1.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1"><divide id="S4.T1.8.8.8.8.m1.1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1"></divide><ci id="S4.T1.8.8.8.8.m1.1.1.2.cmml" xref="S4.T1.8.8.8.8.m1.1.1.2">𝜋</ci><cn id="S4.T1.8.8.8.8.m1.1.1.3.cmml" type="integer" xref="S4.T1.8.8.8.8.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1c">{\frac{\pi}{18}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1d">divide start_ARG italic_π end_ARG start_ARG 18 end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.8.10.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.8.8.10.2.1.1">Fully-Supervised</span></th>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.8"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.10"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.11"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.10.2.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.11.3.1">Resnet50 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20220v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.2">95.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.3">63.5</td>
<td class="ltx_td" id="S4.T1.8.8.11.3.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.5">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.6">40.7</td>
<td class="ltx_td" id="S4.T1.8.8.11.3.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.8">57.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.9">21.4</td>
<td class="ltx_td" id="S4.T1.8.8.11.3.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.11">36.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.12">7.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.12.4.1">NOVUM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20220v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.2">97.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.3">94.9</td>
<td class="ltx_td" id="S4.T1.8.8.12.4.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.5">91.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.6">78.0</td>
<td class="ltx_td" id="S4.T1.8.8.12.4.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.8">77.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.9">52.3</td>
<td class="ltx_td" id="S4.T1.8.8.12.4.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.11">49.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.12">23.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T1.8.8.13.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.8.8.13.5.1.1">Zero- and Few-Shot</span></th>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.8"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.9"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.10"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.8.8.13.5.11"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.14.6.1">NVS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20220v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite> (7-shot)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.2">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.3">36.4</td>
<td class="ltx_td" id="S4.T1.8.8.14.6.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.6">-</td>
<td class="ltx_td" id="S4.T1.8.8.14.6.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.9">-</td>
<td class="ltx_td" id="S4.T1.8.8.14.6.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.15.7.1">NVS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20220v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite> (50-shot)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.2">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.3">39.8</td>
<td class="ltx_td" id="S4.T1.8.8.15.7.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.6">-</td>
<td class="ltx_td" id="S4.T1.8.8.15.7.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.9">-</td>
<td class="ltx_td" id="S4.T1.8.8.15.7.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.16.8.1">3D-DST <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20220v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite> (0-shot)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.2">82.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.3">65.4</td>
<td class="ltx_td" id="S4.T1.8.8.16.8.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.6">-</td>
<td class="ltx_td" id="S4.T1.8.8.16.8.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.9">-</td>
<td class="ltx_td" id="S4.T1.8.8.16.8.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.17.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.8.8.17.9.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.1.1" style="background-color:#E6E6E6;">DINeMo (ours) (0-shot)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.17.9.2.1" style="background-color:#E6E6E6;">92.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.17.9.3.1" style="background-color:#E6E6E6;">78.6</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.8.8.17.9.4"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.5" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.5.1" style="background-color:#E6E6E6;">87.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.6.1" style="background-color:#E6E6E6;">68.1</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.8.8.17.9.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.8" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.8.1" style="background-color:#E6E6E6;">73.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.9" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.9.1" style="background-color:#E6E6E6;">51.5</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.8.8.17.9.10"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.11" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.11.1" style="background-color:#E6E6E6;">43.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.17.9.12" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.8.8.17.9.12.1" style="background-color:#E6E6E6;">23.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of 3D object pose estimation methods on the car dataset from PASCAL3D+ and its occluded version.  It shows the accuracy (Acc@) of different methods at varying levels of pose error tolerance (6, π/6, 18 degrees).  The table compares fully-supervised methods (ResNet50 and NOVUM), zero-shot and few-shot methods (NVS and 3D-DST), and the authors' DINeMo method.  The key finding is that DINeMo significantly outperforms previous zero/few-shot approaches, substantially reducing the performance gap against the best fully-supervised methods (by 67.3%).
> <details>
> <summary>read the caption</summary>
> Table 1: 3D object pose estimation on the car split of Pascal3D+ [32] and occluded PASCAL3D+ [29]. Our DINeMo outperforms previous zero- and few-shot 3D pose estimation methods by a wide margin, narrowing the gap with fully-supervised methods by 67.3%.
> </details>





### In-depth insights


#### No 3D Needed
**The research explores learning object representations and 3D pose estimation without relying on explicit 3D annotations**. This is significant because obtaining 3D data is often expensive and time-consuming, limiting the scalability of traditional methods. The approach likely leverages alternative sources of information, such as 2D images and visual foundation models, to infer 3D properties. **Key aspects might involve self-supervision or pseudo-labeling techniques to bridge the gap between 2D observations and 3D understanding**. The success of such a method would have a substantial impact on various applications, including robotics and computer vision, by enabling 3D scene understanding from readily available 2D data. **The method, named 'DINeMo', uses a novel neural mesh model trained with no 3D annotations by leveraging pseudo-correspondence obtained from large visual foundation models**, demonstrating superior performance over existing zero-shot and few-shot 3D pose estimation techniques.

#### Pseudo-Labels
The research paper introduces an innovative approach using **pseudo-labels** to train a neural mesh model, eliminating the need for labor-intensive 3D annotations. The method leverages visual foundation models like DINOv2 to generate these labels. A bidirectional pseudo-correspondence generation technique is employed, considering both **local appearance** and **global context** for improved accuracy. This addresses the noisiness often associated with raw pseudo-labels. By matching neural features from SD-DINO and refining keypoint correspondences based on predicted global pose labels, the model achieves more consistent and reliable pseudo-labels for training. The use of pseudo-labels enables scaling to broader object categories and efficient training with unlabeled images.

#### Bidirectional
The idea of a bidirectional approach is interesting, especially in the context of correspondence matching. It suggests a process that isn't simply one-way, but rather incorporates information flowing in both directions to refine the results. For example, initially establishing coarse correspondences and then using higher-level contextual information to refine them, or vice versa, could lead to more robust and accurate matching. The **bidirectional** approach could allow for error correction, where inconsistencies detected in one direction can be resolved by information from the other direction. It may be useful for integrating local and global information or handling ambiguities in complex scenarios.

#### Visual Priors
**Visual priors** play a crucial role in 3D scene understanding by guiding the inference of shape and pose. Models incorporating such priors demonstrate enhanced robustness, especially when dealing with partial occlusions or domain shifts. These priors, often learned from data, regularize the solution space, leading to more plausible and accurate estimates. By leveraging large pre-trained **visual foundation models**, one can generate **pseudo-correspondence**, eliminating the need for 3D annotations. Combining **local appearance features with global context** further refines these priors, improving overall consistency and performance. 

#### Scalable Model
**Scalable models** are critical in modern machine learning, particularly for tasks like 3D pose estimation where data annotation can be expensive and time-consuming. DINeMo addresses this by using pseudo-labels from visual foundation models, eliminating the need for direct 3D annotations.  The effectiveness of **DINeMo** scaling with more unlabeled images is demonstrated through experiments, showing performance improvements as the training dataset grows. This is highly significant, as **DINeMo** overcomes the limitation of supervised approaches that require scarce 3D annotations. By effectively leveraging unlabeled data, **DINeMo** represents a step towards more practical and scalable 3D learning systems, reducing reliance on labor-intensive annotation processes. The design choices in **DINeMo**, such as the bidirectional correspondence generation, are pivotal in achieving this scalability by efficiently extracting meaningful information from readily available visual data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/bidirectional.jpg)

> 🔼 Figure 2 illustrates the two-step bidirectional pseudo-correspondence generation process. The first step (Local-to-Global) generates raw pseudo-correspondences using features from SD-DINO and determines the 3D object orientation through majority voting. The second step (Global-to-Local) refines these correspondences by down-weighting matches of vertices invisible from the estimated 3D orientation. This process combines low-level local appearance features with high-level global context information for improved consistency and accuracy in keypoint correspondence.
> <details>
> <summary>read the caption</summary>
> Figure 2: Bidirectional pseudo-correspondence generation. See Sec. 3.2.
> </details>



![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/inferred_pose_labeled.jpg)

> 🔼 This figure shows a qualitative comparison of keypoint pseudo-correspondence generation with and without the authors' proposed bidirectional method.  The bidirectional method uses both local appearance features and global context (3D object orientation) to improve the accuracy of the correspondence. The comparison highlights how the bidirectional approach significantly reduces mismatches and improves the overall quality of the generated correspondence, which is crucial for accurate 3D pose estimation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparisons with and without our bidirectional pseudo-correspondence generation. See Sec. 3.2.
> </details>



![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/scaling.png)

> 🔼 Figure 4 illustrates how the performance of the DINeMo model scales with the amount of unlabeled data used during training.  The x-axis represents the number of training images, ranging from 2048 to 15000. The y-axis displays two key performance metrics: Pose Accuracy at π/6 (measuring the accuracy of pose estimation) and Point PCK@0.1 (measuring the accuracy of keypoint correspondence). The graph shows that as the number of training images increases, both metrics also improve, demonstrating DINeMo's ability to efficiently leverage large-scale unlabeled data for improved performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Scaling properties of DINeMo. See Sec. 4.2.
> </details>



![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/Semantic_corr_qualitative.jpg)

> 🔼 Figure 5 presents a qualitative comparison of the performance of DINOv2 and DINeMo on the SPair71k dataset.  The images show examples of semantic correspondence generated by each method. Each row shows a pair of images, with the left image displaying the output from the DINOv2 model, and the right image showing the corresponding results from the DINeMo model. This visual comparison allows for a direct assessment of the relative strengths and weaknesses of the two models in terms of accuracy and robustness of semantic correspondence in images of cars with varying degrees of occlusion, viewpoint, and lighting conditions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparisons between DINOv2 (left) and our DINeMo (right) on the SPair71k[16] dataset.
> </details>



![](https://arxiv.org/html/2503.20220/extracted/6310656/figures/pose_qualitative.png)

> 🔼 Figure 6 presents a qualitative assessment of 3D pose estimation results obtained using the proposed DINeMo model.  It showcases several examples of cars from the PASCAL3D+ dataset [32], with each example displaying both the input image and the estimated 3D mesh.  The color-coded mesh allows for visualization of the estimated pose and shape of the vehicle, providing a visual representation of the model's performance on diverse car instances within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative pose estimation results on the Pascal3D+[32] dataset.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20220/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20220/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}