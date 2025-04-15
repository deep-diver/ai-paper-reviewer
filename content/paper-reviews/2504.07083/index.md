---
title: "GenDoP: Auto-regressive Camera Trajectory Generation as a Director of Photography"
summary: "GenDoP: AI Director of Photography"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07083 {{< /keyword >}}
{{< keyword icon="writer" >}} Mengchen Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07083" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07083" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07083/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Camera trajectory design is crucial in video production, but existing methods are limited by geometric optimization, handcrafted systems, and structural biases. This paper introduces **DataDoP**, a multi-modal dataset with 29K real-world shots, depth maps, and detailed captions describing camera movements, scene interaction, and directorial intent. The dataset addresses the lack of artistic, expressive, and intentional camera movements in existing resources. It leverages state-of-the-art techniques to extract accurate camera trajectories and scene compositions from real video clips. 



To address these limitations, the paper introduces **GenDoP**, an auto-regressive model that treats camera parameters as discrete tokens. This allows for fine-grained control and stable, complex movements. The model uses a decoder-only Transformer architecture. Multi-modal inputs, including textual descriptions and optional RGBD information, are used to generate camera movements. The experiments showed that GenDoP offers better controllability, finer-grained trajectory adjustments, and higher motion stability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces DataDoP, a large-scale multi-modal dataset for free-moving camera trajectories with detailed captions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents GenDoP, an auto-regressive model for high-quality, context-aware camera movement generation based on text guidance and RGBD inputs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates that GenDoP offers better controllability, finer-grained trajectory adjustments, and higher motion stability compared to existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a new approach to video cinematography, offering researchers new tools for camera control and filmmaking. The **DataDoP dataset** and **GenDoP model** provide a strong foundation for future research in automated video creation. By combining multimodal inputs and directorial intent, this research opens avenues for more expressive and artistic camera movements, impacting areas such as virtual production and creative AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07083/x2.png)

