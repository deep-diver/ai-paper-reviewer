---
title: "CityDreamer4D: Compositional Generative Model of Unbounded 4D Cities"
summary: "CityDreamer4D generates realistic, unbounded 4D city models by cleverly separating dynamic objects (like vehicles) from static elements (buildings, roads), using multiple neural fields for enhanced re..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Tencent AI Lab",]
showSummary: true
date: 2025-01-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.08983 {{< /keyword >}}
{{< keyword icon="writer" >}} Haozhe Xie et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.08983" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.08983" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.08983/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating realistic 4D city models is challenging due to the complexity of urban environments, requiring the handling of diverse objects and their interactions. Existing methods often struggle with temporal consistency, scalability, or the ability to model dynamic elements such as traffic.  They also lack the availability of high-quality, large-scale datasets for training and evaluation.

CityDreamer4D tackles these challenges by employing a compositional approach, separating dynamic and static elements. It utilizes a compact Bird's-Eye-View (BEV) representation for city layouts and traffic simulations. Multiple neural fields are used to represent different object types, improving realism and ensuring temporal consistency. The model supports unbounded scenes and offers various downstream applications. Moreover, the research introduces a suite of comprehensive datasets, including OSM data, Google Earth imagery, and CityTopia, a high-quality synthetic dataset that facilitates training and evaluation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CityDreamer4D efficiently generates unbounded 4D cities by separating dynamic and static scene components. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model uses a compositional approach with specialized neural fields for various object types, improving realism. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} New, comprehensive datasets (OSM, Google Earth, CityTopia) are introduced to facilitate 4D city generation research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **CityDreamer4D**, a novel approach to generating realistic and unbounded 4D city models. This addresses a significant challenge in computer graphics and related fields, paving the way for advancements in urban planning, game development, and metaverse applications. The introduction of comprehensive datasets and the ability to handle dynamic elements such as traffic further enhance the practical value and broad applicability of this research.  The compositional nature of the model enables flexible manipulation and editing, opening exciting new avenues for future research in generative models and urban simulation.

------
#### Visual Insights



