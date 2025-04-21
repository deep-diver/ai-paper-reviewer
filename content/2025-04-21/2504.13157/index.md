---
title: "AerialMegaDepth: Learning Aerial-Ground Reconstruction and View Synthesis"
summary: "AerialMegaDepth enables aerial-ground view synthesis via a hybrid dataset & new methods, overcoming viewpoint limitations in 3D reconstruction."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13157 {{< /keyword >}}
{{< keyword icon="writer" >}} Khiem Vuong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13157" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13157" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13157/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Current learning-based approaches struggle with the viewpoint variations between aerial and ground images,** due to the lack of datasets. **AerialMegaDepth bridges this gap by creating a hybrid dataset**. It combines pseudo-synthetic renderings from 3D city meshes (e.g., Google Earth) with real, ground-level images(MegaDepth). This data offers diverse viewpoints and realistic ground-level details, improving the performance. 



**The proposed framework generates co-registered aerial-ground image pairs by rendering aerial views and aligning them with real images**.  It enables 3D reconstruction and view synthesis. It finetunes algorithms achieving improvements on real-world tasks. For camera estimation, the accuracy is raised from 5% to 56%. The hybrid dataset also enhances performance on tasks, novel-view synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces AerialMegaDepth: a large-scale, co-registered aerial-ground dataset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a framework combining pseudo-synthetic renderings with real imagery for 3D reconstruction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates significant improvements in camera estimation and novel view synthesis tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**AerialMegaDepth** tackles the challenge of aerial-ground view synthesis, crucial for robotics, urban planning, and augmented reality. The hybrid dataset & methods address a key limitation in current 3D reconstruction, offering a path to more robust & versatile vision systems. It also opens doors for future research in large-scale scene understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13157/x1.png)

