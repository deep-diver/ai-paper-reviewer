---
title: "NuiScene: Exploring Efficient Generation of Unbounded Outdoor Scenes"
summary: "NuiScene: Enables efficient & unbounded outdoor scene generation by encoding scene chunks as uniform vector sets and outpainting."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Simon Fraser University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16375 {{< /keyword >}}
{{< keyword icon="writer" >}} Han-Hung Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16375" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16375" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16375/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Generating expansive outdoor scenes** is crucial for VR, games, and CGI, but is traditionally labor-intensive. Unlike indoor scenes, outdoor environments present unique challenges like varying heights and rapid landscape creation. Existing methods are limited by low geometric quality and scene variation. Solutions for unbounded indoor scenes struggle with skyscrapers and high memory usage, as they rely on spatially structured latents like triplanes or dense feature grids. Scaling these methods for outdoor environments results in inefficiency and detail loss. Datasets lack high-quality geometry and height variation, hindering effective model training.



This paper explores generating large outdoor scenes with **NuiScene**, ranging from castles to high-rises, through an efficient approach that encodes scene chunks as uniform vector sets for improved compression. An outpainting model is trained to enhance coherence and speed up the generation. The team curates a small but high-quality dataset, enabling joint training on scenes of varying styles. The work facilitates blending of different environments, such as rural houses and city skyscrapers within the same scene.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a novel and efficient approach using vector sets to represent scene chunks, improving compression and performance in outdoor scene generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents an explicit outpainting model that enhances coherence and accelerates generation by eliminating extra diffusion steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Curates a high-quality dataset (NuiScene43) that supports joint training on heterogeneous scenes, allowing for blending of different environments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper on the **NuiScene dataset and methodology** helps lower the barrier for outdoor scene generation. It enables researchers to **explore AI-driven world-building** for games, VR, and film more efficiently. The method **improves scene creation speed and cohesion**, opening doors for more complex virtual environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16375/x2.png)

