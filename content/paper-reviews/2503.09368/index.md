---
title: "PerCoV2: Improved Ultra-Low Bit-Rate Perceptual Image Compression with Implicit Hierarchical Masked Image Modeling"
summary: "PerCoV2: Open ultra-low bit-rate perceptual image compression using implicit hierarchical masked image modeling, built on Stable Diffusion 3 for bandwidth-constrained applications."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Technical University of Munich",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09368 {{< /keyword >}}
{{< keyword icon="writer" >}} Nikolai Körber et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

In the realm of image compression, Perceptual compression methods uses generative models to synthesize realistic details at lower bit-rates. Foundation models have shown potential in ultra-low bit-rate image compression but current methods still relies on proprietary models or suffer from quality deviations. This paper addresses the gap and quantify the existing analysis of the design in the research area.



The paper introduces **PerCoV2**, a novel and open ultra-low bit-rate perceptual image compression system built on Stable Diffusion 3. It enhances entropy coding efficiency by modeling the hyper-latent image distribution with implicit hierarchical masked image modeling. The method conducts a comprehensive comparison of autoregressive methods and demonstrates its benefits for compression and generation, achieving higher image fidelity and perceptual quality. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PerCoV2 achieves higher image fidelity at ultra-low bit-rates while maintaining competitive perceptual quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method features a hybrid generation mode for further bit-rate savings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The system is built solely on public components, promoting reproducibility and accessibility. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research enhances ultra-low bit-rate image compression by leveraging Stable Diffusion 3 and implicit hierarchical masked image modeling. It offers improved fidelity and perceptual quality. Thus, it is opening new avenues for bandwidth- and storage-constrained applications and advancing the field of generative compression.

------
#### Visual Insights



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/teaser/teaser.png)

