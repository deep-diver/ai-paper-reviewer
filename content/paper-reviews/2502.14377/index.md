---
title: "RelaCtrl: Relevance-Guided Efficient Control for Diffusion Transformers"
summary: "RelaCtrl: Relevance-guided control boosts diffusion transformer efficiency, cutting parameters by intelligently allocating resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14377 {{< /keyword >}}
{{< keyword icon="writer" >}} Ke Cao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14377" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14377" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14377/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion Transformers(DiT) are powerful for text-to-image/video generation, existing methods suffer from high computational costs due to inefficient resource allocation, neglecting the varying importance of control info across layers. This leads to redundant parameters & computations, hindering efficiency in training/inference. 



To solve this, the paper introduces RelaCtrl, a framework using "ControlNet Relevance Score" to evaluate each layer's importance. It tailors control layer placement, parameter scale, & capacity based on relevance, reducing unnecessary resources. They propose Two-Dimensional Shuffle Mixer (TDSM) in copy blocks for efficient token/channel mixing. Experiments show RelaCtrl achieves better performance with fewer resources.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Diffusion Transformer layers have varying relevance to control information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Relevance-guided allocation of control resources enhances efficiency without compromising performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Two-Dimensional Shuffle Mixer (TDSM) offers a lightweight alternative to self-attention in control blocks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces RelaCtrl, a method that optimizes resource allocation in diffusion transformers. By evaluating layer relevance and streamlining control mechanisms, it offers significant efficiency gains, guiding future research in controllable generation and efficient model design.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/intro_fidandhdd.jpg)