> 🔼 This figure showcases the capabilities of the model to generate expansive and coherent outdoor scenes efficiently.  It displays multiple examples of large-scale outdoor environments, demonstrating the model's ability to handle diverse scene geometries and details. The scenes presented include various elements, such as castles, high-rises, and natural landscapes, highlighting the model's capacity for generating complex and diverse environments. Note that the scenes in the image have been textured using SceneTex.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our model enables efficient, unbounded generation of large outdoor scene geometry. Scenes are textured with SceneTex [6].
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.8.8.6">
<tr class="ltx_tr" id="S4.T2.8.8.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.8.8.6.7.1">Method</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.2">BS</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.3"># Latents</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.4">Output Res</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.5">S</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.6">Time (hr)</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T2.8.8.6.7.7">Mem. (GB)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.4.2.2.3" rowspan="3"><span class="ltx_text" id="S4.T2.4.4.2.2.3.1">triplane</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.4.4.2.2.4">40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.3.3.1.1.1"><math alttext="3\times 4^{2}" class="ltx_Math" display="inline" id="S4.T2.3.3.1.1.1.m1.1"><semantics id="S4.T2.3.3.1.1.1.m1.1a"><mrow id="S4.T2.3.3.1.1.1.m1.1.1" xref="S4.T2.3.3.1.1.1.m1.1.1.cmml"><mn id="S4.T2.3.3.1.1.1.m1.1.1.2" xref="S4.T2.3.3.1.1.1.m1.1.1.2.cmml">3</mn><mo id="S4.T2.3.3.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.3.3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.3.3.1.1.1.m1.1.1.3" xref="S4.T2.3.3.1.1.1.m1.1.1.3.cmml"><mn id="S4.T2.3.3.1.1.1.m1.1.1.3.2" xref="S4.T2.3.3.1.1.1.m1.1.1.3.2.cmml">4</mn><mn id="S4.T2.3.3.1.1.1.m1.1.1.3.3" xref="S4.T2.3.3.1.1.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.1.1.m1.1b"><apply id="S4.T2.3.3.1.1.1.m1.1.1.cmml" xref="S4.T2.3.3.1.1.1.m1.1.1"><times id="S4.T2.3.3.1.1.1.m1.1.1.1.cmml" xref="S4.T2.3.3.1.1.1.m1.1.1.1"></times><cn id="S4.T2.3.3.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.3.3.1.1.1.m1.1.1.2">3</cn><apply id="S4.T2.3.3.1.1.1.m1.1.1.3.cmml" xref="S4.T2.3.3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.3.3.1.1.1.m1.1.1.3.1.cmml" xref="S4.T2.3.3.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.3.3.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.3.3.1.1.1.m1.1.1.3.2">4</cn><cn id="S4.T2.3.3.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.3.3.1.1.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.1.1.m1.1c">3\times 4^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.1.1.m1.1d">3 × 4 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.4.4.2.2.2"><math alttext="3\times 32^{2}" class="ltx_Math" display="inline" id="S4.T2.4.4.2.2.2.m1.1"><semantics id="S4.T2.4.4.2.2.2.m1.1a"><mrow id="S4.T2.4.4.2.2.2.m1.1.1" xref="S4.T2.4.4.2.2.2.m1.1.1.cmml"><mn id="S4.T2.4.4.2.2.2.m1.1.1.2" xref="S4.T2.4.4.2.2.2.m1.1.1.2.cmml">3</mn><mo id="S4.T2.4.4.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.4.4.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S4.T2.4.4.2.2.2.m1.1.1.3" xref="S4.T2.4.4.2.2.2.m1.1.1.3.cmml"><mn id="S4.T2.4.4.2.2.2.m1.1.1.3.2" xref="S4.T2.4.4.2.2.2.m1.1.1.3.2.cmml">32</mn><mn id="S4.T2.4.4.2.2.2.m1.1.1.3.3" xref="S4.T2.4.4.2.2.2.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.2.2.2.m1.1b"><apply id="S4.T2.4.4.2.2.2.m1.1.1.cmml" xref="S4.T2.4.4.2.2.2.m1.1.1"><times id="S4.T2.4.4.2.2.2.m1.1.1.1.cmml" xref="S4.T2.4.4.2.2.2.m1.1.1.1"></times><cn id="S4.T2.4.4.2.2.2.m1.1.1.2.cmml" type="integer" xref="S4.T2.4.4.2.2.2.m1.1.1.2">3</cn><apply id="S4.T2.4.4.2.2.2.m1.1.1.3.cmml" xref="S4.T2.4.4.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.4.4.2.2.2.m1.1.1.3.1.cmml" xref="S4.T2.4.4.2.2.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.4.4.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.4.4.2.2.2.m1.1.1.3.2">32</cn><cn id="S4.T2.4.4.2.2.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.4.4.2.2.2.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.2.2.2.m1.1c">3\times 32^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.2.2.2.m1.1d">3 × 32 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.4.4.2.2.5">6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.4.4.2.2.6">35.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T2.4.4.2.2.7">35.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.4.4">
<td class="ltx_td ltx_align_right" id="S4.T2.6.6.4.4.3">40</td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.3.3.1"><math alttext="3\times 4^{2}" class="ltx_Math" display="inline" id="S4.T2.5.5.3.3.1.m1.1"><semantics id="S4.T2.5.5.3.3.1.m1.1a"><mrow id="S4.T2.5.5.3.3.1.m1.1.1" xref="S4.T2.5.5.3.3.1.m1.1.1.cmml"><mn id="S4.T2.5.5.3.3.1.m1.1.1.2" xref="S4.T2.5.5.3.3.1.m1.1.1.2.cmml">3</mn><mo id="S4.T2.5.5.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.5.5.3.3.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.5.5.3.3.1.m1.1.1.3" xref="S4.T2.5.5.3.3.1.m1.1.1.3.cmml"><mn id="S4.T2.5.5.3.3.1.m1.1.1.3.2" xref="S4.T2.5.5.3.3.1.m1.1.1.3.2.cmml">4</mn><mn id="S4.T2.5.5.3.3.1.m1.1.1.3.3" xref="S4.T2.5.5.3.3.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.3.3.1.m1.1b"><apply id="S4.T2.5.5.3.3.1.m1.1.1.cmml" xref="S4.T2.5.5.3.3.1.m1.1.1"><times id="S4.T2.5.5.3.3.1.m1.1.1.1.cmml" xref="S4.T2.5.5.3.3.1.m1.1.1.1"></times><cn id="S4.T2.5.5.3.3.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.5.5.3.3.1.m1.1.1.2">3</cn><apply id="S4.T2.5.5.3.3.1.m1.1.1.3.cmml" xref="S4.T2.5.5.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.5.5.3.3.1.m1.1.1.3.1.cmml" xref="S4.T2.5.5.3.3.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.5.5.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.5.5.3.3.1.m1.1.1.3.2">4</cn><cn id="S4.T2.5.5.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.5.5.3.3.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.3.3.1.m1.1c">3\times 4^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.3.3.1.m1.1d">3 × 4 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T2.6.6.4.4.2"><math alttext="3\times 64^{2}" class="ltx_Math" display="inline" id="S4.T2.6.6.4.4.2.m1.1"><semantics id="S4.T2.6.6.4.4.2.m1.1a"><mrow id="S4.T2.6.6.4.4.2.m1.1.1" xref="S4.T2.6.6.4.4.2.m1.1.1.cmml"><mn id="S4.T2.6.6.4.4.2.m1.1.1.2" xref="S4.T2.6.6.4.4.2.m1.1.1.2.cmml">3</mn><mo id="S4.T2.6.6.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.6.6.4.4.2.m1.1.1.1.cmml">×</mo><msup id="S4.T2.6.6.4.4.2.m1.1.1.3" xref="S4.T2.6.6.4.4.2.m1.1.1.3.cmml"><mn id="S4.T2.6.6.4.4.2.m1.1.1.3.2" xref="S4.T2.6.6.4.4.2.m1.1.1.3.2.cmml">64</mn><mn id="S4.T2.6.6.4.4.2.m1.1.1.3.3" xref="S4.T2.6.6.4.4.2.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.4.4.2.m1.1b"><apply id="S4.T2.6.6.4.4.2.m1.1.1.cmml" xref="S4.T2.6.6.4.4.2.m1.1.1"><times id="S4.T2.6.6.4.4.2.m1.1.1.1.cmml" xref="S4.T2.6.6.4.4.2.m1.1.1.1"></times><cn id="S4.T2.6.6.4.4.2.m1.1.1.2.cmml" type="integer" xref="S4.T2.6.6.4.4.2.m1.1.1.2">3</cn><apply id="S4.T2.6.6.4.4.2.m1.1.1.3.cmml" xref="S4.T2.6.6.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.6.6.4.4.2.m1.1.1.3.1.cmml" xref="S4.T2.6.6.4.4.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.6.6.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.6.6.4.4.2.m1.1.1.3.2">64</cn><cn id="S4.T2.6.6.4.4.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.6.6.4.4.2.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.4.4.2.m1.1c">3\times 64^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.4.4.2.m1.1d">3 × 64 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T2.6.6.4.4.4">6</td>
<td class="ltx_td ltx_align_right" id="S4.T2.6.6.4.4.5">58.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T2.6.6.4.4.6">55.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.6.6">
<td class="ltx_td ltx_align_right" id="S4.T2.8.8.6.6.3">40</td>
<td class="ltx_td ltx_align_right" id="S4.T2.7.7.5.5.1"><math alttext="3\times 4^{2}" class="ltx_Math" display="inline" id="S4.T2.7.7.5.5.1.m1.1"><semantics id="S4.T2.7.7.5.5.1.m1.1a"><mrow id="S4.T2.7.7.5.5.1.m1.1.1" xref="S4.T2.7.7.5.5.1.m1.1.1.cmml"><mn id="S4.T2.7.7.5.5.1.m1.1.1.2" xref="S4.T2.7.7.5.5.1.m1.1.1.2.cmml">3</mn><mo id="S4.T2.7.7.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.7.7.5.5.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.7.7.5.5.1.m1.1.1.3" xref="S4.T2.7.7.5.5.1.m1.1.1.3.cmml"><mn id="S4.T2.7.7.5.5.1.m1.1.1.3.2" xref="S4.T2.7.7.5.5.1.m1.1.1.3.2.cmml">4</mn><mn id="S4.T2.7.7.5.5.1.m1.1.1.3.3" xref="S4.T2.7.7.5.5.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.5.5.1.m1.1b"><apply id="S4.T2.7.7.5.5.1.m1.1.1.cmml" xref="S4.T2.7.7.5.5.1.m1.1.1"><times id="S4.T2.7.7.5.5.1.m1.1.1.1.cmml" xref="S4.T2.7.7.5.5.1.m1.1.1.1"></times><cn id="S4.T2.7.7.5.5.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.7.7.5.5.1.m1.1.1.2">3</cn><apply id="S4.T2.7.7.5.5.1.m1.1.1.3.cmml" xref="S4.T2.7.7.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.7.7.5.5.1.m1.1.1.3.1.cmml" xref="S4.T2.7.7.5.5.1.m1.1.1.3">superscript</csymbol><cn id="S4.T2.7.7.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.7.7.5.5.1.m1.1.1.3.2">4</cn><cn id="S4.T2.7.7.5.5.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.7.7.5.5.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.5.5.1.m1.1c">3\times 4^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.5.5.1.m1.1d">3 × 4 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T2.8.8.6.6.2"><math alttext="3\times 128^{2}" class="ltx_Math" display="inline" id="S4.T2.8.8.6.6.2.m1.1"><semantics id="S4.T2.8.8.6.6.2.m1.1a"><mrow id="S4.T2.8.8.6.6.2.m1.1.1" xref="S4.T2.8.8.6.6.2.m1.1.1.cmml"><mn id="S4.T2.8.8.6.6.2.m1.1.1.2" xref="S4.T2.8.8.6.6.2.m1.1.1.2.cmml">3</mn><mo id="S4.T2.8.8.6.6.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.8.8.6.6.2.m1.1.1.1.cmml">×</mo><msup id="S4.T2.8.8.6.6.2.m1.1.1.3" xref="S4.T2.8.8.6.6.2.m1.1.1.3.cmml"><mn id="S4.T2.8.8.6.6.2.m1.1.1.3.2" xref="S4.T2.8.8.6.6.2.m1.1.1.3.2.cmml">128</mn><mn id="S4.T2.8.8.6.6.2.m1.1.1.3.3" xref="S4.T2.8.8.6.6.2.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.6.6.2.m1.1b"><apply id="S4.T2.8.8.6.6.2.m1.1.1.cmml" xref="S4.T2.8.8.6.6.2.m1.1.1"><times id="S4.T2.8.8.6.6.2.m1.1.1.1.cmml" xref="S4.T2.8.8.6.6.2.m1.1.1.1"></times><cn id="S4.T2.8.8.6.6.2.m1.1.1.2.cmml" type="integer" xref="S4.T2.8.8.6.6.2.m1.1.1.2">3</cn><apply id="S4.T2.8.8.6.6.2.m1.1.1.3.cmml" xref="S4.T2.8.8.6.6.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.8.8.6.6.2.m1.1.1.3.1.cmml" xref="S4.T2.8.8.6.6.2.m1.1.1.3">superscript</csymbol><cn id="S4.T2.8.8.6.6.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T2.8.8.6.6.2.m1.1.1.3.2">128</cn><cn id="S4.T2.8.8.6.6.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T2.8.8.6.6.2.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.6.6.2.m1.1c">3\times 128^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.6.6.2.m1.1d">3 × 128 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T2.8.8.6.6.4">6</td>
<td class="ltx_td ltx_align_right" id="S4.T2.8.8.6.6.5">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T2.8.8.6.6.6">OOM</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.6.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.1">vecset</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.2">40</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.3">16</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.4">-</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.5">-</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.6">36.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.8.8.6.8.7">36.6</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of 3D scene reconstruction results using different Variational Autoencoders (VAEs) as backbones.  It evaluates the performance of reconstruction using two different height measurements:   1.  **ĥ (h-hat):** Reconstruction using the *predicted* height of the scene chunk. 2.  **~h (h-tilde):** Reconstruction using the *ground truth* height of the scene chunk.  The table compares the performance across various VAE architectures using metrics such as Intersection over Union (IoU), Chamfer Distance (CD), and F-Score.  These metrics provide insights into the accuracy and completeness of the reconstructed scenes, highlighting the impact of the VAE choice on the reconstruction's fidelity and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison of reconstruction across different VAE backbones. Here h^^ℎ\hat{h}over^ start_ARG italic_h end_ARG indicates that the predicted height was used for the occupancy prediction and h~~ℎ\tilde{h}over~ start_ARG italic_h end_ARG the ground truth height.
> </details>





### In-depth insights