> 🔼 This figure displays a comparison of perceptual image quality versus distortion (measured as PSNR) for different image compression methods at a resolution of 512x512 pixels, using the Kodak image dataset.  The methods compared include PerCo and PerCoV2, both in various operating modes.  The modes differ in the number of sampling steps and the classifier-free-guidance parameter used in the image generation process. The top-left corner of the graph represents the best performance (lowest distortion and highest perceptual quality). Section 5.3 of the paper provides further details on the experimental setup and the different operating modes tested.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distortion-perception comparison on the Kodak dataset at 512×512512512512\times 512512 × 512 resolution (top left is best). We show different operating modes for PerCo and PerCoV2 by varying the number of sampling steps/ classifier-free-guidance; see Sec. 5.3.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S1.F2.60">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.F2.60.37.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.F2.60.37.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.37.1.1.1" style="font-size:70%;">Original</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.F2.60.37.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S1.F2.60.37.1.2.1" style="font-size:70%;">PICS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.F2.60.37.1.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09368v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S1.F2.60.37.1.2.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.F2.60.37.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S1.F2.60.37.1.3.1" style="font-size:70%;">MS-ILLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.F2.60.37.1.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09368v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S1.F2.60.37.1.3.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.F2.60.37.1.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S1.F2.60.37.1.4.1" style="font-size:70%;">DiffC (SD v1.5) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.F2.60.37.1.4.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09368v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S1.F2.60.37.1.4.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S1.F2.60.37.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S1.F2.60.37.1.5.1" style="font-size:70%;">PerCo (SD v2.1) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.F2.60.37.1.5.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09368v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09368v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S1.F2.60.37.1.5.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.F2.60.37.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.37.1.6.1" style="font-size:70%;">PerCoV2 (SD v3.0)</span></th>
</tr>
<tr class="ltx_tr" id="S1.F2.60.38.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_column ltx_th_row" id="S1.F2.60.38.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.F2.60.38.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.38.2.2.1" style="font-size:70%;">(ICML 2023 Workshop)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.F2.60.38.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.38.2.3.1" style="font-size:70%;">(ICML 2023)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.F2.60.38.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.38.2.4.1" style="font-size:70%;">(ICLR 2025)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S1.F2.60.38.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.38.2.5.1" style="font-size:70%;">(ICLR 2024)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.F2.60.38.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F2.60.38.2.6.1" style="font-size:70%;">Ours</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.F2.60.39.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S1.F2.60.39.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S1.F2.60.39.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S1.F2.60.39.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S1.F2.60.39.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S1.F2.60.39.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S1.F2.60.39.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.F2.15.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.15.9.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_typewriter" id="S1.F2.15.9.10.1" style="font-size:70%;">kodim10</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.8.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.02038" class="ltx_Math" display="inline" id="S1.F2.7.1.1.m1.1"><semantics id="S1.F2.7.1.1.m1.1a"><mn id="S1.F2.7.1.1.m1.1.1" mathsize="70%" xref="S1.F2.7.1.1.m1.1.1.cmml">0.02038</mn><annotation-xml encoding="MathML-Content" id="S1.F2.7.1.1.m1.1b"><cn id="S1.F2.7.1.1.m1.1.1.cmml" type="float" xref="S1.F2.7.1.1.m1.1.1">0.02038</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.7.1.1.m1.1c">0.02038</annotation><annotation encoding="application/x-llamapun" id="S1.F2.7.1.1.m1.1d">0.02038</annotation></semantics></math><span class="ltx_text" id="S1.F2.8.2.2.1" style="font-size:70%;"> bpp (</span><math alttext="6.62\times" class="ltx_math_unparsed" display="inline" id="S1.F2.8.2.2.m2.1"><semantics id="S1.F2.8.2.2.m2.1a"><mrow id="S1.F2.8.2.2.m2.1b"><mn id="S1.F2.8.2.2.m2.1.1" mathsize="70%">6.62</mn><mo id="S1.F2.8.2.2.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.8.2.2.m2.1c">6.62\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.8.2.2.m2.1d">6.62 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.8.2.2.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.10.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00730" class="ltx_Math" display="inline" id="S1.F2.9.3.3.m1.1"><semantics id="S1.F2.9.3.3.m1.1a"><mn id="S1.F2.9.3.3.m1.1.1" mathsize="70%" xref="S1.F2.9.3.3.m1.1.1.cmml">0.00730</mn><annotation-xml encoding="MathML-Content" id="S1.F2.9.3.3.m1.1b"><cn id="S1.F2.9.3.3.m1.1.1.cmml" type="float" xref="S1.F2.9.3.3.m1.1.1">0.00730</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.9.3.3.m1.1c">0.00730</annotation><annotation encoding="application/x-llamapun" id="S1.F2.9.3.3.m1.1d">0.00730</annotation></semantics></math><span class="ltx_text" id="S1.F2.10.4.4.1" style="font-size:70%;"> bpp (</span><math alttext="2.37\times" class="ltx_math_unparsed" display="inline" id="S1.F2.10.4.4.m2.1"><semantics id="S1.F2.10.4.4.m2.1a"><mrow id="S1.F2.10.4.4.m2.1b"><mn id="S1.F2.10.4.4.m2.1.1" mathsize="70%">2.37</mn><mo id="S1.F2.10.4.4.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.10.4.4.m2.1c">2.37\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.10.4.4.m2.1d">2.37 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.10.4.4.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.12.6.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00415" class="ltx_Math" display="inline" id="S1.F2.11.5.5.m1.1"><semantics id="S1.F2.11.5.5.m1.1a"><mn id="S1.F2.11.5.5.m1.1.1" mathsize="70%" xref="S1.F2.11.5.5.m1.1.1.cmml">0.00415</mn><annotation-xml encoding="MathML-Content" id="S1.F2.11.5.5.m1.1b"><cn id="S1.F2.11.5.5.m1.1.1.cmml" type="float" xref="S1.F2.11.5.5.m1.1.1">0.00415</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.11.5.5.m1.1c">0.00415</annotation><annotation encoding="application/x-llamapun" id="S1.F2.11.5.5.m1.1d">0.00415</annotation></semantics></math><span class="ltx_text" id="S1.F2.12.6.6.1" style="font-size:70%;"> bpp (</span><math alttext="1.35\times" class="ltx_math_unparsed" display="inline" id="S1.F2.12.6.6.m2.1"><semantics id="S1.F2.12.6.6.m2.1a"><mrow id="S1.F2.12.6.6.m2.1b"><mn id="S1.F2.12.6.6.m2.1.1" mathsize="70%">1.35</mn><mo id="S1.F2.12.6.6.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.12.6.6.m2.1c">1.35\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.12.6.6.m2.1d">1.35 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.12.6.6.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.14.8.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00339" class="ltx_Math" display="inline" id="S1.F2.13.7.7.m1.1"><semantics id="S1.F2.13.7.7.m1.1a"><mn id="S1.F2.13.7.7.m1.1.1" mathsize="70%" xref="S1.F2.13.7.7.m1.1.1.cmml">0.00339</mn><annotation-xml encoding="MathML-Content" id="S1.F2.13.7.7.m1.1b"><cn id="S1.F2.13.7.7.m1.1.1.cmml" type="float" xref="S1.F2.13.7.7.m1.1.1">0.00339</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.13.7.7.m1.1c">0.00339</annotation><annotation encoding="application/x-llamapun" id="S1.F2.13.7.7.m1.1d">0.00339</annotation></semantics></math><span class="ltx_text" id="S1.F2.14.8.8.1" style="font-size:70%;"> bpp (</span><math alttext="1.1\times" class="ltx_math_unparsed" display="inline" id="S1.F2.14.8.8.m2.1"><semantics id="S1.F2.14.8.8.m2.1a"><mrow id="S1.F2.14.8.8.m2.1b"><mn id="S1.F2.14.8.8.m2.1.1" mathsize="70%">1.1</mn><mo id="S1.F2.14.8.8.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.14.8.8.m2.1c">1.1\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.14.8.8.m2.1d">1.1 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.14.8.8.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.15.9.9" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00308" class="ltx_Math" display="inline" id="S1.F2.15.9.9.m1.1"><semantics id="S1.F2.15.9.9.m1.1a"><mn id="S1.F2.15.9.9.m1.1.1" mathsize="70%" xref="S1.F2.15.9.9.m1.1.1.cmml">0.00308</mn><annotation-xml encoding="MathML-Content" id="S1.F2.15.9.9.m1.1b"><cn id="S1.F2.15.9.9.m1.1.1.cmml" type="float" xref="S1.F2.15.9.9.m1.1.1">0.00308</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.15.9.9.m1.1c">0.00308</annotation><annotation encoding="application/x-llamapun" id="S1.F2.15.9.9.m1.1d">0.00308</annotation></semantics></math><span class="ltx_text" id="S1.F2.15.9.9.1" style="font-size:70%;"> bpp</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.F2.60.40.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.60.40.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.40.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.40.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.40.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.60.40.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.40.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.F2.30.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.30.18.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_typewriter" id="S1.F2.30.18.10.1" style="font-size:70%;">kodim21</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.23.11.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.01788" class="ltx_Math" display="inline" id="S1.F2.22.10.1.m1.1"><semantics id="S1.F2.22.10.1.m1.1a"><mn id="S1.F2.22.10.1.m1.1.1" mathsize="70%" xref="S1.F2.22.10.1.m1.1.1.cmml">0.01788</mn><annotation-xml encoding="MathML-Content" id="S1.F2.22.10.1.m1.1b"><cn id="S1.F2.22.10.1.m1.1.1.cmml" type="float" xref="S1.F2.22.10.1.m1.1.1">0.01788</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.22.10.1.m1.1c">0.01788</annotation><annotation encoding="application/x-llamapun" id="S1.F2.22.10.1.m1.1d">0.01788</annotation></semantics></math><span class="ltx_text" id="S1.F2.23.11.2.1" style="font-size:70%;"> bpp (</span><math alttext="4.97\times" class="ltx_math_unparsed" display="inline" id="S1.F2.23.11.2.m2.1"><semantics id="S1.F2.23.11.2.m2.1a"><mrow id="S1.F2.23.11.2.m2.1b"><mn id="S1.F2.23.11.2.m2.1.1" mathsize="70%">4.97</mn><mo id="S1.F2.23.11.2.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.23.11.2.m2.1c">4.97\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.23.11.2.m2.1d">4.97 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.23.11.2.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.25.13.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00781" class="ltx_Math" display="inline" id="S1.F2.24.12.3.m1.1"><semantics id="S1.F2.24.12.3.m1.1a"><mn id="S1.F2.24.12.3.m1.1.1" mathsize="70%" xref="S1.F2.24.12.3.m1.1.1.cmml">0.00781</mn><annotation-xml encoding="MathML-Content" id="S1.F2.24.12.3.m1.1b"><cn id="S1.F2.24.12.3.m1.1.1.cmml" type="float" xref="S1.F2.24.12.3.m1.1.1">0.00781</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.24.12.3.m1.1c">0.00781</annotation><annotation encoding="application/x-llamapun" id="S1.F2.24.12.3.m1.1d">0.00781</annotation></semantics></math><span class="ltx_text" id="S1.F2.25.13.4.1" style="font-size:70%;"> bpp (</span><math alttext="2.17\times" class="ltx_math_unparsed" display="inline" id="S1.F2.25.13.4.m2.1"><semantics id="S1.F2.25.13.4.m2.1a"><mrow id="S1.F2.25.13.4.m2.1b"><mn id="S1.F2.25.13.4.m2.1.1" mathsize="70%">2.17</mn><mo id="S1.F2.25.13.4.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.25.13.4.m2.1c">2.17\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.25.13.4.m2.1d">2.17 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.25.13.4.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.27.15.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00421" class="ltx_Math" display="inline" id="S1.F2.26.14.5.m1.1"><semantics id="S1.F2.26.14.5.m1.1a"><mn id="S1.F2.26.14.5.m1.1.1" mathsize="70%" xref="S1.F2.26.14.5.m1.1.1.cmml">0.00421</mn><annotation-xml encoding="MathML-Content" id="S1.F2.26.14.5.m1.1b"><cn id="S1.F2.26.14.5.m1.1.1.cmml" type="float" xref="S1.F2.26.14.5.m1.1.1">0.00421</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.26.14.5.m1.1c">0.00421</annotation><annotation encoding="application/x-llamapun" id="S1.F2.26.14.5.m1.1d">0.00421</annotation></semantics></math><span class="ltx_text" id="S1.F2.27.15.6.1" style="font-size:70%;"> bpp (</span><math alttext="1.17\times" class="ltx_math_unparsed" display="inline" id="S1.F2.27.15.6.m2.1"><semantics id="S1.F2.27.15.6.m2.1a"><mrow id="S1.F2.27.15.6.m2.1b"><mn id="S1.F2.27.15.6.m2.1.1" mathsize="70%">1.17</mn><mo id="S1.F2.27.15.6.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.27.15.6.m2.1c">1.17\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.27.15.6.m2.1d">1.17 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.27.15.6.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.29.17.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00388" class="ltx_Math" display="inline" id="S1.F2.28.16.7.m1.1"><semantics id="S1.F2.28.16.7.m1.1a"><mn id="S1.F2.28.16.7.m1.1.1" mathsize="70%" xref="S1.F2.28.16.7.m1.1.1.cmml">0.00388</mn><annotation-xml encoding="MathML-Content" id="S1.F2.28.16.7.m1.1b"><cn id="S1.F2.28.16.7.m1.1.1.cmml" type="float" xref="S1.F2.28.16.7.m1.1.1">0.00388</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.28.16.7.m1.1c">0.00388</annotation><annotation encoding="application/x-llamapun" id="S1.F2.28.16.7.m1.1d">0.00388</annotation></semantics></math><span class="ltx_text" id="S1.F2.29.17.8.1" style="font-size:70%;"> bpp (</span><math alttext="1.08\times" class="ltx_math_unparsed" display="inline" id="S1.F2.29.17.8.m2.1"><semantics id="S1.F2.29.17.8.m2.1a"><mrow id="S1.F2.29.17.8.m2.1b"><mn id="S1.F2.29.17.8.m2.1.1" mathsize="70%">1.08</mn><mo id="S1.F2.29.17.8.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.29.17.8.m2.1c">1.08\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.29.17.8.m2.1d">1.08 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.29.17.8.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.30.18.9" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00360" class="ltx_Math" display="inline" id="S1.F2.30.18.9.m1.1"><semantics id="S1.F2.30.18.9.m1.1a"><mn id="S1.F2.30.18.9.m1.1.1" mathsize="70%" xref="S1.F2.30.18.9.m1.1.1.cmml">0.00360</mn><annotation-xml encoding="MathML-Content" id="S1.F2.30.18.9.m1.1b"><cn id="S1.F2.30.18.9.m1.1.1.cmml" type="float" xref="S1.F2.30.18.9.m1.1.1">0.00360</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.30.18.9.m1.1c">0.00360</annotation><annotation encoding="application/x-llamapun" id="S1.F2.30.18.9.m1.1d">0.00360</annotation></semantics></math><span class="ltx_text" id="S1.F2.30.18.9.1" style="font-size:70%;"> bpp</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.F2.60.41.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.60.41.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.41.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.41.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.41.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.60.41.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.41.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.F2.45.27">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.45.27.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_typewriter" id="S1.F2.45.27.10.1" style="font-size:70%;">kodim13</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.38.20.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.01965" class="ltx_Math" display="inline" id="S1.F2.37.19.1.m1.1"><semantics id="S1.F2.37.19.1.m1.1a"><mn id="S1.F2.37.19.1.m1.1.1" mathsize="70%" xref="S1.F2.37.19.1.m1.1.1.cmml">0.01965</mn><annotation-xml encoding="MathML-Content" id="S1.F2.37.19.1.m1.1b"><cn id="S1.F2.37.19.1.m1.1.1.cmml" type="float" xref="S1.F2.37.19.1.m1.1.1">0.01965</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.37.19.1.m1.1c">0.01965</annotation><annotation encoding="application/x-llamapun" id="S1.F2.37.19.1.m1.1d">0.01965</annotation></semantics></math><span class="ltx_text" id="S1.F2.38.20.2.1" style="font-size:70%;"> bpp (</span><math alttext="5.2\times" class="ltx_math_unparsed" display="inline" id="S1.F2.38.20.2.m2.1"><semantics id="S1.F2.38.20.2.m2.1a"><mrow id="S1.F2.38.20.2.m2.1b"><mn id="S1.F2.38.20.2.m2.1.1" mathsize="70%">5.2</mn><mo id="S1.F2.38.20.2.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.38.20.2.m2.1c">5.2\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.38.20.2.m2.1d">5.2 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.38.20.2.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.40.22.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00757" class="ltx_Math" display="inline" id="S1.F2.39.21.3.m1.1"><semantics id="S1.F2.39.21.3.m1.1a"><mn id="S1.F2.39.21.3.m1.1.1" mathsize="70%" xref="S1.F2.39.21.3.m1.1.1.cmml">0.00757</mn><annotation-xml encoding="MathML-Content" id="S1.F2.39.21.3.m1.1b"><cn id="S1.F2.39.21.3.m1.1.1.cmml" type="float" xref="S1.F2.39.21.3.m1.1.1">0.00757</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.39.21.3.m1.1c">0.00757</annotation><annotation encoding="application/x-llamapun" id="S1.F2.39.21.3.m1.1d">0.00757</annotation></semantics></math><span class="ltx_text" id="S1.F2.40.22.4.1" style="font-size:70%;"> bpp (</span><math alttext="2.0\times" class="ltx_math_unparsed" display="inline" id="S1.F2.40.22.4.m2.1"><semantics id="S1.F2.40.22.4.m2.1a"><mrow id="S1.F2.40.22.4.m2.1b"><mn id="S1.F2.40.22.4.m2.1.1" mathsize="70%">2.0</mn><mo id="S1.F2.40.22.4.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.40.22.4.m2.1c">2.0\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.40.22.4.m2.1d">2.0 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.40.22.4.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.42.24.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00464" class="ltx_Math" display="inline" id="S1.F2.41.23.5.m1.1"><semantics id="S1.F2.41.23.5.m1.1a"><mn id="S1.F2.41.23.5.m1.1.1" mathsize="70%" xref="S1.F2.41.23.5.m1.1.1.cmml">0.00464</mn><annotation-xml encoding="MathML-Content" id="S1.F2.41.23.5.m1.1b"><cn id="S1.F2.41.23.5.m1.1.1.cmml" type="float" xref="S1.F2.41.23.5.m1.1.1">0.00464</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.41.23.5.m1.1c">0.00464</annotation><annotation encoding="application/x-llamapun" id="S1.F2.41.23.5.m1.1d">0.00464</annotation></semantics></math><span class="ltx_text" id="S1.F2.42.24.6.1" style="font-size:70%;"> bpp (</span><math alttext="1.23\times" class="ltx_math_unparsed" display="inline" id="S1.F2.42.24.6.m2.1"><semantics id="S1.F2.42.24.6.m2.1a"><mrow id="S1.F2.42.24.6.m2.1b"><mn id="S1.F2.42.24.6.m2.1.1" mathsize="70%">1.23</mn><mo id="S1.F2.42.24.6.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.42.24.6.m2.1c">1.23\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.42.24.6.m2.1d">1.23 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.42.24.6.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.44.26.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00406" class="ltx_Math" display="inline" id="S1.F2.43.25.7.m1.1"><semantics id="S1.F2.43.25.7.m1.1a"><mn id="S1.F2.43.25.7.m1.1.1" mathsize="70%" xref="S1.F2.43.25.7.m1.1.1.cmml">0.00406</mn><annotation-xml encoding="MathML-Content" id="S1.F2.43.25.7.m1.1b"><cn id="S1.F2.43.25.7.m1.1.1.cmml" type="float" xref="S1.F2.43.25.7.m1.1.1">0.00406</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.43.25.7.m1.1c">0.00406</annotation><annotation encoding="application/x-llamapun" id="S1.F2.43.25.7.m1.1d">0.00406</annotation></semantics></math><span class="ltx_text" id="S1.F2.44.26.8.1" style="font-size:70%;"> bpp (</span><math alttext="1.07\times" class="ltx_math_unparsed" display="inline" id="S1.F2.44.26.8.m2.1"><semantics id="S1.F2.44.26.8.m2.1a"><mrow id="S1.F2.44.26.8.m2.1b"><mn id="S1.F2.44.26.8.m2.1.1" mathsize="70%">1.07</mn><mo id="S1.F2.44.26.8.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.44.26.8.m2.1c">1.07\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.44.26.8.m2.1d">1.07 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.44.26.8.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.45.27.9" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00378" class="ltx_Math" display="inline" id="S1.F2.45.27.9.m1.1"><semantics id="S1.F2.45.27.9.m1.1a"><mn id="S1.F2.45.27.9.m1.1.1" mathsize="70%" xref="S1.F2.45.27.9.m1.1.1.cmml">0.00378</mn><annotation-xml encoding="MathML-Content" id="S1.F2.45.27.9.m1.1b"><cn id="S1.F2.45.27.9.m1.1.1.cmml" type="float" xref="S1.F2.45.27.9.m1.1.1">0.00378</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.45.27.9.m1.1c">0.00378</annotation><annotation encoding="application/x-llamapun" id="S1.F2.45.27.9.m1.1d">0.00378</annotation></semantics></math><span class="ltx_text" id="S1.F2.45.27.9.1" style="font-size:70%;"> bpp</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.F2.60.42.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F2.60.42.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.42.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.42.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.42.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S1.F2.60.42.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F2.60.42.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.F2.60.36">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S1.F2.60.36.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_typewriter" id="S1.F2.60.36.10.1" style="font-size:70%;">kodim07</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.F2.53.29.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.02248" class="ltx_Math" display="inline" id="S1.F2.52.28.1.m1.1"><semantics id="S1.F2.52.28.1.m1.1a"><mn id="S1.F2.52.28.1.m1.1.1" mathsize="70%" xref="S1.F2.52.28.1.m1.1.1.cmml">0.02248</mn><annotation-xml encoding="MathML-Content" id="S1.F2.52.28.1.m1.1b"><cn id="S1.F2.52.28.1.m1.1.1.cmml" type="float" xref="S1.F2.52.28.1.m1.1.1">0.02248</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.52.28.1.m1.1c">0.02248</annotation><annotation encoding="application/x-llamapun" id="S1.F2.52.28.1.m1.1d">0.02248</annotation></semantics></math><span class="ltx_text" id="S1.F2.53.29.2.1" style="font-size:70%;"> bpp (</span><math alttext="6.4\times" class="ltx_math_unparsed" display="inline" id="S1.F2.53.29.2.m2.1"><semantics id="S1.F2.53.29.2.m2.1a"><mrow id="S1.F2.53.29.2.m2.1b"><mn id="S1.F2.53.29.2.m2.1.1" mathsize="70%">6.4</mn><mo id="S1.F2.53.29.2.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.53.29.2.m2.1c">6.4\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.53.29.2.m2.1d">6.4 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.53.29.2.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.F2.55.31.4" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00793" class="ltx_Math" display="inline" id="S1.F2.54.30.3.m1.1"><semantics id="S1.F2.54.30.3.m1.1a"><mn id="S1.F2.54.30.3.m1.1.1" mathsize="70%" xref="S1.F2.54.30.3.m1.1.1.cmml">0.00793</mn><annotation-xml encoding="MathML-Content" id="S1.F2.54.30.3.m1.1b"><cn id="S1.F2.54.30.3.m1.1.1.cmml" type="float" xref="S1.F2.54.30.3.m1.1.1">0.00793</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.54.30.3.m1.1c">0.00793</annotation><annotation encoding="application/x-llamapun" id="S1.F2.54.30.3.m1.1d">0.00793</annotation></semantics></math><span class="ltx_text" id="S1.F2.55.31.4.1" style="font-size:70%;"> bpp (</span><math alttext="2.26\times" class="ltx_math_unparsed" display="inline" id="S1.F2.55.31.4.m2.1"><semantics id="S1.F2.55.31.4.m2.1a"><mrow id="S1.F2.55.31.4.m2.1b"><mn id="S1.F2.55.31.4.m2.1.1" mathsize="70%">2.26</mn><mo id="S1.F2.55.31.4.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.55.31.4.m2.1c">2.26\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.55.31.4.m2.1d">2.26 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.55.31.4.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.F2.57.33.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00491" class="ltx_Math" display="inline" id="S1.F2.56.32.5.m1.1"><semantics id="S1.F2.56.32.5.m1.1a"><mn id="S1.F2.56.32.5.m1.1.1" mathsize="70%" xref="S1.F2.56.32.5.m1.1.1.cmml">0.00491</mn><annotation-xml encoding="MathML-Content" id="S1.F2.56.32.5.m1.1b"><cn id="S1.F2.56.32.5.m1.1.1.cmml" type="float" xref="S1.F2.56.32.5.m1.1.1">0.00491</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.56.32.5.m1.1c">0.00491</annotation><annotation encoding="application/x-llamapun" id="S1.F2.56.32.5.m1.1d">0.00491</annotation></semantics></math><span class="ltx_text" id="S1.F2.57.33.6.1" style="font-size:70%;"> bpp (</span><math alttext="1.4\times" class="ltx_math_unparsed" display="inline" id="S1.F2.57.33.6.m2.1"><semantics id="S1.F2.57.33.6.m2.1a"><mrow id="S1.F2.57.33.6.m2.1b"><mn id="S1.F2.57.33.6.m2.1.1" mathsize="70%">1.4</mn><mo id="S1.F2.57.33.6.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.57.33.6.m2.1c">1.4\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.57.33.6.m2.1d">1.4 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.57.33.6.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S1.F2.59.35.8" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00372" class="ltx_Math" display="inline" id="S1.F2.58.34.7.m1.1"><semantics id="S1.F2.58.34.7.m1.1a"><mn id="S1.F2.58.34.7.m1.1.1" mathsize="70%" xref="S1.F2.58.34.7.m1.1.1.cmml">0.00372</mn><annotation-xml encoding="MathML-Content" id="S1.F2.58.34.7.m1.1b"><cn id="S1.F2.58.34.7.m1.1.1.cmml" type="float" xref="S1.F2.58.34.7.m1.1.1">0.00372</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.58.34.7.m1.1c">0.00372</annotation><annotation encoding="application/x-llamapun" id="S1.F2.58.34.7.m1.1d">0.00372</annotation></semantics></math><span class="ltx_text" id="S1.F2.59.35.8.1" style="font-size:70%;"> bpp (</span><math alttext="1.06\times" class="ltx_math_unparsed" display="inline" id="S1.F2.59.35.8.m2.1"><semantics id="S1.F2.59.35.8.m2.1a"><mrow id="S1.F2.59.35.8.m2.1b"><mn id="S1.F2.59.35.8.m2.1.1" mathsize="70%">1.06</mn><mo id="S1.F2.59.35.8.m2.1.2" lspace="0.222em" mathsize="70%">×</mo></mrow><annotation encoding="application/x-tex" id="S1.F2.59.35.8.m2.1c">1.06\times</annotation><annotation encoding="application/x-llamapun" id="S1.F2.59.35.8.m2.1d">1.06 ×</annotation></semantics></math><span class="ltx_text" id="S1.F2.59.35.8.2" style="font-size:70%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.F2.60.36.9" style="padding-left:1.0pt;padding-right:1.0pt;">
<math alttext="0.00351" class="ltx_Math" display="inline" id="S1.F2.60.36.9.m1.1"><semantics id="S1.F2.60.36.9.m1.1a"><mn id="S1.F2.60.36.9.m1.1.1" mathsize="70%" xref="S1.F2.60.36.9.m1.1.1.cmml">0.00351</mn><annotation-xml encoding="MathML-Content" id="S1.F2.60.36.9.m1.1b"><cn id="S1.F2.60.36.9.m1.1.1.cmml" type="float" xref="S1.F2.60.36.9.m1.1.1">0.00351</cn></annotation-xml><annotation encoding="application/x-tex" id="S1.F2.60.36.9.m1.1c">0.00351</annotation><annotation encoding="application/x-llamapun" id="S1.F2.60.36.9.m1.1d">0.00351</annotation></semantics></math><span class="ltx_text" id="S1.F2.60.36.9.1" style="font-size:70%;"> bpp</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different entropy modeling methods used in PerCoV2, a perceptual image compression system.  It shows the bit-rate savings achieved by using implicit hierarchical VAR and different masking schemes (Checkerboard, Quincunx, QLDS) compared to a baseline method, for both ultra-low and extreme-low bit-rate settings.  The results highlight the impact of the chosen entropy model on compression efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Implicit vs. Hierarchical Entropy Modeling Methods.
> </details>





### In-depth insights


#### Implicit MIM
**Implicit Masked Image Modeling (MIM)** appears as a crucial component within the PerCoV2 framework, enhancing entropy coding efficiency. Instead of directly modeling the explicit dependencies between latent variables, PerCoV2 leverages MIM to implicitly capture these relationships. This likely involves training a model to reconstruct masked portions of the hyper-latent image representation. By training the model to predict these masked regions, it learns to understand the underlying data distribution. The success of MIM hinges on the careful selection of masking strategies. It is more computationally efficient than explicit autoregressive modeling, offering a valuable trade-off between performance and computational cost.

#### PerCo v2 Open
It appears you're asking about a hypothetical concept: "PerCo v2 Open," based on the paper provided. In the context of perceptual image compression, this suggests a version of PerCo (likely Perceptual Compression) that emphasizes **openness**: open-source code, publicly available models, and reliance on non-proprietary components. This is crucial because the original PerCo had limitations in public availability due to its dependence on a proprietary LDM. An "Open" version addresses this by utilizing resources like Stable Diffusion. The focus on openness promotes reproducibility, community contribution, and wider adoption of the technology. Furthermore, it enables more thorough analysis of the underlying components, facilitating improvements in areas like the latent space design and LDM capacity, which are critical for perceptual compression performance. A publicly accessible PerCo v2 would allow researchers to directly compare and build upon its results, accelerating progress in the field of ultra-low bit-rate image compression.

#### Hi-res is next
The phrase "Hi-res is next" strongly suggests a forward-looking perspective in image compression. **Focusing on high-resolution** is crucial as displays and capture devices improve, creating a need for efficiently storing and transmitting large images. This implies evolving compression techniques. A shift from **PSNR-driven methods to perceptual metrics** is key, ensuring visual quality even at high resolutions. Generative models and neural codecs become more essential to manage complex data. Scaling these models effectively and adapting them to higher resolutions remains a significant challenge. Computational cost must be addressed, as processing larger images demands more resources. There would be emphasis on **parallelism and hardware acceleration**. Future work would optimize network architectures and training strategies to accommodate high-resolution images without compromising performance. The industry would start to prioritize end-to-end high-resolution compression solutions.

#### Trade-off RDP
The Rate-Distortion-Perception (RDP) trade-off acknowledges that **optimizing solely for pixel-wise fidelity doesn't guarantee improved perceptual quality**. Achieving a balance between minimizing distortion and maximizing perceptual realism is crucial. **Perceptual compression methods** leverage powerful generative priors to synthesize realistic details, resulting in superior perceptual quality at considerably lower bit-rates, making them compelling for bandwidth-constrained applications. However, the trade-off highlights the need to carefully consider how different optimization strategies affect both distortion and perception. **Finding the optimal balance** is a key challenge in designing effective image compression systems that can deliver high-quality results while minimizing resource consumption.

#### Stable Diff. 3
Stable Diffusion 3 (SD3) appears as a **central component** for PerCoV2. It serves as the foundational architecture, replacing proprietary LDMs. Its adoption enables an **open and accessible** compression system. The paper leverages the enhanced auto-encoder design and increased LDM capacity of SD3. The use of Stable Diffusion 3 allows for a more compact and efficient representation, facilitating faster processing. SD3 is the core for achieving **ultra-low bit-rate perceptual image compression**. The move to Stable Diffusion 3 is a crucial step towards community accessibility and reproducibility, allowing for more research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/inp/kodim10_inp.png)

> 🔼 Figure 2 presents a visual comparison of image compression results using PerCoV2 and several other methods on the Kodak dataset.  The comparison focuses on the lowest bit-rate achieved by PerCoV2. Each image shows the original photo alongside its reconstructions using different compression techniques. The relative bit-rates (how much data is used for each compression) compared to PerCoV2's lowest bit-rate are indicated by the multiplication factor shown in parentheses (×). For instance, (× 6.62) means the method used 6.62 times more data than PerCoV2.  The figure highlights PerCoV2's ability to maintain better image quality at significantly lower bit rates compared to the alternative techniques.  Additional comparisons at higher bit rates can be found in Figure 5.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visual comparison of PerCoV2 on the Kodak dataset at our lowest bit-rate configuration. Bit-rate increases relative to our method are indicated by (×)(\times)( × ). For comparisons at higher bit-rates, see Fig. 5. Best viewed electronically.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/PICS/0.5/kodim10_inp.png)

> 🔼 This figure provides a detailed overview of the PerCoV2 model architecture, focusing on the configuration used for the lowest bit-rate settings.  It illustrates the flow of data through the various components, starting with image input and text description. The encoder processes the image to extract both local features (vector-quantized hyper-latent representations) and global features (image captions). These features are then combined and compressed using arithmetic and Lempel-Ziv coding. The decoder reconstructs the image from the compressed representations using the Stable Diffusion 3 flow model and corresponding latent diffusion model. The figure highlights the use of an implicit hierarchical masked image model (MIM) or visual autoregressive model (VAR) for entropy modeling, showcasing a key innovation of the PerCoV2 model.  Color coding is consistent with a previous work referenced in the caption.
> <details>
> <summary>read the caption</summary>
> Figure 3: PerCoV2 model overview based on our lowest bit-rate configuration. Colors follow [18, Fig. 2].
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/MSILLM/kodim10_inp.png)

> 🔼 Figure 4 presents a comprehensive quantitative analysis of PerCoV2's performance on the MSCOCO-30k benchmark dataset.  It shows how various metrics change across different bitrates.  The metrics shown include MS-SSIM and PSNR (measuring reconstruction quality), FID and KID (measuring perceptual quality), LPIPS (measuring perceptual distance), and mIoU (measuring semantic preservation).  By comparing PerCoV2 to other state-of-the-art methods like PerCo (official and SD version), MS-ILLM and DiffEIC, across a range of bitrates, the figure highlights PerCoV2's strengths in achieving a good balance between high image fidelity and superior perceptual quality, particularly at very low bitrates.
> <details>
> <summary>read the caption</summary>
> Figure 4: Quantitative comparison of PerCoV2 on MSCOCO-30k.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/DiffC/kodim10_inp_0.004150390625.png)

> 🔼 Figure 5 presents a visual comparison of image compression results using different methods on the Kodak dataset.  The comparison focuses on an extreme bit-rate scenario, meaning that very few bits are used to represent each image.  The original images are shown alongside reconstructions produced by PerCo (SD v2.1), DiffEIC, and PerCoV2 at various bitrates.  The multiplicative factor (×) next to each bpp value indicates how many times larger the bitrate is compared to PerCoV2's bitrate for that specific image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparison of PerCoV2 on the Kodak dataset at an extreme bit-rate configuration. Bit-rate increases relative to our method are indicated by (×)(\times)( × ). Best viewed electronically.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/V1/kodim10_otp.png)

> 🔼 Figure 6 presents a graph comparing the CLIP scores achieved by different image compression methods on the MSCOCO-30k dataset.  The CLIP score measures how well the compressed images align with their corresponding text captions, reflecting perceptual quality. The x-axis represents the bitrate (bpp), indicating the level of compression, while the y-axis shows the CLIP score.  Multiple models are compared, including various PerCo versions (PerCoV2 and others), MS-ILLM, DiffEIC and an upper bound.  The results illustrate the relative performance of each model in balancing compression efficiency with the preservation of perceptual similarity as measured by CLIP.
> <details>
> <summary>read the caption</summary>
> Figure 6: Quantitative comparison of PerCoV2 on MSCOCO-30k (CLIP-score).
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/V2/kodim10_opt.png)

> 🔼 Figure 7 presents a quantitative comparison of the PerCoV2 image compression model's performance on the Kodak image dataset.  It displays the performance of PerCoV2 across various bit rates (bpp) using multiple metrics: Peak Signal-to-Noise Ratio (PSNR), which measures the difference between the original and compressed images; Learned Perceptual Image Patch Similarity (LPIPS), which assesses perceptual similarity; and Multi-Scale Structural Similarity Index (MS-SSIM), which considers the structural information in images at multiple scales.  Also included are results for baselines such as PerCo (official and SD versions), MS-ILLM, and DiffC (SD v1.5 and v2.1) across the same metrics and bitrates.  The figure allows for a visual comparison of PerCoV2's performance relative to other state-of-the-art methods in terms of image fidelity and perceptual quality.
> <details>
> <summary>read the caption</summary>
> Figure 7: Quantitative comparison of PerCoV2 on the Kodak dataset.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/inp/kodim21_inp.png)

> 🔼 Figure 8 presents a visual comparison of image compression results using different methods on a subset of the Kodak image dataset.  The comparison focuses on the extreme low-bit rate regime.  The 'Original' images are shown alongside results from PerCo (SD v2.1) [11, 34], DiffEIC [40], and PerCoV2 (SD v3.0) [Ours]. Bit-rates are displayed, with values in parentheses showing the increase in bit-rate relative to PerCoV2.  The figure highlights PerCoV2's ability to achieve higher fidelity at lower bit rates. Best viewed electronically, due to subtle differences in image quality only apparent on screen.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visual comparison of PerCoV2 on the Kodak dataset at an extreme bit-rate configuration. Bit-rate increases relative to our method are indicated by (×)(\times)( × ). Best viewed electronically.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/PICS/0.5/kodim21_inp.png)

> 🔼 This figure demonstrates how the global conditioning, represented as  z<sub>g</sub>, affects the image reconstruction in PerCoV2 at the lowest bit-rate.  Two columns show reconstructions generated from the same initial Gaussian noise, but with different global conditioning. The left column uses only local features (z<sub>l</sub>), while the right column incorporates both local and global features.  The difference highlights the contribution of global context to image quality at low bit-rates. This approach is inspired by similar work in [11, fig 13].
> <details>
> <summary>read the caption</summary>
> Figure 9: Visual illustration of the impact of the global conditioning zgsubscript𝑧𝑔z_{g}italic_z start_POSTSUBSCRIPT italic_g end_POSTSUBSCRIPT on the Kodak dataset (kodim19) at our lowest bit-rate configuration. Samples are generated from the same initial Gaussian noise. Inspiration taken from [11, fig. 13].
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/MSILLM/kodim21_inp.png)

> 🔼 This figure compares the image quality produced by PerCoV2 and DiffC, a competing method, at a very low bitrate.  It shows example images of the Kodak dataset compressed using both methods, highlighting the visual differences in reconstruction quality.  The goal is to demonstrate PerCoV2's improved image fidelity even at extremely low bitrates, where bandwidth and storage are severely limited.
> <details>
> <summary>read the caption</summary>
> Figure 10: Additional comparison with DiffC at ultra-low bit-rate setting.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/DiffC/kodim21_inp_0.00421142578125.png)

