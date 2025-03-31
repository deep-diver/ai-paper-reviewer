---
title: "Towards a Unified Copernicus Foundation Model for Earth Vision"
summary: "Unified Copernicus Foundation Model for Earth Vision: A multimodal approach to improve scalability, versatility, and adaptability of EO models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 Technical University of Munich",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11849 {{< /keyword >}}
{{< keyword icon="writer" >}} Yi Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11849" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11849" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11849/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Earth observation (EO) foundation models have great potential, but current models have limitations such as fixed spectral sensors, focus on Earth's surface, and neglecting metadata. This paper takes a step towards next-generation EO foundation models. To address this, the authors created **Copernicus-Pretrain, a massive dataset of 18.7M aligned images from Copernicus Sentinel missions** covering Earth's surface and atmosphere. The dataset enables comprehensive modeling of Earth system interactions. 



Building on this dataset, the authors developed **Copernicus-FM, a model that handles any spectral or non-spectral sensor via dynamic hypernetworks**. The model architecture enhances flexibility by adapting to different data inputs and supports metadata integration. They also established **Copernicus-Bench**, a benchmark with 15 tasks for evaluating model performance across Sentinel missions. It facilitates the systematic assessment of foundation models across various practical applications, promoting a versatile approach to EO data processing.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Copernicus-Pretrain, a large-scale, diverse EO pretraining dataset covering all major Sentinel missions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents Copernicus-FM, a unified foundation model capable of processing any spectral or non-spectral sensor using dynamic hypernetworks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Establishes Copernicus-Bench, a comprehensive benchmark with 15 downstream tasks for systematic evaluation across various Sentinel missions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it **introduces a comprehensive framework for EO foundation models**, addressing key limitations in sensor diversity, model flexibility, and evaluation breadth. It offers valuable resources for advancing research in EO, climate, and weather modeling, fostering interdisciplinary collaboration and innovation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.11849/x1.png)

> 🔼 This figure illustrates the overall architecture of the proposed unified Copernicus foundation model for Earth vision.  It starts with a massive pretraining dataset called Copernicus-Pretrain, which integrates data from various Copernicus Sentinel missions, encompassing the Earth's surface and atmosphere. This data is used to train the Copernicus-FM foundation model, designed for processing diverse sensor modalities (spectral or non-spectral) using dynamic hypernetworks.  Finally, this model is evaluated on a comprehensive benchmark, Copernicus-Bench, which includes various downstream tasks across multiple Sentinel missions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our efforts towards a unified Copernicus foundation model, from pretraining to benchmarking.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.14.14.15.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T1.14.14.15.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.2">Modality</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.3">GSD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.4">Image size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.5"># Grid cells</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.6"># Patches</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.7"># Timestamps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.14.14.15.1.8"># Total images</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.3.3.4">Sentinel-1 GRD</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.5">SAR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.6">10 m</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2">264<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><times id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">×</annotation></semantics></math>264<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m2.1"><semantics id="S3.T1.2.2.2.2.m2.1a"><mo id="S3.T1.2.2.2.2.m2.1.1" xref="S3.T1.2.2.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m2.1b"><times id="S3.T1.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m2.1d">×</annotation></semantics></math>2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.7">247,723</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.8">1,067,267</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" xref="S3.T1.3.3.3.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">∼</annotation></semantics></math>4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.9">4,227,387</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.6.6.4">Sentinel-2 TOA</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.5">MS</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.6">10 m</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.2">264<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><times id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">×</annotation></semantics></math>264<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.5.5.2.m2.1"><semantics id="S3.T1.5.5.5.2.m2.1a"><mo id="S3.T1.5.5.5.2.m2.1.1" xref="S3.T1.5.5.5.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.2.m2.1b"><times id="S3.T1.5.5.5.2.m2.1.1.cmml" xref="S3.T1.5.5.5.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.2.m2.1d">×</annotation></semantics></math>13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.7">247,723</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.8">1,067,267</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.3">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.6.6.6.3.m1.1"><semantics id="S3.T1.6.6.6.3.m1.1a"><mo id="S3.T1.6.6.6.3.m1.1.1" xref="S3.T1.6.6.6.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.3.m1.1b"><csymbol cd="latexml" id="S3.T1.6.6.6.3.m1.1.1.cmml" xref="S3.T1.6.6.6.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.3.m1.1d">∼</annotation></semantics></math>4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.9">4,218,065</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.9.9.4">Sentinel-3 OLCI</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.5">MS</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.6">300 m</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.2">96<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><times id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">×</annotation></semantics></math>96<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m2.1"><semantics id="S3.T1.8.8.8.2.m2.1a"><mo id="S3.T1.8.8.8.2.m2.1.1" xref="S3.T1.8.8.8.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m2.1b"><times id="S3.T1.8.8.8.2.m2.1.1.cmml" xref="S3.T1.8.8.8.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m2.1d">×</annotation></semantics></math>21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.7">281,375</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.8">281,375</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.3">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.9.9.9.3.m1.1"><semantics id="S3.T1.9.9.9.3.m1.1a"><mo id="S3.T1.9.9.9.3.m1.1.1" xref="S3.T1.9.9.9.3.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.3.m1.1b"><csymbol cd="latexml" id="S3.T1.9.9.9.3.m1.1.1.cmml" xref="S3.T1.9.9.9.3.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.3.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.3.m1.1d">∼</annotation></semantics></math>8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.9">2,189,561</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.10.10.10.2">Sentinel-5P CO</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.3">atmos.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.4">1 km</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.1">28<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.10.10.1.m1.1"><semantics id="S3.T1.10.10.10.1.m1.1a"><mo id="S3.T1.10.10.10.1.m1.1.1" xref="S3.T1.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.1.m1.1b"><times id="S3.T1.10.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.1.m1.1d">×</annotation></semantics></math>28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.5">306,097</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.6">306,097</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.7">1–12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.8">2,104,735</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.11.11.11.2">Sentinel-5P NO2</th>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.3">atmos.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.4">1 km</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.1">28<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mo id="S3.T1.11.11.11.1.m1.1.1" xref="S3.T1.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><times id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">×</annotation></semantics></math>28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.5">291,449</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.6">291,449</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.7">1–12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.8">1,752,558</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.12.12.12.2">Sentinel-5P SO2</th>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.3">atmos.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.4">1 km</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.1">28<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.12.12.12.1.m1.1"><semantics id="S3.T1.12.12.12.1.m1.1a"><mo id="S3.T1.12.12.12.1.m1.1.1" xref="S3.T1.12.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.1.m1.1b"><times id="S3.T1.12.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.1.m1.1d">×</annotation></semantics></math>28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.5">262,259</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.6">262,259</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.7">1–12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.8">1,366,452</td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.13.13.13.2">Sentinel-5P O3</th>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.3">atmos.</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.4">1 km</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.1">28<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.13.13.13.1.m1.1"><semantics id="S3.T1.13.13.13.1.m1.1a"><mo id="S3.T1.13.13.13.1.m1.1.1" xref="S3.T1.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.1.m1.1b"><times id="S3.T1.13.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.1.m1.1d">×</annotation></semantics></math>28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.5">306,218</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.6">306,218</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.7">1–12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.8">2,556,631</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.14.14.14.2">Copernicus DEM</th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.3">elevation</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.4">30 m</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.1">960<math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.14.14.14.1.m1.1"><semantics id="S3.T1.14.14.14.1.m1.1a"><mo id="S3.T1.14.14.14.1.m1.1.1" xref="S3.T1.14.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.1.m1.1b"><times id="S3.T1.14.14.14.1.m1.1.1.cmml" xref="S3.T1.14.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.1.m1.1d">×</annotation></semantics></math>960</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.5">297,665</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.6">297,665</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.7">1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.8">297,665</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.16.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.1">Copernicus-Pretrain</th>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.2"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.3"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.5">312,567</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.6">3,879,597</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.14.14.16.1.8">18,713,054</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical summary of the Copernicus-Pretrain dataset, a crucial component of the research.  It details the number of grid cells, patches, and total images for each Sentinel mission included (Sentinel-1 GRD, Sentinel-2 TOA, Sentinel-3 OLCI, Sentinel-5P for various atmospheric variables (CO, NO2, SO2, O3), and Copernicus DEM).  The table also specifies the ground sample distance (GSD) and image size for each sensor modality, providing a comprehensive overview of the dataset's scale and diversity.
> <details>
> <summary>read the caption</summary>
> Table 1: Copernicus-Pretrain dataset statistics.
> </details>





### In-depth insights


#### EO Data Fusion
**EO data fusion** is crucial for enhanced Earth observation insights. It involves integrating data from multiple sources to create a comprehensive view. Challenges include sensor heterogeneity and data alignment. Effective fusion improves accuracy and provides richer information, benefiting environmental monitoring and disaster response. Future advancements lie in multimodal foundation models and flexible architectures adapting to diverse data.