> 🔼 This figure shows the impact of removing individual ControlNet blocks on the quality of generated images.  The x-axis represents the index of the ControlNet block, while the y-axis shows FID (Fréchet Inception Distance) and HDD (Hausdorff Distance) scores.  Higher FID and HDD values indicate a greater negative impact on image quality and faithfulness to the control input, revealing a stronger correlation between that specific block and the final image generation.  In essence, this plot visualizes the relevance of each ControlNet block to the overall quality and control effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Effect of skipping a specific position within the ControlNet block on the quality of the generated image. Higher FID and HDD indicate a more significant impact of the skipped layer on the quality of the final results, reflecting a stronger correlation with the generated image quality.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.20.21.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T1.20.21.1.1" rowspan="3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T1.20.21.1.2" rowspan="3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.20.21.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.3.1" style="font-size:90%;">Controllability</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T1.20.21.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.4.1" style="font-size:90%;">Quality</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T1.20.21.1.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.5.1" style="font-size:90%;">Text Consistency</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.20.21.1.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.6.1" style="font-size:90%;">Controllability</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T1.20.21.1.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.7.1" style="font-size:90%;">Quality</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.20.21.1.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.21.1.8.1" style="font-size:90%;">Text Consistency</span></th>
</tr>
<tr class="ltx_tr" id="S2.T1.20.22.2">
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="4" id="S2.T1.20.22.2.1" style="background-color:#E8E8E8;padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.22.2.1.1" style="font-size:90%;background-color:#E8E8E8;">Canny</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="4" id="S2.T1.20.22.2.2" style="background-color:#E8E8E8;padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.22.2.2.1" style="font-size:90%;background-color:#E8E8E8;">Hed</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.1.1.1.1" style="font-size:90%;">HDD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><ci id="S2.T1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.2.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.2.2.2.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.2.2.2.m1.1"><semantics id="S2.T1.2.2.2.m1.1a"><mo id="S2.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.m1.1b"><ci id="S2.T1.2.2.2.m1.1.1.cmml" xref="S2.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.3.3.3" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.3.3.3.1" style="font-size:90%;">CLIP-Ae</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.3.3.3.m1.1"><semantics id="S2.T1.3.3.3.m1.1a"><mo id="S2.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.m1.1b"><ci id="S2.T1.3.3.3.m1.1.1.cmml" xref="S2.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.4.4.4" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.4.4.4.1" style="font-size:90%;">CLIP-Score</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.4.4.4.m1.1"><semantics id="S2.T1.4.4.4.m1.1a"><mo id="S2.T1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.4.m1.1b"><ci id="S2.T1.4.4.4.m1.1.1.cmml" xref="S2.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.5.5.5" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.5.5.5.1" style="font-size:90%;">HDD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.5.5.5.m1.1"><semantics id="S2.T1.5.5.5.m1.1a"><mo id="S2.T1.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.5.m1.1b"><ci id="S2.T1.5.5.5.m1.1.1.cmml" xref="S2.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.6.6.6" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.6.6.6.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.6.6.6.m1.1"><semantics id="S2.T1.6.6.6.m1.1a"><mo id="S2.T1.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.6.m1.1b"><ci id="S2.T1.6.6.6.m1.1.1.cmml" xref="S2.T1.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.7.7.7" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.7.7.7.1" style="font-size:90%;">CLIP-Ae</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.7.7.7.m1.1"><semantics id="S2.T1.7.7.7.m1.1a"><mo id="S2.T1.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.7.m1.1b"><ci id="S2.T1.7.7.7.m1.1.1.cmml" xref="S2.T1.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.8.8.8" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.8.8.8.1" style="font-size:90%;">CLIP-Score</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.8.8.8.m1.1"><semantics id="S2.T1.8.8.8.m1.1a"><mo id="S2.T1.8.8.8.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.8.8.8.m1.1b"><ci id="S2.T1.8.8.8.m1.1.1.cmml" xref="S2.T1.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.23.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.20.23.3.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.1.1" style="font-size:90%;">SD1.5</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T1.20.23.3.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.2.1" style="font-size:90%;">Uni-ControlNet</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.23.3.3.1" style="font-size:90%;">95.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.4.1" style="font-size:90%;">33.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.5.1" style="font-size:90%;">5.207</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.23.3.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.6.1" style="font-size:90%;">0.259</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.23.3.7.1" style="font-size:90%;">98.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.8.1" style="font-size:90%;">59.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.9.1" style="font-size:90%;">5.086</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.23.3.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.23.3.10.1" style="font-size:90%;">0.252</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.24.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.24.4.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.1.1" style="font-size:90%;">Uni-Control</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.2.1" style="font-size:90%;">97.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.3.1" style="font-size:90%;">91.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.4.1" style="font-size:90%;">4.965</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.24.4.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.5.1" style="font-size:90%;">0.249</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.6.1" style="font-size:90%;">100.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.7.1" style="font-size:90%;">91.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.8.1" style="font-size:90%;">4.819</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.24.4.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.24.4.9.1" style="font-size:90%;">0.251</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.25.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S2.T1.20.25.5.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.1.1" style="font-size:90%;">SDXL</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.25.5.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.2.1" style="font-size:90%;">ControlNet-XS</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.3.1" style="font-size:90%;">101.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.4.1" style="font-size:90%;">21.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.5.1" style="font-size:90%;">5.134</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.25.5.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.25.5.6.1" style="font-size:90%;">0.286</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.25.5.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.25.5.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.26.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.26.6.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.1.1" style="font-size:90%;">ControlNext</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.2.1" style="font-size:90%;">117.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.3.1" style="font-size:90%;">49.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.4.1" style="font-size:90%;">4.816</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.26.6.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.5.1" style="font-size:90%;">0.275</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.26.6.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.26.6.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S2.T1.9.9.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.9.9.1.1" style="font-size:90%;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S2.T1.9.9.1.1.m1.1"><semantics id="S2.T1.9.9.1.1.m1.1a"><mi id="S2.T1.9.9.1.1.m1.1.1" xref="S2.T1.9.9.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S2.T1.9.9.1.1.m1.1b"><ci id="S2.T1.9.9.1.1.m1.1.1.cmml" xref="S2.T1.9.9.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.9.9.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S2.T1.9.9.1.1.m1.1d">italic_α</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.10.10.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.10.10.2.1" style="font-size:90%;">PixArt-</span><math alttext="\delta" class="ltx_Math" display="inline" id="S2.T1.10.10.2.m1.1"><semantics id="S2.T1.10.10.2.m1.1a"><mi id="S2.T1.10.10.2.m1.1.1" mathsize="90%" xref="S2.T1.10.10.2.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T1.10.10.2.m1.1b"><ci id="S2.T1.10.10.2.m1.1.1.cmml" xref="S2.T1.10.10.2.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.10.10.2.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T1.10.10.2.m1.1d">italic_δ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.10.10.3.1" style="font-size:90%;">96.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.10.10.4.1" style="font-size:90%;">21.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.10.10.5.1" style="font-size:90%;">5.508</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.10.10.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.10.10.6.1" style="font-size:90%;">0.279</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.10.10.7.1" style="font-size:90%;">98.91</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.10.10.8.1" style="font-size:90%;">29.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.10.10.9.1" style="font-size:90%;">5.243</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.10.10.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.10.10.10.1" style="font-size:90%;">0.275</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.27.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.27.7.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.27.7.1.1" style="font-size:90%;">RelaCtrl</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.2.1" style="font-size:90%;">94.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.3.1" style="font-size:90%;">20.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.4.1" style="font-size:90%;">5.584</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.27.7.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.27.7.5.1" style="font-size:90%;">0.282</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.6.1" style="font-size:90%;">96.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.7.1" style="font-size:90%;">27.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.8.1" style="font-size:90%;">5.451</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.27.7.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.27.7.9.1" style="font-size:90%;">0.276</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.28.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S2.T1.20.28.8.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.28.8.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S2.T1.20.28.8.2" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.28.8.2.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S2.T1.20.28.8.3" style="background-color:#E8E8E8;padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.28.8.3.1" style="font-size:90%;background-color:#E8E8E8;">Depth</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S2.T1.20.28.8.4" style="background-color:#E8E8E8;padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.28.8.4.1" style="font-size:90%;background-color:#E8E8E8;">Segmentation</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.11.11.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.11.11.1.1" style="font-size:90%;">MSE-d</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.11.11.1.m1.1"><semantics id="S2.T1.11.11.1.m1.1a"><mo id="S2.T1.11.11.1.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.11.11.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.11.11.1.m1.1b"><ci id="S2.T1.11.11.1.m1.1.1.cmml" xref="S2.T1.11.11.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.11.11.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.11.11.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.12.12.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.12.12.2.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.12.12.2.m1.1"><semantics id="S2.T1.12.12.2.m1.1a"><mo id="S2.T1.12.12.2.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.12.12.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.12.12.2.m1.1b"><ci id="S2.T1.12.12.2.m1.1.1.cmml" xref="S2.T1.12.12.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.12.12.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.12.12.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.13.13.3" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.13.13.3.1" style="font-size:90%;">CLIP-Ae</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.13.13.3.m1.1"><semantics id="S2.T1.13.13.3.m1.1a"><mo id="S2.T1.13.13.3.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.13.13.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.13.13.3.m1.1b"><ci id="S2.T1.13.13.3.m1.1.1.cmml" xref="S2.T1.13.13.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.13.13.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.13.13.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.14.14.4" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.14.14.4.1" style="font-size:90%;">CLIP-Score</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.14.14.4.m1.1"><semantics id="S2.T1.14.14.4.m1.1a"><mo id="S2.T1.14.14.4.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.14.14.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.14.14.4.m1.1b"><ci id="S2.T1.14.14.4.m1.1.1.cmml" xref="S2.T1.14.14.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.14.14.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.14.14.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.15.15.5" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.15.15.5.1" style="font-size:90%;">mIoU</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.15.15.5.m1.1"><semantics id="S2.T1.15.15.5.m1.1a"><mo id="S2.T1.15.15.5.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.15.15.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.15.15.5.m1.1b"><ci id="S2.T1.15.15.5.m1.1.1.cmml" xref="S2.T1.15.15.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.15.15.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.15.15.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.16.16.6" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.16.16.6.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.16.16.6.m1.1"><semantics id="S2.T1.16.16.6.m1.1a"><mo id="S2.T1.16.16.6.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.16.16.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.16.16.6.m1.1b"><ci id="S2.T1.16.16.6.m1.1.1.cmml" xref="S2.T1.16.16.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.16.16.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.16.16.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.17.17.7" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.17.17.7.1" style="font-size:90%;">CLIP-Ae</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.17.17.7.m1.1"><semantics id="S2.T1.17.17.7.m1.1a"><mo id="S2.T1.17.17.7.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.17.17.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.17.17.7.m1.1b"><ci id="S2.T1.17.17.7.m1.1.1.cmml" xref="S2.T1.17.17.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.17.17.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.17.17.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.18.18.8" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.18.18.8.1" style="font-size:90%;">CLIP-Score</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.18.18.8.m1.1"><semantics id="S2.T1.18.18.8.m1.1a"><mo id="S2.T1.18.18.8.m1.1.1" mathsize="90%" stretchy="false" xref="S2.T1.18.18.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.18.18.8.m1.1b"><ci id="S2.T1.18.18.8.m1.1.1.cmml" xref="S2.T1.18.18.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.18.18.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.18.18.8.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.29.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.20.29.9.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.1.1" style="font-size:90%;">SD1.5</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T1.20.29.9.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.2.1" style="font-size:90%;">Uni-ControlNet</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.3.1" style="font-size:90%;">102.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.4.1" style="font-size:90%;">43.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.5.1" style="font-size:90%;">5.230</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.20.29.9.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.6.1" style="font-size:90%;">0.250</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.7.1" style="font-size:90%;">0.316</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.29.9.8.1" style="font-size:90%;">40.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.9.1" style="font-size:90%;">5.270</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.20.29.9.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.29.9.10.1" style="font-size:90%;">0.255</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.30.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.30.10.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.1.1" style="font-size:90%;">Uni-Control</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.2.1" style="font-size:90%;">102.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.3.1" style="font-size:90%;">91.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.4.1" style="font-size:90%;">5.327</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.30.10.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.5.1" style="font-size:90%;">0.249</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.30.10.6.1" style="font-size:90%;">0.382</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.7.1" style="font-size:90%;">40.74</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.8.1" style="font-size:90%;">5.462</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.30.10.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.30.10.9.1" style="font-size:90%;">0.258</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.31.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S2.T1.20.31.11.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.1.1" style="font-size:90%;">SDXL</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.31.11.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.2.1" style="font-size:90%;">ControlNet-XS</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.31.11.3.1" style="font-size:90%;">99.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.31.11.4.1" style="font-size:90%;">34.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.5.1" style="font-size:90%;">5.235</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.31.11.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.6.1" style="font-size:90%;">0.281</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.31.11.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.31.11.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.32.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.32.12.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.1.1" style="font-size:90%;">ControlNext</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.2.1" style="font-size:90%;">101.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.3.1" style="font-size:90%;">73.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.4.1" style="font-size:90%;">4.919</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.32.12.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.5.1" style="font-size:90%;">0.253</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.32.12.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.32.12.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S2.T1.19.19.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.19.19.1.1" style="font-size:90%;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S2.T1.19.19.1.1.m1.1"><semantics id="S2.T1.19.19.1.1.m1.1a"><mi id="S2.T1.19.19.1.1.m1.1.1" xref="S2.T1.19.19.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S2.T1.19.19.1.1.m1.1b"><ci id="S2.T1.19.19.1.1.m1.1.1.cmml" xref="S2.T1.19.19.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.19.19.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S2.T1.19.19.1.1.m1.1d">italic_α</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T1.20.20.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S2.T1.20.20.2.1" style="font-size:90%;">PixArt-</span><math alttext="\delta" class="ltx_Math" display="inline" id="S2.T1.20.20.2.m1.1"><semantics id="S2.T1.20.20.2.m1.1a"><mi id="S2.T1.20.20.2.m1.1.1" mathsize="90%" xref="S2.T1.20.20.2.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S2.T1.20.20.2.m1.1b"><ci id="S2.T1.20.20.2.m1.1.1.cmml" xref="S2.T1.20.20.2.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.20.20.2.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S2.T1.20.20.2.m1.1d">italic_δ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.20.3.1" style="font-size:90%;">96.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.20.4.1" style="font-size:90%;">21.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.20.5.1" style="font-size:90%;">5.508</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S2.T1.20.20.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.20.6.1" style="font-size:90%;">0.279</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.20.7.1" style="font-size:90%;">0.379</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.20.8.1" style="font-size:90%;">35.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.20.9.1" style="font-size:90%;">5.668</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.20.20.10" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.20.20.10.1" style="font-size:90%;">0.282</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.33.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T1.20.33.13.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S2.T1.20.33.13.1.1" style="font-size:90%;">RelaCtrl</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.2.1" style="font-size:90%;">99.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.3.1" style="font-size:90%;">33.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.4.1" style="font-size:90%;">5.887</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S2.T1.20.33.13.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.5.1" style="font-size:90%;">0.285</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.6" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.6.1" style="font-size:90%;">0.405</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.7" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.7.1" style="font-size:90%;">33.76</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.8" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.8.1" style="font-size:90%;">5.702</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.20.33.13.9" style="padding:0.9pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.20.33.13.9.1" style="font-size:90%;">0.287</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of various controlled image generation methods on the COCO validation set.  The table evaluates these methods across four different control tasks: Canny edge detection, depth estimation, semantic segmentation, and text-based control. For each control task and method, the table provides metrics assessing the quality of the generated images (FID, CLIP-Aesthetic, CLIP-Score) and how well the method followed the specified control (HDD, MSE-depth, mIoU).  The best performing method for each metric is shown in bold, and the second-best is underlined. This allows for a direct comparison of the different methods' performance and effectiveness for various controlled generation scenarios.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of different methods on the COCO validation set (Lin et al., 2014). The best results are highlighted in bold, while the second-best results are marked with underline.
> </details>