> 🔼 Figure 11 provides a visual comparison of PerCoV2 and DiffC, a competing image compression method, at extreme-low bit rates.  It shows example images from the Kodak dataset (kodim14 and kodim22) alongside their reconstructions generated by each method.  The goal is to showcase PerCoV2's ability to reconstruct higher-fidelity images than DiffC at these challenging, very low bit rates. Bit rates are explicitly shown for each image, highlighting PerCoV2's compression efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 11: Additional comparison with DiffC at extreme-low bit-rate setting.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/V1/kodim21_otp.png)

> 🔼 This figure compares the image compression results of PerCoV2 against JPEG and VTM-20.0, which are traditional codecs. It visually showcases how PerCoV2 performs in reconstructing the image compared to the widely used standard codecs, demonstrating its image quality at a specific bitrate.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visual comparison with traditional codecs (JPEG and VTM-20.0).
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/V2/kodim21_otp.png)

> 🔼 This figure compares the semantic preservation capabilities of PerCo (SD) and PerCoV2 across different bitrates.  The image used is from the MSCOCO-30k dataset (image ID: 000000442539).  The models are given the same global caption: “a herd of sheep standing in a field next to a fence”. The comparison shows how well each model maintains the accurate representation of the scene's semantic content, such as the number and arrangement of sheep and the fence, as the bitrate and compression level decrease.  This illustrates the impact of bitrate reduction on the fidelity of semantic information.
> <details>
> <summary>read the caption</summary>
> Figure 13: Visual comparison of the semantic preservation of PerCo (SD) and PerCoV2 across various bit-rates on the MSCOCO-30k dataset (000000442539). Global conditioning: “a herd of sheep standing in a field next to a fence”.
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/inp/kodim13_inp.png)