#### Copernicus-FM
The Copernicus-FM section likely details the core architecture of the proposed foundation model. A key innovation probably lies in handling diverse sensor inputs (spectral/non-spectral) via **dynamic hypernetworks**, adapting to varying spatial resolutions. Metadata integration (geolocation, time) is a significant aspect, enhancing the model's awareness. The pretraining objective combines **masked image modeling (MIM)** and continual distillation, improving representation quality and leveraging knowledge from models like DINOv2. The model seems designed for versatility across different Earth observation tasks and sensor types. Ablation studies likely validate the effectiveness of hypernetworks and metadata.

#### Dynamic HyperNets
**Dynamic Hypernetworks** offer a promising avenue for creating **flexible and adaptable models**, especially in domains with diverse input modalities like Earth observation. The core idea is to use a hypernetwork to generate the weights of another network (the main network), allowing the model to dynamically adapt to different inputs. This is useful for EO tasks, where data can come from various sensors (optical, SAR, etc.) with differing spectral bands and resolutions. By conditioning the hypernetwork on the sensor characteristics, the main network can process diverse data types. Hypernetworks can also integrate metadata, such as geolocation and time, by encoding this information and using it to influence the weight generation process. This enables the model to be aware of the context of the input data, leading to improved performance. The challenge lies in designing efficient hypernetworks that can generate high-quality weights without adding excessive computational overhead.

#### Climate Bridging
Climate bridging in Earth observation (EO) foundation models represents a paradigm shift, moving beyond isolated environmental analysis towards integrated Earth system understanding. **By fusing EO data with weather and climate models**, these models can leverage the wealth of satellite imagery and derived products to enhance climate prediction and monitoring. The potential lies in creating semantically rich geographical representations via EO-encoded grid embeddings, directly aligning with climate parameters from reanalysis datasets like ERA5. This integration not only refines climate models by incorporating visual context and detailed surface information but also opens avenues for improved medium-range weather forecasting by enriching static and dynamic climate variables with EO-derived insights. This cross-disciplinary approach offers a holistic view of planetary dynamics, crucial for addressing global environmental changes.

#### Metadata Matters
While imagery forms the core of Earth observation, **metadata provides essential context** that enhances its interpretability and utility. Capturing geolocation enables aligning data with other geospatial datasets, while timestamps are important for temporal analysis. Recognizing the significance of metadata allows for its seamless integration into machine learning models, enriching the understanding derived from EO data. **Metadata enables more informed and nuanced analysis**, paving the way for applications that were previously limited by a lack of contextual understanding. The **Strategic incorporation of metadata** unlocks new possibilities for integrating Earth observation data with other datasets. **Metadata, like geospatial location and acquisition time, are crucial for accurate analysis** and comparison of Earth observation data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.11849/x2.png)

> 🔼 This figure illustrates the structure of the Copernicus-Pretrain dataset, a crucial component of the research.  The dataset is composed of 0.25° × 0.25° grid cells covering the globe. Each grid cell contains multiple aligned images from various Copernicus Sentinel missions, including Sentinel-1 (SAR), Sentinel-2 (multispectral), Sentinel-3 (multispectral), Sentinel-5P (atmospheric), and a digital elevation model (DEM).  The 'N' in the caption represents the number of image patches extracted from each grid cell, reflecting the varying resolutions and data density across different sensors. The grid cells are shown upscaled in the figure for better visualization, as the actual resolution of individual grid cells are much finer.
> <details>
> <summary>read the caption</summary>
> Figure 2: Schematic of the Copernicus-Pretrain dataset. N𝑁Nitalic_N is the number of local patches. Grid cells are upscaled for ease of visualization.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/union_dist_new.png)

> 🔼 The figure displays a world map illustrating the global distribution of the Copernicus-Pretrain dataset.  The color intensity indicates the density of data points, with darker regions representing areas with more data samples and lighter regions indicating areas with fewer samples.  This visualization helps to understand the geographical coverage and data density of the dataset, which is crucial for evaluating the representativeness and potential biases of the training data used for developing Earth Observation foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Global distribution of the Copernicus-Pretrain dataset.
> </details>