### In-depth insights


#### RelaCtrl's Core
**RelaCtrl's core innovation lies in its relevance-guided approach to efficient controllable generation within diffusion transformers.** Unlike existing methods that apply uniform control settings across all layers, RelaCtrl intelligently allocates computational resources by analyzing the relevance of each transformer layer to the control information. This is achieved through the "ControlNet Relevance Score", which quantifies the impact of each layer on both generation quality and control effectiveness. **By prioritizing layers with high relevance and tailoring the parameter scale and modeling capacity of control layers accordingly, RelaCtrl minimizes unnecessary parameters and redundant computations.** Furthermore, the introduction of the Two-Dimensional Shuffle Mixer (TDSM) as a replacement for self-attention and FFN in the copy block contributes to efficiency by enabling effective token and channel mixing with reduced complexity. **This relevance-guided and resource-optimized integration of control signals constitutes the core of RelaCtrl, enabling superior performance with significantly reduced computational overhead compared to existing approaches like PixArt-d.** The core also emphasizes on the point where RelaCtrl leverages the framework by designing relevance-guided allocation and steering strategies for efficient resource utilization. Control blocks are positioned at locations having high control information relevance, while locations having weak relevance are devoid of control blocks. Furthermore, it uses a Two-Dimensional Shuffle Mixer (TDSM) in order to reduce parameters and the copy block operation, and to replace the self-attention.