> 🔼 This figure illustrates the architecture of the Implicit Hierarchical Visual Autoregressive model (VAR) used in PerCoV2 for entropy modeling.  It shows how single-scale tokens are processed through a VAR model to generate predicted tokens at multiple scales. The process is implicit because the model doesn't explicitly generate a full hierarchical representation of the image before prediction, rather, it implicitly models the image's hierarchical structure during the prediction process itself. The '[S]' symbol indicates a start token. The colors of the tokens represent their different contextual information.
> <details>
> <summary>read the caption</summary>
> Figure 14: Implicit Hierarchical VAR (Ours).
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/PICS/0.5/kodim13_inp.png)

> 🔼 This figure illustrates the checkerboard masking schedule used in the Hierarchical Masked Image Modeling method.  The checkerboard pattern shows which parts of the image are masked (greyed out) and which parts are used for prediction (colored). The different image patches represent different stages or resolutions in the multi-scale image modeling process.  The bit rates shown (e.g., 0.00302 bpp) indicate the compression efficiency at each masking configuration.  The various configurations demonstrate the effect of the amount of masking on the final compression result.
> <details>
> <summary>read the caption</summary>
> Figure 15: Checkerboard masking schedule [23].
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/MSILLM/kodim13_inp.png)

> 🔼 Figure 16 illustrates the quincunx masking schedule used in the PerCoV2 model for hierarchical masked image modeling.  The quincunx pattern masks image tokens in a staggered arrangement, making it different from the checkerboard pattern (which is a more regular grid-like masking). The varying numbers of masked tokens (4, 8, 16, 32, 64) at different bit rates (0.00217 bpp, 0.00229 bpp, 0.00253 bpp, 0.00305 bpp, 0.00385 bpp respectively) showcases how the model handles different levels of information loss during compression. This figure provides a visual representation of how the quincunx masking pattern is applied in the image and its impact on the bit-rate.
> <details>
> <summary>read the caption</summary>
> Figure 16: Quincunx masking schedule [17].
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/DiffC/kodim13_inp_0.004638671875.png)