![](https://arxiv.org/html/2503.11849/x3.png)

> 🔼 The figure illustrates the training process of the Copernicus-FM model.  The model takes as input images from various Copernicus Sentinel missions (S1-S5P, DEM) sampled from a common grid cell. These images are first processed using dynamic hypernetworks to generate patch embeddings specific to the modality (spectral response for spectral data, or variable name for non-spectral data). Then, metadata (geolocation, area, and time) is incorporated using Fourier encodings. Masked Image Modeling (MIM) is employed, masking out parts of the input and training the model to reconstruct these masked parts.  Simultaneously, auxiliary continual distillation is used by training the model to produce outputs similar to those from powerful teacher models such as DINOv2, trained on a subset of the data (RGB images derived from S1/S2).
> <details>
> <summary>read the caption</summary>
> Figure 4: The general pretraining pipeline of Copernicus-FM. One image for each modality is sampled from a common grid cell in Copernicus-Pretrain, which is then patchified with kernel weights generated by the spectral or variable hypernetwork, based on the modality’s spectral response or variable name. Further, Fourier-encoded metadata encodings are incorporated into the patch tokens. We conduct masked image modeling with auxiliary continual distillation for pretraining: masking and reconstructing masked-out patches for each modality, and distilling S1/2 or S2-derived RGB representations from powerful specialized teachers such as DINOv2 [48].
> </details>



![](https://arxiv.org/html/2503.11849/x4.png)

> 🔼 This figure illustrates the architecture of Copernicus-FM, specifically focusing on two key components: dynamic patch embedding and metadata integration. The left panel details how the model processes different image modalities (e.g., Sentinel-1 SAR, Sentinel-2 multispectral) with varying spatial resolutions.  A hypernetwork dynamically generates kernel weights for a 2D convolution patch embedding layer, adapting to the unique spectral characteristics of each sensor. The right panel shows how metadata (geolocation, area, and time) is integrated into the model.  Fourier encoding converts metadata into vectors that are added to patch tokens, providing additional context to the model during processing. The use of a unified architecture allows the model to handle various modalities and metadata in a flexible and scalable manner.
> <details>
> <summary>read the caption</summary>
> Figure 5: Dynamic patch embedding (left) and metadata integration (right) of Copernicus-FM.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/joint_dist_new.png)

> 🔼 This figure shows a world map highlighting the geographical distribution of the Copernicus-Pretrain dataset's 'joint subset'.  The 'joint subset' refers to the portion of the dataset containing complete data from all eight Sentinel missions and the Copernicus DEM GLO-30, ensuring comprehensive coverage across various modalities. The map uses color intensity to represent the density of grid cells included in the joint subset, providing a visual representation of data coverage.
> <details>
> <summary>read the caption</summary>
> Figure 6: Global distribution of the joint subset of the Copernicus-Pretrain dataset.
> </details>



![](https://arxiv.org/html/2503.11849/x5.png)

> 🔼 This figure shows two histograms, one each for Sentinel-1 (S1) and Sentinel-2 (S2) data.  The histograms illustrate the distribution of the number of local image patches extracted from each of the 0.25° x 0.25° grid cells that compose the Copernicus-Pretrain dataset. The data shown represents the 'union' dataset, encompassing all grid cells with at least one sensor modality. The x-axis of each histogram shows the number of local patches and the y-axis shows the number of grids containing that many patches.
> <details>
> <summary>read the caption</summary>
> Figure 7: Histogram of local patch numbers for S1 and S2 (union).
> </details>



![](https://arxiv.org/html/2503.11849/x6.png)

> 🔼 This histogram shows the distribution of the number of local image patches within each of the 0.25° x 0.25° grid cells for Sentinel-1 (S1) and Sentinel-2 (S2) data.  The data used is the 'joint' subset of the Copernicus-Pretrain dataset, which means only grid cells containing data from all available sensor modalities are included. The x-axis represents the number of patches and the y-axis represents the number of grid cells with that many patches.  The figure helps visualize the patch density variability across different regions in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Histogram of local patch numbers for S1 and S2 (joint).
> </details>



![](https://arxiv.org/html/2503.11849/x7.png)

> 🔼 This figure shows the distribution of time series lengths for Sentinel-1 (S1) and Sentinel-2 (S2) data within the Copernicus-Pretrain dataset. The term 'union' signifies that this analysis includes all available data, regardless of whether a specific grid cell contains data from all sensor modalities.  The histograms display the frequency of different time series lengths, providing insights into data availability and temporal coverage for both sensors.
> <details>
> <summary>read the caption</summary>
> Figure 9: Histogram of time series lengths for S1 and S2 (union).
> </details>



![](https://arxiv.org/html/2503.11849/x8.png)

> 🔼 This figure shows two histograms illustrating the distribution of time series lengths for Sentinel-1 (S1) and Sentinel-2 (S2) data within the 'joint' subset of the Copernicus-Pretrain dataset.  The 'joint' subset contains only grid cells where all eight data modalities are available.  Each histogram displays the frequency of different time series lengths (number of observations over time), providing insights into the temporal coverage consistency for each sensor within this specific subset of the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 10: Histogram of time series lengths for S1 and S2 (joint).
> </details>



![](https://arxiv.org/html/2503.11849/x11.png)

> 🔼 This figure shows two histograms that visualize the distribution of time series lengths for Sentinel-3 data.  The left histogram displays the data from the full Copernicus-Pretrain dataset (referred to as 'union'), while the right histogram focuses on the subset of the data where all modalities are present ('joint'). Each bar represents a specific number of time stamps, and the height of each bar indicates how many Sentinel-3 data samples have that number of time stamps in the dataset. Comparing the two histograms allows for an understanding of how data completeness and availability changes when considering the full dataset versus a more restricted dataset where all modalities are included.
> <details>
> <summary>read the caption</summary>
> Figure 11: Histogram of time series lengths for S3 (left: union; right: joint).
> </details>



![](https://arxiv.org/html/2503.11849/x12.png)

> 🔼 This figure shows the distribution of the number of time series observations available for each grid cell across various Sentinel-5P atmospheric variables (CO, NO2, SO2, and O3) in the Copernicus-Pretrain dataset.  The dataset is called 'union' because it includes all grid cells with at least one available sensor modality. The x-axis represents the number of time stamps (months) and the y-axis represents the number of grid cells with that many observations. This visualization helps to understand the temporal coverage of the Sentinel-5P data within the Copernicus-Pretrain dataset and can inform the choices for model training.
> <details>
> <summary>read the caption</summary>
> Figure 12: Histogram of time series lengths for S5P (union).
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/fourier_encoding_vis.png)

> 🔼 This figure presents histograms showing the distribution of time series lengths for each of the four atmospheric variables (CO, NO2, SO2, and O3) from the Sentinel-5P mission within the Copernicus-Pretrain dataset.  The data shown represents only the subset of data where all eight modalities are available for each grid cell. The x-axis shows the number of time stamps and the y-axis shows the number of grid cells.
> <details>
> <summary>read the caption</summary>
> Figure 13: Histogram of time series lengths for S5P (joint).
> </details>



![](https://arxiv.org/html/2503.11849/x13.png)

> 🔼 This figure visualizes the Fourier encoding of wavelengths and bandwidths used in the Copernicus-FM model for Sentinel-2 (S2) and Sentinel-1 (S1) data.  The Fourier encoding transforms the wavelength and bandwidth values into higher-dimensional vectors which are used to dynamically generate the kernel weights for patch embedding within the model. The visualization helps illustrate how the model represents spectral information, enabling it to process different spectral sensors in a unified architecture.
> <details>
> <summary>read the caption</summary>
> Figure 14: Fourier encoding visualization for wavelengths and bandwidths of S2 and S1.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/fourier_encoding_location.png)

> 🔼 This t-SNE plot visualizes how a large language model (LLM) encodes different variable names used in the Copernicus-Pretrain dataset.  The plot shows the relative distances between these encoded names in a lower-dimensional space.  Variables with similar semantic meanings or relationships are clustered closer together, while dissimilar ones are further apart.  This visualization demonstrates the LLM's ability to capture the semantic relationships between the different variables, suggesting that it can effectively integrate metadata information into the Copernicus-FM model.
> <details>
> <summary>read the caption</summary>
> Figure 15: t-SNE visualization of the language encodings of different variable names.
> </details>



![](https://arxiv.org/html/2503.11849/x22.png)

> 🔼 This figure visualizes the Fourier encoding applied to geolocation data (longitude and latitude).  It shows how these geographical coordinates are transformed into a multi-dimensional vector representation using a Fourier encoding technique. The visualization helps illustrate how the encoding captures the spatial relationships and variations across different geographic locations, enabling the model to effectively learn representations sensitive to location.
> <details>
> <summary>read the caption</summary>
> Figure 16: Fourier encoding visualization for geolocation (longitudes and latitudes).
> </details>



![](https://arxiv.org/html/2503.11849/x25.png)

> 🔼 This figure visualizes the Fourier encoding of area and time metadata used in the Copernicus-FM model.  The left panel shows the Fourier encoding for area, while the right panel displays the Fourier encoding for time.  The color intensity represents the magnitude of the encoding vector, demonstrating how different values of area and time are represented within the model's embedding space.
> <details>
> <summary>read the caption</summary>
> Figure 17: Fourier encoding visualization for area (left) and time (right).
> </details>



![](https://arxiv.org/html/2503.11849/x31.png)

> 🔼 This figure shows example images and their corresponding cloud masks from the Copernicus-Bench Cloud-S2 dataset.  The dataset is a subset of the CloudSEN12+ dataset and contains Sentinel-2 multispectral imagery with labels indicating cloud and cloud shadow. The images illustrate the diverse cloud cover conditions present in the dataset, including varying degrees of cloud cover and shadow.
> <details>
> <summary>read the caption</summary>
> Figure 18: Copernicus-Bench-Cloud-S2.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/climate_pred.png)

> 🔼 This figure shows a comparison of the cloud segmentation results obtained from the Copernicus-Bench-Cloud-S3 dataset using two different approaches: a multi-class model and a binary classification model. The left side displays the results of the multi-class model, indicating multiple types of clouds and cloud-related features (e.g., clear, cloud-sure, cloud ambiguous, cloud shadow, snow-ice). The right side shows the results of the binary model, providing a simpler classification, distinguishing only between cloud/non-cloud. The images illustrate the difference in granularity and detail provided by the two models.
> <details>
> <summary>read the caption</summary>
> Figure 19: Copernicus-Bench-Cloud-S3. Left: “multi-class” mode. Right: “binary” mode.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/climate_error.png)

> 🔼 This figure displays sample images from the EuroSAT-S1 and EuroSAT-S2 datasets within the Copernicus-Bench benchmark.  EuroSAT-S1 provides synthetic aperture radar (SAR) imagery, while EuroSAT-S2 offers multispectral imagery.  The figure showcases the visual differences between these two data modalities for the same geographic location. This visual comparison is helpful in understanding the contrast between the information captured by different sensor types. Each image is labeled with the corresponding land cover class.
> <details>
> <summary>read the caption</summary>
> Figure 20: Copernicus-Bench-EuroSAT-S1 and Copernicus-Bench-EuroSAT-S2.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/climate_std_pred.png)

> 🔼 This figure displays sample images from the BigEarthNet-S1 and BigEarthNet-S2 datasets, which are part of the Copernicus-Bench benchmark.  BigEarthNet-S1 provides SAR imagery, while BigEarthNet-S2 offers multispectral data. The images are paired, showing the same geographical location but with different spectral properties. The corresponding ground truth labels for land cover classification are also shown, illustrating the variety of land cover types present in the datasets.
> <details>
> <summary>read the caption</summary>
> Figure 21: Copernicus-Bench-BigEarth-S1 and Copernicus-Bench-BigEarth-S2.
> </details>



![](https://arxiv.org/html/2503.11849/extracted/6281005/figures/appendix/climate_std_error.png)

> 🔼 This figure displays sample images from the Copernicus-Bench dataset, specifically focusing on the LC100Cls-S3 and LC100Seg-S3 datasets.  These datasets utilize Sentinel-3 OLCI images and Copernicus Global Land Service (CGLS) land cover maps for classification and segmentation tasks. The images illustrate the multi-temporal aspect of the data, showing multiple images from a time series per location. The caption notes that by default, only one image per time series (the 'static' mode) is used for each location in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 22: Copernicus-Bench-LC100Cls-S3 and Copernicus-Bench-LC100Seg-S3. By default we pick one image per time series as “static” mode.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.23">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.23.24.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.23.24.1.1" rowspan="2"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.23.24.1.2"><span class="ltx_text" id="S4.T2.23.24.1.2.1" style="font-size:90%;">EuroSAT-S1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.23.24.1.3"><span class="ltx_text" id="S4.T2.23.24.1.3.1" style="font-size:90%;">EuroSAT-S2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.23.24.1.4"><span class="ltx_text" id="S4.T2.23.24.1.4.1" style="font-size:90%;">EuroSAT-RGB</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.23.24.1.5"><span class="ltx_text" id="S4.T2.23.24.1.5.1" style="font-size:90%;">LC100-S3</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.23.24.1.6"><span class="ltx_text" id="S4.T2.23.24.1.6.1" style="font-size:90%;">AQ-O3-S5P</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="3" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">(OA </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">(mAP </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.2.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.3.3.3">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;">(RMSE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S4.T2.3.3.3.2" style="font-size:90%;">)</span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.23.25.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.1">
<span class="ltx_text" id="S4.T2.23.25.2.1.1" style="font-size:90%;">Baseline </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.23.25.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a><span class="ltx_text" id="S4.T2.23.25.2.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S4.T2.23.25.2.1.4" style="font-size:90%;"> + dynamic patch size</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.2"><span class="ltx_text" id="S4.T2.23.25.2.2.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.3"><span class="ltx_text" id="S4.T2.23.25.2.3.1" style="font-size:90%;">87.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.4"><span class="ltx_text" id="S4.T2.23.25.2.4.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.5"><span class="ltx_text" id="S4.T2.23.25.2.5.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.25.2.6"><span class="ltx_text" id="S4.T2.23.25.2.6.1" style="font-size:90%;">2218.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_left" id="S4.T2.8.8.6"><span class="ltx_text" id="S4.T2.8.8.6.1" style="font-size:90%;">… + bandwidth (Fourier encoding)</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.1">
<span class="ltx_text" id="S4.T2.4.4.1.2" style="font-size:90%;">56.5 </span><span class="ltx_text" id="S4.T2.4.4.1.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.1.1.m1.1"><semantics id="S4.T2.4.4.1.1.m1.1a"><mo id="S4.T2.4.4.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.1.m1.1b"><ci id="S4.T2.4.4.1.1.m1.1.1.cmml" xref="S4.T2.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.1.m1.1d">↑</annotation></semantics></math> 0.2</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.2">
<span class="ltx_text" id="S4.T2.5.5.2.2" style="font-size:90%;">88.9 </span><span class="ltx_text" id="S4.T2.5.5.2.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.2.1.m1.1"><semantics id="S4.T2.5.5.2.1.m1.1a"><mo id="S4.T2.5.5.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.5.5.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.2.1.m1.1b"><ci id="S4.T2.5.5.2.1.m1.1.1.cmml" xref="S4.T2.5.5.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.2.1.m1.1d">↑</annotation></semantics></math> 1.3</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.3">
<span class="ltx_text" id="S4.T2.6.6.3.2" style="font-size:90%;">65.4 </span><span class="ltx_text" id="S4.T2.6.6.3.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.3.1.m1.1"><semantics id="S4.T2.6.6.3.1.m1.1a"><mo id="S4.T2.6.6.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.6.6.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.3.1.m1.1b"><ci id="S4.T2.6.6.3.1.m1.1.1.cmml" xref="S4.T2.6.6.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.3.1.m1.1d">↑</annotation></semantics></math> 3.2</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.7.7.4">
<span class="ltx_text" id="S4.T2.7.7.4.2" style="font-size:90%;">87.1 </span><span class="ltx_text" id="S4.T2.7.7.4.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.4.1.m1.1"><semantics id="S4.T2.7.7.4.1.m1.1a"><mo id="S4.T2.7.7.4.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.7.7.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.4.1.m1.1b"><ci id="S4.T2.7.7.4.1.m1.1.1.cmml" xref="S4.T2.7.7.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.4.1.m1.1d">↑</annotation></semantics></math> 0.4</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.8.8.5">
<span class="ltx_text" id="S4.T2.8.8.5.2" style="font-size:90%;">1710.7 </span><span class="ltx_text" id="S4.T2.8.8.5.1" style="font-size:90%;color:#006400;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.5.1.m1.1"><semantics id="S4.T2.8.8.5.1.m1.1a"><mo id="S4.T2.8.8.5.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.8.8.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.5.1.m1.1b"><ci id="S4.T2.8.8.5.1.m1.1.1.cmml" xref="S4.T2.8.8.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.5.1.m1.1d">↓</annotation></semantics></math> 507.3</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13">
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.6"><span class="ltx_text" id="S4.T2.13.13.6.1" style="font-size:90%;">… + variable hypernetwork</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.9.9.1">
<span class="ltx_text" id="S4.T2.9.9.1.2" style="font-size:90%;">57.5 </span><span class="ltx_text" id="S4.T2.9.9.1.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.9.1.1.m1.1"><semantics id="S4.T2.9.9.1.1.m1.1a"><mo id="S4.T2.9.9.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.9.9.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.1.m1.1b"><ci id="S4.T2.9.9.1.1.m1.1.1.cmml" xref="S4.T2.9.9.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.1.m1.1d">↑</annotation></semantics></math> 1.0</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.10.10.2">
<span class="ltx_text" id="S4.T2.10.10.2.2" style="font-size:90%;">88.9 </span><span class="ltx_text" id="S4.T2.10.10.2.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.10.2.1.m1.1"><semantics id="S4.T2.10.10.2.1.m1.1a"><mo id="S4.T2.10.10.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.10.10.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.2.1.m1.1b"><ci id="S4.T2.10.10.2.1.m1.1.1.cmml" xref="S4.T2.10.10.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.2.1.m1.1d">↑</annotation></semantics></math> 0.0</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.11.11.3">
<span class="ltx_text" id="S4.T2.11.11.3.2" style="font-size:90%;">65.8 </span><span class="ltx_text" id="S4.T2.11.11.3.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.11.3.1.m1.1"><semantics id="S4.T2.11.11.3.1.m1.1a"><mo id="S4.T2.11.11.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.11.11.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.3.1.m1.1b"><ci id="S4.T2.11.11.3.1.m1.1.1.cmml" xref="S4.T2.11.11.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.3.1.m1.1d">↑</annotation></semantics></math> 0.4</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.4">
<span class="ltx_text" id="S4.T2.12.12.4.2" style="font-size:90%;">86.6 </span><span class="ltx_text" id="S4.T2.12.12.4.1" style="font-size:90%;color:#8B0000;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.12.12.4.1.m1.1"><semantics id="S4.T2.12.12.4.1.m1.1a"><mo id="S4.T2.12.12.4.1.m1.1.1" mathcolor="#8B0000" stretchy="false" xref="S4.T2.12.12.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.4.1.m1.1b"><ci id="S4.T2.12.12.4.1.m1.1.1.cmml" xref="S4.T2.12.12.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.4.1.m1.1d">↓</annotation></semantics></math> 0.5</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.5">
<span class="ltx_text" id="S4.T2.13.13.5.2" style="font-size:90%;">1598.1 </span><span class="ltx_text" id="S4.T2.13.13.5.1" style="font-size:90%;color:#006400;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.13.13.5.1.m1.1"><semantics id="S4.T2.13.13.5.1.m1.1a"><mo id="S4.T2.13.13.5.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.13.13.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.5.1.m1.1b"><ci id="S4.T2.13.13.5.1.m1.1.1.cmml" xref="S4.T2.13.13.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.5.1.m1.1d">↓</annotation></semantics></math> 112.6</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18">
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.6"><span class="ltx_text" id="S4.T2.18.18.6.1" style="font-size:90%;">… + metadata encoding</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.14.14.1">
<span class="ltx_text" id="S4.T2.14.14.1.2" style="font-size:90%;">77.9 </span><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.1.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.14.1.1.m1.1"><semantics id="S4.T2.14.14.1.1.m1.1a"><mo id="S4.T2.14.14.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.14.14.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.1.1.m1.1b"><ci id="S4.T2.14.14.1.1.m1.1.1.cmml" xref="S4.T2.14.14.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.1.1.m1.1d">↑</annotation></semantics></math> 22.4</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.15.2">
<span class="ltx_text" id="S4.T2.15.15.2.2" style="font-size:90%;">88.9 </span><span class="ltx_text" id="S4.T2.15.15.2.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.15.15.2.1.m1.1"><semantics id="S4.T2.15.15.2.1.m1.1a"><mo id="S4.T2.15.15.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.15.15.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.2.1.m1.1b"><ci id="S4.T2.15.15.2.1.m1.1.1.cmml" xref="S4.T2.15.15.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.2.1.m1.1d">↑</annotation></semantics></math> 0.0</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.16.16.3">
<span class="ltx_text" id="S4.T2.16.16.3.2" style="font-size:90%;">78.5 </span><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.3.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.16.16.3.1.m1.1"><semantics id="S4.T2.16.16.3.1.m1.1a"><mo id="S4.T2.16.16.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.16.16.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.3.1.m1.1b"><ci id="S4.T2.16.16.3.1.m1.1.1.cmml" xref="S4.T2.16.16.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.3.1.m1.1d">↑</annotation></semantics></math> 12.7</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.17.17.4">
<span class="ltx_text" id="S4.T2.17.17.4.2" style="font-size:90%;">90.7 </span><span class="ltx_text ltx_font_bold" id="S4.T2.17.17.4.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.17.17.4.1.m1.1"><semantics id="S4.T2.17.17.4.1.m1.1a"><mo id="S4.T2.17.17.4.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.17.17.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.4.1.m1.1b"><ci id="S4.T2.17.17.4.1.m1.1.1.cmml" xref="S4.T2.17.17.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.4.1.m1.1d">↑</annotation></semantics></math> 4.1</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.5">
<span class="ltx_text" id="S4.T2.18.18.5.2" style="font-size:90%;">839.3 </span><span class="ltx_text ltx_font_bold" id="S4.T2.18.18.5.1" style="font-size:90%;color:#006400;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.18.18.5.1.m1.1"><semantics id="S4.T2.18.18.5.1.m1.1a"><mo id="S4.T2.18.18.5.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.18.18.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.5.1.m1.1b"><ci id="S4.T2.18.18.5.1.m1.1.1.cmml" xref="S4.T2.18.18.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.5.1.m1.1d">↓</annotation></semantics></math> 758.8</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.23.23.6"><span class="ltx_text" id="S4.T2.23.23.6.1" style="font-size:90%;">… + continual distillation</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.19.19.1">
<span class="ltx_text" id="S4.T2.19.19.1.2" style="font-size:90%;">81.0 </span><span class="ltx_text" id="S4.T2.19.19.1.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.19.19.1.1.m1.1"><semantics id="S4.T2.19.19.1.1.m1.1a"><mo id="S4.T2.19.19.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.19.19.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.1.1.m1.1b"><ci id="S4.T2.19.19.1.1.m1.1.1.cmml" xref="S4.T2.19.19.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.1.1.m1.1d">↑</annotation></semantics></math> 2.9</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.20.20.2">
<span class="ltx_text" id="S4.T2.20.20.2.2" style="font-size:90%;">89.5 </span><span class="ltx_text ltx_font_bold" id="S4.T2.20.20.2.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.20.20.2.1.m1.1"><semantics id="S4.T2.20.20.2.1.m1.1a"><mo id="S4.T2.20.20.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.20.20.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.2.1.m1.1b"><ci id="S4.T2.20.20.2.1.m1.1.1.cmml" xref="S4.T2.20.20.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.2.1.m1.1d">↑</annotation></semantics></math> 0.6</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.21.21.3">
<span class="ltx_text" id="S4.T2.21.21.3.2" style="font-size:90%;">78.9 </span><span class="ltx_text" id="S4.T2.21.21.3.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.21.21.3.1.m1.1"><semantics id="S4.T2.21.21.3.1.m1.1a"><mo id="S4.T2.21.21.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.21.21.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.3.1.m1.1b"><ci id="S4.T2.21.21.3.1.m1.1.1.cmml" xref="S4.T2.21.21.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.3.1.m1.1d">↑</annotation></semantics></math> 0.4</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.22.22.4">
<span class="ltx_text" id="S4.T2.22.22.4.2" style="font-size:90%;">90.7 </span><span class="ltx_text" id="S4.T2.22.22.4.1" style="font-size:90%;color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.22.22.4.1.m1.1"><semantics id="S4.T2.22.22.4.1.m1.1a"><mo id="S4.T2.22.22.4.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.22.22.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.4.1.m1.1b"><ci id="S4.T2.22.22.4.1.m1.1.1.cmml" xref="S4.T2.22.22.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.4.1.m1.1d">↑</annotation></semantics></math> 0.0</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.23.23.5">
<span class="ltx_text" id="S4.T2.23.23.5.2" style="font-size:90%;">811.6 </span><span class="ltx_text" id="S4.T2.23.23.5.1" style="font-size:90%;color:#006400;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.23.23.5.1.m1.1"><semantics id="S4.T2.23.23.5.1.m1.1a"><mo id="S4.T2.23.23.5.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="S4.T2.23.23.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.5.1.m1.1b"><ci id="S4.T2.23.23.5.1.m1.1.1.cmml" xref="S4.T2.23.23.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.5.1.m1.1d">↓</annotation></semantics></math> 27.7</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components of the Copernicus-FM model on its performance across four benchmark datasets.  The study evaluates the overall accuracy (OA), mean average precision (mAP), and root mean squared error (RMSE), depending on the specific dataset and task. The components analyzed include the use of dynamic patch sizes, Fourier encoding for bandwidths, a variable hypernetwork, metadata encoding, and continual distillation.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of Copernicus-FM. OA: overall accuracy, mAP: mean average precision, and RMSE: root mean squared error.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.1">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.2">Modality</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.3">Resolution</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.4"># Time stamps</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.5"># patches</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.3.1.6"># pixels</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.2.4.1.1">fMoW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.4.1.2">RGB, MS</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.2.4.1.3">0.3–10 m</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.2.4.1.4">3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.2.4.1.5">2M</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.2.4.1.6">50B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.5.2">
<td class="ltx_td ltx_align_left" id="A1.T6.2.5.2.1">SEN12MS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.5.2.2">SAR, MS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.5.2.3">10 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.5.2.4">1</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.5.2.5">540K</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.5.2.6">35B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.6.3">
<td class="ltx_td ltx_align_left" id="A1.T6.2.6.3.1">SeCo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.3.2">MS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.6.3.3">10 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.6.3.4">5</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.6.3.5">1M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.6.3.6">70B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.7.4">
<td class="ltx_td ltx_align_left" id="A1.T6.2.7.4.1">SSL4EO-S12 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.7.4.2">SAR, MS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.7.4.3">10 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.7.4.4">4</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.7.4.5">3M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.7.4.6">140B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.8.5">
<td class="ltx_td ltx_align_left" id="A1.T6.2.8.5.1">SSL4EO-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.5.2">MS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.8.5.3">30 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.8.5.4">4</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.8.5.5">5M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.8.5.6">348B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.2">
<td class="ltx_td ltx_align_left" id="A1.T6.2.2.3">SatlasPretrain <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.2.4">SAR, MS, RGB</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.2.5">0.5–10 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T6.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.m1.1a"><mo id="A1.T6.1.1.1.m1.1.1" xref="A1.T6.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T6.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.m1.1d">∼</annotation></semantics></math>10</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.2.2">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A1.T6.2.2.2.m1.1"><semantics id="A1.T6.2.2.2.m1.1a"><mo id="A1.T6.2.2.2.m1.1.1" xref="A1.T6.2.2.2.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.m1.1b"><gt id="A1.T6.2.2.2.m1.1.1.cmml" xref="A1.T6.2.2.2.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.m1.1d">&gt;</annotation></semantics></math>10M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.2.6">17T</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.9.6">
<td class="ltx_td ltx_align_left" id="A1.T6.2.9.6.1">MMEarth <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.9.6.2">SAR, MS, height, landcover, etc.</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.9.6.3">10–15 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.9.6.4">1</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.9.6.5">6M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.9.6.6">120B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.10.7">
<td class="ltx_td ltx_align_left" id="A1.T6.2.10.7.1">SpectralEarth <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.10.7.2">HS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.10.7.3">30 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.10.7.4">1–23</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.10.7.5">540K</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.10.7.6">10B</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.11.8">
<td class="ltx_td ltx_align_left" id="A1.T6.2.11.8.1">Major TOM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.11.8.2">SAR, MS</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.11.8.3">10 m</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.11.8.4">1</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.11.8.5">8M</td>
<td class="ltx_td ltx_align_right" id="A1.T6.2.11.8.6">6.8T</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.12.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.2.12.9.1">Copernicus-Pretrain</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.2.12.9.2">SAR, MS, S3, DEM, S5P</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.2.12.9.3">10 m–1 km</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.2.12.9.4">1–12</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.2.12.9.5">19M</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.2.12.9.6">920B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 details the datasets used in the Copernicus-Bench benchmark. It lists each dataset's name, task type (segmentation, classification, change detection, or regression), number of images, image dimensions, number of classes, data source, and license.  It also notes whether the dataset supports time series data (with the default number of images per time series indicated) and whether geolocation metadata is available.
> <details>
> <summary>read the caption</summary>
> Table 3: Characteristics of datasets in Copernicus-Bench. seg, cls, cd, and reg represent segmentation, classification, change detection, and regression, respectively. *Time series support (default mode is 1 image for seg and 2 for cd). †Geolocation metadata not available.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.11.12.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T7.11.12.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.11.12.1.2">image size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.11.12.1.3"># grid cells</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.11.12.1.4"># patches</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.11.12.1.5"># timestamps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.11.12.1.6"># total images</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.2.2.3">Sentinel-1 GRD</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.m1.1a"><mo id="A1.T7.1.1.1.m1.1.1" xref="A1.T7.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T7.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.m1.1d">∼</annotation></semantics></math>264x264</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.2.4">219,543</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.2.5">996,978</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.2.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.2.2.2.m1.1"><semantics id="A1.T7.2.2.2.m1.1a"><mo id="A1.T7.2.2.2.m1.1.1" xref="A1.T7.2.2.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.m1.1b"><csymbol cd="latexml" id="A1.T7.2.2.2.m1.1.1.cmml" xref="A1.T7.2.2.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.m1.1d">∼</annotation></semantics></math>4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.2.6">3,948,217</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.4.4.3">Sentinel-2 TOA</th>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.3.3.1.m1.1"><semantics id="A1.T7.3.3.1.m1.1a"><mo id="A1.T7.3.3.1.m1.1.1" xref="A1.T7.3.3.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.1.m1.1b"><csymbol cd="latexml" id="A1.T7.3.3.1.m1.1.1.cmml" xref="A1.T7.3.3.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.1.m1.1d">∼</annotation></semantics></math>264x264</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.5">996,978</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.4.4.2.m1.1"><semantics id="A1.T7.4.4.2.m1.1a"><mo id="A1.T7.4.4.2.m1.1.1" xref="A1.T7.4.4.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.2.m1.1b"><csymbol cd="latexml" id="A1.T7.4.4.2.m1.1.1.cmml" xref="A1.T7.4.4.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.2.m1.1d">∼</annotation></semantics></math>4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.6">3,948,217</td>
</tr>
<tr class="ltx_tr" id="A1.T7.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.6.6.3">Sentinel-3 OLCI</th>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.5.5.1.m1.1"><semantics id="A1.T7.5.5.1.m1.1a"><mo id="A1.T7.5.5.1.m1.1.1" xref="A1.T7.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.1.m1.1b"><csymbol cd="latexml" id="A1.T7.5.5.1.m1.1.1.cmml" xref="A1.T7.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.1.m1.1d">∼</annotation></semantics></math>96x96</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.5">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.6.6.2.m1.1"><semantics id="A1.T7.6.6.2.m1.1a"><mo id="A1.T7.6.6.2.m1.1.1" xref="A1.T7.6.6.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.2.m1.1b"><csymbol cd="latexml" id="A1.T7.6.6.2.m1.1.1.cmml" xref="A1.T7.6.6.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.2.m1.1d">∼</annotation></semantics></math>8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.6.6.6">1,720,881</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.7.7.2">Sentinel-5P CO</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.7.7.1.m1.1"><semantics id="A1.T7.7.7.1.m1.1a"><mo id="A1.T7.7.7.1.m1.1.1" xref="A1.T7.7.7.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.1.m1.1b"><csymbol cd="latexml" id="A1.T7.7.7.1.m1.1.1.cmml" xref="A1.T7.7.7.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.1.m1.1d">∼</annotation></semantics></math>28x28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.3">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.5">1–12</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.6">1,548,349</td>
</tr>
<tr class="ltx_tr" id="A1.T7.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.8.8.2">Sentinel-5P NO2</th>
<td class="ltx_td ltx_align_center" id="A1.T7.8.8.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.8.8.1.m1.1"><semantics id="A1.T7.8.8.1.m1.1a"><mo id="A1.T7.8.8.1.m1.1.1" xref="A1.T7.8.8.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.8.8.1.m1.1b"><csymbol cd="latexml" id="A1.T7.8.8.1.m1.1.1.cmml" xref="A1.T7.8.8.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.8.8.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.8.8.1.m1.1d">∼</annotation></semantics></math>28x28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.8.8.3">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.8.8.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.8.8.5">1–12</td>
<td class="ltx_td ltx_align_center" id="A1.T7.8.8.6">1,394,800</td>
</tr>
<tr class="ltx_tr" id="A1.T7.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.9.9.2">Sentinel-5P SO2</th>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.9.9.1.m1.1"><semantics id="A1.T7.9.9.1.m1.1a"><mo id="A1.T7.9.9.1.m1.1.1" xref="A1.T7.9.9.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.9.9.1.m1.1b"><csymbol cd="latexml" id="A1.T7.9.9.1.m1.1.1.cmml" xref="A1.T7.9.9.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.9.9.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.9.9.1.m1.1d">∼</annotation></semantics></math>28x28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.3">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.5">1–12</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.6">1,188,864</td>
</tr>
<tr class="ltx_tr" id="A1.T7.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.10.10.2">Sentinel-5P O3</th>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.10.10.1.m1.1"><semantics id="A1.T7.10.10.1.m1.1a"><mo id="A1.T7.10.10.1.m1.1.1" xref="A1.T7.10.10.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.10.10.1.m1.1b"><csymbol cd="latexml" id="A1.T7.10.10.1.m1.1.1.cmml" xref="A1.T7.10.10.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.10.10.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.10.10.1.m1.1d">∼</annotation></semantics></math>28x28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.3">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.5">1–12</td>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.6">1,750,542</td>
</tr>
<tr class="ltx_tr" id="A1.T7.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.11.11.2">Copernicus DEM</th>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T7.11.11.1.m1.1"><semantics id="A1.T7.11.11.1.m1.1a"><mo id="A1.T7.11.11.1.m1.1.1" xref="A1.T7.11.11.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T7.11.11.1.m1.1b"><csymbol cd="latexml" id="A1.T7.11.11.1.m1.1.1.cmml" xref="A1.T7.11.11.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.11.11.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T7.11.11.1.m1.1d">∼</annotation></semantics></math>960x960</td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.3">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.4">219,543</td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.5">1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.6">219,543</td>
</tr>
<tr class="ltx_tr" id="A1.T7.11.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.1">Copernicus-Pretrain</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.3">219,543</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.4">3,311,214</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.11.13.1.6">15,720,353</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various foundation models' performance on the Copernicus-Bench benchmark.  The benchmark consists of 15 diverse Earth observation tasks, spanning different Sentinel missions and complexities (pre-processing, basic applications, specialized applications).  The models tested include single-modal, dual-modal, and multi-modal approaches.  Performance is evaluated using metrics appropriate for each task (e.g., mean Intersection over Union (mIoU) for segmentation, overall accuracy (OA) for classification, Root Mean Squared Error (RMSE) for regression).  The table shows the mean and standard deviation of three independent runs for each model and task, allowing for statistical significance testing. Note that certain tasks used different patch sizes for different sensors (S1, S2, S3, and S5P).  The best performance for each task is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 4: Benchmark results with representative single-, dual-, and multi-modal foundation models on Copernicus-Bench. We report three-run averages with standard deviations. *: patch size 16 for S1/2 (8 for S3, 4 for S5P). Best scores in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T8.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A2.T8.2.1.1.1">Sensor</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A2.T8.2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.1.1.2.1">
<span class="ltx_p" id="A2.T8.2.1.1.2.1.1" style="width:199.2pt;">Wavelengths (nm)</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A2.T8.2.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.1.1.3.1">
<span class="ltx_p" id="A2.T8.2.1.1.3.1.1" style="width:199.2pt;">Bandwidths (nm)</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.2.2.1.1">S1 GRD</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.2.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.2.1.2.1">
<span class="ltx_p" id="A2.T8.2.2.1.2.1.1" style="width:199.2pt;">5e7, 5e7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.2.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.2.1.3.1">
<span class="ltx_p" id="A2.T8.2.2.1.3.1.1" style="width:199.2pt;">1e9, 1e9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T8.2.3.2.1">S2 TOA</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.3.2.2.1">
<span class="ltx_p" id="A2.T8.2.3.2.2.1.1" style="width:199.2pt;">440, 490, 560, 665, 705, 740, 783, 842,
860, 940, 1370, 1610, 2190</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.3.2.3.1">
<span class="ltx_p" id="A2.T8.2.3.2.3.1.1" style="width:199.2pt;">20, 65, 35, 30, 15, 15, 20, 115,
20, 20, 30, 90, 180</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A2.T8.2.4.3.1">S3 OLCI</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T8.2.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.4.3.2.1">
<span class="ltx_p" id="A2.T8.2.4.3.2.1.1" style="width:199.2pt;">400, 412.5, 442.5, 490, 510, 560, 620, 665,
673.75, 681.25, 708.75, 753.75, 761.25, 764.375,
767.5, 778.75, 865, 885, 900, 940, 1020</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T8.2.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.4.3.3.1">
<span class="ltx_p" id="A2.T8.2.4.3.3.1.1" style="width:199.2pt;">15, 10, 10, 10, 10, 10, 10, 10,
7.5, 7.5, 10, 7.5, 7.5, 3.75,
2.5, 15, 20, 10, 10, 20, 40</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of linear regression models used to predict six different climate parameters (temperature, precipitation, surface pressure, sea-level pressure, and u/v wind components).  The models used different input data: raw coordinates, coordinates combined with embeddings from the Copernicus-FM model, and embeddings alone. The table shows the average RMSE and standard deviation (error bar) across three runs for each model and input combination. Lower RMSE values indicate better prediction accuracy.  The best performing model for each climate parameter is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 5: Linear regression results on 10-year mean and standard deviation (variability) of 6 climate parameters. We report three-run average RMSE scores with standard deviation (error bar). Best scores in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T9.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T9.5.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A2.T9.5.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.5.1.1.2">EuroSAT-S1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.5.1.1.3">EuroSAT-S2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T9.5.1.1.4">EuroSAT-RGB</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T9.5.2.1.1">metadata (drop 0.1)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.5.2.1.2">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.5.2.1.3">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.5.2.1.4">79.9</td>
</tr>
<tr class="ltx_tr" id="A2.T9.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.5.3.2.1">metadata (drop 0.3)</th>
<td class="ltx_td ltx_align_center" id="A2.T9.5.3.2.2">73.7</td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.3.2.3">86.3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.3.2.4">77.5</td>
</tr>
<tr class="ltx_tr" id="A2.T9.5.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.5.4.3.1">metadata (drop 0.5)</th>
<td class="ltx_td ltx_align_center" id="A2.T9.5.4.3.2">77.8</td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.4.3.3"><span class="ltx_text ltx_font_bold" id="A2.T9.5.4.3.3.1">89.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.4.3.4">78.7</td>
</tr>
<tr class="ltx_tr" id="A2.T9.5.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T9.5.5.4.1">metadata (drop 0.7)</th>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.4.2"><span class="ltx_text ltx_font_bold" id="A2.T9.5.5.4.2.1">81.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.4.3">89.5</td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.4.4"><span class="ltx_text ltx_font_bold" id="A2.T9.5.5.4.4.1">78.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A2.T9.5.6.5.1">metadata (drop 0.9)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.5.6.5.2">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.5.6.5.3">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.5.6.5.4">74.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares several existing Earth Observation (EO) pretraining datasets, highlighting key differences in terms of the sensor modalities used (e.g., RGB, multispectral, SAR), the spatial resolution of the imagery, the temporal coverage (number of time stamps), the total number of patches or images in the dataset, and the overall size of the dataset (in pixels or bytes). It provides a useful overview of the scale and scope of various publicly available EO datasets used for training foundation models.
> <details>
> <summary>read the caption</summary>
> Table 6: A comparison of existing EO pretraining datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T10.20">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T10.20.19.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T10.20.19.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T10.20.19.1.2">EuroSAT-S1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T10.20.19.1.3">EuroSAT-S2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T10.20.19.1.4">EuroSAT-RGB</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.20.20.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T10.20.20.1.1">no metadata</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.20.20.1.2">56.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.20.20.1.3">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.20.20.1.4">70.1</td>
</tr>
<tr class="ltx_tr" id="A2.T10.5.3" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T10.5.3.4"><span class="ltx_text" id="A2.T10.5.3.4.1" style="background-color:#EFEFEF;">+ location (x,y,z)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T10.3.1.1"><span class="ltx_text" id="A2.T10.3.1.1.1" style="background-color:#EFEFEF;">75.8 <span class="ltx_text" id="A2.T10.3.1.1.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.3.1.1.1.1.m1.1"><semantics id="A2.T10.3.1.1.1.1.m1.1a"><mo id="A2.T10.3.1.1.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#006400" stretchy="false" xref="A2.T10.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.3.1.1.1.1.m1.1b"><ci id="A2.T10.3.1.1.1.1.m1.1.1.cmml" xref="A2.T10.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.3.1.1.1.1.m1.1d">↑</annotation></semantics></math> 18.9</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.4.2.2"><span class="ltx_text" id="A2.T10.4.2.2.1" style="background-color:#EFEFEF;">88.7 <span class="ltx_text" id="A2.T10.4.2.2.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.4.2.2.1.1.m1.1"><semantics id="A2.T10.4.2.2.1.1.m1.1a"><mo id="A2.T10.4.2.2.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#006400" stretchy="false" xref="A2.T10.4.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.4.2.2.1.1.m1.1b"><ci id="A2.T10.4.2.2.1.1.m1.1.1.cmml" xref="A2.T10.4.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.4.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.4.2.2.1.1.m1.1d">↑</annotation></semantics></math> 0.5</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.5.3.3"><span class="ltx_text" id="A2.T10.5.3.3.1" style="background-color:#EFEFEF;">73.3 <span class="ltx_text" id="A2.T10.5.3.3.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.5.3.3.1.1.m1.1"><semantics id="A2.T10.5.3.3.1.1.m1.1a"><mo id="A2.T10.5.3.3.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#006400" stretchy="false" xref="A2.T10.5.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.5.3.3.1.1.m1.1b"><ci id="A2.T10.5.3.3.1.1.m1.1.1.cmml" xref="A2.T10.5.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.5.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.5.3.3.1.1.m1.1d">↑</annotation></semantics></math> 2.8</span></span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T10.8.6.4">/+ location (lon,lat)</th>
<td class="ltx_td ltx_align_center" id="A2.T10.6.4.1">78.2 <span class="ltx_text" id="A2.T10.6.4.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.6.4.1.1.m1.1"><semantics id="A2.T10.6.4.1.1.m1.1a"><mo id="A2.T10.6.4.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.6.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.6.4.1.1.m1.1b"><ci id="A2.T10.6.4.1.1.m1.1.1.cmml" xref="A2.T10.6.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.6.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.6.4.1.1.m1.1d">↑</annotation></semantics></math> 21.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.7.5.2">88.7 <span class="ltx_text" id="A2.T10.7.5.2.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.7.5.2.1.m1.1"><semantics id="A2.T10.7.5.2.1.m1.1a"><mo id="A2.T10.7.5.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.7.5.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.7.5.2.1.m1.1b"><ci id="A2.T10.7.5.2.1.m1.1.1.cmml" xref="A2.T10.7.5.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.7.5.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.7.5.2.1.m1.1d">↑</annotation></semantics></math> 0.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.8.6.3">76.5 <span class="ltx_text" id="A2.T10.8.6.3.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.8.6.3.1.m1.1"><semantics id="A2.T10.8.6.3.1.m1.1a"><mo id="A2.T10.8.6.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.8.6.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.8.6.3.1.m1.1b"><ci id="A2.T10.8.6.3.1.m1.1.1.cmml" xref="A2.T10.8.6.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.8.6.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.8.6.3.1.m1.1d">↑</annotation></semantics></math> 6.5</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T10.11.9" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T10.11.9.4"><span class="ltx_text" id="A2.T10.11.9.4.1" style="background-color:#EFEFEF;">+ area (raw)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T10.9.7.1"><span class="ltx_text" id="A2.T10.9.7.1.1" style="background-color:#EFEFEF;">77.8 <span class="ltx_text" id="A2.T10.9.7.1.1.1" style="color:#8B0000;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.9.7.1.1.1.m1.1"><semantics id="A2.T10.9.7.1.1.1.m1.1a"><mo id="A2.T10.9.7.1.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#8B0000" stretchy="false" xref="A2.T10.9.7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.9.7.1.1.1.m1.1b"><ci id="A2.T10.9.7.1.1.1.m1.1.1.cmml" xref="A2.T10.9.7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.9.7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.9.7.1.1.1.m1.1d">↓</annotation></semantics></math> 0.4</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.10.8.2"><span class="ltx_text" id="A2.T10.10.8.2.1" style="background-color:#EFEFEF;">88.1 <span class="ltx_text" id="A2.T10.10.8.2.1.1" style="color:#8B0000;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.10.8.2.1.1.m1.1"><semantics id="A2.T10.10.8.2.1.1.m1.1a"><mo id="A2.T10.10.8.2.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#8B0000" stretchy="false" xref="A2.T10.10.8.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.10.8.2.1.1.m1.1b"><ci id="A2.T10.10.8.2.1.1.m1.1.1.cmml" xref="A2.T10.10.8.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.10.8.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.10.8.2.1.1.m1.1d">↓</annotation></semantics></math> 0.6</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.11.9.3"><span class="ltx_text" id="A2.T10.11.9.3.1" style="background-color:#EFEFEF;">73.7 <span class="ltx_text" id="A2.T10.11.9.3.1.1" style="color:#8B0000;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.11.9.3.1.1.m1.1"><semantics id="A2.T10.11.9.3.1.1.m1.1a"><mo id="A2.T10.11.9.3.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#8B0000" stretchy="false" xref="A2.T10.11.9.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.11.9.3.1.1.m1.1b"><ci id="A2.T10.11.9.3.1.1.m1.1.1.cmml" xref="A2.T10.11.9.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.11.9.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.11.9.3.1.1.m1.1d">↓</annotation></semantics></math> 2.8</span></span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T10.14.12.4">/+ area (aug)</th>
<td class="ltx_td ltx_align_center" id="A2.T10.12.10.1">80.3 <span class="ltx_text" id="A2.T10.12.10.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.12.10.1.1.m1.1"><semantics id="A2.T10.12.10.1.1.m1.1a"><mo id="A2.T10.12.10.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.12.10.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.12.10.1.1.m1.1b"><ci id="A2.T10.12.10.1.1.m1.1.1.cmml" xref="A2.T10.12.10.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.12.10.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.12.10.1.1.m1.1d">↑</annotation></semantics></math> 2.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.13.11.2">89.3 <span class="ltx_text" id="A2.T10.13.11.2.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.13.11.2.1.m1.1"><semantics id="A2.T10.13.11.2.1.m1.1a"><mo id="A2.T10.13.11.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.13.11.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.13.11.2.1.m1.1b"><ci id="A2.T10.13.11.2.1.m1.1.1.cmml" xref="A2.T10.13.11.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.13.11.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.13.11.2.1.m1.1d">↑</annotation></semantics></math> 0.6</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T10.14.12.3">77.4 <span class="ltx_text" id="A2.T10.14.12.3.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.14.12.3.1.m1.1"><semantics id="A2.T10.14.12.3.1.m1.1a"><mo id="A2.T10.14.12.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.14.12.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.14.12.3.1.m1.1b"><ci id="A2.T10.14.12.3.1.m1.1.1.cmml" xref="A2.T10.14.12.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.14.12.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.14.12.3.1.m1.1d">↑</annotation></semantics></math> 0.8</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T10.17.15" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T10.17.15.4"><span class="ltx_text" id="A2.T10.17.15.4.1" style="background-color:#EFEFEF;">+ time (dayofyear)</span></th>
<td class="ltx_td ltx_align_center" id="A2.T10.15.13.1"><span class="ltx_text" id="A2.T10.15.13.1.1" style="background-color:#EFEFEF;">80.0 <span class="ltx_text" id="A2.T10.15.13.1.1.1" style="color:#8B0000;"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.15.13.1.1.1.m1.1"><semantics id="A2.T10.15.13.1.1.1.m1.1a"><mo id="A2.T10.15.13.1.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#8B0000" stretchy="false" xref="A2.T10.15.13.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.15.13.1.1.1.m1.1b"><ci id="A2.T10.15.13.1.1.1.m1.1.1.cmml" xref="A2.T10.15.13.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.15.13.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.15.13.1.1.1.m1.1d">↓</annotation></semantics></math> 0.3</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.16.14.2"><span class="ltx_text" id="A2.T10.16.14.2.1" style="background-color:#EFEFEF;">89.5 <span class="ltx_text" id="A2.T10.16.14.2.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.16.14.2.1.1.m1.1"><semantics id="A2.T10.16.14.2.1.1.m1.1a"><mo id="A2.T10.16.14.2.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#006400" stretchy="false" xref="A2.T10.16.14.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.16.14.2.1.1.m1.1b"><ci id="A2.T10.16.14.2.1.1.m1.1.1.cmml" xref="A2.T10.16.14.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.16.14.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.16.14.2.1.1.m1.1d">↑</annotation></semantics></math> 0.2</span></span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.17.15.3"><span class="ltx_text" id="A2.T10.17.15.3.1" style="background-color:#EFEFEF;">78.9 <span class="ltx_text" id="A2.T10.17.15.3.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.17.15.3.1.1.m1.1"><semantics id="A2.T10.17.15.3.1.1.m1.1a"><mo id="A2.T10.17.15.3.1.1.m1.1.1" mathbackground="#EFEFEF" mathcolor="#006400" stretchy="false" xref="A2.T10.17.15.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.17.15.3.1.1.m1.1b"><ci id="A2.T10.17.15.3.1.1.m1.1.1.cmml" xref="A2.T10.17.15.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.17.15.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.17.15.3.1.1.m1.1d">↑</annotation></semantics></math> 1.5</span></span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.20.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T10.20.18.4">/+ time (absolute)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.18.16.1">81.0 <span class="ltx_text" id="A2.T10.18.16.1.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.18.16.1.1.m1.1"><semantics id="A2.T10.18.16.1.1.m1.1a"><mo id="A2.T10.18.16.1.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.18.16.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.18.16.1.1.m1.1b"><ci id="A2.T10.18.16.1.1.m1.1.1.cmml" xref="A2.T10.18.16.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.18.16.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.18.16.1.1.m1.1d">↑</annotation></semantics></math> 0.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.19.17.2">89.5 <span class="ltx_text" id="A2.T10.19.17.2.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.19.17.2.1.m1.1"><semantics id="A2.T10.19.17.2.1.m1.1a"><mo id="A2.T10.19.17.2.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.19.17.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.19.17.2.1.m1.1b"><ci id="A2.T10.19.17.2.1.m1.1.1.cmml" xref="A2.T10.19.17.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.19.17.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.19.17.2.1.m1.1d">↑</annotation></semantics></math> 0.2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.20.18.3">78.9 <span class="ltx_text" id="A2.T10.20.18.3.1" style="color:#006400;"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.20.18.3.1.m1.1"><semantics id="A2.T10.20.18.3.1.m1.1a"><mo id="A2.T10.20.18.3.1.m1.1.1" mathcolor="#006400" stretchy="false" xref="A2.T10.20.18.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.20.18.3.1.m1.1b"><ci id="A2.T10.20.18.3.1.m1.1.1.cmml" xref="A2.T10.20.18.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.20.18.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.20.18.3.1.m1.1d">↑</annotation></semantics></math> 1.5</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the Copernicus-Pretrain dataset focusing on the subset containing all eight modalities (220K grid cells).  It provides the image size, the number of grid cells, patches, timestamps, and the total number of images for each of the eight Sentinel missions included. The table offers a precise view of the dataset's composition and data volume for researchers seeking to understand the dataset's scale and diversity.
> <details>
> <summary>read the caption</summary>
> Table 7: Copernicus-Pretrain dataset characteristics (joint 220K subset).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T11.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T11.4.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T11.4.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T11.4.1.1.2"># tasks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T11.4.1.1.3">task types</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T11.4.1.1.4">modalities</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T11.4.1.1.5">resolution</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T11.4.1.1.6">task range</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T11.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T11.4.2.1.1">SustainBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T11.4.2.1.2">15</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.4.2.1.3">cls, seg, reg</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.4.2.1.4">RGB, MS</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.4.2.1.5">0.6–30 m</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T11.4.2.1.6">surface</td>
</tr>
<tr class="ltx_tr" id="A3.T11.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.3.2.1">GEO-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.3.2.2">12</th>
<td class="ltx_td ltx_align_left" id="A3.T11.4.3.2.3">cls, seg</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.3.2.4">RGB, MS, HS, SAR</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.3.2.5">0.1–15 m</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.3.2.6">surface</td>
</tr>
<tr class="ltx_tr" id="A3.T11.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.4.3.1">FoMo-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.4.3.2">16</th>
<td class="ltx_td ltx_align_left" id="A3.T11.4.4.3.3">cls, seg, obj</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.4.3.4">RGB, MS, HS, SAR</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.4.3.5">0.01–60 m</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.4.3.6">surface</td>
</tr>
<tr class="ltx_tr" id="A3.T11.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.5.4.1">PhilEO Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.11849v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T11.4.5.4.2">3</th>
<td class="ltx_td ltx_align_left" id="A3.T11.4.5.4.3">seg, reg</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.5.4.4">MS</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.5.4.5">10 m</td>
<td class="ltx_td ltx_align_left" id="A3.T11.4.5.4.6">surface</td>
</tr>
<tr class="ltx_tr" id="A3.T11.4.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.1">Copernicus-Bench (ours)</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.2">15</th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.3">cls, seg, reg, cd</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.4">MS, SAR, atmos. var.</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.5">10–1000 m</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.4.6.5.6">surface, atmosphere</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific wavelengths and their corresponding bandwidths used for each of the spectral sensors included in the Copernicus-FM pretraining dataset.  This detailed spectral information is crucial for understanding how the model processes different spectral bands, allowing for a more comprehensive understanding of the model's architecture and functionality.
> <details>
> <summary>read the caption</summary>
> Table 8: Wavelengths and bandwidths for different spectral sensors in Copernicus-FM pretraining.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11849/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11849/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}