#### DiT Relevance
Analyzing 'DiT Relevance' reveals that **not all layers in Diffusion Transformers (DiTs) contribute equally to controlled generation**. Early and middle layers often exhibit **higher relevance to control signals**, while deeper layers show diminished impact. This understanding challenges naive approaches like uniform copying of layers, highlighting the need for **selective control integration**. Resource allocation should prioritize layers with strong control relevance, leading to efficient and high-quality generation. Identifying crucial modules within DiTs enables targeted design and placement of control mechanisms, optimizing performance while minimizing computational overhead. This insight contrasts with observations in other models, emphasizing the **unique control dynamics within DiTs**.

#### TDSM Efficiently
The paper introduces a Two-Dimensional Shuffle Mixer (TDSM) to enhance efficiency in diffusion transformers, specifically within control blocks. The core idea revolves around **replacing standard self-attention and FFN layers** with a more streamlined operation. TDSM achieves this by performing attention calculations within **randomly divided channel and token groups**, reducing computational complexity. The shuffle operation within TDSM **disrupts token relationships** to some extent. The shuffle operations help with the goal to model non-local relationships at both the token and channel levels. A reversible transformation pair should also be applied to ensure information preservation. TDSM is more efficient than the method it replaces.

#### SOTA Killer
While "SOTA Killer" isn't explicitly present, the paper implicitly aims to outperform existing state-of-the-art (SOTA) methods. The core strategy involves **analyzing the relevance of control information across different layers** of a Diffusion Transformer, enabling more efficient resource allocation. This contrasts with existing methods that often uniformly apply control signals, leading to redundancy. By introducing the **Relevance-Guided Efficient Controllable Generation framework (RelaCtrl)**, the paper seeks to minimize computational overhead and parameter increases, common drawbacks of current controlled generation techniques. Furthermore, the proposal of the **Two-Dimensional Shuffle Mixer (TDSM)** suggests a novel approach to token and channel mixing, potentially enhancing performance while reducing complexity. The ultimate goal is to achieve **superior or comparable results with significantly fewer parameters and computations**, effectively "killing" the SOTA by offering a more efficient and resource-optimized solution for controlled diffusion transformer-based image generation.