> 🔼 This figure provides a high-level overview of the GenDoP system. The top half illustrates the DataDoP dataset creation process: starting with RGB video frames, RGBD images and camera poses are extracted.  The pose sequence is then annotated with different motion categories.  These motion tags, along with the RGBD data, are fed into a Large Language Model (LLM) to generate two types of captions: 'Motion Captions', which purely describe the camera movement, and 'Directorial Captions', which describe the camera movement in the context of the scene and the director's artistic intent. The bottom half shows the GenDoP model, which takes multi-modal inputs (text and optionally RGBD data) to generate a camera trajectory. This trajectory can then be used in various video generation tasks, such as text-to-video and image-to-video.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. Top: DataDoP data construction. Given RGB video frames, we extract RGBD images and camera poses, then tag the pose sequence with different motion categories (in different colors). With LLM, we generate two types of captions from motion tags and RGBD inputs: Motion Caption describes the camera movements, while Directorial Caption describes the camera movements along with their interaction with the scene and directorial intent. Bottom: Our GenDoP method supports multi-modal inputs for trajectory creation. The generated camera sequence can be easily applied to various video generation tasks, including text-to-video (T2V) [13] and image-to-video (I2V) generation [15]. GenDoP paves the way for future advancements in camera-controlled video generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.18.19.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.18.19.1.1" rowspan="2" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.19.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.18.19.1.2" rowspan="2" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.19.1.2.1">Traj Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.T1.18.19.1.3" rowspan="2" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.19.1.3.1">Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S1.T1.18.19.1.4" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.19.1.4.1">Caption</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S1.T1.18.19.1.5" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.19.1.5.1">Statistics</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.18.20.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.1" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.1.1">Traj</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.2" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.2.1">Scene</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.3" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.3.1">Intent</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.T1.18.20.2.4" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.4.1">#Vocab</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.5" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.5.1">#Sample</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.6" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.6.1">#Frame</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.18.20.2.7" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.20.2.7.1">#Avg (s)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.3.3.4" style="padding:-1pt 8.0pt;">MVImgNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.5" style="padding:-1pt 8.0pt;">Object/Scene-Centric</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.3.3.6" style="padding:-1pt 8.0pt;">Captured</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.1" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.m1.1a"><mo id="S1.T1.1.1.1.m1.1.1" xref="S1.T1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.m1.1b"><times id="S1.T1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.2.2.2.m1.1"><semantics id="S1.T1.2.2.2.m1.1a"><mo id="S1.T1.2.2.2.m1.1.1" xref="S1.T1.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.m1.1b"><times id="S1.T1.2.2.2.m1.1.1.cmml" xref="S1.T1.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.3" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.3.3.3.m1.1"><semantics id="S1.T1.3.3.3.m1.1a"><mo id="S1.T1.3.3.3.m1.1.1" xref="S1.T1.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.m1.1b"><times id="S1.T1.3.3.3.m1.1.1.cmml" xref="S1.T1.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.3.3.7" style="padding:-1pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.8" style="padding:-1pt 8.0pt;">22K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.9" style="padding:-1pt 8.0pt;">6.5M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.3.10" style="padding:-1pt 8.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.6.6.4" style="padding:-1pt 8.0pt;">RealEstate10k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.5" style="padding:-1pt 8.0pt;">Object/Scene-Centric</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.6.6.6" style="padding:-1pt 8.0pt;">Youtube</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.4.1" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.4.4.1.m1.1"><semantics id="S1.T1.4.4.1.m1.1a"><mo id="S1.T1.4.4.1.m1.1.1" xref="S1.T1.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.1.m1.1b"><times id="S1.T1.4.4.1.m1.1.1.cmml" xref="S1.T1.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.2" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.5.5.2.m1.1"><semantics id="S1.T1.5.5.2.m1.1a"><mo id="S1.T1.5.5.2.m1.1.1" xref="S1.T1.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.2.m1.1b"><times id="S1.T1.5.5.2.m1.1.1.cmml" xref="S1.T1.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.3" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.6.6.3.m1.1"><semantics id="S1.T1.6.6.3.m1.1a"><mo id="S1.T1.6.6.3.m1.1.1" xref="S1.T1.6.6.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.3.m1.1b"><times id="S1.T1.6.6.3.m1.1.1.cmml" xref="S1.T1.6.6.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.6.6.7" style="padding:-1pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.8" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.6.6.8.1">79K</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.9" style="padding:-1pt 8.0pt;">11M</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.10" style="padding:-1pt 8.0pt;">5.5</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.9.9.4" style="padding:-1pt 8.0pt;">DL3DV-10K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.5" style="padding:-1pt 8.0pt;">Object/Scene-Centric</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.9.9.6" style="padding:-1pt 8.0pt;">Captured</td>
<td class="ltx_td ltx_align_center" id="S1.T1.7.7.1" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.7.7.1.m1.1"><semantics id="S1.T1.7.7.1.m1.1a"><mo id="S1.T1.7.7.1.m1.1.1" xref="S1.T1.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.1.m1.1b"><times id="S1.T1.7.7.1.m1.1.1.cmml" xref="S1.T1.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.8.8.2" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.8.8.2.m1.1"><semantics id="S1.T1.8.8.2.m1.1a"><mo id="S1.T1.8.8.2.m1.1.1" xref="S1.T1.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.2.m1.1b"><times id="S1.T1.8.8.2.m1.1.1.cmml" xref="S1.T1.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.3" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.9.9.3.m1.1"><semantics id="S1.T1.9.9.3.m1.1a"><mo id="S1.T1.9.9.3.m1.1.1" xref="S1.T1.9.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.9.9.3.m1.1b"><times id="S1.T1.9.9.3.m1.1.1.cmml" xref="S1.T1.9.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.9.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.9.9.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.9.9.7" style="padding:-1pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.8" style="padding:-1pt 8.0pt;">10K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.9" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.9.9.9.1">51M</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.10" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.9.9.10.1">85</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.12.12.4" style="padding:-1pt 8.0pt;">CCD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.12.5" style="padding:-1pt 8.0pt;">Tracking</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.12.12.6" style="padding:-1pt 8.0pt;">Synthetic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.10.10.1" style="padding:-1pt 8.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.10.10.1.m1.1"><semantics id="S1.T1.10.10.1.m1.1a"><mi id="S1.T1.10.10.1.m1.1.1" mathvariant="normal" xref="S1.T1.10.10.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.10.10.1.m1.1b"><ci id="S1.T1.10.10.1.m1.1.1.cmml" xref="S1.T1.10.10.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.10.10.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.10.10.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.11.11.2" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.11.11.2.m1.1"><semantics id="S1.T1.11.11.2.m1.1a"><mo id="S1.T1.11.11.2.m1.1.1" xref="S1.T1.11.11.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.11.11.2.m1.1b"><times id="S1.T1.11.11.2.m1.1.1.cmml" xref="S1.T1.11.11.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.11.11.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.11.11.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.12.3" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.12.12.3.m1.1"><semantics id="S1.T1.12.12.3.m1.1a"><mo id="S1.T1.12.12.3.m1.1.1" xref="S1.T1.12.12.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.12.12.3.m1.1b"><times id="S1.T1.12.12.3.m1.1.1.cmml" xref="S1.T1.12.12.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.12.12.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.12.12.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.12.12.7" style="padding:-1pt 8.0pt;">48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.12.8" style="padding:-1pt 8.0pt;">25K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.12.9" style="padding:-1pt 8.0pt;">4.5M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.12.10" style="padding:-1pt 8.0pt;">7.2</td>
</tr>
<tr class="ltx_tr" id="S1.T1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.15.15.4" style="padding:-1pt 8.0pt;">E.T. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.5" style="padding:-1pt 8.0pt;">Tracking</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.15.6" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.15.6.1">Film</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.13.13.1" style="padding:-1pt 8.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.13.13.1.m1.1"><semantics id="S1.T1.13.13.1.m1.1a"><mi id="S1.T1.13.13.1.m1.1.1" mathvariant="normal" xref="S1.T1.13.13.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.13.13.1.m1.1b"><ci id="S1.T1.13.13.1.m1.1.1.cmml" xref="S1.T1.13.13.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.13.13.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.13.13.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.2" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.14.14.2.m1.1"><semantics id="S1.T1.14.14.2.m1.1a"><mo id="S1.T1.14.14.2.m1.1.1" xref="S1.T1.14.14.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.14.14.2.m1.1b"><times id="S1.T1.14.14.2.m1.1.1.cmml" xref="S1.T1.14.14.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.14.14.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.14.14.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.3" style="padding:-1pt 8.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.15.15.3.m1.1"><semantics id="S1.T1.15.15.3.m1.1a"><mo id="S1.T1.15.15.3.m1.1.1" xref="S1.T1.15.15.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.15.15.3.m1.1b"><times id="S1.T1.15.15.3.m1.1.1.cmml" xref="S1.T1.15.15.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.15.15.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.15.15.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.15.15.7" style="padding:-1pt 8.0pt;">1790</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.8" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.15.8.1">115K</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.9" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.15.15.9.1">11M</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.10" style="padding:-1pt 8.0pt;">3.8</td>
</tr>
<tr class="ltx_tr" id="S1.T1.18.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S1.T1.18.18.4" style="padding:-1pt 8.0pt;">DataDoP (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.18.18.5" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.18.5.1">Free-Moving</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.18.18.6" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.18.6.1">Film</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.16.16.1" style="padding:-1pt 8.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.16.16.1.m1.1"><semantics id="S1.T1.16.16.1.m1.1a"><mi id="S1.T1.16.16.1.m1.1.1" mathvariant="normal" xref="S1.T1.16.16.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.16.16.1.m1.1b"><ci id="S1.T1.16.16.1.m1.1.1.cmml" xref="S1.T1.16.16.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.16.16.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.16.16.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.17.17.2" style="padding:-1pt 8.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.17.17.2.m1.1"><semantics id="S1.T1.17.17.2.m1.1a"><mi id="S1.T1.17.17.2.m1.1.1" mathvariant="normal" xref="S1.T1.17.17.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.17.17.2.m1.1b"><ci id="S1.T1.17.17.2.m1.1.1.cmml" xref="S1.T1.17.17.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.17.17.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.17.17.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.18.18.3" style="padding:-1pt 8.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S1.T1.18.18.3.m1.1"><semantics id="S1.T1.18.18.3.m1.1a"><mi id="S1.T1.18.18.3.m1.1.1" mathvariant="normal" xref="S1.T1.18.18.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S1.T1.18.18.3.m1.1b"><ci id="S1.T1.18.18.3.m1.1.1.cmml" xref="S1.T1.18.18.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.18.18.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S1.T1.18.18.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.18.18.7" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.18.7.1">8698</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.18.18.8" style="padding:-1pt 8.0pt;">29K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.18.18.9" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.18.9.1">11M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.18.18.10" style="padding:-1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.18.18.10.1">14.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a comparison of DataDoP with other publicly available camera trajectory datasets.  It highlights DataDoP's unique focus on artistic and free-moving camera trajectories, a characteristic absent in other datasets. Each trajectory in DataDoP is accompanied by detailed caption annotations, describing not only the camera's movement but also its interaction with the scene and the directorial intent behind the shot.  To capture complex movements, the video clips used in DataDoP have longer durations (10-20 seconds on average, with an average of 14.4 seconds) compared to other datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: DataDoP Dataset. We compare the DataDoP dataset to other datasets containing camera trajectories. DataDoP is a large dataset focusing on artistic, free-moving trajectories, each accompanied by high-quality caption annotations. The provided captions detail the camera movements, their interactions with scene content, and the underlying directorial intent. To capture more intricate camera movements, each video clip spans 10-20 seconds, averaging 14.4 seconds.
> </details>





### In-depth insights


#### Free-motion Traj
**Free-motion trajectories** represent a significant departure from traditional, constrained camera movements, enabling unrestricted 3D motion for cinematic storytelling. This approach allows for complex scene exploration and dynamic framing, offering crucial value for creative expression. Unlike object/scene-centric or tracking shots that are limited by focus on particular subjects or adherence to predefined paths, **free-motion shots** provide fluidity in navigation, enhancing visual narrative without constraints. This freedom results in more intricate and expressive camera work, essential for evoking desired emotions and guiding viewer attention within a scene. Datasets focusing on **free-motion trajectories** are invaluable, since they unlock the ability to train models that can generate highly artistic and intentional camera movements.

#### Directorial Intent
The paper introduces the concept of 'Directorial Intent' as a crucial element in camera trajectory generation, **emphasizing the artistic and expressive aspects of cinematography**. It moves beyond purely geometric or procedural approaches, aiming to capture the director's vision in camera movements. **'Directorial Intent' considers not only the technical aspects of camera motion but also its interaction with the scene**, the narrative demands, and the emotional impact on the viewer. The dataset includes detailed captions that describe the camera movements, their interaction with the scene, and the underlying directorial intent, enabling the model to learn these subtle but significant aspects. This highights the **importance of understanding the director's creative choices and translating them into realistic and compelling camera movements**, paving the way for more sophisticated and artistic video generation techniques.

#### Auto-regressive Gen
Auto-regressive generation, particularly in the context of camera trajectory design, presents a compelling approach. By sequentially predicting camera poses, conditioned on prior states and input directives, it leverages temporal dependencies for coherent motion. This method contrasts with diffusion models which might yield discontinuous paths. The **tokenization of camera parameters** into discrete units, akin to language models, allows for the use of powerful transformer architectures. Normalization and clever encoding become crucial for efficient representation and training. Multi-modal inputs such as text, RGBD data can be fused to guide the trajectory, enabling precise control over the cinematic narrative. The approach allows nuanced adjustments to camera movements and ensures stability.

#### Dataset Diversity
Dataset diversity is crucial for robust AI model development, especially in camera trajectory generation. **A diverse dataset ensures models generalize well to unseen scenarios**, avoiding biases from limited viewpoints or motion patterns. A dataset encompassing various environments (indoor, outdoor, urban, natural), lighting conditions (day, night, sunrise, sunset), and camera movements (static, tracking, free-moving, complex rotations) is essential.  **This diversity mitigates overfitting and enhances the model's ability to generate creative and realistic camera paths.** The dataset should also include different subjects (people, objects, scenes) to enable context-aware trajectory generation. Furthermore, **varying shot lengths and camera speeds contribute to a more comprehensive representation of cinematic techniques.** A lack of diversity can result in models that produce repetitive or unrealistic trajectories, hindering their application in video production and automated filmmaking.

#### Future Control
Future camera control in video generation holds immense potential. Datasets incorporating diverse, artistically driven camera trajectories are crucial for training models that move beyond simple, object-centric movements. **Advancements in auto-regressive models**, leveraging techniques like trajectory tokenization and multi-modal conditioning (text, RGBD), could enable precise and expressive camera control, **aligning with directorial intent**. This could revolutionize automated film production. Future work should explore unifying trajectory and camera-controlled video creation for iterative design and tighter integration of spatial and contextual awareness. Furthermore, exploring how point cloud data can be effectively integrated to drive better video generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07083/x3.png)