#### Unbounded Gen
The research delves into the complexities of **unbounded scene generation**, differentiating itself from prior work often confined to indoor environments. A significant challenge lies in handling the **vast height variations** typical of outdoor scenes, like skyscrapers dwarfing smaller structures. Existing methods that rely on spatially structured latents, such as triplanes or dense feature grids, struggle with **scalability and memory efficiency** when applied to scenes with such diverse heights. Naive scaling leads to either memory overload or detail loss. To overcome these limitations, the paper introduces a more efficient approach using vector sets for compressing scene chunks, promising better performance and compression compared to spatially structured latents. The introduction of an explicit outpainting model further addresses the need for **coherent, unbounded generation** by learning to predict new chunks conditioned on existing ones. This avoids extra diffusion steps associated with resampling-based inpainting, enabling **faster and more efficient scene creation**. 

#### Vector vs Triplane
The vector vs. triplane analysis centers on comparing different latent space representations for scene generation. **Vector sets** offer a compact, uniform representation, especially beneficial for scenes with varying heights, as seen in outdoor environments. They avoid the memory issues and detail loss that occur when naively scaling triplanes, a spatially structured latent space. Triplanes might struggle with tall structures due to coordinate clamping, where as **vector** representation better compresses and can handle scaling with flexible querying due to their cross-attention mechanism. Also vector representation is less computationally intensive in terms of memory requirements.

#### Explicit Outpaint
The concept of 'Explicit Outpainting' represents a strategic shift in generative modeling, particularly for unbounded scenes. Instead of relying on iterative, resampling-based inpainting techniques like RePaint, this approach advocates for **directly training a diffusion model** to generate content outside the existing boundaries. This tackles limitations of methods requiring extra diffusion steps, thus improving the speed. By **conditioning the generation** on whole, previously generated chunks, context is preserved effectively, potentially enhancing coherency. 'Explicit' training may allow greater control over style and content in the new areas, also reducing error accumulation from repeated resampling. By **streamlining generation**, explicit outpainting offers an efficient way to create large, continuous environments, while maintaining quality.

#### Hetero. Training
Heterogeneous training, a concept not explicitly detailed in the provided text, could involve training a model using diverse data sources or architectures. This might entail leveraging datasets with varying levels of quality or annotation, necessitating strategies to mitigate bias and ensure robust performance. Alternatively, it could refer to employing different model architectures within a single training pipeline, such as combining convolutional and transformer networks to capture complementary features. The potential benefits include improved generalization, adaptability to diverse input modalities, and enhanced robustness against adversarial attacks. However, challenges may arise in terms of data alignment, model synchronization, and computational complexity. Careful consideration must be given to weighting the contributions of different data sources or architectures, as well as developing effective strategies for knowledge transfer and fusion. Data curation, preprocessing techniques, and suitable network architectures are also really important.

#### NuiScene43 Limit
Considering a hypothetical section titled "NuiScene43 Limit," it likely discusses the **constraints and boundaries** of the NuiScene43 dataset. This could encompass several aspects. One major limitation probably revolves around the **dataset size**; with only 43 scenes, the diversity of environments might be restricted, potentially leading to overfitting or a lack of generalization to completely novel scene types. Another constraint could be the **resolution and detail** of the 3D meshes within NuiScene43. Pre-processing steps, such as ground fixing, although beneficial for training, can **simplify the original data**. The dataset might also face limitations related to **annotation quality and scope**. Finally, the limited dataset size could impact the **controllability of the generative model**, making it difficult to condition the generation on specific attributes or styles effectively.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16375/x3.png)

> 🔼 This figure showcases a scene generated by the model which is trained on multiple scenes from the NuiScene43 dataset. The scene demonstrates the model's ability to combine elements from diverse architectural styles, including castles and skyscrapers, into a cohesive whole.  The scene is textured using SceneTex. The supplemental material (Figure 16) provides a view of the untextured mesh for further analysis.
> <details>
> <summary>read the caption</summary>
> Figure 2: A scene generated by our model, trained on multiple scenes. We texture the scene using SceneTex. As shown, our model combines elements from different scenes in the dataset such as castles and skyscrapers. For the untextured mesh, please see the supplement (Figure 16).
> </details>