#### Flux's Blessing
While the heading 'Flux's Blessing' isn't explicitly present, we can discuss potential blessings stemming from 'Flux,' a flow-matching-based video generation model integrating Transformer architecture. A key advantage might be **enhanced efficiency** in video creation. Flux's architecture could lead to more streamlined and faster generation processes, reducing the computational resources needed. The integration of flow-matching may result in **improved consistency and coherence** across video frames. This could address common issues in video generation, such as flickering or disjointed transitions. Another blessing could be the potential for **greater control** over the generated content. The Transformer architecture offers precise manipulation of video elements based on textual prompts or conditional inputs. Also, It leads to better scalability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14377/extracted/6219154/images/method_importance.png)

> 🔼 Figure 2 illustrates the relevance scores of different layers within the DiT-ControlNet architecture.  These scores were computed using a combination of FID (Fréchet Inception Distance) and HDD (Hausdorff Distance) ranks, which measure image quality and control accuracy, respectively.  A lower rank indicates higher quality or better control.  The graph plots the relevance score for each layer, revealing a pattern of increasing relevance in the initial layers followed by a decline in deeper layers.  The white numbers in the figure highlight the layers selected for RelaCtrl's control mechanism in the PixArt-α model. This demonstrates that RelaCtrl strategically integrates control only into the most relevant layers, thereby increasing efficiency and reducing unnecessary computation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The relevance diagram of different layers in the DiT-ControlNet was calculated based on the FID and HDD ranks. The overall trend shows an initial increase followed by a decrease. The selected placement positions of RelaCtrl in PixArt-α𝛼\alphaitalic_α are marked with white numbers.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/method_arch.png)

> 🔼 Figure 3 illustrates RelaCtrl's architecture, which improves upon previous methods by prioritizing control block placement based on a relevance score.  Instead of directly copying blocks from the main branch (as in prior ControlNet implementations), RelaCtrl uses a 'Relevance-Guided Lightweight Control Block' for efficiency.  The figure highlights the use of a Two-Dimensional Shuffle Mixer (TDSM) within the control blocks. The TDSM replaces the computationally expensive self-attention and feed-forward network (FFN) layers in each control block, resulting in a reduced parameter count and computational overhead while maintaining performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall architecture of RelaCtrl. Control block locations are prioritized based on the ControlNet Relevance Score, ranked from highest to lowest. The direct duplication of the main branch in the original ControlNet is replaced with the carefully designed Reference-Guided Lightweight control block. Additionally, the Two-Dimensional Shuffle Mixer effectively reduces model parameters and computational overhead while preserving performance.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/exp_compare.jpg)