> 🔼 This figure visualizes the distribution of motion tags in the DataDoP dataset, specifically breaking down the frequency of different translation and rotation movements captured within the video data.  The bar chart displays the occurrence counts for various combinations of translation (lateral, vertical, depth) and rotation (pitch, yaw, roll).  This provides insights into the types and prevalence of camera movements in the dataset, demonstrating its diversity and complexity.
> <details>
> <summary>read the caption</summary>
> (a) Distribution of Translation and Rotation Motion Tags.
> </details>



![](https://arxiv.org/html/2504.07083/x4.png)

> 🔼 The figure shows multiple camera trajectories generated from the same caption. This demonstrates that the model produces diverse trajectories in terms of their length, direction, and speed, showcasing the model's ability to generate varied results while adhering to the input instructions.
> <details>
> <summary>read the caption</summary>
> (b) Diverse Trajectories.
> </details>



![](https://arxiv.org/html/2504.07083/x5.png)

> 🔼 Figure 2 presents a statistical overview of the DataDoP dataset, highlighting the variety and complexity of camera movements.  Panel (a) shows histograms illustrating the distribution of 27 distinct translational camera motions (left) and 7 rotational motions (right). This visualization emphasizes the rich range of camera maneuvers captured in the dataset. Panel (b) provides an example demonstrating that multiple diverse trajectories can be generated from the same textual description. This illustrates variations in trajectory length, direction, and speed, further showcasing the dataset's capacity to represent nuanced and expressive camera movement.
> <details>
> <summary>read the caption</summary>
> Figure 2: Dataset Statistics. (a) The figure illustrates the composition and distribution of 27 translation motions (left) and 7 rotation motions (right), emphasizing the complexity and diversity of trajectories in our DataDoP dataset. (b) Based on the same caption, our dataset includes diverse trajectories that still conform to the given caption. As shown in the figure, the trajectories exhibit variations in terms of length, direction, and speed, effectively showcasing the diversity within our dataset.
> </details>



![](https://arxiv.org/html/2504.07083/x6.png)

> 🔼 GenDoP, an autoregressive model for camera trajectory generation, takes multi-modal inputs (text, optional RGBD image) to generate camera trajectories.  The model treats trajectory generation as a sequential, next-token prediction problem, where each new camera pose is predicted based on previous poses and the input. This approach ensures temporal and spatial coherence in the generated trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our Auto-regressive Generation Model. Our model supports multi-modal inputs and generates trajectories based on these inputs. By treating the task as an auto-regressive next-token prediction problem, the model sequentially generates trajectories, with each new pose prediction influenced by previous camera states and input conditions.
> </details>



![](https://arxiv.org/html/2504.07083/x7.png)

> 🔼 Figure 4 presents a qualitative comparison of text-to-trajectory generation results across different models.  The top row shows example input captions. The subsequent rows display the generated camera trajectories by each model in response to each caption.  The trajectories generated by GenDoP (the authors' model) are shown in color to highlight their close adherence to the input text instructions.  In contrast, other methods, including previously published models like CCD and E.T., and the DataDoP trained version of Director3D, exhibit significantly more unstable camera paths, frequently deviating from or failing to accurately reflect the specified instructions. This visual comparison showcases GenDoP's superior ability to produce smooth, accurate, and instructionally faithful camera movements.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Results of Text-conditioned Trajectory Generation. We offer a comparative analysis of text-conditioned trajectory generation in the figure. Our model’s trajectories (color-coded to highlight text alignment) remain stable and closely follow the instructions, while other models exhibit significant jitter or fail to match the instructions well.
> </details>



![](https://arxiv.org/html/2504.07083/x8.png)

> 🔼 This figure showcases a comparison of two trajectory generation methods: one using only text input and another using both text and RGBD (depth) information.  Both methods were given the same text prompts to generate camera trajectories. The results demonstrate that while both produce trajectories that follow the instructions, the model incorporating RGBD data shows significantly better understanding of the scene. The RGBD model produces trajectories that are more naturally integrated within the scene's geometry and context. This improved scene awareness is achieved through the incorporation of depth information, allowing the model to more accurately reflect the physical layout and relationships within the scene, leading to more realistic camera movements. The text-only model, while following commands, sometimes produces movements that lack a natural integration within the scene.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Results of RGBD & Text-conditioned Generation. This figure compares the impact of incorporating RGBD input on trajectory generation under identical text conditions. While both models generate command-compliant trajectories, the RGBD & Text-conditioned model demonstrates superior scene adaptation by utilizing RGBD data to integrate geometric and contextual constraints.
> </details>



![](https://arxiv.org/html/2504.07083/x9.png)

> 🔼 This histogram shows the distribution of video shot lengths in the DataDoP dataset. The x-axis represents the duration of shots in seconds, and the y-axis represents the number of shots with that duration.  The distribution provides insights into the typical length of shots used in the dataset and aids in understanding the diversity of the data.
> <details>
> <summary>read the caption</summary>
> (a) Shot Length.
> </details>



![](https://arxiv.org/html/2504.07083/x10.png)

> 🔼 This histogram shows the distribution of trajectory scales in the DataDoP dataset.  The x-axis represents the scale of the trajectory, and the y-axis represents the number of trajectories with that scale.  The scale likely refers to a normalized measure of the spatial extent or the total distance covered by the camera during the shot. A wider distribution indicates greater diversity in the extent and size of camera movements in the dataset.
> <details>
> <summary>read the caption</summary>
> (b) Trajectory Scale.
> </details>



![](https://arxiv.org/html/2504.07083/x11.png)

> 🔼 This figure presents two histograms visualizing the distribution of video shot lengths and trajectory scales within the DataDoP dataset.  The first histogram shows the frequency of shots across different durations, providing insights into the temporal characteristics of the dataset. The second histogram displays the distribution of trajectory scales, illustrating the range of camera movements captured, from small, localized movements to larger, more extensive camera paths.
> <details>
> <summary>read the caption</summary>
> Figure R1: Dataset Statistics in terms of video shot length and trajectory scale.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.1.1" rowspan="2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.1.1" style="font-size:90%;">Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T2.2.1.1.1.2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.2.1" style="font-size:90%;">Alignment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.1.3" rowspan="2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.3.1" style="font-size:90%;">Quality</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2.2">
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.2.1" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.2.1.1" style="font-size:90%;">Video-Traj</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.2.2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.2.2.1" style="font-size:90%;">Traj-Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.2.2.3" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.2.3.1" style="font-size:90%;">Traj-Directorial</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.2.1.3.3.1" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.3.3.1.1" style="font-size:90%;">Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.2.1.3.3.2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.3.3.2.1" style="font-size:90%;">0.863</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.2.1.3.3.3" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.3.3.3.1" style="font-size:90%;">0.913</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.2.1.3.3.4" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.3.3.4.1" style="font-size:90%;">0.858</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.2.1.3.3.5" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.3.3.5.1" style="font-size:90%;">0.945</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.2.1.4.4.1" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.4.4.1.1" style="font-size:90%;">Kappa</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.4.4.2" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.4.4.2.1" style="font-size:90%;">0.642</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.4.4.3" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.4.4.3.1" style="font-size:90%;">0.530</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.2.1.4.4.4" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.4.4.4.1" style="font-size:90%;">0.502</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.4.4.5" style="padding-top:-0.9pt;padding-bottom:-0.9pt;"><span class="ltx_text" id="S3.T2.2.1.4.4.5.1" style="font-size:90%;">0.551</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study conducted to evaluate the quality and human-alignment of the DataDoP dataset.  The study involved human annotators assessing various aspects of the dataset, including the alignment between video trajectories and their associated captions (Video-Traj, Traj-Motion, and Traj-Directorial) and the overall quality of the trajectories.  The results, expressed as accuracy and Cohen's Kappa scores, demonstrate a high degree of inter-rater reliability, indicating the DataDoP dataset's high quality and consistency in its annotations. 
> <details>
> <summary>read the caption</summary>
> Table 2: Dataset User Study. Our user study demonstrates that our dataset exhibits excellent quality and human-alignment, with proven reliability of the results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.8.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.7.8.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.1.1" style="font-size:70%;">Condition</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.7.8.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.2.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.7.8.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.3.1" style="font-size:70%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="2" id="S4.T3.7.8.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.4.1" style="font-size:70%;">Text-Trajectory Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="2" id="S4.T3.7.8.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.5.1" style="font-size:70%;">Trajectory Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="3" id="S4.T3.7.8.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.1.6.1" style="font-size:70%;">User Study (AUR)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1" style="font-size:70%;">F1-Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1" style="font-size:70%;">CLaTr-CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1" style="font-size:70%;">Coverage<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.1" style="font-size:70%;">CLaTr-FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.1" style="font-size:70%;">Alignment<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.1" style="font-size:70%;">Quality<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.1" style="font-size:70%;">Complexity<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><ci id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.9.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.7.9.2.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.2.1.1" style="font-size:70%;">Motion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.7.9.2.2">
<span class="ltx_text" id="S4.T3.7.9.2.2.1" style="font-size:70%;">CCD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.9.2.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T3.7.9.2.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.7.9.2.3"><span class="ltx_text" id="S4.T3.7.9.2.3.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.9.2.4"><span class="ltx_text" id="S4.T3.7.9.2.4.1" style="font-size:70%;">0.297</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.9.2.5"><span class="ltx_text" id="S4.T3.7.9.2.5.1" style="font-size:70%;">5.288</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.9.2.6"><span class="ltx_text" id="S4.T3.7.9.2.6.1" style="font-size:70%;">0.332</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.9.2.7"><span class="ltx_text" id="S4.T3.7.9.2.7.1" style="font-size:70%;">357.822</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.9.2.8"><span class="ltx_text" id="S4.T3.7.9.2.8.1" style="font-size:70%;">3.013</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.9.2.9"><span class="ltx_text" id="S4.T3.7.9.2.9.1" style="font-size:70%;">3.022</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.9.2.10"><span class="ltx_text" id="S4.T3.7.9.2.10.1" style="font-size:70%;">3.273</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.10.3">
<td class="ltx_td ltx_align_left" id="S4.T3.7.10.3.1">
<span class="ltx_text" id="S4.T3.7.10.3.1.1" style="font-size:70%;">E.T. </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.10.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T3.7.10.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.10.3.2"><span class="ltx_text" id="S4.T3.7.10.3.2.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3.3"><span class="ltx_text" id="S4.T3.7.10.3.3.1" style="font-size:70%;">0.330</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.10.3.4"><span class="ltx_text" id="S4.T3.7.10.3.4.1" style="font-size:70%;">2.450</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3.5"><span class="ltx_text" id="S4.T3.7.10.3.5.1" style="font-size:70%;">0.020</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.10.3.6"><span class="ltx_text" id="S4.T3.7.10.3.6.1" style="font-size:70%;">609.906</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3.7"><span class="ltx_text" id="S4.T3.7.10.3.7.1" style="font-size:70%;">1.227</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3.8"><span class="ltx_text" id="S4.T3.7.10.3.8.1" style="font-size:70%;">1.067</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.10.3.9"><span class="ltx_text" id="S4.T3.7.10.3.9.1" style="font-size:70%;">1.067</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.11.4">
<td class="ltx_td ltx_align_left" id="S4.T3.7.11.4.1">
<span class="ltx_text" id="S4.T3.7.11.4.1.1" style="font-size:70%;">Director3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.11.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T3.7.11.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.11.4.2"><span class="ltx_text" id="S4.T3.7.11.4.2.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4.3"><span class="ltx_text" id="S4.T3.7.11.4.3.1" style="font-size:70%;">0.058</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.11.4.4"><span class="ltx_text" id="S4.T3.7.11.4.4.1" style="font-size:70%;">0.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4.5"><span class="ltx_text" id="S4.T3.7.11.4.5.1" style="font-size:70%;">0.171</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.11.4.6"><span class="ltx_text" id="S4.T3.7.11.4.6.1" style="font-size:70%;">542.385</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4.7"><span class="ltx_text" id="S4.T3.7.11.4.7.1" style="font-size:70%;">2.313</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4.8"><span class="ltx_text" id="S4.T3.7.11.4.8.1" style="font-size:70%;">3.110</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.11.4.9"><span class="ltx_text" id="S4.T3.7.11.4.9.1" style="font-size:70%;">2.453</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.12.5">
<td class="ltx_td ltx_align_left" id="S4.T3.7.12.5.1">
<span class="ltx_text" id="S4.T3.7.12.5.1.1" style="font-size:70%;">Director3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.12.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T3.7.12.5.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.12.5.2"><span class="ltx_text" id="S4.T3.7.12.5.2.1" style="font-size:70%;">DataDoP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.3.1" style="font-size:70%;">0.391</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.12.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.4.1" style="font-size:70%;">31.689</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.5.1" style="font-size:70%;">0.839</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.12.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.6.1" style="font-size:70%;">31.979</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.7.1" style="font-size:70%;">3.753</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.8.1" style="font-size:70%;">3.260</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.12.5.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.12.5.9.1" style="font-size:70%;">3.493</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.13.6">
<td class="ltx_td ltx_align_left" id="S4.T3.7.13.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.1.1" style="font-size:70%;background-color:#D9EBFF;">GenDoP(Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.13.6.2"><span class="ltx_text" id="S4.T3.7.13.6.2.1" style="font-size:70%;background-color:#D9EBFF;">DataDoP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.3.1" style="font-size:70%;background-color:#D9EBFF;">0.400</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.13.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.4.1" style="font-size:70%;background-color:#D9EBFF;">36.179</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.5.1" style="font-size:70%;background-color:#D9EBFF;">0.872</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.13.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.6.1" style="font-size:70%;background-color:#D9EBFF;">22.714</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.7.1" style="font-size:70%;background-color:#D9EBFF;">4.693</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6.8"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.8.1" style="font-size:70%;background-color:#D9EBFF;">4.573</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.13.6.9"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.6.9.1" style="font-size:70%;background-color:#D9EBFF;">4.713</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.14.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.7.14.7.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.14.7.1.1" style="font-size:70%;">Directorial</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.7.14.7.2">
<span class="ltx_text" id="S4.T3.7.14.7.2.1" style="font-size:70%;">CCD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.14.7.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T3.7.14.7.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.7.14.7.3"><span class="ltx_text" id="S4.T3.7.14.7.3.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.14.7.4"><span class="ltx_text" id="S4.T3.7.14.7.4.1" style="font-size:70%;">0.315</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.14.7.5"><span class="ltx_text" id="S4.T3.7.14.7.5.1" style="font-size:70%;">4.247</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.14.7.6"><span class="ltx_text" id="S4.T3.7.14.7.6.1" style="font-size:70%;">0.416</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.14.7.7"><span class="ltx_text" id="S4.T3.7.14.7.7.1" style="font-size:70%;">240.216</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.14.7.8"><span class="ltx_text" id="S4.T3.7.14.7.8.1" style="font-size:70%;">2.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.14.7.9"><span class="ltx_text" id="S4.T3.7.14.7.9.1" style="font-size:70%;">3.050</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.14.7.10"><span class="ltx_text" id="S4.T3.7.14.7.10.1" style="font-size:70%;">3.217</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.15.8">
<td class="ltx_td ltx_align_left" id="S4.T3.7.15.8.1">
<span class="ltx_text" id="S4.T3.7.15.8.1.1" style="font-size:70%;">E.T. </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.15.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T3.7.15.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.15.8.2"><span class="ltx_text" id="S4.T3.7.15.8.2.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8.3"><span class="ltx_text" id="S4.T3.7.15.8.3.1" style="font-size:70%;">0.319</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.15.8.4"><span class="ltx_text" id="S4.T3.7.15.8.4.1" style="font-size:70%;">0.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8.5"><span class="ltx_text" id="S4.T3.7.15.8.5.1" style="font-size:70%;">0.014</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.15.8.6"><span class="ltx_text" id="S4.T3.7.15.8.6.1" style="font-size:70%;">758.923</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8.7"><span class="ltx_text" id="S4.T3.7.15.8.7.1" style="font-size:70%;">1.309</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8.8"><span class="ltx_text" id="S4.T3.7.15.8.8.1" style="font-size:70%;">1.092</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.15.8.9"><span class="ltx_text" id="S4.T3.7.15.8.9.1" style="font-size:70%;">1.184</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.16.9">
<td class="ltx_td ltx_align_left" id="S4.T3.7.16.9.1">
<span class="ltx_text" id="S4.T3.7.16.9.1.1" style="font-size:70%;">Director3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.16.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T3.7.16.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.16.9.2"><span class="ltx_text" id="S4.T3.7.16.9.2.1" style="font-size:70%;">Pre-trained</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.9.3"><span class="ltx_text" id="S4.T3.7.16.9.3.1" style="font-size:70%;">0.126</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.16.9.4"><span class="ltx_text" id="S4.T3.7.16.9.4.1" style="font-size:70%;">0.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.9.5"><span class="ltx_text" id="S4.T3.7.16.9.5.1" style="font-size:70%;">0.348</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.16.9.6"><span class="ltx_text" id="S4.T3.7.16.9.6.1" style="font-size:70%;">348.312</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.9.7"><span class="ltx_text" id="S4.T3.7.16.9.7.1" style="font-size:70%;">2.333</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.9.8"><span class="ltx_text" id="S4.T3.7.16.9.8.1" style="font-size:70%;">2.867</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.16.9.9"><span class="ltx_text" id="S4.T3.7.16.9.9.1" style="font-size:70%;">2.342</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.17.10">
<td class="ltx_td ltx_align_left" id="S4.T3.7.17.10.1">
<span class="ltx_text" id="S4.T3.7.17.10.1.1" style="font-size:70%;">Director3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.7.17.10.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07083v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T3.7.17.10.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.17.10.2"><span class="ltx_text" id="S4.T3.7.17.10.2.1" style="font-size:70%;">DataDoP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.17.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.3.1" style="font-size:70%;">0.361</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.17.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.4.1" style="font-size:70%;">23.505</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.17.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.5.1" style="font-size:70%;">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.17.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.6.1" style="font-size:70%;">35.538</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.17.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.7.1" style="font-size:70%;">3.808</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.17.10.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.8.1" style="font-size:70%;">3.467</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.17.10.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.7.17.10.9.1" style="font-size:70%;">3.683</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.18.11">
<td class="ltx_td ltx_align_left" id="S4.T3.7.18.11.1"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.1.1" style="font-size:70%;background-color:#D9EBFF;">GenDoP(Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.18.11.2"><span class="ltx_text" id="S4.T3.7.18.11.2.1" style="font-size:70%;background-color:#D9EBFF;">DataDoP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.18.11.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.3.1" style="font-size:70%;background-color:#D9EBFF;">0.399</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.18.11.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.4.1" style="font-size:70%;background-color:#D9EBFF;">32.408</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.18.11.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.5.1" style="font-size:70%;background-color:#D9EBFF;">0.854</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.18.11.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.6.1" style="font-size:70%;background-color:#D9EBFF;">34.275</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.18.11.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.7.1" style="font-size:70%;background-color:#D9EBFF;">4.617</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.18.11.8"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.8.1" style="font-size:70%;background-color:#D9EBFF;">4.557</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.18.11.9"><span class="ltx_text ltx_font_bold" id="S4.T3.7.18.11.9.1" style="font-size:70%;background-color:#D9EBFF;">4.575</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.19.12" style="background-color:#D9EBFF;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.7.19.12.1" style="background-color:#FFFFFF;"><span class="ltx_text" id="S4.T3.7.19.12.1.1" style="font-size:70%;background-color:#FFFFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.1.1.1">RGBD&amp;Text</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.2.1" style="font-size:70%;background-color:#D9EBFF;">GenDoP (Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.7.19.12.3"><span class="ltx_text" id="S4.T3.7.19.12.3.1" style="font-size:70%;background-color:#D9EBFF;">DataDoP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.4.1" style="font-size:70%;background-color:#D9EBFF;">0.388</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.7.19.12.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.5.1" style="font-size:70%;background-color:#D9EBFF;">30.231</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.6"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.6.1" style="font-size:70%;background-color:#D9EBFF;">0.855</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.7.19.12.7"><span class="ltx_text ltx_font_bold" id="S4.T3.7.19.12.7.1" style="font-size:70%;background-color:#D9EBFF;">33.653</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.8"><span class="ltx_text" id="S4.T3.7.19.12.8.1" style="font-size:70%;background-color:#D9EBFF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.9"><span class="ltx_text" id="S4.T3.7.19.12.9.1" style="font-size:70%;background-color:#D9EBFF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.7.19.12.10"><span class="ltx_text" id="S4.T3.7.19.12.10.1" style="font-size:70%;background-color:#D9EBFF;">-</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of GenDoP against other state-of-the-art camera trajectory generation methods.  GenDoP is evaluated on two text-conditional generation tasks (generating trajectories based on motion and directorial captions) and a more challenging RGBD & Text-conditioned task. The comparison includes human-tracking methods (CCD [21] and E.T. [8]) and an object/scene-centric method (Director3D [25]).  The metrics used assess text-trajectory alignment (F1-score and CLaTr-CLIP) and trajectory quality (CLaTr-FID, Coverage, Alignment, and Quality - all assessed through user studies).  GenDoP consistently surpasses all baselines across all metrics, supporting the paper's claim of superior performance due to the dataset and autoregressive framework.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative Results. We present the quantitative results of our GenDoP across two text-conditional generation tasks and an RGBD & Text-conditioned task, comparing it with human-tracking methods CCD [21] and E.T. [8], as well as the object/scene-centric method Director3D [25]. Our model consistently outperforms all baselines across all metrics and caption subsets, confirming the effectiveness of both our dataset and auto-regressive framework, positioning GenDoP as a state-of-the-art trajectory generation model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S5.T4.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.1.1.1">Ablation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_tt" colspan="2" id="S5.T4.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.1.2.1">Text-Traj Alignment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_tt" colspan="2" id="S5.T4.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.1.3.1">Trajectory Quality</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="S5.T4.6.8.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.1.1">Encoder</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T4.6.8.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.2.1">Norm</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.6.8.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.3.1">F1-Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.6.8.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.4.1">CLaTr-CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l" id="S5.T4.6.8.2.5"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.5.1">Coverage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.6.8.2.6"><span class="ltx_text ltx_font_bold" id="S5.T4.6.8.2.6.1">CLaTr-FID</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T4.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">✓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.2.2.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mi id="S5.T4.2.2.2.m1.1.1" mathvariant="normal" xref="S5.T4.2.2.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.3.1">0.400</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.4.1">36.179</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.5.1">0.872</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.6.1">22.714</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.3.3.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T4.3.3.1.m1.1"><semantics id="S5.T4.3.3.1.m1.1a"><mi id="S5.T4.3.3.1.m1.1.1" mathvariant="normal" xref="S5.T4.3.3.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.1.m1.1b"><ci id="S5.T4.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.1.m1.1d">✓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.4.4.2"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.4.4.2.m1.1"><semantics id="S5.T4.4.4.2.m1.1a"><mo id="S5.T4.4.4.2.m1.1.1" xref="S5.T4.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.2.m1.1b"><times id="S5.T4.4.4.2.m1.1.1.cmml" xref="S5.T4.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.2.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.3">0.322</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.4.4.4">14.917</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.5">0.766</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6">68.590</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T4.5.5.1"><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.5.5.1.m1.1"><semantics id="S5.T4.5.5.1.m1.1a"><mo id="S5.T4.5.5.1.m1.1.1" xref="S5.T4.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.1.m1.1b"><times id="S5.T4.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.1.m1.1d">×</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.6.6.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T4.6.6.2.m1.1"><semantics id="S5.T4.6.6.2.m1.1a"><mi id="S5.T4.6.6.2.m1.1.1" mathvariant="normal" xref="S5.T4.6.6.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.2.m1.1b"><ci id="S5.T4.6.6.2.m1.1.1.cmml" xref="S5.T4.6.6.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.2.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.6.3">0.389</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.6.6.4">31.420</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.6.5">0.866</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.6.6">22.841</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of two key components in the GenDoP model: canonical normalization (a preprocessing step for trajectory data described in Section 4.2) and the trainability of the encoder (the model component responsible for processing text and RGBD inputs, detailed in Section 4.3).  The table compares the model's performance on text-trajectory alignment and trajectory quality metrics when each of these components is modified or removed.  Specifically, it shows results for the full model and variants that exclude canonical normalization or use a non-trainable (pretrained) encoder, providing insights into their relative contributions to the overall model accuracy and effectiveness. The metrics used include F1-Score and CLaTr-CLIP for alignment and CLaTr-FID for quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Study. We conduct an ablation study to evaluate the effectiveness of canonical normalization (see Sec. 4.2) and the trainability of the encoder (see Sec. 4.3).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T1.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" colspan="2" id="A2.T1.4.5.1.1" rowspan="2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.5.1.1.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.5.1.1.2" style="font-size:90%;">Ablation</span><span class="ltx_text" id="A2.T1.4.5.1.1.3" style="font-size:90%;"></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T1.4.5.1.2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.5.1.2.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.5.1.2.2" style="font-size:90%;">Text-Trajectory Alignment</span><span class="ltx_text" id="A2.T1.4.5.1.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T1.4.5.1.3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.5.1.3.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.5.1.3.2" style="font-size:90%;">Trajectory Quality</span><span class="ltx_text" id="A2.T1.4.5.1.3.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.4">
<td class="ltx_td ltx_align_center" id="A2.T1.1.1.1" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.1.1.1.2" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.1.1.1.1" style="font-size:90%;">F1-Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T1.1.1.1.1.m1.1"><semantics id="A2.T1.1.1.1.1.m1.1a"><mo id="A2.T1.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T1.1.1.1.1.m1.1b"><ci id="A2.T1.1.1.1.1.m1.1.1.cmml" xref="A2.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span><span class="ltx_text" id="A2.T1.1.1.1.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.2.2.2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.2.2.2.2" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.2.2.2.1" style="font-size:90%;">CLaTr-Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T1.2.2.2.1.m1.1"><semantics id="A2.T1.2.2.2.1.m1.1a"><mo id="A2.T1.2.2.2.1.m1.1.1" stretchy="false" xref="A2.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T1.2.2.2.1.m1.1b"><ci id="A2.T1.2.2.2.1.m1.1.1.cmml" xref="A2.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math></span><span class="ltx_text" id="A2.T1.2.2.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.3.3.3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.3.3.3.2" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.3.3.3.1" style="font-size:90%;">Coverage<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T1.3.3.3.1.m1.1"><semantics id="A2.T1.3.3.3.1.m1.1a"><mo id="A2.T1.3.3.3.1.m1.1.1" stretchy="false" xref="A2.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T1.3.3.3.1.m1.1b"><ci id="A2.T1.3.3.3.1.m1.1.1.cmml" xref="A2.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span><span class="ltx_text" id="A2.T1.3.3.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.4.4" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.4.4.2" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.4.4.1" style="font-size:90%;">CLaTr-FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T1.4.4.4.1.m1.1"><semantics id="A2.T1.4.4.4.1.m1.1a"><mo id="A2.T1.4.4.4.1.m1.1.1" stretchy="false" xref="A2.T1.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T1.4.4.4.1.m1.1b"><ci id="A2.T1.4.4.4.1.m1.1.1.cmml" xref="A2.T1.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.4.4.4.1.m1.1d">↓</annotation></semantics></math></span><span class="ltx_text" id="A2.T1.4.4.4.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T1.4.6.2.1" rowspan="5" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.6.2.1.1" style="font-size:90%;">      </span><span class="ltx_text" id="A2.T1.4.6.2.1.2" style="font-size:90%;">Discrete bins</span><span class="ltx_text" id="A2.T1.4.6.2.1.3" style="font-size:90%;"></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T1.4.6.2.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.6.2.2.1" style="font-size:90%;">      64</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.6.2.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.6.2.3.1" style="font-size:90%;">      0.394</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.4.6.2.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.6.2.4.1" style="font-size:90%;">      33.594</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.6.2.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.6.2.5.1" style="font-size:90%;">      0.751</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.6.2.6" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.6.2.6.1" style="font-size:90%;">      49.854</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.7.3.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.7.3.1.1" style="font-size:90%;">      128</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.7.3.2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.7.3.2.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.7.3.2.2" style="font-size:90%;">0.409</span><span class="ltx_text" id="A2.T1.4.7.3.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.7.3.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.7.3.3.1" style="font-size:90%;">      35.824</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.7.3.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.7.3.4.1" style="font-size:90%;">      0.851</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.7.3.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.7.3.5.1" style="font-size:90%;">      24.748</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.8.4.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.8.4.1.1" style="font-size:90%;">      256</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.8.4.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.8.4.2.1" style="font-size:90%;">      0.400</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.8.4.3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.8.4.3.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.8.4.3.2" style="font-size:90%;">36.179</span><span class="ltx_text" id="A2.T1.4.8.4.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.8.4.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.8.4.4.1" style="font-size:90%;">      0.872</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.8.4.5" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.8.4.5.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.8.4.5.2" style="font-size:90%;">22.714</span><span class="ltx_text" id="A2.T1.4.8.4.5.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.9.5.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.9.5.1.1" style="font-size:90%;">      512</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.9.5.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.9.5.2.1" style="font-size:90%;">      0.391</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.9.5.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.9.5.3.1" style="font-size:90%;">      35.201</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.9.5.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.9.5.4.1" style="font-size:90%;">      0.882</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.9.5.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.9.5.5.1" style="font-size:90%;">      23.633</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.10.6.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.10.6.1.1" style="font-size:90%;">      1024</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.10.6.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.10.6.2.1" style="font-size:90%;">      0.393</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.10.6.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.10.6.3.1" style="font-size:90%;">      34.277</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.10.6.4" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.10.6.4.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.10.6.4.2" style="font-size:90%;">0.884</span><span class="ltx_text" id="A2.T1.4.10.6.4.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.10.6.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.10.6.5.1" style="font-size:90%;">      24.979</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T1.4.11.7.1" rowspan="3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.11.7.1.1" style="font-size:90%;">      </span><span class="ltx_text" id="A2.T1.4.11.7.1.2" style="font-size:90%;">Traj length</span><span class="ltx_text" id="A2.T1.4.11.7.1.3" style="font-size:90%;"></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T1.4.11.7.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.11.7.2.1" style="font-size:90%;">      15</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.11.7.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.11.7.3.1" style="font-size:90%;">      0.398</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.4.11.7.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.11.7.4.1" style="font-size:90%;">      34.576</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.11.7.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.11.7.5.1" style="font-size:90%;">      0.863</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.11.7.6" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.11.7.6.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.11.7.6.2" style="font-size:90%;">22.238</span><span class="ltx_text" id="A2.T1.4.11.7.6.3" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.12.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.12.8.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.12.8.1.1" style="font-size:90%;">      30</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.12.8.2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.12.8.2.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.12.8.2.2" style="font-size:90%;">0.400</span><span class="ltx_text" id="A2.T1.4.12.8.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.12.8.3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.12.8.3.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.12.8.3.2" style="font-size:90%;">36.179</span><span class="ltx_text" id="A2.T1.4.12.8.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.12.8.4" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.12.8.4.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.12.8.4.2" style="font-size:90%;">0.872</span><span class="ltx_text" id="A2.T1.4.12.8.4.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.12.8.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.12.8.5.1" style="font-size:90%;">      22.714</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.13.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.13.9.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.13.9.1.1" style="font-size:90%;">      60</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.13.9.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.13.9.2.1" style="font-size:90%;">      0.393</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.13.9.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.13.9.3.1" style="font-size:90%;">      34.523</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.13.9.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.13.9.4.1" style="font-size:90%;">      0.864</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.13.9.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.13.9.5.1" style="font-size:90%;">      26.307</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T1.4.14.10.1" rowspan="3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.14.10.1.1" style="font-size:90%;">      </span><span class="ltx_text" id="A2.T1.4.14.10.1.2" style="font-size:90%;">Model size</span><span class="ltx_text" id="A2.T1.4.14.10.1.3" style="font-size:90%;"></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T1.4.14.10.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.14.10.2.1" style="font-size:90%;">      small</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.14.10.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.14.10.3.1" style="font-size:90%;">      0.389</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T1.4.14.10.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.14.10.4.1" style="font-size:90%;">      32.868</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.14.10.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.14.10.5.1" style="font-size:90%;">      0.880</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T1.4.14.10.6" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.14.10.6.1" style="font-size:90%;">      25.604</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.15.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A2.T1.4.15.11.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.15.11.1.1" style="font-size:90%;">      base</span></th>
<td class="ltx_td ltx_align_center" id="A2.T1.4.15.11.2" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.15.11.2.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.15.11.2.2" style="font-size:90%;">0.400</span><span class="ltx_text" id="A2.T1.4.15.11.2.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T1.4.15.11.3" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.15.11.3.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.15.11.3.2" style="font-size:90%;">36.179</span><span class="ltx_text" id="A2.T1.4.15.11.3.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.15.11.4" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.15.11.4.1" style="font-size:90%;">      0.872</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.4.15.11.5" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.15.11.5.1" style="font-size:90%;">      22.714</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.4.16.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T1.4.16.12.1" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.16.12.1.1" style="font-size:90%;">      large</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.4.16.12.2" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.16.12.2.1" style="font-size:90%;">      0.398</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T1.4.16.12.3" style="padding:-0.25pt 20.0pt;"><span class="ltx_text" id="A2.T1.4.16.12.3.1" style="font-size:90%;">      33.843</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.4.16.12.4" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.16.12.4.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.16.12.4.2" style="font-size:90%;">0.888</span><span class="ltx_text" id="A2.T1.4.16.12.4.3" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.4.16.12.5" style="padding:-0.25pt 20.0pt;">
<span class="ltx_text" id="A2.T1.4.16.12.5.1" style="font-size:90%;">      </span><span class="ltx_text ltx_font_bold" id="A2.T1.4.16.12.5.2" style="font-size:90%;">20.474</span><span class="ltx_text" id="A2.T1.4.16.12.5.3" style="font-size:90%;"></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of key hyperparameters on the performance of the GenDoP model.  The hyperparameters analyzed are the number of discrete bins (B) used for tokenization, the length of the trajectory sequences (N), and the size of the model (small, base, large).  The study systematically varies each hyperparameter while holding the others constant to determine their individual influence on two key metrics: Text-Trajectory Alignment (measured by F1-score and CLaTr-Score) and Trajectory Quality (measured by Coverage and CLaTr-FID). The results reveal the optimal combination of hyperparameters that yields the best performance according to these metrics.
> <details>
> <summary>read the caption</summary>
> Table S1: Ablation Study on Hyperparameters. We conduct ablation experiments on several hyperparameters, including the number of discrete bins, trajectory length, and model size. These parameters correspond to the discrete bin size B𝐵Bitalic_B, the trajectory length N𝑁Nitalic_N, and the model size (as detailed in Sec. 5.1). The results show that the optimal performance is achieved when the number of discrete bins is set to 256, the trajectory length to 30, and the model size to base.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07083/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07083/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}