![](https://arxiv.org/html/2503.16375/x4.png)

> 🔼 This figure compares different latent representations used in generating 3D scenes with varying heights.  Spatially structured latents, such as triplanes, struggle with scenes containing varied heights. Scaling either the latent resolution or the chunk size to accommodate different heights leads to memory issues or loss of detail.  In contrast, vector sets provide a compact and uniform representation that efficiently handles scenes with varying heights, thus avoiding memory problems and detail loss.
> <details>
> <summary>read the caption</summary>
> Figure 3:  To accommodate scene chunks of varying heights, vector sets offer a compact and uniform representation, whereas prior work relies on spatially structured latents that require scaling either the latent resolution or the chunk itself for compatibility, resulting in high memory usage or loss of detail.
> </details>



![](https://arxiv.org/html/2503.16375/x5.png)

> 🔼 This figure illustrates the architecture of the VAE (Variational Autoencoder) and diffusion models used in the paper.  The VAE uses vector sets for efficient compression of the latent space, representing scene chunks as uniform vector sets instead of spatially structured latents which improves memory efficiency and performance. The diffusion model is designed for outpainting, allowing the model to efficiently generate unbounded scenes.  It incorporates four different conditioning settings during training to facilitate fast generation in a raster-scan pattern during inference. This ensures that the model can seamlessly generate new chunks of the scene by taking into account the previously generated parts. The diagram details the data flow for both the encoder and decoder stages in the VAE, as well as the input and output elements of the diffusion model, highlighting the conditional outpainting process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of our VAE and diffusion models. For the VAE we use vector sets [49] for latent compression. For the diffusion model we train a conditional outpainting model with four different settings to allow for fast generation in a raster scan pattern during inference.
> </details>



![](https://arxiv.org/html/2503.16375/x6.png)

> 🔼 This figure shows a sample scene after undergoing the data curation pipeline described in the paper.  The pipeline involves several steps, including filtering Objaverse to select high-quality scenes, establishing a consistent scale across scenes, and converting the mesh to an occupancy grid.  This occupancy grid is then used as input for the marching cubes algorithm, which generates a 3D mesh.  The resulting mesh is a more refined representation of the scene suitable for training the model.
> <details>
> <summary>read the caption</summary>
> Figure 5: A sample scene processed using our curation pipeline. The occupancy is processed with marching cubes to get the mesh.
> </details>



![](https://arxiv.org/html/2503.16375/x7.png)

> 🔼 This figure compares the performance of vector set and triplane methods for generating unbounded outdoor scenes.  The vector set method demonstrates superior performance in terms of detail and coherence, while the triplane method struggles with details and introduces artifacts.  The images highlight differences in how smoothly the models generate contiguous sections of the scene, particularly noticeable in the examples of road and bridge construction where the triplane model shows more errors. This is shown through both full-scene renders and zoomed-in sections for detailed analysis. 
> <details>
> <summary>read the caption</summary>
> Figure 6: We show generation results for the vector set and triplane baseline trained on a single scene. Orange boxes and zoomed-in renders highlight chunk outpainting coherence, while blue boxes illustrate scene geometry (zoom in for details). Zoomed-in renders may also have adjusted camera angles for clarity. The triplane model struggles with building details and introduces noisy artifacts, whereas the vector set model has better fidelity. While models can generate continuous chunks with smoothly connected roads and pipes (orange box, right), they sometimes fail to maintain coherence across chunks, leading to broken bridges (orange box, left).
> </details>



![](https://arxiv.org/html/2503.16375/x8.png)

> 🔼 This table compares the computational resources required for training a Variational Autoencoder (VAE) with two different latent representations: vector sets and triplanes.  The experiment used two NVIDIA L40S GPUs.  The table shows the batch size, the size of the latent vector (#Latents), the output resolution of the triplane after deconvolution (Output Res), training time, and GPU memory usage. It highlights that increasing the triplane resolution significantly increases memory consumption, resulting in an out-of-memory (OOM) error.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of VAE training resources for vector set vs triplane backbones. Training for all experiments was run on 2 L40S GPUs, total batch size and memory across 2 gpus are reported. The # Latents is the size of the latent for the VAE backbone and Output Res indicates the triplane size after deconvolution. Increasing the output triplane resolution to 3×12823superscript12823\times 128^{2}3 × 128 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT causes the model to exceed memory limits (OOM).
> </details>



![](https://arxiv.org/html/2503.16375/x9.png)

> 🔼 This table compares the computational resources required for training diffusion models using two different latent representations: vector sets and triplanes.  The training was performed on a single NVIDIA A6000 GPU. The table shows the batch size used, the number of tokens in the transformer (related to model complexity), the total training time in hours, and the GPU memory (VRAM) used in gigabytes (GB). This allows for a comparison of the efficiency of each representation in terms of training time and memory usage.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of difffusion training resources of vector set representation against triplanes. Training across all experiments was run on 1 A6000 GPU. The # Tokens are the token length for the transformer.
> </details>



![](https://arxiv.org/html/2503.16375/x10.png)

> 🔼 This figure compares the results of using RePaint, a resampling-based inpainting method, with different numbers of resampling steps (r=1 and r=5) for generating unbounded scenes.  It visually demonstrates the impact of the number of resampling steps on the coherence and quality of the generated scene. More resampling steps generally lead to better coherence but at the cost of increased computational time.
> <details>
> <summary>read the caption</summary>
> Figure 7: We compare generation results using RePaint [31] for outpainting for resampling steps r=1𝑟1r=1italic_r = 1 and r=5𝑟5r=5italic_r = 5.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-texture-overview.png)

> 🔼 Figure 8 demonstrates the NuiScene model's ability to generate large-scale outdoor scenes by blending elements from multiple source scenes.  Part (a) compares the model's output (top-right: raw geometry; top-left: textured using SceneTex) to the results of feeding the model's output into a separate 3D reconstruction model, Trellis [45]. This comparison highlights the superior geometric detail preserved by the NuiScene model. Part (b) showcases a complete scene generated by NuiScene, demonstrating its ability to seamlessly integrate elements from diverse input scenes, creating a cohesive and complex environment.
> <details>
> <summary>read the caption</summary>
> Figure 8: We present results from our NuiScene model trained on multiple scenes. In Figure (a), the top-right shows the generated geometry, while the top-left displays the textured model using SceneTex [6]. We render these models and feed them into Trellis [45] for reconstruction (zoom in to see details). It can be seen that our method showcases better geometric detail. Figure (b) presents a large scene generated by our model, showcasing its ability to blend elements from different scenes in the dataset.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-texture-100.png)

> 🔼 Figure 9 visualizes the process of selecting training data from scenes.  Two maps are generated for each scene: a sample map and a depth mean deviation map. The sample map is a binary representation, where '1' indicates fully occupied quad-chunk areas suitable for training data and '0' shows empty areas. This ensures that only meaningful chunks are selected, improving the quality and efficiency of training.  The depth mean deviation map provides a measure of depth variation within each chunk.  This map is used as a filter, excluding overly flat regions from training data, further increasing training data quality and mitigating potential bias towards less diverse data.
> <details>
> <summary>read the caption</summary>
> Figure 9: Sample and depth mean deviation maps are calculated for sampling chunks from scenes. The sample map is a binary map defining valid x and z coordinates where quad chunks are fully occupied. And the depth mean variation map is used to filter out overly flat regions.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-texture-200.png)

> 🔼 Figure 10 shows three additional scenes used to train the multi-scene model. The top two scenes are actually sub-parts from the same scene in the Objaverse dataset.  These three scenes were preprocessed to have consistent ground geometry before the meshes were extracted using the marching cubes algorithm from the occupancy grids.
> <details>
> <summary>read the caption</summary>
> Figure 10: Three additional scenes used to train our multi-scene model. The top two sub-scenes were split from the same scene in Objaverse for occupancy calculation. The shown scenes have been processed with fixed ground geometries, and their meshes were extracted using the marching cubes algorithm on the occupancy grid.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-texture-250.png)

> 🔼 This figure illustrates the camera trajectory used for capturing images to generate textures for the scenes.  The red arrows show the path of the camera, which is designed as a snake-scan pattern to ensure comprehensive coverage of the scene's details. The long side of the trajectory covers 2 meters and consists of 200 frames, while the shorter side covers 0.5 meters and consists of 50 frames. The total number of frames depends on the scene's shape and size, ranging from approximately 1200 to 1800 frames.
> <details>
> <summary>read the caption</summary>
> (a) An illustration of our choice for the camera trajectory, indicated by red arrows.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-texture-450.png)

> 🔼 This image shows a rendering of a scene from a specific camera position (position 1) as part of a camera trajectory used for capturing images to texture a large outdoor scene. The camera's trajectory is designed for comprehensive coverage of the scene's details and consists of multiple camera positions and viewpoints, ensuring that different parts of the scene are captured effectively. The rendered image provides a snapshot of the textured scene from one of the key viewpoints along this trajectory.
> <details>
> <summary>read the caption</summary>
> (b) Image rendered at position (1).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-scene-1.png)

> 🔼 This image is one of a series of images showing different viewpoints of a scene being rendered for texturing. The scene is an outdoor urban environment. The image shows a perspective view of the scene from a moderately high angle. The image is used to illustrate the sampling technique used for collecting data for training an AI model that creates similar scenes. This particular image shows a portion of a city with buildings and roads visible.
> <details>
> <summary>read the caption</summary>
> (c) Image rendered at position (2).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-textured-1.png)

> 🔼 This image shows one of the four viewpoints used in the creation of the camera trajectory for texturing the scene with SceneTex.  The camera is positioned to capture a particular section of the large-scale outdoor scene. The full trajectory consists of multiple such viewpoints, each captured as a frame to ensure comprehensive coverage for accurate and high-quality texture synthesis. The placement of the viewpoints is designed to follow a snake-scan like pattern, creating a systematic coverage of the entire scene.
> <details>
> <summary>read the caption</summary>
> (d) Image rendered at position (3).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-scene-2.png)

> 🔼 This image shows a rendering of a scene from a specific camera position in a simulated environment.  The camera is positioned as part of a snake-scan trajectory used for generating textures of large outdoor environments. This particular viewpoint is one of four shown to illustrate the comprehensive coverage of the scene provided by the chosen camera path.  The whole sequence of images taken along the path is used to generate textures for the outdoor scenes.
> <details>
> <summary>read the caption</summary>
> (e) Image rendered at position (4).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-textured-2.png)

> 🔼 This figure illustrates the camera trajectory used for capturing high-quality textures of outdoor scenes using SceneTex. A snake-scan pattern is employed, ensuring comprehensive scene coverage.  The longer side of the trajectory covers 2 meters across 200 frames, while the shorter side covers 0.5 meters in 50 frames. The total number of frames varies between 1200 and 1800 depending on scene dimensions. The figure displays four example images rendered from different viewpoints along this trajectory.
> <details>
> <summary>read the caption</summary>
> Figure 11: An overview of our choice of the camera trajectory in Blender and the four images respectively rendered at position (1), (2), (3) and (4). We adopt a snake-scan trajectory pattern allowing for a more comprehensive coverage of the entire scene. The long side of the trajectory spans 2 meters at a fixed number of 200 frames, and the shorter side spans 0.5 meters for 50 frames. Depending on the shape of the scene, the total number of frames ranges from 1.2k to 1.8k.
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-scene-3.png)

> 🔼 This figure shows a generated scene from the NuiScene model.  The image showcases the model's ability to generate realistic outdoor environments, demonstrating the quality of the geometry produced by the model.  The generated scene includes a variety of elements, suggesting that the model has learned to combine different architectural styles and landscape features from its training data.
> <details>
> <summary>read the caption</summary>
> (a) Generated scene (1).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-textured-3.png)

> 🔼 This figure shows a textured 3D rendering of an outdoor scene generated by the model.  The scene depicts a variety of elements, such as a castle-like structure, and appears to be set in a rural or medieval-style environment. The texture applied adds a high level of visual detail to the scene, making it look realistic and immersive.
> <details>
> <summary>read the caption</summary>
> (b) Textured scene (1).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-scene-4.png)

> 🔼 This figure shows a 21x21 chunk generated by the vector set diffusion model trained on a single scene.  The image showcases the model's ability to generate outdoor scenes with a variety of building styles and features, demonstrating its capacity for high-quality scene generation. Note that while the caption only says '(c) Generated Scene (2)', this image is part of a larger figure illustrating multiple generated scenes.
> <details>
> <summary>read the caption</summary>
> (c) Generated scene (2).
> </details>