> 🔼 This figure shows a qualitative comparison of different image generation models' performance on various control tasks. Each row represents a different image generation task with a text prompt, while each column displays the results of a different model.  The models included are UniControl, Uni-ControlNet, ControlNet-XS, ControlNext, PixArt-8, and RelaCtrl.  The images visually demonstrate the quality, control accuracy, and overall fidelity achieved by each model for each task. Zooming in allows for detailed comparison of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison of different methods. Please zoom in for better details.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/exp_visual.jpg)

> 🔼 This figure shows several examples of images generated using the RelaCtrl model under different control conditions.  Each row represents a different image generation task, with the control condition specified in text to the left of the corresponding images. The images generated with RelaCtrl exhibit various styles and features consistent with the provided control conditions. This demonstrates the model's ability to produce high-quality and controlled images with a wide range of creative directions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Generation effects of RelaCtrl under varying control conditions.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/appendix_full_image1.png)

> 🔼 This figure shows the impact of removing individual control blocks from the ControlNet architecture on the quality and control fidelity of generated images.  Two separate experiments are shown: one with a ControlNet consisting of 27 blocks and another with 13 blocks. For each experiment, the FID (Fréchet Inception Distance) and HDD (Hausdorff Distance) scores are plotted against the index of the removed control block. The plots illustrate the relative importance of different control blocks for both image generation quality and effectiveness of control. The results highlight that the effects of removing a block vary across the model, with some blocks showing a more significant impact than others.
> <details>
> <summary>read the caption</summary>
> Figure 6: Impact of deleting specific locations on the generated metrics in ControlNet with 27 and 13 blocks.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/appendix_remove3.jpg)

> 🔼 This figure shows additional examples illustrating the impact of removing different ControlNet layers on image generation quality.  Specifically, it presents qualitative results for three scenarios: removing layer 7 (highest impact), layer 9 (moderate impact), and layer 27 (lowest impact). By comparing the generated images across these scenarios, the visualization emphasizes the varying degrees of influence that each layer exerts on both the generation quality and the accuracy of control.
> <details>
> <summary>read the caption</summary>
> Figure 7: Additional visual results of skipping specific ControlNet layers (7, 9, and 27), correspond to the highest, moderate, and lowest impact on the generated image.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/appendix_flux.png)

> 🔼 This figure shows a comparison of image generation results from three different methods: OminiControl, ControlNet, and RelaCtrl.  Each method is applied to the Flux.1-dev model, demonstrating their respective capabilities in controlling the image generation process based on a given condition. The images show that each method produces different levels of control, with RelaCtrl achieving a better balance between high-quality generation and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visual comparison of different control methods on Flux.1-dev.
> </details>