> 🔼 Figure 17 shows the QLDS (Quasi-lexicographical Dynamic Scheduling) masking schedule used in the PerCoV2 model for hierarchical masked image modeling.  The image shows a visual representation of the masking process at different stages.  Each sub-image displays how a portion of the image is masked (greyed out) while the model predicts the values of those masked pixels based on the visible parts.  Different stages show progressively more revealed image sections. The QLDS schedule is a specific algorithm for gradually unveiling masked regions within the image, optimizing the balance between prediction difficulty and overall decoding efficiency in the autoregressive process of the model.
> <details>
> <summary>read the caption</summary>
> Figure 17: QLDS masking schedule [45].
> </details>



![](https://arxiv.org/html/2503.09368/extracted/6274330/figures/main_fig/Kodak/V1/kodim13_otp.png)

> 🔼 Figure 18 shows the implicit hierarchical visual autoregressive (VAR) model's masking schedule. Unlike explicit hierarchical methods which have separate, distinct stages, this approach integrates the multi-scale token maps implicitly. The figure visually represents the masking process, displaying how tokens at different scales are predicted sequentially in a hierarchical manner within the VAR framework.  Each step in the process shows the tokens that are masked and subsequently predicted, contributing to the overall image reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 18: Implicit VAR-based masking schedule (Ours).
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09368/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}