![](https://arxiv.org/html/2501.08983/x1.png)

> 🔼 CityDreamer4D is a framework for generating unbounded 4D cities by separating static and dynamic elements.  Static elements (city layout) are generated using the Unbounded Layout Generator, while dynamic elements (traffic) are created using the Traffic Scenario Generator.  The City Background Generator renders background elements like sky, roads, and vegetation.  Building Instance Generators produce building images, and Vehicle Instance Generators create vehicle images. These are then combined by the Compositor to form a final 4D city image.  The caption also lists abbreviations used in the figure.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of CityDreamer4D. 4D city generation is divided into static and dynamic scene generation, conditioned on 𝐋𝐋\mathbf{L}bold_L and 𝐓tsubscript𝐓𝑡\mathbf{T}_{t}bold_T start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, produced by Unbounded Layout Generator and Traffic Scenario Generator, respectively. City Background Generator uses 𝐋𝐋\mathbf{L}bold_L to create background images 𝐈^Gsubscript^𝐈𝐺\mathbf{\hat{I}}_{G}over^ start_ARG bold_I end_ARG start_POSTSUBSCRIPT italic_G end_POSTSUBSCRIPT for stuff like roads, vegetation, and the sky, while Building Instance Generator renders the buildings {𝐈^Bi}subscript^𝐈subscript𝐵𝑖\{\mathbf{\hat{I}}_{B_{i}}\}{ over^ start_ARG bold_I end_ARG start_POSTSUBSCRIPT italic_B start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT } within the city. Using 𝐓tsubscript𝐓𝑡\mathbf{T}_{t}bold_T start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, Vehicle Instance Generator generates vehicles {𝐈^Vit}superscriptsubscript^𝐈subscript𝑉𝑖𝑡\{\mathbf{\hat{I}}_{V_{i}}^{t}\}{ over^ start_ARG bold_I end_ARG start_POSTSUBSCRIPT italic_V start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT } at time step t𝑡titalic_t. Finally, Compositor combines the rendered background, buildings, and vehicles into a unified and coherent image 𝐈^Ctsuperscriptsubscript^𝐈𝐶𝑡\mathbf{\hat{I}}_{C}^{t}over^ start_ARG bold_I end_ARG start_POSTSUBSCRIPT italic_C end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT. “Gen.”, “Mod.“, “Cond.”, “BG.”, “BLDG.”, and “VEH.” denote “Generation”, “Modulation”, “Condition”, “Background”, “Building”, and “Vehicle”, respectively.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.5.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.4.5.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.5.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">#Images</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.5.1.3.1">#Cities</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Area</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.5" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.5.1.5.1">Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.5.1.6" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.5.1.6.1">Ext.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.5.1.7" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.5.1.7.1">3DM.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Lighting</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">View Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Dense Annotations</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">(<math alttext="\times 10^{3}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.m1.1.1.3.cmml"><mn id="S3.T1.1.1.1.m1.1.1.3.2" xref="S3.T1.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S3.T1.1.1.1.m1.1.1.3.3" xref="S3.T1.1.1.1.m1.1.1.3.3.cmml">3</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1.1"></times><csymbol cd="latexml" id="S3.T1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S3.T1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3.2">10</cn><cn id="S3.T1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\times 10^{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">(km<sup class="ltx_sup" id="S3.T1.1.1.2.1">2</sup>)</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.1">
<span class="ltx_p ltx_align_center" id="S3.T1.1.1.3.1.1">Day</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Night</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.1">
<span class="ltx_p ltx_align_center" id="S3.T1.1.1.5.1.1">Street</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Aerial</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">2D Sem.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">2D Inst.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">3D Sem.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">3D Inst.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">KITTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib92" title="">92</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.6.2.8.1">
<span class="ltx_p" id="S3.T1.4.6.2.8.1.1"><span class="ltx_text" id="S3.T1.4.6.2.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.6.2.10.1">
<span class="ltx_p" id="S3.T1.4.6.2.10.1.1"><span class="ltx_text" id="S3.T1.4.6.2.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Cityscapes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib93" title="">93</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.7.3.8.1">
<span class="ltx_p" id="S3.T1.4.7.3.8.1.1"><span class="ltx_text" id="S3.T1.4.7.3.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.7.3.10.1">
<span class="ltx_p" id="S3.T1.4.7.3.10.1.1"><span class="ltx_text" id="S3.T1.4.7.3.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.7.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">AeroScapes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib94" title="">94</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">3.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.8.4.8.1">
<span class="ltx_p" id="S3.T1.4.8.4.8.1.1"><span class="ltx_text" id="S3.T1.4.8.4.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.8.4.10.1">
<span class="ltx_p" id="S3.T1.4.8.4.10.1.1"><span class="ltx_text" id="S3.T1.4.8.4.10.1.1.1" style="color:#FF0000;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.8.4.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.9.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">nuScenes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib95" title="">95</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.9.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.9.5.8.1">
<span class="ltx_p" id="S3.T1.4.9.5.8.1.1"><span class="ltx_text" id="S3.T1.4.9.5.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.9.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.9.5.10.1">
<span class="ltx_p" id="S3.T1.4.9.5.10.1.1"><span class="ltx_text" id="S3.T1.4.9.5.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.9.5.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.10.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">GTA-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib96" title="">96</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.10.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.10.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.10.6.8.1">
<span class="ltx_p" id="S3.T1.4.10.6.8.1.1"><span class="ltx_text" id="S3.T1.4.10.6.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.10.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.10.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.10.6.10.1">
<span class="ltx_p" id="S3.T1.4.10.6.10.1.1"><span class="ltx_text" id="S3.T1.4.10.6.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.10.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.10.6.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.10.6.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.11.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.11.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">SYNTHIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib97" title="">97</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">213</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.11.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.11.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.11.7.8.1">
<span class="ltx_p" id="S3.T1.4.11.7.8.1.1"><span class="ltx_text" id="S3.T1.4.11.7.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.11.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.11.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.11.7.10.1">
<span class="ltx_p" id="S3.T1.4.11.7.10.1.1"><span class="ltx_text" id="S3.T1.4.11.7.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.11.7.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.11.7.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.12.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.12.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">VEIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib98" title="">98</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.12.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.12.8.8.1">
<span class="ltx_p" id="S3.T1.4.12.8.8.1.1"><span class="ltx_text" id="S3.T1.4.12.8.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.12.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.12.8.10.1">
<span class="ltx_p" id="S3.T1.4.12.8.10.1.1"><span class="ltx_text" id="S3.T1.4.12.8.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.12.8.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.13.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.13.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">MatrixCity <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib99" title="">99</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">519</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.13.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.13.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.13.9.8.1">
<span class="ltx_p" id="S3.T1.4.13.9.8.1.1"><span class="ltx_text" id="S3.T1.4.13.9.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.13.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.13.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.13.9.10.1">
<span class="ltx_p" id="S3.T1.4.13.9.10.1.1"><span class="ltx_text" id="S3.T1.4.13.9.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.13.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.13.9.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.13.9.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.14.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.14.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">HoliCity <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib100" title="">100</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.14.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">CAD</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.14.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.14.10.8.1">
<span class="ltx_p" id="S3.T1.4.14.10.8.1.1"><span class="ltx_text" id="S3.T1.4.14.10.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.14.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.14.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.14.10.10.1">
<span class="ltx_p" id="S3.T1.4.14.10.10.1.1"><span class="ltx_text" id="S3.T1.4.14.10.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.14.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.14.10.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.14.10.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.15.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.15.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">KITTI-360 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib101" title="">101</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">CAD</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.15.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.15.11.8.1">
<span class="ltx_p" id="S3.T1.4.15.11.8.1.1"><span class="ltx_text" id="S3.T1.4.15.11.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.15.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.15.11.10.1">
<span class="ltx_p" id="S3.T1.4.15.11.10.1.1"><span class="ltx_text" id="S3.T1.4.15.11.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.15.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.15.11.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.15.11.15.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">UrbanScene3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib102" title="">102</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">6.1<sup class="ltx_sup" id="S3.T1.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.2.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">3<sup class="ltx_sup" id="S3.T1.3.3.2.1"><span class="ltx_text ltx_font_italic" id="S3.T1.3.3.2.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">Mesh</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.8.1">
<span class="ltx_p" id="S3.T1.3.3.8.1.1"><span class="ltx_text" id="S3.T1.3.3.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.10.1">
<span class="ltx_p" id="S3.T1.3.3.10.1.1"><span class="ltx_text" id="S3.T1.3.3.10.1.1.1" style="color:#FF0000;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.12.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.13.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.14.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.3.3.15.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.16.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.16.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">GoogleEarth</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.16.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">Voxel</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.16.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.16.12.8.1">
<span class="ltx_p" id="S3.T1.4.16.12.8.1.1"><span class="ltx_text" id="S3.T1.4.16.12.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.16.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T1.4.16.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.16.12.10.1">
<span class="ltx_p" id="S3.T1.4.16.12.10.1.1"><span class="ltx_text" id="S3.T1.4.16.12.10.1.1.1" style="color:#FF0000;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.16.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.14.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.16.12.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.16.12.15.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.17.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.4.17.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">CityTopia</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">3.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.17.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">Voxel</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.17.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.17.13.8.1">
<span class="ltx_p" id="S3.T1.4.17.13.8.1.1"><span class="ltx_text" id="S3.T1.4.17.13.8.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.17.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.17.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.17.13.10.1">
<span class="ltx_p" id="S3.T1.4.17.13.10.1.1"><span class="ltx_text" id="S3.T1.4.17.13.10.1.1.1" style="color:#00FF00;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.17.13.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.12.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.13.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.14.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.17.13.15" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.4.17.13.15.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="15" id="S3.T1.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<sup class="ltx_sup" id="S3.T1.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.4.4.1.1.1">†</span></sup> Only the real-world image subset is counted for this dataset.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the GoogleEarth and CityTopia datasets with several other publicly available datasets used for urban scene understanding.  It details the number of images, cities, and the total area covered by each dataset. It also indicates whether the dataset is from real-world sources or synthetically generated.  Further, it notes the type of lighting conditions present (daytime and/or nighttime), the viewpoints available (street and/or aerial), and the types of annotations included (2D and 3D semantic, and 2D and 3D instance). Finally, it specifies whether the dataset can be easily expanded upon using the current data generation method and what type of 3D model representations (if any) are included.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison of Statistics and Properties: GoogleEarth, CityTopia, and Previous Datasets. Only annotated images are counted. “Ext.” stands for “Extendable”, indicating whether the dataset can be easily expanded following the current data generation pipeline. “3DM.”, “Sem.”, and “Inst.” refer to “3D Model”, “Semantic”, and “Instance”, respectively.
> </details>





### In-depth insights


#### Unbounded 4D CityGen
Unbounded 4D CityGen presents a significant advance in virtual world creation.  The focus on unboundedness directly addresses limitations of existing methods, which often generate small, finite environments.  **Generating 4D (spatiotemporal) data instead of just static 3D scenes** is a key innovation, enabling more realistic and dynamic simulations of urban life.  The compositional approach, separating static elements (buildings, roads) from dynamic ones (vehicles, traffic), is crucial for efficient generation and manipulation of complex city models.   **Utilizing neural fields** for diverse object types ensures detailed and varied rendering. The integration of real-world data, such as OpenStreetMap and Google Earth imagery, is essential for creating believable and realistic results.   **Datasets created are significant contributions**, providing valuable resources for future research in urban simulation and generative AI.  Challenges remain in achieving perfect temporal consistency and handling global illumination, particularly for nighttime scenes, but this research provides a strong foundation for future development in this field.

#### Neural Field Fusion
A hypothetical "Neural Field Fusion" section in a 4D city generation paper would likely explore methods for combining multiple neural fields to create a cohesive and realistic scene.  **Different neural fields could specialize in representing various aspects of the city**, such as buildings, vehicles, and background elements.  The fusion process would need to address challenges like **consistent rendering across different field types**, **handling occlusions and interactions between objects from separate fields**, and **ensuring temporal coherence in 4D sequences**.  **Techniques such as weighted averaging, concatenation, or more sophisticated attention mechanisms** might be employed to achieve seamless integration. The success of this approach hinges on **carefully designing the scene representation and parameterization** to facilitate efficient and effective fusion, while balancing realism with computational efficiency.  Furthermore, **the choice of neural field architecture (e.g., MLP, convolutional)** would have a significant impact on the quality of the fusion results.  Evaluation would focus on metrics like visual fidelity, temporal consistency, and the ability to generate diverse and unbounded urban scenes.

#### Traffic Scenario Gen
The heading 'Traffic Scenario Gen' suggests a system designed to generate realistic and dynamic traffic scenarios within a simulated environment, likely for urban settings.  **This is crucial for creating believable and engaging 4D city models**, as static scenes lack the liveliness of real-world urban environments. The generation process likely involves several key steps: defining road networks (potentially from existing map data like OpenStreetMap), determining vehicle types and numbers, and simulating their movement according to realistic rules (e.g., respecting traffic laws, reacting to other vehicles and traffic signals).  **Sophisticated algorithms are needed to model vehicle behavior, potentially employing techniques from traffic flow simulations or reinforcement learning.**  The system would also need to consider factors like time of day, weather conditions, and special events that could affect traffic patterns.  The output would be a representation of traffic flow, providing data such as vehicle positions and trajectories over time. The quality of this 'Traffic Scenario Gen' would directly impact the realism and user experience of the resulting 4D city, making it a pivotal component of the overall system.

#### Dataset Contributions
The research paper's contribution in creating diverse and high-quality datasets is a significant aspect.  The authors emphasize the importance of comprehensive datasets for training robust 4D city generation models. They highlight three main datasets: OSM, Google Earth, and CityTopia. **OSM provides realistic city layouts, useful for generating the structural foundations of a city**.  **Google Earth offers real-world, high-resolution city imagery, but lacks the dense 3D instance annotations crucial for training instance-level generative models**.  Therefore, **CityTopia, a synthetic dataset, is created to address this need, providing high-quality images with detailed 3D semantic and instance annotations**, allowing for more precise training of the generative models. This multi-faceted approach addresses limitations in existing datasets and facilitates a more effective training process, ultimately improving the realism and diversity of generated 4D cities.  The effort invested in data curation, especially 3D annotation, is a key strength of the work.

#### CityDreamer4D Limits
CityDreamer4D, while groundbreaking, has limitations.  **Computational cost** is a concern, stemming from generating buildings and vehicles individually.  **Global illumination and reflections** are not fully addressed, impacting realism, especially in night scenes. The model's reliance on pre-trained models for specific object types limits flexibility.  **Data limitations** in the training datasets, particularly regarding varied lighting conditions and diverse urban scenarios, might also restrict generalization.  Further research could explore more efficient architectures, improved scene parameterization, and enhanced datasets to overcome these limitations and enhance the model’s capabilities in generating realistic and unbounded 4D cities.  Addressing these shortcomings would significantly improve the model’s overall performance and usability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.08983/x2.png)

> 🔼 Figure 2 provides a detailed look into the OSM and Google Earth datasets used in the CityDreamer4D project.  Part (a) showcases examples of 2D and 3D annotations within the Google Earth dataset, demonstrating how these annotations can be automatically derived from the OSM data. Part (b) illustrates the adaptability of the automated annotation pipeline for global city application. Finally, part (c) presents statistical analyses of the Google Earth dataset, highlighting the diversity of viewpoints (drone altitudes and angles) it offers.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the OSM and GoogleEarth Datasets. (a) Examples of the 2D and 3D annotations in the GoogleEarth dataset, which can be automatically generated using the OSM dataset. (b) The automatic annotation pipeline can be readily adapted for worldwide cities. (c) The dataset statistics highlight the diverse perspectives in the GoogleEarth dataset.
> </details>



![](https://arxiv.org/html/2501.08983/x3.png)

> 🔼 Figure 3 provides a comprehensive overview of the CityTopia dataset, a key contribution of the paper.  Part (a) details the virtual city generation pipeline, outlining the stages of Prototype Instantiation, Surface Sampling, and 3D Instance Annotation. Part (b) showcases examples of the high-quality 2D and 3D annotations within the dataset, highlighting the diversity of viewpoints (daytime/nighttime, street-view/aerial-view) and the automated generation process. Finally, part (c) presents statistical analysis of the dataset, emphasizing the variation in viewpoints obtained through elevation and altitude parameters, showcasing the rich diversity of perspectives included in CityTopia.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the CityTopia Dataset. (a) The virtual city generation pipeline. “Pro.Inst.”, “Sur.Spl”, and “3D Inst. Anno.” denote “Prototype Instantiation”, “Surface Sampling”, and “3D Instance Annotation”, respectively. (b) Examples of 2D and 3D annotations in the CityTopia dataset are shown from both daytime and nighttime street-view and aerial-view perspectives, automatically generated during virtual city generation. (c) The dataset statistics highlight the diverse perspectives in both street and aerial views.
> </details>



![](https://arxiv.org/html/2501.08983/x4.png)

> 🔼 This figure provides a qualitative comparison of different 3D and 4D city generation models on the Google Earth dataset.  The models compared are SceneDreamer, CityDreamer4D, DimensionX, InfiniCity, and PersistentNature. Because the Google Earth dataset lacks semantic annotations for vehicles, CityDreamer4D and SceneDreamer use models trained on the CityTopia dataset for vehicle generation.  DimensionX uses an initial frame provided by CityDreamer4D. The InfiniCity results, provided by the paper's authors, are zoomed in for better visualization. The comparison demonstrates CityDreamer4D's superior ability to generate realistic and detailed 4D cities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Comparison on Google Earth. For SceneDreamer [7] and CityDreamer4D, vehicles are generated using models trained on CityTopia due to the lack of semantic annotations for vehicles in Google Earth. For DimensionX [107], the initial frame is provided by CityDreamer4D. The visual results of InfiniCity [26], provided by the authors, have been zoomed in for better viewing. “Pers.Nature” stands for “PersistentNature” [105].
> </details>



![](https://arxiv.org/html/2501.08983/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of CityDreamer4D's 4D city generation capabilities against several state-of-the-art methods on the CityTopia dataset.  The comparison includes SGAM, PersistentNature, SceneDreamer, DreamScene4D, and DimensionX.  For methods requiring initial frames or video inputs, these were selected from the CityTopia dataset. The figure visually showcases the generated city sequences from each method, allowing for a direct comparison of their visual realism, scene consistency, and overall quality in generating 4D urban scenes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparison on CityTopia. The initial frame for DimensionX and the input frames for DreamScene4D are chosen from the dataset. “Pers.Nature” refers to “PersistentNature” [105].
> </details>



![](https://arxiv.org/html/2501.08983/x6.png)

> 🔼 This figure presents the results of a user study comparing the performance of different methods for generating 4D city models, including CityDreamer4D, SceneDreamer, PersistentNature, InfiniCity, DimensionX, and SGAM.  Users rated each method on a scale of 1 to 5 across three key dimensions: perceptual quality, 4D realism, and view consistency.  Higher scores indicate better performance. The figure clearly shows that CityDreamer4D outperforms all other methods across all three evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Figure 6: User Study on 4D City Generation. All scores are in the range of 5, with 5 indicating the best. “Pers.Nature” refers to “PersistentNature” [105].
> </details>



![](https://arxiv.org/html/2501.08983/x7.png)

> 🔼 Figure 7 presents a qualitative comparison of three different city layout generators:  the proposed method, InfinityGAN, and IPSM. The figure visually compares the generated height maps produced by each method.  Height map values are normalized to a range of 0 to 1 for consistent comparison across methods.  This allows for easier visual assessment of the similarities and differences in generated city layouts by the three approaches, including texture and shape.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative Comparison of City Layout Generators. The height map values are normalized to a range of [0,1]01[0,1][ 0 , 1 ] by dividing each value by the maximum value within the map.
> </details>



![](https://arxiv.org/html/2501.08983/x8.png)

> 🔼 This figure compares different variations of the Building Instance Generator (BIG) within the CityDreamer4D model.  The top row shows the impact of removing the BIG module entirely (a) and the impact of removing instance labels while retaining the BIG module (b). The significant drop in image quality highlights the importance of both the BIG module and the use of instance labels. The bottom row (c-f) explores the effects of different scene parameterizations within the BIG. Specifically, it compares different encoder types (global vs. local) and different positional encoding methods (hash grids vs. sinusoidal). These experiments demonstrate how the chosen parameterization strategy impacts the realism and fidelity of the generated building images.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative Comparison of Building Instance Generator (BIG) Variants. (a) and (b) illustrate the effects of removing BIG and instance labels, respectively. (c)–(f) present the results of various scene parameterizations. Note that “Enc.” is an abbreviation for “Encoder”.
> </details>



![](https://arxiv.org/html/2501.08983/x9.png)

> 🔼 This figure compares different configurations of the Vehicle Instance Generator (VIG) within the CityDreamer4D model.  (a) and (b) show the impact of removing VIG entirely and removing the canonicalization process, respectively. The remaining subfigures (c) through (f) explore the effects of different scene parameterization strategies.  These variations involve using different encoders (global vs. local) combined with different positional encoding techniques (hash grids vs. sinusoidal functions).  The goal is to demonstrate the impact of each component on the quality of generated vehicle instances within the simulated city scenes.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative Comparison of Vehicle Instance Generator (VIG) Variants. (a) and (b) illustrate the effects of removing VIG and canonicalization, respectively. (c)–(f) present the results of various scene parameterizations. Note that “Enc.” is an abbreviation for “Encoder”.
> </details>



![](https://arxiv.org/html/2501.08983/x10.png)

> 🔼 This figure showcases the localized editing capabilities of the CityDreamer4D model.  Panels (a) and (c) demonstrate modifications to vehicles within the generated city scenes, illustrating changes such as vehicle type and placement. Panels (b) and (d) exhibit similar localized editing applied to buildings, showing adjustments to building height and style. These examples highlight the model's ability to make precise, localized alterations without affecting the overall scene coherence.
> <details>
> <summary>read the caption</summary>
> Figure 10: Localized Editing on the Generated Cities. (a) and (c) show vehicle editing results, while (b) and (d) present building editing results.
> </details>



![](https://arxiv.org/html/2501.08983/x11.png)

> 🔼 This figure showcases the results of applying ControlNet to stylize generated cityscapes. ControlNet allows for directing the style of the generated image while preserving multi-view consistency; even when changing the style significantly, the structural integrity of the scene remains consistent across different viewpoints. The example shown demonstrates successful stylization of generated cities to resemble the visual styles of Minecraft and Cyberpunk.
> <details>
> <summary>read the caption</summary>
> Figure 11: Text-driven City Stylization with ControlNet. The multi-view consistency is preserved in stylized Minecraft and Cyberpunk cities.
> </details>



![](https://arxiv.org/html/2501.08983/x12.png)

> 🔼 This figure displays the results of a 3D reconstruction performed using COLMAP on a sequence of 600 orbital videos generated by CityDreamer4D.  The videos were captured from a circular trajectory around a scene, and the red ring in the image highlights the estimated camera positions during the video recording.  The clarity and density of the resulting point cloud illustrate the high quality and consistency of CityDreamer4D's rendering across the entire sequence of frames.
> <details>
> <summary>read the caption</summary>
> Figure 12: COLMAP Reconstruction of 600-frame Orbital Videos. The red ring shows the camera positions, and the clear point clouds demonstrate CityDreamer4D’s consistent rendering. Note that ”Recon.” stands for ”Reconstruction.”
> </details>



![](https://arxiv.org/html/2501.08983/x13.png)

> 🔼 This figure demonstrates the relighting effect achieved in CityDreamer4D. It showcases three images: (a) shows the lighting intensity based on Lambertian shading, which provides uniform lighting across all directions; (b) shows the lighting intensity based on shadow mapping, which accounts for light visibility and occlusion; (c) combines both Lambertian shading and shadow mapping to produce a realistic relighting effect, with the camera positioned on the left side of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 13: Directional Light Relighting Effect. (a) and (b) show the lighting intensity. (c) illustrates the relighting effect. Note that “S.M.” denotes “Shadow Mapping”.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.10.11.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.10.11.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.10.11.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">GoogleEarth</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T2.10.11.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">CityTopia</th>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.2.1">
<span class="ltx_p" id="S4.T2.2.2.2.1.1">KID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.1.m1.1"><semantics id="S4.T2.2.2.2.1.1.m1.1a"><mo id="S4.T2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.1.m1.1b"><ci id="S4.T2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.3.1">
<span class="ltx_p" id="S4.T2.3.3.3.1.1">VBench <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.1.m1.1"><semantics id="S4.T2.3.3.3.1.1.m1.1a"><mo id="S4.T2.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.1.m1.1b"><ci id="S4.T2.3.3.3.1.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.4.1">
<span class="ltx_p" id="S4.T2.4.4.4.1.1">DE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.1.m1.1"><semantics id="S4.T2.4.4.4.1.1.m1.1a"><mo id="S4.T2.4.4.4.1.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.1.m1.1b"><ci id="S4.T2.4.4.4.1.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.5.1">
<span class="ltx_p" id="S4.T2.5.5.5.1.1">CE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.1.m1.1"><semantics id="S4.T2.5.5.5.1.1.m1.1a"><mo id="S4.T2.5.5.5.1.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.1.m1.1b"><ci id="S4.T2.5.5.5.1.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.1">
<span class="ltx_p" id="S4.T2.6.6.6.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.1.m1.1"><semantics id="S4.T2.6.6.6.1.1.m1.1a"><mo id="S4.T2.6.6.6.1.1.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.1.m1.1b"><ci id="S4.T2.6.6.6.1.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.7.1">
<span class="ltx_p" id="S4.T2.7.7.7.1.1">KID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.1.m1.1"><semantics id="S4.T2.7.7.7.1.1.m1.1a"><mo id="S4.T2.7.7.7.1.1.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.1.m1.1b"><ci id="S4.T2.7.7.7.1.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.8.1">
<span class="ltx_p" id="S4.T2.8.8.8.1.1">VBench <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.1.m1.1"><semantics id="S4.T2.8.8.8.1.1.m1.1a"><mo id="S4.T2.8.8.8.1.1.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.1.m1.1b"><ci id="S4.T2.8.8.8.1.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.9.1">
<span class="ltx_p" id="S4.T2.9.9.9.1.1">DE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.1.1.m1.1"><semantics id="S4.T2.9.9.9.1.1.m1.1a"><mo id="S4.T2.9.9.9.1.1.m1.1.1" stretchy="false" xref="S4.T2.9.9.9.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.1.1.m1.1b"><ci id="S4.T2.9.9.9.1.1.m1.1.1.cmml" xref="S4.T2.9.9.9.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="S4.T2.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.10.10.1">
<span class="ltx_p" id="S4.T2.10.10.10.1.1">CE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.1.1.m1.1"><semantics id="S4.T2.10.10.10.1.1.m1.1a"><mo id="S4.T2.10.10.10.1.1.m1.1.1" stretchy="false" xref="S4.T2.10.10.10.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.1.1.m1.1b"><ci id="S4.T2.10.10.10.1.1.m1.1.1.cmml" xref="S4.T2.10.10.10.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.10.12.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.10.12.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SGAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib104" title="">104</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.2.1">
<span class="ltx_p" id="S4.T2.10.12.1.2.1.1">277.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.3.1">
<span class="ltx_p" id="S4.T2.10.12.1.3.1.1">0.358</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.4.1">
<span class="ltx_p" id="S4.T2.10.12.1.4.1.1">0.691</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.5.1">
<span class="ltx_p" id="S4.T2.10.12.1.5.1.1">0.575</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="S4.T2.10.12.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.6.1">
<span class="ltx_p" id="S4.T2.10.12.1.6.1.1">239.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.7.1">
<span class="ltx_p" id="S4.T2.10.12.1.7.1.1">330.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.8.1">
<span class="ltx_p" id="S4.T2.10.12.1.8.1.1">0.284</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.9.1">
<span class="ltx_p" id="S4.T2.10.12.1.9.1.1">0.690</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.10.1">
<span class="ltx_p" id="S4.T2.10.12.1.10.1.1">0.571</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.10.12.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.12.1.11.1">
<span class="ltx_p" id="S4.T2.10.12.1.11.1.1">233.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.13.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.10.13.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">PersistentNature <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib105" title="">105</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.2.1">
<span class="ltx_p" id="S4.T2.10.13.2.2.1.1">123.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.3.1">
<span class="ltx_p" id="S4.T2.10.13.2.3.1.1">0.109</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.4.1">
<span class="ltx_p" id="S4.T2.10.13.2.4.1.1">0.706</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.5.1">
<span class="ltx_p" id="S4.T2.10.13.2.5.1.1">0.326</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T2.10.13.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.6.1">
<span class="ltx_p" id="S4.T2.10.13.2.6.1.1">86.37</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.7.1">
<span class="ltx_p" id="S4.T2.10.13.2.7.1.1">235.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.8.1">
<span class="ltx_p" id="S4.T2.10.13.2.8.1.1">0.215</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.9.1">
<span class="ltx_p" id="S4.T2.10.13.2.9.1.1">0.713</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.10.1">
<span class="ltx_p" id="S4.T2.10.13.2.10.1.1">0.428</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.13.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.13.2.11.1">
<span class="ltx_p" id="S4.T2.10.13.2.11.1.1">127.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.14.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.10.14.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">SceneDreamer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib7" title="">7</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.2.1">
<span class="ltx_p" id="S4.T2.10.14.3.2.1.1">232.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.3.1">
<span class="ltx_p" id="S4.T2.10.14.3.3.1.1">0.204</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.4.1">
<span class="ltx_p" id="S4.T2.10.14.3.4.1.1">0.781</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.5.1">
<span class="ltx_p" id="S4.T2.10.14.3.5.1.1">0.153</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T2.10.14.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.6.1">
<span class="ltx_p" id="S4.T2.10.14.3.6.1.1">0.186</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.7.1">
<span class="ltx_p" id="S4.T2.10.14.3.7.1.1">195.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.8.1">
<span class="ltx_p" id="S4.T2.10.14.3.8.1.1">0.126</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.9.1">
<span class="ltx_p" id="S4.T2.10.14.3.9.1.1">0.708</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.10.1">
<span class="ltx_p" id="S4.T2.10.14.3.10.1.1">0.185</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.14.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.14.3.11.1">
<span class="ltx_p" id="S4.T2.10.14.3.11.1.1">0.162</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.15.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.10.15.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">DreamScene4D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib106" title="">106</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.2.1">
<span class="ltx_p ltx_align_center" id="S4.T2.10.15.4.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.3.1">
<span class="ltx_p" id="S4.T2.10.15.4.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.4.1">
<span class="ltx_p" id="S4.T2.10.15.4.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.5.1">
<span class="ltx_p" id="S4.T2.10.15.4.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T2.10.15.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.6.1">
<span class="ltx_p" id="S4.T2.10.15.4.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.7.1">
<span class="ltx_p" id="S4.T2.10.15.4.7.1.1">288.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.8.1">
<span class="ltx_p" id="S4.T2.10.15.4.8.1.1">0.136</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.9.1">
<span class="ltx_p" id="S4.T2.10.15.4.9.1.1">0.715</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.10.1">
<span class="ltx_p" id="S4.T2.10.15.4.10.1.1">0.199</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.15.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.15.4.11.1">
<span class="ltx_p" id="S4.T2.10.15.4.11.1.1">0.146</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.16.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.10.16.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">DimensionX <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib107" title="">107</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.2.1">
<span class="ltx_p" id="S4.T2.10.16.5.2.1.1">206.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.3.1">
<span class="ltx_p" id="S4.T2.10.16.5.3.1.1">0.182</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.4.1">
<span class="ltx_p" id="S4.T2.10.16.5.4.1.1">0.805</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.5.1">
<span class="ltx_p" id="S4.T2.10.16.5.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T2.10.16.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.6.1">
<span class="ltx_p" id="S4.T2.10.16.5.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.7.1">
<span class="ltx_p" id="S4.T2.10.16.5.7.1.1">171.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.8.1">
<span class="ltx_p" id="S4.T2.10.16.5.8.1.1">0.070</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.9.1">
<span class="ltx_p" id="S4.T2.10.16.5.9.1.1">0.815</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.10.1">
<span class="ltx_p" id="S4.T2.10.16.5.10.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.10.16.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.16.5.11.1">
<span class="ltx_p" id="S4.T2.10.16.5.11.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.17.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.10.17.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">CityDreamer4D (Ours)</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.2.1">
<span class="ltx_p" id="S4.T2.10.17.6.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.2.1.1.1">96.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.3.1">
<span class="ltx_p" id="S4.T2.10.17.6.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.3.1.1.1">0.096</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.4.1">
<span class="ltx_p" id="S4.T2.10.17.6.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.4.1.1.1">0.834</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.5.1">
<span class="ltx_p" id="S4.T2.10.17.6.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.5.1.1.1">0.138</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_r" id="S4.T2.10.17.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.6.1">
<span class="ltx_p" id="S4.T2.10.17.6.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.6.1.1.1">0.060</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.7.1">
<span class="ltx_p" id="S4.T2.10.17.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.7.1.1.1">88.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.8.1">
<span class="ltx_p" id="S4.T2.10.17.6.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.8.1.1.1">0.049</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.9.1">
<span class="ltx_p" id="S4.T2.10.17.6.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.9.1.1.1">0.825</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.10.1">
<span class="ltx_p" id="S4.T2.10.17.6.10.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.10.1.1.1">0.150</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.10.17.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.10.17.6.11.1">
<span class="ltx_p" id="S4.T2.10.17.6.11.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.17.6.11.1.1.1">0.063</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of CityDreamer4D against other state-of-the-art methods for 4D city generation on the Google Earth and CityTopia datasets.  The comparison uses several metrics: Fréchet Inception Distance (FID), Kernel Inception Distance (KID), VBench (for video generation quality), Depth Error (DE), and Camera Error (CE). Lower FID and KID scores indicate better image quality. Higher VBench scores reflect better video quality. Lower DE and CE scores represent better 3D geometry accuracy and view consistency respectively.  CityDreamer4D's performance is highlighted in bold for each metric, demonstrating its superiority across the board.  Note that InfiniCity is excluded from the comparison due to its closed-source nature.
> <details>
> <summary>read the caption</summary>
> TABLE II: Quantitative Comparison. The best values are highlighted in bold. Note that InfiniCity is not included in this comparison as it is not open-sourced.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.4.2.3">Methods</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.1.1.1">
<span class="ltx_p" id="S5.T3.3.1.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.1.1.1.1.m1.1"><semantics id="S5.T3.3.1.1.1.1.m1.1a"><mo id="S5.T3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.1.1.1.1.m1.1b"><ci id="S5.T3.3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.2.2.1">
<span class="ltx_p" id="S5.T3.4.2.2.1.1">KID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.2.2.1.1.m1.1"><semantics id="S5.T3.4.2.2.1.1.m1.1a"><mo id="S5.T3.4.2.2.1.1.m1.1.1" stretchy="false" xref="S5.T3.4.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.2.2.1.1.m1.1b"><ci id="S5.T3.4.2.2.1.1.m1.1.1.cmml" xref="S5.T3.4.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.4.3.1.1">IPSM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib113" title="">113</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T3.4.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.3.1.2.1">
<span class="ltx_p" id="S5.T3.4.3.1.2.1.1">321.47</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S5.T3.4.3.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.3.1.3.1">
<span class="ltx_p" id="S5.T3.4.3.1.3.1.1">0.502</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.4.4.2.1">InfinityGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.08983v1#bib.bib114" title="">114</a>]</cite>
</th>
<td class="ltx_td ltx_align_justify" id="S5.T3.4.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.2.2.1">
<span class="ltx_p" id="S5.T3.4.4.2.2.1.1">183.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S5.T3.4.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.2.3.1">
<span class="ltx_p" id="S5.T3.4.4.2.3.1.1">0.288</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.4.5.3.1">UIG (Ours)</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S5.T3.4.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.5.3.2.1">
<span class="ltx_p" id="S5.T3.4.5.3.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.5.3.2.1.1.1">124.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S5.T3.4.5.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.5.3.3.1">
<span class="ltx_p" id="S5.T3.4.5.3.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.5.3.3.1.1.1">0.123</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different unbounded layout generators, focusing on their performance in generating city layouts.  The comparison uses the Fréchet Inception Distance (FID) and Kernel Inception Distance (KID) metrics, which measure the quality of generated images, with lower scores indicating better image quality. The table also indicates the size of the generated images (4096x4096 pixels after central cropping).  The best-performing method for each metric is highlighted in bold. This allows for a direct comparison of the effectiveness of various methods in generating high-quality, expansive city layouts.
> <details>
> <summary>read the caption</summary>
> TABLE III: Quantitative Comparison of Ubounded Layout Generator (UIG). The best values are highlighted in bold. The generated images are centrally cropped to a size of 4096×\times×4096.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.5.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.5.1.1.1">BIG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.4.5.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.5.1.2.1">Inst.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Pos.Enc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Evaluation Metrics</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">L</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">Hash</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">SinCos</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">KID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">DE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">CE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.6.2.1.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.6.2.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">195.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.126</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.185</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.162</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.7.3">
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.7.3.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">167.8</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.094</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.157</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.087</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.8.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.4.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.8.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">196.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.124</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.165</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.159</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.9.5">
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.9.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.9.5.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">197.9</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.132</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.162</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.152</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.10.6">
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.10.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.10.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">182.3</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.111</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.155</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.092</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.11.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.4.11.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.4.11.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.4.11.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T4.4.11.7.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.11.7.7.1">88.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.11.7.8.1">0.049</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.11.7.9.1">0.150</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.11.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.11.7.10.1">0.063</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different variations of the Building Instance Generator (BIG) within the CityDreamer4D model.  The variations are created by systematically changing key components of the BIG, such as the inclusion of instance labels, the type of positional encoding (SinCos or generative hash grids), and the use of global or local encoders.  The table evaluates the performance of these variations using FID (Fréchet Inception Distance), KID (Kernel Inception Distance), Depth Error (DE), and Camera Error (CE). Lower FID and KID scores indicate higher image quality, while lower DE and CE scores suggest better depth and multi-view consistency. The best performing variant for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Quantitative Comparison of Building Instance Generator Variants. The best values are highlighted in bold. Note that “Inst.” and “Pos.Enc.” refer to “Instance Labels” and “Positional Encoding”, while “G” and “L” denote “Global Encoder” and “Local Encoder”, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.4.5.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.5.1.1.1">VIG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.4.5.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.5.1.2.1">Can.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Pos.Enc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T5.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Evaluation Metrics</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">G</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">L</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">Hash</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">SinCos</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">KID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">DE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">CE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.m1.1"><semantics id="S5.T5.4.4.4.m1.1a"><mo id="S5.T5.4.4.4.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.m1.1b"><ci id="S5.T5.4.4.4.m1.1.1.cmml" xref="S5.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.6.2.1.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.6.2.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.6.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">419.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.576</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.364</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.6.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.276</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.7.3">
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.7.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.7.3.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">273.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.530</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.289</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.7.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.966</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.8.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.8.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.8.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">229.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.428</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.259</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.4.8.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.989</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.9.5">
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.9.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.9.5.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">273.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.521</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.265</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.9.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.997</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.10.6">
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.4.10.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.10.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.4.10.6.7.1">142.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.4.10.6.8.1">0.276</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.4.10.6.9.1">0.202</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.10.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.4.10.6.10.1">0.824</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.11.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.1.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.4.11.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.4.11.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.4.11.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T5.4.11.7.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">200.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.403</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.332</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.4.11.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.117</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different variations of the Vehicle Instance Generator (VIG), a key component of the CityDreamer4D model.  The variations involve using different encoders (global or local), positional encoding methods (hash or sinusoidal), and whether canonicalization is applied. All results are based on vehicle-only scenes from the CityTopia dataset, making the comparisons consistent. The metrics used for comparison are Fréchet Inception Distance (FID), Kernel Inception Distance (KID), Depth Error (DE), and Camera Error (CE), providing a comprehensive assessment of the generated vehicle quality and consistency. Lower FID and KID values indicate higher visual fidelity; lower DE and CE values indicate more accurate 3D geometry and multi-view consistency.
> <details>
> <summary>read the caption</summary>
> TABLE V: Quantitative Comparison of Vehicle Instance Generator Variants. All metrics are computed on the vehicle-only city from the CityTopia dataset. The best values are highlighted in bold. Note that “Can.” and “Pos.Enc.” refer to “Canonicalization” and “Positional Encoding”, while “G” and “L” denote “Global Encoder” and “Local Encoder”, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.08983/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.08983/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}