![](https://arxiv.org/html/2502.14377/extracted/6219154/images/appendix_style.jpg)

> 🔼 This figure showcases the results of applying the RelaCtrl method to a fine-tuned PixArt model.  The images demonstrate the model's ability to effectively translate different control inputs into various artistic styles. Four image transformation examples are presented:  (1) A Canny edge detection input transformed into a painting style, (2) Depth information translated into an oil painting style, (3) HED edge detection transformed into a 'gufeng' (Chinese classical painting) style, and (4) A segmentation map resulting in a pixel art style image.  Each row illustrates the input and output for a single transition, highlighting RelaCtrl's capacity for diverse style transfer under different controlled conditions.
> <details>
> <summary>read the caption</summary>
> Figure 9: The control effect of RelaCtrl on the fine-tuned PixArt model. The upper and lower rows show the four transitions: (1) Canny to paint, (2) Depth to oil, (3) HED to gufeng, and (4) Segmentation to pixel.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.2.1" style="font-size:90%;">Parameters</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.3.1" style="font-size:90%;">Complexity</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.4.1" style="font-size:90%;">Inference</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.5.1" style="font-size:90%;">Memory</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.1.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.1.1.1" style="font-size:90%;">PixArt-</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mi id="S3.T2.1.1.1.m1.1.1" mathsize="90%" xref="S3.T2.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">italic_α</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.1.2.1" style="font-size:90%;">611.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.1.3.1" style="font-size:90%;">542.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.1.4.1" style="font-size:90%;">3.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.1.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.1.5.1" style="font-size:90%;">2114</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.1.1" style="font-size:90%;">w/ ControlNet</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.2.1" style="font-size:90%;">+294.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.3.1" style="font-size:90%;">+270.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.4.1" style="font-size:90%;">+0.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.5" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.5.1" style="font-size:90%;">+1694</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.4.3.1.1" style="font-size:90%;">(+48.16%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.4.3.2.1" style="font-size:90%;">(+49.87%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.4.3.3.1" style="font-size:90%;">(+13.39%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.4.3.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.4.3.4.1" style="font-size:90%;">(+80.13%)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.1.5.4.1" rowspan="2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T2.1.5.4.1.1" style="font-size:90%;">w/ RelaCtrl</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.5.4.2.1" style="font-size:90%;">+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.2.2" style="font-size:90%;">45.15</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.3" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.5.4.3.1" style="font-size:90%;">+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.3.2" style="font-size:90%;">46.71</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.4" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.5.4.4.1" style="font-size:90%;">+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.4.2" style="font-size:90%;">0.24</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.5" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.5.4.5.1" style="font-size:90%;">+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.5.2" style="font-size:90%;">395</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.1.6.5.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.6.5.1.1" style="font-size:90%;">(+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.1.2" style="font-size:90%;">7.38%</span><span class="ltx_text" id="S3.T2.1.6.5.1.3" style="font-size:90%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.1.6.5.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.6.5.2.1" style="font-size:90%;">(+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.2.2" style="font-size:90%;">8.61%</span><span class="ltx_text" id="S3.T2.1.6.5.2.3" style="font-size:90%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.1.6.5.3" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.6.5.3.1" style="font-size:90%;">(+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.3.2" style="font-size:90%;">6.30%</span><span class="ltx_text" id="S3.T2.1.6.5.3.3" style="font-size:90%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.1.6.5.4" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T2.1.6.5.4.1" style="font-size:90%;">(+</span><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.4.2" style="font-size:90%;">18.70%</span><span class="ltx_text" id="S3.T2.1.6.5.4.3" style="font-size:90%;">)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the computational efficiency and resource usage of the proposed RelaCtrl model against the baseline PixArt-a model with a ControlNet.  It shows the number of parameters (in millions), computational complexity (in GFLOPs), inference time (in seconds), and memory usage (in MiBs) for both models. The results highlight the significant reduction in computational cost achieved by RelaCtrl while maintaining comparable performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of the proposed method’s effectiveness, with the following units for the four metrics: Parameters (M), Complexity (GFLOPs), Inference Time (s), and Memory Usage (MiB)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.2.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.2.3.1" style="font-size:90%;">Setting</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T3.1.1.1.1" style="font-size:90%;">HDD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.2.2.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T3.2.2.2.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><ci id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.2.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.2.4.1" style="font-size:90%;">Para Ratio</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.3.1.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.3.1.1.1" style="font-size:90%;">ControlNet-top13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.3.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.3.1.2.1" style="font-size:90%;">96.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.3.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.3.1.3.1" style="font-size:90%;">21.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.3.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.3.1.4.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.4.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.2.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.4.2.1.1" style="font-size:90%;">Relevance-top13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.2.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.4.2.2.1" style="font-size:90%;">94.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.4.2.3.1" style="font-size:90%;">20.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.4.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.4.2.4.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.5.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.3.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.5.3.1.1" style="font-size:90%;">Relevance-top12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.3.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.5.3.2.1" style="font-size:90%;">95.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.3.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.5.3.3.1" style="font-size:90%;">20.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.5.3.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.5.3.4.1" style="font-size:90%;">92.5%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.6.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.4.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.6.4.1.1" style="font-size:90%;background-color:#E6E6E6;">Relevance-top11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.4.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.6.4.2.1" style="font-size:90%;background-color:#E6E6E6;">95.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.4.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.6.4.3.1" style="font-size:90%;background-color:#E6E6E6;">21.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.2.6.4.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.6.4.4.1" style="font-size:90%;background-color:#E6E6E6;">84.6%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.7.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T3.2.7.5.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.7.5.1.1" style="font-size:90%;">Relevance-top10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T3.2.7.5.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.7.5.2.1" style="font-size:90%;">96.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T3.2.7.5.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.7.5.3.1" style="font-size:90%;">22.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T3.2.7.5.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T3.2.7.5.4.1" style="font-size:90%;">76.9%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of using DiT-ControlNet Relevance scores to guide the placement of control blocks in a diffusion transformer model.  It compares the performance of using different numbers of control blocks (10, 11, 12, and 13) in terms of FID (Fréchet Inception Distance) and HDD (Hausdorff Distance).  The experiment is designed to evaluate the efficiency of the proposed Relevance-Guided approach.  The baseline for comparison is ControlNet-top13, a method that directly replicates the first 13 blocks of the main branch, thus showcasing the relative efficiency gains from using fewer, more strategically placed control blocks.
> <details>
> <summary>read the caption</summary>
> Table 3: The impact of control block placement guided by DiT-ControlNet Relevance. ControlNet-top13, which directly replicates the first 13 blocks of the main branch, serves as the baseline for parameter volume comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.4.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.2.3.1" style="font-size:90%;">Setting</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.3.1.1" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T4.3.1.1.1" style="font-size:90%;">HDD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.3.1.1.m1.1"><semantics id="S3.T4.3.1.1.m1.1a"><mo id="S3.T4.3.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.1.1.m1.1b"><ci id="S3.T4.3.1.1.m1.1.1.cmml" xref="S3.T4.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.4.2.2" style="padding:0.9pt 0.0pt;">
<span class="ltx_text" id="S3.T4.4.2.2.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.4.2.2.m1.1"><semantics id="S3.T4.4.2.2.m1.1a"><mo id="S3.T4.4.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.4.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.4.2.2.m1.1b"><ci id="S3.T4.4.2.2.m1.1.1.cmml" xref="S3.T4.4.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.4.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.2.4.1" style="font-size:90%;">Para Ratio</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.4.3.1" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.4.3.1.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.3.1.1.1" style="font-size:90%;background-color:#E6E6E6;">RelaCtrl</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.4.3.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.3.1.2.1" style="font-size:90%;background-color:#E6E6E6;">94.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.4.3.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.3.1.3.1" style="font-size:90%;background-color:#E6E6E6;">20.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.4.3.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.3.1.4.1" style="font-size:90%;background-color:#E6E6E6;">15.3%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.4.4.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.4.2.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.4.2.1.1" style="font-size:90%;">w/o RGLC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.4.2.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.4.2.2.1" style="font-size:90%;">95.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.4.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.4.2.3.1" style="font-size:90%;">21.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.4.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.4.2.4.1" style="font-size:90%;">84.6%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.4.5.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.5.3.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.5.3.1.1" style="font-size:90%;">w/o Prior2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.5.3.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.5.3.2.1" style="font-size:90%;">97.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.5.3.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.5.3.3.1" style="font-size:90%;">22.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.4.5.3.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.5.3.4.1" style="font-size:90%;">17.1%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.4.6.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T4.4.6.4.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.6.4.1.1" style="font-size:90%;">Baseline</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T4.4.6.4.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.6.4.2.1" style="font-size:90%;">96.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T4.4.6.4.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.6.4.3.1" style="font-size:90%;">21.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T4.4.6.4.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="S3.T4.4.6.4.4.1" style="font-size:90%;">100%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of the Relevance-Guided Lightweight Control Block (RGLC) and the Two-Dimensional Shuffle Mixer (TDSM) on the performance of the RelaCtrl model.  It compares RelaCtrl's performance against a baseline model (PixArt-d with 13 copied blocks), showing the effects of removing the RGLC block and altering the number of TDSM partitions.  The metrics evaluated are HDD (Hausdorff Distance), FID (Fréchet Inception Distance), and the relative parameter count compared to the baseline.
> <details>
> <summary>read the caption</summary>
> Table 4: The impact of the RGLC block and the number of TDSM partitions within it on generation performance. The PixArt-δ𝛿\deltaitalic_δ with 13 coped blocks serves as the baseline for parameter comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.3.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.3.1.1.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.1.1.1.1" style="font-size:90%;">Setting</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.3.1.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.1.1.2.1" style="font-size:90%;">Parameters (M)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.3.1.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.1.1.3.1" style="font-size:90%;">Complexity (GFLOPs)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.3.1.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.1.1.4.1" style="font-size:90%;">Inference (s)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.3.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T5.3.2.1.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.2.1.1.1" style="font-size:90%;">Flux.1-dev</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T5.3.2.1.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.2.1.2.1" style="font-size:90%;">11901.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T5.3.2.1.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.2.1.3.1" style="font-size:90%;">9925.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T5.3.2.1.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.2.1.4.1" style="font-size:90%;">4.78</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.3.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.3.2.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.3.2.1.1" style="font-size:90%;">+OminiControl</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.3.2.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.3.2.2.1" style="font-size:90%;">+14.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.3.2.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.3.2.3.1" style="font-size:90%;">+6637.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.3.2.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.3.2.4.1" style="font-size:90%;">+3.11</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.3.4.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.4.3.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.4.3.1.1" style="font-size:90%;">+ControlNet</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.4.3.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.4.3.2.1" style="font-size:90%;">+2952.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.4.3.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.4.3.3.1" style="font-size:90%;">+2578.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T5.3.4.3.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.4.3.4.1" style="font-size:90%;">+0.79</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.3.5.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T5.3.5.4.1" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.5.4.1.1" style="font-size:90%;background-color:#E6E6E6;">+RelaCtrl</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T5.3.5.4.2" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.5.4.2.1" style="font-size:90%;background-color:#E6E6E6;">+549.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T5.3.5.4.3" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.5.4.3.1" style="font-size:90%;background-color:#E6E6E6;">+495.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A4.T5.3.5.4.4" style="padding:0.9pt 0.0pt;"><span class="ltx_text" id="A4.T5.3.5.4.4.1" style="font-size:90%;background-color:#E6E6E6;">+0.34</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the efficiency of different methods for controlled image generation using the Flux.1-dev model.  It compares the number of parameters, computational complexity (GFLOPs), and inference time for four approaches: the base Flux.1-dev model, Flux.1-dev with OminiControl, Flux.1-dev with ControlNet, and Flux.1-dev with RelaCtrl. The results highlight the computational efficiency gains achieved by RelaCtrl.
> <details>
> <summary>read the caption</summary>
> Table 5: Effectiveness comparison experiment conducted on Flux.1-dev model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14377/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14377/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}