> 🔼 Figure 1 showcases examples of generated aerial-ground geometry data.  The first row displays co-registered pseudo-synthetic (mesh-rendered) aerial images and real ground-level images from various scenes. Each example includes depth maps, point clouds, and camera parameters (intrinsics and extrinsics) in a unified coordinate system. The second row demonstrates the effectiveness of the generated dataset.  Using this dataset (137 landmarks, 132K images), two learning-based methods are significantly improved on real, unseen aerial-ground scenarios.  Specifically, multi-view geometry prediction is enhanced using a fine-tuned DUSt3R model, and novel view synthesis is improved by fine-tuning a ZeroNVS model originally trained on MegaScenes. 
> <details>
> <summary>read the caption</summary>
> Figure 1: First row: Examples of our generated cross-view (aerial-ground) geometry data, including co-registered pseudo-synthetic (i.e., mesh-rendered) aerial and real ground-level images, with corresponding depth maps, point clouds, and camera intrinsics/extrinsics in a unified coordinate system, for a variety of scenes. Second row: Leveraging such data curated over 137 landmarks and 132K geo-registered images, we show significant improvements in learning-based methods on real unseen ground-aerial scenarios across two representative tasks: 1) multi-view geometry prediction using DUSt3R [65] finetuned on our data, and 2) novel view synthesis from a single image conditioned on a target pose by fine-tuning ZeroNVS [46] that was originally trained on MegaScenes [61].
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.9.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.9.9.10.1.1" rowspan="2"><span class="ltx_text" id="S5.T1.9.9.10.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T1.9.9.10.1.2"><em class="ltx_emph ltx_font_italic" id="S5.T1.9.9.10.1.2.1">Camera Rotation Accuracy</em></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T1.9.9.10.1.3"><em class="ltx_emph ltx_font_italic" id="S5.T1.9.9.10.1.3.1">Camera Translation Accuracy</em></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T1.9.9.10.1.4"><em class="ltx_emph ltx_font_italic" id="S5.T1.9.9.10.1.4.1">3D Pointmap Accuracy</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.1">
<math alttext="\mathrm{RRA}" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mi id="S5.T1.1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.1.m1.1.1.cmml">RRA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">RRA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\mathrm{RRA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">roman_RRA</annotation></semantics></math>@5°</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.2">
<math alttext="\mathrm{RRA}" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.m1.1"><semantics id="S5.T1.2.2.2.2.m1.1a"><mi id="S5.T1.2.2.2.2.m1.1.1" xref="S5.T1.2.2.2.2.m1.1.1.cmml">RRA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.m1.1b"><ci id="S5.T1.2.2.2.2.m1.1.1.cmml" xref="S5.T1.2.2.2.2.m1.1.1">RRA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.m1.1c">\mathrm{RRA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.m1.1d">roman_RRA</annotation></semantics></math>@10°</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.3.3.3.3">
<math alttext="\mathrm{RRA}" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.m1.1"><semantics id="S5.T1.3.3.3.3.m1.1a"><mi id="S5.T1.3.3.3.3.m1.1.1" xref="S5.T1.3.3.3.3.m1.1.1.cmml">RRA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.m1.1b"><ci id="S5.T1.3.3.3.3.m1.1.1.cmml" xref="S5.T1.3.3.3.3.m1.1.1">RRA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.m1.1c">\mathrm{RRA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.m1.1d">roman_RRA</annotation></semantics></math>@15°</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.4">
<math alttext="\mathrm{RTA}" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.m1.1"><semantics id="S5.T1.4.4.4.4.m1.1a"><mi id="S5.T1.4.4.4.4.m1.1.1" xref="S5.T1.4.4.4.4.m1.1.1.cmml">RTA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.m1.1b"><ci id="S5.T1.4.4.4.4.m1.1.1.cmml" xref="S5.T1.4.4.4.4.m1.1.1">RTA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.m1.1c">\mathrm{RTA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.m1.1d">roman_RTA</annotation></semantics></math>@5°</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.5.5">
<math alttext="\mathrm{RTA}" class="ltx_Math" display="inline" id="S5.T1.5.5.5.5.m1.1"><semantics id="S5.T1.5.5.5.5.m1.1a"><mi id="S5.T1.5.5.5.5.m1.1.1" xref="S5.T1.5.5.5.5.m1.1.1.cmml">RTA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.5.m1.1b"><ci id="S5.T1.5.5.5.5.m1.1.1.cmml" xref="S5.T1.5.5.5.5.m1.1.1">RTA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.5.m1.1c">\mathrm{RTA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.5.m1.1d">roman_RTA</annotation></semantics></math>@10°</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.6.6.6.6">
<math alttext="\mathrm{RTA}" class="ltx_Math" display="inline" id="S5.T1.6.6.6.6.m1.1"><semantics id="S5.T1.6.6.6.6.m1.1a"><mi id="S5.T1.6.6.6.6.m1.1.1" xref="S5.T1.6.6.6.6.m1.1.1.cmml">RTA</mi><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.6.m1.1b"><ci id="S5.T1.6.6.6.6.m1.1.1.cmml" xref="S5.T1.6.6.6.6.m1.1.1">RTA</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.6.m1.1c">\mathrm{RTA}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.6.m1.1d">roman_RTA</annotation></semantics></math>@15°</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.7.7">
<math alttext="\delta" class="ltx_Math" display="inline" id="S5.T1.7.7.7.7.m1.1"><semantics id="S5.T1.7.7.7.7.m1.1a"><mi id="S5.T1.7.7.7.7.m1.1.1" xref="S5.T1.7.7.7.7.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.7.m1.1b"><ci id="S5.T1.7.7.7.7.m1.1.1.cmml" xref="S5.T1.7.7.7.7.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.7.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.7.m1.1d">italic_δ</annotation></semantics></math>@0.5<span class="ltx_text" id="S5.T1.7.7.7.7.1">m</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.8.8.8">
<math alttext="\delta" class="ltx_Math" display="inline" id="S5.T1.8.8.8.8.m1.1"><semantics id="S5.T1.8.8.8.8.m1.1a"><mi id="S5.T1.8.8.8.8.m1.1.1" xref="S5.T1.8.8.8.8.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.8.8.m1.1b"><ci id="S5.T1.8.8.8.8.m1.1.1.cmml" xref="S5.T1.8.8.8.8.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.8.8.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.8.8.m1.1d">italic_δ</annotation></semantics></math>@1<span class="ltx_text" id="S5.T1.8.8.8.8.1">m</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.9">
<math alttext="\delta" class="ltx_Math" display="inline" id="S5.T1.9.9.9.9.m1.1"><semantics id="S5.T1.9.9.9.9.m1.1a"><mi id="S5.T1.9.9.9.9.m1.1.1" xref="S5.T1.9.9.9.9.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.9.9.9.9.m1.1b"><ci id="S5.T1.9.9.9.9.m1.1.1.cmml" xref="S5.T1.9.9.9.9.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.9.9.9.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.9.9.9.m1.1d">italic_δ</annotation></semantics></math>@2<span class="ltx_text" id="S5.T1.9.9.9.9.1">m</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.11.2.1">LoFTR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.13157v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.2">0.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.3">1.83</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.9.11.2.4">2.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.5">0.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.6">1.53</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.9.11.2.7">2.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.12.3.1">SP+SG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.13157v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.2">8.56</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.3">10.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.12.3.4">12.23</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.5">7.65</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.6">9.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.12.3.7">11.31</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.13.4.1">MASt3R <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.13157v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite> (released)</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.2">3.36</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.3">3.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.13.4.4">4.59</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.5">2.45</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.6">3.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.13.4.7">4.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.14.5.1">MASt3R + MatrixCity</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.2">19.78</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.3">30.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.14.5.4">38.17</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.5">10.67</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.6">25.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.14.5.7">29.43</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.14.5.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.15.6.1"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.15.6.1.1">MASt3R + PSynth (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.2.1" style="background-color:#FFEDB3;">26.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.3.1" style="background-color:#FFEDB3;">43.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.15.6.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.4.1" style="background-color:#FFEDB3;">47.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.5.1" style="background-color:#FFEDB3;">25.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.6.1" style="background-color:#FFEDB3;">40.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.15.6.7" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.15.6.7.1" style="background-color:#FFEDB3;">49.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.16.7.1"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.1.1">MASt3R + Hybrid (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.2.1" style="background-color:#FFD44D;">49.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.3.1" style="background-color:#FFD44D;">66.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.16.7.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.4.1" style="background-color:#FFD44D;">72.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.5.1" style="background-color:#FFD44D;">42.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.6.1" style="background-color:#FFD44D;">63.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.16.7.7" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.16.7.7.1" style="background-color:#FFD44D;">69.11</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.10">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.17.8.1">DUSt3R <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.13157v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite> (released)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.2">5.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.3">7.95</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.9.17.8.4">9.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.5">2.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.6">5.81</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.9.17.8.7">9.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.8">29.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.9">42.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.17.8.10">43.79</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.18.9.1">DUSt3R + MatrixCity</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.2">17.85</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.3">37.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.18.9.4">42.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.5">11.33</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.6">25.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.18.9.7">33.24</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.8">31.43</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.9">47.13</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.18.9.10">57.02</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.19.10.1"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.19.10.1.1">DUSt3R + PSynth (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.2.1" style="background-color:#FFEDB3;">31.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.3.1" style="background-color:#FFEDB3;">47.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.19.10.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.4.1" style="background-color:#FFEDB3;">51.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.5.1" style="background-color:#FFEDB3;">28.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.6.1" style="background-color:#FFEDB3;">45.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.9.19.10.7" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.7.1" style="background-color:#FFEDB3;">51.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.8" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.8.1" style="background-color:#FFEDB3;">32.77</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.9" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.9.1" style="background-color:#FFEDB3;">53.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.10" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T1.9.9.19.10.10.1" style="background-color:#FFEDB3;">61.45</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.20.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.9.9.20.11.1"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.1.1">DUSt3R + Hybrid (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.2.1" style="background-color:#FFD44D;">55.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.3.1" style="background-color:#FFD44D;">71.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.9.9.20.11.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.4.1" style="background-color:#FFD44D;">76.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.5.1" style="background-color:#FFD44D;">46.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.6.1" style="background-color:#FFD44D;">68.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.9.9.20.11.7" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.7.1" style="background-color:#FFD44D;">72.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.8" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.8.1" style="background-color:#FFD44D;">38.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.9" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.9.1" style="background-color:#FFD44D;">62.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.20.11.10" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.20.11.10.1" style="background-color:#FFD44D;">74.52</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different methods for pairwise camera pose estimation, focusing on the challenging ground-aerial scenario.  It shows the significant improvement achieved by fine-tuning two state-of-the-art models (DUSt3R and MASt3R) using a newly created dataset. The table compares baseline performance of several methods, including those based on 2D correspondence matching and 3D pointmap regression, against the results obtained after fine-tuning with synthetic data only and then with a hybrid dataset combining synthetic and real data. The metrics used for evaluation are Relative Rotation Accuracy (RRA) and Relative Translation Accuracy (RTA) at different thresholds, along with 3D pointmap accuracy.  The results demonstrate that incorporating real ground data along with synthetic data significantly improves the accuracy of ground-aerial camera pose estimation and 3D scene reconstruction.
> <details>
> <summary>read the caption</summary>
> Table 1: Finetuning with our data significantly improves pairwise camera pose estimation in the ground-aerial setting. Baselines, including learned 2D correspondence matching (SP+SG [13, 47], LoFTR [59], MASt3R [26]) and 3D pointmap-based regression (DUSt3R [65]), struggle in this setting. For instance, DUSt3R localizes fewer than 5% of pairs within 5°rotation error (RRA⁢@⁢5⁢°RRA@5°\mathrm{RRA}@5\degreeroman_RRA @ 5 °). Finetuning on MatrixCity improves performance, but using pseudo-synthetic ground-aerial pairs (DUSt3R + PSynth) boosts accuracy to 31%, and adding real ground data (DUSt3R + Hybrid) further increases it to 55%. This also significantly improves 3D pointmap accuracy. The first half of the table shows methods that predict 2D matches, with ground-truth intrinsics used to compute the relative poses.
> </details>





### In-depth insights


#### Geo-Aligned Aerial
While the provided research paper doesn't explicitly feature a section titled 'Geo-Aligned Aerial,' the concept is intricately woven throughout. The core idea revolves around **leveraging aerial imagery, aligned with precise geographic data, for enhanced 3D reconstruction and view synthesis**. This alignment is crucial for bridging the gap between aerial and ground-level perspectives, enabling applications like improved camera pose estimation and novel view synthesis in challenging mixed-altitude scenarios. The paper emphasizes creating a **co-registered dataset of aerial and ground images** within a unified coordinate system, achieved by combining pseudo-synthetic renderings from 3D city meshes (like Google Earth) with real-world ground-level images (e.g., from MegaDepth). This geo-alignment serves as a powerful supervision signal for training learning-based models, leading to significant performance gains in tasks where viewpoint variation is extreme.

#### Viewpoint Invariance
Viewpoint invariance is critical for robust scene understanding. Traditional methods often struggle with significant viewpoint changes, particularly between aerial and ground perspectives. **Learning-based approaches, while promising, require diverse training data to generalize effectively across such variations.** A key challenge lies in creating datasets with co-registered aerial and ground views, due to difficulties in scalable and precise reconstruction. Addressing this data scarcity is vital for advancing geometric reconstruction and novel view synthesis, enabling more accurate and adaptable systems. **One potential approach involves leveraging pseudo-synthetic data**, generated from 3D city models and real ground-level images, to bridge the gap between different viewpoints and improve the generalization of learning-based models.

#### Hybrid Data Fusion
While the term “Hybrid Data Fusion” isn't explicitly a heading in this research paper, the core methodology revolves around it. The paper introduces a novel approach of **combining pseudo-synthetic data (rendered from 3D city meshes like Google Earth)** with **real, crowd-sourced ground-level images** (e.g., from MegaDepth). This fusion addresses the limitations of each data source individually: the pseudo-synthetic data provides **wide-ranging aerial viewpoints and geometric information**, which is difficult to obtain in real-world datasets, while the real images contribute **photorealistic details and visual fidelity** that are often lacking in mesh-based renderings. This hybrid approach enables training robust models for tasks like multi-view geometry prediction and novel view synthesis, which are crucial for aerial-ground reconstruction. The effectiveness is demonstrated through improved performance compared to models trained solely on either pseudo-synthetic or existing datasets, highlighting the benefit of bridging the domain gap and leveraging complementary information. The data fusion strategy involves **co-registering the real images** with the pseudo-synthetic ones, creating a unified coordinate system. This alignment allows the models to learn relationships between aerial and ground views, which is vital for handling significant viewpoint changes.

#### Mesh-Rendered Synth.
Mesh-rendered synthetic data plays a crucial role in bridging the gap between simulated environments and real-world scenarios for training computer vision models. By using 3D meshes of environments and texturing them with real-world images, a synthetic dataset can be created that provides accurate geometric information and appearance. This approach offers **precise control over camera parameters, object positions, and lighting conditions**, which is essential for training robust models. However, mesh-rendered synthetic data often suffers from a lack of realism due to simplified textures, lighting, and the absence of real-world artifacts. Addressing this limitation through techniques such as **augmenting with real-world data** and **incorporating more sophisticated rendering techniques** is crucial for achieving effective transfer learning.

#### Improving 3D NVS
**Improving 3D Novel View Synthesis (NVS)** is a crucial area in computer vision, aiming to generate new perspectives of a scene from limited input views. The challenge lies in handling occlusions, viewpoint changes, and maintaining visual fidelity. Effective approaches often involve leveraging large datasets and deep learning techniques to learn scene representations and predict novel views accurately. Research focuses on refining network architectures, loss functions, and training strategies to enhance the realism and consistency of synthesized views. Data augmentation and domain adaptation techniques can further improve robustness and generalization to unseen scenarios. Addressing these aspects is crucial for advancing NVS and enabling applications in virtual reality, augmented reality, and 3D reconstruction.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13157/x2.png)

> 🔼 This figure illustrates the process of creating a hybrid dataset for aerial-ground 3D reconstruction and view synthesis.  It starts by using 3D city models (like those from Google Earth) to generate synthetic aerial images at various altitudes. These synthetic images are then combined with real, ground-level images from existing datasets (such as MegaDepth) to create a more comprehensive dataset that bridges the gap between real and synthetic data. The process involves co-registering the real and synthetic images and aligning ground-level images with the aerial data to enable 3D reconstruction. This hybrid dataset improves the accuracy of downstream tasks like camera registration and view synthesis, especially in scenarios with large viewpoint differences (such as those between ground and aerial perspectives).
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the data generation framework. To address the challenges of ground-aerial camera registration and novel-view synthesis, we propose a flexible framework combining pseudo-synthetic renderings from 3D city-wide meshes (e.g. Google Earth) with real, ground-level images (e.g. MegaDepth [29]). The pseudo-synthetic data is captured at varying altitudes, while the real, crowd-sourced images help improve visual fidelity especially for ground-level images where mesh-based renderings lack detail. The pipeline generates pseudo-synthetic images from different altitudes, co-registers them with real images, and aligns ground-level images with aerial data for 3D reconstruction. This hybrid dataset of real and pseudo-synthetic images provides geometric supervision that helps improve performance on downstream tasks such as ground-aerial camera registration and novel view synthesis, particularly in ground-aerial settings.
> </details>



![](https://arxiv.org/html/2504.13157/extracted/6370271/images/training_lv.jpg)

> 🔼 This figure showcases the comparison between real-world images from the MegaDepth dataset and pseudo-synthetic images generated from a 3D model.  Despite a clear difference in visual quality (the pseudo-synthetic images lack details like transients and realistic lighting), reliable feature matching techniques successfully align these disparate image types. This alignment is crucial for integrating real-world data into the pseudo-synthetic 3D reconstruction, ultimately enhancing the accuracy and realism of the final model. The successful feature matching demonstrates that the domain gap between real and synthetic data, while visually apparent, does not prevent accurate geometric registration.
> <details>
> <summary>read the caption</summary>
> Figure 3: Feature matching between real and pseudo-synthetic images. The pseudo-synthetic rendering has a noticeable domain gap compared to the real MegaDepth image (e.g., no transients, simplistic lighting) but still enables reliable feature matching [47] to register real images into the pseudo-synthetic reconstruction.
> </details>



![](https://arxiv.org/html/2504.13157/extracted/6370271/images/result_pairwise.jpg)

> 🔼 Figure 4 shows a comparison of image data from two sources: MegaDepth (top) and Google Earth (bottom).  The images illustrate the diversity in viewpoints and lighting conditions found within the AerialMegaDepth dataset. MegaDepth provides real-world street-level images, while Google Earth offers pseudo-synthetic aerial images rendered from 3D models. This combined dataset allows for training models that can handle a broader range of perspectives and lighting scenarios than datasets using only one data source. The visual differences emphasize the hybrid nature of the AerialMegaDepth dataset, which incorporates both real and synthetic data to overcome limitations encountered in using each source independently.
> <details>
> <summary>read the caption</summary>
> Figure 4: AerialMegaDepth data (top: MegaDepth, bottom: Google Earth) features diverse viewpoints & lighting conditions.
> </details>



![](https://arxiv.org/html/2504.13157/extracted/6370271/images/matches_mast3r.jpg)

> 🔼 This figure showcases the effectiveness of fine-tuning the DUSt3R model with the AerialMegaDepth dataset.  It compares the performance of the baseline DUSt3R model with a model fine-tuned using the dataset on a zero-shot ground-aerial camera and geometry prediction task.  Given pairs of one aerial image and one ground image as input, the figure demonstrates significant improvements achieved by the fine-tuned model in challenging, unseen ground-aerial scenarios. The last column displays qualitative results from the WxBS dataset, a particularly difficult case involving a substantial viewpoint change.
> <details>
> <summary>read the caption</summary>
> Figure 5: Zero-shot ground-aerial camera and geometry prediction results. Given two input images, one aerial and one ground, we compare the performance of the baseline DUSt3R [65] with the model fine-tuned on our varying-altitude data. The results demonstrate significant improvements over the baseline in unseen, challenging ground-aerial scenarios, showing the effectiveness of fine-tuning DUSt3R [65] with our data. Additionally, the last column presents qualitative results on a challenging ground-aerial pair from the WxBS [39] dataset, which involves significant viewpoint change.
> </details>



![](https://arxiv.org/html/2504.13157/extracted/6370271/images/result_1aNg.jpg)

> 🔼 This figure demonstrates the improved feature matching capabilities of the MASt3R algorithm after fine-tuning with the AerialMegaDepth dataset.  Specifically, it showcases accurate and robust matching results even between ground-level and aerial images exhibiting extreme viewpoint differences.  The correspondences are determined using the reciprocal nearest neighbor approach based on MASt3R's locally computed feature maps. The success of the matching highlights the dataset's effectiveness in enhancing the algorithm's ability to handle significant viewpoint variations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Challenging ground-aerial feature matching. Fine-tuned MASt3R [26] achieves accurate and robust feature matching across ground-aerial pairs with extreme viewpoint changes (correspondences extracted via reciprocal nearest neighbor from MASt3R’s local feature maps). This highlights the effectiveness of our AerialMegaDepth data in improving matching performance.
> </details>



![](https://arxiv.org/html/2504.13157/extracted/6370271/images/nvs_result_real.png)

> 🔼 This figure demonstrates 3D reconstruction using a novel method that incorporates both aerial and ground images, even when the ground images have minimal overlap. The global alignment process of DUSt3R is used to combine point cloud predictions. The results show that including an aerial reference image significantly improves the accuracy of pose estimation, especially when the model is fine-tuned on data containing both aerial and ground views.  This is because the aerial image acts as a 'map', providing a broader context for aligning the ground-level perspectives.
> <details>
> <summary>read the caption</summary>
> Figure 7: 3D reconstruction from one aerial and four ground images with virtually no overlap. We use the global alignment process of DUSt3R [65] to merge pointmaps predictions. Despite the lack of overlap among the ground images, we find that incorporating a reference aerial image can effectively serve as a “map”, significantly improving pose estimation accuracy when fine-tuned on our cross-view data.
> </details>



![](https://arxiv.org/html/2504.13157/x3.png)

> 🔼 Figure 8 displays the results of novel-view synthesis using the ZeroNVS model.  Two versions of the model are compared: one fine-tuned only on MegaScenes [61] (a large-scale dataset for novel view synthesis), and another fine-tuned on both MegaScenes and the authors' new AerialMegaDepth dataset.  The goal is to synthesize a realistic ground-level view from an aerial input image with extreme viewpoint differences. While the results aren't perfect, the figure demonstrates the significant improvement in both visual quality (more realistic ground views) and viewpoint accuracy (synthesized views more closely match the desired perspective) achieved by including the AerialMegaDepth dataset in the model training.
> <details>
> <summary>read the caption</summary>
> Figure 8: Results of extreme viewpoint change in novel-view synthesis with ZeroNVS [46] finetuned on MegaScenes [61] (ZeroNVS MS) & additionally finetuned on our data. Though by no means perfect, note the big improvement in visual quality and viewpoint accuracy.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.14.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.14.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.14.1.1.1.1"><span class="ltx_text" id="S5.T2.14.1.1.1.1.1" style="font-size:120%;"># of ground images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.14.1.1.1.2"><span class="ltx_text" id="S5.T2.14.1.1.1.2.1" style="font-size:120%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.14.1.1.1.3"><span class="ltx_text" id="S5.T2.14.1.1.1.3.1" style="font-size:120%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.14.1.1.1.4"><span class="ltx_text" id="S5.T2.14.1.1.1.4.1" style="font-size:120%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.14.1.1.1.5"><span class="ltx_text" id="S5.T2.14.1.1.1.5.1" style="font-size:120%;">5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.14.1.1.1.6"><span class="ltx_text" id="S5.T2.14.1.1.1.6.1" style="font-size:120%;">6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.14.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.2.2.1.1" style="font-size:120%;">no aerial image (i.e., ground only)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.2.2.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.2.2.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.2.2.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.2.2.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.2.2.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.3.3">
<td class="ltx_td ltx_align_left" id="S5.T2.14.1.3.3.1"><span class="ltx_text" id="S5.T2.14.1.3.3.1.1" style="font-size:120%;">DUSt3R-GA (released)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.3.3.2"><span class="ltx_text" id="S5.T2.14.1.3.3.2.1" style="font-size:120%;">12.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.3.3.3"><span class="ltx_text" id="S5.T2.14.1.3.3.3.1" style="font-size:120%;">32.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.3.3.4"><span class="ltx_text" id="S5.T2.14.1.3.3.4.1" style="font-size:120%;">38.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.3.3.5"><span class="ltx_text" id="S5.T2.14.1.3.3.5.1" style="font-size:120%;">43.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.3.3.6"><span class="ltx_text" id="S5.T2.14.1.3.3.6.1" style="font-size:120%;">47.98</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.14.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.4.4.1.1" style="font-size:120%;">one aerial image</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.4.4.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.4.4.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.4.4.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.4.4.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.14.1.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.5.5">
<td class="ltx_td ltx_align_left" id="S5.T2.14.1.5.5.1"><span class="ltx_text" id="S5.T2.14.1.5.5.1.1" style="font-size:120%;">DUSt3R-GA (released)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.5.5.2"><span class="ltx_text" id="S5.T2.14.1.5.5.2.1" style="font-size:120%;">14.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.5.5.3"><span class="ltx_text" id="S5.T2.14.1.5.5.3.1" style="font-size:120%;">33.02</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.5.5.4"><span class="ltx_text" id="S5.T2.14.1.5.5.4.1" style="font-size:120%;">37.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.5.5.5"><span class="ltx_text" id="S5.T2.14.1.5.5.5.1" style="font-size:120%;">43.73</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.5.5.6"><span class="ltx_text" id="S5.T2.14.1.5.5.6.1" style="font-size:120%;">48.47</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.6.6">
<td class="ltx_td ltx_align_left" id="S5.T2.14.1.6.6.1"><span class="ltx_text" id="S5.T2.14.1.6.6.1.1" style="font-size:120%;">DUSt3R-GA + PSynth (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.6.6.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.6.6.2.1" style="font-size:120%;background-color:#FFEDB3;">29.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.6.6.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.6.6.3.1" style="font-size:120%;background-color:#FFEDB3;">44.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.6.6.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.6.6.4.1" style="font-size:120%;background-color:#FFEDB3;">48.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.6.6.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.6.6.5.1" style="font-size:120%;background-color:#FFEDB3;">55.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.6.6.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.6.6.6.1" style="font-size:120%;background-color:#FFEDB3;">55.45</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T2.14.1.7.7.1"><span class="ltx_text" id="S5.T2.14.1.7.7.1.1" style="font-size:120%;">DUSt3R-GA + Hybrid (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.7.7.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.7.7.2.1" style="font-size:120%;background-color:#FFD44D;">56.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.7.7.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.7.7.3.1" style="font-size:120%;background-color:#FFD44D;">55.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.7.7.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.7.7.4.1" style="font-size:120%;background-color:#FFD44D;">57.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.7.7.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.7.7.5.1" style="font-size:120%;background-color:#FFD44D;">59.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.7.7.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.7.7.6.1" style="font-size:120%;background-color:#FFD44D;">60.65</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.14.1.8.8.1"><span class="ltx_text" id="S5.T2.14.1.8.8.1.1" style="font-size:120%;">MASt3R-SfM (released)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.1.8.8.2"><span class="ltx_text" id="S5.T2.14.1.8.8.2.1" style="font-size:120%;">9.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.1.8.8.3"><span class="ltx_text" id="S5.T2.14.1.8.8.3.1" style="font-size:120%;">31.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.1.8.8.4"><span class="ltx_text" id="S5.T2.14.1.8.8.4.1" style="font-size:120%;">40.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.1.8.8.5"><span class="ltx_text" id="S5.T2.14.1.8.8.5.1" style="font-size:120%;">49.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.14.1.8.8.6"><span class="ltx_text" id="S5.T2.14.1.8.8.6.1" style="font-size:120%;">59.34</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.9.9">
<td class="ltx_td ltx_align_left" id="S5.T2.14.1.9.9.1"><span class="ltx_text" id="S5.T2.14.1.9.9.1.1" style="font-size:120%;">MASt3R-SfM + Psynth (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.9.9.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.9.9.2.1" style="font-size:120%;background-color:#FFEDB3;">23.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.9.9.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.9.9.3.1" style="font-size:120%;background-color:#FFEDB3;">39.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.9.9.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.9.9.4.1" style="font-size:120%;background-color:#FFEDB3;">48.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.9.9.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.9.9.5.1" style="font-size:120%;background-color:#FFEDB3;">59.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.1.9.9.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.14.1.9.9.6.1" style="font-size:120%;background-color:#FFEDB3;">64.76</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.14.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.14.1.10.10.1"><span class="ltx_text" id="S5.T2.14.1.10.10.1.1" style="font-size:120%;">MASt3R-SfM + Hybrid (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.14.1.10.10.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.10.10.2.1" style="font-size:120%;background-color:#FFD44D;">51.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.14.1.10.10.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.10.10.3.1" style="font-size:120%;background-color:#FFD44D;">52.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.14.1.10.10.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.10.10.4.1" style="font-size:120%;background-color:#FFD44D;">61.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.14.1.10.10.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.10.10.5.1" style="font-size:120%;background-color:#FFD44D;">63.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.14.1.10.10.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.14.1.10.10.6.1" style="font-size:120%;background-color:#FFD44D;">67.45</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of including a single aerial image alongside multiple ground images on the accuracy of ground image pose estimation. The experiment uses DUSt3R's global optimization technique.  The first row shows results using only ground images, while subsequent rows incorporate an aerial image. The key finding is that adding even one aerial image significantly enhances pose estimation accuracy, particularly when the ground images have minimal overlap.  The accuracy is measured using Relative Rotation Accuracy at 15 degrees (RRA@15°) and Relative Translation Accuracy at 15 degrees (RTA@15°).
> <details>
> <summary>read the caption</summary>
> Table 2: Including a single aerial image with N𝑁Nitalic_N ground images notably improves pose estimation of the ground images, as shown in Ground Cameras Rotation Accuracy @ 15⁢°15°15\degree15 ° (RRA⁢@⁢15⁢°RRA@15°\mathrm{RRA}@15\degreeroman_RRA @ 15 °) (left) and Translation Accuracy @ 15⁢°15°15\degree15 ° (RTA⁢@⁢15⁢°RTA@15°\mathrm{RTA}@15\degreeroman_RTA @ 15 °) (right). Using DUSt3R’s global optimization [65], Row 1 shows results for ground-only input images, while the rest includes an aerial image as input. Although pose estimation improves with more ground images, adding even one aerial reference image significantly boosts accuracy, especially when ground images have minimal overlap (e.g., N≤3𝑁3N\leq 3italic_N ≤ 3) as this aerial view helps align the ground images within a shared coordinate frame.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.15.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.15.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.15.1.1.1.1"><span class="ltx_text" id="S5.T2.15.1.1.1.1.1" style="font-size:120%;"># of ground images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.2"><span class="ltx_text" id="S5.T2.15.1.1.1.2.1" style="font-size:120%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.3"><span class="ltx_text" id="S5.T2.15.1.1.1.3.1" style="font-size:120%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.4"><span class="ltx_text" id="S5.T2.15.1.1.1.4.1" style="font-size:120%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.5"><span class="ltx_text" id="S5.T2.15.1.1.1.5.1" style="font-size:120%;">5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.6"><span class="ltx_text" id="S5.T2.15.1.1.1.6.1" style="font-size:120%;">6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.15.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.2.2.1.1" style="font-size:120%;">no aerial image (i.e., ground only)</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.2.2.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.2.2.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.2.2.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.2.2.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.2.2.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.3.3">
<td class="ltx_td ltx_align_left" id="S5.T2.15.1.3.3.1"><span class="ltx_text" id="S5.T2.15.1.3.3.1.1" style="font-size:120%;">DUSt3R-GA (released)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.3.3.2"><span class="ltx_text" id="S5.T2.15.1.3.3.2.1" style="font-size:120%;">9.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.3.3.3"><span class="ltx_text" id="S5.T2.15.1.3.3.3.1" style="font-size:120%;">27.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.3.3.4"><span class="ltx_text" id="S5.T2.15.1.3.3.4.1" style="font-size:120%;">31.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.3.3.5"><span class="ltx_text" id="S5.T2.15.1.3.3.5.1" style="font-size:120%;">40.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.3.3.6"><span class="ltx_text" id="S5.T2.15.1.3.3.6.1" style="font-size:120%;">43.13</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.15.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.4.4.1.1" style="font-size:120%;">one aerial image</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.4.4.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.4.4.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.4.4.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.4.4.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.1.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.5.5">
<td class="ltx_td ltx_align_left" id="S5.T2.15.1.5.5.1"><span class="ltx_text" id="S5.T2.15.1.5.5.1.1" style="font-size:120%;">DUSt3R-GA (released)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.5.5.2"><span class="ltx_text" id="S5.T2.15.1.5.5.2.1" style="font-size:120%;">9.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.5.5.3"><span class="ltx_text" id="S5.T2.15.1.5.5.3.1" style="font-size:120%;">27.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.5.5.4"><span class="ltx_text" id="S5.T2.15.1.5.5.4.1" style="font-size:120%;">31.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.5.5.5"><span class="ltx_text" id="S5.T2.15.1.5.5.5.1" style="font-size:120%;">41.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.5.5.6"><span class="ltx_text" id="S5.T2.15.1.5.5.6.1" style="font-size:120%;">43.62</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.6.6">
<td class="ltx_td ltx_align_left" id="S5.T2.15.1.6.6.1"><span class="ltx_text" id="S5.T2.15.1.6.6.1.1" style="font-size:120%;">DUSt3R-GA + PSynth (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.6.6.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.6.6.2.1" style="font-size:120%;background-color:#FFEDB3;">31.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.6.6.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.6.6.3.1" style="font-size:120%;background-color:#FFEDB3;">43.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.6.6.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.6.6.4.1" style="font-size:120%;background-color:#FFEDB3;">46.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.6.6.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.6.6.5.1" style="font-size:120%;background-color:#FFEDB3;">55.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.6.6.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.6.6.6.1" style="font-size:120%;background-color:#FFEDB3;">56.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T2.15.1.7.7.1"><span class="ltx_text" id="S5.T2.15.1.7.7.1.1" style="font-size:120%;">DUSt3R-GA + Hybrid (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.7.7.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.7.7.2.1" style="font-size:120%;background-color:#FFD44D;">51.29</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.7.7.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.7.7.3.1" style="font-size:120%;background-color:#FFD44D;">52.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.7.7.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.7.7.4.1" style="font-size:120%;background-color:#FFD44D;">54.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.7.7.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.7.7.5.1" style="font-size:120%;background-color:#FFD44D;">55.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.7.7.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.7.7.6.1" style="font-size:120%;background-color:#FFD44D;">57.72</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.15.1.8.8.1"><span class="ltx_text" id="S5.T2.15.1.8.8.1.1" style="font-size:120%;">MASt3R-SfM (released)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.15.1.8.8.2"><span class="ltx_text" id="S5.T2.15.1.8.8.2.1" style="font-size:120%;">9.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.15.1.8.8.3"><span class="ltx_text" id="S5.T2.15.1.8.8.3.1" style="font-size:120%;">23.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.15.1.8.8.4"><span class="ltx_text" id="S5.T2.15.1.8.8.4.1" style="font-size:120%;">29.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.15.1.8.8.5"><span class="ltx_text" id="S5.T2.15.1.8.8.5.1" style="font-size:120%;">46.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.15.1.8.8.6"><span class="ltx_text" id="S5.T2.15.1.8.8.6.1" style="font-size:120%;">51.45</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.9.9">
<td class="ltx_td ltx_align_left" id="S5.T2.15.1.9.9.1"><span class="ltx_text" id="S5.T2.15.1.9.9.1.1" style="font-size:120%;">MASt3R-SfM + Psynth (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.9.9.2" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.9.9.2.1" style="font-size:120%;background-color:#FFEDB3;">25.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.9.9.3" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.9.9.3.1" style="font-size:120%;background-color:#FFEDB3;">41.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.9.9.4" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.9.9.4.1" style="font-size:120%;background-color:#FFEDB3;">44.52</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.9.9.5" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.9.9.5.1" style="font-size:120%;background-color:#FFEDB3;">58.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.1.9.9.6" style="background-color:#FFEDB3;"><span class="ltx_text" id="S5.T2.15.1.9.9.6.1" style="font-size:120%;background-color:#FFEDB3;">61.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.1.10.10.1"><span class="ltx_text" id="S5.T2.15.1.10.10.1.1" style="font-size:120%;">MASt3R-SfM + Hybrid (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.1.10.10.2" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.10.10.2.1" style="font-size:120%;background-color:#FFD44D;">48.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.1.10.10.3" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.10.10.3.1" style="font-size:120%;background-color:#FFD44D;">49.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.1.10.10.4" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.10.10.4.1" style="font-size:120%;background-color:#FFD44D;">57.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.1.10.10.5" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.10.10.5.1" style="font-size:120%;background-color:#FFD44D;">60.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.1.10.10.6" style="background-color:#FFD44D;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.10.10.6.1" style="font-size:120%;background-color:#FFD44D;">62.41</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of aerial-to-ground novel view synthesis results using the ZeroNVS model.  Two versions of the model are compared: one fine-tuned on the MegaScenes dataset (MS) and another fine-tuned on both MegaScenes and the authors' new dataset (Ours). Four metrics are reported: LPIPS, PSNR, SSIM, and DreamSim.  The results demonstrate that fine-tuning the model with the authors' dataset leads to improvements across all four evaluation metrics, indicating enhanced performance in novel view synthesis for aerial-to-ground scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results for aerial-ground novel-view synthesis comparing ZeroNVS model finetuned on MegaScenes (MS) and our data (Ours), with finetuning improves all metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.4.4.4.5">NVS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1">DreamSim<math alttext="~{}\downarrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">~{}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2">LPIPS<math alttext="~{}\downarrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">~{}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.3.3.3">PSNR<math alttext="~{}\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">~{}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.4.4.4">SSIM<math alttext="~{}\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">~{}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.1.1.1">pseudo-synth. images</span></th>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.5.1.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.5.1.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.5.1.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.5.1.5"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.6.2.1">ZeroNVS (MS)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.2">0.448</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.3">0.413</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.4">10.847</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.5">0.416</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.7.3.1">ZeroNVS (Ours)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.7.3.2.1">0.377</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.7.3.3.1">0.359</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.7.3.4.1">12.381</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.7.3.5.1">0.484</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.4.8.4.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.4.1.1">real images</span></th>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.8.4.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.8.4.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.8.4.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.4.4.8.4.5"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.9.5.1">ZeroNVS (MS)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.5.2">0.550</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.5.3">0.639</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.5.4">7.478</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.5.5">0.183</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.4.4.10.6.1">ZeroNVS (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.10.6.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.6.2.1">0.442</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.10.6.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.6.3.1">0.580</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.10.6.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.6.4.1">8.220</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.10.6.5"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.6.5.1">0.218</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table expands on the findings of Table 1 by including results for ground-ground and aerial-aerial image pairs in addition to the ground-aerial pairs presented in Table 1.  While Table 1 highlighted the significant performance gains from fine-tuning models with the AerialMegaDepth dataset on the challenging ground-aerial task, this table demonstrates that the fine-tuning process does not negatively impact the performance of the models on easier tasks (ground-ground and aerial-aerial pairs) that involve less extreme viewpoint differences. The results show that even with fine-tuning on the AerialMegaDepth dataset, the models retain their high performance on these less challenging scenarios.
> <details>
> <summary>read the caption</summary>
> Table 4: Expanding on the results from Table 1 of the main paper, we include evaluations for ground-ground and aerial-aerial settings. While Table 1 emphasizes the significant improvements achieved in the challenging ground-aerial setting through fine-tuning with our data, this table shows that DUSt3R and MASt3R also maintain strong performance on ground-ground and aerial-aerial pairs, which typically have higher visual overlap. This demonstrates that fine-tuning with our varying-altitude data does not degrade performance on these easier, similar-viewpoint cases.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13157/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13157/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}