![](https://arxiv.org/html/2503.16375/extracted/6295304/figtab/Figures/Supplementary/fig-textured-4.png)

> 🔼 This figure shows a textured 3D rendering of a generated scene from the NuiScene model. The scene depicts a cityscape with various building types and surrounding environments. The texture is applied to the 3D model to create a more realistic and visually appealing representation of the generated scene.
> <details>
> <summary>read the caption</summary>
> (d) Textured scene (2).
> </details>



![](https://arxiv.org/html/2503.16375/x11.png)

> 🔼 This figure showcases a 3D scene generated by the NuiScene model.  The scene demonstrates the model's ability to generate realistic outdoor environments, including a variety of building styles and landscaping features. The image is part of a series presented to illustrate the model's capabilities in generating large-scale, coherent scenes from a dataset of diverse outdoor environments.
> <details>
> <summary>read the caption</summary>
> (e) Generated scene (3).
> </details>



![](https://arxiv.org/html/2503.16375/x12.png)

> 🔼 This image displays a textured 3D rendering of an outdoor scene, generated by the model.  The scene shows a variety of architectural styles and landscaping, showcasing the model's ability to blend various elements seamlessly. This is one example in the supplementary material demonstrating the model's ability to generate visually appealing and realistic scenes. 
> <details>
> <summary>read the caption</summary>
> (f) Textured scene (3).
> </details>



![](https://arxiv.org/html/2503.16375/x13.png)

> 🔼 This figure shows a generated scene from the NuiScene model.  The scene depicts a modern city with buildings and trees, and features clouds in the sky. The image is part of a series demonstrating the model's ability to generate diverse and high-quality outdoor scenes.
> <details>
> <summary>read the caption</summary>
> (g) Generated scene (4).
> </details>



![](https://arxiv.org/html/2503.16375/x14.png)

> 🔼 This image shows a textured 3D scene generated by the model, specifically scene number 4. The scene features a modern city with buildings and trees, and clouds in the sky.  This texture was applied using SceneTex, highlighting the model's ability to generate realistic and detailed outdoor environments.
> <details>
> <summary>read the caption</summary>
> (h) Textured scene (4).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.10.2.2">
<tr class="ltx_tr" id="S4.T2.10.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.10.2.2.3.1">Method</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.10.2.2.3.2">BS</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.10.2.2.3.3"># Tokens</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.10.2.2.3.4">Time (hr)</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T2.10.2.2.3.5">Mem. (GB)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.9.1.1.1.2">triplane</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.9.1.1.1.3">192</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.9.1.1.1.1"><math alttext="4\times 3\times 4^{2}" class="ltx_Math" display="inline" id="S4.T2.9.1.1.1.1.m1.1"><semantics id="S4.T2.9.1.1.1.1.m1.1a"><mrow id="S4.T2.9.1.1.1.1.m1.1.1" xref="S4.T2.9.1.1.1.1.m1.1.1.cmml"><mn id="S4.T2.9.1.1.1.1.m1.1.1.2" xref="S4.T2.9.1.1.1.1.m1.1.1.2.cmml">4</mn><mo id="S4.T2.9.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.9.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S4.T2.9.1.1.1.1.m1.1.1.3" xref="S4.T2.9.1.1.1.1.m1.1.1.3.cmml">3</mn><mo id="S4.T2.9.1.1.1.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S4.T2.9.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S4.T2.9.1.1.1.1.m1.1.1.4" xref="S4.T2.9.1.1.1.1.m1.1.1.4.cmml"><mn id="S4.T2.9.1.1.1.1.m1.1.1.4.2" xref="S4.T2.9.1.1.1.1.m1.1.1.4.2.cmml">4</mn><mn id="S4.T2.9.1.1.1.1.m1.1.1.4.3" xref="S4.T2.9.1.1.1.1.m1.1.1.4.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.9.1.1.1.1.m1.1b"><apply id="S4.T2.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.9.1.1.1.1.m1.1.1"><times id="S4.T2.9.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.9.1.1.1.1.m1.1.1.1"></times><cn id="S4.T2.9.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.9.1.1.1.1.m1.1.1.2">4</cn><cn id="S4.T2.9.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.9.1.1.1.1.m1.1.1.3">3</cn><apply id="S4.T2.9.1.1.1.1.m1.1.1.4.cmml" xref="S4.T2.9.1.1.1.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T2.9.1.1.1.1.m1.1.1.4.1.cmml" xref="S4.T2.9.1.1.1.1.m1.1.1.4">superscript</csymbol><cn id="S4.T2.9.1.1.1.1.m1.1.1.4.2.cmml" type="integer" xref="S4.T2.9.1.1.1.1.m1.1.1.4.2">4</cn><cn id="S4.T2.9.1.1.1.1.m1.1.1.4.3.cmml" type="integer" xref="S4.T2.9.1.1.1.1.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.1.1.1.1.m1.1c">4\times 3\times 4^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.1.1.1.1.m1.1d">4 × 3 × 4 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.9.1.1.1.4">27.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T2.9.1.1.1.5">24.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.10.2.2.2.2">vecset</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.10.2.2.2.3">192</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.10.2.2.2.1"><math alttext="4\times 16" class="ltx_Math" display="inline" id="S4.T2.10.2.2.2.1.m1.1"><semantics id="S4.T2.10.2.2.2.1.m1.1a"><mrow id="S4.T2.10.2.2.2.1.m1.1.1" xref="S4.T2.10.2.2.2.1.m1.1.1.cmml"><mn id="S4.T2.10.2.2.2.1.m1.1.1.2" xref="S4.T2.10.2.2.2.1.m1.1.1.2.cmml">4</mn><mo id="S4.T2.10.2.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.10.2.2.2.1.m1.1.1.1.cmml">×</mo><mn id="S4.T2.10.2.2.2.1.m1.1.1.3" xref="S4.T2.10.2.2.2.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.2.2.2.1.m1.1b"><apply id="S4.T2.10.2.2.2.1.m1.1.1.cmml" xref="S4.T2.10.2.2.2.1.m1.1.1"><times id="S4.T2.10.2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.10.2.2.2.1.m1.1.1.1"></times><cn id="S4.T2.10.2.2.2.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.10.2.2.2.1.m1.1.1.2">4</cn><cn id="S4.T2.10.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.10.2.2.2.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.2.2.2.1.m1.1c">4\times 16</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.2.2.2.1.m1.1d">4 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.10.2.2.2.4">11.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.10.2.2.2.5">10.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of two different latent space representations (triplane and vecset) within a diffusion model for generating 3D scene chunks.  It shows the Fréchet PointNet++ Distance (FPD) and Kernel PointNet++ Distance (KPD) scores achieved by each method.  Lower scores indicate better generation quality, representing a closer match between the generated and ground truth chunks. The KPD scores are multiplied by 1000 for easier interpretation.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of triplane and vecset diffusion models for generated quad-chunks. KPD scores are multiplied 103superscript10310^{3}10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.20.16">
<tr class="ltx_tr" id="S4.T3.9.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.9.5.5.6">Method</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.9.5.5.7">Output Res/S</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.5.1.1.1">IOU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.1.1.1.m1.1"><semantics id="S4.T3.5.1.1.1.m1.1a"><mo id="S4.T3.5.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.1.1.1.m1.1b"><ci id="S4.T3.5.1.1.1.m1.1.1.cmml" xref="S4.T3.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.6.2.2.2">CD <math alttext="(\hat{h})\downarrow" class="ltx_Math" display="inline" id="S4.T3.6.2.2.2.m1.1"><semantics id="S4.T3.6.2.2.2.m1.1a"><mrow id="S4.T3.6.2.2.2.m1.1.2" xref="S4.T3.6.2.2.2.m1.1.2.cmml"><mrow id="S4.T3.6.2.2.2.m1.1.2.2.2" xref="S4.T3.6.2.2.2.m1.1.1.cmml"><mo id="S4.T3.6.2.2.2.m1.1.2.2.2.1" stretchy="false" xref="S4.T3.6.2.2.2.m1.1.1.cmml">(</mo><mover accent="true" id="S4.T3.6.2.2.2.m1.1.1" xref="S4.T3.6.2.2.2.m1.1.1.cmml"><mi id="S4.T3.6.2.2.2.m1.1.1.2" xref="S4.T3.6.2.2.2.m1.1.1.2.cmml">h</mi><mo id="S4.T3.6.2.2.2.m1.1.1.1" xref="S4.T3.6.2.2.2.m1.1.1.1.cmml">^</mo></mover><mo id="S4.T3.6.2.2.2.m1.1.2.2.2.2" stretchy="false" xref="S4.T3.6.2.2.2.m1.1.1.cmml">)</mo></mrow><mo id="S4.T3.6.2.2.2.m1.1.2.1" stretchy="false" xref="S4.T3.6.2.2.2.m1.1.2.1.cmml">↓</mo><mi id="S4.T3.6.2.2.2.m1.1.2.3" xref="S4.T3.6.2.2.2.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.2.2.2.m1.1b"><apply id="S4.T3.6.2.2.2.m1.1.2.cmml" xref="S4.T3.6.2.2.2.m1.1.2"><ci id="S4.T3.6.2.2.2.m1.1.2.1.cmml" xref="S4.T3.6.2.2.2.m1.1.2.1">↓</ci><apply id="S4.T3.6.2.2.2.m1.1.1.cmml" xref="S4.T3.6.2.2.2.m1.1.2.2.2"><ci id="S4.T3.6.2.2.2.m1.1.1.1.cmml" xref="S4.T3.6.2.2.2.m1.1.1.1">^</ci><ci id="S4.T3.6.2.2.2.m1.1.1.2.cmml" xref="S4.T3.6.2.2.2.m1.1.1.2">ℎ</ci></apply><csymbol cd="latexml" id="S4.T3.6.2.2.2.m1.1.2.3.cmml" xref="S4.T3.6.2.2.2.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.2.2.2.m1.1c">(\hat{h})\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.2.2.2.m1.1d">( over^ start_ARG italic_h end_ARG ) ↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.7.3.3.3">F-Score <math alttext="(\hat{h})\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.3.3.3.m1.1"><semantics id="S4.T3.7.3.3.3.m1.1a"><mrow id="S4.T3.7.3.3.3.m1.1.2" xref="S4.T3.7.3.3.3.m1.1.2.cmml"><mrow id="S4.T3.7.3.3.3.m1.1.2.2.2" xref="S4.T3.7.3.3.3.m1.1.1.cmml"><mo id="S4.T3.7.3.3.3.m1.1.2.2.2.1" stretchy="false" xref="S4.T3.7.3.3.3.m1.1.1.cmml">(</mo><mover accent="true" id="S4.T3.7.3.3.3.m1.1.1" xref="S4.T3.7.3.3.3.m1.1.1.cmml"><mi id="S4.T3.7.3.3.3.m1.1.1.2" xref="S4.T3.7.3.3.3.m1.1.1.2.cmml">h</mi><mo id="S4.T3.7.3.3.3.m1.1.1.1" xref="S4.T3.7.3.3.3.m1.1.1.1.cmml">^</mo></mover><mo id="S4.T3.7.3.3.3.m1.1.2.2.2.2" stretchy="false" xref="S4.T3.7.3.3.3.m1.1.1.cmml">)</mo></mrow><mo id="S4.T3.7.3.3.3.m1.1.2.1" stretchy="false" xref="S4.T3.7.3.3.3.m1.1.2.1.cmml">↑</mo><mi id="S4.T3.7.3.3.3.m1.1.2.3" xref="S4.T3.7.3.3.3.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.3.3.3.m1.1b"><apply id="S4.T3.7.3.3.3.m1.1.2.cmml" xref="S4.T3.7.3.3.3.m1.1.2"><ci id="S4.T3.7.3.3.3.m1.1.2.1.cmml" xref="S4.T3.7.3.3.3.m1.1.2.1">↑</ci><apply id="S4.T3.7.3.3.3.m1.1.1.cmml" xref="S4.T3.7.3.3.3.m1.1.2.2.2"><ci id="S4.T3.7.3.3.3.m1.1.1.1.cmml" xref="S4.T3.7.3.3.3.m1.1.1.1">^</ci><ci id="S4.T3.7.3.3.3.m1.1.1.2.cmml" xref="S4.T3.7.3.3.3.m1.1.1.2">ℎ</ci></apply><csymbol cd="latexml" id="S4.T3.7.3.3.3.m1.1.2.3.cmml" xref="S4.T3.7.3.3.3.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.3.3.3.m1.1c">(\hat{h})\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.3.3.3.m1.1d">( over^ start_ARG italic_h end_ARG ) ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.8.4.4.4">CD <math alttext="(\tilde{h})\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.4.4.4.m1.1"><semantics id="S4.T3.8.4.4.4.m1.1a"><mrow id="S4.T3.8.4.4.4.m1.1.2" xref="S4.T3.8.4.4.4.m1.1.2.cmml"><mrow id="S4.T3.8.4.4.4.m1.1.2.2.2" xref="S4.T3.8.4.4.4.m1.1.1.cmml"><mo id="S4.T3.8.4.4.4.m1.1.2.2.2.1" stretchy="false" xref="S4.T3.8.4.4.4.m1.1.1.cmml">(</mo><mover accent="true" id="S4.T3.8.4.4.4.m1.1.1" xref="S4.T3.8.4.4.4.m1.1.1.cmml"><mi id="S4.T3.8.4.4.4.m1.1.1.2" xref="S4.T3.8.4.4.4.m1.1.1.2.cmml">h</mi><mo id="S4.T3.8.4.4.4.m1.1.1.1" xref="S4.T3.8.4.4.4.m1.1.1.1.cmml">~</mo></mover><mo id="S4.T3.8.4.4.4.m1.1.2.2.2.2" stretchy="false" xref="S4.T3.8.4.4.4.m1.1.1.cmml">)</mo></mrow><mo id="S4.T3.8.4.4.4.m1.1.2.1" stretchy="false" xref="S4.T3.8.4.4.4.m1.1.2.1.cmml">↓</mo><mi id="S4.T3.8.4.4.4.m1.1.2.3" xref="S4.T3.8.4.4.4.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.4.4.4.m1.1b"><apply id="S4.T3.8.4.4.4.m1.1.2.cmml" xref="S4.T3.8.4.4.4.m1.1.2"><ci id="S4.T3.8.4.4.4.m1.1.2.1.cmml" xref="S4.T3.8.4.4.4.m1.1.2.1">↓</ci><apply id="S4.T3.8.4.4.4.m1.1.1.cmml" xref="S4.T3.8.4.4.4.m1.1.2.2.2"><ci id="S4.T3.8.4.4.4.m1.1.1.1.cmml" xref="S4.T3.8.4.4.4.m1.1.1.1">~</ci><ci id="S4.T3.8.4.4.4.m1.1.1.2.cmml" xref="S4.T3.8.4.4.4.m1.1.1.2">ℎ</ci></apply><csymbol cd="latexml" id="S4.T3.8.4.4.4.m1.1.2.3.cmml" xref="S4.T3.8.4.4.4.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.4.4.4.m1.1c">(\tilde{h})\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.4.4.4.m1.1d">( over~ start_ARG italic_h end_ARG ) ↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T3.9.5.5.5">F-Score <math alttext="(\tilde{h})\uparrow" class="ltx_Math" display="inline" id="S4.T3.9.5.5.5.m1.1"><semantics id="S4.T3.9.5.5.5.m1.1a"><mrow id="S4.T3.9.5.5.5.m1.1.2" xref="S4.T3.9.5.5.5.m1.1.2.cmml"><mrow id="S4.T3.9.5.5.5.m1.1.2.2.2" xref="S4.T3.9.5.5.5.m1.1.1.cmml"><mo id="S4.T3.9.5.5.5.m1.1.2.2.2.1" stretchy="false" xref="S4.T3.9.5.5.5.m1.1.1.cmml">(</mo><mover accent="true" id="S4.T3.9.5.5.5.m1.1.1" xref="S4.T3.9.5.5.5.m1.1.1.cmml"><mi id="S4.T3.9.5.5.5.m1.1.1.2" xref="S4.T3.9.5.5.5.m1.1.1.2.cmml">h</mi><mo id="S4.T3.9.5.5.5.m1.1.1.1" xref="S4.T3.9.5.5.5.m1.1.1.1.cmml">~</mo></mover><mo id="S4.T3.9.5.5.5.m1.1.2.2.2.2" stretchy="false" xref="S4.T3.9.5.5.5.m1.1.1.cmml">)</mo></mrow><mo id="S4.T3.9.5.5.5.m1.1.2.1" stretchy="false" xref="S4.T3.9.5.5.5.m1.1.2.1.cmml">↑</mo><mi id="S4.T3.9.5.5.5.m1.1.2.3" xref="S4.T3.9.5.5.5.m1.1.2.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.5.5.5.m1.1b"><apply id="S4.T3.9.5.5.5.m1.1.2.cmml" xref="S4.T3.9.5.5.5.m1.1.2"><ci id="S4.T3.9.5.5.5.m1.1.2.1.cmml" xref="S4.T3.9.5.5.5.m1.1.2.1">↑</ci><apply id="S4.T3.9.5.5.5.m1.1.1.cmml" xref="S4.T3.9.5.5.5.m1.1.2.2.2"><ci id="S4.T3.9.5.5.5.m1.1.1.1.cmml" xref="S4.T3.9.5.5.5.m1.1.1.1">~</ci><ci id="S4.T3.9.5.5.5.m1.1.1.2.cmml" xref="S4.T3.9.5.5.5.m1.1.1.2">ℎ</ci></apply><csymbol cd="latexml" id="S4.T3.9.5.5.5.m1.1.2.3.cmml" xref="S4.T3.9.5.5.5.m1.1.2.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.5.5.5.m1.1c">(\tilde{h})\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.5.5.5.m1.1d">( over~ start_ARG italic_h end_ARG ) ↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.11.7.7.3" rowspan="3"><span class="ltx_text" id="S4.T3.11.7.7.3.1">triplane</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.11.7.7.2">
<math alttext="3\times 32^{2}" class="ltx_Math" display="inline" id="S4.T3.10.6.6.1.m1.1"><semantics id="S4.T3.10.6.6.1.m1.1a"><mrow id="S4.T3.10.6.6.1.m1.1.1" xref="S4.T3.10.6.6.1.m1.1.1.cmml"><mn id="S4.T3.10.6.6.1.m1.1.1.2" xref="S4.T3.10.6.6.1.m1.1.1.2.cmml">3</mn><mo id="S4.T3.10.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T3.10.6.6.1.m1.1.1.1.cmml">×</mo><msup id="S4.T3.10.6.6.1.m1.1.1.3" xref="S4.T3.10.6.6.1.m1.1.1.3.cmml"><mn id="S4.T3.10.6.6.1.m1.1.1.3.2" xref="S4.T3.10.6.6.1.m1.1.1.3.2.cmml">32</mn><mn id="S4.T3.10.6.6.1.m1.1.1.3.3" xref="S4.T3.10.6.6.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.10.6.6.1.m1.1b"><apply id="S4.T3.10.6.6.1.m1.1.1.cmml" xref="S4.T3.10.6.6.1.m1.1.1"><times id="S4.T3.10.6.6.1.m1.1.1.1.cmml" xref="S4.T3.10.6.6.1.m1.1.1.1"></times><cn id="S4.T3.10.6.6.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.10.6.6.1.m1.1.1.2">3</cn><apply id="S4.T3.10.6.6.1.m1.1.1.3.cmml" xref="S4.T3.10.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.10.6.6.1.m1.1.1.3.1.cmml" xref="S4.T3.10.6.6.1.m1.1.1.3">superscript</csymbol><cn id="S4.T3.10.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T3.10.6.6.1.m1.1.1.3.2">32</cn><cn id="S4.T3.10.6.6.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T3.10.6.6.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.6.6.1.m1.1c">3\times 32^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.6.6.1.m1.1d">3 × 32 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>/<math alttext="6" class="ltx_Math" display="inline" id="S4.T3.11.7.7.2.m2.1"><semantics id="S4.T3.11.7.7.2.m2.1a"><mn id="S4.T3.11.7.7.2.m2.1.1" xref="S4.T3.11.7.7.2.m2.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T3.11.7.7.2.m2.1b"><cn id="S4.T3.11.7.7.2.m2.1.1.cmml" type="integer" xref="S4.T3.11.7.7.2.m2.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.7.7.2.m2.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.7.7.2.m2.1d">6</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.11.7.7.4">0.734</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.11.7.7.5">0.168</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.11.7.7.6">0.508</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.11.7.7.7">0.168</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T3.11.7.7.8">0.508</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.9">
<td class="ltx_td ltx_align_left" id="S4.T3.13.9.9.2">
<math alttext="3\times 64^{2}" class="ltx_Math" display="inline" id="S4.T3.12.8.8.1.m1.1"><semantics id="S4.T3.12.8.8.1.m1.1a"><mrow id="S4.T3.12.8.8.1.m1.1.1" xref="S4.T3.12.8.8.1.m1.1.1.cmml"><mn id="S4.T3.12.8.8.1.m1.1.1.2" xref="S4.T3.12.8.8.1.m1.1.1.2.cmml">3</mn><mo id="S4.T3.12.8.8.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T3.12.8.8.1.m1.1.1.1.cmml">×</mo><msup id="S4.T3.12.8.8.1.m1.1.1.3" xref="S4.T3.12.8.8.1.m1.1.1.3.cmml"><mn id="S4.T3.12.8.8.1.m1.1.1.3.2" xref="S4.T3.12.8.8.1.m1.1.1.3.2.cmml">64</mn><mn id="S4.T3.12.8.8.1.m1.1.1.3.3" xref="S4.T3.12.8.8.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.12.8.8.1.m1.1b"><apply id="S4.T3.12.8.8.1.m1.1.1.cmml" xref="S4.T3.12.8.8.1.m1.1.1"><times id="S4.T3.12.8.8.1.m1.1.1.1.cmml" xref="S4.T3.12.8.8.1.m1.1.1.1"></times><cn id="S4.T3.12.8.8.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.12.8.8.1.m1.1.1.2">3</cn><apply id="S4.T3.12.8.8.1.m1.1.1.3.cmml" xref="S4.T3.12.8.8.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.12.8.8.1.m1.1.1.3.1.cmml" xref="S4.T3.12.8.8.1.m1.1.1.3">superscript</csymbol><cn id="S4.T3.12.8.8.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T3.12.8.8.1.m1.1.1.3.2">64</cn><cn id="S4.T3.12.8.8.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T3.12.8.8.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.8.8.1.m1.1c">3\times 64^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.8.8.1.m1.1d">3 × 64 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>/<math alttext="8.5" class="ltx_Math" display="inline" id="S4.T3.13.9.9.2.m2.1"><semantics id="S4.T3.13.9.9.2.m2.1a"><mn id="S4.T3.13.9.9.2.m2.1.1" xref="S4.T3.13.9.9.2.m2.1.1.cmml">8.5</mn><annotation-xml encoding="MathML-Content" id="S4.T3.13.9.9.2.m2.1b"><cn id="S4.T3.13.9.9.2.m2.1.1.cmml" type="float" xref="S4.T3.13.9.9.2.m2.1.1">8.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.9.9.2.m2.1c">8.5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.9.9.2.m2.1d">8.5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.13.9.9.3">0.805</td>
<td class="ltx_td ltx_align_right" id="S4.T3.13.9.9.4">0.105</td>
<td class="ltx_td ltx_align_right" id="S4.T3.13.9.9.5">0.705</td>
<td class="ltx_td ltx_align_right" id="S4.T3.13.9.9.6">0.105</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T3.13.9.9.7">0.705</td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.11.11">
<td class="ltx_td ltx_align_left" id="S4.T3.15.11.11.2">
<math alttext="3\times 64^{2}" class="ltx_Math" display="inline" id="S4.T3.14.10.10.1.m1.1"><semantics id="S4.T3.14.10.10.1.m1.1a"><mrow id="S4.T3.14.10.10.1.m1.1.1" xref="S4.T3.14.10.10.1.m1.1.1.cmml"><mn id="S4.T3.14.10.10.1.m1.1.1.2" xref="S4.T3.14.10.10.1.m1.1.1.2.cmml">3</mn><mo id="S4.T3.14.10.10.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T3.14.10.10.1.m1.1.1.1.cmml">×</mo><msup id="S4.T3.14.10.10.1.m1.1.1.3" xref="S4.T3.14.10.10.1.m1.1.1.3.cmml"><mn id="S4.T3.14.10.10.1.m1.1.1.3.2" xref="S4.T3.14.10.10.1.m1.1.1.3.2.cmml">64</mn><mn id="S4.T3.14.10.10.1.m1.1.1.3.3" xref="S4.T3.14.10.10.1.m1.1.1.3.3.cmml">2</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.14.10.10.1.m1.1b"><apply id="S4.T3.14.10.10.1.m1.1.1.cmml" xref="S4.T3.14.10.10.1.m1.1.1"><times id="S4.T3.14.10.10.1.m1.1.1.1.cmml" xref="S4.T3.14.10.10.1.m1.1.1.1"></times><cn id="S4.T3.14.10.10.1.m1.1.1.2.cmml" type="integer" xref="S4.T3.14.10.10.1.m1.1.1.2">3</cn><apply id="S4.T3.14.10.10.1.m1.1.1.3.cmml" xref="S4.T3.14.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.14.10.10.1.m1.1.1.3.1.cmml" xref="S4.T3.14.10.10.1.m1.1.1.3">superscript</csymbol><cn id="S4.T3.14.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T3.14.10.10.1.m1.1.1.3.2">64</cn><cn id="S4.T3.14.10.10.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T3.14.10.10.1.m1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.10.10.1.m1.1c">3\times 64^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.10.10.1.m1.1d">3 × 64 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>/<math alttext="6" class="ltx_Math" display="inline" id="S4.T3.15.11.11.2.m2.1"><semantics id="S4.T3.15.11.11.2.m2.1a"><mn id="S4.T3.15.11.11.2.m2.1.1" xref="S4.T3.15.11.11.2.m2.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T3.15.11.11.2.m2.1b"><cn id="S4.T3.15.11.11.2.m2.1.1.cmml" type="integer" xref="S4.T3.15.11.11.2.m2.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.11.11.2.m2.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.11.11.2.m2.1d">6</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.15.11.11.3">0.940</td>
<td class="ltx_td ltx_align_right" id="S4.T3.15.11.11.4">0.064</td>
<td class="ltx_td ltx_align_right" id="S4.T3.15.11.11.5">0.831</td>
<td class="ltx_td ltx_align_right" id="S4.T3.15.11.11.6">0.064</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T3.15.11.11.7">0.831</td>
</tr>
<tr class="ltx_tr" id="S4.T3.20.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.20.16.16.6">vecset</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.20.16.16.7">-</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.16.12.12.1"><math alttext="\mathbf{0.989}" class="ltx_Math" display="inline" id="S4.T3.16.12.12.1.m1.1"><semantics id="S4.T3.16.12.12.1.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T3.16.12.12.1.m1.1.1" mathvariant="bold" xref="S4.T3.16.12.12.1.m1.1.1.cmml">0.989</mn><annotation-xml encoding="MathML-Content" id="S4.T3.16.12.12.1.m1.1b"><cn id="S4.T3.16.12.12.1.m1.1.1.cmml" type="float" xref="S4.T3.16.12.12.1.m1.1.1">0.989</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.12.12.1.m1.1c">\mathbf{0.989}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.12.12.1.m1.1d">bold_0.989</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.17.13.13.2"><math alttext="\mathbf{0.055}" class="ltx_Math" display="inline" id="S4.T3.17.13.13.2.m1.1"><semantics id="S4.T3.17.13.13.2.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T3.17.13.13.2.m1.1.1" mathvariant="bold" xref="S4.T3.17.13.13.2.m1.1.1.cmml">0.055</mn><annotation-xml encoding="MathML-Content" id="S4.T3.17.13.13.2.m1.1b"><cn id="S4.T3.17.13.13.2.m1.1.1.cmml" type="float" xref="S4.T3.17.13.13.2.m1.1.1">0.055</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.13.13.2.m1.1c">\mathbf{0.055}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.13.13.2.m1.1d">bold_0.055</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.18.14.14.3"><math alttext="\mathbf{0.864}" class="ltx_Math" display="inline" id="S4.T3.18.14.14.3.m1.1"><semantics id="S4.T3.18.14.14.3.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T3.18.14.14.3.m1.1.1" mathvariant="bold" xref="S4.T3.18.14.14.3.m1.1.1.cmml">0.864</mn><annotation-xml encoding="MathML-Content" id="S4.T3.18.14.14.3.m1.1b"><cn id="S4.T3.18.14.14.3.m1.1.1.cmml" type="float" xref="S4.T3.18.14.14.3.m1.1.1">0.864</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.14.14.3.m1.1c">\mathbf{0.864}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.14.14.3.m1.1d">bold_0.864</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.19.15.15.4"><math alttext="\mathbf{0.055}" class="ltx_Math" display="inline" id="S4.T3.19.15.15.4.m1.1"><semantics id="S4.T3.19.15.15.4.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T3.19.15.15.4.m1.1.1" mathvariant="bold" xref="S4.T3.19.15.15.4.m1.1.1.cmml">0.055</mn><annotation-xml encoding="MathML-Content" id="S4.T3.19.15.15.4.m1.1b"><cn id="S4.T3.19.15.15.4.m1.1.1.cmml" type="float" xref="S4.T3.19.15.15.4.m1.1.1">0.055</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.15.15.4.m1.1c">\mathbf{0.055}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.15.15.4.m1.1d">bold_0.055</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.20.16.16.5"><math alttext="\mathbf{0.863}" class="ltx_Math" display="inline" id="S4.T3.20.16.16.5.m1.1"><semantics id="S4.T3.20.16.16.5.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T3.20.16.16.5.m1.1.1" mathvariant="bold" xref="S4.T3.20.16.16.5.m1.1.1.cmml">0.863</mn><annotation-xml encoding="MathML-Content" id="S4.T3.20.16.16.5.m1.1b"><cn id="S4.T3.20.16.16.5.m1.1.1.cmml" type="float" xref="S4.T3.20.16.16.5.m1.1.1">0.863</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.16.16.5.m1.1c">\mathbf{0.863}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.16.16.5.m1.1d">bold_0.863</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the generation time of 21x21 chunks using three different methods on an RTX 2080Ti GPU.  The methods compared are: RePaint (an iterative inpainting method) with 5 resampling steps, the proposed explicit outpainting method using vector sets, and a baseline method using triplanes.  The table shows the generation time broken down into two parts: the time taken to generate the chunk embeddings and the time taken to decode the occupancy and generate the mesh. This allows for a detailed performance comparison of the different approaches, highlighting the efficiency gains of the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 5: We benchmark generation time on 1 RTX 2080Ti for generating 21×21212121\times 2121 × 21 chunks using RePaint with 5 resampling steps and our explicit outpainting method with the vecset diffusion model, and also report the triplane diffusion model’s generation time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.6.4">
<tr class="ltx_tr" id="S4.T4.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.4.2.2.3">Method</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T4.3.1.1.1">FPD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.m1.1a"><mo id="S4.T4.3.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.m1.1b"><ci id="S4.T4.3.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T4.4.2.2.2">KPD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.2.2.2.m1.1"><semantics id="S4.T4.4.2.2.2.m1.1a"><mo id="S4.T4.4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.2.2.2.m1.1b"><ci id="S4.T4.4.2.2.2.m1.1.1.cmml" xref="S4.T4.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.6.4.5.1">triplane</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.6.4.5.2">1.406</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T4.6.4.5.3">2.589</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.6.4.4.3">vecset</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T4.5.3.3.1"><math alttext="\mathbf{0.571}" class="ltx_Math" display="inline" id="S4.T4.5.3.3.1.m1.1"><semantics id="S4.T4.5.3.3.1.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T4.5.3.3.1.m1.1.1" mathvariant="bold" xref="S4.T4.5.3.3.1.m1.1.1.cmml">0.571</mn><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.3.1.m1.1b"><cn id="S4.T4.5.3.3.1.m1.1.1.cmml" type="float" xref="S4.T4.5.3.3.1.m1.1.1">0.571</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.3.1.m1.1c">\mathbf{0.571}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.3.1.m1.1d">bold_0.571</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S4.T4.6.4.4.2"><math alttext="\mathbf{0.951}" class="ltx_Math" display="inline" id="S4.T4.6.4.4.2.m1.1"><semantics id="S4.T4.6.4.4.2.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T4.6.4.4.2.m1.1.1" mathvariant="bold" xref="S4.T4.6.4.4.2.m1.1.1.cmml">0.951</mn><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.4.2.m1.1b"><cn id="S4.T4.6.4.4.2.m1.1.1.cmml" type="float" xref="S4.T4.6.4.4.2.m1.1.1">0.951</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.4.2.m1.1c">\mathbf{0.951}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.4.2.m1.1d">bold_0.951</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the NuiScene43 dataset, which is a collection of 43 high-quality outdoor scenes used for training a model to generate unbounded outdoor scenes.  The table breaks down the dataset by scene category (Rural/Medieval, Low Poly City, Japanese Buildings, Other), providing the number of scenes within each category and the total number of sampleable quad chunks available for training in each category.  This information gives insight into the dataset's composition and size, highlighting the diversity of scene types and the overall quantity of data available for model training.
> <details>
> <summary>read the caption</summary>
> Table 6: NuiScene43 statistics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16375/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16375/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}